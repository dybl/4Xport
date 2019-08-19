import os
import sys
import xlrd
#import xlwt
#from xlutils import *
import pymssql
#import json
import argparse

'''
path1 = './input/' 
path2 = './output/'  
 
def GenDirFromXlsx():
    dirs = os.listdir(path1)
 
    for dir in dirs:
        file_name = path2 + str(dir)
        os.mkdir(file_name)
GenDirFromXlsx()
'''
parser = argparse.ArgumentParser()

parser.add_argument("-f", "--filename", help="The name of store the summary indicators's xlsx")
parser.add_argument("-a", "--amount", default=0, type=int, help="The sheet number which needed to process")
parser.add_argument("-s", "--server", help="The server host address which to connect")
parser.add_argument("-d", "--database", help="The database name which to connect")
parser.add_argument("-u", "--user", default="sa", help="The togin user name which to connnect")
parser.add_argument("-p", "--password", help="The login password which to connect")
args = parser.parse_args()

if args.filename:
    print("请输入存放在input_zb_list目录下指标汇总的xlsx文件名")
else:
    print("未输入文件名，不能进行指标抽取，请重新输入")

output_dir = './output_init_data/'
if os.path.exists(output_dir):
    print('Done!')
else:
    os.mkdir('./output_init_data/')
    print("No such file or directory,So create it")

'''
input_dir='./input_zb_list'
if os.path.exists(input_dir):
    print('Done!')
else:
    os.mkdir('./input_zb_list')
    print("No such file or directory,So create it")
'''

input_zb_list = './input_zb_list/'

'''
def xlsx_2_dict(filename,amount):
    xlsx_dir = input_zb_list + filename + '.xlsx'
    data = xlrd.open_workbook(xlsx_dir)
    sheet = data.sheets()[amount]
    rows = sheet.nrows
    cols = sheet.ncols
    print('输入的xlsx文件共有：{0} 行'.format(rows),'{0} 列'.format(cols))
    dict = {}
    zbList = sheet.col_values(1)
    print(zbList)
    for i in range(1,rows):
        for j in range(cols):
            #zbList = sheet.cell_value(i,j)
            #zb_left = sheet.col_values(0)
            #indicator_lists = sheet.cell_value(i, j)
            #print(subject_classification)
            #print(indicator_lists)
            #dict[subject_classification]
    for j in range(cols):
        subject_classification = sheet.cell_value(0,j)
        indicator_lists = sheet.cell_value(i,j)
        dict[subject_classification] = indicator_lists
    yield dict
        #yield dict
'''


class Mssql:
    '''
    数据库连接
    '''

    def __init__(self, host, database, user, password):
        self.host = host
        self.database = database
        self.user = user
        self.password = password

    def _GetConnect(self):
        if not self.database:
            raise (NameError, '数据库没有设置')
        self.conn = pymssql.connect(
            host=self.host, user=self.user, password=self.password, database=self.database)
        cur = self.conn.cursor()
        if not cur:
            raise (NameError, '数据连接失败')
        else:
            return cur

    def ExeSql(self, sql):
        cur = self._GetConnect()
        # print(sql)
        cur.execute(sql)
        dataList = cur.fetchall()
        columns = [col[0] for col in cur.description]
        self.conn.close()
        # return dataList
        return ([
            dict(zip(columns, row))
            for row in dataList
        ])

    def ExeNonSql(self, sql):
        cur = self._GetConnect()
        cur.execute(sql)
        self.conn.commit()
        self.conn.close()


class Scripts(Mssql):
    def __init__(self, str):
        self.str = str
    def SqlStart(self, zbId, tableName):
        if tableName == 'ZB_FACT_DIM_YS':
            key = 'zbmx_id'
        elif tableName == 'ZBMX':
            key = 'id'
        elif tableName in ('Y_COLUMN_MAP_ZBFACT', 'HD_ZBMX_HZ_YS', 'HD_ZBMX_HZ'):
            key = 'zb_id'
        return self.str.format(tableName=tableName, zb=zbId, key=key)
    def SqlData(self, dict, tableName, findId, zb):
        sqlStart = 'INSERT {tableName} ('.format(tableName=tableName)
        valueList = []
        key1 = ''
        value1 = ''
        sql = ''
        if dict:
            for i in range(len(dict)):
                key1 = ''
                value1 = ''
                for key, value in dict[i].items():
                    if key == findId:  # 自增列不进行赋值
                        continue
                    key1 = key1 + ',' + key
                    value1 = value1 + ',\'' + \
                        str(value).replace('\'', '\'\'') + \
                        '\''  # .replace('"','\'\'')
                    valueList.append(value)
                sql = sql + sqlStart+' ' + \
                    key1.strip(',')+')\n\tvalues(' + \
                    str(value1).strip(',').replace('None', '')+')\n\t'
            return sql
        else:
            return 'print \'This table {tableName}  do not have the zb {zb}\'\n'.format(tableName=tableName, zb=zb)


def sqlStartBf(tableName, infomation):
    if tableName in ['ZBMX', 'HD_ZBMX_HZ_YS', 'HD_ZBMX_HZ']:
        sqlStartBf = "/************"+infomation + \
            "******************{tableName}***{zb}******************************/\n\nif exists(select 1 from {tableName} where {key}='{zb}')\nbegin\n\tprint '新增指标{zb},但指标{zb}已存在于表{tableName}中,请核查!'\nend\nif not exists(select 1 from {tableName} where {key}='{zb}') \nbegin \n\t"
    elif tableName in ['ZB_FACT_DIM_YS', 'Y_COLUMN_MAP_ZBFACT']:
        sqlStartBf = "/************"+infomation + \
            "******************{tableName}***{zb}******************************/\n\n\tdelete from {tableName} where {key}='{zb}' \n\t"
    else:
        raise (NameError, '此表不需要初始化数据！请重新检查')
    return sqlStartBf


def SqlEnd(tableName):
    if tableName in ['ZBMX', 'HD_ZBMX_HZ_YS', 'HD_ZBMX_HZ']:
        SqlEnd = '\nend\ngo\n\n'
    elif tableName in ['ZB_FACT_DIM_YS', 'Y_COLUMN_MAP_ZBFACT']:
        SqlEnd = 'go\n\n'
    else:
        raise (NameError, '此表不需要初始化数据！请重新检查')
    return SqlEnd


server_conn = Mssql(host=args.server, database=args.database,
                    user=args.user, password=args.password)


tables = ['ZBMX', 'Y_COLUMN_MAP_ZBFACT', 'HD_ZBMX_HZ', 'ZB_FACT_DIM_YS']

exeSql = "select * from {tableName} where {key}='{zb}'"
findId = '''select b.name from sys.objects a,sys.columns b where a.object_id=b.object_id and a.type='U' 
and a.name='{tableName}'and b.is_identity=1'''

exeSqlScripts = Scripts(exeSql)
findId = Scripts(findId)

def xlsx_2_dict(filename, amount):
    xlsx_dir = input_zb_list + filename + '.xlsx'
    data = xlrd.open_workbook(xlsx_dir)
    sheet = data.sheets()[amount]
    rows = sheet.nrows
    cols = sheet.ncols
    print('输入的xlsx文件共有：{0} 行'.format(rows), '{0} 列'.format(cols))
    dict = {}
    subject = sheet.col_values(0)
    for i in range(len(subject)):
        zb_map_dir = output_dir + str(subject[i])
        if os.path.exists(zb_map_dir):
            print('已经存在相应主题文件夹！')
        else:
            os.mkdir(zb_map_dir)
            print("没有相应主题文件夹，自动创建！")
    prefix = "初始化数据更新脚本_CUBE"
    output_file_name = output_dir + str(prefix) + ".sql"
    f = open(output_file_name, 'w+')
    cnt = 0  # 用于计数，第几个指标
    zbList = sheet.col_values(1)
    for zb in zbList:
        zb = zb.strip()  # 去除zb.txt中的空格， 必须
        cnt += 1
        zbId = zb
        info = "No." + str(cnt) + ": " + zbId
        print(info)
        for table in tables:
            sqlStartScripts = Scripts(sqlStartBf(table, info))
            f.writelines(sqlStartScripts.SqlStart(zbId, table))
            sqlDict = server_conn.ExeSql(exeSqlScripts.SqlStart(zbId, table))
            findIdDict = server_conn.ExeSql(findId.SqlStart('', table))
            if findIdDict:
                findIdP = findIdDict[0].get('name')
            else:
                findIdP = ''
            f.writelines(exeSqlScripts.SqlData(sqlDict, table, findIdP, zbId))
            f.writelines(SqlEnd(table))

xlsx_2_dict(args.filename, args.amount)

print("-------------------------------\n")
print("指标脚本已导出至--->output_init_data文件夹相应主题目录下\n")

'''
# The above import may fail for some other reason. Ensure that the
# issue is really that pymssql is missing to avoid masking other
# exceptions on Python 2.
try:
    import pymssql
except ImportError:
    raise ImportError(
        "Couldn't import pymssql. Are you sure it's installed and "
        "available on your PYTHONPATH environment variable? Did you "
        "forget to activate a virtual environment?"
    )
'''


'''
def export_init_data(self, parameter_list):
    prefix = "add_"
    for i in range(len(tables)):
        output_file_name = output_dir + str(prefix) + str(tables) + ".sql"
        f = open(output_file_name, 'w+')
'''

'''
f = open("xxx.txt", mode="r", encoding="utf-8")
# 读取表头,例如姓名,性别等
line = f.readline()
# 去掉制表符
lst = line.split("\t")
# 设置存储列表
storage = []
# 接着往后读取
for lin in f:
    # 去掉制表符
    each_line = lin.split("\t")
    # 设置每一行的存储字典
    dic = {}
    for i in range(len(each_line)):
        # 存储键和值,健名为第一行的每一项
        dic[lst[i]] = each_line[i]
    storage.append(dic)
print(storage)
'''
