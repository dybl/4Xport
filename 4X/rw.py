# import os
# import sys
# import glob
# import re
# import xlrd
import argparse
import pymssql


# class RW(object):
# 	"""docstring for RW"""
# 	def __init__(self, i, o, f):
# 		self.i = i
# 		self.o = o
# 		self.f = f
# 	def _io(self):
# 		print("-^-, input file path is" + self.i)
# 		print("^_^, output file path is" + self.o)
# zb = re.match(r'[a-zA-Z0-9_]')
ps = argparse.ArgumentParser(description="This scipts for eXport zb sql file")
gp = ps.add_mutually_exclusive_group()
gp.add_argument("-i", "--input", help="The path of input file, default path is current")
gp.add_argument("-o", "--output", help="The path of output file, default path is current")
ps.add_argument("-f", "--filename", help="The name of store the summary indicators's xlsx or txt")
# gp.add_argument("-a", "--amount", default=0, type=int, help="The sheet number which needed to process while the input file type is xlsx")
ps.add_argument("-s", "--server", help="The server host address which to connect := ip+instance")
ps.add_argument("-d", "--database", help="The database name which to connect")
ps.add_argument("-u", "--user", default="sa", help="The login user name which to connnect")
ps.add_argument("-p", "--password", default="123456", help="The login password which to connect")
a = ps.parse_args()
i_f = a.i + a.f
o_f = a.o + a.f

class c2s:
    # Connect to SQLServer
    def __init__(self, host, database, user, password):
        self.host = host
        self.database = database
        self.user = user
        self.password = password

    def _getConn(self):
        # try:
        #     self.conn = pymssql.connect(
        #     host=self.host, user=self.user, password=self.password, database=self.database)
        # except Exception as e:
        #     raise (NameError,'数据库没有设置')
        # else:
        #     cursor = self.conn.cursor()
        #     if not cursor:
        #         raise (NameError, '数据连接失败')
        #     else:
        #         return cursor
        if not self.database:
            raise (NameError, '数据库没有设置')
        self.conn = pymssql.connect(
            host=self.host, user=self.user, password=self.password, database=self.database)
        cursor = self.conn.cursor()
        if not cursor:
            raise (NameError, '数据连接失败')
        else:
            return cursor

    def exec(self, sql): 
        cursor = self._getConn()
        cursor.execute(sql)
        try:
            data = cursor.fetchall()
            cols = [col[0] for col in cursor.description]
            return ([dict(zip(cols, row)) for row in data]) 
        finally:
            self.conn.commit()
            self.conn.close()

class Xport(c2s):

    def __init__(self,str):
        self.str = str

    def Judge(self,metric, table):
        if table == 'ZB_FACT_DIM_YS':
            k = 'zbmx_id'
        elif table == 'ZBMX':
            k = 'id'
        elif table in ('Y_COLUMN_MAP_ZBFACT', 'HD_ZBMX_HZ_YS', 'HD_ZBMX_HZ'):
            k = 'zb_id'
        elif table =='M_CHART_ZBDW':
            k = 'mx_id'
        return self.str.format(table=table, zb=metric, k=k)


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

    def UpdateData(self,dict,table,zb,tjfs,cols, findId):
        header = 'update {table} '.format(table=table)
        sql = ''
        if dict[0]:
            # print(col)
            for i in range(len(col)):
                if cols[i]['name']==findId: #自增列不进行更新
                        continue
                col = cols[i]['name']
                sql = sql + ',' + col + '=\'' + str(dict[0][col]).replace('\'','\'\'').replace('None','null') + '\''  #.replace('"','\'\'')
            # print(sql)
            return header + 'set\n' + sql.strip(',').replace('\'null\'','null')   #+ "where zb_id='{zb}'".format(zb=zb)
        else:
            pass

def Header(info):
    text = "/******************" + info + "*****************/\n\n"
    return text

'''
TODO:
    insert: if not exists(select 1 from {tableName} where {key}='{zb}')
    update: if exists(select 1 from {tableName} where {key}='{zb}')
'''

def Body(tableName, info):
    if tableName in  ['ZBMX' , 'HD_ZBMX_HZ_YS', 'HD_ZBMX_HZ','M_CHART_ZBDW']:
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



# server_host = '127.0.0.1\\BI'
# server_database = 'test'
# server_user = 'sa'
# server_password = '123456'
connect = c2s(host=a.s, database=a.d,user=a.u, password=a.p)
sql = "select * from student"

if __name__ == '__main__':
    rs = connect.exec(sql)
    print(rs)
