import os
import sys
import xlrd
import xlwt
from xlutils import *
import pymssql

'''
path1 = './input/' 
path2 = './output/'  
 
def GenDirFromXlsx():
    dirs = os.listdir(path1)
 
    for dir in dirs:
        file_name = path2 + str(dir)
        os.mkdir(file_name)
GenDirFromXlsx()
'''

if os.path.exists('./output_init_data'):
        print('Done!')
else:
        os.mkdir('./output_init_data')

# 定义方法：读取指定目录下Excel文件某个sheet单元格的值
def excel_read(file_path,table,x,y):
     data = xlrd.open_workbook(file_path)
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
excel_update(file_path,write_obj_list,new_path):
    old_excel = xlrd.open_workbook(file_path, formatting_info=True)
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
    new_excel.save(file_path)

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

