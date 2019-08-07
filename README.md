<h1 align="center">EXport_zb_scripts<small>指标导出脚本</small></h1>

![](https://img.shields.io/badge/Python-3.7-yellow.svg)
![](https://img.shields.io/badge/SQLServer-2012-orange.svg)
![](https://img.shields.io/badge/Windows-1903-blueviolet.svg)
![](https://img.shields.io/badge/Version-0.1.0-brightgreen.svg)

## 用法

- 确保python安装时已添加至系统环境变量
- <kbd>Win</kbd>+<kbd>R</kbd>输入`powershel`，或<kbd>Shift</kbd>+鼠标右键，`在此处打开Powershell窗口`

```sh
pip install -i https://pypi.tsinghua.edu.cn/simple pymssql
python xxx.py //先执行add再update
```

## 说明

| 文件  |  作用  | 
| ---   |  ---   | 
| add_CUBE.py | 新增指标时，</br> 生成`ZB_FACT_DIM_YS,ZBMX,Y_COLUMN_MAP_ZBFAC,HD_ZBMX_HZ`的初始化数据</br>  | 
| update_CUBE.py | 更新指标时，</br>生成`HD_ZBMX_HZ,ZBMX`表的更新脚本  |
| add_TYPT_M_CHART_ZBDW.py | 新增指标时，</br>生成`M_CHART_ZBDW`表的初始化数据 |
| update_TYPT_M_CHART_ZBDW.py | 更新指标时，</br>生成`M_CHART_ZBDW`表的更新脚本 |


## 配置<small>`使用前需修改`</small>

### 1.数据库连接(server_)
```python
server_host = '172.17.17.121\\BI2012'
server_database = 'PLATFORM_TYPT_KFZ' 或
server_database = 'HOSPITAL_CUBEDB_KFZ'
server_user = 'sa'
server_password = 'biadmin'
```
### 2.指标清单路径(input_zb_dir)

>     指标文件(xx.txt) 必须按行罗列,绝对不能有空格出现

- 如下所示：
```
A001
A001002
A001003
```

### 3.生成文件路径(output_dir)
```python
output_dir = './output/CUBE/'  或
output_dir = './output/TYPT/'
```
### 4.变量tables控制生成哪张表

```python
tables = [`ZBMX','Y_COLUMN_MAP_ZBFACT','HD_ZBMX_HZ','ZB_FACT_DIM_YS`] //按需修改
```