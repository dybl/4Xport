/************No.1: A00309******************ZB_FACT_DIM_YS***A00309******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A00309' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A00309','sum','A00308','1','A00401','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A00309','sum','A00308','1','A00401','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.1: A00309******************ZBMX***A00309******************************/

if exists(select 1 from ZBMX where id='A00309')
begin
	print '����ָ��A00309,��ָ��A00309�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='A00309') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A00309','1','����ԤԼ����ƽ������ʱ��','1','1','0','����','1','','','0.00000','1','0','','','����ԤԼ�Һ�����ͳ�ƣ���ͳ�����ϼ�¼��ԤԼҽ������Ϊ�յļ�¼','','','A00309','','','0','1','','','','','','A003','1','0','','1','1','1','')
	
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
	print '����ָ��A00309,��ָ��A00309�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A00309') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb A00309'

end
go

/************No.1: A00309******************HD_ZBMX_HZ***A00309******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A00309')
begin
	print '����ָ��A00309,��ָ��A00309�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='A00309') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('A00309','����ԤԼ����ƽ������ʱ��','','','','select ''A00309'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A00308'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A00401'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''A00309'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A00308'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A00401'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','0','','A00308,A00401','12436','','','0','-1','-1','','','','','@����ԤԼ���ߺ���ʱ��(A00308)/@��ЧԤԼ�����˴�(A00401)','select ''A00309'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A00308'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A00401'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.2: A006******************ZB_FACT_DIM_YS***A006******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A006' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A006','sum','A004','1','A003','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A006','sum','A004','1','A003','1','DIM_YYFS','yyfskey','yyfsmc','ԤԼ��ʽ',' where',' where','yyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A006','sum','A004','1','A003','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A006','sum','A004','1','A003','1','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	go

/************No.2: A006******************ZBMX***A006******************************/

if exists(select 1 from ZBMX where id='A006')
begin
	print '����ָ��A006,��ָ��A006�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='A006') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A006','1','ԤԼ������','0','100','4','%','1','','','0.05000','1','1','','','','','','A006','','','0','1','','0','1','{ʵ��ֵ}/{Ŀ��ֵ}<0.95','0','0','0','0','','','','','')
	
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
	print '����ָ��A006,��ָ��A006�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A006') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('A006','ԤԼ������','select ''A006'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''A004''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''A003''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''A006'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''A004'' union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''A003'')t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','A004,A003','11508','','','0','')
	
end
go

/************No.2: A006******************HD_ZBMX_HZ***A006******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A006')
begin
	print '����ָ��A006,��ָ��A006�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='A006') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('A006','ԤԼ������','','','','select ''A006'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A004''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A003''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''A006'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A004''    and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A003''     and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','A004,A003','11508','','','0','-1','-1','','','','','@ԤԼ�����˴�(A004)/@����ԤԼ�˴�(A003)','select ''A006'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A004''    and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A003''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.3: A115******************ZB_FACT_DIM_YS***A115******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A115' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A115','sum','A111','1','ZLZB_YY0005','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A115','sum','A111','1','ZLZB_YY0005','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.3: A115******************ZBMX***A115******************************/

if exists(select 1 from ZBMX where id='A115')
begin
	print '����ָ��A115,��ָ��A115�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='A115') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A115','2','ÿ��ִҵҽʦ�վ�סԺ��������','0','1','0','��','1','','','0.00000','1','0','','','���㷽����ȫ��ʵ��ռ���ܴ�����/ҽԺƽ��ִҵ������ҽʦ����/365.ҽԺƽ��ִҵ������ҽʦ����=����������� ��һ���������/2ָ����Դ��ҽԺ�','','','A115','','','0','1','','','','','','0','1','0','','1','1','1','')
	
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
	print '����ָ��A115,��ָ��A115�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A115') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb A115'

end
go

/************No.3: A115******************HD_ZBMX_HZ***A115******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A115')
begin
	print '����ָ��A115,��ָ��A115�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='A115') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('A115','ÿ��ִҵҽʦ�վ�סԺ��������','','','','select ''A115'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A111'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0005'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''A115'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A111'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','A111,ZLZB_YY0005','12407','','','0','-1','-1','','','','','@��Ժ����ʵ��ռ���ܴ���(A111)/@����������Ա����ҽʦ��(ZLZB_YY0005)','select ''A115'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A111'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.4: A32001******************ZB_FACT_DIM_YS***A32001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A32001' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_YBFLXX','ybflkey','ybsm','ҽ������',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_SEX','sexkey','sex','�Ա�',' where',' where','sexkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_YB_YBLX','yblxkey','yblxmc','ҽ������',' where',' where','yblxkey','','','','','','')
	go

/************No.4: A32001******************ZBMX***A32001******************************/

if exists(select 1 from ZBMX where id='A32001')
begin
	print '����ָ��A32001,��ָ��A32001�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='A32001') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A32001','1','�����˴������Ժ�˴�����','0','100','4','%','1','','','0.00000','1','0','','','','','','A32001','','','0','1','','','','','','A320','1','0','','0','0','','')
	
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
	print '����ָ��A32001,��ָ��A32001�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32001') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('A32001','�����˴������Ժ�˴�����','select ''A32001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''A00101'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''A102'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''A32001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A00101'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A102'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','A00101,A102','12398','','','0','select ''A32001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A00101'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A102'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.4: A32001******************HD_ZBMX_HZ***A32001******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A32001')
begin
	print '����ָ��A32001,��ָ��A32001�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='A32001') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('A32001','�����˴������Ժ�˴�����','','select timekey,yykey,kskey,yskey,ybflkey,sexkey,yblxkey,sum(ghrc) fz,0 fm from FACT_YY_MZ_JZRC a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and mjzkey in (1) group by timekey,yykey,kskey,yskey,ybflkey,sexkey,yblxkey union all select timekey,yykey,kskey,yskey,ybflkey,sexkey,yblxkey,0 fz,sum(cyrc) fm from FACT_YY_ZY_CYYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,ybflkey,sexkey,yblxkey','','select ''A32001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A00101'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A102'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''A32001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A00101'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A102'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','A00101,A102','12398','','','0','-1','-1','','','','timekey,yykey,kskey,yskey,ybflkey,sexkey,yblxkey','@�����˴�(A00101)/@��Ժ�˴�(A102)','select ''A32001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A00101'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A102'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.5: A32101******************ZB_FACT_DIM_YS***A32101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A32101' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb A32101'
go

/************No.5: A32101******************ZBMX***A32101******************************/

if exists(select 1 from ZBMX where id='A32101')
begin
	print '����ָ��A32101,��ָ��A32101�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='A32101') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A32101','1','������ת�����˴���','0','1','0','��','0','','','0.00000','1','0','','','','','','A32101','','','0','1','','','','','','A321','1','0','','1','0','1','')
	
end
go

/************No.5: A32101******************Y_COLUMN_MAP_ZBFACT***A32101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A32101' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A32101'
go

/************No.5: A32101******************HD_ZBMX_HZ_YS***A32101******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32101')
begin
	print '����ָ��A32101,��ָ��A32101�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32101') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb A32101'

end
go

/************No.5: A32101******************HD_ZBMX_HZ***A32101******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A32101')
begin
	print '����ָ��A32101,��ָ��A32101�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='A32101') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb A32101'

end
go

/************No.6: A32102******************ZB_FACT_DIM_YS***A32102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A32102' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32102','sum','A32102','1','0','0','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32102','sum','A32102','1','0','0','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32102','sum','A32102','1','0','0','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.6: A32102******************ZBMX***A32102******************************/

if exists(select 1 from ZBMX where id='A32102')
begin
	print '����ָ��A32102,��ָ��A32102�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='A32102') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A32102','1','סԺ��ת�����˴���','0','1','0','��','0','','','0.00000','1','0','','','','','','A32102','','','0','1','','','','','','A321','1','0','','0','0','','')
	
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
	print '����ָ��A32102,��ָ��A32102�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32102') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb A32102'

end
go

/************No.6: A32102******************HD_ZBMX_HZ***A32102******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A32102')
begin
	print '����ָ��A32102,��ָ��A32102�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='A32102') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('A32102','סԺ��ת�����˴���','select ''A32102'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,sum(cyrc) fz from FACT_YY_ZY_CYYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and cyfskey in (4) group by timekey,yykey,kskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''A32102'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,sum(cyrc) fz from FACT_YY_ZY_CYYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and cyfskey in (4) group by timekey,yykey,kskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''A32102'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,sum(cyrc) fz from FACT_YY_ZY_CYYWLFX a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and cyfskey in (4) group by timekey,yykey,kskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','12399','','','1','1','0','FACT_YY_ZY_CYYWLFX','cyrc','[{\''dim_key\'':\''cyfskey\'',\''relation\'':\''0\'',\''caliber\'':\''4\''}]','timekey,yykey,kskey','','select ''A32102'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,sum(cyrc) fz from FACT_YY_ZY_CYYWLFX a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and cyfskey in (4) group by timekey,yykey,kskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','')
	
end
go

/************No.7: A32201******************ZB_FACT_DIM_YS***A32201******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A32201' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb A32201'
go

/************No.7: A32201******************ZBMX***A32201******************************/

if exists(select 1 from ZBMX where id='A32201')
begin
	print '����ָ��A32201,��ָ��A32201�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='A32201') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A32201','1','����ҽ�Ʒ�����ռ��','0','100','4','%','1','','','0.00000','1','0','','','','','','A32201','','','0','1','','','','','','A322','1','0','','1','1','1','')
	
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
	print '����ָ��A32201,��ָ��A32201�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32201') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb A32201'

end
go

/************No.7: A32201******************HD_ZBMX_HZ***A32201******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A32201')
begin
	print '����ָ��A32201,��ָ��A32201�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='A32201') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('A32201','����ҽ�Ʒ�����ռ��','','','','select ''A32201'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A322'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A323'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''A32201'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A322'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A323'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','A322,A323','12520','','','0','-1','-1','','','','','@����ҽ�Ʒ�����(A322)/@ҽ�Ʒ�����(A323)','select ''A32201'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A322'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A323'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.8: B001******************ZB_FACT_DIM_YS***B001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B001' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B001','sum','B001','1','0','1','DIM_ZDDMK','zddmkey','zdmc','���',' where',' where','zddmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B001','sum','B001','ghfy+cffy','0','0','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B001','sum','B001','ghfy+cffy','0','0','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B001','sum','B001','ghfy+cffy','0','0','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B001','sum','B001','ghfy+cffy','0','0','DIM_SFDXMK','dxmkey','dxmmc','�շѴ���Ŀ',' where',' where','dxmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B001','sum','B001','ghfy+cffy','0','0','DIM_YBFLXX','ybflkey','ybsm','ҽ������',' where',' where','ybflkey','','','','','','')
	go

/************No.8: B001******************ZBMX***B001******************************/

if exists(select 1 from ZBMX where id='B001')
begin
	print '����ָ��B001,��ָ��B001�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='B001') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B001','3','ҽԺ�ܷ���','0','10000','4','��Ԫ','1','','','0.05000','1','1','','','�ż������ סԺ����','','','B001','','','0','1','','0','1','{ʵ��ֵ}/{Ŀ��ֵ}<0.95','0','0','0','0','','','','','')
	
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
	print '����ָ��B001,��ָ��B001�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B001') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('B001','ҽԺ�ܷ���','select ''B001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,0 fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B00101''     and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B00102''    and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''B001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,0 fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00102'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','B00101,B00102','11518','SELECT ''B001'' zbmx_id,yykey ,isnull (yydm,''01'') yydm,kskey,ksdm,yskey,ysdm,month,(SUM(fz)+SUM(fm)) fz,0 fm,NULL czry,getdate() gxrq         
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
	print '����ָ��B001,��ָ��B001�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='B001') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('B001','ҽԺ�ܷ���','','select timekey,yykey,kskey,yskey,dxmkey,ybflkey,zddmkey,sum(ghfy+cffy) fz from FACT_FY_MZ_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,dxmkey,ybflkey,zddmkey union all select timekey,yykey,kskey,yskey,dxmkey,ybflkey,zddmkey,sum(zfy) fz from FACT_FY_ZY_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,dxmkey,ybflkey,zddmkey','','select ''B001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,0 fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00101''     and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00102''    and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''B001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz ,0 fm,null czry,getdate() gxrq ,bqkey from ( select yykey,yydm,kskey,ksdm,month,fz_tq fz,0 fm  ,bqkey from FACT_RESULT_KS_VALUE_M  where zbmx_id =''B00101'' and month between @kssj and @jssj   union all select yykey,yydm,kskey,ksdm,month,fz_tq fz,0 fm  ,bqkey from FACT_RESULT_KS_VALUE_M  where zbmx_id =''B00102'' and month between @kssj and @jssj  )t group by yykey,yydm,kskey,ksdm,month ,bqkey','1','','B00101,B00102','11518','','','0','-1','-1','','','','','@�ż������(B00101)+@סԺ����(B00102)','select ''B001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz ,0 fm,null czry,getdate() gxrq ,bqkey from ( select yykey,yydm,kskey,ksdm,month,fz_hq fz,0 fm  ,bqkey from FACT_RESULT_KS_VALUE_M  where zbmx_id =''B00101'' and month between @kssj and @jssj   union all select yykey,yydm,kskey,ksdm,month,fz_hq fz,0 fm  ,bqkey from FACT_RESULT_KS_VALUE_M  where zbmx_id =''B00102'' and month between @kssj and @jssj  )t group by yykey,yydm,kskey,ksdm,month ,bqkey','','')
	
end
go

/************No.9: B00103******************ZB_FACT_DIM_YS***B00103******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B00103' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00103','sum','B00101','1','B001','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00103','sum','B00101','1','B001','1','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00103','sum','B00101','1','B001','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00103','sum','B00101','1','B001','1','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00103','sum','B00101','1','B001','1','DIM_SFDXMK','dxmkey','dxmmc','�շѴ���Ŀ',' where',' where','dxmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00103','sum','B00101','1','B001','1','DIM_YBFLXX','ybflkey','ybsm','ҽ������',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00103','sum','B00101','1','B001','1','DIM_ZDDMK','zddmkey','zdmc','���',' where',' where','zddmkey','','','','','','')
	go

/************No.9: B00103******************ZBMX***B00103******************************/

if exists(select 1 from ZBMX where id='B00103')
begin
	print '����ָ��B00103,��ָ��B00103�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='B00103') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B00103','3','�ż������ռ��','0','100','4','%','1','','','0.00000','1','0','','','@�ż������(B00101)/@ҽԺ�ܷ���(B001)','','','B00103','','','0','1','','','','','','B001','0','0','','0','0','','')
	
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
	print '����ָ��B00103,��ָ��B00103�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B00103') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('B00103','�ż������ռ��','select ''B00103'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B00101'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B001'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''B00103'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','B00101,B001','12409','','','0','select ''B00103'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.9: B00103******************HD_ZBMX_HZ***B00103******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='B00103')
begin
	print '����ָ��B00103,��ָ��B00103�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='B00103') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('B00103','�ż������ռ��','','select timekey,yykey,kskey,yskey,dxmkey,ybflkey,zddmkey,sum(ghfy+cffy) fz,0 fm from FACT_FY_MZ_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,dxmkey,ybflkey,zddmkey union all select timekey,yykey,kskey,yskey,dxmkey,ybflkey,zddmkey,0 fz,sum(ghfy+cffy) fm from FACT_FY_MZ_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,dxmkey,ybflkey,zddmkey union all select timekey,yykey,kskey,yskey,dxmkey,ybflkey,zddmkey,0 fz,sum(zfy) fm from FACT_FY_ZY_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,dxmkey,ybflkey,zddmkey','','select ''B00103'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00101'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B001'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''B00103'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','B00101,B001','12409','','','0','-1','-1','','','','timekey,yykey,kskey,yskey,dxmkey,ybflkey,zddmkey','@�ż������(B00101)/@ҽԺ�ܷ���(B001)','select ''B00103'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.10: B00104******************ZB_FACT_DIM_YS***B00104******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B00104' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_ZDDMK','zddmkey','zdmc','���',' where',' where','zddmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_ZY_ZLZXX','zlzkey','zlzmc','������',' where',' where','zlzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_YBFLXX','ybflkey','ybsm','ҽ������',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_SFDXMK','dxmkey','dxmmc','�շѴ���Ŀ',' where',' where','dxmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_BQDMK','bqkey','name','����',' where',' where','bqkey','','','','','','')
	go

/************No.10: B00104******************ZBMX***B00104******************************/

if exists(select 1 from ZBMX where id='B00104')
begin
	print '����ָ��B00104,��ָ��B00104�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='B00104') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B00104','3','סԺ����ռ��','0','100','4','%','1','','','0.00000','1','0','','','@סԺ����(B00102)/@ҽԺ�ܷ���(B001)','','','B00104','','','0','1','','','','','','B001','0','0','','0','0','','')
	
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
	print '����ָ��B00104,��ָ��B00104�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B00104') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('B00104','סԺ����ռ��','select ''B00104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B00102'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B001'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''B00104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00102'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','B00102,B001','12410','','','0','select ''B00104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00102'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.10: B00104******************HD_ZBMX_HZ***B00104******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='B00104')
begin
	print '����ָ��B00104,��ָ��B00104�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='B00104') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('B00104','סԺ����ռ��','','select timekey,yykey,kskey,yskey,ybflkey,dxmkey,bqkey,sjbqkey,zddmkey,zlzkey,sum(zfy) fz,0 fm from FACT_FY_ZY_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,ybflkey,dxmkey,bqkey,sjbqkey,zddmkey,zlzkey union all select timekey,yykey,kskey,yskey,ybflkey,dxmkey,bqkey,sjbqkey,zddmkey,zlzkey,0 fz,sum(ghfy+cffy) fm from FACT_FY_MZ_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,ybflkey,dxmkey,bqkey,sjbqkey,zddmkey,zlzkey union all select timekey,yykey,kskey,yskey,ybflkey,dxmkey,bqkey,sjbqkey,zddmkey,zlzkey,0 fz,sum(zfy) fm from FACT_FY_ZY_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,ybflkey,dxmkey,bqkey,sjbqkey,zddmkey,zlzkey','','select ''B00104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00102'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B001'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''B00104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00102'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','B00102,B001','12410','','','0','-1','-1','','','','timekey,yykey,kskey,yskey,ybflkey,dxmkey,bqkey,sjbqkey,zddmkey,zlzkey','@סԺ����(B00102)/@ҽԺ�ܷ���(B001)','select ''B00104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00102'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.11: B00106******************ZB_FACT_DIM_YS***B00106******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B00106' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00106','sum','B00105','1','B001','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00106','sum','B00105','1','B001','1','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00106','sum','B00105','1','B001','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.11: B00106******************ZBMX***B00106******************************/

if exists(select 1 from ZBMX where id='B00106')
begin
	print '����ָ��B00106,��ָ��B00106�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='B00106') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B00106','3','ҽ�Ʒ������루����ҩƷ���Ĳġ����������룩ռҽ���������','0','100','4','%','1','','','0.00000','1','0','','','�ż������ סԺ����','','','B00106','','','0','1','','','','','','B001','1','0','','0','0','','')
	
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
	print '����ָ��B00106,��ָ��B00106�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B00106') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb B00106'

end
go

/************No.11: B00106******************HD_ZBMX_HZ***B00106******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='B00106')
begin
	print '����ָ��B00106,��ָ��B00106�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='B00106') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('B00106','ҽ�Ʒ������루����ҩƷ���Ĳġ����������룩ռҽ���������','','select timekey,yykey,kskey,sum(ghfy+cffy) fz,0 fm from FACT_FY_MZ_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and dxmkey in (0,5,7,8,43,44,45,46,47,48,49,59,62,64,65,66,68) group by timekey,yykey,kskey union all select timekey,yykey,kskey,sum(zfy) fz,0 fm from FACT_FY_ZY_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and dxmkey in (0,4,5,6,7,8,36,37,40,42,43,44,45,46,47,48,49,59,64,65,68,71) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ghfy+cffy) fm from FACT_FY_MZ_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(zfy) fm from FACT_FY_ZY_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey','','select ''B00106'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00105'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B001'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''B00106'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00105'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','B00105,B001','12415','','','0','-1','-1','','','','timekey,yykey,kskey','@ҽ�Ʒ������루����ҩƷ���Ĳġ����������룩(B00105)/@ҽԺ�ܷ���(B001)','select ''B00106'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00105'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.12: B00204******************ZB_FACT_DIM_YS***B00204******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B00204' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00204','sum','B00203','1','B002','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00204','sum','B00203','1','B002','1','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00204','sum','B00203','1','B002','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.12: B00204******************ZBMX***B00204******************************/

if exists(select 1 from ZBMX where id='B00204')
begin
	print '����ָ��B00204,��ָ��B00204�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='B00204') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B00204','3','����ҩƷ�ܷ���ռ��','0','100','4','%','1','','','0.00000','1','0','','','@����ҩƷ�ܷ���(B00203)/@ҩƷ�ܷ���(B002)','','','B00204','','','0','1','','','','','','B002','1','0','','0','0','','')
	
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
	print '����ָ��B00204,��ָ��B00204�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B00204') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb B00204'

end
go

/************No.12: B00204******************HD_ZBMX_HZ***B00204******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='B00204')
begin
	print '����ָ��B00204,��ָ��B00204�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='B00204') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('B00204','����ҩƷ�ܷ���ռ��','','select timekey,yykey,kskey,sum(ypfy) fz,0 fm from FACT_YP_MZ_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and fzypbz in (1) group by timekey,yykey,kskey union all select timekey,yykey,kskey,sum(ypfy) fz,0 fm from FACT_YP_ZY_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and fzypbz in (1) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ypfy) fm from FACT_YP_MZ_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ypfy) fm from FACT_YP_ZY_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey','','select ''B00204'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00203'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''B00204'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00203'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','B00203,B002','12420','','','0','-1','-1','','','','timekey,yykey,kskey','@����ҩƷ�ܷ���(B00203)/@ҩƷ�ܷ���(B002)','select ''B00204'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00203'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.13: B101******************ZB_FACT_DIM_YS***B101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B101' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B101','sum','B00101','1','A001','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B101','sum','B00101','1','A001','1','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B101','sum','B00101','1','A001','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B101','sum','B00101','1','A001','1','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B101','sum','B00101','1','A001','1','DIM_MJZBZ','mjzkey','name','�ż���',' where',' where','mjzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B101','sum','B00101','1','A001','1','DIM_YBFLXX','ybflkey','ybsm','ҽ������',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B101','sum','B00101','1','A001','1','DIM_ZDDMK','zddmkey','zdmc','���',' where',' where','zddmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B101','sum','B00101','1','A001','1','DIM_CZRYK','czykey','rymc','������Ա',' where',' where','czykey','','','','','','')
	go

/************No.13: B101******************ZBMX***B101******************************/

if exists(select 1 from ZBMX where id='B101')
begin
	print '����ָ��B101,��ָ��B101�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='B101') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B101','3','�ż�����η�','0','1','4','Ԫ','1','','','-0.01000','1','0','','','�ż�����η�=�ż������/�ż����˴�','','','B101','','','0','2','','0','1','{ʵ��ֵ}/{Ŀ��ֵ}<0.95','0','0','0','0','','0','0','','')
	
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
	print '����ָ��B101,��ָ��B101�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B101') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('B101','�ż�����η�','select ''B101'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B00101'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''A001'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''B101'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','B00101,A001','11471','SELECT ''B101'' zbmx_id,yykey,yydm,kskey,ksdm,yskey,ysdm,month,SUM(fz) fz,SUM(fm) fm ,NULL czry,getdate() gxrq          
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
	print '����ָ��B101,��ָ��B101�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='B101') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('B101','�ż�����η�','','select timekey,yykey,kskey,yskey,mjzkey,ybflkey,zddmkey,czykey,sum(ghfy+cffy) fz,0 fm from FACT_FY_MZ_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,mjzkey,ybflkey,zddmkey,czykey union all select timekey,yykey,kskey,yskey,mjzkey,ybflkey,zddmkey,czykey,0 fz,sum(ghrc) fm from FACT_YY_MZ_JZRC a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey,mjzkey,ybflkey,zddmkey,czykey','','select ''B101'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00101'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A001'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''B101'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','B00101,A001','11471','','','0','-1','-1','','','','timekey,yykey,kskey,yskey,mjzkey,ybflkey,zddmkey,czykey','@�ż������(B00101)/@�ż����˴�(A001)','select ''B101'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.14: B102******************ZB_FACT_DIM_YS***B102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B102' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B102','sum','B00102','1','A102','1','DIM_YBFLXX','ybflkey','ybsm','ҽ������',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B102','sum','B00102','1','A102','1','DIM_BQDMK','bqkey','name','����',' where',' where','bqkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B102','sum','B00102','1','A102','1','DIM_ZY_ZLD','zlzkey','zlzmc','������',' where',' where','zlzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B102','sum','B00102','zfy','A102','cyrc','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B102','sum','B00102','zfy','A102','cyrc','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B102','sum','B00102','zfy','A102','cyrc','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	go

/************No.14: B102******************ZBMX***B102******************************/

if exists(select 1 from ZBMX where id='B102')
begin
	print '����ָ��B102,��ָ��B102�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='B102') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B102','3','סԺ���η�','0','1','4','Ԫ','1','','','-0.01000','1','0','','','סԺ���η�=סԺ����/��Ժ�˴�','','','B102','','','0','2','','0','1','{ʵ��ֵ}/{Ŀ��ֵ}<0.95','0','0','0','0','','','','','')
	
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
	print '����ָ��B102,��ָ��B102�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B102') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('B102','סԺ���η�','select ''B102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B00102''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''A102''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''B102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''B00102'' union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''A102'')t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','B00102,A102','11472','SELECT ''B102'' zbmx_id,yykey,yydm,kskey,ksdm,yskey,ysdm,month,SUM(fz) fz,SUM(fm) fm ,NULL czry,getdate() gxrq
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
	print '����ָ��B102,��ָ��B102�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='B102') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('B102','סԺ���η�','','','','select ''B102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00102''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A102''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''B102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00102''    and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A102''     and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','B00102,A102','11472','','','0','-1','-1','','','','','@סԺ����(B00102)/@��Ժ�˴�(A102)','select ''B102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00102''    and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A102''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.15: B103******************ZB_FACT_DIM_YS***B103******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B103' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B103','sum','B00201','1','A001','1','DIM_YBFLXX','ybflkey','ybsm','ҽ������',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B103','sum','B00201','ypfy','A001','ghrc','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B103','sum','B00201','ypfy','A001','ghrc','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B103','sum','B00201','ypfy','A001','ghrc','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	go

/************No.15: B103******************ZBMX***B103******************************/

if exists(select 1 from ZBMX where id='B103')
begin
	print '����ָ��B103,��ָ��B103�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='B103') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B103','3','�ż���ҩƷ���η�','0','1','4','Ԫ','1','','','-0.01000','1','0','','','�ż���ҩƷ���η�=�ż���ҩƷ����/�ż����˴�','','','B103','','','0','2','','0','1','{ʵ��ֵ}/{Ŀ��ֵ}<0.95','0','0','0','0','','','','','')
	
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
	print '����ָ��B103,��ָ��B103�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B103') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('B103','�ż���ҩƷ���η�','select ''B103'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B00201''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''A001''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''B103'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''B00201'' union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''A001'')t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','B00201,A001','11473','SELECT ''B103'' zbmx_id,yykey,yydm,kskey,ksdm,yskey,ysdm,month,SUM(fz) fz,SUM(fm) fm ,NULL czry,getdate() gxrq          
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
	print '����ָ��B103,��ָ��B103�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='B103') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('B103','�ż���ҩƷ���η�','','','','select ''B103'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00201''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A001''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''B103'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00201''    and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A001''     and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','B00201,A001','11473','','','0','-1','-1','','','','','@�ż���ҩƷ����(B00201)/@�ż����˴�(A001)','select ''B103'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00201''    and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A001''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.16: B104******************ZB_FACT_DIM_YS***B104******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B104' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B104','sum','B00202','1','A102','1','DIM_YBFLXX','ybflkey','ybsm','ҽ������',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B104','sum','B00202','1','A102','1','DIM_ZY_ZLD','zlzkey','zlzmc','������',' where',' where','zlzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B104','sum','B00202','1','A102','1','DIM_BQDMK','bqkey','name','����',' where',' where','bqkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B104','sum','B00202','zfy','A102','cyrc','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B104','sum','B00202','zfy','A102','cyrc','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B104','sum','B00202','zfy','A102','cyrc','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	go

/************No.16: B104******************ZBMX***B104******************************/

if exists(select 1 from ZBMX where id='B104')
begin
	print '����ָ��B104,��ָ��B104�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='B104') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B104','3','סԺҩƷ����ҩ��','0','1','4','Ԫ','1','','','-0.01000','1','0','','','סԺҩƷ����ҩ��=סԺҩƷ����/��Ժ�˴�','','','B104','','','0','2','','0','1','{ʵ��ֵ}/{Ŀ��ֵ}<0.95','0','0','0','0','','','','','')
	
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
	print '����ָ��B104,��ָ��B104�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B104') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('B104','סԺҩƷ����ҩ��','select ''B104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B00202''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''A102''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''B104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''B00202'' union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''A102'')t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','B00202,A102','11474','SELECT ''B104'' zbmx_id,yykey,yydm,kskey,ksdm,yskey,ysdm,month,SUM(fz) fz,SUM(fm) fm ,NULL czry,getdate() gxrq          
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
	print '����ָ��B104,��ָ��B104�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='B104') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('B104','סԺҩƷ����ҩ��','','','','select ''B104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00202''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A102''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''B104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00202''    and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A102''     and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','B00202,A102','11474','','','0','-1','-1','','','','','@סԺҩƷ����(B00202)/@��Ժ�˴�(A102)','select ''B104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00202''    and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A102''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.17: B10901******************ZB_FACT_DIM_YS***B10901******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B10901' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B10901'
go

/************No.17: B10901******************ZBMX***B10901******************************/

if exists(select 1 from ZBMX where id='B10901')
begin
	print '����ָ��B10901,��ָ��B10901�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='B10901') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B10901','3','����ҽ�Ʒ�������ռ��','0','100','0','%','1','','','0.00000','1','0','','','','','','B10901','','','0','1','','','','','','B109','1','0','','1','1','1','')
	
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
	print '����ָ��B10901,��ָ��B10901�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B10901') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb B10901'

end
go

/************No.17: B10901******************HD_ZBMX_HZ***B10901******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='B10901')
begin
	print '����ָ��B10901,��ָ��B10901�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='B10901') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('B10901','����ҽ�Ʒ�������ռ��','','','','select ''B10901'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B109'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B001'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''B10901'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B109'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','B109,B001','12519','','','0','-1','-1','','','','','@����ҽ�Ʒ�������(B109)/@ҽԺ�ܷ���(B001)','select ''B10901'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B109'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.18: C002020102******************ZB_FACT_DIM_YS***C002020102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='C002020102' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C002020102','sum','C0020201','1','B00101','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C002020102','sum','C0020201','1','B00101','1','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C002020102','sum','C0020201','1','B00101','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C002020102','sum','C0020201','1','B00101','1','DIM_YBFLXX','ybflkey','ybsm','ҽ������',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C002020102','sum','C0020201','1','B00101','1','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	go

/************No.18: C002020102******************ZBMX***C002020102******************************/

if exists(select 1 from ZBMX where id='C002020102')
begin
	print '����ָ��C002020102,��ָ��C002020102�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='C002020102') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('C002020102','4','��������������ҽ������ı���','0','100','4','%','1','','','0.00000','1','0','','','�ż���ҽ��֧�����(�ɱ����)C0020201/�ż������B00101','','','C002020102','','','0','1','','','','','','C0020201','1','0','','0','0','','')
	
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
	print '����ָ��C002020102,��ָ��C002020102�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='C002020102') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('C002020102','��������������ҽ������ı���','select ''C002020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''C0020201'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B00101'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''C002020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''C0020201'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','C0020201,B00101','12411','','','0','select ''C002020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''C0020201'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.18: C002020102******************HD_ZBMX_HZ***C002020102******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='C002020102')
begin
	print '����ָ��C002020102,��ָ��C002020102�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='C002020102') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('C002020102','��������������ҽ������ı���','','select timekey,yykey,kskey,ybflkey,yskey,sum(ybzffy) fz,0 fm from FACT_YB_YBZKFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and mzzykey in (1) group by timekey,yykey,kskey,ybflkey,yskey union all select timekey,yykey,kskey,ybflkey,yskey,0 fz,sum(ghfy+cffy) fm from FACT_FY_MZ_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,ybflkey,yskey','','select ''C002020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''C0020201'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00101'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''C002020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''C0020201'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','C0020201,B00101','12411','','','0','-1','-1','','','','timekey,yykey,kskey,ybflkey,yskey','@�ż���ҽ��֧�����(�ɱ����)(C0020201)/@�ż������(B00101)','select ''C002020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''C0020201'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00101'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.19: C102020102******************ZB_FACT_DIM_YS***C102020102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='C102020102' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C102020102','sum','C1020201','1','B00102','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C102020102','sum','C1020201','1','B00102','1','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C102020102','sum','C1020201','1','B00102','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C102020102','sum','C1020201','1','B00102','1','DIM_YBFLXX','ybflkey','ybsm','ҽ������',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C102020102','sum','C1020201','1','B00102','1','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C102020102','sum','C1020201','1','B00102','1','DIM_ZY_ZLZXX','zlzkey','zlzmc','������',' where',' where','zlzkey','','','','','','')
	go

/************No.19: C102020102******************ZBMX***C102020102******************************/

if exists(select 1 from ZBMX where id='C102020102')
begin
	print '����ָ��C102020102,��ָ��C102020102�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='C102020102') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('C102020102','4','סԺ����������ҽ������ı���','0','100','4','%','1','','','0.00000','1','0','','','סԺҽ��֧�����(�ɱ����)C1020201/סԺ����B00102','','','C102020102','','','0','1','','','','','','C1020201','1','0','','0','0','','')
	
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
	print '����ָ��C102020102,��ָ��C102020102�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='C102020102') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('C102020102','סԺ����������ҽ������ı���','select ''C102020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''C1020201'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''B00102'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''C102020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''C1020201'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00102'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','C1020201,B00102','12412','','','0','select ''C102020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''C1020201'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00102'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.19: C102020102******************HD_ZBMX_HZ***C102020102******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='C102020102')
begin
	print '����ָ��C102020102,��ָ��C102020102�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='C102020102') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('C102020102','סԺ����������ҽ������ı���','','select timekey,yykey,kskey,ybflkey,yskey,zlzkey,sum(ybzffy) fz,0 fm from FACT_YB_YBZKFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and mzzykey in (2) group by timekey,yykey,kskey,ybflkey,yskey,zlzkey union all select timekey,yykey,kskey,ybflkey,yskey,zlzkey,0 fz,sum(zfy) fm from FACT_FY_ZY_FYFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,ybflkey,yskey,zlzkey','','select ''C102020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''C1020201'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''B00102'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''C102020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''C1020201'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''B00102'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','C1020201,B00102','12412','','','0','-1','-1','','','','timekey,yykey,kskey,ybflkey,yskey,zlzkey','@סԺҽ��֧�����(�ɱ����)(C1020201)/@סԺ����(B00102)','select ''C102020102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''C1020201'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''B00102'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.20: D00203******************ZB_FACT_DIM_YS***D00203******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='D00203' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D00203','sum','D007','1','A102','1','DIM_ZY_ZLD','zlzkey','zlzmc','������',' where',' where','zlzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D00203','sum','D007','1','A102','1','DIM_BQDMK','bqkey','name','����',' where',' where','bqkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D00203','sum','D002','ssrc','A102','cyrc','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D00203','sum','D002','ssrc','A102','cyrc','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D00203','sum','D002','ssrc','A102','cyrc','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	go

/************No.20: D00203******************ZBMX***D00203******************************/

if exists(select 1 from ZBMX where id='D00203')
begin
	print '����ָ��D00203,��ָ��D00203�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='D00203') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('D00203','5','סԺ����������(%)','0','100','4','%','1','','','0.05000','1','1','','','�����˴�(D007)/��Ժ�˴�(A102)','','','D00203','','','0','1','','0','1','{ʵ��ֵ}/{Ŀ��ֵ}<0.95','0','0','0','0','','','','','')
	
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
	print '����ָ��D00203,��ָ��D00203�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='D00203') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('D00203','סԺ����������(%)','select ''D00203'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''D007''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''A102''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''D00203'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''D007'' union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''A102'')t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','D007,A102','11550','SELECT ''D00203'' zbmx_id,a.yykey,ISNULL(b.yydm,''01'') yydm,a.kskey,c.ksdm,a.yskey,ysdm
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
	print '����ָ��D00203,��ָ��D00203�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='D00203') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('D00203','סԺ����������(%)','','','','select ''D00203'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D007''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A102''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''D00203'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D007''    and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A102''     and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','D007,A102','11550','','','0','-1','-1','','','','','@�����˴�(D007)/@��Ժ�˴�(A102)','select ''D00203'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D007''    and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A102''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.21: D00204******************ZB_FACT_DIM_YS***D00204******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='D00204' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D00204','sum','D00209','1','D002','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D00204','sum','D00209','1','D002','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D00204','sum','D00209','1','D002','1','DIM_YSXX','zdyskey','ysmc','����ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D00204','sum','D00209','1','D002','1','DIM_SSXX','ssdmkey','ssmc','��������',' where',' where','sskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D00204','sum','D00209','1','D002','1','DIM_MZFS','mzfskey','mzfsmc','����ʽ',' where',' where','mzfskey','','','','','','')
	go

/************No.21: D00204******************ZBMX***D00204******************************/

if exists(select 1 from ZBMX where id='D00204')
begin
	print '����ָ��D00204,��ָ��D00204�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='D00204') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('D00204','5','���ļ�����ռ��(%)','0','100','4','%','1','','','0.05000','1','1','','','���ļ���������(D00209)/סԺ��������(D002)','','','D00204','','','0','1','','0','1','{ʵ��ֵ}/{Ŀ��ֵ}<0.95','0','0','0','0','','','','','')
	
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
	print '����ָ��D00204,��ָ��D00204�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='D00204') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('D00204','���ļ�����ռ��(%)','select ''D00204'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''D00209''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''D002''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''D00204'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''D00209'' union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''D002'')t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','D00209,D002','11551','SELECT ''D00204'' zbmx_id,t.yykey,ISNULL(b.yydm,''01'') yydm,t.kskey,c.ksdm,t.yskey,ysdm,month month,SUM(fz) fz,        
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
	print '����ָ��D00204,��ָ��D00204�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='D00204') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('D00204','���ļ�����ռ��(%)','','','','select ''D00204'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D00209''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D002''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''D00204'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D00209''    and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D002''     and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','D00209,D002','11551','','','0','-1','-1','','','','','@���ļ���������(D00209)/@סԺ��������(D002)','select ''D00204'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D00209''    and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D002''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.22: D009******************ZB_FACT_DIM_YS***D009******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='D009' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D009','sum','D009','1','0','0','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D009','sum','D009','1','0','0','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D009','sum','D009','1','0','0','DIM_YSXX','zdyskey','ysmc','����ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D009','sum','D009','1','0','0','DIM_SSXX','ssdmkey','ssmc','��������',' where',' where','sskey','','','','','','')
	go

/************No.22: D009******************ZBMX***D009******************************/

if exists(select 1 from ZBMX where id='D009')
begin
	print '����ָ��D009,��ָ��D009�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='D009') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('D009','5','�ռ�ռͬ��������������(%)','0','100','4','%','1','','','0.00000','1','0','','','','','','D009','','','0','1','','','','','','0','0','0','','0','0','','')
	
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
	print '����ָ��D009,��ָ��D009�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='D009') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb D009'

end
go

/************No.22: D009******************HD_ZBMX_HZ***D009******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='D009')
begin
	print '����ָ��D009,��ָ��D009�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='D009') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('D009','�ռ�ռͬ��������������(%)','','','','select ''D009'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D00202''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D00201''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''D009'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D00202''    and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D00201''     and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','D00202,D00201','11558','','','0','-1','-1','','','','','@�ռ���������(D00202)/@������������(D00201)','select ''D009'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D00202''    and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D00201''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.23: D10001******************ZB_FACT_DIM_YS***D10001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='D10001' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D10001','sum','D100','1','D002','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('D10001','sum','D100','1','D002','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	go

/************No.23: D10001******************ZBMX***D10001******************************/

if exists(select 1 from ZBMX where id='D10001')
begin
	print '����ָ��D10001,��ָ��D10001�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='D10001') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('D10001','5','��Ժ����΢������(����)ռ��','0','100','0','%','1','','','0.00000','1','0','','','','','','D10001','','','0','1','','','','','','D100','1','0','','1','1','1','')
	
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
	print '����ָ��D10001,��ָ��D10001�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='D10001') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb D10001'

end
go

/************No.23: D10001******************HD_ZBMX_HZ***D10001******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='D10001')
begin
	print '����ָ��D10001,��ָ��D10001�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='D10001') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('D10001','��Ժ����΢������(����)ռ��','','','','select ''D10001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D100'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''D10001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D100'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','D100,D002','12400','','','1','-1','-1','','','','','@��Ժ����΢������(����)����(D100)/@סԺ��������(D002)','select ''D10001'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D100'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.24: E00209******************ZB_FACT_DIM_YS***E00209******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E00209' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00209','sum','E00230','1','A111','1','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00209','sum','E00230','1','A111','1','DIM_ZY_ZLD','zlzkey','zlzmc','������',' where',' where','zlzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00209','sum','E00230','1','A111','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00209','sum','E00230','1','A111','1','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00209','sum','E00230','1','A111','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.24: E00209******************ZBMX***E00209******************************/

if exists(select 1 from ZBMX where id='E00209')
begin
	print '����ָ��E00209,��ָ��E00209�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='E00209') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('E00209','6','סԺ����ҩ��ʹ��ǿ��','0','100','4','-','1','','','-0.01000','1','1','','','��Ժ���߿���ҩ��DDDS/��Ժ����ʵ��ռ���ܴ���','','','E00209','','','0','2','','0','1','{ʵ��ֵ}/{Ŀ��ֵ}<0.95','0','0','0','0','','','','','')
	
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
	print '����ָ��E00209,��ָ��E00209�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='E00209') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('E00209','סԺ����ҩ��ʹ��ǿ�ȣ�DDD��','SELECT ''E00209''  zbmx_id,a.yykey,ISNULL(b.yydm,''01'') yydm,a.kskey,c.ksdm  , CONVERT(DATE,CONVERT(CHAR(8),timekey,120)+''1'') month, SUM(fz) fz,sum(fm) fm,NULL czry,GETDATE()  gxrq,a.yskey,d.ysdm,null bqkey  FROM (   select rytimekey,timekey,rybqkey,bqkey,rykskey,yykey,kskey,yskey,ybflkey,cyfskey,sex,ryzddmkey,cyzddmkey,zytskey,zlzkey
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
	print '����ָ��E00209,��ָ��E00209�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='E00209') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('E00209','סԺ����ҩ��ʹ��ǿ��','','','','SELECT ''E00209''  zbmx_id,a.yykey,ISNULL(b.yydm,''01'') yydm,a.kskey,c.ksdm  , CONVERT(DATE,CONVERT(CHAR(8),timekey, 120)  +   ''1'') month, SUM(fz) fz,sum(fm) fm,NULL czry,GETDATE()  gxrq,null bqkey  
FROM (   
select timekey,bqkey,yykey,kskey,yskey,zlzkey,SUM(ddds) fz,SUM(zyts)  fm  
from FACT_YY_ZY_CYYWLFX  a  
where timekey between @kssj  and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))   
group by timekey,bqkey,yykey,kskey,yskey,zlzkey   
) a 
inner join DIM_YYXX b ON a.yykey=b.yykey   
inner join DIM_KSXX c ON a.kskey=c.kskey and a.yykey=c.yykey   
WHERE timekey between @kssj  and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))   
GROUP  BY a.yykey,b.yydm,a.kskey,c.ksdm,CONVERT(DATE,CONVERT(CHAR(8),timekey,120) +   ''1'')','select ''E00209'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz ,sum(fm) fm,null czry,getdate() gxrq ,bqkey from (select yykey,yydm,kskey,ksdm,month,fz_tq as fz,0 as fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''E00230'' and month between @kssj and @jssj  union all select yykey,yydm,kskey,ksdm,month,0 as fz,fz_tq as fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A111'' and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month ,bqkey','1','','E00230,A111','11589','','','0','-1','-1','','','','','@��Ժ���߿���ҩ��DDDS(E00230)/@��Ժ����ʵ��ռ���ܴ���(A111)','select ''E00209'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz ,sum(fm) fm,null czry,getdate() gxrq ,bqkey from (select yykey,yydm,kskey,ksdm,month,fz_hq as fz,0 as fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''E00230'' and month between @kssj and @jssj  union all select yykey,yydm,kskey,ksdm,month,0 as fz,fz_hq as fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A111'' and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month ,bqkey','','')
	
end
go

/************No.25: E00504******************ZB_FACT_DIM_YS***E00504******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E00504' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb E00504'
go

/************No.25: E00504******************ZBMX***E00504******************************/

if exists(select 1 from ZBMX where id='E00504')
begin
	print '����ָ��E00504,��ָ��E00504�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='E00504') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('E00504','6','������֯ҩƷ���вɹ��б�ҩƷʹ�ñ���','0','100','0','%','1','','','0.00000','1','0','','','','','','E00504','','','0','1','','','','','','E005','1','0','','1','0','1','')
	
end
go

/************No.25: E00504******************Y_COLUMN_MAP_ZBFACT***E00504******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00504' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb E00504'
go

/************No.25: E00504******************HD_ZBMX_HZ_YS***E00504******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='E00504')
begin
	print '����ָ��E00504,��ָ��E00504�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='E00504') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb E00504'

end
go

/************No.25: E00504******************HD_ZBMX_HZ***E00504******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='E00504')
begin
	print '����ָ��E00504,��ָ��E00504�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='E00504') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb E00504'

end
go

/************No.26: E00902******************ZB_FACT_DIM_YS***E00902******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E00902' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00902','sum','E00901','1','A102','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00902','sum','E00901','1','A102','1','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00902','sum','E00901','1','A102','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.26: E00902******************ZBMX***E00902******************************/

if exists(select 1 from ZBMX where id='E00902')
begin
	print '����ָ��E00902,��ָ��E00902�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='E00902') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('E00902','6','סԺ���߻���ҩ��ʹ����','0','100','0','%','1','','','0.00000','1','0','','','','','','E00902','','','0','1','','','','','','E009','1','0','','0','0','','')
	
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
	print '����ָ��E00902,��ָ��E00902�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='E00902') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb E00902'

end
go

/************No.26: E00902******************HD_ZBMX_HZ***E00902******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='E00902')
begin
	print '����ָ��E00902,��ָ��E00902�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='E00902') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('E00902','סԺ���߻���ҩ��ʹ����','','select timekey,yykey,kskey,sum(cyrc) fz,0 fm from FACT_YY_ZY_CYYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and jbywsybz in (1) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(cyrc) fm from FACT_YY_ZY_CYYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey','','select ''E00902'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''E00901'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''A102'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''E00902'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''E00901'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''A102'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','E00901,A102','12403','','','1','-1','-1','','','','timekey,yykey,kskey','@סԺ���߻���ҩ��ʹ���˴�(E00901)/@��Ժ�˴�(A102)','select ''E00902'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''E00901'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''A102'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.27: E20122******************ZB_FACT_DIM_YS***E20122******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E20122' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20122','sum','E20121','1','E201','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20122','sum','E20121','1','E201','1','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20122','sum','E20121','1','E201','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20122','sum','E20121','1','E201','1','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	go

/************No.27: E20122******************ZBMX***E20122******************************/

if exists(select 1 from ZBMX where id='E20122')
begin
	print '����ָ��E20122,��ָ��E20122�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='E20122') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('E20122','6','������������','0','100','4','%','1','','','0.00000','1','0','','','���մ������д������ͳ��','','','E20122','','','0','1','','','','','','E201','1','0','','0','0','','')
	
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
	print '����ָ��E20122,��ָ��E20122�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='E20122') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('E20122','������������','select ''E20122'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''E20121'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''E201'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''E20122'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''E20121'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''E201'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','E20121,E201','12433','','','0','select ''E20122'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''E20121'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''E201'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.27: E20122******************HD_ZBMX_HZ***E20122******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='E20122')
begin
	print '����ָ��E20122,��ָ��E20122�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='E20122') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('E20122','������������','','select timekey,yykey,kskey,yskey,sum(dpcfs) fz,0 fm from FACT_YP_CFLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey union all select timekey,yykey,kskey,yskey,0 fz,sum(cfs) fm from FACT_YP_CFLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey','','select ''E20122'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''E20121'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''E201'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''E20122'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''E20121'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''E201'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','E20121,E201','12433','','','0','-1','-1','','','','timekey,yykey,kskey,yskey','@����������(E20121)/@�ż��ﴦ����(E201)','select ''E20122'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''E20121'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''E201'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.28: E20203******************ZB_FACT_DIM_YS***E20203******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E20203' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20203','sum','E20103','1','E20105','1','DIM_YBFLXX','ybflkey','ybsm','ҽ������',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20203','sum','E20103','1','E20105','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20203','sum','E20103','1','E20105','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20203','sum','E20103','1','E20105','1','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	go

/************No.28: E20203******************ZBMX***E20203******************************/

if exists(select 1 from ZBMX where id='E20203')
begin
	print '����ָ��E20203,��ָ��E20203�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='E20203') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('E20203','6','�ż������ҩƷ������(%)','0','100','4','%','1','','','0.05000','1','1','','','�ż������ҩƷ������(E20103)/�ż��ﴦ����(E201)','','','E20203','','','0','1','','0','1','{ʵ��ֵ}/{Ŀ��ֵ}<0.95','0','0','0','0','','','','','')
	
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
	print '����ָ��E20203,��ָ��E20203�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='E20203') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('E20203','�ż������ҩƷ������(%)','select ''E20203'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''E20103''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''E201''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''E20203'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''E20103'' union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and zbmx_id =''E201'')t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','E20103,E201','11303','SELECT ''E20203'' zbmx_id,t.yykey,b.yydm,t.kskey,c.ksdm,t.yskey,ysdm, month,SUM(fz) fz,SUM(fm) fm ,NULL czry,getdate() gxrq          
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
	print '����ָ��E20203,��ָ��E20203�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='E20203') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('E20203','�ż������ҩƷ������(%)','','','','select ''E20203'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''E20103''      and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''E201''   and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''E20203'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''E20103''    and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''E201''     and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','E20103,E201','11303','','','0','-1','-1','','','','','@�ż������ҩƷ������(E20103)/@�ż��ﴦ����(E201)','select ''E20203'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''E20103''    and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''E201''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.29: F50002******************ZB_FACT_DIM_YS***F50002******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='F50002' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('F50002','sum','F50001','1','F500','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('F50002','sum','F50001','1','F500','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.29: F50002******************ZBMX***F50002******************************/

if exists(select 1 from ZBMX where id='F50002')
begin
	print '����ָ��F50002,��ָ��F50002�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='F50002') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('F50002','7','���ʻ�����񲡷�������','0','100','0','%','1','','','0.00000','1','0','','','','','','F50002','','','0','1','','','','','','F500','1','0','','1','1','1','')
	
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
	print '����ָ��F50002,��ָ��F50002�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='F50002') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb F50002'

end
go

/************No.29: F50002******************HD_ZBMX_HZ***F50002******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='F50002')
begin
	print '����ָ��F50002,��ָ��F50002�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='F50002') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('F50002','���ʻ�����񲡷�������','','','','select ''F50002'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''F50001'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''F500'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''F50002'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''F50001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''F500'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','F50001,F500','12401','','','1','-1','-1','','','','','@�Ѿ���չ���ʻ������Ĳ�����(F50001)/@��������(F500)','select ''F50002'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''F50001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''F500'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.30: F501******************ZB_FACT_DIM_YS***F501******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='F501' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb F501'
go

/************No.30: F501******************ZBMX***F501******************************/

if exists(select 1 from ZBMX where id='F501')
begin
	print '����ָ��F501,��ָ��F501�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='F501') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('F501','7','���ﻼ�������','0','100','4','%','1','','','0.00000','1','0','','','','','','F501','','','0','1','','','','','','0','1','0','','1','0','1','')
	
end
go

/************No.30: F501******************Y_COLUMN_MAP_ZBFACT***F501******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F501' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb F501'
go

/************No.30: F501******************HD_ZBMX_HZ_YS***F501******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='F501')
begin
	print '����ָ��F501,��ָ��F501�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='F501') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb F501'

end
go

/************No.30: F501******************HD_ZBMX_HZ***F501******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='F501')
begin
	print '����ָ��F501,��ָ��F501�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��F502,��ָ��F502�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='F502') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('F502','7','סԺ���������','0','100','4','%','0','','','0.00000','1','0','','','','','','F502','','','0','1','','','','','','0','1','0','','1','0','1','')
	
end
go

/************No.31: F502******************Y_COLUMN_MAP_ZBFACT***F502******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F502' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb F502'
go

/************No.31: F502******************HD_ZBMX_HZ_YS***F502******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='F502')
begin
	print '����ָ��F502,��ָ��F502�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='F502') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb F502'

end
go

/************No.31: F502******************HD_ZBMX_HZ***F502******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='F502')
begin
	print '����ָ��F502,��ָ��F502�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��F503,��ָ��F503�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='F503') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('F503','7','ҽ����Ա�����','0','100','4','%','1','','','0.00000','1','0','','','','','','F503','','','0','1','','','','','','0','1','0','','1','0','1','')
	
end
go

/************No.32: F503******************Y_COLUMN_MAP_ZBFACT***F503******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F503' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb F503'
go

/************No.32: F503******************HD_ZBMX_HZ_YS***F503******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='F503')
begin
	print '����ָ��F503,��ָ��F503�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='F503') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb F503'

end
go

/************No.32: F503******************HD_ZBMX_HZ***F503******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='F503')
begin
	print '����ָ��F503,��ָ��F503�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='F503') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb F503'

end
go

/************No.33: G30002******************ZB_FACT_DIM_YS***G30002******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='G30002' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G30002','sum','G30001','1','G300','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G30002','sum','G30001','1','G300','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G30002','sum','G30001','1','G300','1','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	go

/************No.33: G30002******************ZBMX***G30002******************************/

if exists(select 1 from ZBMX where id='G30002')
begin
	print '����ָ��G30002,��ָ��G30002�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='G30002') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('G30002','8','����ҩ��ɹ�(���)Ʒ����ռ��','0','100','0','%','1','','','0.00000','1','0','','','','','','G30002','','','0','1','','','','','','G300','0','0','','0','0','','')
	
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
	print '����ָ��G30002,��ָ��G30002�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='G30002') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb G30002'

end
go

/************No.33: G30002******************HD_ZBMX_HZ***G30002******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='G30002')
begin
	print '����ָ��G30002,��ָ��G30002�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='G30002') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('G30002','����ҩ��ɹ�(���)Ʒ����ռ��','','select timekey,yykey,kskey,ypdm fz,0 fm from FACT_YP_JXCFX_YK a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and ykczlbkey in (1) union all select timekey,yykey,kskey,0 fz,ypdm fm from FACT_YP_JXCFX_YK a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))','','select ''G30002'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''G30001'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''G300'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''G30002'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''G30001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''G300'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','G30001,G300','12406','','','0','-1','-1','','','','timekey,yykey,kskey','@�ɹ�(���)����ҩ��Ʒ����(G30001)/@�ɹ�(���)ҩ��Ʒ����(G300)','select ''G30002'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''G30001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''G300'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.34: J00304******************ZB_FACT_DIM_YS***J00304******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='J00304' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb J00304'
go

/************No.34: J00304******************ZBMX***J00304******************************/

if exists(select 1 from ZBMX where id='J00304')
begin
	print '����ָ��J00304,��ָ��J00304�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='J00304') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('J00304','11','ͨ�������Ҽ��������۵��ٴ�������Ŀ��','0','1','0','��','0','','','0.00000','1','0','','','�����а�������Ŀ����','','','J00304','','','0','1','','','','','','J003','1','0','','1','0','1','')
	
end
go

/************No.34: J00304******************Y_COLUMN_MAP_ZBFACT***J00304******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='J00304' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb J00304'
go

/************No.34: J00304******************HD_ZBMX_HZ_YS***J00304******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='J00304')
begin
	print '����ָ��J00304,��ָ��J00304�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='J00304') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb J00304'

end
go

/************No.34: J00304******************HD_ZBMX_HZ***J00304******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='J00304')
begin
	print '����ָ��J00304,��ָ��J00304�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='J00304') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb J00304'

end
go

/************No.35: J108******************ZB_FACT_DIM_YS***J108******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='J108' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J108','sum','J108','1','0','0','DIM_LIS_INSTRUMENT','yqkey','yqmc','��������',' where',' where','yqkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J108','sum','J108','1','0','0','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J108','sum','J108','1','0','0','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J108','sum','J108','1','0','0','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J108','sum','J108','1','0','0','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J108','sum','J108','1','0','0','DIM_JCLB','jclbkey','jclbmc','������',' where',' where','jclbkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J108','sum','J108','1','0','0','DIM_MZZY','mzzykey','mzzyname','����סԺ',' where',' where','mzzykey','','','','','','')
	go

/************No.35: J108******************ZBMX***J108******************************/

if exists(select 1 from ZBMX where id='J108')
begin
	print '����ָ��J108,��ָ��J108�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='J108') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('J108','11','����ҽ��Ӱ���豸����������(CT��MRI��DSA��SPECT��PET-CT)','0','100','4','%','1','','','0.00000','0','1','','','','','','J108','','','0','1','','','','','','','','','','1','1','1','0')
	
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
	print '����ָ��J108,��ָ��J108�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='J108') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb J108'

end
go

/************No.35: J108******************HD_ZBMX_HZ***J108******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='J108')
begin
	print '����ָ��J108,��ָ��J108�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='J108') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('J108','����ҽ��Ӱ���豸����������(CT��MRI��DSA��SPECT��PET-CT)','','','','select ''J108'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''J10901'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''J109'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''J108'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''J10901'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''J109'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','J10901,J109','','','','0','-1','-1','','','','','@����ҽ���豸�����������(J10901)/@����ҽ���豸���������(J109)','select ''J108'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''J10901'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''J109'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.36: ZBZL_YXZB_DRGS0020502******************ZB_FACT_DIM_YS***ZBZL_YXZB_DRGS0020502******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZBZL_YXZB_DRGS0020502' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS0020502','sum','ZBZL_YXZB_DRGS0020501','1','ZBZL_YXZB_DRGS002','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS0020502','sum','ZBZL_YXZB_DRGS0020501','1','ZBZL_YXZB_DRGS002','1','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS0020502','sum','ZBZL_YXZB_DRGS0020501','1','ZBZL_YXZB_DRGS002','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS0020502','sum','ZBZL_YXZB_DRGS0020501','1','ZBZL_YXZB_DRGS002','1','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS0020502','sum','ZBZL_YXZB_DRGS0020501','1','ZBZL_YXZB_DRGS002','1','DIM_DRGS','drgskey','drgsmc','�����ط���',' where',' where','drgskey','','','','','','')
	go

/************No.36: ZBZL_YXZB_DRGS0020502******************ZBMX***ZBZL_YXZB_DRGS0020502******************************/

if exists(select 1 from ZBMX where id='ZBZL_YXZB_DRGS0020502')
begin
	print '����ָ��ZBZL_YXZB_DRGS0020502,��ָ��ZBZL_YXZB_DRGS0020502�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZBZL_YXZB_DRGS0020502') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZBZL_YXZB_DRGS0020502','ZLZB09','�ͷ���DRG��������','0','100','4','%','1','','','0.00000','1','0','','','','','','ZBZL_YXZB_DRGS0020502','','','0','1','','','','','','0','0','0','','','','','')
	
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
	print '����ָ��ZBZL_YXZB_DRGS0020502,��ָ��ZBZL_YXZB_DRGS0020502�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZBZL_YXZB_DRGS0020502') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('ZBZL_YXZB_DRGS0020502','�ͷ���DRG��������','select ''ZBZL_YXZB_DRGS0020502'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''ZBZL_YXZB_DRGS0020501'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''ZBZL_YXZB_DRGS001'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''ZBZL_YXZB_DRGS0020502'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZBZL_YXZB_DRGS0020501'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZBZL_YXZB_DRGS001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','ZBZL_YXZB_DRGS0020501,ZBZL_YXZB_DRGS001','','','','0','select ''ZBZL_YXZB_DRGS0020502'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZBZL_YXZB_DRGS0020501'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZBZL_YXZB_DRGS001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.36: ZBZL_YXZB_DRGS0020502******************HD_ZBMX_HZ***ZBZL_YXZB_DRGS0020502******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZBZL_YXZB_DRGS0020502')
begin
	print '����ָ��ZBZL_YXZB_DRGS0020502,��ָ��ZBZL_YXZB_DRGS0020502�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZBZL_YXZB_DRGS0020502') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZBZL_YXZB_DRGS0020502','�ͷ���DRG��������','','select timekey,yykey,kskey,yskey,drgskey,sum(swls) fz,0 fm from FACT_GZ_YXZB_DRGS a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and fxpgdjkey in (1) group by timekey,yykey,kskey,yskey,drgskey union all select timekey,yykey,kskey,yskey,drgskey,0 fz,drgskey fm from FACT_GZ_YXZB_DRGS a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey))','','select ''ZBZL_YXZB_DRGS0020502'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZBZL_YXZB_DRGS0020501'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZBZL_YXZB_DRGS001'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZBZL_YXZB_DRGS0020502'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZBZL_YXZB_DRGS0020501'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZBZL_YXZB_DRGS001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZBZL_YXZB_DRGS0020501,ZBZL_YXZB_DRGS001','11882','','','0','-1','-1','','','','timekey,yykey,kskey,yskey,drgskey','@�ͷ���DRG����������(ZBZL_YXZB_DRGS0020501)/@DRG����(ZBZL_YXZB_DRGS001)','select ''ZBZL_YXZB_DRGS0020502'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZBZL_YXZB_DRGS0020501'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZBZL_YXZB_DRGS001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.37: ZLZB_AQ0107******************ZB_FACT_DIM_YS***ZLZB_AQ0107******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_AQ0107' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0107','sum','ZLZB_BFZ0018','1','ZLZB_AQ00650','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0107','sum','ZLZB_BFZ0018','1','ZLZB_AQ00650','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.37: ZLZB_AQ0107******************ZBMX***ZLZB_AQ0107******************************/

if exists(select 1 from ZBMX where id='ZLZB_AQ0107')
begin
	print '����ָ��ZLZB_AQ0107,��ָ��ZLZB_AQ0107�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_AQ0107') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_AQ0107','ZLZB05','��������֢������','0','100','4','%','1','','','0.00000','1','1','','','','','','ZLZB_AQ0107','','','0','1','','','','','0','','','','','','','','')
	
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
	print '����ָ��ZLZB_AQ0107,��ָ��ZLZB_AQ0107�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_AQ0107') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_AQ0107'

end
go

/************No.37: ZLZB_AQ0107******************HD_ZBMX_HZ***ZLZB_AQ0107******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0107')
begin
	print '����ָ��ZLZB_AQ0107,��ָ��ZLZB_AQ0107�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0107') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_AQ0107','��������֢������','','','','select ''ZLZB_AQ0107'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_BFZ0018'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_AQ00650'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_AQ0107'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_BFZ0018'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_AQ00650'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_BFZ0018,ZLZB_AQ00650','8253','','','0','-1','-1','','','','','@�����󲢷�֢�����˴�(ZLZB_BFZ0018)/@������������߳�Ժ�˴Σ�����18���꣩(ZLZB_AQ00650)','select ''ZLZB_AQ0107'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_BFZ0018'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_AQ00650'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.38: ZLZB_DBZ901******************ZB_FACT_DIM_YS***ZLZB_DBZ901******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_DBZ901' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ901','sum','ZLZB_DBZ901','1','0','0','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ901','sum','ZLZB_DBZ901','1','0','0','DIM_ZLZB_JBBZ_DBZ','dbzkey','dbzmc','����������',' where',' where','dbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ901','sum','ZLZB_DBZ901','1','0','0','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ901','sum','ZLZB_DBZ901','1','0','0','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ901','sum','ZLZB_DBZ901','1','0','0','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ901','sum','ZLZB_DBZ901','1','0','0','DIM_CYFS','cyfskey','cyfsmc','��Ժ��ʽ',' where',' where','cyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ901','sum','ZLZB_DBZ901','1','0','0','DIM_ZYTS','zytskey','zyts','סԺ����',' where',' where','zytskey','','','','','','')
	go

/************No.38: ZLZB_DBZ901******************ZBMX***ZLZB_DBZ901******************************/

if exists(select 1 from ZBMX where id='ZLZB_DBZ901')
begin
	print '����ָ��ZLZB_DBZ901,��ָ��ZLZB_DBZ901�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_DBZ901') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_DBZ901','39','������','0','1','0','��','0','','','0.00000','1','0','','2018-12-21 16:59:17','','','','ZLZB_DBZ901','','','0','1','','','','','','0','0','0','','','','','')
	
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
	print '����ָ��ZLZB_DBZ901,��ָ��ZLZB_DBZ901�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ901') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('ZLZB_DBZ901','������','select ''ZLZB_DBZ901'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm','select ''ZLZB_DBZ901'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm','1','','','0','','','0','select ''ZLZB_DBZ901'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm')
	
end
go

/************No.38: ZLZB_DBZ901******************HD_ZBMX_HZ***ZLZB_DBZ901******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ901')
begin
	print '����ָ��ZLZB_DBZ901,��ָ��ZLZB_DBZ901�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ901') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_DBZ901','������','select ''ZLZB_DBZ901'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ901'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ901'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','11702','','','0','1','0','FACT_ZLZB_JBBZ_DBZ','ls','','timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','','select ''ZLZB_DBZ901'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','')
	
end
go

/************No.39: ZLZB_DBZ902******************ZB_FACT_DIM_YS***ZLZB_DBZ902******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_DBZ902' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ902','sum','ZLZB_DBZ902','1','0','0','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ902','sum','ZLZB_DBZ902','1','0','0','DIM_ZLZB_JBBZ_DBZ','dbzkey','dbzmc','����������',' where',' where','dbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ902','sum','ZLZB_DBZ902','1','0','0','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ902','sum','ZLZB_DBZ902','1','0','0','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ902','sum','ZLZB_DBZ902','1','0','0','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ902','sum','ZLZB_DBZ902','1','0','0','DIM_CYFS','cyfskey','cyfsmc','��Ժ��ʽ',' where',' where','cyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ902','sum','ZLZB_DBZ902','1','0','0','DIM_ZYTS','zytskey','zyts','סԺ����',' where',' where','zytskey','','','','','','')
	go

/************No.39: ZLZB_DBZ902******************ZBMX***ZLZB_DBZ902******************************/

if exists(select 1 from ZBMX where id='ZLZB_DBZ902')
begin
	print '����ָ��ZLZB_DBZ902,��ָ��ZLZB_DBZ902�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_DBZ902') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_DBZ902','39','��������','0','1','0','��','0','','','0.00000','1','0','','2018-12-21 16:59:17','','','','ZLZB_DBZ902','','','0','1','','','','','','0','0','0','','','','','')
	
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
	print '����ָ��ZLZB_DBZ902,��ָ��ZLZB_DBZ902�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ902') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('ZLZB_DBZ902','��������','select ''ZLZB_DBZ902'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(swls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm','select ''ZLZB_DBZ902'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(swls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm','1','','','0','','','0','select ''ZLZB_DBZ902'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(swls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm')
	
end
go

/************No.39: ZLZB_DBZ902******************HD_ZBMX_HZ***ZLZB_DBZ902******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ902')
begin
	print '����ָ��ZLZB_DBZ902,��ָ��ZLZB_DBZ902�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ902') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_DBZ902','��������','select ''ZLZB_DBZ902'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(swls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ902'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(swls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ902'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(swls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','11703','','','0','1','0','FACT_ZLZB_JBBZ_DBZ','swls','','timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','','select ''ZLZB_DBZ902'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(swls) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','')
	
end
go

/************No.40: ZLZB_DBZ903******************ZB_FACT_DIM_YS***ZLZB_DBZ903******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_DBZ903' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ903','sum','ZLZB_DBZ90301','1','ZLZB_DBZ901','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ903','sum','ZLZB_DBZ90301','1','ZLZB_DBZ901','1','DIM_ZLZB_JBBZ_DBZ','dbzkey','dbzmc','����������',' where',' where','dbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ903','sum','ZLZB_DBZ90301','1','ZLZB_DBZ901','1','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ903','sum','ZLZB_DBZ90301','1','ZLZB_DBZ901','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ903','sum','ZLZB_DBZ90301','1','ZLZB_DBZ901','1','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ903','sum','ZLZB_DBZ90301','1','ZLZB_DBZ901','1','DIM_CYFS','cyfskey','cyfsmc','��Ժ��ʽ',' where',' where','cyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ903','sum','ZLZB_DBZ90301','1','ZLZB_DBZ901','1','DIM_ZYTS','zytskey','zyts','סԺ����',' where',' where','zytskey','','','','','','')
	go

/************No.40: ZLZB_DBZ903******************ZBMX***ZLZB_DBZ903******************************/

if exists(select 1 from ZBMX where id='ZLZB_DBZ903')
begin
	print '����ָ��ZLZB_DBZ903,��ָ��ZLZB_DBZ903�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_DBZ903') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_DBZ903','39','ƽ��סԺ����','0','1','0','��','1','','','0.00000','1','0','','2018-12-21 16:59:17','','','','ZLZB_DBZ903','','','0','1','','','','','','0','0','0','','','','','')
	
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
	print '����ָ��ZLZB_DBZ903,��ָ��ZLZB_DBZ903�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ903') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('ZLZB_DBZ903','ƽ��סԺ����','select ''ZLZB_DBZ903'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''ZLZB_DBZ90301''   and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''ZLZB_DBZ901''  and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''ZLZB_DBZ903'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ90301'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','ZLZB_DBZ90301,ZLZB_DBZ901','0','','','0','select ''ZLZB_DBZ903'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ90301''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.40: ZLZB_DBZ903******************HD_ZBMX_HZ***ZLZB_DBZ903******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ903')
begin
	print '����ָ��ZLZB_DBZ903,��ָ��ZLZB_DBZ903�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ903') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_DBZ903','ƽ��סԺ����','','select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zzyts) fz,0 fm from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey union all select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,0 fz,sum(ls) fm from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','','select ''ZLZB_DBZ903'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_DBZ90301''   and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_DBZ901''  and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_DBZ903'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ90301''   and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_DBZ90301,ZLZB_DBZ901','11705','','','0','-1','-1','','','','timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','@��סԺ����(ZLZB_DBZ90301)/@������(ZLZB_DBZ901)','select ''ZLZB_DBZ903'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ90301''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.41: ZLZB_DBZ90301******************ZB_FACT_DIM_YS***ZLZB_DBZ90301******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_DBZ90301' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90301','sum','ZLZB_DBZ90301','1','0','0','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90301','sum','ZLZB_DBZ90301','1','0','0','DIM_ZLZB_JBBZ_DBZ','dbzkey','dbzmc','����������',' where',' where','dbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90301','sum','ZLZB_DBZ90301','1','0','0','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90301','sum','ZLZB_DBZ90301','1','0','0','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90301','sum','ZLZB_DBZ90301','1','0','0','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90301','sum','ZLZB_DBZ90301','1','0','0','DIM_CYFS','cyfskey','cyfsmc','��Ժ��ʽ',' where',' where','cyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90301','sum','ZLZB_DBZ90301','1','0','0','DIM_ZYTS','zytskey','zyts','סԺ����',' where',' where','zytskey','','','','','','')
	go

/************No.41: ZLZB_DBZ90301******************ZBMX***ZLZB_DBZ90301******************************/

if exists(select 1 from ZBMX where id='ZLZB_DBZ90301')
begin
	print '����ָ��ZLZB_DBZ90301,��ָ��ZLZB_DBZ90301�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_DBZ90301') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_DBZ90301','39','��סԺ����','0','1','0','��','0','','','0.00000','1','0','','2018-12-21 16:59:17','','','','ZLZB_DBZ90301','','','0','1','','','','','','0','0','0','','','','','')
	
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
	print '����ָ��ZLZB_DBZ90301,��ָ��ZLZB_DBZ90301�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ90301') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('ZLZB_DBZ90301','��סԺ����','select ''ZLZB_DBZ90301'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zzyts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm','select ''ZLZB_DBZ90301'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zzyts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm','1','','','0','','','0','select ''ZLZB_DBZ90301'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zzyts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm')
	
end
go

/************No.41: ZLZB_DBZ90301******************HD_ZBMX_HZ***ZLZB_DBZ90301******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ90301')
begin
	print '����ָ��ZLZB_DBZ90301,��ָ��ZLZB_DBZ90301�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ90301') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_DBZ90301','��סԺ����','select ''ZLZB_DBZ90301'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zzyts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ90301'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zzyts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ90301'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zzyts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','11704','','','0','1','0','FACT_ZLZB_JBBZ_DBZ','zzyts','','timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','','select ''ZLZB_DBZ90301'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zzyts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','')
	
end
go

/************No.42: ZLZB_DBZ904******************ZB_FACT_DIM_YS***ZLZB_DBZ904******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_DBZ904' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ904','sum','ZLZB_DBZ90401','1','ZLZB_DBZ901','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ904','sum','ZLZB_DBZ90401','1','ZLZB_DBZ901','1','DIM_ZLZB_JBBZ_DBZ','dbzkey','dbzmc','����������',' where',' where','dbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ904','sum','ZLZB_DBZ90401','1','ZLZB_DBZ901','1','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ904','sum','ZLZB_DBZ90401','1','ZLZB_DBZ901','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ904','sum','ZLZB_DBZ90401','1','ZLZB_DBZ901','1','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ904','sum','ZLZB_DBZ90401','1','ZLZB_DBZ901','1','DIM_CYFS','cyfskey','cyfsmc','��Ժ��ʽ',' where',' where','cyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ904','sum','ZLZB_DBZ90401','1','ZLZB_DBZ901','1','DIM_ZYTS','zytskey','zyts','סԺ����',' where',' where','zytskey','','','','','','')
	go

/************No.42: ZLZB_DBZ904******************ZBMX***ZLZB_DBZ904******************************/

if exists(select 1 from ZBMX where id='ZLZB_DBZ904')
begin
	print '����ָ��ZLZB_DBZ904,��ָ��ZLZB_DBZ904�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_DBZ904') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_DBZ904','39','��ǰƽ���ȴ�����','0','1','0','��','1','','','0.00000','1','0','','2018-12-21 16:59:17','','','','ZLZB_DBZ904','','','0','1','','','','','','0','0','0','','','','','')
	
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
	print '����ָ��ZLZB_DBZ904,��ָ��ZLZB_DBZ904�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ904') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('ZLZB_DBZ904','��ǰƽ���ȴ�����','select ''ZLZB_DBZ904'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''ZLZB_DBZ90401''   and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''ZLZB_DBZ901''  and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''ZLZB_DBZ904'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ90401'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','ZLZB_DBZ90401,ZLZB_DBZ901','0','','','0','select ''ZLZB_DBZ904'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ90401''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.42: ZLZB_DBZ904******************HD_ZBMX_HZ***ZLZB_DBZ904******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ904')
begin
	print '����ָ��ZLZB_DBZ904,��ָ��ZLZB_DBZ904�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ904') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_DBZ904','��ǰƽ���ȴ�����','','select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(sqddts) fz,0 fm from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey union all select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,0 fz,sum(ls) fm from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','','select ''ZLZB_DBZ904'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_DBZ90401''   and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_DBZ901''  and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_DBZ904'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ90401''   and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_DBZ90401,ZLZB_DBZ901','11707','','','0','-1','-1','','','','timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','@��ǰƽ��סԺ����(ZLZB_DBZ90401)/@������(ZLZB_DBZ901)','select ''ZLZB_DBZ904'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ90401''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.43: ZLZB_DBZ90401******************ZB_FACT_DIM_YS***ZLZB_DBZ90401******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_DBZ90401' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90401','sum','ZLZB_DBZ90401','1','0','0','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90401','sum','ZLZB_DBZ90401','1','0','0','DIM_ZLZB_JBBZ_DBZ','dbzkey','dbzmc','����������',' where',' where','dbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90401','sum','ZLZB_DBZ90401','1','0','0','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90401','sum','ZLZB_DBZ90401','1','0','0','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90401','sum','ZLZB_DBZ90401','1','0','0','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90401','sum','ZLZB_DBZ90401','1','0','0','DIM_CYFS','cyfskey','cyfsmc','��Ժ��ʽ',' where',' where','cyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ90401','sum','ZLZB_DBZ90401','1','0','0','DIM_ZYTS','zytskey','zyts','סԺ����',' where',' where','zytskey','','','','','','')
	go

/************No.43: ZLZB_DBZ90401******************ZBMX***ZLZB_DBZ90401******************************/

if exists(select 1 from ZBMX where id='ZLZB_DBZ90401')
begin
	print '����ָ��ZLZB_DBZ90401,��ָ��ZLZB_DBZ90401�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_DBZ90401') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_DBZ90401','39','��ǰƽ��סԺ����','0','1','0','��','0','','','0.00000','1','0','','2018-12-21 16:59:17','','','','ZLZB_DBZ90401','','','0','1','','','','','','0','0','0','','','','','')
	
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
	print '����ָ��ZLZB_DBZ90401,��ָ��ZLZB_DBZ90401�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ90401') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('ZLZB_DBZ90401','��ǰƽ��סԺ����','select ''ZLZB_DBZ90401'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(sqddts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm','select ''ZLZB_DBZ90401'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(sqddts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm','1','','','0','','','0','select ''ZLZB_DBZ90401'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(sqddts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm')
	
end
go

/************No.43: ZLZB_DBZ90401******************HD_ZBMX_HZ***ZLZB_DBZ90401******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ90401')
begin
	print '����ָ��ZLZB_DBZ90401,��ָ��ZLZB_DBZ90401�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ90401') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_DBZ90401','��ǰƽ��סԺ����','select ''ZLZB_DBZ90401'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(sqddts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ90401'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(sqddts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ90401'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(sqddts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','11706','','','0','1','0','FACT_ZLZB_JBBZ_DBZ','sqddts','','timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','','select ''ZLZB_DBZ90401'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(sqddts) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','')
	
end
go

/************No.44: ZLZB_DBZ905******************ZB_FACT_DIM_YS***ZLZB_DBZ905******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_DBZ905' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ905','sum','ZLZB_DBZ905','1','0','0','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ905','sum','ZLZB_DBZ905','1','0','0','DIM_ZLZB_JBBZ_DBZ','dbzkey','dbzmc','����������',' where',' where','dbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ905','sum','ZLZB_DBZ905','1','0','0','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ905','sum','ZLZB_DBZ905','1','0','0','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ905','sum','ZLZB_DBZ905','1','0','0','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ905','sum','ZLZB_DBZ905','1','0','0','DIM_CYFS','cyfskey','cyfsmc','��Ժ��ʽ',' where',' where','cyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ905','sum','ZLZB_DBZ905','1','0','0','DIM_ZYTS','zytskey','zyts','סԺ����',' where',' where','zytskey','','','','','','')
	go

/************No.44: ZLZB_DBZ905******************ZBMX***ZLZB_DBZ905******************************/

if exists(select 1 from ZBMX where id='ZLZB_DBZ905')
begin
	print '����ָ��ZLZB_DBZ905,��ָ��ZLZB_DBZ905�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_DBZ905') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_DBZ905','39','�ܷ���','0','10000','0','��Ԫ','0','','','0.00000','1','0','','2018-12-21 16:59:17','','','','ZLZB_DBZ905','','','0','1','','','','','','0','0','0','','','','','')
	
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
	print '����ָ��ZLZB_DBZ905,��ָ��ZLZB_DBZ905�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ905') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('ZLZB_DBZ905','�ܷ���','select ''ZLZB_DBZ905'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm','select ''ZLZB_DBZ905'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm','1','','','0','','','0','select ''ZLZB_DBZ905'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm')
	
end
go

/************No.44: ZLZB_DBZ905******************HD_ZBMX_HZ***ZLZB_DBZ905******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ905')
begin
	print '����ָ��ZLZB_DBZ905,��ָ��ZLZB_DBZ905�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ905') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_DBZ905','�ܷ���','select ''ZLZB_DBZ905'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ905'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ905'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','11708','','','0','1','0','FACT_ZLZB_JBBZ_DBZ','zfy','','timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','','select ''ZLZB_DBZ905'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','')
	
end
go

/************No.45: ZLZB_DBZ906******************ZB_FACT_DIM_YS***ZLZB_DBZ906******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_DBZ906' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ906','sum','ZLZB_DBZ906','1','0','0','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ906','sum','ZLZB_DBZ906','1','0','0','DIM_ZLZB_JBBZ_DBZ','dbzkey','dbzmc','����������',' where',' where','dbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ906','sum','ZLZB_DBZ906','1','0','0','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ906','sum','ZLZB_DBZ906','1','0','0','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ906','sum','ZLZB_DBZ906','1','0','0','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ906','sum','ZLZB_DBZ906','1','0','0','DIM_CYFS','cyfskey','cyfsmc','��Ժ��ʽ',' where',' where','cyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ906','sum','ZLZB_DBZ906','1','0','0','DIM_ZYTS','zytskey','zyts','סԺ����',' where',' where','zytskey','','','','','','')
	go

/************No.45: ZLZB_DBZ906******************ZBMX***ZLZB_DBZ906******************************/

if exists(select 1 from ZBMX where id='ZLZB_DBZ906')
begin
	print '����ָ��ZLZB_DBZ906,��ָ��ZLZB_DBZ906�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_DBZ906') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_DBZ906','39','��ҩ��','0','10000','0','��Ԫ','0','','','0.00000','1','0','','2018-12-21 16:59:17','','','','ZLZB_DBZ906','','','0','1','','','','','','0','0','0','','','','','')
	
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
	print '����ָ��ZLZB_DBZ906,��ָ��ZLZB_DBZ906�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ906') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('ZLZB_DBZ906','��ҩ��','select ''ZLZB_DBZ906'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ypfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm','select ''ZLZB_DBZ906'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ypfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm','1','','','0','','','0','select ''ZLZB_DBZ906'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ypfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm')
	
end
go

/************No.45: ZLZB_DBZ906******************HD_ZBMX_HZ***ZLZB_DBZ906******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ906')
begin
	print '����ָ��ZLZB_DBZ906,��ָ��ZLZB_DBZ906�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ906') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_DBZ906','��ҩ��','select ''ZLZB_DBZ906'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ypfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ906'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ypfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_DBZ906'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ypfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','11709','','','0','1','0','FACT_ZLZB_JBBZ_DBZ','ypfy','','timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','','select ''ZLZB_DBZ906'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ypfy) fz from FACT_ZLZB_JBBZ_DBZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','')
	
end
go

/************No.46: ZLZB_DBZ907******************ZB_FACT_DIM_YS***ZLZB_DBZ907******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_DBZ907' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ907','sum','ZLZB_DBZ905','1','ZLZB_DBZ901','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ907','sum','ZLZB_DBZ905','1','ZLZB_DBZ901','1','DIM_ZLZB_JBBZ_DBZ','dbzkey','dbzmc','����������',' where',' where','dbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ907','sum','ZLZB_DBZ905','1','ZLZB_DBZ901','1','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ907','sum','ZLZB_DBZ905','1','ZLZB_DBZ901','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ907','sum','ZLZB_DBZ905','1','ZLZB_DBZ901','1','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ907','sum','ZLZB_DBZ905','1','ZLZB_DBZ901','1','DIM_CYFS','cyfskey','cyfsmc','��Ժ��ʽ',' where',' where','cyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ907','sum','ZLZB_DBZ905','1','ZLZB_DBZ901','1','DIM_ZYTS','zytskey','zyts','סԺ����',' where',' where','zytskey','','','','','','')
	go

/************No.46: ZLZB_DBZ907******************ZBMX***ZLZB_DBZ907******************************/

if exists(select 1 from ZBMX where id='ZLZB_DBZ907')
begin
	print '����ָ��ZLZB_DBZ907,��ָ��ZLZB_DBZ907�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_DBZ907') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_DBZ907','39','���η�','0','1','0','Ԫ','1','','','0.00000','1','0','','2018-12-21 16:59:17','','','','ZLZB_DBZ907','','','0','1','','','','','','0','0','0','','','','','')
	
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
	print '����ָ��ZLZB_DBZ907,��ָ��ZLZB_DBZ907�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ907') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('ZLZB_DBZ907','���η�','select ''ZLZB_DBZ907'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''ZLZB_DBZ905''   and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''ZLZB_DBZ901''  and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''ZLZB_DBZ907'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ905'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','ZLZB_DBZ905,ZLZB_DBZ901','0','','','0','select ''ZLZB_DBZ907'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ905''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.46: ZLZB_DBZ907******************HD_ZBMX_HZ***ZLZB_DBZ907******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ907')
begin
	print '����ָ��ZLZB_DBZ907,��ָ��ZLZB_DBZ907�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ907') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_DBZ907','���η�','','select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(zfy) fz,0 fm from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey union all select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,0 fz,sum(ls) fm from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','','select ''ZLZB_DBZ907'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_DBZ905''   and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_DBZ901''  and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_DBZ907'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ905''   and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_DBZ905,ZLZB_DBZ901','11710','','','0','-1','-1','','','','timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','@�ܷ���(ZLZB_DBZ905)/@������(ZLZB_DBZ901)','select ''ZLZB_DBZ907'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ905''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.47: ZLZB_DBZ908******************ZB_FACT_DIM_YS***ZLZB_DBZ908******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_DBZ908' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ908','sum','ZLZB_DBZ906','1','ZLZB_DBZ901','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ908','sum','ZLZB_DBZ906','1','ZLZB_DBZ901','1','DIM_ZLZB_JBBZ_DBZ','dbzkey','dbzmc','����������',' where',' where','dbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ908','sum','ZLZB_DBZ906','1','ZLZB_DBZ901','1','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ908','sum','ZLZB_DBZ906','1','ZLZB_DBZ901','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ908','sum','ZLZB_DBZ906','1','ZLZB_DBZ901','1','DIM_YSXX','yskey','ysmc','ҽ��',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ908','sum','ZLZB_DBZ906','1','ZLZB_DBZ901','1','DIM_CYFS','cyfskey','cyfsmc','��Ժ��ʽ',' where',' where','cyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_DBZ908','sum','ZLZB_DBZ906','1','ZLZB_DBZ901','1','DIM_ZYTS','zytskey','zyts','סԺ����',' where',' where','zytskey','','','','','','')
	go

/************No.47: ZLZB_DBZ908******************ZBMX***ZLZB_DBZ908******************************/

if exists(select 1 from ZBMX where id='ZLZB_DBZ908')
begin
	print '����ָ��ZLZB_DBZ908,��ָ��ZLZB_DBZ908�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_DBZ908') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_DBZ908','39','����ҩ��','0','1','0','Ԫ','1','','','0.00000','1','0','','2018-12-21 16:59:17','','','','ZLZB_DBZ908','','','0','1','','','','','','0','0','0','','','','','')
	
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
	print '����ָ��ZLZB_DBZ908,��ָ��ZLZB_DBZ908�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_DBZ908') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('ZLZB_DBZ908','����ҩ��','select ''ZLZB_DBZ908'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''ZLZB_DBZ906''   and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''ZLZB_DBZ901''  and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''ZLZB_DBZ908'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ906'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','ZLZB_DBZ906,ZLZB_DBZ901','0','','','0','select ''ZLZB_DBZ908'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ906''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.47: ZLZB_DBZ908******************HD_ZBMX_HZ***ZLZB_DBZ908******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ908')
begin
	print '����ָ��ZLZB_DBZ908,��ָ��ZLZB_DBZ908�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_DBZ908') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_DBZ908','����ҩ��','','select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,sum(ypfy) fz,0 fm from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey union all select timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey,0 fz,sum(ls) fm from FACT_ZLZB_JBBZ_DBZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','','select ''ZLZB_DBZ908'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_DBZ906''   and month between @kssj and @jssj UNION ALL select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_DBZ901''  and month between @kssj and @jssj )t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_DBZ908'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ906''   and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_DBZ906,ZLZB_DBZ901','11711','','','0','-1','-1','','','','timekey,dbzkey,yykey,kskey,yskey,cyfskey,zytskey','@��ҩ��(ZLZB_DBZ906)/@������(ZLZB_DBZ901)','select ''ZLZB_DBZ908'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ906''   and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) UNION ALL select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_DBZ901''  and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) )t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.48: ZLZB_YG0073******************ZB_FACT_DIM_YS***ZLZB_YG0073******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YG0073' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YG0073','sum','ZLZB_YG007301','1','E00213','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YG0073','sum','ZLZB_YG007301','1','E00213','1','DIM_YYXX','yykey','yymc','ҽԺ����',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YG0073','sum','ZLZB_YG007301','1','E00213','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.48: ZLZB_YG0073******************ZBMX***ZLZB_YG0073******************************/

if exists(select 1 from ZBMX where id='ZLZB_YG0073')
begin
	print '����ָ��ZLZB_YG0073,��ָ��ZLZB_YG0073�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YG0073') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YG0073','ZLZB07','I���п�������λ��Ⱦ��?','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YG0073','','','0','1','','','','','','0','1','0','','','','','')
	
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
	print '����ָ��ZLZB_YG0073,��ָ��ZLZB_YG0073�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YG0073') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YG0073'

end
go

/************No.48: ZLZB_YG0073******************HD_ZBMX_HZ***ZLZB_YG0073******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YG0073')
begin
	print '����ָ��ZLZB_YG0073,��ָ��ZLZB_YG0073�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YG0073') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YG0073','I���п�������λ��Ⱦ��?','','select timekey,yykey,kskey,sum(isssbwgr) fz,0 fm from FACT_GZ_YYGR_GR a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and qkdjkey in (1) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ssrc) fm from FACT_YY_SS_ZYSSYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and qkdjkey in (1) group by timekey,yykey,kskey','','select ''ZLZB_YG0073'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YG007301'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''E00213'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YG0073'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YG007301'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''E00213'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YG007301,E00213','12237','','','0','-1','-1','','','','timekey,yykey,kskey','@I���п�������λ��Ⱦ������(ZLZB_YG007301)/@I���п���������(E00213)','select ''ZLZB_YG0073'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YG007301'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''E00213'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.49: ZLZB_YY00040102******************ZB_FACT_DIM_YS***ZLZB_YY00040102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY00040102' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040102','sum','ZLZB_YY00040101','1','ZLZB_YY000401','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040102','sum','ZLZB_YY00040101','1','ZLZB_YY000401','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.49: ZLZB_YY00040102******************ZBMX***ZLZB_YY00040102******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY00040102')
begin
	print '����ָ��ZLZB_YY00040102,��ָ��ZLZB_YY00040102�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY00040102') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY00040102','ZLZB01','��������������Առ��','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY00040102','','','0','1','','','','','','ZLZB_YY000401','1','0','','1','1','1','')
	
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
	print '����ָ��ZLZB_YY00040102,��ָ��ZLZB_YY00040102�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY00040102') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY00040102'

end
go

/************No.49: ZLZB_YY00040102******************HD_ZBMX_HZ***ZLZB_YY00040102******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00040102')
begin
	print '����ָ��ZLZB_YY00040102,��ָ��ZLZB_YY00040102�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00040102') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY00040102','��������������Առ��','','','','select ''ZLZB_YY00040102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY00040101'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY000401'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY00040102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY00040101'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY00040101,ZLZB_YY000401','12422','','','1','-1','-1','','','','','@��������������Ա����(ZLZB_YY00040101)/@����������Ա����(ZLZB_YY000401)','select ''ZLZB_YY00040102'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY00040101'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.50: ZLZB_YY00040104******************ZB_FACT_DIM_YS***ZLZB_YY00040104******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY00040104' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040104','sum','ZLZB_YY00040103','1','ZLZB_YY000401','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040104','sum','ZLZB_YY00040103','1','ZLZB_YY000401','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.50: ZLZB_YY00040104******************ZBMX***ZLZB_YY00040104******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY00040104')
begin
	print '����ָ��ZLZB_YY00040104,��ָ��ZLZB_YY00040104�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY00040104') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY00040104','ZLZB01','�м�����������Առ��','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY00040104','','','0','1','','','','','','ZLZB_YY000401','1','0','','1','1','1','')
	
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
	print '����ָ��ZLZB_YY00040104,��ָ��ZLZB_YY00040104�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY00040104') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY00040104'

end
go

/************No.50: ZLZB_YY00040104******************HD_ZBMX_HZ***ZLZB_YY00040104******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00040104')
begin
	print '����ָ��ZLZB_YY00040104,��ָ��ZLZB_YY00040104�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00040104') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY00040104','�м�����������Առ��','','','','select ''ZLZB_YY00040104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY00040103'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY000401'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY00040104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY00040103'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY00040103,ZLZB_YY000401','12423','','','1','-1','-1','','','','','@�м�����������Ա����(ZLZB_YY00040103)/@����������Ա����(ZLZB_YY000401)','select ''ZLZB_YY00040104'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY00040103'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.51: ZLZB_YY00040106******************ZB_FACT_DIM_YS***ZLZB_YY00040106******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY00040106' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040106','sum','ZLZB_YY00040105','1','ZLZB_YY000401','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040106','sum','ZLZB_YY00040105','1','ZLZB_YY000401','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.51: ZLZB_YY00040106******************ZBMX***ZLZB_YY00040106******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY00040106')
begin
	print '����ָ��ZLZB_YY00040106,��ָ��ZLZB_YY00040106�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY00040106') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY00040106','ZLZB01','���߼�����������Առ��','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY00040106','','','0','1','','','','','','ZLZB_YY000401','1','0','','1','1','1','')
	
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
	print '����ָ��ZLZB_YY00040106,��ָ��ZLZB_YY00040106�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY00040106') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY00040106'

end
go

/************No.51: ZLZB_YY00040106******************HD_ZBMX_HZ***ZLZB_YY00040106******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00040106')
begin
	print '����ָ��ZLZB_YY00040106,��ָ��ZLZB_YY00040106�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00040106') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY00040106','���߼�����������Առ��','','','','select ''ZLZB_YY00040106'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY00040105'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY000401'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY00040106'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY00040105'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY00040105,ZLZB_YY000401','12424','','','1','-1','-1','','','','','@���߼�����������Ա����(ZLZB_YY00040105)/@����������Ա����(ZLZB_YY000401)','select ''ZLZB_YY00040106'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY00040105'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.52: ZLZB_YY00040108******************ZB_FACT_DIM_YS***ZLZB_YY00040108******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY00040108' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040108','sum','ZLZB_YY00040107','1','ZLZB_YY000401','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040108','sum','ZLZB_YY00040107','1','ZLZB_YY000401','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.52: ZLZB_YY00040108******************ZBMX***ZLZB_YY00040108******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY00040108')
begin
	print '����ָ��ZLZB_YY00040108,��ָ��ZLZB_YY00040108�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY00040108') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY00040108','ZLZB01','�߼�����������Առ��','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY00040108','','','0','1','','','','','','ZLZB_YY000401','1','0','','1','1','1','')
	
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
	print '����ָ��ZLZB_YY00040108,��ָ��ZLZB_YY00040108�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY00040108') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY00040108'

end
go

/************No.52: ZLZB_YY00040108******************HD_ZBMX_HZ***ZLZB_YY00040108******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00040108')
begin
	print '����ָ��ZLZB_YY00040108,��ָ��ZLZB_YY00040108�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00040108') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY00040108','�߼�����������Առ��','','','','select ''ZLZB_YY00040108'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY00040107'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY000401'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY00040108'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY00040107'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY00040107,ZLZB_YY000401','12425','','','1','-1','-1','','','','','@�߼�����������Ա����(ZLZB_YY00040107)/@����������Ա����(ZLZB_YY000401)','select ''ZLZB_YY00040108'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY00040107'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.53: ZLZB_YY00040109******************ZB_FACT_DIM_YS***ZLZB_YY00040109******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY00040109' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040109','sum','ZLZB_YY0005','1','ZLZB_YY0006','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040109','sum','ZLZB_YY0005','1','ZLZB_YY0006','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.53: ZLZB_YY00040109******************ZBMX***ZLZB_YY00040109******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY00040109')
begin
	print '����ָ��ZLZB_YY00040109,��ָ��ZLZB_YY00040109�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY00040109') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY00040109','ZLZB01','ҽ����','0','100','0','%','1','','','0.00000','1','0','','','ҽԺע��ҽʦ����/ȫԺͬ��ע�Ụʿ����','','','ZLZB_YY00040109','','','0','1','','','','','','ZLZB_YY000401','1','0','','1','1','1','')
	
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
	print '����ָ��ZLZB_YY00040109,��ָ��ZLZB_YY00040109�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY00040109') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY00040109'

end
go

/************No.53: ZLZB_YY00040109******************HD_ZBMX_HZ***ZLZB_YY00040109******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00040109')
begin
	print '����ָ��ZLZB_YY00040109,��ָ��ZLZB_YY00040109�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00040109') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY00040109','ҽ����','','','','select ''ZLZB_YY00040109'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0005'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0006'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY00040109'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0006'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY0005,ZLZB_YY0006','12431','','','1','-1','-1','','','','','@����������Ա����ҽʦ��(ZLZB_YY0005)/@����������Ա����������Ա��(ZLZB_YY0006)','select ''ZLZB_YY00040109'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0006'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.54: ZLZB_YY000501******************ZB_FACT_DIM_YS***ZLZB_YY000501******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY000501' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000501','sum','ZLZB_YY0057','1','ZLZB_YY0005','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000501','sum','ZLZB_YY0057','1','ZLZB_YY0005','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.54: ZLZB_YY000501******************ZBMX***ZLZB_YY000501******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY000501')
begin
	print '����ָ��ZLZB_YY000501,��ָ��ZLZB_YY000501�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY000501') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY000501','ZLZB01','����ҽʦ��Առ��','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY000501','','','0','1','','','','','','ZLZB_YY0005','1','0','','1','1','1','')
	
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
	print '����ָ��ZLZB_YY000501,��ָ��ZLZB_YY000501�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY000501') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY000501'

end
go

/************No.54: ZLZB_YY000501******************HD_ZBMX_HZ***ZLZB_YY000501******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY000501')
begin
	print '����ָ��ZLZB_YY000501,��ָ��ZLZB_YY000501�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY000501') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY000501','����ҽʦ��Առ��','','','','select ''ZLZB_YY000501'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0057'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0005'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY000501'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0057'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY0057,ZLZB_YY0005','12426','','','1','-1','-1','','','','','@����ҽʦ��Ա(ZLZB_YY0057)/@����������Ա����ҽʦ��(ZLZB_YY0005)','select ''ZLZB_YY000501'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0057'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.55: ZLZB_YY000503******************ZB_FACT_DIM_YS***ZLZB_YY000503******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY000503' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000503','sum','ZLZB_YY000502','1','ZLZB_YY0005','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000503','sum','ZLZB_YY000502','1','ZLZB_YY0005','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.55: ZLZB_YY000503******************ZBMX***ZLZB_YY000503******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY000503')
begin
	print '����ָ��ZLZB_YY000503,��ָ��ZLZB_YY000503�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY000503') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY000503','ZLZB01','����ҽʦ��Առ��','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY000503','','','0','1','','','','','','ZLZB_YY0005','1','0','','1','1','1','')
	
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
	print '����ָ��ZLZB_YY000503,��ָ��ZLZB_YY000503�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY000503') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY000503'

end
go

/************No.55: ZLZB_YY000503******************HD_ZBMX_HZ***ZLZB_YY000503******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY000503')
begin
	print '����ָ��ZLZB_YY000503,��ָ��ZLZB_YY000503�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY000503') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY000503','����ҽʦ��Առ��','','','','select ''ZLZB_YY000503'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY000502'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0005'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY000503'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY000502'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY000502,ZLZB_YY0005','12427','','','1','-1','-1','','','','','@����ҽʦ��Ա(ZLZB_YY000502)/@����������Ա����ҽʦ��(ZLZB_YY0005)','select ''ZLZB_YY000503'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY000502'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.56: ZLZB_YY000504******************ZB_FACT_DIM_YS***ZLZB_YY000504******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY000504' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000504','sum','ZLZB_YY0052','1','ZLZB_YY0005','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000504','sum','ZLZB_YY0052','1','ZLZB_YY0005','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.56: ZLZB_YY000504******************ZBMX***ZLZB_YY000504******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY000504')
begin
	print '����ָ��ZLZB_YY000504,��ָ��ZLZB_YY000504�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY000504') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY000504','ZLZB01','��֢ҽʦ��Առ��','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY000504','','','0','1','','','','','','ZLZB_YY0005','1','0','','1','1','1','')
	
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
	print '����ָ��ZLZB_YY000504,��ָ��ZLZB_YY000504�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY000504') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY000504'

end
go

/************No.56: ZLZB_YY000504******************HD_ZBMX_HZ***ZLZB_YY000504******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY000504')
begin
	print '����ָ��ZLZB_YY000504,��ָ��ZLZB_YY000504�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY000504') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY000504','��֢ҽʦ��Առ��','','','','select ''ZLZB_YY000504'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0052'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0005'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY000504'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0052'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY0052,ZLZB_YY0005','12428','','','1','-1','-1','','','','','@��֢ҽѧ��ҽʦ��(ZLZB_YY0052)/@����������Ա����ҽʦ��(ZLZB_YY0005)','select ''ZLZB_YY000504'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0052'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.57: ZLZB_YY000505******************ZB_FACT_DIM_YS***ZLZB_YY000505******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY000505' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000505','sum','ZLZB_ZLGL_LCBL001','1','ZLZB_YY0005','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000505','sum','ZLZB_ZLGL_LCBL001','1','ZLZB_YY0005','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.57: ZLZB_YY000505******************ZBMX***ZLZB_YY000505******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY000505')
begin
	print '����ָ��ZLZB_YY000505,��ָ��ZLZB_YY000505�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY000505') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY000505','ZLZB01','����ҽʦ��Առ��','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY000505','','','0','1','','','','','','ZLZB_YY0005','1','0','','1','1','1','')
	
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
	print '����ָ��ZLZB_YY000505,��ָ��ZLZB_YY000505�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY000505') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY000505'

end
go

/************No.57: ZLZB_YY000505******************HD_ZBMX_HZ***ZLZB_YY000505******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY000505')
begin
	print '����ָ��ZLZB_YY000505,��ָ��ZLZB_YY000505�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY000505') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY000505','����ҽʦ��Առ��','','','','select ''ZLZB_YY000505'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_ZLGL_LCBL001'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0005'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY000505'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_ZLGL_LCBL001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_ZLGL_LCBL001,ZLZB_YY0005','12429','','','1','-1','-1','','','','','@����ҽʦ��(ZLZB_ZLGL_LCBL001)/@����������Ա����ҽʦ��(ZLZB_YY0005)','select ''ZLZB_YY000505'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_ZLGL_LCBL001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.58: ZLZB_YY000507******************ZB_FACT_DIM_YS***ZLZB_YY000507******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY000507' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000507','sum','ZLZB_YY000506','1','ZLZB_YY0005','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000507','sum','ZLZB_YY000506','1','ZLZB_YY0005','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.58: ZLZB_YY000507******************ZBMX***ZLZB_YY000507******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY000507')
begin
	print '����ָ��ZLZB_YY000507,��ָ��ZLZB_YY000507�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY000507') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY000507','ZLZB01','��ҽʦ��Առ��','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY000507','','','0','1','','','','','','ZLZB_YY0005','1','0','','1','1','1','')
	
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
	print '����ָ��ZLZB_YY000507,��ָ��ZLZB_YY000507�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY000507') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY000507'

end
go

/************No.58: ZLZB_YY000507******************HD_ZBMX_HZ***ZLZB_YY000507******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY000507')
begin
	print '����ָ��ZLZB_YY000507,��ָ��ZLZB_YY000507�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY000507') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY000507','��ҽʦ��Առ��','','','','select ''ZLZB_YY000507'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY000506'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0005'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY000507'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY000506'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY000506,ZLZB_YY0005','12430','','','1','-1','-1','','','','','@��ҽʦ��Ա(ZLZB_YY000506)/@����������Ա����ҽʦ��(ZLZB_YY0005)','select ''ZLZB_YY000507'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY000506'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0005'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.59: ZLZB_YY0041******************ZB_FACT_DIM_YS***ZLZB_YY0041******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0041' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0041'
go

/************No.59: ZLZB_YY0041******************ZBMX***ZLZB_YY0041******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY0041')
begin
	print '����ָ��ZLZB_YY0041,��ָ��ZLZB_YY0041�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0041') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY0041','ZLZB01','�ʲ���ծ��','0','100','4','%','1','','','0.05000','1','0','','','','','','ZLZB_YY0041','','','0','2','','','','','0','','','','','1','1','1','0')
	
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
	print '����ָ��ZLZB_YY0041,��ָ��ZLZB_YY0041�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0041') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY0041'

end
go

/************No.59: ZLZB_YY0041******************HD_ZBMX_HZ***ZLZB_YY0041******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0041')
begin
	print '����ָ��ZLZB_YY0041,��ָ��ZLZB_YY0041�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0041') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY0041','�ʲ���ծ��','','','','select ''ZLZB_YY0041'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY004102'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY004101'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY0041'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY004102'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY004101'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY004102,ZLZB_YY004101','','','','0','-1','-1','','','','','@��ծ�ܶ�(ZLZB_YY004102)/@�ʲ��ܶ�(ZLZB_YY004101)','select ''ZLZB_YY0041'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY004102'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY004101'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.60: ZLZB_YY006601******************ZB_FACT_DIM_YS***ZLZB_YY006601******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY006601' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY006601','sum','ZLZB_YY0066','1','ZLZB_YY0001','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY006601','sum','ZLZB_YY0066','1','ZLZB_YY0001','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.60: ZLZB_YY006601******************ZBMX***ZLZB_YY006601******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY006601')
begin
	print '����ָ��ZLZB_YY006601,��ָ��ZLZB_YY006601�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY006601') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY006601','ZLZB01','ÿ���Ų���ҩʦ����','0','1','0','��','1','','','0.00000','1','0','','','','','','ZLZB_YY006601','','','0','1','','','','','','ZLZB_YY0066','1','0','','1','1','1','')
	
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
	print '����ָ��ZLZB_YY006601,��ָ��ZLZB_YY006601�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY006601') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY006601'

end
go

/************No.60: ZLZB_YY006601******************HD_ZBMX_HZ***ZLZB_YY006601******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY006601')
begin
	print '����ָ��ZLZB_YY006601,��ָ��ZLZB_YY006601�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY006601') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY006601','ÿ���Ų���ҩʦ����','','','','select ''ZLZB_YY006601'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0066'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0001'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY006601'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0066'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY0066,ZLZB_YY0001','12408','','','1','-1','-1','','','','','@ҩѧרҵ������Ա(ZLZB_YY0066)*100/@ʵ�ʿ��Ŵ�λ(ZLZB_YY0001)','select ''ZLZB_YY006601'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0066'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.61: ZLZB_YY0091******************ZB_FACT_DIM_YS***ZLZB_YY0091******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0091' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0091'
go

/************No.61: ZLZB_YY0091******************ZBMX***ZLZB_YY0091******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY0091')
begin
	print '����ָ��ZLZB_YY0091,��ָ��ZLZB_YY0091�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0091') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY0091','ZLZB01','���Ӳ���Ӧ�ù���ˮƽ�ּ�','0','1','0','��','0','','','0.00000','1','0','','','','','','ZLZB_YY0091','','','0','1','','','','','','0','1','0','','1','0','1','')
	
end
go

/************No.61: ZLZB_YY0091******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0091******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0091' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0091'
go

/************No.61: ZLZB_YY0091******************HD_ZBMX_HZ_YS***ZLZB_YY0091******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0091')
begin
	print '����ָ��ZLZB_YY0091,��ָ��ZLZB_YY0091�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0091') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY0091'

end
go

/************No.61: ZLZB_YY0091******************HD_ZBMX_HZ***ZLZB_YY0091******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0091')
begin
	print '����ָ��ZLZB_YY0091,��ָ��ZLZB_YY0091�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��ZLZB_YY00920101,��ָ��ZLZB_YY00920101�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY00920101') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY00920101','ZLZB01','ҽѧ�˲���������','0','10000','0','��Ԫ','0','','','0.00000','1','0','','','','','','ZLZB_YY00920101','','','0','1','','','','','','ZLZB_YY009201','1','0','','1','0','1','')
	
end
go

/************No.62: ZLZB_YY00920101******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00920101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00920101' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY00920101'
go

/************No.62: ZLZB_YY00920101******************HD_ZBMX_HZ_YS***ZLZB_YY00920101******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY00920101')
begin
	print '����ָ��ZLZB_YY00920101,��ָ��ZLZB_YY00920101�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY00920101') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY00920101'

end
go

/************No.62: ZLZB_YY00920101******************HD_ZBMX_HZ***ZLZB_YY00920101******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00920101')
begin
	print '����ָ��ZLZB_YY00920101,��ָ��ZLZB_YY00920101�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY00920101') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb ZLZB_YY00920101'

end
go

/************No.63: ZLZB_YY009202******************ZB_FACT_DIM_YS***ZLZB_YY009202******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY009202' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY009202','sum','ZLZB_YY009201','1','ZLZB_YY0092','1','DIM_TIME','timekey','month_name','ʱ��',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY009202','sum','ZLZB_YY009201','1','ZLZB_YY0092','1','DIM_KSXX','kskey','ksmc','����',' where',' where','kskey','','','','','','')
	go

/************No.63: ZLZB_YY009202******************ZBMX***ZLZB_YY009202******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY009202')
begin
	print '����ָ��ZLZB_YY009202,��ָ��ZLZB_YY009202�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY009202') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY009202','ZLZB01','��Ա֧��ռҵ��֧������','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY009202','','','0','1','','','','','','ZLZB_YY0092','1','0','','1','1','1','')
	
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
	print '����ָ��ZLZB_YY009202,��ָ��ZLZB_YY009202�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009202') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY009202'

end
go

/************No.63: ZLZB_YY009202******************HD_ZBMX_HZ***ZLZB_YY009202******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY009202')
begin
	print '����ָ��ZLZB_YY009202,��ָ��ZLZB_YY009202�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY009202') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY009202','��Ա֧��ռҵ��֧������','','','','select ''ZLZB_YY009202'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY009201'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY0092'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY009202'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY009201'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY0092'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY009201,ZLZB_YY0092','12421','','','1','-1','-1','','','','','@��Ա����֧��(ZLZB_YY009201)/@ҵ����֧��(ZLZB_YY0092)','select ''ZLZB_YY009202'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY009201'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY0092'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.64: ZLZB_YY009204******************ZB_FACT_DIM_YS***ZLZB_YY009204******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY009204' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY009204'
go

/************No.64: ZLZB_YY009204******************ZBMX***ZLZB_YY009204******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY009204')
begin
	print '����ָ��ZLZB_YY009204,��ָ��ZLZB_YY009204�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY009204') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY009204','ZLZB01','��Ԫ�����ܺ�֧��','0','10000','4','��Ԫ','0','','','0.00000','1','0','','','�����ܺ�֧��/��������*10000�����ܺ�Ϊˮ���硢�����ȵ��ܺ�����Ϊ�ֱ�ú��֮��','','','ZLZB_YY009204','','','0','1','','','','','','ZLZB_YY0092','1','0','','1','0','1','')
	
end
go

/************No.64: ZLZB_YY009204******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY009204******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY009204' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY009204'
go

/************No.64: ZLZB_YY009204******************HD_ZBMX_HZ_YS***ZLZB_YY009204******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009204')
begin
	print '����ָ��ZLZB_YY009204,��ָ��ZLZB_YY009204�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009204') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY009204'

end
go

/************No.64: ZLZB_YY009204******************HD_ZBMX_HZ***ZLZB_YY009204******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY009204')
begin
	print '����ָ��ZLZB_YY009204,��ָ��ZLZB_YY009204�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��ZLZB_YY0093,��ָ��ZLZB_YY0093�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0093') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY0093','ZLZB01','��֧����','0','10000','4','��Ԫ','0','','','0.00000','1','0','','','ҵ����֧���� ������Ŀ������֧��ת���ࣩ �ƽ���Ŀ��֧��ת���ࣩ��ҵ����֧����=ҽ����֧���� ��������-����֧�������У�ҽ����֧����=ҽ������ ��������֧����������-ҽ��֧��-������á�������Ŀ������֧��ת���ࣩ=������Ŀ֧����������-������Ŀ����֧�����ƽ���Ŀ��֧��ת���ࣩ=�ƽ���Ŀ����-�ƽ���Ŀ֧��','','','ZLZB_YY0093','','','0','1','','','','','','0','1','0','','1','0','1','')
	
end
go

/************No.65: ZLZB_YY0093******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0093******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0093' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0093'
go

/************No.65: ZLZB_YY0093******************HD_ZBMX_HZ_YS***ZLZB_YY0093******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0093')
begin
	print '����ָ��ZLZB_YY0093,��ָ��ZLZB_YY0093�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0093') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY0093'

end
go

/************No.65: ZLZB_YY0093******************HD_ZBMX_HZ***ZLZB_YY0093******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0093')
begin
	print '����ָ��ZLZB_YY0093,��ָ��ZLZB_YY0093�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��ZLZB_YY0094,��ָ��ZLZB_YY0094�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0094') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY0094','ZLZB01','ҽԺ��������ҽԺ������Կ�֧ԮҽԺ��ҽ������ҽԺ�����޲�����ԭҽԺ������������ռ��','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY0094','','','0','1','','','','','','0','1','0','','1','1','1','')
	
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
	print '����ָ��ZLZB_YY0094,��ָ��ZLZB_YY0094�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0094') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY0094'

end
go

/************No.66: ZLZB_YY0094******************HD_ZBMX_HZ***ZLZB_YY0094******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0094')
begin
	print '����ָ��ZLZB_YY0094,��ָ��ZLZB_YY0094�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0094') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY0094','ҽԺ��������ҽԺ������Կ�֧ԮҽԺ��ҽ������ҽԺ�����޲�����ԭҽԺ������������ռ��','','','','select ''ZLZB_YY0094'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY009402'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY009401'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY0094'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY009402'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY009401'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY009402,ZLZB_YY009401','','','','0','-1','-1','','','','','@ҽԺ��������ҽԺ������Կ�֧ԮҽԺ��ҽ������ҽԺ�����޲�����ԭҽԺ������������(ZLZB_YY009402)/@ҽԺ��������ҽԺ������Կ�֧ԮҽԺ��ҽ������ҽԺ����������(ZLZB_YY009401)','select ''ZLZB_YY0094'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY009402'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY009401'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.67: ZLZB_YY0095******************ZB_FACT_DIM_YS***ZLZB_YY0095******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0095' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0095'
go

/************No.67: ZLZB_YY0095******************ZBMX***ZLZB_YY0095******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY0095')
begin
	print '����ָ��ZLZB_YY0095,��ָ��ZLZB_YY0095�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0095') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY0095','ZLZB01','ҽԺסԺҽʦ�״βμ�ҽʦ�ʸ���ͨ����','0','100','4','%','1','','','0.00000','1','0','','','','','','ZLZB_YY0095','','','0','1','','','','','','0','1','0','','1','1','1','')
	
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
	print '����ָ��ZLZB_YY0095,��ָ��ZLZB_YY0095�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0095') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY0095'

end
go

/************No.67: ZLZB_YY0095******************HD_ZBMX_HZ***ZLZB_YY0095******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0095')
begin
	print '����ָ��ZLZB_YY0095,��ָ��ZLZB_YY0095�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0095') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY0095','ҽԺסԺҽʦ�״βμ�ҽʦ�ʸ���ͨ����','','','','select ''ZLZB_YY0095'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY009502'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY009501'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY0095'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY009502'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY009501'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY009502,ZLZB_YY009501','','','','0','-1','-1','','','','','@ҽԺסԺҽʦ�״βμ�ҽʦ�ʸ���ͨ������(ZLZB_YY009502)/@ҽԺסԺҽʦ�״βμ�ҽʦ�ʸ�������(ZLZB_YY009501)','select ''ZLZB_YY0095'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY009502'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY009501'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.68: ZLZB_YY0096******************ZB_FACT_DIM_YS***ZLZB_YY0096******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0096' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0096'
go

/************No.68: ZLZB_YY0096******************ZBMX***ZLZB_YY0096******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY0096')
begin
	print '����ָ��ZLZB_YY0096,��ָ��ZLZB_YY0096�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0096') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY0096','ZLZB01','�ٴ����̽�ʦ��ָ��ҽʦ���ܽ�����ѧ��ѵ�˴���','0','1','0','��','0','','','0.00000','1','0','','','','','','ZLZB_YY0096','','','0','1','','','','','','0','1','0','','1','0','1','')
	
end
go

/************No.68: ZLZB_YY0096******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0096******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0096' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0096'
go

/************No.68: ZLZB_YY0096******************HD_ZBMX_HZ_YS***ZLZB_YY0096******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0096')
begin
	print '����ָ��ZLZB_YY0096,��ָ��ZLZB_YY0096�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0096') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY0096'

end
go

/************No.68: ZLZB_YY0096******************HD_ZBMX_HZ***ZLZB_YY0096******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0096')
begin
	print '����ָ��ZLZB_YY0096,��ָ��ZLZB_YY0096�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��ZLZB_YY0097,��ָ��ZLZB_YY0097�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0097') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY0097','ZLZB01','�е�ҽѧ����������','0','1','0','��','0','','','0.00000','1','0','','','','','','ZLZB_YY0097','','','0','1','','','','','','0','1','0','','1','0','1','')
	
end
go

/************No.69: ZLZB_YY0097******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0097******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0097' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0097'
go

/************No.69: ZLZB_YY0097******************HD_ZBMX_HZ_YS***ZLZB_YY0097******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0097')
begin
	print '����ָ��ZLZB_YY0097,��ָ��ZLZB_YY0097�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0097') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY0097'

end
go

/************No.69: ZLZB_YY0097******************HD_ZBMX_HZ***ZLZB_YY0097******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0097')
begin
	print '����ָ��ZLZB_YY0097,��ָ��ZLZB_YY0097�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��ZLZB_YY0098,��ָ��ZLZB_YY0098�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0098') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY0098','ZLZB01','�����ѧ���ĵ�����','0','1','0','ƪ','0','','','0.00000','1','0','','','','','','ZLZB_YY0098','','','0','1','','','','','','0','1','0','','1','0','1','')
	
end
go

/************No.70: ZLZB_YY0098******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0098******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0098' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0098'
go

/************No.70: ZLZB_YY0098******************HD_ZBMX_HZ_YS***ZLZB_YY0098******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0098')
begin
	print '����ָ��ZLZB_YY0098,��ָ��ZLZB_YY0098�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0098') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY0098'

end
go

/************No.70: ZLZB_YY0098******************HD_ZBMX_HZ***ZLZB_YY0098******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0098')
begin
	print '����ָ��ZLZB_YY0098,��ָ��ZLZB_YY0098�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��ZLZB_YY0099,��ָ��ZLZB_YY0099�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0099') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY0099','ZLZB01','ÿ��������������Ա������Ŀ����','0','10000','4','��Ԫ','1','','','0.00000','1','0','','','','','','ZLZB_YY0099','','','0','1','','','','','','0','1','0','','1','1','1','')
	
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
	print '����ָ��ZLZB_YY0099,��ָ��ZLZB_YY0099�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0099') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY0099'

end
go

/************No.71: ZLZB_YY0099******************HD_ZBMX_HZ***ZLZB_YY0099******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0099')
begin
	print '����ָ��ZLZB_YY0099,��ָ��ZLZB_YY0099�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0099') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY0099','ÿ��������������Ա������Ŀ����','','','','select ''ZLZB_YY0099'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY009901'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY000401'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY0099'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY009901'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY009901,ZLZB_YY000401','','','','0','-1','-1','','','','','@������Ŀ����*100(ZLZB_YY009901)/@����������Ա����(ZLZB_YY000401)','select ''ZLZB_YY0099'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY009901'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.72: ZLZB_YY0100******************ZB_FACT_DIM_YS***ZLZB_YY0100******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0100' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0100'
go

/************No.72: ZLZB_YY0100******************ZBMX***ZLZB_YY0100******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY0100')
begin
	print '����ָ��ZLZB_YY0100,��ָ��ZLZB_YY0100�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0100') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY0100','ZLZB01','ÿ��������������Ա���гɹ�ת�����','0','10000','4','��Ԫ','1','','','0.00000','1','0','','','','','','ZLZB_YY0100','','','0','1','','','','','','0','1','0','','1','1','1','')
	
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
	print '����ָ��ZLZB_YY0100,��ָ��ZLZB_YY0100�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0100') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY0100'

end
go

/************No.72: ZLZB_YY0100******************HD_ZBMX_HZ***ZLZB_YY0100******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0100')
begin
	print '����ָ��ZLZB_YY0100,��ָ��ZLZB_YY0100�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0100') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_YY0100','ÿ��������������Ա���гɹ�ת�����','','','','select ''ZLZB_YY0100'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY010001'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_YY000401'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_YY0100'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY010001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_YY010001,ZLZB_YY000401','','','','0','-1','-1','','','','','@���гɹ�ת�����*100(ZLZB_YY010001)/@����������Ա����(ZLZB_YY000401)','select ''ZLZB_YY0100'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY010001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_YY000401'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.73: ZLZB_YY0101******************ZB_FACT_DIM_YS***ZLZB_YY0101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0101' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0101'
go

/************No.73: ZLZB_YY0101******************ZBMX***ZLZB_YY0101******************************/

if exists(select 1 from ZBMX where id='ZLZB_YY0101')
begin
	print '����ָ��ZLZB_YY0101,��ָ��ZLZB_YY0101�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY0101') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY0101','ZLZB01','���������ۺ����۵ȼ�','0','1','0','��','0','','','0.00000','1','0','','','','','','ZLZB_YY0101','','','0','1','','','','','','0','1','0','','1','0','1','')
	
end
go

/************No.73: ZLZB_YY0101******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0101' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0101'
go

/************No.73: ZLZB_YY0101******************HD_ZBMX_HZ_YS***ZLZB_YY0101******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0101')
begin
	print '����ָ��ZLZB_YY0101,��ָ��ZLZB_YY0101�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY0101') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY0101'

end
go

/************No.73: ZLZB_YY0101******************HD_ZBMX_HZ***ZLZB_YY0101******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY0101')
begin
	print '����ָ��ZLZB_YY0101,��ָ��ZLZB_YY0101�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��A32202,��ָ��A32202�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='A32202') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A32202','1','�ż�������ҽ�Ʒ�����','0','1','0','-','0','','','0.00000','1','0','','','','','','A32202','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.74: A32202******************Y_COLUMN_MAP_ZBFACT***A32202******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A32202' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A32202'
go

/************No.74: A32202******************HD_ZBMX_HZ_YS***A32202******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32202')
begin
	print '����ָ��A32202,��ָ��A32202�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32202') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb A32202'

end
go

/************No.74: A32202******************HD_ZBMX_HZ***A32202******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A32202')
begin
	print '����ָ��A32202,��ָ��A32202�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��A32203,��ָ��A32203�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='A32203') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A32203','1','סԺ����ҽ�Ʒ�����','0','1','0','-','0','','','0.00000','1','0','','','','','','A32203','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.75: A32203******************Y_COLUMN_MAP_ZBFACT***A32203******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A32203' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A32203'
go

/************No.75: A32203******************HD_ZBMX_HZ_YS***A32203******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32203')
begin
	print '����ָ��A32203,��ָ��A32203�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32203') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb A32203'

end
go

/************No.75: A32203******************HD_ZBMX_HZ***A32203******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A32203')
begin
	print '����ָ��A32203,��ָ��A32203�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��A323,��ָ��A323�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='A323') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A323','1','ҽ�Ʒ�����','0','1','0','-','0','','','0.00000','1','0','','','','','','A323','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.76: A323******************Y_COLUMN_MAP_ZBFACT***A323******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A323' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A323'
go

/************No.76: A323******************HD_ZBMX_HZ_YS***A323******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A323')
begin
	print '����ָ��A323,��ָ��A323�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A323') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb A323'

end
go

/************No.76: A323******************HD_ZBMX_HZ***A323******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A323')
begin
	print '����ָ��A323,��ָ��A323�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��A32301,��ָ��A32301�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='A32301') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A32301','1','�ż���ҽ�Ʒ�����','0','1','0','-','0','','','0.00000','1','0','','','','','','A32301','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.77: A32301******************Y_COLUMN_MAP_ZBFACT***A32301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A32301' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A32301'
go

/************No.77: A32301******************HD_ZBMX_HZ_YS***A32301******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32301')
begin
	print '����ָ��A32301,��ָ��A32301�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32301') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb A32301'

end
go

/************No.77: A32301******************HD_ZBMX_HZ***A32301******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A32301')
begin
	print '����ָ��A32301,��ָ��A32301�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��A32302,��ָ��A32302�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='A32302') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('A32302','1','סԺҽ�Ʒ�����','0','1','0','-','0','','','0.00000','1','0','','','','','','A32302','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.78: A32302******************Y_COLUMN_MAP_ZBFACT***A32302******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A32302' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A32302'
go

/************No.78: A32302******************HD_ZBMX_HZ_YS***A32302******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32302')
begin
	print '����ָ��A32302,��ָ��A32302�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='A32302') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb A32302'

end
go

/************No.78: A32302******************HD_ZBMX_HZ***A32302******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='A32302')
begin
	print '����ָ��A32302,��ָ��A32302�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��B10902,��ָ��B10902�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='B10902') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B10902','3','�ż�������ҽ�Ʒ�������','0','1','4','Ԫ','0','','','0.00000','1','0','','','','','','B10902','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.79: B10902******************Y_COLUMN_MAP_ZBFACT***B10902******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B10902' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B10902'
go

/************No.79: B10902******************HD_ZBMX_HZ_YS***B10902******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B10902')
begin
	print '����ָ��B10902,��ָ��B10902�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B10902') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb B10902'

end
go

/************No.79: B10902******************HD_ZBMX_HZ***B10902******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='B10902')
begin
	print '����ָ��B10902,��ָ��B10902�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��B10903,��ָ��B10903�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='B10903') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('B10903','3','סԺ����ҽ�Ʒ�������','0','1','4','Ԫ','0','','','0.00000','1','0','','','','','','B10903','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.80: B10903******************Y_COLUMN_MAP_ZBFACT***B10903******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B10903' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B10903'
go

/************No.80: B10903******************HD_ZBMX_HZ_YS***B10903******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B10903')
begin
	print '����ָ��B10903,��ָ��B10903�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='B10903') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb B10903'

end
go

/************No.80: B10903******************HD_ZBMX_HZ***B10903******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='B10903')
begin
	print '����ָ��B10903,��ָ��B10903�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��ZLZB_YY004101,��ָ��ZLZB_YY004101�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY004101') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY004101','ZLZB01','�ʲ��ܶ�','0','1','4','Ԫ','0','','','0.00000','1','0','','','','','','ZLZB_YY004101','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.81: ZLZB_YY004101******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY004101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY004101' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY004101'
go

/************No.81: ZLZB_YY004101******************HD_ZBMX_HZ_YS***ZLZB_YY004101******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY004101')
begin
	print '����ָ��ZLZB_YY004101,��ָ��ZLZB_YY004101�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY004101') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY004101'

end
go

/************No.81: ZLZB_YY004101******************HD_ZBMX_HZ***ZLZB_YY004101******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY004101')
begin
	print '����ָ��ZLZB_YY004101,��ָ��ZLZB_YY004101�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��ZLZB_YY004102,��ָ��ZLZB_YY004102�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY004102') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY004102','ZLZB01','��ծ�ܶ�','0','1','4','Ԫ','0','','','0.00000','1','0','','','','','','ZLZB_YY004102','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.82: ZLZB_YY004102******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY004102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY004102' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY004102'
go

/************No.82: ZLZB_YY004102******************HD_ZBMX_HZ_YS***ZLZB_YY004102******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY004102')
begin
	print '����ָ��ZLZB_YY004102,��ָ��ZLZB_YY004102�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY004102') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY004102'

end
go

/************No.82: ZLZB_YY004102******************HD_ZBMX_HZ***ZLZB_YY004102******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY004102')
begin
	print '����ָ��ZLZB_YY004102,��ָ��ZLZB_YY004102�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��ZLZB_YY009402,��ָ��ZLZB_YY009402�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY009402') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY009402','ZLZB01','ҽԺ��������ҽԺ������Կ�֧ԮҽԺ��ҽ������ҽԺ�����޲�����ԭҽԺ������������','0','1','0','��','0','','','0.00000','1','0','','','','','','ZLZB_YY009402','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.83: ZLZB_YY009402******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY009402******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY009402' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY009402'
go

/************No.83: ZLZB_YY009402******************HD_ZBMX_HZ_YS***ZLZB_YY009402******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009402')
begin
	print '����ָ��ZLZB_YY009402,��ָ��ZLZB_YY009402�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009402') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY009402'

end
go

/************No.83: ZLZB_YY009402******************HD_ZBMX_HZ***ZLZB_YY009402******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY009402')
begin
	print '����ָ��ZLZB_YY009402,��ָ��ZLZB_YY009402�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��ZLZB_YY009401,��ָ��ZLZB_YY009401�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY009401') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY009401','ZLZB01','ҽԺ��������ҽԺ������Կ�֧ԮҽԺ��ҽ������ҽԺ����������','0','1','0','��','0','','','0.00000','1','0','','','','','','ZLZB_YY009401','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.84: ZLZB_YY009401******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY009401******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY009401' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY009401'
go

/************No.84: ZLZB_YY009401******************HD_ZBMX_HZ_YS***ZLZB_YY009401******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009401')
begin
	print '����ָ��ZLZB_YY009401,��ָ��ZLZB_YY009401�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009401') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY009401'

end
go

/************No.84: ZLZB_YY009401******************HD_ZBMX_HZ***ZLZB_YY009401******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY009401')
begin
	print '����ָ��ZLZB_YY009401,��ָ��ZLZB_YY009401�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��ZLZB_YY009502,��ָ��ZLZB_YY009502�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY009502') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY009502','ZLZB01','ҽԺסԺҽʦ�״βμ�ҽʦ�ʸ���ͨ������','0','1','0','��','0','','','0.00000','1','0','','','','','','ZLZB_YY009502','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.85: ZLZB_YY009502******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY009502******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY009502' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY009502'
go

/************No.85: ZLZB_YY009502******************HD_ZBMX_HZ_YS***ZLZB_YY009502******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009502')
begin
	print '����ָ��ZLZB_YY009502,��ָ��ZLZB_YY009502�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009502') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY009502'

end
go

/************No.85: ZLZB_YY009502******************HD_ZBMX_HZ***ZLZB_YY009502******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY009502')
begin
	print '����ָ��ZLZB_YY009502,��ָ��ZLZB_YY009502�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��ZLZB_YY009501,��ָ��ZLZB_YY009501�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY009501') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY009501','ZLZB01','ҽԺסԺҽʦ�״βμ�ҽʦ�ʸ�������','0','1','0','��','0','','','0.00000','1','0','','','','','','ZLZB_YY009501','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.86: ZLZB_YY009501******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY009501******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY009501' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY009501'
go

/************No.86: ZLZB_YY009501******************HD_ZBMX_HZ_YS***ZLZB_YY009501******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009501')
begin
	print '����ָ��ZLZB_YY009501,��ָ��ZLZB_YY009501�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009501') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY009501'

end
go

/************No.86: ZLZB_YY009501******************HD_ZBMX_HZ***ZLZB_YY009501******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY009501')
begin
	print '����ָ��ZLZB_YY009501,��ָ��ZLZB_YY009501�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��ZLZB_YY009901,��ָ��ZLZB_YY009901�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY009901') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY009901','ZLZB01','������Ŀ����*100','0','1','4','Ԫ','0','','','0.00000','1','0','','','','','','ZLZB_YY009901','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.87: ZLZB_YY009901******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY009901******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY009901' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY009901'
go

/************No.87: ZLZB_YY009901******************HD_ZBMX_HZ_YS***ZLZB_YY009901******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009901')
begin
	print '����ָ��ZLZB_YY009901,��ָ��ZLZB_YY009901�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY009901') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY009901'

end
go

/************No.87: ZLZB_YY009901******************HD_ZBMX_HZ***ZLZB_YY009901******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY009901')
begin
	print '����ָ��ZLZB_YY009901,��ָ��ZLZB_YY009901�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��ZLZB_YY010001,��ָ��ZLZB_YY010001�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_YY010001') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('ZLZB_YY010001','ZLZB01','���гɹ�ת�����*100','0','1','4','Ԫ','0','','','0.00000','1','0','','','','','','ZLZB_YY010001','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.88: ZLZB_YY010001******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY010001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY010001' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY010001'
go

/************No.88: ZLZB_YY010001******************HD_ZBMX_HZ_YS***ZLZB_YY010001******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY010001')
begin
	print '����ָ��ZLZB_YY010001,��ָ��ZLZB_YY010001�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='ZLZB_YY010001') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb ZLZB_YY010001'

end
go

/************No.88: ZLZB_YY010001******************HD_ZBMX_HZ***ZLZB_YY010001******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_YY010001')
begin
	print '����ָ��ZLZB_YY010001,��ָ��ZLZB_YY010001�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��J10901,��ָ��J10901�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='J10901') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('J10901','11','����ҽ���豸�����������','0','1','0','��','0','','','0.00000','1','0','','','','','','J10901','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.89: J10901******************Y_COLUMN_MAP_ZBFACT***J10901******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='J10901' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb J10901'
go

/************No.89: J10901******************HD_ZBMX_HZ_YS***J10901******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='J10901')
begin
	print '����ָ��J10901,��ָ��J10901�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='J10901') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb J10901'

end
go

/************No.89: J10901******************HD_ZBMX_HZ***J10901******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='J10901')
begin
	print '����ָ��J10901,��ָ��J10901�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
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
	print '����ָ��J109,��ָ��J109�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='J109') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('J109','11','����ҽ���豸���������','0','1','0','��','0','','','0.00000','1','0','','','','','','J109','','','0','1','','','','','','0','1','0','','1','0','','')
	
end
go

/************No.90: J109******************Y_COLUMN_MAP_ZBFACT***J109******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='J109' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb J109'
go

/************No.90: J109******************HD_ZBMX_HZ_YS***J109******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='J109')
begin
	print '����ָ��J109,��ָ��J109�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='J109') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb J109'

end
go

/************No.90: J109******************HD_ZBMX_HZ***J109******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='J109')
begin
	print '����ָ��J109,��ָ��J109�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='J109') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb J109'

end
go

