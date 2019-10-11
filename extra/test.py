import os
import sys
import xlrd
import pymssql
import argparse


parser = argparse.ArgumentParser()
parser.add_argument("-f", "--filename", help="The name of store the summary indicators's xlsx")
parser.add_argument("-a", "--amount", default=0, type=int, help="The sheet number which needed to process")
parser.add_argument("-s", "--server", help="The server host address which to connect")
parser.add_argument("-d", "--database", help="The database name which to connect")
parser.add_argument("-u", "--user", default="sa", help="The togin user name which to connnect")
parser.add_argument("-p", "--password", help="The login password which to connect")
args = parser.parse_args()

if args.filename:
    print("请输入存放在input_zb_list目录下指标汇总的xlsx文件名")
else:
    print("未输入文件名，不能进行指标抽取，请重新输入")

output_dir = './output_init_data/'
if os.path.exists(output_dir):
    print('Done!')
else:
    os.mkdir('./output_init_data/')
    print("No such file or directory,So create it")

input_zb_list = './input_zb_list/'

def xlsx_2_dict(filename,amount):
    xlsx_dir = input_zb_list + filename + '.xlsx'
    data = xlrd.open_workbook(xlsx_dir)
    sheet = data.sheets()[amount]
    rows = sheet.nrows
    cols = sheet.ncols
    print('输入的xlsx文件共有：{0} 行'.format(rows),'{0} 列'.format(cols))
    dict = {}
    for i in range(1, rows, 1):
        for j in range(cols):
            subject_classification = sheet.cell_value(0,j)
            indicator_lists = sheet.cell_value(i,j)
            dict[subject_classification] = indicator_lists
        yield dict
        

xlsx_2_dict(args.filename, args.amount)
for key, value in my_dict.items():
    print('key:', key)
    print('value:', value)