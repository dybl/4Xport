import os
import sys
import xlrd
#import xlwt
#from xlutils import *
import pymssql
#import json

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
output_dir = './output_init_data/test/'
if os.path.exists(output_dir):
    print('Done!')
else:
    os.mkdir('./output_init_data/test/')
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
            raise (NameError,'数据库没有设置')
        self.conn = pymssql.connect(host = self.host,user = self.user,password = self.password,database = self.database)
        cur = self.conn.cursor()
        if not cur:
            raise (NameError,'数据连接失败')
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

    def ExeNonSql(self,sql):
        cur = self._GetConnect()
        cur.execute(sql)
        self.conn.commit()
        self.conn.close()

class Scripts(Mssql):
    '''
    脚本生成
    '''
    def __init__(self,str):
        self.str = str


    def SqlStart(self,zbId, tableName):
        if tableName == 'ZB_FACT_DIM_YS':
            key = 'zbmx_id'
        elif tableName == 'ZBMX':
            key = 'id'
        elif tableName in ('Y_COLUMN_MAP_ZBFACT', 'HD_ZBMX_HZ_YS', 'HD_ZBMX_HZ'):
            key = 'zb_id'
        return self.str.format(tableName=tableName, zb=zbId, key=key)


    def SqlData(self,dict,tableName,findId,zb):
        # print(zb)
        # print(dict)
        sqlStart = 'INSERT {tableName} ('.format(tableName=tableName)
        valueList = []
        key1 = ''
        value1 = ''
        sql = ''
        if dict :
            # print(len(dict))
            for i in range(len(dict)):
                # print(i)
                key1 = ''
                value1 = ''
                for key,value in dict[i].items():
                    if key==findId: #自增列不进行赋值
                        continue
                    key1 = key1 + ',' + key
                    value1 = value1 + ',\'' + str(value).replace('\'','\'\'')+'\''  #.replace('"','\'\'')
                    valueList.append(value)
                sql =sql + sqlStart+' '+key1.strip(',')+')\n\tvalues('+str(value1).strip(',').replace('None','')+')\n\t'

            return sql
        else:
            
            return 'print \'This table {tableName}  do not have the zb {zb}\'\n'.format(tableName=tableName,zb=zb)


def sqlStartBf(tableName, infomation):
    if tableName in  ['ZBMX' , 'HD_ZBMX_HZ_YS', 'HD_ZBMX_HZ']:
        sqlStartBf = "/************"+infomation+"******************{tableName}***{zb}******************************/\n\nif exists(select 1 from {tableName} where {key}='{zb}')\nbegin\n\tprint '新增指标{zb},但指标{zb}已存在于表{tableName}中,请核查!'\nend\nif not exists(select 1 from {tableName} where {key}='{zb}') \nbegin \n\t"
    elif tableName in  ['ZB_FACT_DIM_YS', 'Y_COLUMN_MAP_ZBFACT']:
        sqlStartBf = "/************"+infomation+"******************{tableName}***{zb}******************************/\n\n\tdelete from {tableName} where {key}='{zb}' \n\t"
    else:
        raise (NameError,'此表不需要初始化数据！请核查')
    return sqlStartBf

def SqlEnd(tableName):
    if tableName in ['ZBMX' , 'HD_ZBMX_HZ_YS', 'HD_ZBMX_HZ']:
        SqlEnd = '\nend\ngo\n\n'
    elif tableName in ['ZB_FACT_DIM_YS', 'Y_COLUMN_MAP_ZBFACT']:
        SqlEnd = 'go\n\n'
    else:
        raise (NameError,'此表不需要初始化数据！请核查')
    return SqlEnd

server_host = '172.17.17.121\\BI2012'
server_database = 'HOSPITAL_CUBEDB_KFZ'
server_user = 'sa'
server_password = 'biadmin'
server_conn = Mssql(host=server_host,database=server_database,user=server_user,password=server_password)


tables = ['ZBMX','Y_COLUMN_MAP_ZBFACT','HD_ZBMX_HZ','ZB_FACT_DIM_YS']

exeSql = "select * from {tableName} where {key}='{zb}'"
findId ='''select b.name from sys.objects a,sys.columns b where a.object_id=b.object_id and a.type='U' 
and a.name='{tableName}'and b.is_identity=1'''

exeSqlScripts = Scripts(exeSql)
findId = Scripts(findId)

'''
if __name__ == '__main__':
    for i in xlsx_2_dict('test', 0):
        pass
        #print(i)
        j = json.dumps(i,ensure_ascii=True)
        output_file_name = output_dir + str('test')  + ".json"
        f = open(output_file_name, 'w+')
        f.writelines(str(j))
'''
zbList = []

def xlsx_2_dict(filename,amount):
    xlsx_dir = input_zb_list + filename + '.xlsx'
    data = xlrd.open_workbook(xlsx_dir)
    sheet = data.sheets()[amount]
    rows = sheet.nrows
    cols = sheet.ncols
    print('输入的xlsx文件共有：{0} 行'.format(rows),'{0} 列'.format(cols))
    dict = {}
    zbList = sheet.col_values(1)
    prefix = "add_CUBE"
    output_file_name = output_dir + str(prefix) + ".sql"
    f = open(output_file_name, 'w+')
    cnt = 0  #用于计数，第几个指标
    for zb in zbList:
        zb = zb.strip()  # 去除zb.txt中的空格， 必须
        cnt +=1
        # zbId = zb['id']
        zbId = zb
        info = "No." + str(cnt) + ": " + zbId
        print(info)
        for table in tables:
            sqlStartScripts = Scripts(sqlStartBf(table, info))
            f.writelines(sqlStartScripts.SqlStart(zbId,table))
            sqlDict = server_conn.ExeSql(exeSqlScripts.SqlStart(zbId,table))
            findIdDict = server_conn.ExeSql(findId.SqlStart('',table))
            # print(findId.format(table=table))
            # print(zbId)
            if findIdDict:
                findIdP = findIdDict[0].get('name')
            else:
                findIdP =''
            f.writelines(exeSqlScripts.SqlData(sqlDict,table,findIdP,zbId))
            f.writelines(SqlEnd(table))

    


xlsx_2_dict('test',0)

print("-------------------------------\n")
print("指标脚本已导出至--->output/CUBE\n")



'''
def export_init_data(self, parameter_list):
    prefix = "add_"
    for i in range(len(tables)):
        output_file_name = output_dir + str(prefix) + str(tables) + ".sql"
        f = open(output_file_name, 'w+')
'''



        

'''
zb_data = xlrd.open_workbook(input_xlsx)
sheet = zb_data.sheets()[0]
rows = sheet.nrows
cols = sheet.ncols
for i in range(rows):
    indicator_subject_classification = sheet.cell_value(i)
    for i in indicator_subject_classification:
        if eval(i).get('主题分类'):
            print(eval(i)['主题分类'])
        elif eval(i).get('指标'):
            print(eval(i)['指标'])
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