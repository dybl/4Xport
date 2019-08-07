
```python
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple xlwt xlrd xlutils
```

```
Looking in indexes: https://pypi.tuna.tsinghua.edu.cn/simple
Collecting xlwt
  Downloading https://pypi.tuna.tsinghua.edu.cn/packages/44/48/def306413b25c3d01753603b1a222a011b8621aed27cd7f89cbc27e6b0f4/xlwt-1.3.0-py2.py3-none-any.whl (99kB)
     |████████████████████████████████| 102kB 598kB/s
Collecting xlrd
  Downloading https://pypi.tuna.tsinghua.edu.cn/packages/b0/16/63576a1a001752e34bf8ea62e367997530dc553b689356b9879339cf45a4/xlrd-1.2.0-py2.py3-none-any.whl (103kB)
     |████████████████████████████████| 112kB 3.3MB/s
Collecting xlutils
  Downloading https://pypi.tuna.tsinghua.edu.cn/packages/c7/55/e22ac73dbb316cabb5db28bef6c87044a95914f713a6e81b593f8a0d2f79/xlutils-2.0.0-py2.py3-none-any.whl (55kB)
     |████████████████████████████████| 61kB 990kB/s
Installing collected packages: xlwt, xlrd, xlutils
Successfully installed xlrd-1.2.0 xlutils-2.0.0 xlwt-1.3.0
WARNING: You are using pip version 19.1.1, however version 19.2.1 is available.
You should consider upgrading via the 'python -m pip install --upgrade pip' command.
```


```python

# 定义方法：读取指定目录下Excel文件某个sheet单元格的值
def excel_read(input_zb_list,table,x,y):
     data = xlrd.open_workbook(input_zb_list)
     table = data.sheet_by_name(table)
     return table.cell(y,x).value

# 定义方法：单元格值及样式
write_obj_list = []
def concat_obj(cols,rows,value):
    write_obj_list.append({'cols':cols,'rows':rows,'value':value,\
'style':xlwt.easyxf('font: name 宋体,height 280;alignment: horiz centre')})

# 定义方法：合并单元格
def merge_unit(srows,erows,scols,ecols,value):
    write_obj_list.append({'id':'merge','srows':srows,'erows':erows,'scols':scols,\
'ecols':ecols,'value':value,'style':xlwt.easyxf('font: name 宋体,height 280;alignment: horiz centre')})

# 定义方法：更新excel
excel_update(input_zb_list,write_obj_list,new_path):
    old_excel = xlrd.open_workbook(input_zb_list, formatting_info=True)
    #管道作用
    new_excel = copy(old_excel)
    '''
    通过get_sheet()获取的sheet有write()方法
    '''
    sheet1 = new_excel.get_sheet(0)
    '''
    1代表是修改第几个工作表里，从0开始算是第一个。此处修改第一个工作表
    '''
    for item in write_obj_list:
        if 'id' not in item.keys():
            if 'style' in item.keys():
                sheet1.write(item['rows'], item['cols'], item['value'],item['style'])
            else:
                sheet1.write(item['rows'], item['cols'], item['value'])
        else:
            if 'style' in item.keys():
                sheet1.write_merge(item['srows'],item['erows'],item['scols'], item['ecols'], item['value'],item['style'])
            else:
                sheet1.write_merge(item['srows'],item['erows'],item['scols'], item['ecols'], item['value'])
    '''
    如果报错 dict_items has no attributes sort
    把syle源码中--alist.sort() 修改为----> sorted(alist) 
    一共修改2次
    '''
    new_excel.save(input_zb_list)

#参数详解
# srows:合并的起始行数
# erows:合并的结束行数
# scols:合并的起始列数
# ecols:合并的结束列数 
# value:合并单元格后的填充值
# style:合并后填充风格：
#     font: name 宋体
#     height 280;
#     alignment: horiz centre
#     ... 与excel操作基本保持一致

```