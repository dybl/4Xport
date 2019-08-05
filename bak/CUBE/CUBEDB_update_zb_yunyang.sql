
/*********No.1: ZLZB_JB1101******ZBMX***ZLZB_JB1101*****************/

if  exists(select 1 from ZBMX where id='ZLZB_JB1101')
begin
update ZBMX set
blbz=''
,blfs=''
,blgz=''
,bmid='ZLZB_JB1101'
,code=''
,czry=''
,fjgz_id=''
,gxrq=''
,id='ZLZB_JB1101'
,is_hz=''
,isblzb=''
,isxybl=''
,jlzt='0'
,jskj=''
,jyzt='0'
,ljfs=''
,mbz_having='1'
,mbz_lrfa=''
,mbz_lrfs='0'
,mbz_zzfd='0.00000'
,memo=''
,mzzybz=''
,name='重点疾病的总例数'
,percent_type='1'
,pid='0'
,pjbz='1'
,qrzt='1'
,tjfs='0'
,tjzb='0'
,xsws='0'
,xtly=''
,yjgzdm=''
,yjgznr=''
,zbdw='例'
,zbfl_id='ZLZB02'
,zbyy=''
 where id='ZLZB_JB1101'
end
go

/*********No.1: ZLZB_JB1101******Y_COLUMN_MAP_ZBFACT***ZLZB_JB1101*****************/

if  exists(select 1 from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_JB1101')
begin
update Y_COLUMN_MAP_ZBFACT set
depend_zbids=''
,fact_colname='rc'
,fact_tablename='FACT_GZ_HZAQ_ZDJB'
,zb_id='ZLZB_JB1101'
 where zb_id='ZLZB_JB1101'
end
go

/*********No.1: ZLZB_JB1101******HD_ZBMX_HZ***ZLZB_JB1101*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_JB1101')
begin
update HD_ZBMX_HZ set
condition=''
,dependindex=''
,dlzgs=''
,dylx=''
,fact_dlz='rc'
,fact_table='FACT_GZ_HZAQ_ZDJB'
,gspz=''
,hqsql_text='select ''ZLZB_JB1101'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(rc) fz from FACT_GZ_HZAQ_ZDJB a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='0'
,kxwdz='timekey,yykey,kskey,yskey,zdjbkey'
,memo=''
,orderno='12171'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,yskey,zdjbkey,sum(rc) fz from FACT_GZ_HZAQ_ZDJB a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey'
,sql_start='select ''ZLZB_JB1101'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_JB1101'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(rc) fz from FACT_GZ_HZAQ_ZDJB a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_JB1101'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(rc) fz from FACT_GZ_HZAQ_ZDJB a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='1'
,zb_id='ZLZB_JB1101'
,zb_name='重点疾病的总例数'
,zbzt='0'
 where zb_id='ZLZB_JB1101'
end
go

/*********No.1: ZLZB_JB1101******ZB_FACT_DIM_YS***ZLZB_JB1101*****************/

if  exists(select 1 from ZB_FACT_DIM_YS where zbmx_id='ZLZB_JB1101')
begin
update ZB_FACT_DIM_YS set
dim_table='科室'
,dim_table_name='DIM_KSXX'
,dim_table_val='ksmc'
,fm_condition=' where'
,fm_fact_table_name='0'
,fm_fact_val='0'
,fz_condition=' where'
,fz_fact_table_name='ZLZB_JB1101'
,fz_fact_val='1'
,join_code='kskey'
,next_join_code='kskey'
,next_kz_key=''
,next_kz_value=''
,wdkz_key=''
,wdkz_lb=''
,wdkz_name=''
,wdkz_table=''
,zbmx_id='ZLZB_JB1101'
,zbmx_tjhs='sum'
 where zbmx_id='ZLZB_JB1101'
end
go

/*********No.2: ZLZB_JB1102******ZBMX***ZLZB_JB1102*****************/

if  exists(select 1 from ZBMX where id='ZLZB_JB1102')
begin
update ZBMX set
blbz=''
,blfs='0'
,blgz=''
,bmid='ZLZB_JB1102'
,code=''
,czry=''
,fjgz_id=''
,gxrq=''
,id='ZLZB_JB1102'
,is_hz=''
,isblzb='0'
,isxybl=''
,jlzt='0'
,jskj=''
,jyzt='0'
,ljfs=''
,mbz_having='1'
,mbz_lrfa=''
,mbz_lrfs='0'
,mbz_zzfd='0.00000'
,memo=''
,mzzybz=''
,name='重点疾病的死亡例数'
,percent_type='1'
,pid='0'
,pjbz='1'
,qrzt='1'
,tjfs='0'
,tjzb='0'
,xsws='0'
,xtly=''
,yjgzdm=''
,yjgznr=''
,zbdw='例'
,zbfl_id='ZLZB02'
,zbyy=''
 where id='ZLZB_JB1102'
end
go

/*********No.2: ZLZB_JB1102******Y_COLUMN_MAP_ZBFACT***ZLZB_JB1102*****************/

if  exists(select 1 from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_JB1102')
begin
update Y_COLUMN_MAP_ZBFACT set
depend_zbids=''
,fact_colname='swrc'
,fact_tablename='FACT_GZ_HZAQ_ZDJB'
,zb_id='ZLZB_JB1102'
 where zb_id='ZLZB_JB1102'
end
go

/*********No.2: ZLZB_JB1102******HD_ZBMX_HZ_YS***ZLZB_JB1102*****************/

if  exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_JB1102')
begin
update HD_ZBMX_HZ_YS set
dependindex=''
,hqsql_text='select ''ZLZB_JB1102'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(swrc) fz from FACT_GZ_HZAQ_ZDJB a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm'
,jlzt='1'
,memo=''
,orderno=''
,proc_name=''
,sql_text='select ''ZLZB_JB1102'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(swrc) fz from FACT_GZ_HZAQ_ZDJB a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm'
,sql_text_first=''
,tqsql_text='select ''ZLZB_JB1102'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(swrc) fz from FACT_GZ_HZAQ_ZDJB a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm'
,zb_id='ZLZB_JB1102'
,zb_name='重点疾病的死亡例数'
,zbzt='0'
 where zb_id='ZLZB_JB1102'
end
go

/*********No.2: ZLZB_JB1102******HD_ZBMX_HZ***ZLZB_JB1102*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_JB1102')
begin
update HD_ZBMX_HZ set
condition=''
,dependindex=''
,dlzgs=''
,dylx=''
,fact_dlz='swrc'
,fact_table='FACT_GZ_HZAQ_ZDJB'
,gspz=''
,hqsql_text='select ''ZLZB_JB1102'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(swrc) fz from FACT_GZ_HZAQ_ZDJB a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='0'
,kxwdz='timekey,yykey,kskey,yskey,zdjbkey'
,memo=''
,orderno='12172'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,yskey,zdjbkey,sum(swrc) fz from FACT_GZ_HZAQ_ZDJB a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey'
,sql_start='select ''ZLZB_JB1102'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_JB1102'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(swrc) fz from FACT_GZ_HZAQ_ZDJB a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_JB1102'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(swrc) fz from FACT_GZ_HZAQ_ZDJB a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='1'
,zb_id='ZLZB_JB1102'
,zb_name='重点疾病的死亡例数'
,zbzt='0'
 where zb_id='ZLZB_JB1102'
end
go

/*********No.2: ZLZB_JB1102******ZB_FACT_DIM_YS***ZLZB_JB1102*****************/

if  exists(select 1 from ZB_FACT_DIM_YS where zbmx_id='ZLZB_JB1102')
begin
update ZB_FACT_DIM_YS set
dim_table='科室'
,dim_table_name='DIM_KSXX'
,dim_table_val='ksmc'
,fm_condition=' where'
,fm_fact_table_name='0'
,fm_fact_val='0'
,fz_condition=' where'
,fz_fact_table_name='ZLZB_JB1102'
,fz_fact_val='1'
,join_code='kskey'
,next_join_code='kskey'
,next_kz_key=''
,next_kz_value=''
,wdkz_key=''
,wdkz_lb=''
,wdkz_name=''
,wdkz_table=''
,zbmx_id='ZLZB_JB1102'
,zbmx_tjhs='sum'
 where zbmx_id='ZLZB_JB1102'
end
go

/*********No.3: ZLZB_JB1103******ZBMX***ZLZB_JB1103*****************/

if  exists(select 1 from ZBMX where id='ZLZB_JB1103')
begin
update ZBMX set
blbz=''
,blfs=''
,blgz=''
,bmid='ZLZB_JB1103'
,code=''
,czry=''
,fjgz_id=''
,gxrq=''
,id='ZLZB_JB1103'
,is_hz=''
,isblzb=''
,isxybl=''
,jlzt='0'
,jskj=''
,jyzt='0'
,ljfs=''
,mbz_having='1'
,mbz_lrfa=''
,mbz_lrfs='0'
,mbz_zzfd='0.00000'
,memo=''
,mzzybz=''
,name='重点疾病的当日再住院率'
,percent_type='100'
,pid='0'
,pjbz='1'
,qrzt='1'
,tjfs='2'
,tjzb='0'
,xsws='0'
,xtly=''
,yjgzdm=''
,yjgznr=''
,zbdw='%'
,zbfl_id='ZLZB02'
,zbyy=''
 where id='ZLZB_JB1103'
end
go

/*********No.3: ZLZB_JB1103******HD_ZBMX_HZ***ZLZB_JB1103*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_JB1103')
begin
update HD_ZBMX_HZ set
condition='where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='sum(case when cflxkey=1 then 1 else 0 end) fz,sum(rc) fm '
,fact_table='FACT_GZ_HZAQ_ZDJB '
,gspz=''
,hqsql_text='select ''ZLZB_JB1103'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(case when cflxkey=1 then 1 else 0 end) fz,sum(rc) fm  from FACT_GZ_HZAQ_ZDJB  a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='-1'
,kxwdz='timekey,yykey,kskey,yskey,zdjbkey'
,memo=''
,orderno='12173'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,yskey,zdjbkey,sum(case when cflxkey=1 then 1 else 0 end) fz,sum(rc) fm  from FACT_GZ_HZAQ_ZDJB  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey'
,sql_start='select ''ZLZB_JB1103'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_JB1103'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(case when cflxkey=1 then 1 else 0 end) fz,sum(rc) fm  from FACT_GZ_HZAQ_ZDJB  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_JB1103'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(case when cflxkey=1 then 1 else 0 end) fz,sum(rc) fm  from FACT_GZ_HZAQ_ZDJB  a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='-1'
,zb_id='ZLZB_JB1103'
,zb_name='重点疾病的当日再住院率'
,zbzt='0'
 where zb_id='ZLZB_JB1103'
end
go

/*********No.3: ZLZB_JB1103******ZB_FACT_DIM_YS***ZLZB_JB1103*****************/

if  exists(select 1 from ZB_FACT_DIM_YS where zbmx_id='ZLZB_JB1103')
begin
update ZB_FACT_DIM_YS set
dim_table='科室'
,dim_table_name='DIM_KSXX'
,dim_table_val='ksmc'
,fm_condition=' where'
,fm_fact_table_name='ZLZB_JB1103_FM'
,fm_fact_val='0'
,fz_condition=' where'
,fz_fact_table_name='ZLZB_JB1103_FZ'
,fz_fact_val='1'
,join_code='kskey'
,next_join_code='kskey'
,next_kz_key=''
,next_kz_value=''
,wdkz_key=''
,wdkz_lb=''
,wdkz_name=''
,wdkz_table=''
,zbmx_id='ZLZB_JB1103'
,zbmx_tjhs='sum'
 where zbmx_id='ZLZB_JB1103'
end
go

/*********No.4: ZLZB_JB1104******ZBMX***ZLZB_JB1104*****************/

if  exists(select 1 from ZBMX where id='ZLZB_JB1104')
begin
update ZBMX set
blbz=''
,blfs='0'
,blgz=''
,bmid='ZLZB_JB1104'
,code=''
,czry=''
,fjgz_id=''
,gxrq=''
,id='ZLZB_JB1104'
,is_hz=''
,isblzb='0'
,isxybl=''
,jlzt='0'
,jskj=''
,jyzt='0'
,ljfs=''
,mbz_having='1'
,mbz_lrfa=''
,mbz_lrfs='0'
,mbz_zzfd='0.00000'
,memo=''
,mzzybz=''
,name='重点疾病的15日内再住院率'
,percent_type='100'
,pid='0'
,pjbz='1'
,qrzt='1'
,tjfs='2'
,tjzb='0'
,xsws='4'
,xtly=''
,yjgzdm=''
,yjgznr=''
,zbdw='%'
,zbfl_id='ZLZB02'
,zbyy=''
 where id='ZLZB_JB1104'
end
go

/*********No.4: ZLZB_JB1104******HD_ZBMX_HZ_YS***ZLZB_JB1104*****************/

if  exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_JB1104')
begin
update HD_ZBMX_HZ_YS set
dependindex=''
,hqsql_text='select ''ZLZB_JB1104'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(lzzzy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB  a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm'
,jlzt='1'
,memo=''
,orderno=''
,proc_name=''
,sql_text='select ''ZLZB_JB1104'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(lzzzy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm'
,sql_text_first=''
,tqsql_text='select ''ZLZB_JB1104'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(lzzzy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB  a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm'
,zb_id='ZLZB_JB1104'
,zb_name='重点疾病的15日内再住院率'
,zbzt='0'
 where zb_id='ZLZB_JB1104'
end
go

/*********No.4: ZLZB_JB1104******HD_ZBMX_HZ***ZLZB_JB1104*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_JB1104')
begin
update HD_ZBMX_HZ set
condition='where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='sum(lzzzy) fz,sum(rc) fm'
,fact_table='FACT_GZ_HZAQ_ZDJB '
,gspz=''
,hqsql_text='select ''ZLZB_JB1104'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(lzzzy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB  a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='-1'
,kxwdz='timekey,yykey,kskey,yskey,zdjbkey'
,memo=''
,orderno='12177'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,yskey,zdjbkey,sum(lzzzy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey'
,sql_start='select ''ZLZB_JB1104'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_JB1104'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(lzzzy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_JB1104'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(lzzzy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB  a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='-1'
,zb_id='ZLZB_JB1104'
,zb_name='重点疾病的15日内再住院率'
,zbzt='0'
 where zb_id='ZLZB_JB1104'
end
go

/*********No.4: ZLZB_JB1104******ZB_FACT_DIM_YS***ZLZB_JB1104*****************/

if  exists(select 1 from ZB_FACT_DIM_YS where zbmx_id='ZLZB_JB1104')
begin
update ZB_FACT_DIM_YS set
dim_table='科室'
,dim_table_name='DIM_KSXX'
,dim_table_val='ksmc'
,fm_condition=' where'
,fm_fact_table_name='ZLZB_JB1104_FM'
,fm_fact_val='0'
,fz_condition=' where'
,fz_fact_table_name='ZLZB_JB1104_FZ'
,fz_fact_val='1'
,join_code='kskey'
,next_join_code='kskey'
,next_kz_key=''
,next_kz_value=''
,wdkz_key=''
,wdkz_lb=''
,wdkz_name=''
,wdkz_table=''
,zbmx_id='ZLZB_JB1104'
,zbmx_tjhs='sum'
 where zbmx_id='ZLZB_JB1104'
end
go

/*********No.5: ZLZB_JB1105******ZBMX***ZLZB_JB1105*****************/

if  exists(select 1 from ZBMX where id='ZLZB_JB1105')
begin
update ZBMX set
blbz=''
,blfs='0'
,blgz=''
,bmid='ZLZB_JB1105'
,code=''
,czry=''
,fjgz_id=''
,gxrq=''
,id='ZLZB_JB1105'
,is_hz=''
,isblzb='0'
,isxybl=''
,jlzt='0'
,jskj=''
,jyzt='0'
,ljfs=''
,mbz_having='1'
,mbz_lrfa=''
,mbz_lrfs='0'
,mbz_zzfd='0.00000'
,memo=''
,mzzybz=''
,name='重点疾病的31日内再住院率'
,percent_type='100'
,pid='0'
,pjbz='1'
,qrzt='1'
,tjfs='2'
,tjzb='0'
,xsws='4'
,xtly=''
,yjgzdm=''
,yjgznr=''
,zbdw='%'
,zbfl_id='ZLZB02'
,zbyy=''
 where id='ZLZB_JB1105'
end
go

/*********No.5: ZLZB_JB1105******HD_ZBMX_HZ_YS***ZLZB_JB1105*****************/

if  exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_JB1105')
begin
update HD_ZBMX_HZ_YS set
dependindex=''
,hqsql_text='select ''ZLZB_JB1105'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(yyzzy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB  a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm'
,jlzt='1'
,memo=''
,orderno=''
,proc_name=''
,sql_text='select ''ZLZB_JB1105'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(yyzzy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm'
,sql_text_first=''
,tqsql_text='select ''ZLZB_JB1105'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(yyzzy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB  a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm'
,zb_id='ZLZB_JB1105'
,zb_name='重点疾病的31日内再住院率'
,zbzt='0'
 where zb_id='ZLZB_JB1105'
end
go

/*********No.5: ZLZB_JB1105******HD_ZBMX_HZ***ZLZB_JB1105*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_JB1105')
begin
update HD_ZBMX_HZ set
condition='where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='sum(yyzzy) fz,sum(rc) fm'
,fact_table='FACT_GZ_HZAQ_ZDJB '
,gspz=''
,hqsql_text='select ''ZLZB_JB1105'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(yyzzy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB  a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='-1'
,kxwdz='timekey,yykey,kskey,yskey,zdjbkey'
,memo=''
,orderno='12180'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,yskey,zdjbkey,sum(yyzzy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey'
,sql_start='select ''ZLZB_JB1105'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_JB1105'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(yyzzy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_JB1105'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(yyzzy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB  a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='-1'
,zb_id='ZLZB_JB1105'
,zb_name='重点疾病的31日内再住院率'
,zbzt='0'
 where zb_id='ZLZB_JB1105'
end
go

/*********No.5: ZLZB_JB1105******ZB_FACT_DIM_YS***ZLZB_JB1105*****************/

if  exists(select 1 from ZB_FACT_DIM_YS where zbmx_id='ZLZB_JB1105')
begin
update ZB_FACT_DIM_YS set
dim_table='科室'
,dim_table_name='DIM_KSXX'
,dim_table_val='ksmc'
,fm_condition=' where'
,fm_fact_table_name='ZLZB_JB1105_FM'
,fm_fact_val='0'
,fz_condition=' where'
,fz_fact_table_name='ZLZB_JB1105_FZ'
,fz_fact_val='1'
,join_code='kskey'
,next_join_code='kskey'
,next_kz_key=''
,next_kz_value=''
,wdkz_key=''
,wdkz_lb=''
,wdkz_name=''
,wdkz_table=''
,zbmx_id='ZLZB_JB1105'
,zbmx_tjhs='sum'
 where zbmx_id='ZLZB_JB1105'
end
go

/*********No.6: ZLZB_JB1106******ZBMX***ZLZB_JB1106*****************/

if  exists(select 1 from ZBMX where id='ZLZB_JB1106')
begin
update ZBMX set
blbz=''
,blfs='0'
,blgz=''
,bmid='ZLZB_JB1106'
,code=''
,czry=''
,fjgz_id=''
,gxrq=''
,id='ZLZB_JB1106'
,is_hz=''
,isblzb='0'
,isxybl=''
,jlzt='0'
,jskj=''
,jyzt='0'
,ljfs=''
,mbz_having='1'
,mbz_lrfa=''
,mbz_lrfs='0'
,mbz_zzfd='0.00000'
,memo=''
,mzzybz=''
,name='重点疾病的平均住院日'
,percent_type='1'
,pid='0'
,pjbz='1'
,qrzt='1'
,tjfs='2'
,tjzb='0'
,xsws='4'
,xtly=''
,yjgzdm=''
,yjgznr=''
,zbdw='天'
,zbfl_id='ZLZB02'
,zbyy=''
 where id='ZLZB_JB1106'
end
go

/*********No.6: ZLZB_JB1106******HD_ZBMX_HZ_YS***ZLZB_JB1106*****************/

if  exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_JB1106')
begin
update HD_ZBMX_HZ_YS set
dependindex=''
,hqsql_text='select ''ZLZB_JB1106'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(zyts) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB  a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm'
,jlzt='1'
,memo=''
,orderno='12183'
,proc_name=''
,sql_text='select ''ZLZB_JB1106'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(zyts) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm'
,sql_text_first=''
,tqsql_text='select ''ZLZB_JB1106'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(zyts) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB  a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm'
,zb_id='ZLZB_JB1106'
,zb_name='重点疾病的平均住院日'
,zbzt='0'
 where zb_id='ZLZB_JB1106'
end
go

/*********No.6: ZLZB_JB1106******HD_ZBMX_HZ***ZLZB_JB1106*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_JB1106')
begin
update HD_ZBMX_HZ set
condition='where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='sum(zyts) fz,sum(rc) fm'
,fact_table='FACT_GZ_HZAQ_ZDJB '
,gspz=''
,hqsql_text='select ''ZLZB_JB1106'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(zyts) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB  a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='-1'
,kxwdz='timekey,yykey,kskey,yskey,zdjbkey'
,memo=''
,orderno='12183'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,yskey,zdjbkey,sum(zyts) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey'
,sql_start='select ''ZLZB_JB1106'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_JB1106'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(zyts) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_JB1106'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(zyts) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB  a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='-1'
,zb_id='ZLZB_JB1106'
,zb_name='重点疾病的平均住院日'
,zbzt='0'
 where zb_id='ZLZB_JB1106'
end
go

/*********No.6: ZLZB_JB1106******ZB_FACT_DIM_YS***ZLZB_JB1106*****************/

if  exists(select 1 from ZB_FACT_DIM_YS where zbmx_id='ZLZB_JB1106')
begin
update ZB_FACT_DIM_YS set
dim_table='科室'
,dim_table_name='DIM_KSXX'
,dim_table_val='ksmc'
,fm_condition=' where'
,fm_fact_table_name='ZLZB_JB1106_FM'
,fm_fact_val='0'
,fz_condition=' where'
,fz_fact_table_name='ZLZB_JB1106_FZ'
,fz_fact_val='1'
,join_code='kskey'
,next_join_code='kskey'
,next_kz_key=''
,next_kz_value=''
,wdkz_key=''
,wdkz_lb=''
,wdkz_name=''
,wdkz_table=''
,zbmx_id='ZLZB_JB1106'
,zbmx_tjhs='sum'
 where zbmx_id='ZLZB_JB1106'
end
go

/*********No.7: ZLZB_JB1107******ZBMX***ZLZB_JB1107*****************/

if  exists(select 1 from ZBMX where id='ZLZB_JB1107')
begin
update ZBMX set
blbz=''
,blfs='0'
,blgz=''
,bmid='ZLZB_JB1107'
,code=''
,czry=''
,fjgz_id=''
,gxrq=''
,id='ZLZB_JB1107'
,is_hz=''
,isblzb='0'
,isxybl=''
,jlzt='0'
,jskj=''
,jyzt='0'
,ljfs=''
,mbz_having='1'
,mbz_lrfa=''
,mbz_lrfs='0'
,mbz_zzfd='0.00000'
,memo=''
,mzzybz=''
,name='重点疾病的次均费用'
,percent_type='1'
,pid='0'
,pjbz='1'
,qrzt='1'
,tjfs='2'
,tjzb='0'
,xsws='4'
,xtly=''
,yjgzdm=''
,yjgznr=''
,zbdw='元'
,zbfl_id='ZLZB02'
,zbyy=''
 where id='ZLZB_JB1107'
end
go

/*********No.7: ZLZB_JB1107******HD_ZBMX_HZ_YS***ZLZB_JB1107*****************/

if  exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_JB1107')
begin
update HD_ZBMX_HZ_YS set
dependindex=''
,hqsql_text='select ''ZLZB_JB1107'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(zfy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm'
,jlzt='1'
,memo=''
,orderno='12186'
,proc_name=''
,sql_text='select ''ZLZB_JB1107'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(zfy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm'
,sql_text_first=''
,tqsql_text='select ''ZLZB_JB1107'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(zfy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm'
,zb_id='ZLZB_JB1107'
,zb_name='重点疾病的次均费用'
,zbzt='0'
 where zb_id='ZLZB_JB1107'
end
go

/*********No.7: ZLZB_JB1107******HD_ZBMX_HZ***ZLZB_JB1107*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_JB1107')
begin
update HD_ZBMX_HZ set
condition='where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='sum(zfy) fz,sum(rc) fm'
,fact_table='FACT_GZ_HZAQ_ZDJB'
,gspz=''
,hqsql_text='select ''ZLZB_JB1107'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(zfy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='-1'
,kxwdz='timekey,yykey,kskey,yskey,zdjbkey'
,memo=''
,orderno='12186'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,yskey,zdjbkey,sum(zfy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey'
,sql_start='select ''ZLZB_JB1107'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_JB1107'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(zfy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_JB1107'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdjbkey,sum(zfy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDJB a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdjbkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='-1'
,zb_id='ZLZB_JB1107'
,zb_name='重点疾病的次均费用'
,zbzt='0'
 where zb_id='ZLZB_JB1107'
end
go

/*********No.7: ZLZB_JB1107******ZB_FACT_DIM_YS***ZLZB_JB1107*****************/

if  exists(select 1 from ZB_FACT_DIM_YS where zbmx_id='ZLZB_JB1107')
begin
update ZB_FACT_DIM_YS set
dim_table='科室'
,dim_table_name='DIM_KSXX'
,dim_table_val='ksmc'
,fm_condition=' where'
,fm_fact_table_name='ZLZB_JB1107_FM'
,fm_fact_val='0'
,fz_condition=' where'
,fz_fact_table_name='ZLZB_JB1107_FZ'
,fz_fact_val='1'
,join_code='kskey'
,next_join_code='kskey'
,next_kz_key=''
,next_kz_value=''
,wdkz_key=''
,wdkz_lb=''
,wdkz_name=''
,wdkz_table=''
,zbmx_id='ZLZB_JB1107'
,zbmx_tjhs='sum'
 where zbmx_id='ZLZB_JB1107'
end
go

/*********No.8: ZLZB_SS1001******ZBMX***ZLZB_SS1001*****************/

if  exists(select 1 from ZBMX where id='ZLZB_SS1001')
begin
update ZBMX set
blbz=''
,blfs=''
,blgz=''
,bmid='ZLZB_SS1001'
,code=''
,czry=''
,fjgz_id=''
,gxrq=''
,id='ZLZB_SS1001'
,is_hz='0'
,isblzb=''
,isxybl=''
,jlzt='0'
,jskj=''
,jyzt='0'
,ljfs=''
,mbz_having='1'
,mbz_lrfa=''
,mbz_lrfs='1'
,mbz_zzfd='0.00000'
,memo=''
,mzzybz=''
,name='重点手术种数'
,percent_type='1'
,pid=''
,pjbz='1'
,qrzt=''
,tjfs='0'
,tjzb=''
,xsws='0'
,xtly=''
,yjgzdm=''
,yjgznr=''
,zbdw=''
,zbfl_id='ZLZB03'
,zbyy=''
 where id='ZLZB_SS1001'
end
go

/*********No.8: ZLZB_SS1001******HD_ZBMX_HZ***ZLZB_SS1001*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_SS1001')
begin
update HD_ZBMX_HZ set
condition=''
,dependindex=''
,dlzgs=''
,dylx=''
,fact_dlz=''
,fact_table=''
,gspz=''
,hqsql_text=''
,jlzt='1'
,kslx=''
,kxwdz=''
,memo=''
,orderno='11218'
,proc_name=''
,sql_end='  ) a inner join DIM_YYXX b ON a.yykey=b.yykey   inner join DIM_KSXX c ON a.kskey=c.kskey   WHERE timekey between @kssj  and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))   GROUP  BY zbmx_id,  a.yykey,b.yydm,a.kskey,c.ksdm,CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1'')'
,sql_middle=' select ''ZLZB_SS1001'' zbmx_id, CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1'')  timekey,   yykey ,kskey , count(distinct zdsskey ) fz, 0 fm from FACT_GZ_HZAQ_ZDSS a  where  timekey between @kssj and @jssj and (yykey in (@yykey) or -1 in (@yykey)) group by CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1''),yykey,kskey'
,sql_start='SELECT  zbmx_id,a.yykey,ISNULL(b.yydm,''01'') yydm,a.kskey,c.ksdm  , CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1'') month, SUM(fz) fz,sum(fm) fm,NULL czry,GETDATE()  gxrq,null bqkey  FROM ( '
,sql_text='SELECT  zbmx_id,a.yykey,ISNULL(b.yydm,''01'') yydm,a.kskey,c.ksdm  , CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1'') month, SUM(fz) fz,sum(fm) fm,NULL czry,GETDATE()  gxrq,null bqkey  FROM (  select ''ZLZB_SS1001'' zbmx_id, CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1'')  timekey,   yykey ,kskey , count(distinct zdsskey ) fz, 0 fm from FACT_GZ_HZAQ_ZDSS a  where  timekey between @kssj and @jssj and (yykey in (@yykey) or -1 in (@yykey)) group by CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1''),yykey,kskey  ) a inner join DIM_YYXX b ON a.yykey=b.yykey   inner join DIM_KSXX c ON a.kskey=c.kskey   WHERE timekey between @kssj  and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))   GROUP  BY zbmx_id,  a.yykey,b.yydm,a.kskey,c.ksdm,CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='SELECT  zbmx_id,a.yykey,ISNULL(b.yydm,''01'') yydm,a.kskey,c.ksdm  , CONVERT(DATE,CONVERT(CHAR(8),DATEADD(YEAR,1,timekey),120)+''1'') month, SUM(fz) fz,sum(fm) fm,NULL czry,GETDATE()  gxrq,null bqkey  FROM (  select ''ZLZB_SS1001'' zbmx_id, CONVERT(DATE,CONVERT(CHAR(8),DATEADD(YEAR,1,timekey),120)+''1'')  timekey,   yykey , -1 kskey , count(distinct zdsskey ) fz, 0 fm from FACT_GZ_HZAQ_ZDSS  where  timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (yykey in (@yykey) or -1 in (@yykey)) group by CONVERT(DATE,CONVERT(CHAR(8),DATEADD(YEAR,1,timekey),120)+''1''),yykey  ) a inner join DIM_YYXX b ON a.yykey=b.yykey   inner join DIM_KSXX c ON a.kskey=c.kskey   WHERE timekey between dateadd(year,-1,@kssj)  and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey))   GROUP  BY zbmx_id,  a.yykey,b.yydm,a.kskey,c.ksdm,CONVERT(DATE,CONVERT(CHAR(8),DATEADD(YEAR,1,timekey),120)+''1'')'
,ysfs='-1'
,zb_id='ZLZB_SS1001'
,zb_name='重点手术种数'
,zbzt='0'
 where zb_id='ZLZB_SS1001'
end
go

/*********No.8: ZLZB_SS1001******ZB_FACT_DIM_YS***ZLZB_SS1001*****************/

if  exists(select 1 from ZB_FACT_DIM_YS where zbmx_id='ZLZB_SS1001')
begin
update ZB_FACT_DIM_YS set
dim_table='科室'
,dim_table_name='DIM_KSXX_BA'
,dim_table_val='ksmc'
,fm_condition=' where'
,fm_fact_table_name='0'
,fm_fact_val='0'
,fz_condition=' where'
,fz_fact_table_name='ZLZB_SS1001'
,fz_fact_val='1'
,join_code='kskey'
,next_join_code='kskey'
,next_kz_key=''
,next_kz_value=''
,wdkz_key=''
,wdkz_lb=''
,wdkz_name=''
,wdkz_table=''
,zbmx_id='ZLZB_SS1001'
,zbmx_tjhs='sum'
 where zbmx_id='ZLZB_SS1001'
end
go

/*********No.9: ZLZB_SS1002******ZBMX***ZLZB_SS1002*****************/

if  exists(select 1 from ZBMX where id='ZLZB_SS1002')
begin
update ZBMX set
blbz=''
,blfs=''
,blgz=''
,bmid='ZLZB_SS1002'
,code=''
,czry=''
,fjgz_id=''
,gxrq=''
,id='ZLZB_SS1002'
,is_hz='0'
,isblzb=''
,isxybl=''
,jlzt='0'
,jskj=''
,jyzt='0'
,ljfs=''
,mbz_having='1'
,mbz_lrfa=''
,mbz_lrfs='1'
,mbz_zzfd='0.00000'
,memo=''
,mzzybz=''
,name='术前平均住院日'
,percent_type='1'
,pid=''
,pjbz='1'
,qrzt=''
,tjfs='1'
,tjzb=''
,xsws='4'
,xtly=''
,yjgzdm=''
,yjgznr=''
,zbdw=''
,zbfl_id='ZLZB03'
,zbyy=''
 where id='ZLZB_SS1002'
end
go

/*********No.9: ZLZB_SS1002******HD_ZBMX_HZ***ZLZB_SS1002*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_SS1002')
begin
update HD_ZBMX_HZ set
condition=''
,dependindex='ZLZB_SS01008,ZLZB_SS1003'
,dlzgs=''
,dylx=''
,fact_dlz=''
,fact_table=''
,gspz=''
,hqsql_text=''
,jlzt='1'
,kslx=''
,kxwdz=''
,memo=''
,orderno='11453'
,proc_name=''
,sql_end='  ) a inner join DIM_YYXX b ON a.yykey=b.yykey   inner join DIM_KSXX_BA c ON a.kskey=c.kskey and a.yykey=c.yykey   WHERE timekey between @kssj  and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))   GROUP  BY zbmx_id,  a.yykey,b.yydm,a.kskey,c.ksdm,CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1'')'
,sql_middle=' select ''ZLZB_SS1002'' zbmx_id, mzyskey,  lyfskey,   timekey, yykey ,kskey , yskey , sum(sqzyts) fz, sum(rc) fm from FACT_GZ_HZAQ_ZDSS a  where  sqzyts is not null     and  timekey between @kssj and @jssj and (yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey , yskey ,timekey,lyfskey,mzyskey '
,sql_start='  SELECT  zbmx_id,a.yykey,ISNULL(b.yydm,''01'') yydm,a.kskey,c.ksdm  , CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1'') month, SUM(fz) fz,sum(fm) fm,NULL czry,GETDATE()  gxrq,null bqkey  FROM ( '
,sql_text='  SELECT  zbmx_id,a.yykey,ISNULL(b.yydm,''01'') yydm,a.kskey,c.ksdm  , CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1'') month, SUM(fz) fz,sum(fm) fm,NULL czry,GETDATE()  gxrq,null bqkey  FROM (  select ''ZLZB_SS1002'' zbmx_id, mzyskey,  lyfskey,   timekey, yykey ,kskey , yskey , sum(sqzyts) fz, sum(rc) fm from FACT_GZ_HZAQ_ZDSS a  where  sqzyts is not null     and  timekey between @kssj and @jssj and (yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey , yskey ,timekey,lyfskey,mzyskey   ) a inner join DIM_YYXX b ON a.yykey=b.yykey   inner join DIM_KSXX_BA c ON a.kskey=c.kskey and a.yykey=c.yykey   WHERE timekey between @kssj  and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))   GROUP  BY zbmx_id,  a.yykey,b.yydm,a.kskey,c.ksdm,CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='SELECT  ''ZLZB_SS1002''  zbmx_id,yykey,yydm,kskey,ksdm,month,SUM(fz) fz,SUM(fm) fm ,NULL czry,getdate() gxrq,null bqkey
FROM
(
SELECT yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm 
FROM FACT_RESULT_KS_VALUE_M 
WHERE dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_SS1003''
         and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL
SELECT yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm 
FROM FACT_RESULT_KS_VALUE_M 
WHERE dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_SS01008''
       and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t
GROUP BY yykey,yydm,kskey,ksdm,month '
,ysfs='-1'
,zb_id='ZLZB_SS1002'
,zb_name='术前平均住院日'
,zbzt='0'
 where zb_id='ZLZB_SS1002'
end
go

/*********No.9: ZLZB_SS1002******ZB_FACT_DIM_YS***ZLZB_SS1002*****************/

if  exists(select 1 from ZB_FACT_DIM_YS where zbmx_id='ZLZB_SS1002')
begin
update ZB_FACT_DIM_YS set
dim_table='病案科室'
,dim_table_name='DIM_KSXX_BA'
,dim_table_val='ksmc'
,fm_condition=' where'
,fm_fact_table_name='ZLZB_SS01008'
,fm_fact_val='0'
,fz_condition=' where'
,fz_fact_table_name='ZLZB_SS1003'
,fz_fact_val='1'
,join_code='kskey'
,next_join_code='kskey'
,next_kz_key=''
,next_kz_value=''
,wdkz_key=''
,wdkz_lb=''
,wdkz_name=''
,wdkz_table=''
,zbmx_id='ZLZB_SS1002'
,zbmx_tjhs='sum'
 where zbmx_id='ZLZB_SS1002'
end
go

/*********No.10: ZLZB_SS1003******ZBMX***ZLZB_SS1003*****************/

if  exists(select 1 from ZBMX where id='ZLZB_SS1003')
begin
update ZBMX set
blbz=''
,blfs=''
,blgz=''
,bmid='ZLZB_SS1003'
,code=''
,czry=''
,fjgz_id=''
,gxrq=''
,id='ZLZB_SS1003'
,is_hz='0'
,isblzb=''
,isxybl=''
,jlzt='0'
,jskj=''
,jyzt='0'
,ljfs=''
,mbz_having='1'
,mbz_lrfa=''
,mbz_lrfs='1'
,mbz_zzfd='0.00000'
,memo=''
,mzzybz=''
,name='术前住院天数'
,percent_type='1'
,pid=''
,pjbz='1'
,qrzt=''
,tjfs='0'
,tjzb=''
,xsws='0'
,xtly=''
,yjgzdm=''
,yjgznr=''
,zbdw=''
,zbfl_id='ZLZB03'
,zbyy=''
 where id='ZLZB_SS1003'
end
go

/*********No.10: ZLZB_SS1003******HD_ZBMX_HZ***ZLZB_SS1003*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_SS1003')
begin
update HD_ZBMX_HZ set
condition=''
,dependindex=''
,dlzgs=''
,dylx=''
,fact_dlz=''
,fact_table=''
,gspz=''
,hqsql_text=''
,jlzt='1'
,kslx=''
,kxwdz=''
,memo=''
,orderno='11219'
,proc_name=''
,sql_end='  ) a inner join DIM_YYXX b ON a.yykey=b.yykey   inner join DIM_KSXX_BA c ON a.kskey=c.kskey and a.yykey=c.yykey   WHERE timekey between @kssj  and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))   GROUP  BY zbmx_id,  a.yykey,b.yydm,a.kskey,c.ksdm,CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1'')'
,sql_middle=' select ''ZLZB_SS1003'' zbmx_id, mzyskey,  lyfskey,   timekey, yykey ,kskey , yskey , sum(sqzyts) fz, 0 fm from FACT_GZ_HZAQ_ZDSS a  where  sqzyts is not null     and  timekey between @kssj and @jssj and (yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey , yskey ,timekey,lyfskey,mzyskey '
,sql_start='  SELECT  zbmx_id,a.yykey,ISNULL(b.yydm,''01'') yydm,a.kskey,c.ksdm  , CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1'') month, SUM(fz) fz,sum(fm) fm,NULL czry,GETDATE()  gxrq,null bqkey  FROM ( '
,sql_text='  SELECT  zbmx_id,a.yykey,ISNULL(b.yydm,''01'') yydm,a.kskey,c.ksdm  , CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1'') month, SUM(fz) fz,sum(fm) fm,NULL czry,GETDATE()  gxrq,null bqkey  FROM (  select ''ZLZB_SS1003'' zbmx_id, mzyskey,  lyfskey,   timekey, yykey ,kskey , yskey , sum(sqzyts) fz, 0 fm from FACT_GZ_HZAQ_ZDSS a  where  sqzyts is not null     and  timekey between @kssj and @jssj and (yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey , yskey ,timekey,lyfskey,mzyskey   ) a inner join DIM_YYXX b ON a.yykey=b.yykey   inner join DIM_KSXX_BA c ON a.kskey=c.kskey and a.yykey=c.yykey   WHERE timekey between @kssj  and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))   GROUP  BY zbmx_id,  a.yykey,b.yydm,a.kskey,c.ksdm,CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='  SELECT  zbmx_id,a.yykey,ISNULL(b.yydm,''01'') yydm,a.kskey,c.ksdm  , CONVERT(DATE,CONVERT(CHAR(8),DATEADD(YEAR,1,timekey),120)+''1'') month, SUM(fz) fz,sum(fm) fm,NULL czry,GETDATE()  gxrq,null bqkey  FROM (  select ''ZLZB_SS1003'' zbmx_id, mzyskey,  lyfskey,   timekey, yykey ,kskey , yskey , sum(sqzyts) fz, 0 fm from FACT_GZ_HZAQ_ZDSS  where  sqzyts is not null     and  timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey , yskey ,timekey,lyfskey,mzyskey   ) a inner join DIM_YYXX b ON a.yykey=b.yykey   inner join DIM_KSXX_BA c ON a.kskey=c.kskey and a.yykey=c.yykey   WHERE timekey between dateadd(year,-1,@kssj)  and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey))   GROUP  BY zbmx_id,  a.yykey,b.yydm,a.kskey,c.ksdm,CONVERT(DATE,CONVERT(CHAR(8),DATEADD(YEAR,1,timekey),120)+''1'')'
,ysfs='-1'
,zb_id='ZLZB_SS1003'
,zb_name='术前住院天数'
,zbzt='0'
 where zb_id='ZLZB_SS1003'
end
go

/*********No.10: ZLZB_SS1003******ZB_FACT_DIM_YS***ZLZB_SS1003*****************/

if  exists(select 1 from ZB_FACT_DIM_YS where zbmx_id='ZLZB_SS1003')
begin
update ZB_FACT_DIM_YS set
dim_table='科室'
,dim_table_name='DIM_KSXX_BA'
,dim_table_val='ksmc'
,fm_condition=' where'
,fm_fact_table_name='0'
,fm_fact_val='0'
,fz_condition=' where'
,fz_fact_table_name='ZLZB_SS1003'
,fz_fact_val='1'
,join_code='kskey'
,next_join_code='kskey'
,next_kz_key=''
,next_kz_value=''
,wdkz_key=''
,wdkz_lb=''
,wdkz_name=''
,wdkz_table=''
,zbmx_id='ZLZB_SS1003'
,zbmx_tjhs='sum'
 where zbmx_id='ZLZB_SS1003'
end
go

/*********No.11: ZLZB_SS1101******ZBMX***ZLZB_SS1101*****************/

if  exists(select 1 from ZBMX where id='ZLZB_SS1101')
begin
update ZBMX set
blbz=''
,blfs='0'
,blgz=''
,bmid='ZLZB_SS1101'
,code=''
,czry=''
,fjgz_id=''
,gxrq=''
,id='ZLZB_SS1101'
,is_hz=''
,isblzb='0'
,isxybl=''
,jlzt='0'
,jskj=''
,jyzt='0'
,ljfs=''
,mbz_having='1'
,mbz_lrfa=''
,mbz_lrfs='0'
,mbz_zzfd='0.00000'
,memo=''
,mzzybz=''
,name='重点手术的总例数'
,percent_type='1'
,pid='0'
,pjbz='1'
,qrzt='1'
,tjfs='0'
,tjzb='0'
,xsws='0'
,xtly=''
,yjgzdm=''
,yjgznr=''
,zbdw='例'
,zbfl_id='ZLZB03'
,zbyy=''
 where id='ZLZB_SS1101'
end
go

/*********No.11: ZLZB_SS1101******Y_COLUMN_MAP_ZBFACT***ZLZB_SS1101*****************/

if  exists(select 1 from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_SS1101')
begin
update Y_COLUMN_MAP_ZBFACT set
depend_zbids=''
,fact_colname='rc'
,fact_tablename='FACT_GZ_HZAQ_ZDSS'
,zb_id='ZLZB_SS1101'
 where zb_id='ZLZB_SS1101'
end
go

/*********No.11: ZLZB_SS1101******HD_ZBMX_HZ_YS***ZLZB_SS1101*****************/

if  exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_SS1101')
begin
update HD_ZBMX_HZ_YS set
dependindex=''
,hqsql_text='select ''ZLZB_SS1101'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(rc) fz from FACT_GZ_HZAQ_ZDSS a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm'
,jlzt='1'
,memo=''
,orderno=''
,proc_name=''
,sql_text='select ''ZLZB_SS1101'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(rc) fz from FACT_GZ_HZAQ_ZDSS a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm'
,sql_text_first=''
,tqsql_text='select ''ZLZB_SS1101'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(rc) fz from FACT_GZ_HZAQ_ZDSS a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm'
,zb_id='ZLZB_SS1101'
,zb_name='重点手术的总例数'
,zbzt='0'
 where zb_id='ZLZB_SS1101'
end
go

/*********No.11: ZLZB_SS1101******HD_ZBMX_HZ***ZLZB_SS1101*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_SS1101')
begin
update HD_ZBMX_HZ set
condition=''
,dependindex=''
,dlzgs=''
,dylx=''
,fact_dlz='rc'
,fact_table='FACT_GZ_HZAQ_ZDSS'
,gspz=''
,hqsql_text='select ''ZLZB_SS1101'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,yskey,kskey,zdsskey,sum(rc) fz from FACT_GZ_HZAQ_ZDSS a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,yskey,kskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='0'
,kxwdz='timekey,yykey,yskey,kskey,zdsskey'
,memo=''
,orderno='12189'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,yskey,kskey,zdsskey,sum(rc) fz from FACT_GZ_HZAQ_ZDSS a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,yskey,kskey,zdsskey'
,sql_start='select ''ZLZB_SS1101'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_SS1101'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,yskey,kskey,zdsskey,sum(rc) fz from FACT_GZ_HZAQ_ZDSS a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,yskey,kskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_SS1101'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,yskey,kskey,zdsskey,sum(rc) fz from FACT_GZ_HZAQ_ZDSS a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,yskey,kskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='1'
,zb_id='ZLZB_SS1101'
,zb_name='重点手术的总例数'
,zbzt='0'
 where zb_id='ZLZB_SS1101'
end
go

/*********No.11: ZLZB_SS1101******ZB_FACT_DIM_YS***ZLZB_SS1101*****************/

if  exists(select 1 from ZB_FACT_DIM_YS where zbmx_id='ZLZB_SS1101')
begin
update ZB_FACT_DIM_YS set
dim_table='科室'
,dim_table_name='DIM_KSXX'
,dim_table_val='ksmc'
,fm_condition=' where'
,fm_fact_table_name='0'
,fm_fact_val='0'
,fz_condition=' where'
,fz_fact_table_name='ZLZB_SS1101'
,fz_fact_val='1'
,join_code='kskey'
,next_join_code='kskey'
,next_kz_key=''
,next_kz_value=''
,wdkz_key=''
,wdkz_lb=''
,wdkz_name=''
,wdkz_table=''
,zbmx_id='ZLZB_SS1101'
,zbmx_tjhs='sum'
 where zbmx_id='ZLZB_SS1101'
end
go

/*********No.12: ZLZB_SS1102******ZBMX***ZLZB_SS1102*****************/

if  exists(select 1 from ZBMX where id='ZLZB_SS1102')
begin
update ZBMX set
blbz=''
,blfs='0'
,blgz=''
,bmid='ZLZB_SS1102'
,code=''
,czry=''
,fjgz_id=''
,gxrq=''
,id='ZLZB_SS1102'
,is_hz=''
,isblzb='0'
,isxybl=''
,jlzt='0'
,jskj=''
,jyzt='0'
,ljfs=''
,mbz_having='1'
,mbz_lrfa=''
,mbz_lrfs='0'
,mbz_zzfd='0.00000'
,memo=''
,mzzybz=''
,name='重点手术的死亡率'
,percent_type='100'
,pid='0'
,pjbz='1'
,qrzt='1'
,tjfs='2'
,tjzb='0'
,xsws='4'
,xtly=''
,yjgzdm=''
,yjgznr=''
,zbdw='%'
,zbfl_id='ZLZB03'
,zbyy=''
 where id='ZLZB_SS1102'
end
go

/*********No.12: ZLZB_SS1102******HD_ZBMX_HZ_YS***ZLZB_SS1102*****************/

if  exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_SS1102')
begin
update HD_ZBMX_HZ_YS set
dependindex=''
,hqsql_text='select ''ZLZB_SS1102'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(swrc) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm'
,jlzt='1'
,memo=''
,orderno=''
,proc_name=''
,sql_text='select ''ZLZB_SS1102'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(swrc) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm'
,sql_text_first=''
,tqsql_text='select ''ZLZB_SS1102'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(swrc) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm'
,zb_id='ZLZB_SS1102'
,zb_name='重点手术的死亡率'
,zbzt='0'
 where zb_id='ZLZB_SS1102'
end
go

/*********No.12: ZLZB_SS1102******HD_ZBMX_HZ***ZLZB_SS1102*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_SS1102')
begin
update HD_ZBMX_HZ set
condition='where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='sum(swrc) fz,sum(rc) fm'
,fact_table='FACT_GZ_HZAQ_ZDSS '
,gspz=''
,hqsql_text='select ''ZLZB_SS1102'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(swrc) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='-1'
,kxwdz='timekey,yykey,kskey,yskey,zdsskey'
,memo=''
,orderno='12190'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,yskey,zdsskey,sum(swrc) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey'
,sql_start='select ''ZLZB_SS1102'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_SS1102'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(swrc) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_SS1102'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(swrc) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='-1'
,zb_id='ZLZB_SS1102'
,zb_name='重点手术的死亡率'
,zbzt='0'
 where zb_id='ZLZB_SS1102'
end
go

/*********No.12: ZLZB_SS1102******ZB_FACT_DIM_YS***ZLZB_SS1102*****************/

if  exists(select 1 from ZB_FACT_DIM_YS where zbmx_id='ZLZB_SS1102')
begin
update ZB_FACT_DIM_YS set
dim_table='科室'
,dim_table_name='DIM_KSXX'
,dim_table_val='ksmc'
,fm_condition=' where'
,fm_fact_table_name='ZLZB_SS1102_FM'
,fm_fact_val='0'
,fz_condition=' where'
,fz_fact_table_name='ZLZB_SS1102_FZ'
,fz_fact_val='1'
,join_code='kskey'
,next_join_code='kskey'
,next_kz_key=''
,next_kz_value=''
,wdkz_key=''
,wdkz_lb=''
,wdkz_name=''
,wdkz_table=''
,zbmx_id='ZLZB_SS1102'
,zbmx_tjhs='sum'
 where zbmx_id='ZLZB_SS1102'
end
go

/*********No.13: ZLZB_SS1103******ZBMX***ZLZB_SS1103*****************/

if  exists(select 1 from ZBMX where id='ZLZB_SS1103')
begin
update ZBMX set
blbz=''
,blfs='0'
,blgz=''
,bmid='ZLZB_SS1103'
,code=''
,czry=''
,fjgz_id=''
,gxrq=''
,id='ZLZB_SS1103'
,is_hz=''
,isblzb='0'
,isxybl=''
,jlzt='0'
,jskj=''
,jyzt='0'
,ljfs=''
,mbz_having='1'
,mbz_lrfa=''
,mbz_lrfs='0'
,mbz_zzfd='0.00000'
,memo=''
,mzzybz=''
,name='重点手术的术后非预期的重返手术室再手术率'
,percent_type='100'
,pid='0'
,pjbz='1'
,qrzt='1'
,tjfs='2'
,tjzb='0'
,xsws='4'
,xtly=''
,yjgzdm=''
,yjgznr=''
,zbdw='%'
,zbfl_id='ZLZB03'
,zbyy=''
 where id='ZLZB_SS1103'
end
go

/*********No.13: ZLZB_SS1103******HD_ZBMX_HZ_YS***ZLZB_SS1103*****************/

if  exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_SS1103')
begin
update HD_ZBMX_HZ_YS set
dependindex=''
,hqsql_text='select ''ZLZB_SS1103'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(shfyqzssls) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm'
,jlzt='1'
,memo=''
,orderno=''
,proc_name=''
,sql_text='select ''ZLZB_SS1103'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(shfyqzssls) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm'
,sql_text_first=''
,tqsql_text='select ''ZLZB_SS1103'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(shfyqzssls) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm'
,zb_id='ZLZB_SS1103'
,zb_name='重点手术的术后非预期的重返手术室再手术率'
,zbzt='0'
 where zb_id='ZLZB_SS1103'
end
go

/*********No.13: ZLZB_SS1103******HD_ZBMX_HZ***ZLZB_SS1103*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_SS1103')
begin
update HD_ZBMX_HZ set
condition='where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='sum(shfyqzssls) fz,sum(rc) fm'
,fact_table='FACT_GZ_HZAQ_ZDSS '
,gspz=''
,hqsql_text='select ''ZLZB_SS1103'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(shfyqzssls) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='-1'
,kxwdz='timekey,yykey,kskey,yskey,zdsskey'
,memo=''
,orderno='12193'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,yskey,zdsskey,sum(shfyqzssls) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey'
,sql_start='select ''ZLZB_SS1103'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_SS1103'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(shfyqzssls) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_SS1103'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(shfyqzssls) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='-1'
,zb_id='ZLZB_SS1103'
,zb_name='重点手术的术后非预期的重返手术室再手术率'
,zbzt='0'
 where zb_id='ZLZB_SS1103'
end
go

/*********No.13: ZLZB_SS1103******ZB_FACT_DIM_YS***ZLZB_SS1103*****************/

if  exists(select 1 from ZB_FACT_DIM_YS where zbmx_id='ZLZB_SS1103')
begin
update ZB_FACT_DIM_YS set
dim_table='科室'
,dim_table_name='DIM_KSXX'
,dim_table_val='ksmc'
,fm_condition=' where'
,fm_fact_table_name='ZLZB_SS1103_FM'
,fm_fact_val='0'
,fz_condition=' where'
,fz_fact_table_name='ZLZB_SS1103_FZ'
,fz_fact_val='1'
,join_code='kskey'
,next_join_code='kskey'
,next_kz_key=''
,next_kz_value=''
,wdkz_key=''
,wdkz_lb=''
,wdkz_name=''
,wdkz_table=''
,zbmx_id='ZLZB_SS1103'
,zbmx_tjhs='sum'
 where zbmx_id='ZLZB_SS1103'
end
go

/*********No.14: ZLZB_SS1104******ZBMX***ZLZB_SS1104*****************/

if  exists(select 1 from ZBMX where id='ZLZB_SS1104')
begin
update ZBMX set
blbz=''
,blfs='0'
,blgz=''
,bmid='ZLZB_SS1104'
,code=''
,czry=''
,fjgz_id=''
,gxrq=''
,id='ZLZB_SS1104'
,is_hz=''
,isblzb='0'
,isxybl=''
,jlzt='0'
,jskj=''
,jyzt='0'
,ljfs=''
,mbz_having='1'
,mbz_lrfa=''
,mbz_lrfs='0'
,mbz_zzfd='0.00000'
,memo=''
,mzzybz=''
,name='重点手术的平均住院日'
,percent_type='1'
,pid='0'
,pjbz='1'
,qrzt='1'
,tjfs='2'
,tjzb='0'
,xsws='4'
,xtly=''
,yjgzdm=''
,yjgznr=''
,zbdw='天'
,zbfl_id='ZLZB03'
,zbyy=''
 where id='ZLZB_SS1104'
end
go

/*********No.14: ZLZB_SS1104******HD_ZBMX_HZ_YS***ZLZB_SS1104*****************/

if  exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_SS1104')
begin
update HD_ZBMX_HZ_YS set
dependindex=''
,hqsql_text='select ''ZLZB_SS1104'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(zyts) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm'
,jlzt='1'
,memo=''
,orderno=''
,proc_name=''
,sql_text='select ''ZLZB_SS1104'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(zyts) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm'
,sql_text_first=''
,tqsql_text='select ''ZLZB_SS1104'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(zyts) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm'
,zb_id='ZLZB_SS1104'
,zb_name='重点手术的平均住院日'
,zbzt='0'
 where zb_id='ZLZB_SS1104'
end
go

/*********No.14: ZLZB_SS1104******HD_ZBMX_HZ***ZLZB_SS1104*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_SS1104')
begin
update HD_ZBMX_HZ set
condition='where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='sum(zyts) fz,sum(rc) fm'
,fact_table='FACT_GZ_HZAQ_ZDSS '
,gspz=''
,hqsql_text='select ''ZLZB_SS1104'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(zyts) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='-1'
,kxwdz='timekey,yykey,kskey,yskey,zdsskey'
,memo=''
,orderno='12197'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,yskey,zdsskey,sum(zyts) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey'
,sql_start='select ''ZLZB_SS1104'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_SS1104'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(zyts) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_SS1104'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(zyts) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='-1'
,zb_id='ZLZB_SS1104'
,zb_name='重点手术的平均住院日'
,zbzt='0'
 where zb_id='ZLZB_SS1104'
end
go

/*********No.14: ZLZB_SS1104******ZB_FACT_DIM_YS***ZLZB_SS1104*****************/

if  exists(select 1 from ZB_FACT_DIM_YS where zbmx_id='ZLZB_SS1104')
begin
update ZB_FACT_DIM_YS set
dim_table='科室'
,dim_table_name='DIM_KSXX'
,dim_table_val='ksmc'
,fm_condition=' where'
,fm_fact_table_name='ZLZB_SS1104_FM'
,fm_fact_val='0'
,fz_condition=' where'
,fz_fact_table_name='ZLZB_SS1104_FZ'
,fz_fact_val='1'
,join_code='kskey'
,next_join_code='kskey'
,next_kz_key=''
,next_kz_value=''
,wdkz_key=''
,wdkz_lb=''
,wdkz_name=''
,wdkz_table=''
,zbmx_id='ZLZB_SS1104'
,zbmx_tjhs='sum'
 where zbmx_id='ZLZB_SS1104'
end
go

/*********No.15: ZLZB_SS1105******ZBMX***ZLZB_SS1105*****************/

if  exists(select 1 from ZBMX where id='ZLZB_SS1105')
begin
update ZBMX set
blbz=''
,blfs='0'
,blgz=''
,bmid='ZLZB_SS1105'
,code=''
,czry=''
,fjgz_id=''
,gxrq=''
,id='ZLZB_SS1105'
,is_hz=''
,isblzb='0'
,isxybl=''
,jlzt='0'
,jskj=''
,jyzt='0'
,ljfs=''
,mbz_having='1'
,mbz_lrfa=''
,mbz_lrfs='0'
,mbz_zzfd='0.00000'
,memo=''
,mzzybz=''
,name='重点手术的术前平均住院日'
,percent_type='1'
,pid='0'
,pjbz='1'
,qrzt='1'
,tjfs='2'
,tjzb='0'
,xsws='4'
,xtly=''
,yjgzdm=''
,yjgznr=''
,zbdw='人'
,zbfl_id='ZLZB03'
,zbyy=''
 where id='ZLZB_SS1105'
end
go

/*********No.15: ZLZB_SS1105******HD_ZBMX_HZ_YS***ZLZB_SS1105*****************/

if  exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_SS1105')
begin
update HD_ZBMX_HZ_YS set
dependindex=''
,hqsql_text='select ''ZLZB_SS1105'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(sqzyts) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm'
,jlzt='1'
,memo=''
,orderno=''
,proc_name=''
,sql_text='select ''ZLZB_SS1105'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(sqzyts) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm'
,sql_text_first=''
,tqsql_text='select ''ZLZB_SS1105'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(sqzyts) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm'
,zb_id='ZLZB_SS1105'
,zb_name='重点手术的术前平均住院日'
,zbzt='0'
 where zb_id='ZLZB_SS1105'
end
go

/*********No.15: ZLZB_SS1105******HD_ZBMX_HZ***ZLZB_SS1105*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_SS1105')
begin
update HD_ZBMX_HZ set
condition='where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='sum(sqzyts) fz,sum(rc) fm'
,fact_table='FACT_GZ_HZAQ_ZDSS '
,gspz=''
,hqsql_text='select ''ZLZB_SS1105'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(sqzyts) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='-1'
,kxwdz='timekey,yykey,kskey,yskey,zdsskey'
,memo=''
,orderno='12200'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,yskey,zdsskey,sum(sqzyts) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey'
,sql_start='select ''ZLZB_SS1105'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_SS1105'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(sqzyts) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_SS1105'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(sqzyts) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='-1'
,zb_id='ZLZB_SS1105'
,zb_name='重点手术的术前平均住院日'
,zbzt='0'
 where zb_id='ZLZB_SS1105'
end
go

/*********No.15: ZLZB_SS1105******ZB_FACT_DIM_YS***ZLZB_SS1105*****************/

if  exists(select 1 from ZB_FACT_DIM_YS where zbmx_id='ZLZB_SS1105')
begin
update ZB_FACT_DIM_YS set
dim_table='科室'
,dim_table_name='DIM_KSXX'
,dim_table_val='ksmc'
,fm_condition=' where'
,fm_fact_table_name='ZLZB_SS1105_FM'
,fm_fact_val='0'
,fz_condition=' where'
,fz_fact_table_name='ZLZB_SS1105_FZ'
,fz_fact_val='1'
,join_code='kskey'
,next_join_code='kskey'
,next_kz_key=''
,next_kz_value=''
,wdkz_key=''
,wdkz_lb=''
,wdkz_name=''
,wdkz_table=''
,zbmx_id='ZLZB_SS1105'
,zbmx_tjhs='sum'
 where zbmx_id='ZLZB_SS1105'
end
go

/*********No.16: ZLZB_SS1106******ZBMX***ZLZB_SS1106*****************/

if  exists(select 1 from ZBMX where id='ZLZB_SS1106')
begin
update ZBMX set
blbz=''
,blfs='0'
,blgz=''
,bmid='ZLZB_SS1106'
,code=''
,czry=''
,fjgz_id=''
,gxrq=''
,id='ZLZB_SS1106'
,is_hz=''
,isblzb='0'
,isxybl=''
,jlzt='0'
,jskj=''
,jyzt='0'
,ljfs=''
,mbz_having='1'
,mbz_lrfa=''
,mbz_lrfs='0'
,mbz_zzfd='0.00000'
,memo=''
,mzzybz=''
,name='重点手术的次均住院费用'
,percent_type='1'
,pid='0'
,pjbz='1'
,qrzt='1'
,tjfs='2'
,tjzb='0'
,xsws='4'
,xtly=''
,yjgzdm=''
,yjgznr=''
,zbdw='元'
,zbfl_id='ZLZB03'
,zbyy=''
 where id='ZLZB_SS1106'
end
go

/*********No.16: ZLZB_SS1106******HD_ZBMX_HZ_YS***ZLZB_SS1106*****************/

if  exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_SS1106')
begin
update HD_ZBMX_HZ_YS set
dependindex=''
,hqsql_text='select ''ZLZB_SS1106'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(zfy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm'
,jlzt='1'
,memo=''
,orderno=''
,proc_name=''
,sql_text='select ''ZLZB_SS1106'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(zfy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm'
,sql_text_first=''
,tqsql_text='select ''ZLZB_SS1106'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(zfy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm'
,zb_id='ZLZB_SS1106'
,zb_name='重点手术的次均住院费用'
,zbzt='0'
 where zb_id='ZLZB_SS1106'
end
go

/*********No.16: ZLZB_SS1106******HD_ZBMX_HZ***ZLZB_SS1106*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_SS1106')
begin
update HD_ZBMX_HZ set
condition='where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='sum(zfy) fz,sum(rc) fm'
,fact_table='FACT_GZ_HZAQ_ZDSS'
,gspz=''
,hqsql_text='select ''ZLZB_SS1106'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(zfy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='-1'
,kxwdz='timekey,yykey,kskey,yskey,zdsskey'
,memo=''
,orderno='12203'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,yskey,zdsskey,sum(zfy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey'
,sql_start='select ''ZLZB_SS1106'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_SS1106'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(zfy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_SS1106'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(zfy) fz,sum(rc) fm from FACT_GZ_HZAQ_ZDSS a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='-1'
,zb_id='ZLZB_SS1106'
,zb_name='重点手术的次均住院费用'
,zbzt='0'
 where zb_id='ZLZB_SS1106'
end
go

/*********No.16: ZLZB_SS1106******ZB_FACT_DIM_YS***ZLZB_SS1106*****************/

if  exists(select 1 from ZB_FACT_DIM_YS where zbmx_id='ZLZB_SS1106')
begin
update ZB_FACT_DIM_YS set
dim_table='科室'
,dim_table_name='DIM_KSXX'
,dim_table_val='ksmc'
,fm_condition=' where'
,fm_fact_table_name='ZLZB_SS1106_FM'
,fm_fact_val='0'
,fz_condition=' where'
,fz_fact_table_name='ZLZB_SS1106_FZ'
,fz_fact_val='1'
,join_code='kskey'
,next_join_code='kskey'
,next_kz_key=''
,next_kz_value=''
,wdkz_key=''
,wdkz_lb=''
,wdkz_name=''
,wdkz_table=''
,zbmx_id='ZLZB_SS1106'
,zbmx_tjhs='sum'
 where zbmx_id='ZLZB_SS1106'
end
go

/*********No.17: ZLZB_SS1107******ZBMX***ZLZB_SS1107*****************/

if  exists(select 1 from ZBMX where id='ZLZB_SS1107')
begin
update ZBMX set
blbz=''
,blfs='0'
,blgz=''
,bmid='ZLZB_SS1107'
,code=''
,czry=''
,fjgz_id=''
,gxrq=''
,id='ZLZB_SS1107'
,is_hz=''
,isblzb='0'
,isxybl=''
,jlzt='0'
,jskj=''
,jyzt='0'
,ljfs=''
,mbz_having='1'
,mbz_lrfa=''
,mbz_lrfs='0'
,mbz_zzfd='0.00000'
,memo=''
,mzzybz=''
,name='重点手术的药品占住院费用比'
,percent_type='100'
,pid='0'
,pjbz='1'
,qrzt='1'
,tjfs='2'
,tjzb='0'
,xsws='4'
,xtly=''
,yjgzdm=''
,yjgznr=''
,zbdw='%'
,zbfl_id='ZLZB03'
,zbyy=''
 where id='ZLZB_SS1107'
end
go

/*********No.17: ZLZB_SS1107******HD_ZBMX_HZ_YS***ZLZB_SS1107*****************/

if  exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_SS1107')
begin
update HD_ZBMX_HZ_YS set
dependindex=''
,hqsql_text='select ''ZLZB_SS1107'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(ypfy) fz,sum(zfy) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm'
,jlzt='1'
,memo=''
,orderno=''
,proc_name=''
,sql_text='select ''ZLZB_SS1107'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(ypfy) fz,sum(zfy) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm'
,sql_text_first=''
,tqsql_text='select ''ZLZB_SS1107'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(ypfy) fz,sum(zfy) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm'
,zb_id='ZLZB_SS1107'
,zb_name='重点手术的药品占住院费用比'
,zbzt='0'
 where zb_id='ZLZB_SS1107'
end
go

/*********No.17: ZLZB_SS1107******HD_ZBMX_HZ***ZLZB_SS1107*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_SS1107')
begin
update HD_ZBMX_HZ set
condition='where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='sum(ypfy) fz,sum(zfy) fm'
,fact_table='FACT_GZ_HZAQ_ZDSS '
,gspz=''
,hqsql_text='select ''ZLZB_SS1107'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(ypfy) fz,sum(zfy) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='-1'
,kxwdz='timekey,yykey,kskey,yskey,zdsskey'
,memo=''
,orderno='12206'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,yskey,zdsskey,sum(ypfy) fz,sum(zfy) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey'
,sql_start='select ''ZLZB_SS1107'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_SS1107'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(ypfy) fz,sum(zfy) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_SS1107'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(ypfy) fz,sum(zfy) fm from FACT_GZ_HZAQ_ZDSS  a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='-1'
,zb_id='ZLZB_SS1107'
,zb_name='重点手术的药品占住院费用比'
,zbzt='0'
 where zb_id='ZLZB_SS1107'
end
go

/*********No.17: ZLZB_SS1107******ZB_FACT_DIM_YS***ZLZB_SS1107*****************/

if  exists(select 1 from ZB_FACT_DIM_YS where zbmx_id='ZLZB_SS1107')
begin
update ZB_FACT_DIM_YS set
dim_table='科室'
,dim_table_name='DIM_KSXX'
,dim_table_val='ksmc'
,fm_condition=' where'
,fm_fact_table_name='ZLZB_SS1107_FM'
,fm_fact_val='0'
,fz_condition=' where'
,fz_fact_table_name='ZLZB_SS1107_FZ'
,fz_fact_val='1'
,join_code='kskey'
,next_join_code='kskey'
,next_kz_key=''
,next_kz_value=''
,wdkz_key=''
,wdkz_lb=''
,wdkz_name=''
,wdkz_table=''
,zbmx_id='ZLZB_SS1107'
,zbmx_tjhs='sum'
 where zbmx_id='ZLZB_SS1107'
end
go

/*********No.18: ZLZB_SS1108******ZBMX***ZLZB_SS1108*****************/

if  exists(select 1 from ZBMX where id='ZLZB_SS1108')
begin
update ZBMX set
blbz=''
,blfs='0'
,blgz=''
,bmid='ZLZB_SS1108'
,code=''
,czry=''
,fjgz_id=''
,gxrq=''
,id='ZLZB_SS1108'
,is_hz=''
,isblzb='0'
,isxybl=''
,jlzt='0'
,jskj=''
,jyzt='0'
,ljfs=''
,mbz_having='1'
,mbz_lrfa=''
,mbz_lrfs='0'
,mbz_zzfd='0.00000'
,memo=''
,mzzybz=''
,name='重点手术的耗材占住院费用比'
,percent_type='100'
,pid='0'
,pjbz='1'
,qrzt='1'
,tjfs='2'
,tjzb='0'
,xsws='4'
,xtly=''
,yjgzdm=''
,yjgznr=''
,zbdw='%'
,zbfl_id='ZLZB03'
,zbyy=''
 where id='ZLZB_SS1108'
end
go

/*********No.18: ZLZB_SS1108******HD_ZBMX_HZ_YS***ZLZB_SS1108*****************/

if  exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_SS1108')
begin
update HD_ZBMX_HZ_YS set
dependindex=''
,hqsql_text='select ''ZLZB_SS1108'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(case when a.dxmkey=21 then cffy else 0 end) fz,sum(cffy) fm from FACT_GZ_ZDSS_FYFX  a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm'
,jlzt='1'
,memo=''
,orderno=''
,proc_name=''
,sql_text='select ''ZLZB_SS1108'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(case when a.dxmkey=21 then cffy else 0 end) fz,sum(cffy) fm from FACT_GZ_ZDSS_FYFX  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm'
,sql_text_first=''
,tqsql_text='select ''ZLZB_SS1108'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(case when a.dxmkey=21 then cffy else 0 end) fz,sum(cffy) fm from FACT_GZ_ZDSS_FYFX  a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm'
,zb_id='ZLZB_SS1108'
,zb_name='重点手术的耗材占住院费用比'
,zbzt='0'
 where zb_id='ZLZB_SS1108'
end
go

/*********No.18: ZLZB_SS1108******HD_ZBMX_HZ***ZLZB_SS1108*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_SS1108')
begin
update HD_ZBMX_HZ set
condition='where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='sum(case when a.dxmkey=21 then cffy else 0 end) fz,sum(cffy) fm'
,fact_table='FACT_GZ_ZDSS_FYFX '
,gspz=''
,hqsql_text='select ''ZLZB_SS1108'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(case when a.dxmkey=21 then cffy else 0 end) fz,sum(cffy) fm from FACT_GZ_ZDSS_FYFX  a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='-1'
,kxwdz='timekey,yykey,kskey,yskey,zdsskey'
,memo=''
,orderno='12209'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,yskey,zdsskey,sum(case when a.dxmkey=21 then cffy else 0 end) fz,sum(cffy) fm from FACT_GZ_ZDSS_FYFX  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey'
,sql_start='select ''ZLZB_SS1108'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_SS1108'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(case when a.dxmkey=21 then cffy else 0 end) fz,sum(cffy) fm from FACT_GZ_ZDSS_FYFX  a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_SS1108'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,zdsskey,sum(case when a.dxmkey=21 then cffy else 0 end) fz,sum(cffy) fm from FACT_GZ_ZDSS_FYFX  a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='-1'
,zb_id='ZLZB_SS1108'
,zb_name='重点手术的耗材占住院费用比'
,zbzt='0'
 where zb_id='ZLZB_SS1108'
end
go

/*********No.18: ZLZB_SS1108******ZB_FACT_DIM_YS***ZLZB_SS1108*****************/

if  exists(select 1 from ZB_FACT_DIM_YS where zbmx_id='ZLZB_SS1108')
begin
update ZB_FACT_DIM_YS set
dim_table='科室'
,dim_table_name='DIM_KSXX'
,dim_table_val='ksmc'
,fm_condition=' where'
,fm_fact_table_name='ZLZB_SS1108_FM'
,fm_fact_val='0'
,fz_condition=' where'
,fz_fact_table_name='ZLZB_SS1108_FZ'
,fz_fact_val='1'
,join_code='kskey'
,next_join_code='kskey'
,next_kz_key=''
,next_kz_value=''
,wdkz_key=''
,wdkz_lb=''
,wdkz_name=''
,wdkz_table=''
,zbmx_id='ZLZB_SS1108'
,zbmx_tjhs='sum'
 where zbmx_id='ZLZB_SS1108'
end
go
