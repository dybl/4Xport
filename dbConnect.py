
import os, sys
path1 = './input'  #指定名称文件夹所在路径
path2 = './test/'    #新建文件夹所在路径
 
def MkDir():
    dirs = os.listdir(path1)
 
    for dir in dirs:
        file_name = path2 + str(dir)
        os.mkdir(file_name)
 
MkDir()


'''
使用须知：
1，脚本作用：新增指标时，生成['ZB_FACT_DIM_YS', 'Y_COLUMN_MAP_ZBFACT', 'ZBMX' , 'HD_ZBMX_HZ']这4张表的初始化数据
2，原则：['ZB_FACT_DIM_YS', 'Y_COLUMN_MAP_ZBFACT']先删除后插入；['ZBMX' , 'HD_ZBMX_HZ']先判断后操作
3，使用时需修改：
    1）数据库连接
    2）指标清单的路径，zb.txt中指标按行罗列,万万不能有空格出现
    3）脚本生成的目标路径
    4）需要生成那几张表的数据，变量tables控制
'''

import pymssql  as msdb

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
        self.conn = msdb.connect(host = self.host,user = self.user,password = self.password,database = self.database)
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






#数据库连接信息
# server_host = '172.17.1.233\\BI2012'
# server_database = 'HOSPITAL_CUBEDB_PHARMACY'
# server_user = 'sa'
# server_password = 'biadmin@123'
server_host = '172.17.17.121\\BI2012'
server_database = 'HOSPITAL_CUBEDB_KFZ'
server_user = 'sa'
server_password = 'biadmin'
server_conn = Mssql(host=server_host,database=server_database,user=server_user,password=server_password)

#需要更新的表,指标列表 'ZBMX','Y_COLUMN_MAP_ZBFACT','HD_ZBMX_HZ','ZB_FACT_DIM_YS'
tables = ['ZBMX','Y_COLUMN_MAP_ZBFACT','HD_ZBMX_HZ','ZB_FACT_DIM_YS']
# zbList = server_conn.ExeSql("select id from ZBMX where id  between 'C501' and 'C526' order by id ")
# sqlStart = "if not exists(select 1 from {tableName} where {key}='{zb}') \nbegin \n"

# sqlStartBf = "/******************************{tableName}***{zb}******************************/\n\nif exists(select 1 from {tableName} where {key}='{zb}')\nbegin\n\tprint '新增指标{zb},但指标{zb}已存在于表{tableName}中,请核查!'\nend\nif not exists(select 1 from {tableName} where {key}='{zb}') \nbegin \n\t"
exeSql = "select * from {tableName} where {key}='{zb}'"
findId ='''select b.name from sys.objects a,sys.columns b where a.object_id=b.object_id and a.type='U' 
and a.name='{tableName}'and b.is_identity=1'''


# sqlStartScripts = Scripts(sqlStart)
exeSqlScripts = Scripts(exeSql)
findId = Scripts(findId)

zbList = []
#读取文件
with open(r'./input/zb.txt','r')as f:
    while True:
        line = f.readline()
        # print(line)
        if line:
            zbList.append(line.strip('\n'))
        else:
            break

# print(zbList)

#写入文件

output_dir = './output/CUBE/'

prefix = 'add_'

i = 1

while True:
    for i in range(len(tables)):
        i += 1
        output_file_name = str(prefix) + str(i)
        with open()


with open(r'./output/CUBE/add_zb_hz.sql', 'w+')as f:
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

