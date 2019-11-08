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
ps.add_argument("-f", "--filename", help="The name of store the summary indicators's xlsx or txt")
# gp.add_argument("-a", "--amount", default=0, type=int, help="The sheet number which needed to process while the input file type is xlsx")
gp.add_argument("-o", "--output", help="The path of output file, default path is current")
ps.add_argument("-s", "--server", help="The server host address which to connect := ip+instance")
ps.add_argument("-d", "--database", help="The database name which to connect")
ps.add_argument("-u", "--user", default="sa", help="The login user name which to connnect")
ps.add_argument("-p", "--password", default="123456", help="The login password which to connect")
a = ps.parse_args()
i_f = a.i + a.f
o_f = a.o + a.f

class c2s:
    
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
            columns = [col[0] for col in cursor.description]
            return ([dict(zip(columns, row)) for row in data]) 
        finally:
            self.conn.commit()
            self.conn.close()


# server_host = '127.0.0.1\\BI'
# server_database = 'test'
# server_user = 'sa'
# server_password = '123456'
server_conn = c2s(host=a.s, database=a.d,user=a.u, password=a.p)
sql = "select * from student"

if __name__ == '__main__':
    rs = server_conn.exec(sql)
    print(rs)
