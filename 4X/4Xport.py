import os
import sys
import xlrd
#import xlwt
#from xlutils import *
import pymssql
#import json
import argparse
# from conn import Conn2sql
# from export import Xport

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
ps = argparse.ArgumentParser()

ps.add_argument("-i", "--input", help="The path of input file, default path is current")
ps.add_argument("-f", "--filename", help="The name of store the summary indicators's xlsx or txt")
ps.add_argument("-a", "--amount", default=0, type=int, help="The sheet number which needed to process while the input file type is xlsx")
ps.add_argument("-o", "--output", help="The path of output file, default path is current")
ps.add_argument("-h", "--host", help="The server host address which to connect")
ps.add_argument("-d", "--database", help="The database name which to connect")
ps.add_argument("-u", "--user", default="sa", help="The togin user name which to connnect")
ps.add_argument("-p", "--password", help="The login password which to connect")
args = ps.parse_args()

if args.filename:
    print("请输入存放在input目录下指标汇总的的txt文件名或xlsx文件名")
else:
    print("未输入文件名，不能进行指标抽取，请重新输入")

'''
output_dir = './output_init_data/'
if os.path.exists(output_dir):
    print('Done!')
else:
    os.mkdir('./output_init_data/')
    print("No such file or directory,So create it")
'''

'''
def xlsx_2_dict(filename,amount):
    xlsx_dir = input + filename + '.xlsx'
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

class Conn2sql:
    
    def __init__(self, host, database, user, password):
        self.host = host
        self.database = database
        self.user = user
        self.password = password

    def _getConn(self):
        if not self.database:
            raise (NameError, '数据库没有设置')
        self.conn = pymssql.connect(
            host=self.host, user=self.user, password=self.password, database=self.database)
        cursor = self.conn.cursor()
        if not cursor:
            raise (NameError, '数据连接失败')
        else:
            return cursor

    def Exec(self, sql): 
        cursor = self._getConn()
        cursor.Execute(sql)
        dataList = cursor.fetchall()
        columns = [col[0] for col in cursor.description]
        self.conn.close()
        return ([
            dict(zip(columns, row))
            for row in dataList
        ])

    def Empty(self, sql):
        cursor = self._getConn()
        cursor.Execute(sql)
        self.conn.commit()
        self.conn.close()

class Xport(Conn2sql):

    def __init__(self,str):
        self.str = str

    def Judge(self,indicator, table):
        if table == 'ZB_FACT_DIM_YS':
            k = 'zbmx_id'
        elif table == 'ZBMX':
            k = 'id'
        elif table in ('Y_COLUMN_MAP_ZBFACT', 'HD_ZBMX_HZ_YS', 'HD_ZBMX_HZ'):
            k = 'zb_id'
        elif table =='M_CHART_ZBDW':
            k = 'mx_id'
        return self.str.format(table=table, zb=indicator, k=k)


    def InitData(self,data,table,select,zb):
        header = 'INSERT {table} ('.format(table=table)
        v_field = []
        sql = ''
        if data :
            for i in range(len(data)):
                k_zb = ''
                v_zb = ''
                for k,v in data[i].items():
                    if k==select: #自增列不进行赋值
                        continue
                    k_zb = k_zb + ',' + k
                    v_zb = v_zb + ',\'' + str(v).replace('\'','\'\'')+'\''  #.replace('"','\'\'')
                    v_field.append(v)
                sql =sql + header+' '+k_zb.strip(',')+')\n\tvs('+str(v_zb).strip(',').replace('None','')+')\n\t'
            return sql
        else:
            return 'print \'This table {table}  do not have the zb {zb}\'\n'.format(table=table,zb=zb)

def Header(info):
    text = "/******************" + info + "*****************/\n\n"
    return text

'''
TODO:
    insert: if not exists(select 1 from {tableName} where {key}='{zb}')
    update: if exists(select 1 from {tableName} where {key}='{zb}')
'''

def Body(tableName, info):
    if tableName in  ['ZBMX', 'HD_ZBMX_HZ_YS', 'HD_ZBMX_HZ', 'M_CHART_ZBDW']:
        text = "/********{tableName}*******/\n\nif exists(select 1 from {tableName} where {key}='{zb}')\nbegin\n\tprint '新增指标{zb},但指标{zb}已存在于表{tableName}中,请核查!'\nend\nif not exists(select 1 from {tableName} where {key}='{zb}') \nbegin \n\t"
    elif tableName in  ['ZB_FACT_DIM_YS', 'Y_COLUMN_MAP_ZBFACT']:
        text = "/********{tableName}*******/\n\n\tdelete from {tableName} where {key}='{zb}' \n\t"
    else:
        raise (NameError,'此表不需要初始化数据！请核查')
    return text

def Footer(tableName):
    if tableName in ['ZBMX' , 'HD_ZBMX_HZ_YS', 'HD_ZBMX_HZ','M_CHART_ZBDW']:
        text = "\nend\ngo\n\n"
    elif tableName in ['ZB_FACT_DIM_YS', 'Y_COLUMN_MAP_ZBFACT']:
        text = "go\n\n"
    else:
        raise (NameError,'此表不需要初始化数据！请核查')
    return text


connectionString = Conn2sql(host=args.host, database=args.database,user=args.user, password=args.password)


tables = ['ZBMX', 'Y_COLUMN_MAP_ZBFACT', 'HD_ZBMX_HZ', 'ZB_FACT_DIM_YS']

exeSql = "select * from {tableName} where {key}='{zb}'"
findId = '''select b.name from sys.objects a,sys.columns b where a.object_id=b.object_id and a.type='U' 
and a.name='{tableName}'and b.is_identity=1'''

exeSqlScripts = Xport(exeSql)
findId = Xport(findId)


zbList = []
#读取文件
with open(r'input\1.txt','r')as f:
    while True:
        line = f.readline()
        print(line)
        if line:
            zbList.append(line.strip('\n'))
        else:
            break

print(zbList)

#写入文件
with open(r'add_test.sql', 'w+')as f:
    cnt = 0  #用于计数，第几个指标
    for zb in zbList:
        zb = zb.strip()  # 去除zb.txt中的空格， 必须
        cnt +=1
        # zbId = zb['id']
        zbId = zb
        info = "No." + str(cnt) + ": " + zbId
        for table in tables:
            sqlScripts = Xport(Header(info))
            sqlStartScripts = Xport(Body(table, info))
            f.writelines(sqlStartScripts.Judge(zbId, table))
            sqlDict = connectionString.Exec(exeSqlScripts.Judge(zbId, table))
            findIdDict = connectionString.Exec(findId.Judge('', table))
            if findIdDict:
                findIdP = findIdDict[0].get('name')
            else:
                findIdP = ''
            f.writelines(exeSqlScripts.InitData(sqlDict, table, findIdP, zbId))
            f.writelines(Footer(table))

'''
def xlsx_2_dict(filename, amount):
    xlsx_dir = input + filename + '.xlsx'
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
            sqlScripts = Xport(Header(info))
            sqlStartScripts = Xport(Body(table, info))
            f.writelines(sqlStartScripts.Judge(zbId, table))
            sqlDict = connectionString.Exec(exeSqlScripts.Judge(zbId, table))
            findIdDict = connectionString.Exec(findId.Judge('', table))
            if findIdDict:
                findIdP = findIdDict[0].get('name')
            else:
                findIdP = ''
            f.writelines(exeSqlScripts.InitData(sqlDict, table, findIdP, zbId))
            f.writelines(Footer(table))

xlsx_2_dict(args.filename, args.amount)

print("-------------------------------\n")
print("指标脚本已导出至--->output_init_data文件夹相应主题目录下\n")
'''

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
def einit_data(self, parameter_list):
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
