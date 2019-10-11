import pymssql

class conn2sql:
    
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

    def exec(self, sql):
        cursor = self._getConn()
        cursor.execute(sql)
        dataList = cursor.fetchall()
        columns = [col[0] for col in cursor.description]
        self.conn.close()
        return ([
            dict(zip(columns, row))
            for row in dataList
        ])

    def empty(self, sql):
        cursor = self._getConn()
        cursor.execute(sql)
        self.conn.commit()
        self.conn.close()