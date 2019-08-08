/************No.1: ZLZB_SS0086******************ZBMX***ZLZB_SS0086******************************/

if exists(select 1 from ZBMX where id='ZLZB_SS0086')
begin
	print '����ָ��ZLZB_SS0086,��ָ��ZLZB_SS0086�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_SS0086') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('ZLZB_SS0086','ZLZB03','��������������������','0','1','0','��','0','','','0.00000','1','1','','','','','','ZLZB_SS0086','','','0','1','','0','0','','0','','0','0','0','0','0','0','0','')
	
end
go

/************No.1: ZLZB_SS0086******************Y_COLUMN_MAP_ZBFACT***ZLZB_SS0086******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_SS0086' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_SS0086','FACT_GZ_HZAQ_ZDSS','rc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_SS0086','FACT_GZ_HZAQ_ZDSS','zdsskey','')
	go

/************No.1: ZLZB_SS0086******************HD_ZBMX_HZ***ZLZB_SS0086******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_SS0086')
begin
	print '����ָ��ZLZB_SS0086,��ָ��ZLZB_SS0086�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_SS0086') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_SS0086','��������������������','select "ZLZB_SS0086" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,sskey,ssjbkey,kskey,zdsskey,sum(rc) fz from FACT_GZ_HZAQ_ZDSS a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zdsskey in (18) group by timekey,yykey,sskey,ssjbkey,kskey,zdsskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "ZLZB_SS0086" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,sskey,ssjbkey,kskey,zdsskey,sum(rc) fz from FACT_GZ_HZAQ_ZDSS a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zdsskey in (18) group by timekey,yykey,sskey,ssjbkey,kskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "ZLZB_SS0086" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,sskey,ssjbkey,kskey,zdsskey,sum(rc) fz from FACT_GZ_HZAQ_ZDSS a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zdsskey in (18) group by timekey,yykey,sskey,ssjbkey,kskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1")','1','','','11012','','','0','1','0','FACT_GZ_HZAQ_ZDSS','rc','[{\"dim_key\":\"zdsskey\",\"relation\":\"0\",\"caliber\":\"18\"}]','timekey,yykey,sskey,ssjbkey,kskey,zdsskey','','select "ZLZB_SS0086" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,sskey,ssjbkey,kskey,zdsskey,sum(rc) fz from FACT_GZ_HZAQ_ZDSS a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zdsskey in (18) group by timekey,yykey,sskey,ssjbkey,kskey,zdsskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1")','','')
	
end
go

/************No.1: ZLZB_SS0086******************ZB_FACT_DIM_YS***ZLZB_SS0086******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_SS0086' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_SS0086','sum','ZLZB_SS0086','1','0','0','DIM_KSXX_BA','kskey','ksmc','����','where','where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_SS0086','sum','ZLZB_SS0086','1','0','0','BA_YY_LYFS','lyfskey','name','��Ժ��ʽ','where','where','lyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_SS0086','sum','ZLZB_SS0086','1','0','0','DIM_YSXX','mzyskey','ysmc','����ҽ��','where','where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_SS0086','sum','ZLZB_SS0086','1','0','0','DIM_TIME','timekey','month_name','ʱ��','where','where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_SS0086','sum','ZLZB_SS0086','1','0','0','DIM_YSXX','yskey','ysmc','ҽ��','where','where','yskey','','','','','','')
	go

/************No.2: ZLZB_YY0052******************ZBMX***ZLZB_YY0052******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY0052')
begin
	print '����ָ��ZLZB_YY0052,��ָ��ZLZB_YY0052�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0052') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('ZLZB_YY0052','ZLZB01','��֢ҽѧ��ҽʦ��','0','1','0','��','0','0','','0.00000','1','1','','1900-01-01 00:00:00','','','','ZLZB_YY0052','0','','0','1','','0','0','','0','','0','0','0','1','0','1','0','')
	
end
go

/************No.2: ZLZB_YY0052******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0052******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0052' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0052'
go

/************No.2: ZLZB_YY0052******************HD_ZBMX_HZ***ZLZB_YY0052******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0052')
begin
	print '����ָ��ZLZB_YY0052,��ָ��ZLZB_YY0052�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0052') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb ZLZB_YY0052'

end
go

/************No.2: ZLZB_YY0052******************ZB_FACT_DIM_YS***ZLZB_YY0052******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0052' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0052'
go

/************No.3: ZLZB_YY0001******************ZBMX***ZLZB_YY0001******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY0001')
begin
	print '����ָ��ZLZB_YY0001,��ָ��ZLZB_YY0001�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0001') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('ZLZB_YY0001','ZLZB01','ʵ�ʿ��Ŵ�λ��','0','1','0','��','0','','','0.00000','1','1','','','','','','ZLZB_YY0001','','','0','1','','0','0','','0','','0','0','0','1','0','1','0','')
	
end
go

/************No.3: ZLZB_YY0001******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0001','FACT_BA_ZY_CWSYQK','kfcw','')
	go

/************No.3: ZLZB_YY0001******************HD_ZBMX_HZ***ZLZB_YY0001******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0001')
begin
	print '����ָ��ZLZB_YY0001,��ָ��ZLZB_YY0001�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0001') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb ZLZB_YY0001'

end
go

/************No.3: ZLZB_YY0001******************ZB_FACT_DIM_YS***ZLZB_YY0001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0001' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY0001','sum','ZLZB_YY0001','1','0','0','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY0001','sum','ZLZB_YY0001','1','0','0','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY0001','sum','ZLZB_YY0001','1','0','0','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.4: ZLZB_YY0066******************ZBMX***ZLZB_YY0066******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY0066')
begin
	print '����ָ��ZLZB_YY0066,��ָ��ZLZB_YY0066�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0066') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('ZLZB_YY0066','ZLZB01','ҩѧרҵ������Ա','0','1','0','��','0','0','','0.00000','0','1','','1900-01-01 00:00:00','','','','ZLZB_YY0066','0','','0','1','','0','0','','0','','0','0','0','1','0','1','0','')
	
end
go

/************No.4: ZLZB_YY0066******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0066******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0066' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0066'
go

/************No.4: ZLZB_YY0066******************HD_ZBMX_HZ***ZLZB_YY0066******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0066')
begin
	print '����ָ��ZLZB_YY0066,��ָ��ZLZB_YY0066�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0066') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb ZLZB_YY0066'

end
go

/************No.4: ZLZB_YY0066******************ZB_FACT_DIM_YS***ZLZB_YY0066******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0066' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0066'
go

/************No.5: ZLZB_ZLGL_LCBL035******************ZBMX***ZLZB_ZLGL_LCBL035******************************/

if exists(select 1 from ZBMX where id='ZLZB_ZLGL_LCBL035')
begin
	print '����ָ��ZLZB_ZLGL_LCBL035,��ָ��ZLZB_ZLGL_LCBL035�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_ZLGL_LCBL035') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('ZLZB_ZLGL_LCBL035','ZLZB08','���п��������ʯ����Ϸ��ϱ걾��','0','1','0','��','2','','','0.00000','0','1','','','','','','ZLZB_ZLGL_LCBL035','','','0','1','','0','0','','0','','0','0','0','0','0','0','','')
	
end
go

/************No.5: ZLZB_ZLGL_LCBL035******************Y_COLUMN_MAP_ZBFACT***ZLZB_ZLGL_LCBL035******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_ZLGL_LCBL035' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_ZLGL_LCBL035'
go

/************No.5: ZLZB_ZLGL_LCBL035******************HD_ZBMX_HZ***ZLZB_ZLGL_LCBL035******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_ZLGL_LCBL035')
begin
	print '����ָ��ZLZB_ZLGL_LCBL035,��ָ��ZLZB_ZLGL_LCBL035�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_ZLGL_LCBL035') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_ZLGL_LCBL035','���п��������ʯ����Ϸ��ϱ걾��','select "ZLZB_ZLGL_LCBL035" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,yskey,sum(1) fz from FACT_GZ_ZLGL_BLZY a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and szkszdbz=1 and szzdfhbz=1 group by timekey,yykey,kskey,yskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "ZLZB_ZLGL_LCBL035" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,sum(1) fz from FACT_GZ_ZLGL_BLZY a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and szkszdbz=1 and szzdfhbz=1 group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "ZLZB_ZLGL_LCBL035" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,sum(1) fz from FACT_GZ_ZLGL_BLZY a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and szkszdbz=1 and szzdfhbz=1 group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1")','1','','','11791','','','0','1','-1','FACT_GZ_ZLGL_BLZY','sum(1) fz','where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and szkszdbz=1 and szzdfhbz=1','timekey,yykey,kskey,yskey','','select "ZLZB_ZLGL_LCBL035" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,sum(1) fz from FACT_GZ_ZLGL_BLZY a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and szkszdbz=1 and szzdfhbz=1 group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1")','','1')
	
end
go

/************No.5: ZLZB_ZLGL_LCBL035******************ZB_FACT_DIM_YS***ZLZB_ZLGL_LCBL035******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_ZLGL_LCBL035' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_ZLGL_LCBL035','sum','ZLZB_ZLGL_LCBL035','1','0','0','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	go

/************No.6: ZLZB_ZLGL_LCBL036******************ZBMX***ZLZB_ZLGL_LCBL036******************************/

if exists(select 1 from ZBMX where id='ZLZB_ZLGL_LCBL036')
begin
	print '����ָ��ZLZB_ZLGL_LCBL036,��ָ��ZLZB_ZLGL_LCBL036�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_ZLGL_LCBL036') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('ZLZB_ZLGL_LCBL036','ZLZB08','���п�����ϱ걾����','0','1','0','��','2','','','0.00000','0','1','','','','','','ZLZB_ZLGL_LCBL036','','','0','1','','0','0','','0','','0','0','0','0','0','0','','')
	
end
go

/************No.6: ZLZB_ZLGL_LCBL036******************Y_COLUMN_MAP_ZBFACT***ZLZB_ZLGL_LCBL036******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_ZLGL_LCBL036' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_ZLGL_LCBL036'
go

/************No.6: ZLZB_ZLGL_LCBL036******************HD_ZBMX_HZ***ZLZB_ZLGL_LCBL036******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_ZLGL_LCBL036')
begin
	print '����ָ��ZLZB_ZLGL_LCBL036,��ָ��ZLZB_ZLGL_LCBL036�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_ZLGL_LCBL036') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_ZLGL_LCBL036','���п�����ϱ걾����','select "ZLZB_ZLGL_LCBL036" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,yskey,sum(1) fz from FACT_GZ_ZLGL_BLZY a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and szkszdbz=1 group by timekey,yykey,kskey,yskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "ZLZB_ZLGL_LCBL036" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,sum(1) fz from FACT_GZ_ZLGL_BLZY a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and szkszdbz=1 group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "ZLZB_ZLGL_LCBL036" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,sum(1) fz from FACT_GZ_ZLGL_BLZY a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and szkszdbz=1 group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1")','1','','','11792','','','0','1','-1','FACT_GZ_ZLGL_BLZY','sum(1) fz','where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and szkszdbz=1','timekey,yykey,kskey,yskey','','select "ZLZB_ZLGL_LCBL036" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,sum(1) fz from FACT_GZ_ZLGL_BLZY a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and szkszdbz=1 group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1")','','1')
	
end
go

/************No.6: ZLZB_ZLGL_LCBL036******************ZB_FACT_DIM_YS***ZLZB_ZLGL_LCBL036******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_ZLGL_LCBL036' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_ZLGL_LCBL036','sum','ZLZB_ZLGL_LCBL036','1','0','0','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	go

/************No.7: ZLZB_ZLGL_LCBL037******************ZBMX***ZLZB_ZLGL_LCBL037******************************/

if exists(select 1 from ZBMX where id='ZLZB_ZLGL_LCBL037')
begin
	print '����ָ��ZLZB_ZLGL_LCBL037,��ָ��ZLZB_ZLGL_LCBL037�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_ZLGL_LCBL037') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('ZLZB_ZLGL_LCBL037','ZLZB08','���п��������ʯ����Ϸ�����','0','100','4','%','1','','','0.00000','0','1','','','','','','ZLZB_ZLGL_LCBL037','','','0','1','','0','0','','0','','0','0','0','0','0','0','','')
	
end
go

/************No.7: ZLZB_ZLGL_LCBL037******************Y_COLUMN_MAP_ZBFACT***ZLZB_ZLGL_LCBL037******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_ZLGL_LCBL037' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_ZLGL_LCBL037','','','ZLZB_ZLGL_LCBL035,ZLZB_ZLGL_LCBL036')
	go

/************No.7: ZLZB_ZLGL_LCBL037******************HD_ZBMX_HZ***ZLZB_ZLGL_LCBL037******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_ZLGL_LCBL037')
begin
	print '����ָ��ZLZB_ZLGL_LCBL037,��ָ��ZLZB_ZLGL_LCBL037�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_ZLGL_LCBL037') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_ZLGL_LCBL037','���п��������ʯ����Ϸ�����','','select timekey,yykey,kskey,yskey,sum(1) fz,0 fm from FACT_GZ_ZLGL_BLZY a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and szkszdbz=1 and szzdfhbz=1 group by timekey,yykey,kskey,yskey union all select timekey,yykey,kskey,yskey,0 fz,sum(1) fm from FACT_GZ_ZLGL_BLZY a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and szkszdbz=1 group by timekey,yykey,kskey,yskey','','select "ZLZB_ZLGL_LCBL037" zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id ="ZLZB_ZLGL_LCBL035" and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id ="ZLZB_ZLGL_LCBL036" and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select "ZLZB_ZLGL_LCBL037" zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id ="ZLZB_ZLGL_LCBL035" and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id ="ZLZB_ZLGL_LCBL036" and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_ZLGL_LCBL035,ZLZB_ZLGL_LCBL036','11793','','','0','-1','-1','','','','timekey,yykey,kskey,yskey','@���п��������ʯ����Ϸ��ϱ걾��(ZLZB_ZLGL_LCBL035)/@���п�����ϱ걾����(ZLZB_ZLGL_LCBL036)','select "ZLZB_ZLGL_LCBL037" zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id ="ZLZB_ZLGL_LCBL035" and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id ="ZLZB_ZLGL_LCBL036" and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.7: ZLZB_ZLGL_LCBL037******************ZB_FACT_DIM_YS***ZLZB_ZLGL_LCBL037******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_ZLGL_LCBL037' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_ZLGL_LCBL037','sum','ZLZB_ZLGL_LCBL035','1','ZLZB_ZLGL_LCBL036','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	go

/************No.8: ZLZB_ZLGL_LCBL001******************ZBMX***ZLZB_ZLGL_LCBL001******************************/

if exists(select 1 from ZBMX where id='ZLZB_ZLGL_LCBL001')
begin
	print '����ָ��ZLZB_ZLGL_LCBL001,��ָ��ZLZB_ZLGL_LCBL001�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_ZLGL_LCBL001') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('ZLZB_ZLGL_LCBL001','ZLZB08','����ҽʦ��','0','1','0','��','2','0','','0.00000','0','1','','1900-01-01 00:00:00','','','','ZLZB_ZLGL_LCBL001','0','','0','1','','0','0','','0','','0','0','0','0','0','0','0','')
	
end
go

/************No.8: ZLZB_ZLGL_LCBL001******************Y_COLUMN_MAP_ZBFACT***ZLZB_ZLGL_LCBL001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_ZLGL_LCBL001' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_ZLGL_LCBL001'
go

/************No.8: ZLZB_ZLGL_LCBL001******************HD_ZBMX_HZ***ZLZB_ZLGL_LCBL001******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_ZLGL_LCBL001')
begin
	print '����ָ��ZLZB_ZLGL_LCBL001,��ָ��ZLZB_ZLGL_LCBL001�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_ZLGL_LCBL001') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb ZLZB_ZLGL_LCBL001'

end
go

/************No.8: ZLZB_ZLGL_LCBL001******************ZB_FACT_DIM_YS***ZLZB_ZLGL_LCBL001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_ZLGL_LCBL001' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_ZLGL_LCBL001','sum','ZLZB_ZLGL_LCBL001','1','0','0','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	go

/************No.9: ZLZB_AQ0090******************ZBMX***ZLZB_AQ0090******************************/

if exists(select 1 from ZBMX where id='ZLZB_AQ0090')
begin
	print '����ָ��ZLZB_AQ0090,��ָ��ZLZB_AQ0090�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_AQ0090') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('ZLZB_AQ0090','ZLZB05','�������������л���ҷ�����','0','100','4','%','1','0','','0.00000','1','1','','1900-01-01 00:00:00','','','','ZLZB_AQ0090','0','','0','1','','0','0','','0','','0','0','0','0','0','0','0','')
	
end
go

/************No.9: ZLZB_AQ0090******************Y_COLUMN_MAP_ZBFACT***ZLZB_AQ0090******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_AQ0090' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_AQ0090','','','ZLZB_AQ0091,D002')
	go

/************No.9: ZLZB_AQ0090******************HD_ZBMX_HZ***ZLZB_AQ0090******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0090')
begin
	print '����ָ��ZLZB_AQ0090,��ָ��ZLZB_AQ0090�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0090') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_AQ0090','�������������л���ҷ�����','','select timekey,yykey,kskey,sum(rc) fz,0 fm from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (14) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ssrc) fm from FACT_YY_SS_ZYSSYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey','','select ''ZLZB_AQ0090'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_AQ0091'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_AQ0090'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_AQ0091'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_AQ0091,D002','11416','','','0','-1','-1','','','','timekey,yykey,kskey','@�������������л���ҷ�������(ZLZB_AQ0091)/@סԺ��������(D002)','select ''ZLZB_AQ0090'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_AQ0091'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','0')
	
end
go

/************No.9: ZLZB_AQ0090******************ZB_FACT_DIM_YS***ZLZB_AQ0090******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_AQ0090' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0090','sum','ZLZB_AQ0091','1','D002','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0090','sum','ZLZB_AQ0091','1','D002','1','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0090','sum','ZLZB_AQ0091','1','D002','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.10: ZLZB_AQ0091******************ZBMX***ZLZB_AQ0091******************************/

if exists(select 1 from ZBMX where id='ZLZB_AQ0091')
begin
	print '����ָ��ZLZB_AQ0091,��ָ��ZLZB_AQ0091�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_AQ0091') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('ZLZB_AQ0091','ZLZB05','�������������л���ҷ�������','0','1','0','��','0','0','','0.00000','1','1','','1900-01-01 00:00:00','','','','ZLZB_AQ0091','0','','0','1','','0','0','','0','','0','0','0','0','0','0','0','')
	
end
go

/************No.10: ZLZB_AQ0091******************Y_COLUMN_MAP_ZBFACT***ZLZB_AQ0091******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_AQ0091' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_AQ0091','FACT_GZ_HZAQ_BFZ','rc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_AQ0091','FACT_GZ_HZAQ_BFZ','bfzkey','')
	go

/************No.10: ZLZB_AQ0091******************HD_ZBMX_HZ***ZLZB_AQ0091******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0091')
begin
	print '����ָ��ZLZB_AQ0091,��ָ��ZLZB_AQ0091�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0091') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_AQ0091','�������������л���ҷ�������','select ''ZLZB_AQ0091'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (14) group by timekey,yykey,kskey,bfzkey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_AQ0091'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (14) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_AQ0091'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (14) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','10488','','','0','1','0','FACT_GZ_HZAQ_BFZ','rc','[{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"14\"}]','timekey,yykey,kskey,bfzkey','','select ''ZLZB_AQ0091'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (14) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','0')
	
end
go

/************No.10: ZLZB_AQ0091******************ZB_FACT_DIM_YS***ZLZB_AQ0091******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_AQ0091' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0091','sum','ZLZB_AQ0091','1','0','0','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0091','sum','ZLZB_AQ0091','1','0','0','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0091','sum','ZLZB_AQ0091','1','0','0','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0091','sum','ZLZB_AQ0091','1','0','0','DIM_ZLZB_BFZLX','bfzkey','bfzmc','����ָ��-����֢����',' where',' where','bfzkey','','','','','','')
	go

/************No.11: ZLZB_BFZ001******************ZBMX***ZLZB_BFZ001******************************/

if exists(select 1 from ZBMX where id='ZLZB_BFZ001')
begin
	print '����ָ��ZLZB_BFZ001,��ָ��ZLZB_BFZ001�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_BFZ001') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('ZLZB_BFZ001','ZLZB05','�����������˨������','0','1','0','��','0','0','','0.00000','1','1','','1900-01-01 00:00:00','','','','ZLZB_BFZ001','0','','0','1','','0','0','','0','','0','0','0','0','0','0','0','')
	
end
go

/************No.11: ZLZB_BFZ001******************Y_COLUMN_MAP_ZBFACT***ZLZB_BFZ001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_BFZ001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_BFZ001','FACT_GZ_HZAQ_BFZ','rc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_BFZ001','FACT_GZ_HZAQ_BFZ','zqssbz','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_BFZ001','FACT_GZ_HZAQ_BFZ','bfzkey','')
	go

/************No.11: ZLZB_BFZ001******************HD_ZBMX_HZ***ZLZB_BFZ001******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ001')
begin
	print '����ָ��ZLZB_BFZ001,��ָ��ZLZB_BFZ001�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ001') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_BFZ001','�����������˨������','select ''ZLZB_BFZ001'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (10) group by timekey,yykey,kskey,bfzkey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_BFZ001'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (10) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_BFZ001'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (10) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','8407','','','0','1','0','FACT_GZ_HZAQ_BFZ','rc','[{\"dim_key\":\"zqssbz\",\"relation\":\"0\",\"caliber\":\"1\"},{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"10\"}]','timekey,yykey,kskey,bfzkey','','select ''ZLZB_BFZ001'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (10) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','0')
	
end
go

/************No.11: ZLZB_BFZ001******************ZB_FACT_DIM_YS***ZLZB_BFZ001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_BFZ001' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ001','sum','ZLZB_BFZ001','1','0','0','DIM_ZLZB_BFZLX','bfzkey','bfzmc','����ָ��-����֢����',' where',' where','bfzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ001','sum','ZLZB_BFZ001','1','0','0','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ001','sum','ZLZB_BFZ001','1','0','0','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ001','sum','ZLZB_BFZ001','1','0','0','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	go

/************No.12: ZLZB_YG1001******************ZBMX***ZLZB_YG1001******************************/

if exists(select 1 from ZBMX where id='ZLZB_YG1001')
begin
	print '����ָ��ZLZB_YG1001,��ָ��ZLZB_YG1001�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YG1001') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('ZLZB_YG1001','ZLZB07','�ùܻ��߳�Ժ�˴�','0','1','0','��','0','0','','0.00000','1','0','','1900-01-01 00:00:00','','','','ZLZB_YG1001','0','','0','1','','0','0','','0','0','1','0','0','0','0','0','0','')
	
end
go

/************No.12: ZLZB_YG1001******************Y_COLUMN_MAP_ZBFACT***ZLZB_YG1001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YG1001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YG1001','FACT_YY_ZY_CYYWLFX','cyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YG1001','FACT_YY_ZY_CYYWLFX','zgbz','')
	go

/************No.12: ZLZB_YG1001******************HD_ZBMX_HZ***ZLZB_YG1001******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YG1001')
begin
	print '����ָ��ZLZB_YG1001,��ָ��ZLZB_YG1001�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YG1001') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YG1001','�ùܻ��߳�Ժ�˴�','select "ZLZB_YG1001" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,yskey,sum(cyrc) fz from FACT_YY_ZY_CYYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zgbz in (1) group by timekey,yykey,kskey,yskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "ZLZB_YG1001" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,sum(cyrc) fz from FACT_YY_ZY_CYYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zgbz in (1) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "ZLZB_YG1001" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,sum(cyrc) fz from FACT_YY_ZY_CYYWLFX a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zgbz in (1) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1")','1','','','12830','','','0','1','0','FACT_YY_ZY_CYYWLFX','cyrc','[{\"dim_key\":\"zgbz\",\"relation\":\"0\",\"caliber\":\"1\"}]','timekey,yykey,kskey,yskey','','select "ZLZB_YG1001" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,sum(cyrc) fz from FACT_YY_ZY_CYYWLFX a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zgbz in (1) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1")','','0')
	
end
go

/************No.12: ZLZB_YG1001******************ZB_FACT_DIM_YS***ZLZB_YG1001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YG1001' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YG1001'
go

/************No.13: ZLZB_YG100101******************ZBMX***ZLZB_YG100101******************************/

if exists(select 1 from ZBMX where id='ZLZB_YG100101')
begin
	print '����ָ��ZLZB_YG100101,��ָ��ZLZB_YG100101�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YG100101') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('ZLZB_YG100101','ZLZB07','��Ժ����ҽԺ�ùܸ�Ⱦ��������','0','1','0','��','0','0','','0.00000','1','0','','1900-01-01 00:00:00','','','','ZLZB_YG100101','0','','0','1','','0','0','','0','0','1','0','0','0','0','0','0','')
	
end
go

/************No.13: ZLZB_YG100101******************Y_COLUMN_MAP_ZBFACT***ZLZB_YG100101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YG100101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YG100101','FACT_YY_ZY_CYYWLFX','cyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YG100101','FACT_YY_ZY_CYYWLFX','zgbz','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YG100101','FACT_YY_ZY_CYYWLFX','zggrbz','')
	go

/************No.13: ZLZB_YG100101******************HD_ZBMX_HZ***ZLZB_YG100101******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YG100101')
begin
	print '����ָ��ZLZB_YG100101,��ָ��ZLZB_YG100101�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YG100101') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YG100101','��Ժ����ҽԺ�ùܸ�Ⱦ��������','select "ZLZB_YG100101" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,yskey,sum(cyrc) fz from FACT_YY_ZY_CYYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zgbz in (1) and zggrbz in (1) group by timekey,yykey,kskey,yskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "ZLZB_YG100101" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,sum(cyrc) fz from FACT_YY_ZY_CYYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zgbz in (1) and zggrbz in (1) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "ZLZB_YG100101" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,sum(cyrc) fz from FACT_YY_ZY_CYYWLFX a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zgbz in (1) and zggrbz in (1) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1")','1','','','12831','','','0','1','0','FACT_YY_ZY_CYYWLFX','cyrc','[{\"dim_key\":\"zgbz\",\"relation\":\"0\",\"caliber\":\"1\"},{\"dim_key\":\"zggrbz\",\"relation\":\"0\",\"caliber\":\"1\"}]','timekey,yykey,kskey,yskey','','select "ZLZB_YG100101" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,sum(cyrc) fz from FACT_YY_ZY_CYYWLFX a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zgbz in (1) and zggrbz in (1) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1")','','0')
	
end
go

/************No.13: ZLZB_YG100101******************ZB_FACT_DIM_YS***ZLZB_YG100101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YG100101' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YG100101'
go

/************No.14: ZLZB_ICU0002******************ZBMX***ZLZB_ICU0002******************************/

if exists(select 1 from ZBMX where id='ZLZB_ICU0002')
begin
	print '����ָ��ZLZB_ICU0002,��ָ��ZLZB_ICU0002�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_ICU0002') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('ZLZB_ICU0002','ZLZB06','ת��ICU���ط�ICU�����˴�','0','1','0','��','2','','','0.00000','1','0','','','','','','ZLZB_ICU0002','','','0','1','','0','0','','0','0','1','0','0','0','0','0','0','')
	
end
go

/************No.14: ZLZB_ICU0002******************Y_COLUMN_MAP_ZBFACT***ZLZB_ICU0002******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_ICU0002' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_ICU0002'
go

/************No.14: ZLZB_ICU0002******************HD_ZBMX_HZ***ZLZB_ICU0002******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_ICU0002')
begin
	print '����ָ��ZLZB_ICU0002,��ָ��ZLZB_ICU0002�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_ICU0002') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_ICU0002','ת��ICU���ط�ICU�����˴�','select "ZLZB_ICU0002" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,count(1) fz from  FACT_GZ_ZZYX_ICU a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and cfkey>0 group by timekey,yykey,kskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "ZLZB_ICU0002" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,count(1) fz from  FACT_GZ_ZZYX_ICU a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and cfkey>0 group by timekey,yykey,kskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "ZLZB_ICU0002" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,count(1) fz from  FACT_GZ_ZZYX_ICU a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and cfkey>0 group by timekey,yykey,kskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1")','1','','','12764','','','0','1','-1',' FACT_GZ_ZZYX_ICU','count(1) fz','where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and cfkey>0','timekey,yykey,kskey','','select "ZLZB_ICU0002" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,count(1) fz from  FACT_GZ_ZZYX_ICU a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and cfkey>0 group by timekey,yykey,kskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1")','','1')
	
end
go

/************No.14: ZLZB_ICU0002******************ZB_FACT_DIM_YS***ZLZB_ICU0002******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_ICU0002' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_ICU0002'
go

/************No.15: ZLZB_ICU000******************ZBMX***ZLZB_ICU000******************************/

if exists(select 1 from ZBMX where id='ZLZB_ICU000')
begin
	print '����ָ��ZLZB_ICU000,��ָ��ZLZB_ICU000�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_ICU000') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('ZLZB_ICU000','ZLZB06','��֢ҽѧ��ת����������','0','1','0','��','0','','','0.00000','1','0','','','ICUϵͳ�з������Ļ���','','','ZLZB_ICU000','','','0','1','','','','','','0','1','0','','','','','','')
	
end
go

/************No.15: ZLZB_ICU000******************Y_COLUMN_MAP_ZBFACT***ZLZB_ICU000******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_ICU000' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_ICU000','FACT_GZ_ZZYX_ICU','syxh','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_ICU000','FACT_GZ_ZZYX_ICU','zcsj','')
	go

/************No.15: ZLZB_ICU000******************HD_ZBMX_HZ***ZLZB_ICU000******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_ICU000')
begin
	print '����ָ��ZLZB_ICU000,��ָ��ZLZB_ICU000�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_ICU000') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_ICU000','��֢ҽѧ��ת����������','select "ZLZB_ICU000" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,count(distinct syxh) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,cfkey,syxh from FACT_GZ_ZZYX_ICU a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zcsj > ''1900-01-01''',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "ZLZB_ICU000" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,count(distinct syxh) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,cfkey,syxh from FACT_GZ_ZZYX_ICU a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zcsj > ''1900-01-01'') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "ZLZB_ICU000" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1") month,count(distinct syxh) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,cfkey,syxh from FACT_GZ_ZZYX_ICU a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zcsj > ''1900-01-01'') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1")','1','','','11234','','','0','0','0','FACT_GZ_ZZYX_ICU','syxh','[{\"dim_key\":\"zcsj\",\"relation\":\"2\",\"caliber\":\"1900-01-01\"}]','timekey,yykey,kskey,cfkey','','select "ZLZB_ICU000" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1") month,count(distinct syxh) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,cfkey,syxh from FACT_GZ_ZZYX_ICU a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zcsj > ''1900-01-01'') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1")','','')
	
end
go

/************No.15: ZLZB_ICU000******************ZB_FACT_DIM_YS***ZLZB_ICU000******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_ICU000' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_ICU000','sum','ZLZB_ICU000','1','0','0','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_ICU000','sum','ZLZB_ICU000','1','0','0','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_ICU000','sum','ZLZB_ICU000','1','0','0','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	go

/************No.16: ZBZL_YXZB_DRGS0020201******************ZBMX***ZBZL_YXZB_DRGS0020201******************************/

if exists(select 1 from ZBMX where id='ZBZL_YXZB_DRGS0020201')
begin
	print '����ָ��ZBZL_YXZB_DRGS0020201,��ָ��ZBZL_YXZB_DRGS0020201�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZBZL_YXZB_DRGS0020201') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('ZBZL_YXZB_DRGS0020201','ZLZB09','�еͷ�������������','0','1','0','��','0','0','','0.00000','1','0','','1900-01-01 00:00:00','','','','ZBZL_YXZB_DRGS0020201','0','','0','1','','0','0','','0','ZBZL_YXZB_DRGS00202','1','0','0','0','0','0','0','')
	
end
go

/************No.16: ZBZL_YXZB_DRGS0020201******************Y_COLUMN_MAP_ZBFACT***ZBZL_YXZB_DRGS0020201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZBZL_YXZB_DRGS0020201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZBZL_YXZB_DRGS0020201','FACT_GZ_YXZB_DRGS','swls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZBZL_YXZB_DRGS0020201','FACT_GZ_YXZB_DRGS','fxpgdjkey','')
	go

/************No.16: ZBZL_YXZB_DRGS0020201******************HD_ZBMX_HZ***ZBZL_YXZB_DRGS0020201******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZBZL_YXZB_DRGS0020201')
begin
	print '����ָ��ZBZL_YXZB_DRGS0020201,��ָ��ZBZL_YXZB_DRGS0020201�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZBZL_YXZB_DRGS0020201') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZBZL_YXZB_DRGS0020201','�еͷ�������������','select "ZBZL_YXZB_DRGS0020201" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,yskey,drgskey,sum(swls) fz from FACT_GZ_YXZB_DRGS a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and fxpgdjkey in (2) group by timekey,yykey,kskey,yskey,drgskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "ZBZL_YXZB_DRGS0020201" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,drgskey,sum(swls) fz from FACT_GZ_YXZB_DRGS a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and fxpgdjkey in (2) group by timekey,yykey,kskey,yskey,drgskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "ZBZL_YXZB_DRGS0020201" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,drgskey,sum(swls) fz from FACT_GZ_YXZB_DRGS a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and fxpgdjkey in (2) group by timekey,yykey,kskey,yskey,drgskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1")','1','','','13166','','','0','1','0','FACT_GZ_YXZB_DRGS','swls','[{\"dim_key\":\"fxpgdjkey\",\"relation\":\"0\",\"caliber\":\"2\"}]','timekey,yykey,kskey,yskey,drgskey','','select "ZBZL_YXZB_DRGS0020201" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,drgskey,sum(swls) fz from FACT_GZ_YXZB_DRGS a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and fxpgdjkey in (2) group by timekey,yykey,kskey,yskey,drgskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1")','','0')
	
end
go

/************No.16: ZBZL_YXZB_DRGS0020201******************ZB_FACT_DIM_YS***ZBZL_YXZB_DRGS0020201******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZBZL_YXZB_DRGS0020201' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZBZL_YXZB_DRGS0020201'
go

/************No.17: ZBZL_YXZB_DRGS00101******************ZBMX***ZBZL_YXZB_DRGS00101******************************/

if exists(select 1 from ZBMX where id='ZBZL_YXZB_DRGS00101')
begin
	print '����ָ��ZBZL_YXZB_DRGS00101,��ָ��ZBZL_YXZB_DRGS00101�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZBZL_YXZB_DRGS00101') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('ZBZL_YXZB_DRGS00101','ZLZB09','�ͷ���DRG����','0','1','0','��','2','0','','0.00000','1','0','','1900-01-01 00:00:00','','','','ZBZL_YXZB_DRGS00101','0','','0','1','','0','0','','0','0','0','0','0','0','0','0','0','')
	
end
go

/************No.17: ZBZL_YXZB_DRGS00101******************Y_COLUMN_MAP_ZBFACT***ZBZL_YXZB_DRGS00101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZBZL_YXZB_DRGS00101' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZBZL_YXZB_DRGS00101'
go

/************No.17: ZBZL_YXZB_DRGS00101******************HD_ZBMX_HZ***ZBZL_YXZB_DRGS00101******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZBZL_YXZB_DRGS00101')
begin
	print '����ָ��ZBZL_YXZB_DRGS00101,��ָ��ZBZL_YXZB_DRGS00101�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZBZL_YXZB_DRGS00101') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZBZL_YXZB_DRGS00101','�ͷ���DRG����','select "ZBZL_YXZB_DRGS00101" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,count(distinct drgskey) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,yskey,fxpgdjkey,drgskey from FACT_GZ_YXZB_DRGS a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))and fxpgdjkey in ("1")',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "ZBZL_YXZB_DRGS00101" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,count(distinct drgskey) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,fxpgdjkey,drgskey from FACT_GZ_YXZB_DRGS a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))and fxpgdjkey in ("1")) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "ZBZL_YXZB_DRGS00101" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1") month,count(distinct drgskey) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,fxpgdjkey,drgskey from FACT_GZ_YXZB_DRGS a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey))and fxpgdjkey in ("1")) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1")','1','-1','','11878','-1','-1','0','-1','-1','FACT_GZ_YXZB_DRGS','drgskey','where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))and fxpgdjkey in (''1'')','timekey,yykey,kskey,yskey,fxpgdjkey','-1','select "ZBZL_YXZB_DRGS00101" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1") month,count(distinct drgskey) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,fxpgdjkey,drgskey from FACT_GZ_YXZB_DRGS a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey))and fxpgdjkey in ("1")) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1")','-1','2')
	
end
go

/************No.17: ZBZL_YXZB_DRGS00101******************ZB_FACT_DIM_YS***ZBZL_YXZB_DRGS00101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZBZL_YXZB_DRGS00101' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS00101','sum','ZBZL_YXZB_DRGS00101','1','0','0','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS00101','sum','ZBZL_YXZB_DRGS00101','1','0','0','DIM_DRGS_FXPGDJ','fxpgdjkey','fxpf','�����ط���ķ��������ȼ�',' where',' where','fxpgdjkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS00101','sum','ZBZL_YXZB_DRGS00101','1','0','0','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS00101','sum','ZBZL_YXZB_DRGS00101','1','0','0','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS00101','sum','ZBZL_YXZB_DRGS00101','1','0','0','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.18: JXHK_DBZ001******************ZBMX***JXHK_DBZ001******************************/

if exists(select 1 from ZBMX where id='JXHK_DBZ001')
begin
	print '����ָ��JXHK_DBZ001,��ָ��JXHK_DBZ001�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='JXHK_DBZ001') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('JXHK_DBZ001','JXKH01','����������','0','1','0','��','0','','','0.00000','1','0','','','','','','JXHK_DBZ001','','','0','1','','0','0','','0','0','1','0','0','0','0','0','0','')
	
end
go

/************No.18: JXHK_DBZ001******************Y_COLUMN_MAP_ZBFACT***JXHK_DBZ001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXHK_DBZ001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXHK_DBZ001','FACT_ZLZB_JBBZ_DBZ','ls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXHK_DBZ001','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.18: JXHK_DBZ001******************HD_ZBMX_HZ***JXHK_DBZ001******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='JXHK_DBZ001')
begin
	print '����ָ��JXHK_DBZ001,��ָ��JXHK_DBZ001�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='JXHK_DBZ001') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('JXHK_DBZ001','����������','select "JXHK_DBZ001" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,jxkhdbzkey,sum(ls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and jxkhsybz in (1) group by timekey,yykey,kskey,jxkhdbzkey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX_BA c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "JXHK_DBZ001" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,jxkhdbzkey,sum(ls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and jxkhsybz in (1) group by timekey,yykey,kskey,jxkhdbzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX_BA c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "JXHK_DBZ001" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,jxkhdbzkey,sum(ls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and jxkhsybz in (1) group by timekey,yykey,kskey,jxkhdbzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX_BA c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1")','1','','','12912','','','0','1','1','FACT_ZLZB_JBBZ_DBZ','ls','[{\"dim_key\":\"jxkhsybz\",\"relation\":\"0\",\"caliber\":\"1\"}]','timekey,yykey,kskey,jxkhdbzkey','','select "JXHK_DBZ001" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,jxkhdbzkey,sum(ls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and jxkhsybz in (1) group by timekey,yykey,kskey,jxkhdbzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX_BA c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1")','','')
	
end
go

/************No.18: JXHK_DBZ001******************ZB_FACT_DIM_YS***JXHK_DBZ001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXHK_DBZ001' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXHK_DBZ001'
go

/************No.19: JXHK_DBZ002******************ZBMX***JXHK_DBZ002******************************/

if exists(select 1 from ZBMX where id='JXHK_DBZ002')
begin
	print '����ָ��JXHK_DBZ002,��ָ��JXHK_DBZ002�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='JXHK_DBZ002') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('JXHK_DBZ002','JXKH01','��������������','0','1','0','��','0','','','0.00000','1','0','','','','','','JXHK_DBZ002','','','0','1','','0','0','','0','0','1','0','0','0','0','0','0','')
	
end
go

/************No.19: JXHK_DBZ002******************Y_COLUMN_MAP_ZBFACT***JXHK_DBZ002******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXHK_DBZ002' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXHK_DBZ002','FACT_ZLZB_JBBZ_DBZ','swls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXHK_DBZ002','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.19: JXHK_DBZ002******************HD_ZBMX_HZ***JXHK_DBZ002******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='JXHK_DBZ002')
begin
	print '����ָ��JXHK_DBZ002,��ָ��JXHK_DBZ002�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='JXHK_DBZ002') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('JXHK_DBZ002','��������������','select "JXHK_DBZ002" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,jxkhdbzkey,sum(swls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and jxkhsybz in (1) group by timekey,yykey,kskey,jxkhdbzkey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX_BA c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "JXHK_DBZ002" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,jxkhdbzkey,sum(swls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and jxkhsybz in (1) group by timekey,yykey,kskey,jxkhdbzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX_BA c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "JXHK_DBZ002" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,jxkhdbzkey,sum(swls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and jxkhsybz in (1) group by timekey,yykey,kskey,jxkhdbzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX_BA c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1")','1','','','12914','','','0','1','1','FACT_ZLZB_JBBZ_DBZ','swls','[{\"dim_key\":\"jxkhsybz\",\"relation\":\"0\",\"caliber\":\"1\"}]','timekey,yykey,kskey,jxkhdbzkey','','select "JXHK_DBZ002" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,jxkhdbzkey,sum(swls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and jxkhsybz in (1) group by timekey,yykey,kskey,jxkhdbzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX_BA c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1")','','')
	
end
go

/************No.19: JXHK_DBZ002******************ZB_FACT_DIM_YS***JXHK_DBZ002******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXHK_DBZ002' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXHK_DBZ002'
go

/************No.20: JXHK_DBZ003******************ZBMX***JXHK_DBZ003******************************/

if exists(select 1 from ZBMX where id='JXHK_DBZ003')
begin
	print '����ָ��JXHK_DBZ003,��ָ��JXHK_DBZ003�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='JXHK_DBZ003') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('JXHK_DBZ003','JXKH01','��������סԺ����','0','1','4','��','0','','','0.00000','1','0','','','','','','JXHK_DBZ003','','','0','1','','0','0','','0','0','1','0','0','0','0','0','0','')
	
end
go

/************No.20: JXHK_DBZ003******************Y_COLUMN_MAP_ZBFACT***JXHK_DBZ003******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXHK_DBZ003' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXHK_DBZ003','FACT_ZLZB_JBBZ_DBZ','zzyts','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXHK_DBZ003','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.20: JXHK_DBZ003******************HD_ZBMX_HZ***JXHK_DBZ003******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='JXHK_DBZ003')
begin
	print '����ָ��JXHK_DBZ003,��ָ��JXHK_DBZ003�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='JXHK_DBZ003') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('JXHK_DBZ003','��������סԺ����','select "JXHK_DBZ003" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,jxkhdbzkey,sum(zzyts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and jxkhsybz in (1) group by timekey,yykey,kskey,jxkhdbzkey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX_BA c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "JXHK_DBZ003" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,jxkhdbzkey,sum(zzyts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and jxkhsybz in (1) group by timekey,yykey,kskey,jxkhdbzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX_BA c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "JXHK_DBZ003" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,jxkhdbzkey,sum(zzyts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and jxkhsybz in (1) group by timekey,yykey,kskey,jxkhdbzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX_BA c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1")','1','','','12915','','','0','1','1','FACT_ZLZB_JBBZ_DBZ','zzyts','[{\"dim_key\":\"jxkhsybz\",\"relation\":\"0\",\"caliber\":\"1\"}]','timekey,yykey,kskey,jxkhdbzkey','','select "JXHK_DBZ003" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,jxkhdbzkey,sum(zzyts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and jxkhsybz in (1) group by timekey,yykey,kskey,jxkhdbzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX_BA c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1")','','')
	
end
go

/************No.20: JXHK_DBZ003******************ZB_FACT_DIM_YS***JXHK_DBZ003******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXHK_DBZ003' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXHK_DBZ003'
go

/************No.21: JXKH_DBZ100******************ZBMX***JXKH_DBZ100******************************/

if exists(select 1 from ZBMX where id='JXKH_DBZ100')
begin
	print '����ָ��JXKH_DBZ100,��ָ��JXKH_DBZ100�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='JXKH_DBZ100') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('JXKH_DBZ100','JXKH01','�����ļ�������������','0','1','0','��','0','0','','0.00000','1','0','','1900-01-01 00:00:00','','','','JXKH_DBZ100','0','','0','1','','0','0','','0','0','1','0','0','0','0','0','0','')
	
end
go

/************No.21: JXKH_DBZ100******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ100******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ100' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ100','FACT_ZLZB_JBBZ_DBZ','ls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ100','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ100','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.21: JXKH_DBZ100******************HD_ZBMX_HZ***JXKH_DBZ100******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='JXKH_DBZ100')
begin
	print '����ָ��JXKH_DBZ100,��ָ��JXKH_DBZ100�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='JXKH_DBZ100') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('JXKH_DBZ100','�����ļ�������������','select "JXKH_DBZ100" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,sum(ls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and jxkhdbzkey in (1) and jxkhsybz in (1) group by timekey,yykey,kskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX_BA c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "JXKH_DBZ100" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,sum(ls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and jxkhdbzkey in (1) and jxkhsybz in (1) group by timekey,yykey,kskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX_BA c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "JXKH_DBZ100" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,sum(ls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and jxkhdbzkey in (1) and jxkhsybz in (1) group by timekey,yykey,kskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX_BA c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1")','1','','','12913','','','0','1','1','FACT_ZLZB_JBBZ_DBZ','ls','[{\"dim_key\":\"jxkhdbzkey\",\"relation\":\"0\",\"caliber\":\"1\"},{\"dim_key\":\"jxkhsybz\",\"relation\":\"0\",\"caliber\":\"1\"}]','timekey,yykey,kskey','','select "JXKH_DBZ100" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,sum(ls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and jxkhdbzkey in (1) and jxkhsybz in (1) group by timekey,yykey,kskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX_BA c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1")','','')
	
end
go

/************No.21: JXKH_DBZ100******************ZB_FACT_DIM_YS***JXKH_DBZ100******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ100' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ100'
go

/************No.22: A115******************ZBMX***A115******************************/

if exists(select 1 from ZBMX where id='A115')
begin
	print '����ָ��A115,��ָ��A115�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='A115') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('A115','2','ÿ��ִҵҽʦ�վ�סԺ��������','0','1','0','��','1','','','0.00000','1','0','','','���㷽����ȫ��ʵ��ռ���ܴ�����/ҽԺƽ��ִҵ������ҽʦ����/365.ҽԺƽ��ִҵ������ҽʦ����=����������� ��һ���������/2ָ����Դ��ҽԺ�','','','A115','','','0','2','','0','0','','0','0','1','0','0','1','1','3','0','')
	
end
go

/************No.22: A115******************Y_COLUMN_MAP_ZBFACT***A115******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A115' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A115','','','A111,ZLZB_YY0005')
	go

/************No.22: A115******************HD_ZBMX_HZ***A115******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A115')
begin
	print '����ָ��A115,��ָ��A115�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='A115') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('A115','ÿ��ִҵҽʦ�վ�סԺ��������','','','','select "A115" zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id ="A111" and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id ="ZLZB_YY0005" and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select "A115" zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id ="A111" and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id ="ZLZB_YY0005" and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','A111,ZLZB_YY0005','12407','','','0','-1','-1','','','','','@��Ժ����ʵ��ռ���ܴ���(A111)/@����������Ա����ҽʦ��(ZLZB_YY0005)','select "A115" zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id ="A111" and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id ="ZLZB_YY0005" and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.22: A115******************ZB_FACT_DIM_YS***A115******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A115' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A115','sum','A111','1','ZLZB_YY0005','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A115','sum','A111','1','ZLZB_YY0005','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.23: A32001******************ZBMX***A32001******************************/

if exists(select 1 from ZBMX where id='A32001')
begin
	print '����ָ��A32001,��ָ��A32001�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='A32001') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('A32001','1','�����˴������Ժ�˴�����','0','100','4','%','1','0','','0.00000','1','0','','1900-01-01 00:00:00','','','','A32001','0','','0','1','','0','0','','0','A320','1','0','0','0','0','0','0','')
	
end
go

/************No.23: A32001******************Y_COLUMN_MAP_ZBFACT***A32001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A32001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A32001','','','A00101,A102')
	go

/************No.23: A32001******************HD_ZBMX_HZ***A32001******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A32001')
begin
	print '����ָ��A32001,��ָ��A32001�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='A32001') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('A32001','�����˴������Ժ�˴�����','-1','select timekey,yykey,kskey,yskey,ybflkey,sexkey,yblxkey,sum(ghrc) fz,0 fm from FACT_YY_MZ_JZRC a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and mjzkey in (1) group by timekey,yykey,kskey,yskey,ybflkey,sexkey,yblxkey union all select timekey,yykey,kskey,yskey,ybflkey,sexkey,yblxkey,0 fz,sum(cyrc) fm from FACT_YY_ZY_CYYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,ybflkey,sexkey,yblxkey','-1','select "A32001" zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id ="A00101" and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id ="A102" and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select "A32001" zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id ="A00101" and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id ="A102" and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','-1','A00101,A102','12398','-1','-1','0','-1','-1','-1','-1','-1','timekey,yykey,kskey,yskey,ybflkey,sexkey,yblxkey','@�����˴�(A00101)/@��Ժ�˴�(A102)','select "A32001" zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id ="A00101" and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id ="A102" and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','-1','-1')
	
end
go

/************No.23: A32001******************ZB_FACT_DIM_YS***A32001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A32001' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_YBFLXX','ybflkey','ybsm','ҽ������',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_SEX','sexkey','sex','�Ա�',' where',' where','sexkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_YB_YBLX','yblxkey','yblxmc','ҽ������',' where',' where','yblxkey','','','','','','')
	go

/************No.24: E3110101******************ZBMX***E3110101******************************/

if exists(select 1 from ZBMX where id='E3110101')
begin
	print '����ָ��E3110101,��ָ��E3110101�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='E3110101') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('E3110101','6','���ﾲ����Һҩ���˴�','0','1','0','��','0','','','0.00000','1','0','','','','','','E3110101','','','0','1','','','','','','0','1','0','','0','0','0','','')
	
end
go

/************No.24: E3110101******************Y_COLUMN_MAP_ZBFACT***E3110101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E3110101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E3110101','FACT_YY_MZ_JZRC','jmsyywsyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E3110101','FACT_YY_MZ_JZRC','mjzkey','')
	go

/************No.24: E3110101******************HD_ZBMX_HZ***E3110101******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='E3110101')
begin
	print '����ָ��E3110101,��ָ��E3110101�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='E3110101') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('E3110101','���ﾲ����Һҩ���˴�','select "E3110101" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,sum(jmsyywsyrc) fz from FACT_YY_MZ_JZRC a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and mjzkey in (1) group by timekey,yykey,kskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "E3110101" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,sum(jmsyywsyrc) fz from FACT_YY_MZ_JZRC a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and mjzkey in (1) group by timekey,yykey,kskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+"1")','select "E3110101" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,sum(jmsyywsyrc) fz from FACT_YY_MZ_JZRC a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and mjzkey in (1) group by timekey,yykey,kskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+"1")','1','','','13207','','','0','1','0','FACT_YY_MZ_JZRC','jmsyywsyrc','[{\"dim_key\":\"mjzkey\",\"relation\":\"0\",\"caliber\":\"1\"}]','timekey,yykey,kskey','','select "E3110101" zbmx_id,a.yykey,isnull(b.yydm,"01") yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1") month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,sum(jmsyywsyrc) fz from FACT_YY_MZ_JZRC a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and mjzkey in (1) group by timekey,yykey,kskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+"1")','','')
	
end
go

/************No.24: E3110101******************ZB_FACT_DIM_YS***E3110101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E3110101' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb E3110101'
go

/************No.25: E005******************ZBMX***E005******************************/

if exists(select 1 from ZBMX where id='E005')
begin
	print '����ָ��E005,��ָ��E005�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='E005') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('E005','6','ҩƷ����','0','1','0','��','1','','','0.05000','1','1','','','','','','E005','','','0','1','','0','1','{ʵ��ֵ}/{Ŀ��ֵ}<0.95','0','0','1','0','0','0','0','0','0','')
	
end
go

/************No.25: E005******************Y_COLUMN_MAP_ZBFACT***E005******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E005' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E005','','','E00501,E00502')
	go

/************No.25: E005******************HD_ZBMX_HZ***E005******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='E005')
begin
	print '����ָ��E005,��ָ��E005�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='E005') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('E005','ҩƷ����','','select timekey,yykey,kskey,sum(ypsyl) fz from FACT_YP_MZ_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey union all select timekey,yykey,kskey,sum(-ypsyl) fz from FACT_YP_ZY_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey','','select "E005" zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,0 fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id ="E00501" and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id ="E00502" and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select "E005" zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,0 fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id ="E00501" and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id ="E00502" and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','E00501,E00502','','','','0','-1','-1','','','','timekey,yykey,kskey','@�ż���ҩƷ����(E00501)+@סԺҩƷ����(E00502)','select "E005" zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,0 fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id ="E00501" and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id ="E00502" and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.25: E005******************ZB_FACT_DIM_YS***E005******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E005' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb E005'
go

