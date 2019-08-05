/************No.1: SSJKMZ00109******************ZB_FACT_DIM_YS***SSJKMZ00109******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='SSJKMZ00109' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb SSJKMZ00109'
go

/************No.1: SSJKMZ00109******************ZBMX***SSJKMZ00109******************************/

if exists(select 1 from ZBMX where id='SSJKMZ00109')
begin
	print '新增指标SSJKMZ00109,但指标SSJKMZ00109已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='SSJKMZ00109') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('SSJKMZ00109','13','门急诊检查人次','0','1','0','人','0','','','0.00000','1','0','','','','','','SSJKMZ00109','','','0','1','','','','','','0','1','0','','0','0','','')
	
end
go

/************No.1: SSJKMZ00109******************Y_COLUMN_MAP_ZBFACT***SSJKMZ00109******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='SSJKMZ00109' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('SSJKMZ00109','FACT_SSJK_MZ_YWL','jcrc','')
	go

/************No.1: SSJKMZ00109******************HD_ZBMX_HZ_YS***SSJKMZ00109******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='SSJKMZ00109')
begin
	print '新增指标SSJKMZ00109,但指标SSJKMZ00109已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='SSJKMZ00109') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('SSJKMZ00109','门急诊检查人次','select ''SSJKMZ00109'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(jcrc) fz from FACT_SSJK_MZ_YWL a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm','select ''SSJKMZ00109'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(jcrc) fz from FACT_SSJK_MZ_YWL a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm','1','','','12521','','','1','select ''SSJKMZ00109'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(jcrc) fz from FACT_SSJK_MZ_YWL a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm')
	
end
go

/************No.1: SSJKMZ00109******************HD_ZBMX_HZ***SSJKMZ00109******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='SSJKMZ00109')
begin
	print '新增指标SSJKMZ00109,但指标SSJKMZ00109已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='SSJKMZ00109') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('SSJKMZ00109','门急诊检查人次','select ''SSJKMZ00109'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,yskey,sum(jcrc) fz from FACT_SSJK_MZ_YWL a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''SSJKMZ00109'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,sum(jcrc) fz from FACT_SSJK_MZ_YWL a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''SSJKMZ00109'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,sum(jcrc) fz from FACT_SSJK_MZ_YWL a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','12521','','','1','1','0','FACT_SSJK_MZ_YWL','jcrc','','timekey,yykey,kskey,yskey','','select ''SSJKMZ00109'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,sum(jcrc) fz from FACT_SSJK_MZ_YWL a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','')
	
end
go

/************No.2: SSJKMZ00110******************ZB_FACT_DIM_YS***SSJKMZ00110******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='SSJKMZ00110' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb SSJKMZ00110'
go

/************No.2: SSJKMZ00110******************ZBMX***SSJKMZ00110******************************/

if exists(select 1 from ZBMX where id='SSJKMZ00110')
begin
	print '新增指标SSJKMZ00110,但指标SSJKMZ00110已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='SSJKMZ00110') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('SSJKMZ00110','13','门急诊检验人次','0','1','0','人','0','','','0.00000','1','0','','','','','','SSJKMZ00110','','','0','1','','','','','','0','1','0','','0','0','','')
	
end
go

/************No.2: SSJKMZ00110******************Y_COLUMN_MAP_ZBFACT***SSJKMZ00110******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='SSJKMZ00110' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('SSJKMZ00110','FACT_SSJK_MZ_YWL','jyrc','')
	go

/************No.2: SSJKMZ00110******************HD_ZBMX_HZ_YS***SSJKMZ00110******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='SSJKMZ00110')
begin
	print '新增指标SSJKMZ00110,但指标SSJKMZ00110已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='SSJKMZ00110') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('SSJKMZ00110','门急诊检验人次','select ''SSJKMZ00110'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(jyrc) fz from FACT_SSJK_MZ_YWL a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm','select ''SSJKMZ00110'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(jyrc) fz from FACT_SSJK_MZ_YWL a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm','1','','','12522','','','1','select ''SSJKMZ00110'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(jyrc) fz from FACT_SSJK_MZ_YWL a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm')
	
end
go

/************No.2: SSJKMZ00110******************HD_ZBMX_HZ***SSJKMZ00110******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='SSJKMZ00110')
begin
	print '新增指标SSJKMZ00110,但指标SSJKMZ00110已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='SSJKMZ00110') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('SSJKMZ00110','门急诊检验人次','select ''SSJKMZ00110'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,yskey,sum(jyrc) fz from FACT_SSJK_MZ_YWL a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''SSJKMZ00110'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,sum(jyrc) fz from FACT_SSJK_MZ_YWL a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''SSJKMZ00110'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,sum(jyrc) fz from FACT_SSJK_MZ_YWL a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','12522','','','1','1','0','FACT_SSJK_MZ_YWL','jyrc','','timekey,yykey,kskey,yskey','','select ''SSJKMZ00110'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,sum(jyrc) fz from FACT_SSJK_MZ_YWL a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','')
	
end
go

