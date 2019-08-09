
<h1 align="center">4Xport</h1>


```python
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple xlrd pymssql
```
```python
PS D:\com\winning\export_zb_scripts> python .\handle_xls_sql.py -h

usage: handle_xls_sql.py [-h] [-f FILENAME] [-a AMOUNT] [-s SERVER]
                         [-d DATABASE] [-u USER] [-p PASSWORD]

optional arguments:
  -h, --help            show this help message and exit
  -f FILENAME, --filename FILENAME
                        The name of store the summary indicators's xlsx
  -a AMOUNT, --amount AMOUNT
                        The sheet number which needed to process
  -s SERVER, --server SERVER
                        The server host address which to connect
  -d DATABASE, --database DATABASE
                        The database name which to connect
  -u USER, --user USER  The togin user name which to connnect
  -p PASSWORD, --password PASSWORD
                        The login password which to connect
> python .\handle_xls_sql.py -f test -s 172.17.17.121\BI2012 -d HOSPITAL_CUBEDB_KFZ -u sa -p biadmin
```
