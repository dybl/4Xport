tables = ['ZBMX','Y_COLUMN_MAP_ZBFACT','HD_ZBMX_HZ','ZB_FACT_DIM_YS']
for i in range(len(tables)):
    print(tables[i])
    output_file_name = './output/' + str(i) + ".sql"

