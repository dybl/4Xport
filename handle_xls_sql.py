import os
import sys
import xlrd
#import xlwt
from xlutils import *
import pymssql
import json

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
output_dir = './output_init_data/'
if os.path.exists(output_dir):
    print('Done!')
else:
    os.mkdir('./output_init_data/')
    print("No such file or directory,So create it")

'''
input_dir='./input_zb_list'
if os.path.exists(input_dir):
    print('Done!')
else:
    os.mkdir('./input_zb_list')
    print("No such file or directory,So create it")
'''

input_zb_list = './input_zb_list/'

def get_xlsx_data(filename,amount):
    xlsx_dir = input_zb_list + filename + '.xlsx'
    data = xlrd.open_workbook(xlsx_dir)
    sheet = data.sheets()[amount]
    rows = sheet.nrows
    cols = sheet.ncols
    origin_dict = {}
    for i in range(1,rows):
        for j in range(cols):
            subject_classification = sheet.row_values(j)
            indicator_lists = sheet.cell_value(i,j)
            origin_dict[subject_classification] = indicator_lists
        yield origin_dict

'''
def export_init_data(self, parameter_list):
    prefix = "add_"
    for i in range(len(tables)):
        output_file_name = output_dir + str(prefix) + str(tables[i]) + ".sql"
        f = open(output_file_name, 'w+')
'''

if __name__ == '__main__':
    for i in get_xlsx_data('test', 0):
        print(i)
        '''
        j = json.dumps(i,ensure_ascii=True)
        output_file_name = output_dir + str('test')  + ".json"
        f = open(output_file_name, 'w+')
        f.writelines(str(j))
        '''

        

'''
zb_data = xlrd.open_workbook(input_xlsx)
sheet = zb_data.sheets()[0]
rows = sheet.nrows
cols = sheet.ncols
for i in range(rows):
    indicator_subject_classification = sheet.cell_value(i)
    for i in indicator_subject_classification:
        if eval(i).get('主题分类'):
            print(eval(i)['主题分类'])
        elif eval(i).get('指标'):
            print(eval(i)['指标'])
'''

'''
f = open("xxx.txt", mode="r", encoding="utf-8")
# 读取表头,例如姓名,性别等
line = f.readline()
# 去掉制表符
lst = line.split("\t")
# 设置存储列表
storage = []
# 接着往后读取
for lin in f:
    # 去掉制表符
    each_line = lin.split("\t")
    # 设置每一行的存储字典
    dic = {}
    for i in range(len(each_line)):
        # 存储键和值,健名为第一行的每一项
        dic[lst[i]] = each_line[i]
    storage.append(dic)
print(storage)
'''