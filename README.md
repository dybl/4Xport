
<h1 align="center">4Xport</h1>

![](https://img.shields.io/badge/Python-3.7.4-yellow.svg)
![](https://img.shields.io/badge/SQLServer-2012-orange.svg)
![](https://img.shields.io/badge/Windows-1903-blueviolet.svg)
![](https://img.shields.io/badge/Version-0.1.0-brightgreen.svg)

## 用法

- 确保python安装时已添加至系统环境变量
- <kbd>Win</kbd>+<kbd>R</kbd>输入`powershel`，或<kbd>Shift</kbd>+鼠标右键，`在此处打开Powershell窗口`

```sh
$ python -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple xlrd pymssql
$ python 4Xport.py -f test -s 172.17.17.121\BI2012 -d HOSPITAL_CUBEDB_KFZ -u sa -p biadmin
```

## 说明

| 文件  |  作用  | 
| ---   |  ---   | 
| add_CUBE.py | 新增指标时，</br> 生成`ZB_FACT_DIM_YS,ZBMX,Y_COLUMN_MAP_ZBFAC,HD_ZBMX_HZ`的初始化数据</br>  | 
| update_CUBE.py | 更新指标时，</br>生成`HD_ZBMX_HZ,ZBMX`表的更新脚本  |
| add_TYPT_M_CHART_ZBDW.py | 新增指标时，</br>生成`M_CHART_ZBDW`表的初始化数据 |
| update_TYPT_M_CHART_ZBDW.py | 更新指标时，</br>生成`M_CHART_ZBDW`表的更新脚本 |


```python
$ python 4Xport.py -h

usage: 4Xport.py [-h] [-f FILENAME] [-a AMOUNT] [-s SERVER] [-d DATABASE]
                 [-u USER] [-p PASSWORD]

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
```

## TODO
Do not change the code in 4Xport.py unless you know what are you do
🖕