class Xport(object):

    def __init__(self,str):
        self.str = str

    def Judge(self,metric, table):
        if table == 'ZB_FACT_DIM_YS':
            k = 'zbmx_id'
        elif table == 'ZBMX':
            k = 'id'
        elif table in ('Y_COLUMN_MAP_ZBFACT', 'HD_ZBMX_HZ_YS', 'HD_ZBMX_HZ'):
            k = 'zb_id'
        elif table =='M_CHART_ZBDW':
            k = 'mx_id'
        return self.str.format(table=table, zb=metric, k=k)


    def InitData(self,data,table,select,zb):
        header = 'INSERT {table} ('.format(table=table)
        v_field = []
        sql = ''
        if data :
            for i in range(len(data)):
                k_zb = ''
                v_zb = ''
                for k,v in data[i].items():
                    if k==select: #自增列不进行赋值
                        continue
                    k_zb = k_zb + ',' + k
                    v_zb = v_zb + ',\'' + str(v).replace('\'','\'\'')+'\''  #.replace('"','\'\'')
                    v_field.append(v)
                sql =sql + header+' '+k_zb.strip(',')+')\n\tvs('+str(v_zb).strip(',').replace('None','')+')\n\t'
            return sql
        else:
            return 'print \'This table {table}  do not have the zb {zb}\'\n'.format(table=table,zb=zb)

def Header(info):
    text = "/******************" + info + "*****************/\n\n"
    return text

'''
TODO:
    insert: if not exists(select 1 from {tableName} where {key}='{zb}')
    update: if exists(select 1 from {tableName} where {key}='{zb}')
'''

def Body(tableName, info):
    if tableName in  ['ZBMX' , 'HD_ZBMX_HZ_YS', 'HD_ZBMX_HZ','M_CHART_ZBDW']:
        text = "/********{tableName}*******/\n\nif exists(select 1 from {tableName} where {key}='{zb}')\nbegin\n\tprint '新增指标{zb},但指标{zb}已存在于表{tableName}中,请核查!'\nend\nif not exists(select 1 from {tableName} where {key}='{zb}') \nbegin \n\t"
    elif tableName in  ['ZB_FACT_DIM_YS', 'Y_COLUMN_MAP_ZBFACT']:
        text = "/********{tableName}*******/\n\n\tdelete from {tableName} where {key}='{zb}' \n\t"
    else:
        raise (NameError,'此表不需要初始化数据！请核查')
    return text

def Footer(tableName):
    if tableName in ['ZBMX' , 'HD_ZBMX_HZ_YS', 'HD_ZBMX_HZ','M_CHART_ZBDW']:
        text = "\nend\ngo\n\n"
    elif tableName in ['ZB_FACT_DIM_YS', 'Y_COLUMN_MAP_ZBFACT']:
        text = "go\n\n"
    else:
        raise (NameError,'此表不需要初始化数据！请核查')
    return text

