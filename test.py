from xlrd import open_workbook

from itertools import zip_longest


def main():
    xlsfilename = './input_zb_list/test.xlsx'
    book = open_workbook(xlsfilename, formatting_info=False)

    cursheet = book.sheet_by_index(0)
    basestring = ()
    map_result = list()
    for row in range(cursheet.nrows):
        content = [cursheet.cell(row, col).value for col in range(cursheet.ncols)]
        content_map = map(lambda x: x.strip() if isinstance(x, basestring) else x, content)
        map_result.append(dict(zip_longest(content, content_map)))
        '''
        if row == 0:
            colum_list = [cursheet.cell(0, col).value for col in range(cursheet.ncols)]
        else:
            content = [cursheet.cell(row, col).value for col in range(cursheet.ncols)]
            content_map = map(lambda x: x.strip() if isinstance(x, basestring) else x, content)
            map_result.append(dict(zip_longest(colum_list, content_map)))
        '''
    print(map_result)


if __name__ == '__main__':
    main()