'''
使用须知：
1，脚本作用：更新指标时，生成['HD_ZBMX_HZ','ZBMX', 'HD_ZBMX_HZ_YS']这三张表的更新脚本，
            其余两张表['ZB_FACT_DIM_YS', 'Y_COLUMN_MAP_ZBFACT']使用新增脚本add.py
2，原则：['ZBMX' , 'HD_ZBMX_HZ_YS', 'HD_ZBMX_HZ']先判断再更新
3，使用时需修改：
    1）数据库连接
    2）指标清单的路径，zb.txt中指标按行罗列 万万不可有空格出现
    3）脚本生成的目标路径
    4）需要更新那几张表的数据，变量tables控制
'''

import pymssql
import os
# import pandas

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
        elif tableName=='M_CHART_ZBDW':
            key = 'mx_id'
        return self.str.format(tableName=tableName, zb=zbId, key=key)

    def SqlUpdateData(self,dict,table,zb,tjfs,sqlCols, findId):
        sqlStart = 'update {table} '.format(table=table)
        sqlScripts = ''
        # cols = []
        # if table =='ZBMX':
        #     cols = ['id','zbfl_id','name','jlzt','percent_type','xsws','zbdw','tjfs','blbz','code','mbz_zzfd','mbz_having','mbz_lrfs','czry','gxrq','memo','xtly','fjgz_id','bmid','ljfs','jskj','jyzt','pjbz','zbyy','mzzybz','yjgzdm','yjgznr','is_hz','pid','qrzt','tjzb','mbz_lrfa','isblzb','blfs']
        # elif table =='HD_ZBMX_HZ_YS':
        #     cols = ['zb_id','zb_name','sql_text','tqsql_text','jlzt','memo','dependindex','orderno','sql_text_first','proc_name','zbzt','hqsql_text']
        # elif table =='HD_ZBMX_HZ':
        #     cols = ['zb_id','zb_name','sql_start','sql_middle','sql_end','sql_text','tqsql_text','jlzt','memo','dependindex','orderno','sql_text_first','proc_name','zbzt','ysfs','kslx','fact_table','fact_dlz','condition','kxwdz','gspz','hqsql_text','dlzgs','dylx']
        # elif table =='Y_COLUMN_MAP_ZBFACT':
        #     cols = ['xh','zb_id','fact_tablename','fact_colname','depend_zbids']
        # else:
        #     pass
            # return 'print \'this table  do not have this zb\'\n'
        # print(cols)
        # if dict[0]:
        #     for col in cols:
        #         sqlScripts = sqlScripts + ',' + col + '=\'' + str(dict[0][col]) + '\'\n'  
        #     return sqlStart + 'set\n' + sqlScripts.strip(',').replace('"','\'') + "where zb_id ='{zb}'".format(zb=zb) 
        # print(findId)
        if dict[0]:
            # print(sqlCols)
            for i in range(len(sqlCols)):
                if sqlCols[i]['name']==findId: #自增列不进行更新
                        continue
                col = sqlCols[i]['name']
                '''
                sqlScripts = sqlScripts + ',' + col + '=\'' + str(dict[0][col]).replace('\'','\'\'') + '\'\n'  #.replace('"','\'\'')
            return sqlStart + 'set\n' + sqlScripts.strip(',')  #+ "where zb_id='{zb}'".format(zb=zb)
                '''
                sqlScripts = sqlScripts + ',' + col + '=\'' + str(dict[0][col]).replace('\'','\'\'').replace('None','null') + '\''  #.replace('"','\'\'')
            return sqlStart + 'set\n' + sqlScripts.strip(',').replace('\'null\'','null')  #+ "where zb_id='{zb}'".format(zb=zb)
        else:
            pass



#数据库连接信息
server_host = '172.17.17.121\\BI2012'
server_database = 'PLATFORM_TYPT_KFZ'
server_user = 'sa'
server_password = 'biadmin'
# server_host = 'localhost\\MSSQLSERVER2012'
# server_database = 'PLATFORM_TYPT_PHARMACY'
# server_user = 'sa'
# server_password = '7889'
server_conn = Mssql(host=server_host,database=server_database,user=server_user,password=server_password)

#新增的表
#tables = ['ZBMX','Y_COLUMN_MAP_ZBFACT','HD_ZBMX_HZ_YS','HD_ZBMX_HZ']
#修改的表
tables =['M_CHART_ZBDW']
#查询结果集
exeSql = "select * from {tableName} where {key}='{zb}'"
# 查询当前表的所有字段--更新时更新出自增列的所有字段
exeSqlCols = "select b.name from sys.tables a,sys.columns b where a.object_id = b.object_id and object_name(a.object_id)= '{tableName}'"
#查询是否是半累加指标
tjfsSql = "select tjfs from ZBMX  where id='{zb}'"
#修改，指标拼接头
def updateSqlStartBF(infomation):
    updateSqlStart = '''
/*********'''+infomation+'''******{tableName}***{zb}*****************/

if  exists(select 1 from {tableName} where {key}='{zb}')
begin
'''
    return updateSqlStart

def insertSqlStartBF(infomation):
    insertSqlStart = '''
/*********'''+infomation+'''******{tableName}***{zb}*****************/

if not exists(select 1 from {tableName} where {key}='{zb}')
begin
'''
    return insertSqlStart
#直接拼接尾
SqlEnd = ''' where {key}='{zb}'
end
go
'''
findId ='''select b.name from sys.objects a,sys.columns b where a.object_id=b.object_id and a.type='U' 
and a.name='{tableName}'and b.is_identity=1'''


#实例化
exeSqlScripts = Scripts(exeSql)
exeSqlColsScripts = Scripts(exeSqlCols)
#1修改

tjfsSqlScripts=Scripts(tjfsSql)
findId = Scripts(findId)
#新增
SqlEndScripts=Scripts(SqlEnd)


zbList = []
#读取文件
input_zb_dir = './input/tt.txt'
f = open(input_zb_dir, 'r')
while True:
    line = f.readline()
    # print(line)
    if line:
        zbList.append(line.strip('\n'))
    else:
        break

# print(zbList)
output_dir = './output/TYPT/'
if os.path.exists(output_dir):
    print("Done!")
else:
    os.mkdir('./output/TYPT/')
    print("No such file or directory,So create it")

#更改所有步骤

def Update():
    updateSqlStartScripts=Scripts(updateSqlStartBF(info))
    sqlDict = server_conn.ExeSql(exeSqlScripts.SqlStart(zb, tables[i]))
    sqlCols = server_conn.ExeSql(exeSqlColsScripts.SqlStart('', tables[i]))  # 当前表所有字段名组成的list
    findIdDict = server_conn.ExeSql(findId.SqlStart('',tables[i]))
    if sqlDict:
        if findIdDict:
            findIdP = findIdDict[0].get('name')
        else:
            findIdP =''
        #tjfs = server_conn.ExeSql(tjfsSqlScripts.SqlStart(zb, tables[i]))
        f.writelines(updateSqlStartScripts.SqlStart(zb, tables[i]))
        f.writelines(exeSqlScripts.SqlUpdateData(sqlDict, tables[i], zb, '', sqlCols,findIdDict[0]['name'] if len(findIdDict)>0 else '').replace('None', ''))
        f.writelines(SqlEndScripts.SqlStart(zb, tables[i]))  # update的时候需要添加where条件

#插入所有步骤

def Insert():
    insertSqlStartScripts=Scripts(insertSqlStartBF(info))
    if sqlDict:
        sqlDict = server_conn.ExeSql(exeSqlScripts.SqlStart(zb, tables[i]))
        f.writelines(insertSqlStartScripts.SqlStart(zb, tables[i]))
        # f.writelines(exeSqlScripts.SqlInsertData(sqlDict))
        print(exeSqlScripts.SqlInsertData(sqlDict[0]))
        # print(sqlDict[2])
        f.writelines(SqlEnd)



#写入文件
prefix = "update_"
for i in range(len(tables)):
    output_file_name = output_dir + str(prefix) + str(tables[i]) + ".sql"
    f = open(output_file_name, 'w+')
    cnt = 0  #用于计数，第几个指标
    for zb in zbList:
        zb = zb.strip()  # 去除zb.txt中的空格， 必须
        cnt +=1
        info = "No." + str(cnt) + ": " + zb
        print(info)
        Update()
        #Insert()
print("-------------------------------\n")
print("指标脚本已导出至--->output/TYPT\n")
print("-------------------------------")
print("***********脚本使用须知：*************\n ")
print("1：作用：更新指标时，生成['M_CHART_ZBDW']这三张表的更新脚本\n ")
print("2：原则：['M_CHART_ZBDW']先判断后更新\n ")
print("3：配置(使用前需修改)：\n ")
print("    1）数据库连接(server_)\n ")
print("    2）指标清单路径(input_zb_dir)，必须按行罗列,绝对不能有空格出现\n ")
print("    3）生成文件路径(output_dir)\n ")
print("    4）变量tables控制生成哪张表\n ")
print("*************************************\n ")