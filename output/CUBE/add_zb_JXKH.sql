/************No.1: A00309******************ZB_FACT_DIM_YS***A00309******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A00309' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A00309','sum','A00308','1','A00401','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A00309','sum','A00308','1','A00401','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.1: A00309******************ZBMX***A00309******************************/

if exists(select 1 from ZBMX where id='A00309')
begin
	print '新增指标A00309,但指标A00309已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='A00309') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A00309','1','门诊预约患者平均候诊时间','1','1','0','分钟','1','','','0.00000','1','0','','','按照预约挂号日期统计，不统计作废记录和预约医生工号为空的记录','','','A00309','','','0','1','','','','','','A003','1','0','','1','1','1','')
	
end
go

/************No.1: A00309******************Y_COLUMN_MAP_ZBFACT***A00309******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A00309' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A00309','','','A00308,A00401')
	go

/************No.1: A00309******************HD_ZBMX_HZ_YS***A00309******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A00309')
begin
	print '新增指标A00309,但指标A00309已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A00309') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb A00309'

end
go

/************No.1: A00309******************HD_ZBMX_HZ***A00309******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A00309')
begin
	print '新增指标A00309,但指标A00309已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='A00309') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('A00309','门诊预约患者平均候诊时间','','','','select ''A00309'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A00308'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A00401'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''A00309'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A00308'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A00401'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','0','','A00308,A00401','12436','','','0','-1','-1','','','','','@门诊预约患者候诊时间(A00308)/@有效预约就诊人次(A00401)','select ''A00309'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A00308'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A00401'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.2: A006******************ZB_FACT_DIM_YS***A006******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A006' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A006','sum','A004','1','A003','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A006','sum','A004','1','A003','1','DIM_YYFS','yyfskey','yyfsmc','预约方式',' where',' where','yyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A006','sum','A004','1','A003','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A006','sum','A004','1','A003','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	go

/************No.2: A006******************ZBMX***A006******************************/

if exists(select 1 from ZBMX where id='A006')
begin
	print '新增指标A006,但指标A006已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='A006') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A006','1','预约就诊率','0','100','4','%','1','','','0.05000','1','1','','','','','','A006','','','0','1','','0','1','{实际值}/{目标值}<0.95','0','0','0','0','','','','','')
	
end
go

/************No.2: A006******************Y_COLUMN_MAP_ZBFACT***A006******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A006' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A006','','','A004,A003')
	go

/************No.2: A006******************HD_ZBMX_HZ_YS***A006******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A006')
begin
	print '新增指标A006,但指标A006已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A006') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('A006','预约就诊率','select ''A006'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''A004''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''A003''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''A006'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''A004'' union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''A003'')t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','A004,A003','11508','','','0','')
	
end
go

/************No.2: A006******************HD_ZBMX_HZ***A006******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A006')
begin
	print '新增指标A006,但指标A006已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='A006') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('A006','预约就诊率','','','','select ''A006'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A004''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A003''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''A006'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A004''    and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A003''     and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','A004,A003','11508','','','0','-1','-1','','','','','@预约就诊人次(A004)/@门诊预约人次(A003)','select ''A006'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A004''    and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A003''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.3: A115******************ZB_FACT_DIM_YS***A115******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A115' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A115','sum','A111','1','ZLZB_YY0005','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A115','sum','A111','1','ZLZB_YY0005','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.3: A115******************ZBMX***A115******************************/

if exists(select 1 from ZBMX where id='A115')
begin
	print '新增指标A115,但指标A115已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='A115') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A115','2','每名执业医师日均住院工作负担','0','1','0','天','1','','','0.00000','1','0','','','计算方法：全年实际占用总床日数/医院平均执业（助理）医师人数/365.医院平均执业（助理）医师人数=（本年度人数 上一年度人数）/2指标来源：医院填报','','','A115','','','0','1','','','','','','0','1','0','','1','1','1','')
	
end
go

/************No.3: A115******************Y_COLUMN_MAP_ZBFACT***A115******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A115' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A115','','','A111,ZLZB_YY0005')
	go

/************No.3: A115******************HD_ZBMX_HZ_YS***A115******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A115')
begin
	print '新增指标A115,但指标A115已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A115') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb A115'

end
go

/************No.3: A115******************HD_ZBMX_HZ***A115******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A115')
begin
	print '新增指标A115,但指标A115已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='A115') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('A115','每名执业医师日均住院工作负担','','','','select ''A115'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A111'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0005'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''A115'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A111'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','A111,ZLZB_YY0005','12407','','','0','-1','-1','','','','','@出院患者实际占用总床日(A111)/@卫生技术人员数（医师）(ZLZB_YY0005)','select ''A115'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A111'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.4: A32001******************ZB_FACT_DIM_YS***A32001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A32001' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_SEX','sexkey','sex','性别',' where',' where','sexkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_YB_YBLX','yblxkey','yblxmc','医保类型',' where',' where','yblxkey','','','','','','')
	go

/************No.4: A32001******************ZBMX***A32001******************************/

if exists(select 1 from ZBMX where id='A32001')
begin
	print '新增指标A32001,但指标A32001已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='A32001') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A32001','1','门诊人次数与出院人次数比','0','100','4','%','1','','','0.00000','1','0','','','','','','A32001','','','0','1','','','','','','A320','1','0','','0','0','','')
	
end
go

/************No.4: A32001******************Y_COLUMN_MAP_ZBFACT***A32001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A32001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A32001','','','A00101,A102')
	go

/************No.4: A32001******************HD_ZBMX_HZ_YS***A32001******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32001')
begin
	print '新增指标A32001,但指标A32001已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32001') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('A32001','门诊人次数与出院人次数比','select ''A32001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''A00101'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''A102'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''A32001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A00101'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A102'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','A00101,A102','12398','','','0','select ''A32001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A00101'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A102'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.4: A32001******************HD_ZBMX_HZ***A32001******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A32001')
begin
	print '新增指标A32001,但指标A32001已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='A32001') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('A32001','门诊人次数与出院人次数比','','select timekey,yykey,kskey,yskey,ybflkey,sexkey,yblxkey,sum(ghrc) fz,0 fm from FACT_YY_MZ_JZRC a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and mjzkey in (1) group by timekey,yykey,kskey,yskey,ybflkey,sexkey,yblxkey union all select timekey,yykey,kskey,yskey,ybflkey,sexkey,yblxkey,0 fz,sum(cyrc) fm from FACT_YY_ZY_CYYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,ybflkey,sexkey,yblxkey','','select ''A32001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A00101'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A102'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''A32001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A00101'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A102'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','A00101,A102','12398','','','0','-1','-1','','','','timekey,yykey,kskey,yskey,ybflkey,sexkey,yblxkey','@门诊人次(A00101)/@出院人次(A102)','select ''A32001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A00101'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A102'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.5: A32101******************ZB_FACT_DIM_YS***A32101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A32101' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb A32101'
go

/************No.5: A32101******************ZBMX***A32101******************************/

if exists(select 1 from ZBMX where id='A32101')
begin
	print '新增指标A32101,但指标A32101已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='A32101') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A32101','1','门诊下转患者人次数','0','1','0','人','0','','','0.00000','1','0','','','','','','A32101','','','0','1','','','','','','A321','1','0','','1','0','1','')
	
end
go

/************No.5: A32101******************Y_COLUMN_MAP_ZBFACT***A32101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A32101' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A32101'
go

/************No.5: A32101******************HD_ZBMX_HZ_YS***A32101******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32101')
begin
	print '新增指标A32101,但指标A32101已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32101') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb A32101'

end
go

/************No.5: A32101******************HD_ZBMX_HZ***A32101******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A32101')
begin
	print '新增指标A32101,但指标A32101已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='A32101') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb A32101'

end
go

/************No.6: A32102******************ZB_FACT_DIM_YS***A32102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A32102' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32102','sum','A32102','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32102','sum','A32102','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32102','sum','A32102','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.6: A32102******************ZBMX***A32102******************************/

if exists(select 1 from ZBMX where id='A32102')
begin
	print '新增指标A32102,但指标A32102已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='A32102') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A32102','1','住院下转患者人次数','0','1','0','人','0','','','0.00000','1','0','','','','','','A32102','','','0','1','','','','','','A321','1','0','','0','0','','')
	
end
go

/************No.6: A32102******************Y_COLUMN_MAP_ZBFACT***A32102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A32102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A32102','FACT_YY_ZY_CYYWLFX','cyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A32102','FACT_YY_ZY_CYYWLFX','cyfskey','')
	go

/************No.6: A32102******************HD_ZBMX_HZ_YS***A32102******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32102')
begin
	print '新增指标A32102,但指标A32102已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32102') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb A32102'

end
go

/************No.6: A32102******************HD_ZBMX_HZ***A32102******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A32102')
begin
	print '新增指标A32102,但指标A32102已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='A32102') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('A32102','住院下转患者人次数','select ''A32102'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,sum(cyrc) fz from FACT_YY_ZY_CYYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and cyfskey in (4) group by timekey,yykey,kskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''A32102'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,sum(cyrc) fz from FACT_YY_ZY_CYYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and cyfskey in (4) group by timekey,yykey,kskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''A32102'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,sum(cyrc) fz from FACT_YY_ZY_CYYWLFX a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and cyfskey in (4) group by timekey,yykey,kskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','12399','','','1','1','0','FACT_YY_ZY_CYYWLFX','cyrc','[{\''dim_key\'':\''cyfskey\'',\''relation\'':\''0\'',\''caliber\'':\''4\''}]','timekey,yykey,kskey','','select ''A32102'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,sum(cyrc) fz from FACT_YY_ZY_CYYWLFX a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and cyfskey in (4) group by timekey,yykey,kskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','')
	
end
go

/************No.7: A32201******************ZB_FACT_DIM_YS***A32201******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A32201' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb A32201'
go

/************No.7: A32201******************ZBMX***A32201******************************/

if exists(select 1 from ZBMX where id='A32201')
begin
	print '新增指标A32201,但指标A32201已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='A32201') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A32201','1','特需医疗服务量占比','0','100','4','%','1','','','0.00000','1','0','','','','','','A32201','','','0','1','','','','','','A322','1','0','','1','1','1','')
	
end
go

/************No.7: A32201******************Y_COLUMN_MAP_ZBFACT***A32201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A32201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A32201','','','A322,A323')
	go

/************No.7: A32201******************HD_ZBMX_HZ_YS***A32201******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32201')
begin
	print '新增指标A32201,但指标A32201已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32201') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb A32201'

end
go

/************No.7: A32201******************HD_ZBMX_HZ***A32201******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A32201')
begin
	print '新增指标A32201,但指标A32201已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='A32201') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('A32201','特需医疗服务量占比','','','','select ''A32201'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A322'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A323'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''A32201'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A322'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A323'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','A322,A323','12520','','','0','-1','-1','','','','','@特需医疗服务量(A322)/@医疗服务量(A323)','select ''A32201'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A322'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A323'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.8: B001******************ZB_FACT_DIM_YS***B001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B001' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B001','sum','B001','1','0','1','DIM_ZDDMK','zddmkey','zdmc','诊断',' where',' where','zddmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B001','sum','B001','ghfy+cffy','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B001','sum','B001','ghfy+cffy','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B001','sum','B001','ghfy+cffy','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B001','sum','B001','ghfy+cffy','0','0','DIM_SFDXMK','dxmkey','dxmmc','收费大项目',' where',' where','dxmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B001','sum','B001','ghfy+cffy','0','0','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	go

/************No.8: B001******************ZBMX***B001******************************/

if exists(select 1 from ZBMX where id='B001')
begin
	print '新增指标B001,但指标B001已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='B001') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B001','3','医院总费用','0','10000','4','万元','1','','','0.05000','1','1','','','门急诊费用 住院费用','','','B001','','','0','1','','0','1','{实际值}/{目标值}<0.95','0','0','0','0','','','','','')
	
end
go

/************No.8: B001******************Y_COLUMN_MAP_ZBFACT***B001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B001','','','B00101,B00102')
	go

/************No.8: B001******************HD_ZBMX_HZ_YS***B001******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B001')
begin
	print '新增指标B001,但指标B001已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B001') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('B001','医院总费用','select ''B001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,0 fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B00101''     and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B00102''    and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''B001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,0 fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00102'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','B00101,B00102','11518','SELECT ''B001'' zbmx_id,yykey ,isnull (yydm,''01'') yydm,kskey,ksdm,yskey,ysdm,month,(SUM(fz)+SUM(fm)) fz,0 fm,NULL czry,getdate() gxrq         
FROM         
(         
SELECT yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm 
FROM FACT_RESULT_KS_YS_VALUE_M 
WHERE zbmx_id =''B00101''         
UNION all         
SELECT yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm 
FROM FACT_RESULT_KS_YS_VALUE_M 
WHERE zbmx_id =''B00102''          
)t         
GROUP BY  yykey,yydm,kskey,ksdm,yskey,ysdm,month   ','','0','select ''B001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,0 fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00101''     and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00102''    and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.8: B001******************HD_ZBMX_HZ***B001******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='B001')
begin
	print '新增指标B001,但指标B001已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='B001') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('B001','医院总费用','','select timekey,yykey,kskey,yskey,dxmkey,ybflkey,zddmkey,sum(ghfy+cffy) fz from FACT_FY_MZ_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,dxmkey,ybflkey,zddmkey union all select timekey,yykey,kskey,yskey,dxmkey,ybflkey,zddmkey,sum(zfy) fz from FACT_FY_ZY_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,dxmkey,ybflkey,zddmkey','','select ''B001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,0 fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00101''     and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00102''    and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''B001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz ,0 fm,null czry,getdate() gxrq ,bqkey from ( select yykey,yydm,kskey,ksdm,month,fz_tq fz,0 fm  ,bqkey from FACT_RESULT_KS_VALUE_M  where zbmx_id =''B00101'' and month between @kssj and @jssj   union all select yykey,yydm,kskey,ksdm,month,fz_tq fz,0 fm  ,bqkey from FACT_RESULT_KS_VALUE_M  where zbmx_id =''B00102'' and month between @kssj and @jssj  )t group by yykey,yydm,kskey,ksdm,month ,bqkey','1','','B00101,B00102','11518','','','0','-1','-1','','','','','@门急诊费用(B00101)+@住院费用(B00102)','select ''B001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz ,0 fm,null czry,getdate() gxrq ,bqkey from ( select yykey,yydm,kskey,ksdm,month,fz_hq fz,0 fm  ,bqkey from FACT_RESULT_KS_VALUE_M  where zbmx_id =''B00101'' and month between @kssj and @jssj   union all select yykey,yydm,kskey,ksdm,month,fz_hq fz,0 fm  ,bqkey from FACT_RESULT_KS_VALUE_M  where zbmx_id =''B00102'' and month between @kssj and @jssj  )t group by yykey,yydm,kskey,ksdm,month ,bqkey','','')
	
end
go

/************No.9: B00103******************ZB_FACT_DIM_YS***B00103******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B00103' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00103','sum','B00101','1','B001','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00103','sum','B00101','1','B001','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00103','sum','B00101','1','B001','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00103','sum','B00101','1','B001','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00103','sum','B00101','1','B001','1','DIM_SFDXMK','dxmkey','dxmmc','收费大项目',' where',' where','dxmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00103','sum','B00101','1','B001','1','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00103','sum','B00101','1','B001','1','DIM_ZDDMK','zddmkey','zdmc','诊断',' where',' where','zddmkey','','','','','','')
	go

/************No.9: B00103******************ZBMX***B00103******************************/

if exists(select 1 from ZBMX where id='B00103')
begin
	print '新增指标B00103,但指标B00103已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='B00103') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B00103','3','门急诊费用占比','0','100','4','%','1','','','0.00000','1','0','','','@门急诊费用(B00101)/@医院总费用(B001)','','','B00103','','','0','1','','','','','','B001','0','0','','0','0','','')
	
end
go

/************No.9: B00103******************Y_COLUMN_MAP_ZBFACT***B00103******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00103' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00103','','','B00101,B001')
	go

/************No.9: B00103******************HD_ZBMX_HZ_YS***B00103******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B00103')
begin
	print '新增指标B00103,但指标B00103已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B00103') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('B00103','门急诊费用占比','select ''B00103'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B00101'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B001'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''B00103'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','B00101,B001','12409','','','0','select ''B00103'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.9: B00103******************HD_ZBMX_HZ***B00103******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='B00103')
begin
	print '新增指标B00103,但指标B00103已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='B00103') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('B00103','门急诊费用占比','','select timekey,yykey,kskey,yskey,dxmkey,ybflkey,zddmkey,sum(ghfy+cffy) fz,0 fm from FACT_FY_MZ_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,dxmkey,ybflkey,zddmkey union all select timekey,yykey,kskey,yskey,dxmkey,ybflkey,zddmkey,0 fz,sum(ghfy+cffy) fm from FACT_FY_MZ_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,dxmkey,ybflkey,zddmkey union all select timekey,yykey,kskey,yskey,dxmkey,ybflkey,zddmkey,0 fz,sum(zfy) fm from FACT_FY_ZY_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,dxmkey,ybflkey,zddmkey','','select ''B00103'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00101'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B001'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''B00103'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','B00101,B001','12409','','','0','-1','-1','','','','timekey,yykey,kskey,yskey,dxmkey,ybflkey,zddmkey','@门急诊费用(B00101)/@医院总费用(B001)','select ''B00103'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.10: B00104******************ZB_FACT_DIM_YS***B00104******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B00104' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_ZDDMK','zddmkey','zdmc','诊断',' where',' where','zddmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_ZY_ZLZXX','zlzkey','zlzmc','诊疗组',' where',' where','zlzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_SFDXMK','dxmkey','dxmmc','收费大项目',' where',' where','dxmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_BQDMK','bqkey','name','病区',' where',' where','bqkey','','','','','','')
	go

/************No.10: B00104******************ZBMX***B00104******************************/

if exists(select 1 from ZBMX where id='B00104')
begin
	print '新增指标B00104,但指标B00104已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='B00104') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B00104','3','住院费用占比','0','100','4','%','1','','','0.00000','1','0','','','@住院费用(B00102)/@医院总费用(B001)','','','B00104','','','0','1','','','','','','B001','0','0','','0','0','','')
	
end
go

/************No.10: B00104******************Y_COLUMN_MAP_ZBFACT***B00104******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00104' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00104','','','B00102,B001')
	go

/************No.10: B00104******************HD_ZBMX_HZ_YS***B00104******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B00104')
begin
	print '新增指标B00104,但指标B00104已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B00104') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('B00104','住院费用占比','select ''B00104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B00102'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B001'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''B00104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00102'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','B00102,B001','12410','','','0','select ''B00104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00102'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.10: B00104******************HD_ZBMX_HZ***B00104******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='B00104')
begin
	print '新增指标B00104,但指标B00104已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='B00104') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('B00104','住院费用占比','','select timekey,yykey,kskey,yskey,ybflkey,dxmkey,bqkey,sjbqkey,zddmkey,zlzkey,sum(zfy) fz,0 fm from FACT_FY_ZY_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,ybflkey,dxmkey,bqkey,sjbqkey,zddmkey,zlzkey union all select timekey,yykey,kskey,yskey,ybflkey,dxmkey,bqkey,sjbqkey,zddmkey,zlzkey,0 fz,sum(ghfy+cffy) fm from FACT_FY_MZ_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,ybflkey,dxmkey,bqkey,sjbqkey,zddmkey,zlzkey union all select timekey,yykey,kskey,yskey,ybflkey,dxmkey,bqkey,sjbqkey,zddmkey,zlzkey,0 fz,sum(zfy) fm from FACT_FY_ZY_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,ybflkey,dxmkey,bqkey,sjbqkey,zddmkey,zlzkey','','select ''B00104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00102'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B001'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''B00104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00102'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','B00102,B001','12410','','','0','-1','-1','','','','timekey,yykey,kskey,yskey,ybflkey,dxmkey,bqkey,sjbqkey,zddmkey,zlzkey','@住院费用(B00102)/@医院总费用(B001)','select ''B00104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00102'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.11: B00106******************ZB_FACT_DIM_YS***B00106******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B00106' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00106','sum','B00105','1','B001','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00106','sum','B00105','1','B001','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00106','sum','B00105','1','B001','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.11: B00106******************ZBMX***B00106******************************/

if exists(select 1 from ZBMX where id='B00106')
begin
	print '新增指标B00106,但指标B00106已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='B00106') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B00106','3','医疗服务收入（不含药品、耗材、检查检验收入）占医疗收入比例','0','100','4','%','1','','','0.00000','1','0','','','门急诊费用 住院费用','','','B00106','','','0','1','','','','','','B001','1','0','','0','0','','')
	
end
go

/************No.11: B00106******************Y_COLUMN_MAP_ZBFACT***B00106******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00106' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00106','','','B00105,B001')
	go

/************No.11: B00106******************HD_ZBMX_HZ_YS***B00106******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B00106')
begin
	print '新增指标B00106,但指标B00106已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B00106') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb B00106'

end
go

/************No.11: B00106******************HD_ZBMX_HZ***B00106******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='B00106')
begin
	print '新增指标B00106,但指标B00106已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='B00106') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('B00106','医疗服务收入（不含药品、耗材、检查检验收入）占医疗收入比例','','select timekey,yykey,kskey,sum(ghfy+cffy) fz,0 fm from FACT_FY_MZ_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and dxmkey in (0,5,7,8,43,44,45,46,47,48,49,59,62,64,65,66,68) group by timekey,yykey,kskey union all select timekey,yykey,kskey,sum(zfy) fz,0 fm from FACT_FY_ZY_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and dxmkey in (0,4,5,6,7,8,36,37,40,42,43,44,45,46,47,48,49,59,64,65,68,71) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ghfy+cffy) fm from FACT_FY_MZ_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(zfy) fm from FACT_FY_ZY_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey','','select ''B00106'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00105'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B001'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''B00106'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00105'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','B00105,B001','12415','','','0','-1','-1','','','','timekey,yykey,kskey','@医疗服务收入（不含药品、耗材、检查检验收入）(B00105)/@医院总费用(B001)','select ''B00106'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00105'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.12: B00204******************ZB_FACT_DIM_YS***B00204******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B00204' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00204','sum','B00203','1','B002','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00204','sum','B00203','1','B002','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00204','sum','B00203','1','B002','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.12: B00204******************ZBMX***B00204******************************/

if exists(select 1 from ZBMX where id='B00204')
begin
	print '新增指标B00204,但指标B00204已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='B00204') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B00204','3','辅助药品总费用占比','0','100','4','%','1','','','0.00000','1','0','','','@辅助药品总费用(B00203)/@药品总费用(B002)','','','B00204','','','0','1','','','','','','B002','1','0','','0','0','','')
	
end
go

/************No.12: B00204******************Y_COLUMN_MAP_ZBFACT***B00204******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00204' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00204','','','B00203,B002')
	go

/************No.12: B00204******************HD_ZBMX_HZ_YS***B00204******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B00204')
begin
	print '新增指标B00204,但指标B00204已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B00204') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb B00204'

end
go

/************No.12: B00204******************HD_ZBMX_HZ***B00204******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='B00204')
begin
	print '新增指标B00204,但指标B00204已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='B00204') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('B00204','辅助药品总费用占比','','select timekey,yykey,kskey,sum(ypfy) fz,0 fm from FACT_YP_MZ_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and fzypbz in (1) group by timekey,yykey,kskey union all select timekey,yykey,kskey,sum(ypfy) fz,0 fm from FACT_YP_ZY_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and fzypbz in (1) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ypfy) fm from FACT_YP_MZ_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ypfy) fm from FACT_YP_ZY_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey','','select ''B00204'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00203'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''B00204'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00203'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','B00203,B002','12420','','','0','-1','-1','','','','timekey,yykey,kskey','@辅助药品总费用(B00203)/@药品总费用(B002)','select ''B00204'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00203'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.13: B101******************ZB_FACT_DIM_YS***B101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B101' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B101','sum','B00101','1','A001','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B101','sum','B00101','1','A001','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B101','sum','B00101','1','A001','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B101','sum','B00101','1','A001','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B101','sum','B00101','1','A001','1','DIM_MJZBZ','mjzkey','name','门急诊',' where',' where','mjzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B101','sum','B00101','1','A001','1','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B101','sum','B00101','1','A001','1','DIM_ZDDMK','zddmkey','zdmc','诊断',' where',' where','zddmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B101','sum','B00101','1','A001','1','DIM_CZRYK','czykey','rymc','操作人员',' where',' where','czykey','','','','','','')
	go

/************No.13: B101******************ZBMX***B101******************************/

if exists(select 1 from ZBMX where id='B101')
begin
	print '新增指标B101,但指标B101已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='B101') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B101','3','门急诊均次费','0','1','4','元','1','','','-0.01000','1','0','','','门急诊均次费=门急诊费用/门急诊人次','','','B101','','','0','2','','0','1','{实际值}/{目标值}<0.95','0','0','0','0','','0','0','','')
	
end
go

/************No.13: B101******************Y_COLUMN_MAP_ZBFACT***B101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B101','','','B00101,A001')
	go

/************No.13: B101******************HD_ZBMX_HZ_YS***B101******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B101')
begin
	print '新增指标B101,但指标B101已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B101') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('B101','门急诊均次费','select ''B101'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B00101'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''A001'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''B101'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','B00101,A001','11471','SELECT ''B101'' zbmx_id,yykey,yydm,kskey,ksdm,yskey,ysdm,month,SUM(fz) fz,SUM(fm) fm ,NULL czry,getdate() gxrq          
FROM         
(         
 SELECT yykey,yydm,kskey,ksdm,yskey,ysdm,month, fz,0 fm 
 FROM FACT_RESULT_KS_YS_VALUE_M 
 WHERE zbmx_id =''B00101''         
 UNION ALL         
 SELECT yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm 
 FROM FACT_RESULT_KS_YS_VALUE_M 
 WHERE zbmx_id =''A001''         
)t         
GROUP BY  yykey,yydm,kskey,ksdm,yskey,ysdm,month ','','0','select ''B101'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.13: B101******************HD_ZBMX_HZ***B101******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='B101')
begin
	print '新增指标B101,但指标B101已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='B101') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('B101','门急诊均次费','','select timekey,yykey,kskey,yskey,mjzkey,ybflkey,zddmkey,czykey,sum(ghfy+cffy) fz,0 fm from FACT_FY_MZ_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,mjzkey,ybflkey,zddmkey,czykey union all select timekey,yykey,kskey,yskey,mjzkey,ybflkey,zddmkey,czykey,0 fz,sum(ghrc) fm from FACT_YY_MZ_JZRC a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,mjzkey,ybflkey,zddmkey,czykey','','select ''B101'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00101'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A001'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''B101'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','B00101,A001','11471','','','0','-1','-1','','','','timekey,yykey,kskey,yskey,mjzkey,ybflkey,zddmkey,czykey','@门急诊费用(B00101)/@门急诊人次(A001)','select ''B101'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.14: B102******************ZB_FACT_DIM_YS***B102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B102' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B102','sum','B00102','1','A102','1','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B102','sum','B00102','1','A102','1','DIM_BQDMK','bqkey','name','病区',' where',' where','bqkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B102','sum','B00102','1','A102','1','DIM_ZY_ZLD','zlzkey','zlzmc','诊疗组',' where',' where','zlzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B102','sum','B00102','zfy','A102','cyrc','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B102','sum','B00102','zfy','A102','cyrc','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B102','sum','B00102','zfy','A102','cyrc','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	go

/************No.14: B102******************ZBMX***B102******************************/

if exists(select 1 from ZBMX where id='B102')
begin
	print '新增指标B102,但指标B102已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='B102') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B102','3','住院均次费','0','1','4','元','1','','','-0.01000','1','0','','','住院均次费=住院费用/出院人次','','','B102','','','0','2','','0','1','{实际值}/{目标值}<0.95','0','0','0','0','','','','','')
	
end
go

/************No.14: B102******************Y_COLUMN_MAP_ZBFACT***B102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B102','','','B00102,A102')
	go

/************No.14: B102******************HD_ZBMX_HZ_YS***B102******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B102')
begin
	print '新增指标B102,但指标B102已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B102') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('B102','住院均次费','select ''B102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B00102''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''A102''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''B102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''B00102'' union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''A102'')t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','B00102,A102','11472','SELECT ''B102'' zbmx_id,yykey,yydm,kskey,ksdm,yskey,ysdm,month,SUM(fz) fz,SUM(fm) fm ,NULL czry,getdate() gxrq
FROM
(
SELECT yykey,yydm,kskey,ksdm,yskey,ysdm,month, fz,0 fm 
FROM FACT_RESULT_KS_YS_VALUE_M WHERE zbmx_id =''B00102''
UNION ALL
SELECT yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm 
FROM FACT_RESULT_KS_YS_VALUE_M WHERE zbmx_id =''A102''
)t
GROUP BY  yykey,yydm,kskey,ksdm,yskey,ysdm,month ','','0','')
	
end
go

/************No.14: B102******************HD_ZBMX_HZ***B102******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='B102')
begin
	print '新增指标B102,但指标B102已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='B102') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('B102','住院均次费','','','','select ''B102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00102''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A102''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''B102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00102''    and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A102''     and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','B00102,A102','11472','','','0','-1','-1','','','','','@住院费用(B00102)/@出院人次(A102)','select ''B102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00102''    and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A102''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.15: B103******************ZB_FACT_DIM_YS***B103******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B103' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B103','sum','B00201','1','A001','1','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B103','sum','B00201','ypfy','A001','ghrc','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B103','sum','B00201','ypfy','A001','ghrc','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B103','sum','B00201','ypfy','A001','ghrc','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	go

/************No.15: B103******************ZBMX***B103******************************/

if exists(select 1 from ZBMX where id='B103')
begin
	print '新增指标B103,但指标B103已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='B103') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B103','3','门急诊药品均次费','0','1','4','元','1','','','-0.01000','1','0','','','门急诊药品均次费=门急诊药品费用/门急诊人次','','','B103','','','0','2','','0','1','{实际值}/{目标值}<0.95','0','0','0','0','','','','','')
	
end
go

/************No.15: B103******************Y_COLUMN_MAP_ZBFACT***B103******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B103' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B103','','','B00201,A001')
	go

/************No.15: B103******************HD_ZBMX_HZ_YS***B103******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B103')
begin
	print '新增指标B103,但指标B103已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B103') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('B103','门急诊药品均次费','select ''B103'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B00201''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''A001''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''B103'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''B00201'' union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''A001'')t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','B00201,A001','11473','SELECT ''B103'' zbmx_id,yykey,yydm,kskey,ksdm,yskey,ysdm,month,SUM(fz) fz,SUM(fm) fm ,NULL czry,getdate() gxrq          
FROM         
(         
 SELECT yykey,yydm,kskey,ksdm,yskey,ysdm,month, fz,0 fm FROM FACT_RESULT_KS_YS_VALUE_M WHERE zbmx_id =''B00201''         
 UNION ALL         
 SELECT yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm FROM FACT_RESULT_KS_YS_VALUE_M WHERE zbmx_id =''A001''         
)t         
GROUP BY  yykey,yydm,kskey,ksdm,yskey,ysdm,month ','','0','')
	
end
go

/************No.15: B103******************HD_ZBMX_HZ***B103******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='B103')
begin
	print '新增指标B103,但指标B103已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='B103') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('B103','门急诊药品均次费','','','','select ''B103'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00201''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A001''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''B103'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00201''    and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A001''     and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','B00201,A001','11473','','','0','-1','-1','','','','','@门急诊药品费用(B00201)/@门急诊人次(A001)','select ''B103'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00201''    and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A001''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.16: B104******************ZB_FACT_DIM_YS***B104******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B104' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B104','sum','B00202','1','A102','1','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B104','sum','B00202','1','A102','1','DIM_ZY_ZLD','zlzkey','zlzmc','诊疗组',' where',' where','zlzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B104','sum','B00202','1','A102','1','DIM_BQDMK','bqkey','name','病区',' where',' where','bqkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B104','sum','B00202','zfy','A102','cyrc','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B104','sum','B00202','zfy','A102','cyrc','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B104','sum','B00202','zfy','A102','cyrc','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	go

/************No.16: B104******************ZBMX***B104******************************/

if exists(select 1 from ZBMX where id='B104')
begin
	print '新增指标B104,但指标B104已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='B104') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B104','3','住院药品均次药费','0','1','4','元','1','','','-0.01000','1','0','','','住院药品均次药费=住院药品费用/出院人次','','','B104','','','0','2','','0','1','{实际值}/{目标值}<0.95','0','0','0','0','','','','','')
	
end
go

/************No.16: B104******************Y_COLUMN_MAP_ZBFACT***B104******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B104' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B104','','','B00202,A102')
	go

/************No.16: B104******************HD_ZBMX_HZ_YS***B104******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B104')
begin
	print '新增指标B104,但指标B104已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B104') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('B104','住院药品均次药费','select ''B104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B00202''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''A102''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''B104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''B00202'' union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''A102'')t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','B00202,A102','11474','SELECT ''B104'' zbmx_id,yykey,yydm,kskey,ksdm,yskey,ysdm,month,SUM(fz) fz,SUM(fm) fm ,NULL czry,getdate() gxrq          
FROM         
(         
 SELECT yykey,yydm,kskey,ksdm,yskey,ysdm,month, fz,0 fm FROM FACT_RESULT_KS_YS_VALUE_M WHERE zbmx_id =''B00202''         
 UNION ALL         
 SELECT yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm FROM FACT_RESULT_KS_YS_VALUE_M WHERE zbmx_id =''A102''         
)t         
GROUP BY  yykey,yydm,kskey,ksdm,yskey,ysdm,month ','','0','')
	
end
go

/************No.16: B104******************HD_ZBMX_HZ***B104******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='B104')
begin
	print '新增指标B104,但指标B104已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='B104') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('B104','住院药品均次药费','','','','select ''B104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00202''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A102''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''B104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00202''    and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A102''     and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','B00202,A102','11474','','','0','-1','-1','','','','','@住院药品费用(B00202)/@出院人次(A102)','select ''B104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00202''    and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A102''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.17: B10901******************ZB_FACT_DIM_YS***B10901******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B10901' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B10901'
go

/************No.17: B10901******************ZBMX***B10901******************************/

if exists(select 1 from ZBMX where id='B10901')
begin
	print '新增指标B10901,但指标B10901已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='B10901') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B10901','3','特需医疗服务收入占比','0','100','0','%','1','','','0.00000','1','0','','','','','','B10901','','','0','1','','','','','','B109','1','0','','1','1','1','')
	
end
go

/************No.17: B10901******************Y_COLUMN_MAP_ZBFACT***B10901******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B10901' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B10901','','','B109,B001')
	go

/************No.17: B10901******************HD_ZBMX_HZ_YS***B10901******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B10901')
begin
	print '新增指标B10901,但指标B10901已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B10901') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb B10901'

end
go

/************No.17: B10901******************HD_ZBMX_HZ***B10901******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='B10901')
begin
	print '新增指标B10901,但指标B10901已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='B10901') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('B10901','特需医疗服务收入占比','','','','select ''B10901'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B109'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B001'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''B10901'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B109'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','B109,B001','12519','','','0','-1','-1','','','','','@特需医疗服务收入(B109)/@医院总费用(B001)','select ''B10901'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B109'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.18: C002020102******************ZB_FACT_DIM_YS***C002020102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='C002020102' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C002020102','sum','C0020201','1','B00101','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C002020102','sum','C0020201','1','B00101','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C002020102','sum','C0020201','1','B00101','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C002020102','sum','C0020201','1','B00101','1','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C002020102','sum','C0020201','1','B00101','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	go

/************No.18: C002020102******************ZBMX***C002020102******************************/

if exists(select 1 from ZBMX where id='C002020102')
begin
	print '新增指标C002020102,但指标C002020102已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='C002020102') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('C002020102','4','门诊收入中来自医保基金的比例','0','100','4','%','1','','','0.00000','1','0','','','门急诊医保支付金额(可报金额)C0020201/门急诊费用B00101','','','C002020102','','','0','1','','','','','','C0020201','1','0','','0','0','','')
	
end
go

/************No.18: C002020102******************Y_COLUMN_MAP_ZBFACT***C002020102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C002020102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C002020102','','','C0020201,B00101')
	go

/************No.18: C002020102******************HD_ZBMX_HZ_YS***C002020102******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='C002020102')
begin
	print '新增指标C002020102,但指标C002020102已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='C002020102') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('C002020102','门诊收入中来自医保基金的比例','select ''C002020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''C0020201'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B00101'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''C002020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''C0020201'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','C0020201,B00101','12411','','','0','select ''C002020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''C0020201'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.18: C002020102******************HD_ZBMX_HZ***C002020102******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='C002020102')
begin
	print '新增指标C002020102,但指标C002020102已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='C002020102') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('C002020102','门诊收入中来自医保基金的比例','','select timekey,yykey,kskey,ybflkey,yskey,sum(ybzffy) fz,0 fm from FACT_YB_YBZKFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and mzzykey in (1) group by timekey,yykey,kskey,ybflkey,yskey union all select timekey,yykey,kskey,ybflkey,yskey,0 fz,sum(ghfy+cffy) fm from FACT_FY_MZ_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,ybflkey,yskey','','select ''C002020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''C0020201'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00101'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''C002020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''C0020201'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','C0020201,B00101','12411','','','0','-1','-1','','','','timekey,yykey,kskey,ybflkey,yskey','@门急诊医保支付金额(可报金额)(C0020201)/@门急诊费用(B00101)','select ''C002020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''C0020201'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.19: C102020102******************ZB_FACT_DIM_YS***C102020102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='C102020102' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C102020102','sum','C1020201','1','B00102','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C102020102','sum','C1020201','1','B00102','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C102020102','sum','C1020201','1','B00102','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C102020102','sum','C1020201','1','B00102','1','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C102020102','sum','C1020201','1','B00102','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C102020102','sum','C1020201','1','B00102','1','DIM_ZY_ZLZXX','zlzkey','zlzmc','诊疗组',' where',' where','zlzkey','','','','','','')
	go

/************No.19: C102020102******************ZBMX***C102020102******************************/

if exists(select 1 from ZBMX where id='C102020102')
begin
	print '新增指标C102020102,但指标C102020102已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='C102020102') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('C102020102','4','住院收入中来自医保基金的比例','0','100','4','%','1','','','0.00000','1','0','','','住院医保支付金额(可报金额)C1020201/住院费用B00102','','','C102020102','','','0','1','','','','','','C1020201','1','0','','0','0','','')
	
end
go

/************No.19: C102020102******************Y_COLUMN_MAP_ZBFACT***C102020102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C102020102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C102020102','','','C1020201,B00102')
	go

/************No.19: C102020102******************HD_ZBMX_HZ_YS***C102020102******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='C102020102')
begin
	print '新增指标C102020102,但指标C102020102已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='C102020102') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('C102020102','住院收入中来自医保基金的比例','select ''C102020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''C1020201'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B00102'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''C102020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''C1020201'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00102'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','C1020201,B00102','12412','','','0','select ''C102020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''C1020201'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00102'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.19: C102020102******************HD_ZBMX_HZ***C102020102******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='C102020102')
begin
	print '新增指标C102020102,但指标C102020102已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='C102020102') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('C102020102','住院收入中来自医保基金的比例','','select timekey,yykey,kskey,ybflkey,yskey,zlzkey,sum(ybzffy) fz,0 fm from FACT_YB_YBZKFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and mzzykey in (2) group by timekey,yykey,kskey,ybflkey,yskey,zlzkey union all select timekey,yykey,kskey,ybflkey,yskey,zlzkey,0 fz,sum(zfy) fm from FACT_FY_ZY_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,ybflkey,yskey,zlzkey','','select ''C102020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''C1020201'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00102'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''C102020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''C1020201'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00102'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','C1020201,B00102','12412','','','0','-1','-1','','','','timekey,yykey,kskey,ybflkey,yskey,zlzkey','@住院医保支付金额(可报金额)(C1020201)/@住院费用(B00102)','select ''C102020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''C1020201'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00102'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.20: D00203******************ZB_FACT_DIM_YS***D00203******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='D00203' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D00203','sum','D007','1','A102','1','DIM_ZY_ZLD','zlzkey','zlzmc','诊疗组',' where',' where','zlzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D00203','sum','D007','1','A102','1','DIM_BQDMK','bqkey','name','病区',' where',' where','bqkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D00203','sum','D002','ssrc','A102','cyrc','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D00203','sum','D002','ssrc','A102','cyrc','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D00203','sum','D002','ssrc','A102','cyrc','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	go

/************No.20: D00203******************ZBMX***D00203******************************/

if exists(select 1 from ZBMX where id='D00203')
begin
	print '新增指标D00203,但指标D00203已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='D00203') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('D00203','5','住院患者手术率(%)','0','100','4','%','1','','','0.05000','1','1','','','手术人次(D007)/出院人次(A102)','','','D00203','','','0','1','','0','1','{实际值}/{目标值}<0.95','0','0','0','0','','','','','')
	
end
go

/************No.20: D00203******************Y_COLUMN_MAP_ZBFACT***D00203******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D00203' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D00203','','','D007,A102')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D00203','','','D007,A102')
	go

/************No.20: D00203******************HD_ZBMX_HZ_YS***D00203******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='D00203')
begin
	print '新增指标D00203,但指标D00203已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='D00203') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('D00203','住院患者手术率(%)','select ''D00203'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''D007''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''A102''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''D00203'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''D007'' union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''A102'')t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','D007,A102','11550','SELECT ''D00203'' zbmx_id,a.yykey,ISNULL(b.yydm,''01'') yydm,a.kskey,c.ksdm,a.yskey,ysdm
, CONVERT(date,CONVERT(CHAR(8),timekey,120)+''1'')  month, sum(ssrc) fz,SUM(cyrc) fm,NULL czry,getdate() gxrq              
from FACT_YY_ZY_CYYWLFX a         
inner join DIM_YYXX b ON a.yykey=b.yykey         
inner join DIM_KSXX c ON a.kskey=c.kskey      
left join DIM_YSXX d ON a.yskey=d.yskey and a.yykey=d.yykey                    
 WHERE timekey between @kssj  and @jssj and (a.yykey=@yykey or @yykey=-1) and (a.kskey=@kskey or @kskey=-1) GROUP  BY a.yykey,b.yydm,a.kskey,c.ksdm,a.yskey,ysdm,CONVERT(date,CONVERT(CHAR(8),timekey,120)+''1'')  ','','0','select ''D00203'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D007''    and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A102''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.20: D00203******************HD_ZBMX_HZ***D00203******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='D00203')
begin
	print '新增指标D00203,但指标D00203已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='D00203') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('D00203','住院患者手术率(%)','','','','select ''D00203'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D007''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A102''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''D00203'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D007''    and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A102''     and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','D007,A102','11550','','','0','-1','-1','','','','','@手术人次(D007)/@出院人次(A102)','select ''D00203'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D007''    and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A102''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.21: D00204******************ZB_FACT_DIM_YS***D00204******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='D00204' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D00204','sum','D00209','1','D002','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D00204','sum','D00209','1','D002','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D00204','sum','D00209','1','D002','1','DIM_YSXX','zdyskey','ysmc','主刀医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D00204','sum','D00209','1','D002','1','DIM_SSXX','ssdmkey','ssmc','手术名称',' where',' where','sskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D00204','sum','D00209','1','D002','1','DIM_MZFS','mzfskey','mzfsmc','麻醉方式',' where',' where','mzfskey','','','','','','')
	go

/************No.21: D00204******************ZBMX***D00204******************************/

if exists(select 1 from ZBMX where id='D00204')
begin
	print '新增指标D00204,但指标D00204已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='D00204') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('D00204','5','三四级手术占比(%)','0','100','4','%','1','','','0.05000','1','1','','','三四级手术例数(D00209)/住院手术例数(D002)','','','D00204','','','0','1','','0','1','{实际值}/{目标值}<0.95','0','0','0','0','','','','','')
	
end
go

/************No.21: D00204******************Y_COLUMN_MAP_ZBFACT***D00204******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D00204' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D00204','','','D00209,D002')
	go

/************No.21: D00204******************HD_ZBMX_HZ_YS***D00204******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='D00204')
begin
	print '新增指标D00204,但指标D00204已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='D00204') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('D00204','三四级手术占比(%)','select ''D00204'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''D00209''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''D002''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''D00204'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''D00209'' union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''D002'')t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','D00209,D002','11551','SELECT ''D00204'' zbmx_id,t.yykey,ISNULL(b.yydm,''01'') yydm,t.kskey,c.ksdm,t.yskey,ysdm,month month,SUM(fz) fz,        
SUM(fm) fm ,NULL czry,GETDATE() gxrq         
FROM         
(        
 SELECT CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1'') month,yykey,kskey,zdyskey yskey,SUM(ssjssrc) fz,0 fm         
 FROM FACT_YY_SS_ZYSSYWLFX         
 GROUP BY CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1''),yykey,kskey,zdyskey          
 UNION all        
 SELECT CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1'') month,yykey,kskey,zdyskey yskey,0 fz,SUM(ssrc) fm         
 from FACT_YY_SS_ZYSSYWLFX         
 GROUP BY CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1''),yykey,kskey,zdyskey          
)t        
inner join DIM_YYXX b ON t.yykey=b.yykey        
inner join DIM_KSXX c ON t.kskey=c.kskey      
left join DIM_YSXX d ON t.yskey=d.yskey and t.yykey=d.yykey             
GROUP BY t.yykey,b.yydm,t.kskey,c.ksdm,t.yskey,ysdm,month ','','0','')
	
end
go

/************No.21: D00204******************HD_ZBMX_HZ***D00204******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='D00204')
begin
	print '新增指标D00204,但指标D00204已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='D00204') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('D00204','三四级手术占比(%)','','','','select ''D00204'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D00209''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D002''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''D00204'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D00209''    and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D002''     and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','D00209,D002','11551','','','0','-1','-1','','','','','@三四级手术例数(D00209)/@住院手术例数(D002)','select ''D00204'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D00209''    and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D002''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.22: D009******************ZB_FACT_DIM_YS***D009******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='D009' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D009','sum','D009','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D009','sum','D009','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D009','sum','D009','1','0','0','DIM_YSXX','zdyskey','ysmc','主刀医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D009','sum','D009','1','0','0','DIM_SSXX','ssdmkey','ssmc','手术名称',' where',' where','sskey','','','','','','')
	go

/************No.22: D009******************ZBMX***D009******************************/

if exists(select 1 from ZBMX where id='D009')
begin
	print '新增指标D009,但指标D009已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='D009') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('D009','5','日间占同期择期手术比例(%)','0','100','4','%','1','','','0.00000','1','0','','','','','','D009','','','0','1','','','','','','0','0','0','','0','0','','')
	
end
go

/************No.22: D009******************Y_COLUMN_MAP_ZBFACT***D009******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D009' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D009','','','D00202,D00201')
	go

/************No.22: D009******************HD_ZBMX_HZ_YS***D009******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='D009')
begin
	print '新增指标D009,但指标D009已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='D009') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb D009'

end
go

/************No.22: D009******************HD_ZBMX_HZ***D009******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='D009')
begin
	print '新增指标D009,但指标D009已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='D009') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('D009','日间占同期择期手术比例(%)','','','','select ''D009'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D00202''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D00201''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''D009'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D00202''    and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D00201''     and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','D00202,D00201','11558','','','0','-1','-1','','','','','@日间手术例数(D00202)/@择期手术例数(D00201)','select ''D009'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D00202''    and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D00201''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.23: D10001******************ZB_FACT_DIM_YS***D10001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='D10001' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D10001','sum','D100','1','D002','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D10001','sum','D100','1','D002','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	go

/************No.23: D10001******************ZBMX***D10001******************************/

if exists(select 1 from ZBMX where id='D10001')
begin
	print '新增指标D10001,但指标D10001已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='D10001') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('D10001','5','出院患者微创手术(介入)占比','0','100','0','%','1','','','0.00000','1','0','','','','','','D10001','','','0','1','','','','','','D100','1','0','','1','1','1','')
	
end
go

/************No.23: D10001******************Y_COLUMN_MAP_ZBFACT***D10001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D10001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D10001','','','D100,D002')
	go

/************No.23: D10001******************HD_ZBMX_HZ_YS***D10001******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='D10001')
begin
	print '新增指标D10001,但指标D10001已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='D10001') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb D10001'

end
go

/************No.23: D10001******************HD_ZBMX_HZ***D10001******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='D10001')
begin
	print '新增指标D10001,但指标D10001已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='D10001') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('D10001','出院患者微创手术(介入)占比','','','','select ''D10001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D100'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''D10001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D100'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','D100,D002','12400','','','1','-1','-1','','','','','@出院患者微创手术(介入)例数(D100)/@住院手术例数(D002)','select ''D10001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D100'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.24: E00209******************ZB_FACT_DIM_YS***E00209******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E00209' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00209','sum','E00230','1','A111','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00209','sum','E00230','1','A111','1','DIM_ZY_ZLD','zlzkey','zlzmc','诊疗组',' where',' where','zlzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00209','sum','E00230','1','A111','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00209','sum','E00230','1','A111','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00209','sum','E00230','1','A111','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.24: E00209******************ZBMX***E00209******************************/

if exists(select 1 from ZBMX where id='E00209')
begin
	print '新增指标E00209,但指标E00209已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='E00209') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('E00209','6','住院抗菌药物使用强度','0','100','4','-','1','','','-0.01000','1','1','','','出院患者抗菌药物DDDS/出院患者实际占用总床日','','','E00209','','','0','2','','0','1','{实际值}/{目标值}<0.95','0','0','0','0','','','','','')
	
end
go

/************No.24: E00209******************Y_COLUMN_MAP_ZBFACT***E00209******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00209' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00209','','','E00230,A111')
	go

/************No.24: E00209******************HD_ZBMX_HZ_YS***E00209******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='E00209')
begin
	print '新增指标E00209,但指标E00209已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='E00209') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('E00209','住院抗菌药物使用强度（DDD）','SELECT ''E00209''  zbmx_id,a.yykey,ISNULL(b.yydm,''01'') yydm,a.kskey,c.ksdm  , CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1'') month, SUM(fz) fz,sum(fm) fm,NULL czry,GETDATE()  gxrq,a.yskey,d.ysdm,null bqkey  FROM (   select rytimekey,timekey,rybqkey,bqkey,rykskey,yykey,kskey,yskey,ybflkey,cyfskey,sex,ryzddmkey,cyzddmkey,zytskey,zlzkey
,SUM(ddds) fz,SUM(zyts)  fm
from FAT_ZY_ZYYWL  a
where timekey between @kssj  and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))  
group by rytimekey,timekey,rybqkey,bqkey,rykskey,yykey,kskey,yskey,ybflkey,cyfskey,sex,ryzddmkey,cyzddmkey,zytskey,zlzkey   ) a inner join DIM_YYXX b ON a.yykey=b.yykey 
inner join DIM_KSXX c ON a.kskey=c.kskey and a.yykey=c.yykey 
left join DIM_YSXX d ON a.yskey=d.yskey and a.yykey=d.yykey WHERE (a.kskey=@kskey or @kskey=-1) and  timekey between @kssj  and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) 
GROUP  BY a.yykey,b.yydm,a.kskey,c.ksdm,CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1''),a.yskey,d.ysdm','SELECT ''E00209''  zbmx_id,a.yykey,ISNULL(b.yydm,''01'') yydm,a.kskey,c.ksdm  , CONVERT(DATE,CONVERT(CHAR(8),DATEADD(YEAR,1,timekey),120)+''1'') month, SUM(fz) fz,sum(fm) fm,NULL czry,GETDATE()  gxrq,a.yskey,d.ysdm,null bqkey  FROM (   select rytimekey,timekey,rybqkey,bqkey,rykskey,yykey,kskey,yskey,ybflkey,cyfskey,sex,ryzddmkey,cyzddmkey,zytskey,zlzkey
,SUM(ddds) fz,SUM(zyts)  fm
from FAT_ZY_ZYYWL  a
where timekey between dateadd(year,-1,@kssj)  and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey))  
group by rytimekey,timekey,rybqkey,bqkey,rykskey,yykey,kskey,yskey,ybflkey,cyfskey,sex,ryzddmkey,cyzddmkey,zytskey,zlzkey   ) a inner join DIM_YYXX b ON a.yykey=b.yykey 
inner join DIM_KSXX c ON a.kskey=c.kskey and a.yykey=c.yykey 
left join DIM_YSXX d ON a.yskey=d.yskey and a.yykey=d.yykey WHERE (a.kskey=@kskey or @kskey=-1) and  timekey between dateadd(year,-1,@kssj)  and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) 
GROUP  BY a.yykey,b.yydm,a.kskey,c.ksdm,CONVERT(DATE,CONVERT(CHAR(8),DATEADD(YEAR,1,timekey),120)+''1''),a.yskey,d.ysdm','1','','','11589','','usp_fat_zy_zyywl','','')
	
end
go

/************No.24: E00209******************HD_ZBMX_HZ***E00209******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='E00209')
begin
	print '新增指标E00209,但指标E00209已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='E00209') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('E00209','住院抗菌药物使用强度','','','','SELECT ''E00209''  zbmx_id,a.yykey,ISNULL(b.yydm,''01'') yydm,a.kskey,c.ksdm  , CONVERT(DATE,CONVERT(CHAR(8),timekey, 120)  +   ''1'') month, SUM(fz) fz,sum(fm) fm,NULL czry,GETDATE()  gxrq,null bqkey  
FROM (   
select timekey,bqkey,yykey,kskey,yskey,zlzkey,SUM(ddds) fz,SUM(zyts)  fm  
from FACT_YY_ZY_CYYWLFX  a  
where timekey between @kssj  and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))   
group by timekey,bqkey,yykey,kskey,yskey,zlzkey   
) a 
inner join DIM_YYXX b ON a.yykey=b.yykey   
inner join DIM_KSXX c ON a.kskey=c.kskey and a.yykey=c.yykey   
WHERE timekey between @kssj  and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))   
GROUP  BY a.yykey,b.yydm,a.kskey,c.ksdm,CONVERT(DATE,CONVERT(CHAR(8),timekey,120) +   ''1'')','select ''E00209'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz ,sum(fm) fm,null czry,getdate() gxrq ,bqkey from (select yykey,yydm,kskey,ksdm,month,fz_tq as fz,0 as fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''E00230'' and month between @kssj and @jssj  union all select yykey,yydm,kskey,ksdm,month,0 as fz,fz_tq as fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A111'' and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month ,bqkey','1','','E00230,A111','11589','','','0','-1','-1','','','','','@出院患者抗菌药物DDDS(E00230)/@出院患者实际占用总床日(A111)','select ''E00209'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz ,sum(fm) fm,null czry,getdate() gxrq ,bqkey from (select yykey,yydm,kskey,ksdm,month,fz_hq as fz,0 as fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''E00230'' and month between @kssj and @jssj  union all select yykey,yydm,kskey,ksdm,month,0 as fz,fz_hq as fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A111'' and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month ,bqkey','','')
	
end
go

/************No.25: E00504******************ZB_FACT_DIM_YS***E00504******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E00504' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb E00504'
go

/************No.25: E00504******************ZBMX***E00504******************************/

if exists(select 1 from ZBMX where id='E00504')
begin
	print '新增指标E00504,但指标E00504已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='E00504') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('E00504','6','国家组织药品集中采购中标药品使用比例','0','100','0','%','1','','','0.00000','1','0','','','','','','E00504','','','0','1','','','','','','E005','1','0','','1','0','1','')
	
end
go

/************No.25: E00504******************Y_COLUMN_MAP_ZBFACT***E00504******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00504' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb E00504'
go

/************No.25: E00504******************HD_ZBMX_HZ_YS***E00504******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='E00504')
begin
	print '新增指标E00504,但指标E00504已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='E00504') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb E00504'

end
go

/************No.25: E00504******************HD_ZBMX_HZ***E00504******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='E00504')
begin
	print '新增指标E00504,但指标E00504已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='E00504') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb E00504'

end
go

/************No.26: E00902******************ZB_FACT_DIM_YS***E00902******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E00902' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00902','sum','E00901','1','A102','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00902','sum','E00901','1','A102','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00902','sum','E00901','1','A102','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.26: E00902******************ZBMX***E00902******************************/

if exists(select 1 from ZBMX where id='E00902')
begin
	print '新增指标E00902,但指标E00902已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='E00902') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('E00902','6','住院患者基本药物使用率','0','100','0','%','1','','','0.00000','1','0','','','','','','E00902','','','0','1','','','','','','E009','1','0','','0','0','','')
	
end
go

/************No.26: E00902******************Y_COLUMN_MAP_ZBFACT***E00902******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00902' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00902','','','E00901,A102')
	go

/************No.26: E00902******************HD_ZBMX_HZ_YS***E00902******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='E00902')
begin
	print '新增指标E00902,但指标E00902已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='E00902') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb E00902'

end
go

/************No.26: E00902******************HD_ZBMX_HZ***E00902******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='E00902')
begin
	print '新增指标E00902,但指标E00902已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='E00902') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('E00902','住院患者基本药物使用率','','select timekey,yykey,kskey,sum(cyrc) fz,0 fm from FACT_YY_ZY_CYYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and jbywsybz in (1) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(cyrc) fm from FACT_YY_ZY_CYYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey','','select ''E00902'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''E00901'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A102'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''E00902'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''E00901'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A102'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','E00901,A102','12403','','','1','-1','-1','','','','timekey,yykey,kskey','@住院患者基本药物使用人次(E00901)/@出院人次(A102)','select ''E00902'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''E00901'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A102'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.27: E20122******************ZB_FACT_DIM_YS***E20122******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E20122' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20122','sum','E20121','1','E201','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20122','sum','E20121','1','E201','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20122','sum','E20121','1','E201','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20122','sum','E20121','1','E201','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	go

/************No.27: E20122******************ZBMX***E20122******************************/

if exists(select 1 from ZBMX where id='E20122')
begin
	print '新增指标E20122,但指标E20122已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='E20122') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('E20122','6','点评处方比例','0','100','4','%','1','','','0.00000','1','0','','','按照处方库中处方序号统计','','','E20122','','','0','1','','','','','','E201','1','0','','0','0','','')
	
end
go

/************No.27: E20122******************Y_COLUMN_MAP_ZBFACT***E20122******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E20122' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E20122','','','E20121,E201')
	go

/************No.27: E20122******************HD_ZBMX_HZ_YS***E20122******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='E20122')
begin
	print '新增指标E20122,但指标E20122已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='E20122') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('E20122','点评处方比例','select ''E20122'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''E20121'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''E201'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''E20122'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''E20121'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''E201'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','E20121,E201','12433','','','0','select ''E20122'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''E20121'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''E201'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.27: E20122******************HD_ZBMX_HZ***E20122******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='E20122')
begin
	print '新增指标E20122,但指标E20122已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='E20122') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('E20122','点评处方比例','','select timekey,yykey,kskey,yskey,sum(dpcfs) fz,0 fm from FACT_YP_CFLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey union all select timekey,yykey,kskey,yskey,0 fz,sum(cfs) fm from FACT_YP_CFLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey','','select ''E20122'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''E20121'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''E201'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''E20122'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''E20121'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''E201'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','E20121,E201','12433','','','0','-1','-1','','','','timekey,yykey,kskey,yskey','@点评处方数(E20121)/@门急诊处方数(E201)','select ''E20122'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''E20121'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''E201'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.28: E20203******************ZB_FACT_DIM_YS***E20203******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E20203' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20203','sum','E20103','1','E20105','1','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20203','sum','E20103','1','E20105','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20203','sum','E20103','1','E20105','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20203','sum','E20103','1','E20105','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	go

/************No.28: E20203******************ZBMX***E20203******************************/

if exists(select 1 from ZBMX where id='E20203')
begin
	print '新增指标E20203,但指标E20203已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='E20203') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('E20203','6','门急诊基本药品处方率(%)','0','100','4','%','1','','','0.05000','1','1','','','门急诊基本药品处方数(E20103)/门急诊处方数(E201)','','','E20203','','','0','1','','0','1','{实际值}/{目标值}<0.95','0','0','0','0','','','','','')
	
end
go

/************No.28: E20203******************Y_COLUMN_MAP_ZBFACT***E20203******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E20203' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E20203','','','E20103,E201')
	go

/************No.28: E20203******************HD_ZBMX_HZ_YS***E20203******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='E20203')
begin
	print '新增指标E20203,但指标E20203已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='E20203') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('E20203','门急诊基本药品处方率(%)','select ''E20203'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''E20103''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''E201''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''E20203'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''E20103'' union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''E201'')t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','E20103,E201','11303','SELECT ''E20203'' zbmx_id,t.yykey,b.yydm,t.kskey,c.ksdm,t.yskey,ysdm, month,SUM(fz) fz,SUM(fm) fm ,NULL czry,getdate() gxrq          
FROM          
(         
 SELECT yykey, kskey,yskey,fz fz,0 fm,month FROM FACT_RESULT_KS_YS_VALUE_M WHERE zbmx_id =''E20103''         
 UNION all          
 SELECT yykey, kskey,yskey,0 fz,fz fm,month FROM FACT_RESULT_KS_YS_VALUE_M WHERE zbmx_id =''E20105''         
)t          
inner join DIM_YYXX b ON t.yykey=b.yykey         
inner join DIM_KSXX c ON t.kskey=c.kskey      
left join DIM_YSXX d ON t.yskey=d.yskey and t.yykey=d.yykey              
GROUP BY t.yykey,b.yydm,t.kskey,c.ksdm,t.yskey,ysdm,month   ','','0','')
	
end
go

/************No.28: E20203******************HD_ZBMX_HZ***E20203******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='E20203')
begin
	print '新增指标E20203,但指标E20203已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='E20203') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('E20203','门急诊基本药品处方率(%)','','','','select ''E20203'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''E20103''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''E201''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''E20203'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''E20103''    and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''E201''     and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','E20103,E201','11303','','','0','-1','-1','','','','','@门急诊基本药品处方数(E20103)/@门急诊处方数(E201)','select ''E20203'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''E20103''    and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''E201''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.29: F50002******************ZB_FACT_DIM_YS***F50002******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='F50002' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('F50002','sum','F50001','1','F500','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('F50002','sum','F50001','1','F500','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.29: F50002******************ZBMX***F50002******************************/

if exists(select 1 from ZBMX where id='F50002')
begin
	print '新增指标F50002,但指标F50002已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='F50002') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('F50002','7','优质护理服务病房覆盖率','0','100','0','%','1','','','0.00000','1','0','','','','','','F50002','','','0','1','','','','','','F500','1','0','','1','1','1','')
	
end
go

/************No.29: F50002******************Y_COLUMN_MAP_ZBFACT***F50002******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F50002' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F50002','','','F50001,F500')
	go

/************No.29: F50002******************HD_ZBMX_HZ_YS***F50002******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='F50002')
begin
	print '新增指标F50002,但指标F50002已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='F50002') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb F50002'

end
go

/************No.29: F50002******************HD_ZBMX_HZ***F50002******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='F50002')
begin
	print '新增指标F50002,但指标F50002已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='F50002') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('F50002','优质护理服务病房覆盖率','','','','select ''F50002'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''F50001'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''F500'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''F50002'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''F50001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''F500'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','F50001,F500','12401','','','1','-1','-1','','','','','@已经开展优质护理服务的病房数(F50001)/@病房总数(F500)','select ''F50002'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''F50001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''F500'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.30: F501******************ZB_FACT_DIM_YS***F501******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='F501' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb F501'
go

/************No.30: F501******************ZBMX***F501******************************/

if exists(select 1 from ZBMX where id='F501')
begin
	print '新增指标F501,但指标F501已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='F501') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('F501','7','门诊患者满意度','0','100','4','%','1','','','0.00000','1','0','','','','','','F501','','','0','1','','','','','','0','1','0','','1','0','1','')
	
end
go

/************No.30: F501******************Y_COLUMN_MAP_ZBFACT***F501******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F501' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb F501'
go

/************No.30: F501******************HD_ZBMX_HZ_YS***F501******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='F501')
begin
	print '新增指标F501,但指标F501已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='F501') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb F501'

end
go

/************No.30: F501******************HD_ZBMX_HZ***F501******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='F501')
begin
	print '新增指标F501,但指标F501已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='F501') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb F501'

end
go

/************No.31: F502******************ZB_FACT_DIM_YS***F502******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='F502' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb F502'
go

/************No.31: F502******************ZBMX***F502******************************/

if exists(select 1 from ZBMX where id='F502')
begin
	print '新增指标F502,但指标F502已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='F502') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('F502','7','住院患者满意度','0','100','4','%','0','','','0.00000','1','0','','','','','','F502','','','0','1','','','','','','0','1','0','','1','0','1','')
	
end
go

/************No.31: F502******************Y_COLUMN_MAP_ZBFACT***F502******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F502' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb F502'
go

/************No.31: F502******************HD_ZBMX_HZ_YS***F502******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='F502')
begin
	print '新增指标F502,但指标F502已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='F502') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb F502'

end
go

/************No.31: F502******************HD_ZBMX_HZ***F502******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='F502')
begin
	print '新增指标F502,但指标F502已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='F502') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb F502'

end
go

/************No.32: F503******************ZB_FACT_DIM_YS***F503******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='F503' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb F503'
go

/************No.32: F503******************ZBMX***F503******************************/

if exists(select 1 from ZBMX where id='F503')
begin
	print '新增指标F503,但指标F503已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='F503') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('F503','7','医务人员满意度','0','100','4','%','1','','','0.00000','1','0','','','','','','F503','','','0','1','','','','','','0','1','0','','1','0','1','')
	
end
go

/************No.32: F503******************Y_COLUMN_MAP_ZBFACT***F503******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F503' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb F503'
go

/************No.32: F503******************HD_ZBMX_HZ_YS***F503******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='F503')
begin
	print '新增指标F503,但指标F503已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='F503') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb F503'

end
go

/************No.32: F503******************HD_ZBMX_HZ***F503******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='F503')
begin
	print '新增指标F503,但指标F503已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='F503') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb F503'

end
go

/************No.33: G30002******************ZB_FACT_DIM_YS***G30002******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='G30002' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G30002','sum','G30001','1','G300','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G30002','sum','G30001','1','G300','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G30002','sum','G30001','1','G300','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	go

/************No.33: G30002******************ZBMX***G30002******************************/

if exists(select 1 from ZBMX where id='G30002')
begin
	print '新增指标G30002,但指标G30002已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='G30002') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('G30002','8','基本药物采购(入库)品种数占比','0','100','0','%','1','','','0.00000','1','0','','','','','','G30002','','','0','1','','','','','','G300','0','0','','0','0','','')
	
end
go

/************No.33: G30002******************Y_COLUMN_MAP_ZBFACT***G30002******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='G30002' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('G30002','','','G30001,G300')
	go

/************No.33: G30002******************HD_ZBMX_HZ_YS***G30002******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='G30002')
begin
	print '新增指标G30002,但指标G30002已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='G30002') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb G30002'

end
go

/************No.33: G30002******************HD_ZBMX_HZ***G30002******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='G30002')
begin
	print '新增指标G30002,但指标G30002已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='G30002') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('G30002','基本药物采购(入库)品种数占比','','select timekey,yykey,kskey,ypdm fz,0 fm from FACT_YP_JXCFX_YK a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and ykczlbkey in (1) union all select timekey,yykey,kskey,0 fz,ypdm fm from FACT_YP_JXCFX_YK a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))','','select ''G30002'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''G30001'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''G300'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''G30002'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''G30001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''G300'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','G30001,G300','12406','','','0','-1','-1','','','','timekey,yykey,kskey','@采购(入库)基本药物品种数(G30001)/@采购(入库)药物品种数(G300)','select ''G30002'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''G30001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''G300'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.34: J00304******************ZB_FACT_DIM_YS***J00304******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='J00304' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb J00304'
go

/************No.34: J00304******************ZBMX***J00304******************************/

if exists(select 1 from ZBMX where id='J00304')
begin
	print '新增指标J00304,但指标J00304已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='J00304') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('J00304','11','通过国家室间质量评价的临床检验项目数','0','1','0','个','0','','','0.00000','1','0','','','检验中包含的项目数量','','','J00304','','','0','1','','','','','','J003','1','0','','1','0','1','')
	
end
go

/************No.34: J00304******************Y_COLUMN_MAP_ZBFACT***J00304******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='J00304' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb J00304'
go

/************No.34: J00304******************HD_ZBMX_HZ_YS***J00304******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='J00304')
begin
	print '新增指标J00304,但指标J00304已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='J00304') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb J00304'

end
go

/************No.34: J00304******************HD_ZBMX_HZ***J00304******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='J00304')
begin
	print '新增指标J00304,但指标J00304已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='J00304') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb J00304'

end
go

/************No.35: J108******************ZB_FACT_DIM_YS***J108******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='J108' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J108','sum','J108','1','0','0','DIM_LIS_INSTRUMENT','yqkey','yqmc','检验仪器',' where',' where','yqkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J108','sum','J108','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J108','sum','J108','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J108','sum','J108','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J108','sum','J108','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J108','sum','J108','1','0','0','DIM_JCLB','jclbkey','jclbmc','检查类别',' where',' where','jclbkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J108','sum','J108','1','0','0','DIM_MZZY','mzzykey','mzzyname','门诊住院',' where',' where','mzzykey','','','','','','')
	go

/************No.35: J108******************ZBMX***J108******************************/

if exists(select 1 from ZBMX where id='J108')
begin
	print '新增指标J108,但指标J108已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='J108') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('J108','11','大型医用影像设备检查的阳性率(CT、MRI、DSA、SPECT、PET-CT)','0','100','4','%','1','','','0.00000','0','1','','','','','','J108','','','0','1','','','','','','','','','','1','1','1','0')
	
end
go

/************No.35: J108******************Y_COLUMN_MAP_ZBFACT***J108******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='J108' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('J108','','','J10901,J109')
	go

/************No.35: J108******************HD_ZBMX_HZ_YS***J108******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='J108')
begin
	print '新增指标J108,但指标J108已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='J108') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb J108'

end
go

/************No.35: J108******************HD_ZBMX_HZ***J108******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='J108')
begin
	print '新增指标J108,但指标J108已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='J108') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('J108','大型医用影像设备检查的阳性率(CT、MRI、DSA、SPECT、PET-CT)','','','','select ''J108'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''J10901'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''J109'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''J108'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''J10901'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''J109'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','J10901,J109','','','','0','-1','-1','','','','','@大型医用设备检查阳性例数(J10901)/@大型医用设备检查总例数(J109)','select ''J108'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''J10901'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''J109'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.36: ZBZL_YXZB_DRGS0020502******************ZB_FACT_DIM_YS***ZBZL_YXZB_DRGS0020502******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZBZL_YXZB_DRGS0020502' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS0020502','sum','ZBZL_YXZB_DRGS0020501','1','ZBZL_YXZB_DRGS002','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS0020502','sum','ZBZL_YXZB_DRGS0020501','1','ZBZL_YXZB_DRGS002','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS0020502','sum','ZBZL_YXZB_DRGS0020501','1','ZBZL_YXZB_DRGS002','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS0020502','sum','ZBZL_YXZB_DRGS0020501','1','ZBZL_YXZB_DRGS002','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS0020502','sum','ZBZL_YXZB_DRGS0020501','1','ZBZL_YXZB_DRGS002','1','DIM_DRGS','drgskey','drgsmc','诊断相关分组',' where',' where','drgskey','','','','','','')
	go

/************No.36: ZBZL_YXZB_DRGS0020502******************ZBMX***ZBZL_YXZB_DRGS0020502******************************/

if exists(select 1 from ZBMX where id='ZBZL_YXZB_DRGS0020502')
begin
	print '新增指标ZBZL_YXZB_DRGS0020502,但指标ZBZL_YXZB_DRGS0020502已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZBZL_YXZB_DRGS0020502') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZBZL_YXZB_DRGS0020502','ZLZB09','低风险DRG组死亡率','0','100','4','%','1','','','0.00000','1','0','','','','','','ZBZL_YXZB_DRGS0020502','','','0','1','','','','','','0','0','0','','','','','')
	
end
go

/************No.36: ZBZL_YXZB_DRGS0020502******************Y_COLUMN_MAP_ZBFACT***ZBZL_YXZB_DRGS0020502******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZBZL_YXZB_DRGS0020502' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZBZL_YXZB_DRGS0020502','','','ZBZL_YXZB_DRGS0020501,ZBZL_YXZB_DRGS001')
	go

/************No.36: ZBZL_YXZB_DRGS0020502******************HD_ZBMX_HZ_YS***ZBZL_YXZB_DRGS0020502******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZBZL_YXZB_DRGS0020502')
begin
	print '新增指标ZBZL_YXZB_DRGS0020502,但指标ZBZL_YXZB_DRGS0020502已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZBZL_YXZB_DRGS0020502') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('ZBZL_YXZB_DRGS0020502','低风险DRG组死亡率','select ''ZBZL_YXZB_DRGS0020502'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''ZBZL_YXZB_DRGS0020501'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''ZBZL_YXZB_DRGS001'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''ZBZL_YXZB_DRGS0020502'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZBZL_YXZB_DRGS0020501'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZBZL_YXZB_DRGS001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','ZBZL_YXZB_DRGS0020501,ZBZL_YXZB_DRGS001','','','','0','select ''ZBZL_YXZB_DRGS0020502'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZBZL_YXZB_DRGS0020501'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZBZL_YXZB_DRGS001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.36: ZBZL_YXZB_DRGS0020502******************HD_ZBMX_HZ***ZBZL_YXZB_DRGS0020502******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZBZL_YXZB_DRGS0020502')
begin
	print '新增指标ZBZL_YXZB_DRGS0020502,但指标ZBZL_YXZB_DRGS0020502已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZBZL_YXZB_DRGS0020502') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZBZL_YXZB_DRGS0020502','低风险DRG组死亡率','','select timekey,yykey,kskey,yskey,drgskey,sum(swls) fz,0 fm from FACT_GZ_YXZB_DRGS a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and fxpgdjkey in (1) group by timekey,yykey,kskey,yskey,drgskey union all select timekey,yykey,kskey,yskey,drgskey,0 fz,drgskey fm from FACT_GZ_YXZB_DRGS a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))','','select ''ZBZL_YXZB_DRGS0020502'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZBZL_YXZB_DRGS0020501'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZBZL_YXZB_DRGS001'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZBZL_YXZB_DRGS0020502'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZBZL_YXZB_DRGS0020501'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZBZL_YXZB_DRGS001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZBZL_YXZB_DRGS0020501,ZBZL_YXZB_DRGS001','11882','','','0','-1','-1','','','','timekey,yykey,kskey,yskey,drgskey','@低风险DRG组死亡例数(ZBZL_YXZB_DRGS0020501)/@DRG组数(ZBZL_YXZB_DRGS001)','select ''ZBZL_YXZB_DRGS0020502'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZBZL_YXZB_DRGS0020501'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZBZL_YXZB_DRGS001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.37: ZLZB_AQ0107******************ZB_FACT_DIM_YS***ZLZB_AQ0107******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_AQ0107' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0107','sum','ZLZB_BFZ0018','1','ZLZB_AQ00650','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0107','sum','ZLZB_BFZ0018','1','ZLZB_AQ00650','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.37: ZLZB_AQ0107******************ZBMX***ZLZB_AQ0107******************************/

if exists(select 1 from ZBMX where id='ZLZB_AQ0107')
begin
	print '新增指标ZLZB_AQ0107,但指标ZLZB_AQ0107已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_AQ0107') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_AQ0107','ZLZB05','手术并发症发生率','0','100','4','%','1','','','0.00000','1','1','','','','','','ZLZB_AQ0107','','','0','1','','','','','0','','','','','','','','')
	
end
go

/************No.37: ZLZB_AQ0107******************Y_COLUMN_MAP_ZBFACT***ZLZB_AQ0107******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_AQ0107' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_AQ0107','','','ZLZB_BFZ0018,ZLZB_AQ00650')
	go

/************No.37: ZLZB_AQ0107******************HD_ZBMX_HZ_YS***ZLZB_AQ0107******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_AQ0107')
begin
	print '新增指标ZLZB_AQ0107,但指标ZLZB_AQ0107已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_AQ0107') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_AQ0107'

end
go

/************No.37: ZLZB_AQ0107******************HD_ZBMX_HZ***ZLZB_AQ0107******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0107')
begin
	print '新增指标ZLZB_AQ0107,但指标ZLZB_AQ0107已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0107') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_AQ0107','手术并发症发生率','','','','select ''ZLZB_AQ0107'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_BFZ0018'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_AQ00650'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_AQ0107'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_BFZ0018'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_AQ00650'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_BFZ0018,ZLZB_AQ00650','8253','','','0','-1','-1','','','','','@手术后并发症发生人次(ZLZB_BFZ0018)/@手术或操作患者出院人次（年满18周岁）(ZLZB_AQ00650)','select ''ZLZB_AQ0107'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_BFZ0018'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_AQ00650'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.38: ZLZB_DBZ901******************ZB_FACT_DIM_YS***ZLZB_DBZ901******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_DBZ901' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ901','sum','ZLZB_DBZ901','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ901','sum','ZLZB_DBZ901','1','0','0','DIM_ZLZB_JBBZ_DBZ','dbzkey','dbzmc','单病种名称',' where',' where','dbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ901','sum','ZLZB_DBZ901','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ901','sum','ZLZB_DBZ901','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ901','sum','ZLZB_DBZ901','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ901','sum','ZLZB_DBZ901','1','0','0','DIM_CYFS','cyfskey','cyfsmc','出院方式',' where',' where','cyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ901','sum','ZLZB_DBZ901','1','0','0','DIM_ZYTS','zytskey','zyts','住院天数',' where',' where','zytskey','','','','','','')
	go

/************No.38: ZLZB_DBZ901******************ZBMX***ZLZB_DBZ901******************************/

if exists(select 1 from ZBMX where id='ZLZB_DBZ901')
begin
	print '新增指标ZLZB_DBZ901,但指标ZLZB_DBZ901已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_DBZ901') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_DBZ901','39','总例数','0','1','0','例','0','','','0.00000','1','0','','2018-12-21 16:59:17','','','','ZLZB_DBZ901','','','0','1','','','','','','0','0','0','','','','','')
	
end
go

/************No.38: ZLZB_DBZ901******************Y_COLUMN_MAP_ZBFACT***ZLZB_DBZ901******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_DBZ901' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_DBZ901','FACT_ZLZB_JBBZ_DBZ','ls','')
	go

/************No.38: ZLZB_DBZ901******************HD_ZBMX_HZ_YS***ZLZB_DBZ901******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ901')
begin
	print '新增指标ZLZB_DBZ901,但指标ZLZB_DBZ901已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ901') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('ZLZB_DBZ901','总例数','select ''ZLZB_DBZ901'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm','select ''ZLZB_DBZ901'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm','1','','','0','','','0','select ''ZLZB_DBZ901'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm')
	
end
go

/************No.38: ZLZB_DBZ901******************HD_ZBMX_HZ***ZLZB_DBZ901******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ901')
begin
	print '新增指标ZLZB_DBZ901,但指标ZLZB_DBZ901已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ901') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_DBZ901','总例数','select ''ZLZB_DBZ901'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ901'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ901'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','11702','','','0','1','0','FACT_ZLZB_JBBZ_DBZ','ls','','timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','','select ''ZLZB_DBZ901'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','')
	
end
go

/************No.39: ZLZB_DBZ902******************ZB_FACT_DIM_YS***ZLZB_DBZ902******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_DBZ902' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ902','sum','ZLZB_DBZ902','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ902','sum','ZLZB_DBZ902','1','0','0','DIM_ZLZB_JBBZ_DBZ','dbzkey','dbzmc','单病种名称',' where',' where','dbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ902','sum','ZLZB_DBZ902','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ902','sum','ZLZB_DBZ902','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ902','sum','ZLZB_DBZ902','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ902','sum','ZLZB_DBZ902','1','0','0','DIM_CYFS','cyfskey','cyfsmc','出院方式',' where',' where','cyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ902','sum','ZLZB_DBZ902','1','0','0','DIM_ZYTS','zytskey','zyts','住院天数',' where',' where','zytskey','','','','','','')
	go

/************No.39: ZLZB_DBZ902******************ZBMX***ZLZB_DBZ902******************************/

if exists(select 1 from ZBMX where id='ZLZB_DBZ902')
begin
	print '新增指标ZLZB_DBZ902,但指标ZLZB_DBZ902已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_DBZ902') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_DBZ902','39','死亡例数','0','1','0','例','0','','','0.00000','1','0','','2018-12-21 16:59:17','','','','ZLZB_DBZ902','','','0','1','','','','','','0','0','0','','','','','')
	
end
go

/************No.39: ZLZB_DBZ902******************Y_COLUMN_MAP_ZBFACT***ZLZB_DBZ902******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_DBZ902' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_DBZ902','FACT_ZLZB_JBBZ_DBZ','swls','')
	go

/************No.39: ZLZB_DBZ902******************HD_ZBMX_HZ_YS***ZLZB_DBZ902******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ902')
begin
	print '新增指标ZLZB_DBZ902,但指标ZLZB_DBZ902已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ902') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('ZLZB_DBZ902','死亡例数','select ''ZLZB_DBZ902'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(swls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm','select ''ZLZB_DBZ902'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(swls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm','1','','','0','','','0','select ''ZLZB_DBZ902'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(swls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm')
	
end
go

/************No.39: ZLZB_DBZ902******************HD_ZBMX_HZ***ZLZB_DBZ902******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ902')
begin
	print '新增指标ZLZB_DBZ902,但指标ZLZB_DBZ902已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ902') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_DBZ902','死亡例数','select ''ZLZB_DBZ902'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(swls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ902'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(swls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ902'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(swls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','11703','','','0','1','0','FACT_ZLZB_JBBZ_DBZ','swls','','timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','','select ''ZLZB_DBZ902'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(swls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','')
	
end
go

/************No.40: ZLZB_DBZ903******************ZB_FACT_DIM_YS***ZLZB_DBZ903******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_DBZ903' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ903','sum','ZLZB_DBZ90301','1','ZLZB_DBZ901','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ903','sum','ZLZB_DBZ90301','1','ZLZB_DBZ901','1','DIM_ZLZB_JBBZ_DBZ','dbzkey','dbzmc','单病种名称',' where',' where','dbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ903','sum','ZLZB_DBZ90301','1','ZLZB_DBZ901','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ903','sum','ZLZB_DBZ90301','1','ZLZB_DBZ901','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ903','sum','ZLZB_DBZ90301','1','ZLZB_DBZ901','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ903','sum','ZLZB_DBZ90301','1','ZLZB_DBZ901','1','DIM_CYFS','cyfskey','cyfsmc','出院方式',' where',' where','cyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ903','sum','ZLZB_DBZ90301','1','ZLZB_DBZ901','1','DIM_ZYTS','zytskey','zyts','住院天数',' where',' where','zytskey','','','','','','')
	go

/************No.40: ZLZB_DBZ903******************ZBMX***ZLZB_DBZ903******************************/

if exists(select 1 from ZBMX where id='ZLZB_DBZ903')
begin
	print '新增指标ZLZB_DBZ903,但指标ZLZB_DBZ903已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_DBZ903') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_DBZ903','39','平均住院天数','0','1','0','天','1','','','0.00000','1','0','','2018-12-21 16:59:17','','','','ZLZB_DBZ903','','','0','1','','','','','','0','0','0','','','','','')
	
end
go

/************No.40: ZLZB_DBZ903******************Y_COLUMN_MAP_ZBFACT***ZLZB_DBZ903******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_DBZ903' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_DBZ903','','','ZLZB_DBZ90301,ZLZB_DBZ901')
	go

/************No.40: ZLZB_DBZ903******************HD_ZBMX_HZ_YS***ZLZB_DBZ903******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ903')
begin
	print '新增指标ZLZB_DBZ903,但指标ZLZB_DBZ903已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ903') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('ZLZB_DBZ903','平均住院天数','select ''ZLZB_DBZ903'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''ZLZB_DBZ90301''   and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''ZLZB_DBZ901''  and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''ZLZB_DBZ903'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ90301'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','ZLZB_DBZ90301,ZLZB_DBZ901','0','','','0','select ''ZLZB_DBZ903'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ90301''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.40: ZLZB_DBZ903******************HD_ZBMX_HZ***ZLZB_DBZ903******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ903')
begin
	print '新增指标ZLZB_DBZ903,但指标ZLZB_DBZ903已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ903') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_DBZ903','平均住院天数','','select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zzyts) fz,0 fm from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey union all select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,0 fz,sum(ls) fm from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','','select ''ZLZB_DBZ903'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_DBZ90301''   and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_DBZ901''  and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_DBZ903'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ90301''   and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_DBZ90301,ZLZB_DBZ901','11705','','','0','-1','-1','','','','timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','@总住院天数(ZLZB_DBZ90301)/@总例数(ZLZB_DBZ901)','select ''ZLZB_DBZ903'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ90301''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.41: ZLZB_DBZ90301******************ZB_FACT_DIM_YS***ZLZB_DBZ90301******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_DBZ90301' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90301','sum','ZLZB_DBZ90301','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90301','sum','ZLZB_DBZ90301','1','0','0','DIM_ZLZB_JBBZ_DBZ','dbzkey','dbzmc','单病种名称',' where',' where','dbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90301','sum','ZLZB_DBZ90301','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90301','sum','ZLZB_DBZ90301','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90301','sum','ZLZB_DBZ90301','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90301','sum','ZLZB_DBZ90301','1','0','0','DIM_CYFS','cyfskey','cyfsmc','出院方式',' where',' where','cyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90301','sum','ZLZB_DBZ90301','1','0','0','DIM_ZYTS','zytskey','zyts','住院天数',' where',' where','zytskey','','','','','','')
	go

/************No.41: ZLZB_DBZ90301******************ZBMX***ZLZB_DBZ90301******************************/

if exists(select 1 from ZBMX where id='ZLZB_DBZ90301')
begin
	print '新增指标ZLZB_DBZ90301,但指标ZLZB_DBZ90301已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_DBZ90301') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_DBZ90301','39','总住院天数','0','1','0','天','0','','','0.00000','1','0','','2018-12-21 16:59:17','','','','ZLZB_DBZ90301','','','0','1','','','','','','0','0','0','','','','','')
	
end
go

/************No.41: ZLZB_DBZ90301******************Y_COLUMN_MAP_ZBFACT***ZLZB_DBZ90301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_DBZ90301' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_DBZ90301','FACT_ZLZB_JBBZ_DBZ','zzyts','')
	go

/************No.41: ZLZB_DBZ90301******************HD_ZBMX_HZ_YS***ZLZB_DBZ90301******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ90301')
begin
	print '新增指标ZLZB_DBZ90301,但指标ZLZB_DBZ90301已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ90301') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('ZLZB_DBZ90301','总住院天数','select ''ZLZB_DBZ90301'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zzyts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm','select ''ZLZB_DBZ90301'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zzyts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm','1','','','0','','','0','select ''ZLZB_DBZ90301'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zzyts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm')
	
end
go

/************No.41: ZLZB_DBZ90301******************HD_ZBMX_HZ***ZLZB_DBZ90301******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ90301')
begin
	print '新增指标ZLZB_DBZ90301,但指标ZLZB_DBZ90301已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ90301') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_DBZ90301','总住院天数','select ''ZLZB_DBZ90301'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zzyts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ90301'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zzyts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ90301'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zzyts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','11704','','','0','1','0','FACT_ZLZB_JBBZ_DBZ','zzyts','','timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','','select ''ZLZB_DBZ90301'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zzyts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','')
	
end
go

/************No.42: ZLZB_DBZ904******************ZB_FACT_DIM_YS***ZLZB_DBZ904******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_DBZ904' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ904','sum','ZLZB_DBZ90401','1','ZLZB_DBZ901','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ904','sum','ZLZB_DBZ90401','1','ZLZB_DBZ901','1','DIM_ZLZB_JBBZ_DBZ','dbzkey','dbzmc','单病种名称',' where',' where','dbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ904','sum','ZLZB_DBZ90401','1','ZLZB_DBZ901','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ904','sum','ZLZB_DBZ90401','1','ZLZB_DBZ901','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ904','sum','ZLZB_DBZ90401','1','ZLZB_DBZ901','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ904','sum','ZLZB_DBZ90401','1','ZLZB_DBZ901','1','DIM_CYFS','cyfskey','cyfsmc','出院方式',' where',' where','cyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ904','sum','ZLZB_DBZ90401','1','ZLZB_DBZ901','1','DIM_ZYTS','zytskey','zyts','住院天数',' where',' where','zytskey','','','','','','')
	go

/************No.42: ZLZB_DBZ904******************ZBMX***ZLZB_DBZ904******************************/

if exists(select 1 from ZBMX where id='ZLZB_DBZ904')
begin
	print '新增指标ZLZB_DBZ904,但指标ZLZB_DBZ904已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_DBZ904') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_DBZ904','39','术前平均等待天数','0','1','0','天','1','','','0.00000','1','0','','2018-12-21 16:59:17','','','','ZLZB_DBZ904','','','0','1','','','','','','0','0','0','','','','','')
	
end
go

/************No.42: ZLZB_DBZ904******************Y_COLUMN_MAP_ZBFACT***ZLZB_DBZ904******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_DBZ904' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_DBZ904','','','ZLZB_DBZ90401,ZLZB_DBZ901')
	go

/************No.42: ZLZB_DBZ904******************HD_ZBMX_HZ_YS***ZLZB_DBZ904******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ904')
begin
	print '新增指标ZLZB_DBZ904,但指标ZLZB_DBZ904已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ904') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('ZLZB_DBZ904','术前平均等待天数','select ''ZLZB_DBZ904'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''ZLZB_DBZ90401''   and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''ZLZB_DBZ901''  and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''ZLZB_DBZ904'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ90401'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','ZLZB_DBZ90401,ZLZB_DBZ901','0','','','0','select ''ZLZB_DBZ904'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ90401''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.42: ZLZB_DBZ904******************HD_ZBMX_HZ***ZLZB_DBZ904******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ904')
begin
	print '新增指标ZLZB_DBZ904,但指标ZLZB_DBZ904已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ904') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_DBZ904','术前平均等待天数','','select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(sqddts) fz,0 fm from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey union all select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,0 fz,sum(ls) fm from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','','select ''ZLZB_DBZ904'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_DBZ90401''   and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_DBZ901''  and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_DBZ904'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ90401''   and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_DBZ90401,ZLZB_DBZ901','11707','','','0','-1','-1','','','','timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','@术前平均住院天数(ZLZB_DBZ90401)/@总例数(ZLZB_DBZ901)','select ''ZLZB_DBZ904'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ90401''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.43: ZLZB_DBZ90401******************ZB_FACT_DIM_YS***ZLZB_DBZ90401******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_DBZ90401' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90401','sum','ZLZB_DBZ90401','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90401','sum','ZLZB_DBZ90401','1','0','0','DIM_ZLZB_JBBZ_DBZ','dbzkey','dbzmc','单病种名称',' where',' where','dbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90401','sum','ZLZB_DBZ90401','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90401','sum','ZLZB_DBZ90401','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90401','sum','ZLZB_DBZ90401','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90401','sum','ZLZB_DBZ90401','1','0','0','DIM_CYFS','cyfskey','cyfsmc','出院方式',' where',' where','cyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90401','sum','ZLZB_DBZ90401','1','0','0','DIM_ZYTS','zytskey','zyts','住院天数',' where',' where','zytskey','','','','','','')
	go

/************No.43: ZLZB_DBZ90401******************ZBMX***ZLZB_DBZ90401******************************/

if exists(select 1 from ZBMX where id='ZLZB_DBZ90401')
begin
	print '新增指标ZLZB_DBZ90401,但指标ZLZB_DBZ90401已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_DBZ90401') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_DBZ90401','39','术前平均住院天数','0','1','0','天','0','','','0.00000','1','0','','2018-12-21 16:59:17','','','','ZLZB_DBZ90401','','','0','1','','','','','','0','0','0','','','','','')
	
end
go

/************No.43: ZLZB_DBZ90401******************Y_COLUMN_MAP_ZBFACT***ZLZB_DBZ90401******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_DBZ90401' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_DBZ90401','FACT_ZLZB_JBBZ_DBZ','sqddts','')
	go

/************No.43: ZLZB_DBZ90401******************HD_ZBMX_HZ_YS***ZLZB_DBZ90401******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ90401')
begin
	print '新增指标ZLZB_DBZ90401,但指标ZLZB_DBZ90401已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ90401') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('ZLZB_DBZ90401','术前平均住院天数','select ''ZLZB_DBZ90401'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(sqddts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm','select ''ZLZB_DBZ90401'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(sqddts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm','1','','','0','','','0','select ''ZLZB_DBZ90401'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(sqddts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm')
	
end
go

/************No.43: ZLZB_DBZ90401******************HD_ZBMX_HZ***ZLZB_DBZ90401******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ90401')
begin
	print '新增指标ZLZB_DBZ90401,但指标ZLZB_DBZ90401已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ90401') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_DBZ90401','术前平均住院天数','select ''ZLZB_DBZ90401'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(sqddts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ90401'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(sqddts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ90401'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(sqddts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','11706','','','0','1','0','FACT_ZLZB_JBBZ_DBZ','sqddts','','timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','','select ''ZLZB_DBZ90401'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(sqddts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','')
	
end
go

/************No.44: ZLZB_DBZ905******************ZB_FACT_DIM_YS***ZLZB_DBZ905******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_DBZ905' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ905','sum','ZLZB_DBZ905','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ905','sum','ZLZB_DBZ905','1','0','0','DIM_ZLZB_JBBZ_DBZ','dbzkey','dbzmc','单病种名称',' where',' where','dbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ905','sum','ZLZB_DBZ905','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ905','sum','ZLZB_DBZ905','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ905','sum','ZLZB_DBZ905','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ905','sum','ZLZB_DBZ905','1','0','0','DIM_CYFS','cyfskey','cyfsmc','出院方式',' where',' where','cyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ905','sum','ZLZB_DBZ905','1','0','0','DIM_ZYTS','zytskey','zyts','住院天数',' where',' where','zytskey','','','','','','')
	go

/************No.44: ZLZB_DBZ905******************ZBMX***ZLZB_DBZ905******************************/

if exists(select 1 from ZBMX where id='ZLZB_DBZ905')
begin
	print '新增指标ZLZB_DBZ905,但指标ZLZB_DBZ905已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_DBZ905') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_DBZ905','39','总费用','0','10000','0','万元','0','','','0.00000','1','0','','2018-12-21 16:59:17','','','','ZLZB_DBZ905','','','0','1','','','','','','0','0','0','','','','','')
	
end
go

/************No.44: ZLZB_DBZ905******************Y_COLUMN_MAP_ZBFACT***ZLZB_DBZ905******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_DBZ905' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_DBZ905','FACT_ZLZB_JBBZ_DBZ','zfy','')
	go

/************No.44: ZLZB_DBZ905******************HD_ZBMX_HZ_YS***ZLZB_DBZ905******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ905')
begin
	print '新增指标ZLZB_DBZ905,但指标ZLZB_DBZ905已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ905') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('ZLZB_DBZ905','总费用','select ''ZLZB_DBZ905'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm','select ''ZLZB_DBZ905'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm','1','','','0','','','0','select ''ZLZB_DBZ905'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm')
	
end
go

/************No.44: ZLZB_DBZ905******************HD_ZBMX_HZ***ZLZB_DBZ905******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ905')
begin
	print '新增指标ZLZB_DBZ905,但指标ZLZB_DBZ905已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ905') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_DBZ905','总费用','select ''ZLZB_DBZ905'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ905'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ905'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','11708','','','0','1','0','FACT_ZLZB_JBBZ_DBZ','zfy','','timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','','select ''ZLZB_DBZ905'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','')
	
end
go

/************No.45: ZLZB_DBZ906******************ZB_FACT_DIM_YS***ZLZB_DBZ906******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_DBZ906' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ906','sum','ZLZB_DBZ906','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ906','sum','ZLZB_DBZ906','1','0','0','DIM_ZLZB_JBBZ_DBZ','dbzkey','dbzmc','单病种名称',' where',' where','dbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ906','sum','ZLZB_DBZ906','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ906','sum','ZLZB_DBZ906','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ906','sum','ZLZB_DBZ906','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ906','sum','ZLZB_DBZ906','1','0','0','DIM_CYFS','cyfskey','cyfsmc','出院方式',' where',' where','cyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ906','sum','ZLZB_DBZ906','1','0','0','DIM_ZYTS','zytskey','zyts','住院天数',' where',' where','zytskey','','','','','','')
	go

/************No.45: ZLZB_DBZ906******************ZBMX***ZLZB_DBZ906******************************/

if exists(select 1 from ZBMX where id='ZLZB_DBZ906')
begin
	print '新增指标ZLZB_DBZ906,但指标ZLZB_DBZ906已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_DBZ906') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_DBZ906','39','总药费','0','10000','0','万元','0','','','0.00000','1','0','','2018-12-21 16:59:17','','','','ZLZB_DBZ906','','','0','1','','','','','','0','0','0','','','','','')
	
end
go

/************No.45: ZLZB_DBZ906******************Y_COLUMN_MAP_ZBFACT***ZLZB_DBZ906******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_DBZ906' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_DBZ906','FACT_ZLZB_JBBZ_DBZ','ypfy','')
	go

/************No.45: ZLZB_DBZ906******************HD_ZBMX_HZ_YS***ZLZB_DBZ906******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ906')
begin
	print '新增指标ZLZB_DBZ906,但指标ZLZB_DBZ906已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ906') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('ZLZB_DBZ906','总药费','select ''ZLZB_DBZ906'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ypfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm','select ''ZLZB_DBZ906'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ypfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm','1','','','0','','','0','select ''ZLZB_DBZ906'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ypfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm')
	
end
go

/************No.45: ZLZB_DBZ906******************HD_ZBMX_HZ***ZLZB_DBZ906******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ906')
begin
	print '新增指标ZLZB_DBZ906,但指标ZLZB_DBZ906已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ906') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_DBZ906','总药费','select ''ZLZB_DBZ906'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ypfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ906'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ypfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ906'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ypfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','11709','','','0','1','0','FACT_ZLZB_JBBZ_DBZ','ypfy','','timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','','select ''ZLZB_DBZ906'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ypfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','')
	
end
go

/************No.46: ZLZB_DBZ907******************ZB_FACT_DIM_YS***ZLZB_DBZ907******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_DBZ907' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ907','sum','ZLZB_DBZ905','1','ZLZB_DBZ901','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ907','sum','ZLZB_DBZ905','1','ZLZB_DBZ901','1','DIM_ZLZB_JBBZ_DBZ','dbzkey','dbzmc','单病种名称',' where',' where','dbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ907','sum','ZLZB_DBZ905','1','ZLZB_DBZ901','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ907','sum','ZLZB_DBZ905','1','ZLZB_DBZ901','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ907','sum','ZLZB_DBZ905','1','ZLZB_DBZ901','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ907','sum','ZLZB_DBZ905','1','ZLZB_DBZ901','1','DIM_CYFS','cyfskey','cyfsmc','出院方式',' where',' where','cyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ907','sum','ZLZB_DBZ905','1','ZLZB_DBZ901','1','DIM_ZYTS','zytskey','zyts','住院天数',' where',' where','zytskey','','','','','','')
	go

/************No.46: ZLZB_DBZ907******************ZBMX***ZLZB_DBZ907******************************/

if exists(select 1 from ZBMX where id='ZLZB_DBZ907')
begin
	print '新增指标ZLZB_DBZ907,但指标ZLZB_DBZ907已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_DBZ907') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_DBZ907','39','均次费','0','1','0','元','1','','','0.00000','1','0','','2018-12-21 16:59:17','','','','ZLZB_DBZ907','','','0','1','','','','','','0','0','0','','','','','')
	
end
go

/************No.46: ZLZB_DBZ907******************Y_COLUMN_MAP_ZBFACT***ZLZB_DBZ907******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_DBZ907' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_DBZ907','','','ZLZB_DBZ905,ZLZB_DBZ901')
	go

/************No.46: ZLZB_DBZ907******************HD_ZBMX_HZ_YS***ZLZB_DBZ907******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ907')
begin
	print '新增指标ZLZB_DBZ907,但指标ZLZB_DBZ907已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ907') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('ZLZB_DBZ907','均次费','select ''ZLZB_DBZ907'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''ZLZB_DBZ905''   and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''ZLZB_DBZ901''  and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''ZLZB_DBZ907'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ905'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','ZLZB_DBZ905,ZLZB_DBZ901','0','','','0','select ''ZLZB_DBZ907'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ905''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.46: ZLZB_DBZ907******************HD_ZBMX_HZ***ZLZB_DBZ907******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ907')
begin
	print '新增指标ZLZB_DBZ907,但指标ZLZB_DBZ907已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ907') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_DBZ907','均次费','','select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zfy) fz,0 fm from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey union all select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,0 fz,sum(ls) fm from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','','select ''ZLZB_DBZ907'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_DBZ905''   and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_DBZ901''  and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_DBZ907'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ905''   and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_DBZ905,ZLZB_DBZ901','11710','','','0','-1','-1','','','','timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','@总费用(ZLZB_DBZ905)/@总例数(ZLZB_DBZ901)','select ''ZLZB_DBZ907'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ905''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.47: ZLZB_DBZ908******************ZB_FACT_DIM_YS***ZLZB_DBZ908******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_DBZ908' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ908','sum','ZLZB_DBZ906','1','ZLZB_DBZ901','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ908','sum','ZLZB_DBZ906','1','ZLZB_DBZ901','1','DIM_ZLZB_JBBZ_DBZ','dbzkey','dbzmc','单病种名称',' where',' where','dbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ908','sum','ZLZB_DBZ906','1','ZLZB_DBZ901','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ908','sum','ZLZB_DBZ906','1','ZLZB_DBZ901','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ908','sum','ZLZB_DBZ906','1','ZLZB_DBZ901','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ908','sum','ZLZB_DBZ906','1','ZLZB_DBZ901','1','DIM_CYFS','cyfskey','cyfsmc','出院方式',' where',' where','cyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ908','sum','ZLZB_DBZ906','1','ZLZB_DBZ901','1','DIM_ZYTS','zytskey','zyts','住院天数',' where',' where','zytskey','','','','','','')
	go

/************No.47: ZLZB_DBZ908******************ZBMX***ZLZB_DBZ908******************************/

if exists(select 1 from ZBMX where id='ZLZB_DBZ908')
begin
	print '新增指标ZLZB_DBZ908,但指标ZLZB_DBZ908已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_DBZ908') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_DBZ908','39','均次药费','0','1','0','元','1','','','0.00000','1','0','','2018-12-21 16:59:17','','','','ZLZB_DBZ908','','','0','1','','','','','','0','0','0','','','','','')
	
end
go

/************No.47: ZLZB_DBZ908******************Y_COLUMN_MAP_ZBFACT***ZLZB_DBZ908******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_DBZ908' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_DBZ908','','','ZLZB_DBZ906,ZLZB_DBZ901')
	go

/************No.47: ZLZB_DBZ908******************HD_ZBMX_HZ_YS***ZLZB_DBZ908******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ908')
begin
	print '新增指标ZLZB_DBZ908,但指标ZLZB_DBZ908已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ908') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('ZLZB_DBZ908','均次药费','select ''ZLZB_DBZ908'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''ZLZB_DBZ906''   and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''ZLZB_DBZ901''  and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''ZLZB_DBZ908'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ906'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','ZLZB_DBZ906,ZLZB_DBZ901','0','','','0','select ''ZLZB_DBZ908'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ906''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.47: ZLZB_DBZ908******************HD_ZBMX_HZ***ZLZB_DBZ908******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ908')
begin
	print '新增指标ZLZB_DBZ908,但指标ZLZB_DBZ908已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ908') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_DBZ908','均次药费','','select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ypfy) fz,0 fm from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey union all select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,0 fz,sum(ls) fm from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','','select ''ZLZB_DBZ908'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_DBZ906''   and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_DBZ901''  and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_DBZ908'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ906''   and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_DBZ906,ZLZB_DBZ901','11711','','','0','-1','-1','','','','timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','@总药费(ZLZB_DBZ906)/@总例数(ZLZB_DBZ901)','select ''ZLZB_DBZ908'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ906''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.48: ZLZB_YG0073******************ZB_FACT_DIM_YS***ZLZB_YG0073******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YG0073' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YG0073','sum','ZLZB_YG007301','1','E00213','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YG0073','sum','ZLZB_YG007301','1','E00213','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YG0073','sum','ZLZB_YG007301','1','E00213','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.48: ZLZB_YG0073******************ZBMX***ZLZB_YG0073******************************/

if exists(select 1 from ZBMX where id='ZLZB_YG0073')
begin
	print '新增指标ZLZB_YG0073,但指标ZLZB_YG0073已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YG0073') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YG0073','ZLZB07','I类切口手术部位感染率?','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YG0073','','','0','1','','','','','','0','1','0','','','','','')
	
end
go

/************No.48: ZLZB_YG0073******************Y_COLUMN_MAP_ZBFACT***ZLZB_YG0073******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YG0073' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YG0073','','','ZLZB_YG007301,E00213')
	go

/************No.48: ZLZB_YG0073******************HD_ZBMX_HZ_YS***ZLZB_YG0073******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YG0073')
begin
	print '新增指标ZLZB_YG0073,但指标ZLZB_YG0073已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YG0073') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YG0073'

end
go

/************No.48: ZLZB_YG0073******************HD_ZBMX_HZ***ZLZB_YG0073******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YG0073')
begin
	print '新增指标ZLZB_YG0073,但指标ZLZB_YG0073已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YG0073') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YG0073','I类切口手术部位感染率?','','select timekey,yykey,kskey,sum(isssbwgr) fz,0 fm from FACT_GZ_YYGR_GR a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and qkdjkey in (1) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ssrc) fm from FACT_YY_SS_ZYSSYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and qkdjkey in (1) group by timekey,yykey,kskey','','select ''ZLZB_YG0073'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YG007301'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''E00213'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YG0073'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YG007301'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''E00213'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YG007301,E00213','12237','','','0','-1','-1','','','','timekey,yykey,kskey','@I类切口手术部位感染病例数(ZLZB_YG007301)/@I类切口手术例数(E00213)','select ''ZLZB_YG0073'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YG007301'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''E00213'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.49: ZLZB_YY00040102******************ZB_FACT_DIM_YS***ZLZB_YY00040102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY00040102' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040102','sum','ZLZB_YY00040101','1','ZLZB_YY000401','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040102','sum','ZLZB_YY00040101','1','ZLZB_YY000401','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.49: ZLZB_YY00040102******************ZBMX***ZLZB_YY00040102******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY00040102')
begin
	print '新增指标ZLZB_YY00040102,但指标ZLZB_YY00040102已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY00040102') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY00040102','ZLZB01','初级卫生技术人员占比','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY00040102','','','0','1','','','','','','ZLZB_YY000401','1','0','','1','1','1','')
	
end
go

/************No.49: ZLZB_YY00040102******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00040102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00040102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY00040102','','','ZLZB_YY00040101,ZLZB_YY000401')
	go

/************No.49: ZLZB_YY00040102******************HD_ZBMX_HZ_YS***ZLZB_YY00040102******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY00040102')
begin
	print '新增指标ZLZB_YY00040102,但指标ZLZB_YY00040102已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY00040102') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY00040102'

end
go

/************No.49: ZLZB_YY00040102******************HD_ZBMX_HZ***ZLZB_YY00040102******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00040102')
begin
	print '新增指标ZLZB_YY00040102,但指标ZLZB_YY00040102已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00040102') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY00040102','初级卫生技术人员占比','','','','select ''ZLZB_YY00040102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY00040101'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY000401'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY00040102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY00040101'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY00040101,ZLZB_YY000401','12422','','','1','-1','-1','','','','','@初级卫生技术人员总数(ZLZB_YY00040101)/@卫生技术人员总数(ZLZB_YY000401)','select ''ZLZB_YY00040102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY00040101'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.50: ZLZB_YY00040104******************ZB_FACT_DIM_YS***ZLZB_YY00040104******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY00040104' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040104','sum','ZLZB_YY00040103','1','ZLZB_YY000401','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040104','sum','ZLZB_YY00040103','1','ZLZB_YY000401','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.50: ZLZB_YY00040104******************ZBMX***ZLZB_YY00040104******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY00040104')
begin
	print '新增指标ZLZB_YY00040104,但指标ZLZB_YY00040104已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY00040104') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY00040104','ZLZB01','中级卫生技术人员占比','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY00040104','','','0','1','','','','','','ZLZB_YY000401','1','0','','1','1','1','')
	
end
go

/************No.50: ZLZB_YY00040104******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00040104******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00040104' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY00040104','','','ZLZB_YY00040103,ZLZB_YY000401')
	go

/************No.50: ZLZB_YY00040104******************HD_ZBMX_HZ_YS***ZLZB_YY00040104******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY00040104')
begin
	print '新增指标ZLZB_YY00040104,但指标ZLZB_YY00040104已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY00040104') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY00040104'

end
go

/************No.50: ZLZB_YY00040104******************HD_ZBMX_HZ***ZLZB_YY00040104******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00040104')
begin
	print '新增指标ZLZB_YY00040104,但指标ZLZB_YY00040104已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00040104') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY00040104','中级卫生技术人员占比','','','','select ''ZLZB_YY00040104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY00040103'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY000401'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY00040104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY00040103'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY00040103,ZLZB_YY000401','12423','','','1','-1','-1','','','','','@中级卫生技术人员总数(ZLZB_YY00040103)/@卫生技术人员总数(ZLZB_YY000401)','select ''ZLZB_YY00040104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY00040103'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.51: ZLZB_YY00040106******************ZB_FACT_DIM_YS***ZLZB_YY00040106******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY00040106' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040106','sum','ZLZB_YY00040105','1','ZLZB_YY000401','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040106','sum','ZLZB_YY00040105','1','ZLZB_YY000401','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.51: ZLZB_YY00040106******************ZBMX***ZLZB_YY00040106******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY00040106')
begin
	print '新增指标ZLZB_YY00040106,但指标ZLZB_YY00040106已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY00040106') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY00040106','ZLZB01','副高级卫生技术人员占比','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY00040106','','','0','1','','','','','','ZLZB_YY000401','1','0','','1','1','1','')
	
end
go

/************No.51: ZLZB_YY00040106******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00040106******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00040106' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY00040106','','','ZLZB_YY00040105,ZLZB_YY000401')
	go

/************No.51: ZLZB_YY00040106******************HD_ZBMX_HZ_YS***ZLZB_YY00040106******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY00040106')
begin
	print '新增指标ZLZB_YY00040106,但指标ZLZB_YY00040106已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY00040106') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY00040106'

end
go

/************No.51: ZLZB_YY00040106******************HD_ZBMX_HZ***ZLZB_YY00040106******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00040106')
begin
	print '新增指标ZLZB_YY00040106,但指标ZLZB_YY00040106已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00040106') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY00040106','副高级卫生技术人员占比','','','','select ''ZLZB_YY00040106'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY00040105'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY000401'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY00040106'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY00040105'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY00040105,ZLZB_YY000401','12424','','','1','-1','-1','','','','','@副高级卫生技术人员总数(ZLZB_YY00040105)/@卫生技术人员总数(ZLZB_YY000401)','select ''ZLZB_YY00040106'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY00040105'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.52: ZLZB_YY00040108******************ZB_FACT_DIM_YS***ZLZB_YY00040108******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY00040108' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040108','sum','ZLZB_YY00040107','1','ZLZB_YY000401','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040108','sum','ZLZB_YY00040107','1','ZLZB_YY000401','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.52: ZLZB_YY00040108******************ZBMX***ZLZB_YY00040108******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY00040108')
begin
	print '新增指标ZLZB_YY00040108,但指标ZLZB_YY00040108已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY00040108') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY00040108','ZLZB01','高级卫生技术人员占比','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY00040108','','','0','1','','','','','','ZLZB_YY000401','1','0','','1','1','1','')
	
end
go

/************No.52: ZLZB_YY00040108******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00040108******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00040108' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY00040108','','','ZLZB_YY00040107,ZLZB_YY000401')
	go

/************No.52: ZLZB_YY00040108******************HD_ZBMX_HZ_YS***ZLZB_YY00040108******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY00040108')
begin
	print '新增指标ZLZB_YY00040108,但指标ZLZB_YY00040108已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY00040108') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY00040108'

end
go

/************No.52: ZLZB_YY00040108******************HD_ZBMX_HZ***ZLZB_YY00040108******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00040108')
begin
	print '新增指标ZLZB_YY00040108,但指标ZLZB_YY00040108已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00040108') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY00040108','高级卫生技术人员占比','','','','select ''ZLZB_YY00040108'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY00040107'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY000401'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY00040108'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY00040107'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY00040107,ZLZB_YY000401','12425','','','1','-1','-1','','','','','@高级卫生技术人员总数(ZLZB_YY00040107)/@卫生技术人员总数(ZLZB_YY000401)','select ''ZLZB_YY00040108'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY00040107'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.53: ZLZB_YY00040109******************ZB_FACT_DIM_YS***ZLZB_YY00040109******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY00040109' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040109','sum','ZLZB_YY0005','1','ZLZB_YY0006','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040109','sum','ZLZB_YY0005','1','ZLZB_YY0006','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.53: ZLZB_YY00040109******************ZBMX***ZLZB_YY00040109******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY00040109')
begin
	print '新增指标ZLZB_YY00040109,但指标ZLZB_YY00040109已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY00040109') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY00040109','ZLZB01','医护比','0','100','0','%','1','','','0.00000','1','0','','','医院注册医师总数/全院同期注册护士总数','','','ZLZB_YY00040109','','','0','1','','','','','','ZLZB_YY000401','1','0','','1','1','1','')
	
end
go

/************No.53: ZLZB_YY00040109******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00040109******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00040109' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY00040109','','','ZLZB_YY0005,ZLZB_YY0006')
	go

/************No.53: ZLZB_YY00040109******************HD_ZBMX_HZ_YS***ZLZB_YY00040109******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY00040109')
begin
	print '新增指标ZLZB_YY00040109,但指标ZLZB_YY00040109已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY00040109') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY00040109'

end
go

/************No.53: ZLZB_YY00040109******************HD_ZBMX_HZ***ZLZB_YY00040109******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00040109')
begin
	print '新增指标ZLZB_YY00040109,但指标ZLZB_YY00040109已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00040109') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY00040109','医护比','','','','select ''ZLZB_YY00040109'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0005'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0006'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY00040109'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0006'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY0005,ZLZB_YY0006','12431','','','1','-1','-1','','','','','@卫生技术人员数（医师）(ZLZB_YY0005)/@卫生技术人员数（护理人员）(ZLZB_YY0006)','select ''ZLZB_YY00040109'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0006'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.54: ZLZB_YY000501******************ZB_FACT_DIM_YS***ZLZB_YY000501******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY000501' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000501','sum','ZLZB_YY0057','1','ZLZB_YY0005','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000501','sum','ZLZB_YY0057','1','ZLZB_YY0005','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.54: ZLZB_YY000501******************ZBMX***ZLZB_YY000501******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY000501')
begin
	print '新增指标ZLZB_YY000501,但指标ZLZB_YY000501已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY000501') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY000501','ZLZB01','麻醉医师人员占比','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY000501','','','0','1','','','','','','ZLZB_YY0005','1','0','','1','1','1','')
	
end
go

/************No.54: ZLZB_YY000501******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000501******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000501' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY000501','','','ZLZB_YY0057,ZLZB_YY0005')
	go

/************No.54: ZLZB_YY000501******************HD_ZBMX_HZ_YS***ZLZB_YY000501******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY000501')
begin
	print '新增指标ZLZB_YY000501,但指标ZLZB_YY000501已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY000501') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY000501'

end
go

/************No.54: ZLZB_YY000501******************HD_ZBMX_HZ***ZLZB_YY000501******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY000501')
begin
	print '新增指标ZLZB_YY000501,但指标ZLZB_YY000501已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY000501') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY000501','麻醉医师人员占比','','','','select ''ZLZB_YY000501'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0057'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0005'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY000501'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0057'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY0057,ZLZB_YY0005','12426','','','1','-1','-1','','','','','@麻醉医师人员(ZLZB_YY0057)/@卫生技术人员数（医师）(ZLZB_YY0005)','select ''ZLZB_YY000501'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0057'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.55: ZLZB_YY000503******************ZB_FACT_DIM_YS***ZLZB_YY000503******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY000503' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000503','sum','ZLZB_YY000502','1','ZLZB_YY0005','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000503','sum','ZLZB_YY000502','1','ZLZB_YY0005','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.55: ZLZB_YY000503******************ZBMX***ZLZB_YY000503******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY000503')
begin
	print '新增指标ZLZB_YY000503,但指标ZLZB_YY000503已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY000503') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY000503','ZLZB01','儿科医师人员占比','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY000503','','','0','1','','','','','','ZLZB_YY0005','1','0','','1','1','1','')
	
end
go

/************No.55: ZLZB_YY000503******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000503******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000503' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY000503','','','ZLZB_YY000502,ZLZB_YY0005')
	go

/************No.55: ZLZB_YY000503******************HD_ZBMX_HZ_YS***ZLZB_YY000503******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY000503')
begin
	print '新增指标ZLZB_YY000503,但指标ZLZB_YY000503已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY000503') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY000503'

end
go

/************No.55: ZLZB_YY000503******************HD_ZBMX_HZ***ZLZB_YY000503******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY000503')
begin
	print '新增指标ZLZB_YY000503,但指标ZLZB_YY000503已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY000503') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY000503','儿科医师人员占比','','','','select ''ZLZB_YY000503'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY000502'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0005'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY000503'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY000502'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY000502,ZLZB_YY0005','12427','','','1','-1','-1','','','','','@儿科医师人员(ZLZB_YY000502)/@卫生技术人员数（医师）(ZLZB_YY0005)','select ''ZLZB_YY000503'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY000502'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.56: ZLZB_YY000504******************ZB_FACT_DIM_YS***ZLZB_YY000504******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY000504' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000504','sum','ZLZB_YY0052','1','ZLZB_YY0005','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000504','sum','ZLZB_YY0052','1','ZLZB_YY0005','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.56: ZLZB_YY000504******************ZBMX***ZLZB_YY000504******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY000504')
begin
	print '新增指标ZLZB_YY000504,但指标ZLZB_YY000504已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY000504') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY000504','ZLZB01','重症医师人员占比','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY000504','','','0','1','','','','','','ZLZB_YY0005','1','0','','1','1','1','')
	
end
go

/************No.56: ZLZB_YY000504******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000504******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000504' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY000504','','','ZLZB_YY0052,ZLZB_YY0005')
	go

/************No.56: ZLZB_YY000504******************HD_ZBMX_HZ_YS***ZLZB_YY000504******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY000504')
begin
	print '新增指标ZLZB_YY000504,但指标ZLZB_YY000504已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY000504') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY000504'

end
go

/************No.56: ZLZB_YY000504******************HD_ZBMX_HZ***ZLZB_YY000504******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY000504')
begin
	print '新增指标ZLZB_YY000504,但指标ZLZB_YY000504已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY000504') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY000504','重症医师人员占比','','','','select ''ZLZB_YY000504'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0052'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0005'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY000504'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0052'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY0052,ZLZB_YY0005','12428','','','1','-1','-1','','','','','@重症医学科医师数(ZLZB_YY0052)/@卫生技术人员数（医师）(ZLZB_YY0005)','select ''ZLZB_YY000504'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0052'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.57: ZLZB_YY000505******************ZB_FACT_DIM_YS***ZLZB_YY000505******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY000505' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000505','sum','ZLZB_ZLGL_LCBL001','1','ZLZB_YY0005','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000505','sum','ZLZB_ZLGL_LCBL001','1','ZLZB_YY0005','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.57: ZLZB_YY000505******************ZBMX***ZLZB_YY000505******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY000505')
begin
	print '新增指标ZLZB_YY000505,但指标ZLZB_YY000505已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY000505') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY000505','ZLZB01','病理医师人员占比','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY000505','','','0','1','','','','','','ZLZB_YY0005','1','0','','1','1','1','')
	
end
go

/************No.57: ZLZB_YY000505******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000505******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000505' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY000505','','','ZLZB_ZLGL_LCBL001,ZLZB_YY0005')
	go

/************No.57: ZLZB_YY000505******************HD_ZBMX_HZ_YS***ZLZB_YY000505******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY000505')
begin
	print '新增指标ZLZB_YY000505,但指标ZLZB_YY000505已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY000505') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY000505'

end
go

/************No.57: ZLZB_YY000505******************HD_ZBMX_HZ***ZLZB_YY000505******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY000505')
begin
	print '新增指标ZLZB_YY000505,但指标ZLZB_YY000505已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY000505') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY000505','病理医师人员占比','','','','select ''ZLZB_YY000505'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_ZLGL_LCBL001'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0005'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY000505'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_ZLGL_LCBL001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_ZLGL_LCBL001,ZLZB_YY0005','12429','','','1','-1','-1','','','','','@病理医师数(ZLZB_ZLGL_LCBL001)/@卫生技术人员数（医师）(ZLZB_YY0005)','select ''ZLZB_YY000505'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_ZLGL_LCBL001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.58: ZLZB_YY000507******************ZB_FACT_DIM_YS***ZLZB_YY000507******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY000507' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000507','sum','ZLZB_YY000506','1','ZLZB_YY0005','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000507','sum','ZLZB_YY000506','1','ZLZB_YY0005','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.58: ZLZB_YY000507******************ZBMX***ZLZB_YY000507******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY000507')
begin
	print '新增指标ZLZB_YY000507,但指标ZLZB_YY000507已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY000507') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY000507','ZLZB01','中医师人员占比','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY000507','','','0','1','','','','','','ZLZB_YY0005','1','0','','1','1','1','')
	
end
go

/************No.58: ZLZB_YY000507******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000507******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000507' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY000507','','','ZLZB_YY000506,ZLZB_YY0005')
	go

/************No.58: ZLZB_YY000507******************HD_ZBMX_HZ_YS***ZLZB_YY000507******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY000507')
begin
	print '新增指标ZLZB_YY000507,但指标ZLZB_YY000507已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY000507') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY000507'

end
go

/************No.58: ZLZB_YY000507******************HD_ZBMX_HZ***ZLZB_YY000507******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY000507')
begin
	print '新增指标ZLZB_YY000507,但指标ZLZB_YY000507已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY000507') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY000507','中医师人员占比','','','','select ''ZLZB_YY000507'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY000506'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0005'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY000507'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY000506'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY000506,ZLZB_YY0005','12430','','','1','-1','-1','','','','','@中医师人员(ZLZB_YY000506)/@卫生技术人员数（医师）(ZLZB_YY0005)','select ''ZLZB_YY000507'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY000506'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.59: ZLZB_YY0041******************ZB_FACT_DIM_YS***ZLZB_YY0041******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0041' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0041'
go

/************No.59: ZLZB_YY0041******************ZBMX***ZLZB_YY0041******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY0041')
begin
	print '新增指标ZLZB_YY0041,但指标ZLZB_YY0041已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0041') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY0041','ZLZB01','资产负债率','0','100','4','%','1','','','0.05000','1','0','','','','','','ZLZB_YY0041','','','0','2','','','','','0','','','','','1','1','1','0')
	
end
go

/************No.59: ZLZB_YY0041******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0041******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0041' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0041','','','ZLZB_YY004102,ZLZB_YY004101')
	go

/************No.59: ZLZB_YY0041******************HD_ZBMX_HZ_YS***ZLZB_YY0041******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0041')
begin
	print '新增指标ZLZB_YY0041,但指标ZLZB_YY0041已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0041') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY0041'

end
go

/************No.59: ZLZB_YY0041******************HD_ZBMX_HZ***ZLZB_YY0041******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0041')
begin
	print '新增指标ZLZB_YY0041,但指标ZLZB_YY0041已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0041') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY0041','资产负债率','','','','select ''ZLZB_YY0041'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY004102'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY004101'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY0041'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY004102'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY004101'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY004102,ZLZB_YY004101','','','','0','-1','-1','','','','','@负债总额(ZLZB_YY004102)/@资产总额(ZLZB_YY004101)','select ''ZLZB_YY0041'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY004102'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY004101'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.60: ZLZB_YY006601******************ZB_FACT_DIM_YS***ZLZB_YY006601******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY006601' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY006601','sum','ZLZB_YY0066','1','ZLZB_YY0001','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY006601','sum','ZLZB_YY0066','1','ZLZB_YY0001','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.60: ZLZB_YY006601******************ZBMX***ZLZB_YY006601******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY006601')
begin
	print '新增指标ZLZB_YY006601,但指标ZLZB_YY006601已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY006601') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY006601','ZLZB01','每百张病床药师人数','0','1','0','人','1','','','0.00000','1','0','','','','','','ZLZB_YY006601','','','0','1','','','','','','ZLZB_YY0066','1','0','','1','1','1','')
	
end
go

/************No.60: ZLZB_YY006601******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY006601******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY006601' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY006601','','','ZLZB_YY0066,ZLZB_YY0001')
	go

/************No.60: ZLZB_YY006601******************HD_ZBMX_HZ_YS***ZLZB_YY006601******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY006601')
begin
	print '新增指标ZLZB_YY006601,但指标ZLZB_YY006601已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY006601') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY006601'

end
go

/************No.60: ZLZB_YY006601******************HD_ZBMX_HZ***ZLZB_YY006601******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY006601')
begin
	print '新增指标ZLZB_YY006601,但指标ZLZB_YY006601已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY006601') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY006601','每百张病床药师人数','','','','select ''ZLZB_YY006601'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0066'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0001'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY006601'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0066'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY0066,ZLZB_YY0001','12408','','','1','-1','-1','','','','','@药学专业技术人员(ZLZB_YY0066)*100/@实际开放床位(ZLZB_YY0001)','select ''ZLZB_YY006601'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0066'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.61: ZLZB_YY0091******************ZB_FACT_DIM_YS***ZLZB_YY0091******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0091' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0091'
go

/************No.61: ZLZB_YY0091******************ZBMX***ZLZB_YY0091******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY0091')
begin
	print '新增指标ZLZB_YY0091,但指标ZLZB_YY0091已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0091') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY0091','ZLZB01','电子病历应用功能水平分级','0','1','0','级','0','','','0.00000','1','0','','','','','','ZLZB_YY0091','','','0','1','','','','','','0','1','0','','1','0','1','')
	
end
go

/************No.61: ZLZB_YY0091******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0091******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0091' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0091'
go

/************No.61: ZLZB_YY0091******************HD_ZBMX_HZ_YS***ZLZB_YY0091******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0091')
begin
	print '新增指标ZLZB_YY0091,但指标ZLZB_YY0091已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0091') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY0091'

end
go

/************No.61: ZLZB_YY0091******************HD_ZBMX_HZ***ZLZB_YY0091******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0091')
begin
	print '新增指标ZLZB_YY0091,但指标ZLZB_YY0091已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0091') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb ZLZB_YY0091'

end
go

/************No.62: ZLZB_YY00920101******************ZB_FACT_DIM_YS***ZLZB_YY00920101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY00920101' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY00920101'
go

/************No.62: ZLZB_YY00920101******************ZBMX***ZLZB_YY00920101******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY00920101')
begin
	print '新增指标ZLZB_YY00920101,但指标ZLZB_YY00920101已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY00920101') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY00920101','ZLZB01','医学人才培养经费','0','10000','0','万元','0','','','0.00000','1','0','','','','','','ZLZB_YY00920101','','','0','1','','','','','','ZLZB_YY009201','1','0','','1','0','1','')
	
end
go

/************No.62: ZLZB_YY00920101******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00920101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00920101' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY00920101'
go

/************No.62: ZLZB_YY00920101******************HD_ZBMX_HZ_YS***ZLZB_YY00920101******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY00920101')
begin
	print '新增指标ZLZB_YY00920101,但指标ZLZB_YY00920101已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY00920101') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY00920101'

end
go

/************No.62: ZLZB_YY00920101******************HD_ZBMX_HZ***ZLZB_YY00920101******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00920101')
begin
	print '新增指标ZLZB_YY00920101,但指标ZLZB_YY00920101已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00920101') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb ZLZB_YY00920101'

end
go

/************No.63: ZLZB_YY009202******************ZB_FACT_DIM_YS***ZLZB_YY009202******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY009202' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY009202','sum','ZLZB_YY009201','1','ZLZB_YY0092','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY009202','sum','ZLZB_YY009201','1','ZLZB_YY0092','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.63: ZLZB_YY009202******************ZBMX***ZLZB_YY009202******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY009202')
begin
	print '新增指标ZLZB_YY009202,但指标ZLZB_YY009202已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY009202') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY009202','ZLZB01','人员支出占业务支出比重','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY009202','','','0','1','','','','','','ZLZB_YY0092','1','0','','1','1','1','')
	
end
go

/************No.63: ZLZB_YY009202******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY009202******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY009202' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY009202','','','ZLZB_YY009201,ZLZB_YY0092')
	go

/************No.63: ZLZB_YY009202******************HD_ZBMX_HZ_YS***ZLZB_YY009202******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009202')
begin
	print '新增指标ZLZB_YY009202,但指标ZLZB_YY009202已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009202') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY009202'

end
go

/************No.63: ZLZB_YY009202******************HD_ZBMX_HZ***ZLZB_YY009202******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY009202')
begin
	print '新增指标ZLZB_YY009202,但指标ZLZB_YY009202已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY009202') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY009202','人员支出占业务支出比重','','','','select ''ZLZB_YY009202'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY009201'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0092'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY009202'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY009201'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0092'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY009201,ZLZB_YY0092','12421','','','1','-1','-1','','','','','@人员经费支出(ZLZB_YY009201)/@业务总支出(ZLZB_YY0092)','select ''ZLZB_YY009202'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY009201'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0092'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.64: ZLZB_YY009204******************ZB_FACT_DIM_YS***ZLZB_YY009204******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY009204' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY009204'
go

/************No.64: ZLZB_YY009204******************ZBMX***ZLZB_YY009204******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY009204')
begin
	print '新增指标ZLZB_YY009204,但指标ZLZB_YY009204已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY009204') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY009204','ZLZB01','万元收入能耗支出','0','10000','4','万元','0','','','0.00000','1','0','','','年总能耗支出/年总收入*10000。总能耗为水、电、气、热等能耗折算为吨标煤后之和','','','ZLZB_YY009204','','','0','1','','','','','','ZLZB_YY0092','1','0','','1','0','1','')
	
end
go

/************No.64: ZLZB_YY009204******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY009204******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY009204' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY009204'
go

/************No.64: ZLZB_YY009204******************HD_ZBMX_HZ_YS***ZLZB_YY009204******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009204')
begin
	print '新增指标ZLZB_YY009204,但指标ZLZB_YY009204已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009204') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY009204'

end
go

/************No.64: ZLZB_YY009204******************HD_ZBMX_HZ***ZLZB_YY009204******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY009204')
begin
	print '新增指标ZLZB_YY009204,但指标ZLZB_YY009204已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY009204') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb ZLZB_YY009204'

end
go

/************No.65: ZLZB_YY0093******************ZB_FACT_DIM_YS***ZLZB_YY0093******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0093' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0093'
go

/************No.65: ZLZB_YY0093******************ZBMX***ZLZB_YY0093******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY0093')
begin
	print '新增指标ZLZB_YY0093,但指标ZLZB_YY0093已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0093') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY0093','ZLZB01','收支结余','0','10000','4','万元','0','','','0.00000','1','0','','','业务收支结余 财务项目补助收支结转（余） 科教项目收支结转（余）。业务收支结余=医疗收支结余 其他收入-其他支出，其中：医疗收支结余=医疗收入 财政基本支出补助收入-医疗支出-管理费用。财政项目补助收支结转（余）=财政项目支出补助收入-财政项目补助支出。科教项目收支结转（余）=科教项目收入-科教项目支出','','','ZLZB_YY0093','','','0','1','','','','','','0','1','0','','1','0','1','')
	
end
go

/************No.65: ZLZB_YY0093******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0093******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0093' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0093'
go

/************No.65: ZLZB_YY0093******************HD_ZBMX_HZ_YS***ZLZB_YY0093******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0093')
begin
	print '新增指标ZLZB_YY0093,但指标ZLZB_YY0093已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0093') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY0093'

end
go

/************No.65: ZLZB_YY0093******************HD_ZBMX_HZ***ZLZB_YY0093******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0093')
begin
	print '新增指标ZLZB_YY0093,但指标ZLZB_YY0093已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0093') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb ZLZB_YY0093'

end
go

/************No.66: ZLZB_YY0094******************ZB_FACT_DIM_YS***ZLZB_YY0094******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0094' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0094'
go

/************No.66: ZLZB_YY0094******************ZBMX***ZLZB_YY0094******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY0094')
begin
	print '新增指标ZLZB_YY0094,但指标ZLZB_YY0094已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0094') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY0094','ZLZB01','医院接受其他医院（尤其对口支援医院、医联体内医院）进修并返回原医院独立工作人数占比','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY0094','','','0','1','','','','','','0','1','0','','1','1','1','')
	
end
go

/************No.66: ZLZB_YY0094******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0094******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0094' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0094','','','ZLZB_YY009402,ZLZB_YY009401')
	go

/************No.66: ZLZB_YY0094******************HD_ZBMX_HZ_YS***ZLZB_YY0094******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0094')
begin
	print '新增指标ZLZB_YY0094,但指标ZLZB_YY0094已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0094') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY0094'

end
go

/************No.66: ZLZB_YY0094******************HD_ZBMX_HZ***ZLZB_YY0094******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0094')
begin
	print '新增指标ZLZB_YY0094,但指标ZLZB_YY0094已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0094') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY0094','医院接受其他医院（尤其对口支援医院、医联体内医院）进修并返回原医院独立工作人数占比','','','','select ''ZLZB_YY0094'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY009402'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY009401'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY0094'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY009402'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY009401'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY009402,ZLZB_YY009401','','','','0','-1','-1','','','','','@医院接受其他医院（尤其对口支援医院、医联体内医院）进修并返回原医院独立工作人数(ZLZB_YY009402)/@医院接受其他医院（尤其对口支援医院、医联体内医院）进修人数(ZLZB_YY009401)','select ''ZLZB_YY0094'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY009402'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY009401'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.67: ZLZB_YY0095******************ZB_FACT_DIM_YS***ZLZB_YY0095******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0095' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0095'
go

/************No.67: ZLZB_YY0095******************ZBMX***ZLZB_YY0095******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY0095')
begin
	print '新增指标ZLZB_YY0095,但指标ZLZB_YY0095已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0095') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY0095','ZLZB01','医院住院医师首次参加医师资格考试通过率','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY0095','','','0','1','','','','','','0','1','0','','1','1','1','')
	
end
go

/************No.67: ZLZB_YY0095******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0095******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0095' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0095','','','ZLZB_YY009502,ZLZB_YY009501')
	go

/************No.67: ZLZB_YY0095******************HD_ZBMX_HZ_YS***ZLZB_YY0095******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0095')
begin
	print '新增指标ZLZB_YY0095,但指标ZLZB_YY0095已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0095') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY0095'

end
go

/************No.67: ZLZB_YY0095******************HD_ZBMX_HZ***ZLZB_YY0095******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0095')
begin
	print '新增指标ZLZB_YY0095,但指标ZLZB_YY0095已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0095') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY0095','医院住院医师首次参加医师资格考试通过率','','','','select ''ZLZB_YY0095'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY009502'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY009501'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY0095'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY009502'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY009501'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY009502,ZLZB_YY009501','','','','0','-1','-1','','','','','@医院住院医师首次参加医师资格考试通过人数(ZLZB_YY009502)/@医院住院医师首次参加医师资格考试人数(ZLZB_YY009501)','select ''ZLZB_YY0095'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY009502'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY009501'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.68: ZLZB_YY0096******************ZB_FACT_DIM_YS***ZLZB_YY0096******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0096' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0096'
go

/************No.68: ZLZB_YY0096******************ZBMX***ZLZB_YY0096******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY0096')
begin
	print '新增指标ZLZB_YY0096,但指标ZLZB_YY0096已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0096') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY0096','ZLZB01','临床带教教师和指导医师接受教育教学培训人次数','0','1','0','次','0','','','0.00000','1','0','','','','','','ZLZB_YY0096','','','0','1','','','','','','0','1','0','','1','0','1','')
	
end
go

/************No.68: ZLZB_YY0096******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0096******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0096' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0096'
go

/************No.68: ZLZB_YY0096******************HD_ZBMX_HZ_YS***ZLZB_YY0096******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0096')
begin
	print '新增指标ZLZB_YY0096,但指标ZLZB_YY0096已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0096') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY0096'

end
go

/************No.68: ZLZB_YY0096******************HD_ZBMX_HZ***ZLZB_YY0096******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0096')
begin
	print '新增指标ZLZB_YY0096,但指标ZLZB_YY0096已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0096') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb ZLZB_YY0096'

end
go

/************No.69: ZLZB_YY0097******************ZB_FACT_DIM_YS***ZLZB_YY0097******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0097' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0097'
go

/************No.69: ZLZB_YY0097******************ZBMX***ZLZB_YY0097******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY0097')
begin
	print '新增指标ZLZB_YY0097,但指标ZLZB_YY0097已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0097') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY0097','ZLZB01','承担医学教育的人数','0','1','0','人','0','','','0.00000','1','0','','','','','','ZLZB_YY0097','','','0','1','','','','','','0','1','0','','1','0','1','')
	
end
go

/************No.69: ZLZB_YY0097******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0097******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0097' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0097'
go

/************No.69: ZLZB_YY0097******************HD_ZBMX_HZ_YS***ZLZB_YY0097******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0097')
begin
	print '新增指标ZLZB_YY0097,但指标ZLZB_YY0097已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0097') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY0097'

end
go

/************No.69: ZLZB_YY0097******************HD_ZBMX_HZ***ZLZB_YY0097******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0097')
begin
	print '新增指标ZLZB_YY0097,但指标ZLZB_YY0097已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0097') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb ZLZB_YY0097'

end
go

/************No.70: ZLZB_YY0098******************ZB_FACT_DIM_YS***ZLZB_YY0098******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0098' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0098'
go

/************No.70: ZLZB_YY0098******************ZBMX***ZLZB_YY0098******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY0098')
begin
	print '新增指标ZLZB_YY0098,但指标ZLZB_YY0098已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0098') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY0098','ZLZB01','发表教学论文的数量','0','1','0','篇','0','','','0.00000','1','0','','','','','','ZLZB_YY0098','','','0','1','','','','','','0','1','0','','1','0','1','')
	
end
go

/************No.70: ZLZB_YY0098******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0098******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0098' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0098'
go

/************No.70: ZLZB_YY0098******************HD_ZBMX_HZ_YS***ZLZB_YY0098******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0098')
begin
	print '新增指标ZLZB_YY0098,但指标ZLZB_YY0098已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0098') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY0098'

end
go

/************No.70: ZLZB_YY0098******************HD_ZBMX_HZ***ZLZB_YY0098******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0098')
begin
	print '新增指标ZLZB_YY0098,但指标ZLZB_YY0098已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0098') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb ZLZB_YY0098'

end
go

/************No.71: ZLZB_YY0099******************ZB_FACT_DIM_YS***ZLZB_YY0099******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0099' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0099'
go

/************No.71: ZLZB_YY0099******************ZBMX***ZLZB_YY0099******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY0099')
begin
	print '新增指标ZLZB_YY0099,但指标ZLZB_YY0099已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0099') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY0099','ZLZB01','每百名卫生技术人员科研项目经费','0','10000','4','万元','1','','','0.00000','1','0','','','','','','ZLZB_YY0099','','','0','1','','','','','','0','1','0','','1','1','1','')
	
end
go

/************No.71: ZLZB_YY0099******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0099******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0099' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0099','','','ZLZB_YY009901,ZLZB_YY000401')
	go

/************No.71: ZLZB_YY0099******************HD_ZBMX_HZ_YS***ZLZB_YY0099******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0099')
begin
	print '新增指标ZLZB_YY0099,但指标ZLZB_YY0099已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0099') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY0099'

end
go

/************No.71: ZLZB_YY0099******************HD_ZBMX_HZ***ZLZB_YY0099******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0099')
begin
	print '新增指标ZLZB_YY0099,但指标ZLZB_YY0099已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0099') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY0099','每百名卫生技术人员科研项目经费','','','','select ''ZLZB_YY0099'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY009901'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY000401'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY0099'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY009901'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY009901,ZLZB_YY000401','','','','0','-1','-1','','','','','@科研项目经费*100(ZLZB_YY009901)/@卫生技术人员总数(ZLZB_YY000401)','select ''ZLZB_YY0099'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY009901'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.72: ZLZB_YY0100******************ZB_FACT_DIM_YS***ZLZB_YY0100******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0100' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0100'
go

/************No.72: ZLZB_YY0100******************ZBMX***ZLZB_YY0100******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY0100')
begin
	print '新增指标ZLZB_YY0100,但指标ZLZB_YY0100已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0100') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY0100','ZLZB01','每百名卫生技术人员科研成果转化金额','0','10000','4','万元','1','','','0.00000','1','0','','','','','','ZLZB_YY0100','','','0','1','','','','','','0','1','0','','1','1','1','')
	
end
go

/************No.72: ZLZB_YY0100******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0100******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0100' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0100','','','ZLZB_YY010001,ZLZB_YY000401')
	go

/************No.72: ZLZB_YY0100******************HD_ZBMX_HZ_YS***ZLZB_YY0100******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0100')
begin
	print '新增指标ZLZB_YY0100,但指标ZLZB_YY0100已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0100') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY0100'

end
go

/************No.72: ZLZB_YY0100******************HD_ZBMX_HZ***ZLZB_YY0100******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0100')
begin
	print '新增指标ZLZB_YY0100,但指标ZLZB_YY0100已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0100') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY0100','每百名卫生技术人员科研成果转化金额','','','','select ''ZLZB_YY0100'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY010001'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY000401'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY0100'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY010001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY010001,ZLZB_YY000401','','','','0','-1','-1','','','','','@科研成果转化金额*100(ZLZB_YY010001)/@卫生技术人员总数(ZLZB_YY000401)','select ''ZLZB_YY0100'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY010001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.73: ZLZB_YY0101******************ZB_FACT_DIM_YS***ZLZB_YY0101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0101' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0101'
go

/************No.73: ZLZB_YY0101******************ZBMX***ZLZB_YY0101******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY0101')
begin
	print '新增指标ZLZB_YY0101,但指标ZLZB_YY0101已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0101') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY0101','ZLZB01','公共信用综合评价等级','0','1','0','级','0','','','0.00000','1','0','','','','','','ZLZB_YY0101','','','0','1','','','','','','0','1','0','','1','0','1','')
	
end
go

/************No.73: ZLZB_YY0101******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0101' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0101'
go

/************No.73: ZLZB_YY0101******************HD_ZBMX_HZ_YS***ZLZB_YY0101******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0101')
begin
	print '新增指标ZLZB_YY0101,但指标ZLZB_YY0101已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0101') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY0101'

end
go

/************No.73: ZLZB_YY0101******************HD_ZBMX_HZ***ZLZB_YY0101******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0101')
begin
	print '新增指标ZLZB_YY0101,但指标ZLZB_YY0101已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0101') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb ZLZB_YY0101'

end
go

/************No.74: A32202******************ZB_FACT_DIM_YS***A32202******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A32202' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb A32202'
go

/************No.74: A32202******************ZBMX***A32202******************************/

if exists(select 1 from ZBMX where id='A32202')
begin
	print '新增指标A32202,但指标A32202已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='A32202') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A32202','1','门急诊特需医疗服务量','0','1','0','-','0','','','0.00000','1','0','','','','','','A32202','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.74: A32202******************Y_COLUMN_MAP_ZBFACT***A32202******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A32202' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A32202'
go

/************No.74: A32202******************HD_ZBMX_HZ_YS***A32202******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32202')
begin
	print '新增指标A32202,但指标A32202已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32202') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb A32202'

end
go

/************No.74: A32202******************HD_ZBMX_HZ***A32202******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A32202')
begin
	print '新增指标A32202,但指标A32202已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='A32202') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb A32202'

end
go

/************No.75: A32203******************ZB_FACT_DIM_YS***A32203******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A32203' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb A32203'
go

/************No.75: A32203******************ZBMX***A32203******************************/

if exists(select 1 from ZBMX where id='A32203')
begin
	print '新增指标A32203,但指标A32203已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='A32203') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A32203','1','住院特需医疗服务量','0','1','0','-','0','','','0.00000','1','0','','','','','','A32203','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.75: A32203******************Y_COLUMN_MAP_ZBFACT***A32203******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A32203' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A32203'
go

/************No.75: A32203******************HD_ZBMX_HZ_YS***A32203******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32203')
begin
	print '新增指标A32203,但指标A32203已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32203') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb A32203'

end
go

/************No.75: A32203******************HD_ZBMX_HZ***A32203******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A32203')
begin
	print '新增指标A32203,但指标A32203已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='A32203') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb A32203'

end
go

/************No.76: A323******************ZB_FACT_DIM_YS***A323******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A323' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb A323'
go

/************No.76: A323******************ZBMX***A323******************************/

if exists(select 1 from ZBMX where id='A323')
begin
	print '新增指标A323,但指标A323已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='A323') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A323','1','医疗服务量','0','1','0','-','0','','','0.00000','1','0','','','','','','A323','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.76: A323******************Y_COLUMN_MAP_ZBFACT***A323******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A323' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A323'
go

/************No.76: A323******************HD_ZBMX_HZ_YS***A323******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A323')
begin
	print '新增指标A323,但指标A323已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A323') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb A323'

end
go

/************No.76: A323******************HD_ZBMX_HZ***A323******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A323')
begin
	print '新增指标A323,但指标A323已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='A323') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb A323'

end
go

/************No.77: A32301******************ZB_FACT_DIM_YS***A32301******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A32301' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb A32301'
go

/************No.77: A32301******************ZBMX***A32301******************************/

if exists(select 1 from ZBMX where id='A32301')
begin
	print '新增指标A32301,但指标A32301已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='A32301') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A32301','1','门急诊医疗服务量','0','1','0','-','0','','','0.00000','1','0','','','','','','A32301','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.77: A32301******************Y_COLUMN_MAP_ZBFACT***A32301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A32301' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A32301'
go

/************No.77: A32301******************HD_ZBMX_HZ_YS***A32301******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32301')
begin
	print '新增指标A32301,但指标A32301已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32301') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb A32301'

end
go

/************No.77: A32301******************HD_ZBMX_HZ***A32301******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A32301')
begin
	print '新增指标A32301,但指标A32301已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='A32301') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb A32301'

end
go

/************No.78: A32302******************ZB_FACT_DIM_YS***A32302******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A32302' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb A32302'
go

/************No.78: A32302******************ZBMX***A32302******************************/

if exists(select 1 from ZBMX where id='A32302')
begin
	print '新增指标A32302,但指标A32302已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='A32302') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A32302','1','住院医疗服务量','0','1','0','-','0','','','0.00000','1','0','','','','','','A32302','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.78: A32302******************Y_COLUMN_MAP_ZBFACT***A32302******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A32302' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A32302'
go

/************No.78: A32302******************HD_ZBMX_HZ_YS***A32302******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32302')
begin
	print '新增指标A32302,但指标A32302已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32302') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb A32302'

end
go

/************No.78: A32302******************HD_ZBMX_HZ***A32302******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A32302')
begin
	print '新增指标A32302,但指标A32302已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='A32302') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb A32302'

end
go

/************No.79: B10902******************ZB_FACT_DIM_YS***B10902******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B10902' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B10902'
go

/************No.79: B10902******************ZBMX***B10902******************************/

if exists(select 1 from ZBMX where id='B10902')
begin
	print '新增指标B10902,但指标B10902已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='B10902') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B10902','3','门急诊特需医疗服务收入','0','1','4','元','0','','','0.00000','1','0','','','','','','B10902','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.79: B10902******************Y_COLUMN_MAP_ZBFACT***B10902******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B10902' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B10902'
go

/************No.79: B10902******************HD_ZBMX_HZ_YS***B10902******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B10902')
begin
	print '新增指标B10902,但指标B10902已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B10902') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb B10902'

end
go

/************No.79: B10902******************HD_ZBMX_HZ***B10902******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='B10902')
begin
	print '新增指标B10902,但指标B10902已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='B10902') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb B10902'

end
go

/************No.80: B10903******************ZB_FACT_DIM_YS***B10903******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B10903' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B10903'
go

/************No.80: B10903******************ZBMX***B10903******************************/

if exists(select 1 from ZBMX where id='B10903')
begin
	print '新增指标B10903,但指标B10903已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='B10903') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B10903','3','住院特需医疗服务收入','0','1','4','元','0','','','0.00000','1','0','','','','','','B10903','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.80: B10903******************Y_COLUMN_MAP_ZBFACT***B10903******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B10903' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B10903'
go

/************No.80: B10903******************HD_ZBMX_HZ_YS***B10903******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B10903')
begin
	print '新增指标B10903,但指标B10903已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B10903') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb B10903'

end
go

/************No.80: B10903******************HD_ZBMX_HZ***B10903******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='B10903')
begin
	print '新增指标B10903,但指标B10903已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='B10903') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb B10903'

end
go

/************No.81: ZLZB_YY004101******************ZB_FACT_DIM_YS***ZLZB_YY004101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY004101' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY004101'
go

/************No.81: ZLZB_YY004101******************ZBMX***ZLZB_YY004101******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY004101')
begin
	print '新增指标ZLZB_YY004101,但指标ZLZB_YY004101已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY004101') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY004101','ZLZB01','资产总额','0','1','4','元','0','','','0.00000','1','0','','','','','','ZLZB_YY004101','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.81: ZLZB_YY004101******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY004101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY004101' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY004101'
go

/************No.81: ZLZB_YY004101******************HD_ZBMX_HZ_YS***ZLZB_YY004101******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY004101')
begin
	print '新增指标ZLZB_YY004101,但指标ZLZB_YY004101已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY004101') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY004101'

end
go

/************No.81: ZLZB_YY004101******************HD_ZBMX_HZ***ZLZB_YY004101******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY004101')
begin
	print '新增指标ZLZB_YY004101,但指标ZLZB_YY004101已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY004101') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb ZLZB_YY004101'

end
go

/************No.82: ZLZB_YY004102******************ZB_FACT_DIM_YS***ZLZB_YY004102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY004102' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY004102'
go

/************No.82: ZLZB_YY004102******************ZBMX***ZLZB_YY004102******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY004102')
begin
	print '新增指标ZLZB_YY004102,但指标ZLZB_YY004102已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY004102') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY004102','ZLZB01','负债总额','0','1','4','元','0','','','0.00000','1','0','','','','','','ZLZB_YY004102','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.82: ZLZB_YY004102******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY004102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY004102' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY004102'
go

/************No.82: ZLZB_YY004102******************HD_ZBMX_HZ_YS***ZLZB_YY004102******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY004102')
begin
	print '新增指标ZLZB_YY004102,但指标ZLZB_YY004102已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY004102') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY004102'

end
go

/************No.82: ZLZB_YY004102******************HD_ZBMX_HZ***ZLZB_YY004102******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY004102')
begin
	print '新增指标ZLZB_YY004102,但指标ZLZB_YY004102已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY004102') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb ZLZB_YY004102'

end
go

/************No.83: ZLZB_YY009402******************ZB_FACT_DIM_YS***ZLZB_YY009402******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY009402' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY009402'
go

/************No.83: ZLZB_YY009402******************ZBMX***ZLZB_YY009402******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY009402')
begin
	print '新增指标ZLZB_YY009402,但指标ZLZB_YY009402已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY009402') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY009402','ZLZB01','医院接受其他医院（尤其对口支援医院、医联体内医院）进修并返回原医院独立工作人数','0','1','0','人','0','','','0.00000','1','0','','','','','','ZLZB_YY009402','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.83: ZLZB_YY009402******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY009402******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY009402' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY009402'
go

/************No.83: ZLZB_YY009402******************HD_ZBMX_HZ_YS***ZLZB_YY009402******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009402')
begin
	print '新增指标ZLZB_YY009402,但指标ZLZB_YY009402已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009402') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY009402'

end
go

/************No.83: ZLZB_YY009402******************HD_ZBMX_HZ***ZLZB_YY009402******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY009402')
begin
	print '新增指标ZLZB_YY009402,但指标ZLZB_YY009402已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY009402') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb ZLZB_YY009402'

end
go

/************No.84: ZLZB_YY009401******************ZB_FACT_DIM_YS***ZLZB_YY009401******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY009401' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY009401'
go

/************No.84: ZLZB_YY009401******************ZBMX***ZLZB_YY009401******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY009401')
begin
	print '新增指标ZLZB_YY009401,但指标ZLZB_YY009401已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY009401') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY009401','ZLZB01','医院接受其他医院（尤其对口支援医院、医联体内医院）进修人数','0','1','0','人','0','','','0.00000','1','0','','','','','','ZLZB_YY009401','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.84: ZLZB_YY009401******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY009401******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY009401' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY009401'
go

/************No.84: ZLZB_YY009401******************HD_ZBMX_HZ_YS***ZLZB_YY009401******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009401')
begin
	print '新增指标ZLZB_YY009401,但指标ZLZB_YY009401已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009401') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY009401'

end
go

/************No.84: ZLZB_YY009401******************HD_ZBMX_HZ***ZLZB_YY009401******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY009401')
begin
	print '新增指标ZLZB_YY009401,但指标ZLZB_YY009401已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY009401') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb ZLZB_YY009401'

end
go

/************No.85: ZLZB_YY009502******************ZB_FACT_DIM_YS***ZLZB_YY009502******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY009502' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY009502'
go

/************No.85: ZLZB_YY009502******************ZBMX***ZLZB_YY009502******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY009502')
begin
	print '新增指标ZLZB_YY009502,但指标ZLZB_YY009502已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY009502') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY009502','ZLZB01','医院住院医师首次参加医师资格考试通过人数','0','1','0','人','0','','','0.00000','1','0','','','','','','ZLZB_YY009502','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.85: ZLZB_YY009502******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY009502******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY009502' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY009502'
go

/************No.85: ZLZB_YY009502******************HD_ZBMX_HZ_YS***ZLZB_YY009502******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009502')
begin
	print '新增指标ZLZB_YY009502,但指标ZLZB_YY009502已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009502') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY009502'

end
go

/************No.85: ZLZB_YY009502******************HD_ZBMX_HZ***ZLZB_YY009502******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY009502')
begin
	print '新增指标ZLZB_YY009502,但指标ZLZB_YY009502已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY009502') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb ZLZB_YY009502'

end
go

/************No.86: ZLZB_YY009501******************ZB_FACT_DIM_YS***ZLZB_YY009501******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY009501' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY009501'
go

/************No.86: ZLZB_YY009501******************ZBMX***ZLZB_YY009501******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY009501')
begin
	print '新增指标ZLZB_YY009501,但指标ZLZB_YY009501已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY009501') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY009501','ZLZB01','医院住院医师首次参加医师资格考试人数','0','1','0','人','0','','','0.00000','1','0','','','','','','ZLZB_YY009501','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.86: ZLZB_YY009501******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY009501******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY009501' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY009501'
go

/************No.86: ZLZB_YY009501******************HD_ZBMX_HZ_YS***ZLZB_YY009501******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009501')
begin
	print '新增指标ZLZB_YY009501,但指标ZLZB_YY009501已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009501') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY009501'

end
go

/************No.86: ZLZB_YY009501******************HD_ZBMX_HZ***ZLZB_YY009501******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY009501')
begin
	print '新增指标ZLZB_YY009501,但指标ZLZB_YY009501已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY009501') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb ZLZB_YY009501'

end
go

/************No.87: ZLZB_YY009901******************ZB_FACT_DIM_YS***ZLZB_YY009901******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY009901' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY009901'
go

/************No.87: ZLZB_YY009901******************ZBMX***ZLZB_YY009901******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY009901')
begin
	print '新增指标ZLZB_YY009901,但指标ZLZB_YY009901已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY009901') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY009901','ZLZB01','科研项目经费*100','0','1','4','元','0','','','0.00000','1','0','','','','','','ZLZB_YY009901','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.87: ZLZB_YY009901******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY009901******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY009901' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY009901'
go

/************No.87: ZLZB_YY009901******************HD_ZBMX_HZ_YS***ZLZB_YY009901******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009901')
begin
	print '新增指标ZLZB_YY009901,但指标ZLZB_YY009901已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009901') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY009901'

end
go

/************No.87: ZLZB_YY009901******************HD_ZBMX_HZ***ZLZB_YY009901******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY009901')
begin
	print '新增指标ZLZB_YY009901,但指标ZLZB_YY009901已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY009901') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb ZLZB_YY009901'

end
go

/************No.88: ZLZB_YY010001******************ZB_FACT_DIM_YS***ZLZB_YY010001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY010001' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY010001'
go

/************No.88: ZLZB_YY010001******************ZBMX***ZLZB_YY010001******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY010001')
begin
	print '新增指标ZLZB_YY010001,但指标ZLZB_YY010001已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY010001') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY010001','ZLZB01','科研成果转化金额*100','0','1','4','元','0','','','0.00000','1','0','','','','','','ZLZB_YY010001','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.88: ZLZB_YY010001******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY010001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY010001' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY010001'
go

/************No.88: ZLZB_YY010001******************HD_ZBMX_HZ_YS***ZLZB_YY010001******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY010001')
begin
	print '新增指标ZLZB_YY010001,但指标ZLZB_YY010001已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY010001') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY010001'

end
go

/************No.88: ZLZB_YY010001******************HD_ZBMX_HZ***ZLZB_YY010001******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY010001')
begin
	print '新增指标ZLZB_YY010001,但指标ZLZB_YY010001已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY010001') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb ZLZB_YY010001'

end
go

/************No.89: J10901******************ZB_FACT_DIM_YS***J10901******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='J10901' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb J10901'
go

/************No.89: J10901******************ZBMX***J10901******************************/

if exists(select 1 from ZBMX where id='J10901')
begin
	print '新增指标J10901,但指标J10901已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='J10901') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('J10901','11','大型医用设备检查阳性例数','0','1','0','例','0','','','0.00000','1','0','','','','','','J10901','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.89: J10901******************Y_COLUMN_MAP_ZBFACT***J10901******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='J10901' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb J10901'
go

/************No.89: J10901******************HD_ZBMX_HZ_YS***J10901******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='J10901')
begin
	print '新增指标J10901,但指标J10901已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='J10901') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb J10901'

end
go

/************No.89: J10901******************HD_ZBMX_HZ***J10901******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='J10901')
begin
	print '新增指标J10901,但指标J10901已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='J10901') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb J10901'

end
go

/************No.90: J109******************ZB_FACT_DIM_YS***J109******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='J109' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb J109'
go

/************No.90: J109******************ZBMX***J109******************************/

if exists(select 1 from ZBMX where id='J109')
begin
	print '新增指标J109,但指标J109已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='J109') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('J109','11','大型医用设备检查总例数','0','1','0','例','0','','','0.00000','1','0','','','','','','J109','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.90: J109******************Y_COLUMN_MAP_ZBFACT***J109******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='J109' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb J109'
go

/************No.90: J109******************HD_ZBMX_HZ_YS***J109******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='J109')
begin
	print '新增指标J109,但指标J109已存在于表HD_ZBMX_HZ_YS中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='J109') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb J109'

end
go

/************No.90: J109******************HD_ZBMX_HZ***J109******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='J109')
begin
	print '新增指标J109,但指标J109已存在于表HD_ZBMX_HZ中,请核查!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='J109') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb J109'

end
go

