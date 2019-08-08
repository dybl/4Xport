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

import pymssql
import os

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
output_dir = './output/CUBE/'
if os.path.exists(output_dir):
    print("Done!")
else:
    os.mkdir('./output/CUBE/')
    print("No such file or directory,So create it")

#写入文件
prefix = "add_"
for i in range(len(tables)):
    output_file_name = output_dir + str(prefix) + str(tables[i]) + ".sql"
    f = open(output_file_name, 'w+')
    cnt = 0  #用于计数，第几个指标
    for zb in zbList:
        zb = zb.strip()  # 去除zb.txt中的空格， 必须
        cnt +=1
        # zbId = zb['id']
        zbId = zb
        info = "No." + str(cnt) + ": " + zbId
        print(info)
        sqlStartScripts = Scripts(sqlStartBf(tables[i], info))
        f.writelines(sqlStartScripts.SqlStart(zbId,tables[i]))
        sqlDict = server_conn.ExeSql(exeSqlScripts.SqlStart(zbId,tables[i]))
        findIdDict = server_conn.ExeSql(findId.SqlStart('',tables[i]))
        # print(findId.format(tables[i]=tables[i]))
        # print(zbId)
        if findIdDict:
            findIdP = findIdDict[0].get('name')
        else:
            findIdP =''
        f.writelines(exeSqlScripts.SqlData(sqlDict,tables[i],findIdP,zbId))
        f.writelines(SqlEnd(tables[i]))

print("-------------------------------\n")
print("指标脚本已导出至--->output/CUBE\n")
print("-------------------------------")

print("***********脚本使用须知：*************\n ")
print("1：作用：新增指标时，生成['ZB_FACT_DIM_YS', 'Y_COLUMN_MAP_ZBFACT','ZBMX','HD_ZBMX_HZ']的初始化数据\n ")
print("2：原则：['ZB_FACT_DIM_YS', 'Y_COLUMN_MAP_ZBFACT']先删除后插入；\n ['ZBMX','HD_ZBMX_HZ']先判断后操作\n ")
print("3：配置(使用前需修改)：\n ")
print("    1）数据库连接(server_)\n ")
print("    2）指标清单路径(input_zb_dir)，必须按行罗列,绝对不能有空格出现\n ")
print("    3）生成文件路径(output_dir)\n ")
print("    4）变量tables控制生成哪张表\n ")
print("*************************************\n ")

