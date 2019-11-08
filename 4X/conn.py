import pymssql

class conn2sql:
    
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


server_host = '127.0.0.1\\BI'
server_database = 'test'
server_user = 'sa'
server_password = '123456'
server_conn = conn2sql(host=server_host,database=server_database,user=server_user,password=server_password)
sql = "select * from student"

if __name__ == '__main__':
    rs = server_conn.exec(sql)
    print(rs)
