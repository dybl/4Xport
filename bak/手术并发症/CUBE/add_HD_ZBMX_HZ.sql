/************No.1: ZLZB_AQ00650******************HD_ZBMX_HZ***ZLZB_AQ00650******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ00650')
begin
	print '����ָ��ZLZB_AQ00650,��ָ��ZLZB_AQ00650�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ00650') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_AQ00650','������������߳�Ժ�˴Σ�����18���꣩','select ''ZLZB_AQ00650'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,bfzkey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_AQ00650'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_AQ00650'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','11262','','','0','1','0','FACT_GZ_HZAQ_BFZ','rc','','timekey,yykey,kskey,bfzkey','','select ''ZLZB_AQ00650'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','0')
	
end
go

/************No.2: ZLZB_AQ0073******************HD_ZBMX_HZ***ZLZB_AQ0073******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0073')
begin
	print '����ָ��ZLZB_AQ0073,��ָ��ZLZB_AQ0073�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0073') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_AQ0073','���������󲢷�֢���������л����)������','','select timekey,yykey,kskey,sum(rc) fz,0 fm from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (14) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ssrc) fm from FACT_YY_SS_ZYSSYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey','','select ''ZLZB_AQ0073'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_BFZ008'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_AQ0073'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_BFZ008'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_BFZ008,D002','12483','','','0','-1','-1','','','','timekey,yykey,kskey','@�����������л������������(ZLZB_BFZ008)/@סԺ��������(D002)','select ''ZLZB_AQ0073'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_BFZ008'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','0')
	
end
go

/************No.3: ZLZB_AQ0082******************HD_ZBMX_HZ***ZLZB_AQ0082******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0082')
begin
	print '����ָ��ZLZB_AQ0082,��ָ��ZLZB_AQ0082�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0082') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_AQ0082','�������������˿��ѿ�������','','select timekey,yykey,kskey,sum(rc) fz,0 fm from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (5) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ssrc) fm from FACT_YY_SS_ZYSSYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey','','select ''ZLZB_AQ0082'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_AQ0083'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_AQ0082'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_AQ0083'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_AQ0083,D002','11413','','','0','-1','-1','','','','timekey,yykey,kskey','@�������������˿��ѿ���������(ZLZB_AQ0083)/@סԺ��������(D002)','select ''ZLZB_AQ0082'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_AQ0083'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','0')
	
end
go

/************No.4: ZLZB_AQ0083******************HD_ZBMX_HZ***ZLZB_AQ0083******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0083')
begin
	print '����ָ��ZLZB_AQ0083,��ָ��ZLZB_AQ0083�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0083') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_AQ0083','�������������˿��ѿ���������','select ''ZLZB_AQ0083'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (5) group by timekey,yykey,kskey,bfzkey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_AQ0083'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (5) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_AQ0083'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (5) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','10483','','','0','1','0','FACT_GZ_HZAQ_BFZ','rc','[{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"5\"}]','timekey,yykey,kskey,bfzkey','','select ''ZLZB_AQ0083'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (5) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','0')
	
end
go

/************No.5: ZLZB_AQ0084******************HD_ZBMX_HZ***ZLZB_AQ0084******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0084')
begin
	print '����ָ��ZLZB_AQ0084,��ָ��ZLZB_AQ0084�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0084') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_AQ0084','�������˨�������Ѫ˨������','','select timekey,yykey,kskey,sum(rc) fz,0 fm from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (10,11) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ssrc) fm from FACT_YY_SS_ZYSSYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey','','select ''ZLZB_AQ0084'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_AQ0085'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_AQ0084'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_AQ0085'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_AQ0085,D002','11414','','','0','-1','-1','','','','timekey,yykey,kskey','@�������˨�������Ѫ˨��������(ZLZB_AQ0085)/@סԺ��������(D002)','select ''ZLZB_AQ0084'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_AQ0085'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','0')
	
end
go

/************No.6: ZLZB_AQ0085******************HD_ZBMX_HZ***ZLZB_AQ0085******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0085')
begin
	print '����ָ��ZLZB_AQ0085,��ָ��ZLZB_AQ0085�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0085') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_AQ0085','�������˨�������Ѫ˨��������','select ''ZLZB_AQ0085'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (10,11) group by timekey,yykey,kskey,bfzkey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_AQ0085'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (10,11) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_AQ0085'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (10,11) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','10484','','','0','1','0','FACT_GZ_HZAQ_BFZ','rc','[{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"10,11\"}]','timekey,yykey,kskey,bfzkey','','select ''ZLZB_AQ0085'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (10,11) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','0')
	
end
go

/************No.7: ZLZB_AQ0086******************HD_ZBMX_HZ***ZLZB_AQ0086******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0086')
begin
	print '����ָ��ZLZB_AQ0086,��ָ��ZLZB_AQ0086�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0086') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_AQ0086','�������Ѫ��Ѫ�׷�����','','select timekey,yykey,kskey,sum(rc) fz,0 fm from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (12) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ssrc) fm from FACT_YY_SS_ZYSSYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey','','select ''ZLZB_AQ0086'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_AQ0087'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_AQ0086'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_AQ0087'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_AQ0087,D002','11415','','','0','-1','-1','','','','timekey,yykey,kskey','@�������Ѫ��Ѫ�׷�������(ZLZB_AQ0087)/@סԺ��������(D002)','select ''ZLZB_AQ0086'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_AQ0087'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','0')
	
end
go

/************No.8: ZLZB_AQ0087******************HD_ZBMX_HZ***ZLZB_AQ0087******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0087')
begin
	print '����ָ��ZLZB_AQ0087,��ָ��ZLZB_AQ0087�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0087') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_AQ0087','�������Ѫ��Ѫ�׷�������','select ''ZLZB_AQ0087'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (12) group by timekey,yykey,kskey,bfzkey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_AQ0087'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (12) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_AQ0087'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (12) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','10485','','','0','1','0','FACT_GZ_HZAQ_BFZ','rc','[{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"12\"}]','timekey,yykey,kskey,bfzkey','','select ''ZLZB_AQ0087'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (12) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','0')
	
end
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

/************No.11: ZLZB_AQ0092******************HD_ZBMX_HZ***ZLZB_AQ0092******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0092')
begin
	print '����ָ��ZLZB_AQ0092,��ָ��ZLZB_AQ0092�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0092') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_AQ0092','���������˥�߷�����','','select timekey,yykey,kskey,sum(rc) fz,0 fm from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (15) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ssrc) fm from FACT_YY_SS_ZYSSYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey','','select ''ZLZB_AQ0092'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_AQ0093'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_AQ0092'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_AQ0093'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_AQ0093,D002','11417','','','0','-1','-1','','','','timekey,yykey,kskey','@���������˥�߷�������(ZLZB_AQ0093)/@סԺ��������(D002)','select ''ZLZB_AQ0092'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_AQ0093'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','0')
	
end
go

/************No.12: ZLZB_AQ0093******************HD_ZBMX_HZ***ZLZB_AQ0093******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0093')
begin
	print '����ָ��ZLZB_AQ0093,��ָ��ZLZB_AQ0093�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0093') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_AQ0093','���������˥�߷�������','select ''ZLZB_AQ0093'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (15) group by timekey,yykey,kskey,bfzkey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_AQ0093'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (15) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_AQ0093'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (15) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','10489','','','0','1','0','FACT_GZ_HZAQ_BFZ','rc','[{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"15\"}]','timekey,yykey,kskey,bfzkey','','select ''ZLZB_AQ0093'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (15) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','0')
	
end
go

/************No.13: ZLZB_AQ0094******************HD_ZBMX_HZ***ZLZB_AQ0094******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0094')
begin
	print '����ָ��ZLZB_AQ0094,��ָ��ZLZB_AQ0094�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0094') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_AQ0094','�������Ѫ֢������','','select timekey,yykey,kskey,sum(rc) fz,0 fm from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (16) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ssrc) fm from FACT_YY_SS_ZYSSYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey','','select ''ZLZB_AQ0094'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_AQ0095'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_AQ0094'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_AQ0095'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_AQ0095,D002','11418','','','0','-1','-1','','','','timekey,yykey,kskey','@�������Ѫ֢��������(ZLZB_AQ0095)/@סԺ��������(D002)','select ''ZLZB_AQ0094'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_AQ0095'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','0')
	
end
go

/************No.14: ZLZB_AQ0095******************HD_ZBMX_HZ***ZLZB_AQ0095******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0095')
begin
	print '����ָ��ZLZB_AQ0095,��ָ��ZLZB_AQ0095�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0095') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_AQ0095','�������Ѫ֢��������','select ''ZLZB_AQ0095'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (16) group by timekey,yykey,kskey,bfzkey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_AQ0095'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (16) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_AQ0095'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (16) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','10490','','','0','1','0','FACT_GZ_HZAQ_BFZ','rc','[{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"16\"}]','timekey,yykey,kskey,bfzkey','','select ''ZLZB_AQ0095'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (16) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','0')
	
end
go

/************No.15: ZLZB_AQ0105******************HD_ZBMX_HZ***ZLZB_AQ0105******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0105')
begin
	print '����ָ��ZLZB_AQ0105,��ָ��ZLZB_AQ0105�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0105') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_AQ0105','������Ѫ˨������','','select timekey,yykey,kskey,sum(rc) fz,0 fm from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (11) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ssrc) fm from FACT_YY_SS_ZYSSYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey','','select ''ZLZB_AQ0105'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_BFZ002'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_AQ0105'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_BFZ002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_BFZ002,D002','12482','','','0','-1','-1','','','','timekey,yykey,kskey','@�����������Ѫ˨��������(ZLZB_BFZ002)/@סԺ��������(D002)','select ''ZLZB_AQ0105'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_BFZ002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','0')
	
end
go

/************No.16: ZLZB_AQ0106******************HD_ZBMX_HZ***ZLZB_AQ0106******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0106')
begin
	print '����ָ��ZLZB_AQ0106,��ָ��ZLZB_AQ0106�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0106') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_AQ0106','�������������','','select timekey,yykey,kskey,sum(rc) fz,0 fm from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (18) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ssrc) fm from FACT_YY_SS_ZYSSYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey','','select ''ZLZB_AQ0106'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_BFZ006'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''ZLZB_AQ0106'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_BFZ006'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','ZLZB_BFZ006,D002','12481','','','0','-1','-1','','','','timekey,yykey,kskey','@�����������������(ZLZB_BFZ006)/@סԺ��������(D002)','select ''ZLZB_AQ0106'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_BFZ006'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','0')
	
end
go

/************No.17: ZLZB_BFZ001******************HD_ZBMX_HZ***ZLZB_BFZ001******************************/

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

/************No.18: ZLZB_BFZ0018******************HD_ZBMX_HZ***ZLZB_BFZ0018******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ0018')
begin
	print '����ָ��ZLZB_BFZ0018,��ָ��ZLZB_BFZ0018�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ0018') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_BFZ0018','�����󲢷�֢�����˴�','select ''ZLZB_BFZ0018'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,bfzkey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_BFZ0018'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_BFZ0018'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','11278','','','0','1','0','FACT_GZ_HZAQ_BFZ','rc','','timekey,yykey,kskey,bfzkey','','select ''ZLZB_BFZ0018'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','0')
	
end
go

/************No.19: ZLZB_BFZ001801******************HD_ZBMX_HZ***ZLZB_BFZ001801******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ001801')
begin
	print '����ָ��ZLZB_BFZ001801,��ָ��ZLZB_BFZ001801�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ001801') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_BFZ001801','�����󲢷�֢�����������˴�','select ''ZLZB_BFZ001801'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and swbz in (1) group by timekey,yykey,kskey,bfzkey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_BFZ001801'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and swbz in (1) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_BFZ001801'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and swbz in (1) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','11280','','','0','1','0','FACT_GZ_HZAQ_BFZ','rc','[{\"dim_key\":\"swbz\",\"relation\":\"0\",\"caliber\":\"1\"}]','timekey,yykey,kskey,bfzkey','','select ''ZLZB_BFZ001801'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and swbz in (1) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','0')
	
end
go

/************No.20: ZLZB_BFZ002******************HD_ZBMX_HZ***ZLZB_BFZ002******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ002')
begin
	print '����ָ��ZLZB_BFZ002,��ָ��ZLZB_BFZ002�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ002') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_BFZ002','�����������Ѫ˨��������','select ''ZLZB_BFZ002'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (11) group by timekey,yykey,kskey,bfzkey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_BFZ002'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (11) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_BFZ002'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (11) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','8408','','','0','1','0','FACT_GZ_HZAQ_BFZ','rc','[{\"dim_key\":\"zqssbz\",\"relation\":\"0\",\"caliber\":\"1\"},{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"11\"}]','timekey,yykey,kskey,bfzkey','','select ''ZLZB_BFZ002'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (11) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','0')
	
end
go

/************No.21: ZLZB_BFZ003******************HD_ZBMX_HZ***ZLZB_BFZ003******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ003')
begin
	print '����ָ��ZLZB_BFZ003,��ָ��ZLZB_BFZ003�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ003') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_BFZ003','�����������Ѫ֢����','select ''ZLZB_BFZ003'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (16) group by timekey,yykey,kskey,bfzkey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_BFZ003'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (16) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_BFZ003'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (16) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','8409','','','0','1','0','FACT_GZ_HZAQ_BFZ','rc','[{\"dim_key\":\"zqssbz\",\"relation\":\"0\",\"caliber\":\"1\"},{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"16\"}]','timekey,yykey,kskey,bfzkey','','select ''ZLZB_BFZ003'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (16) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','0')
	
end
go

/************No.22: ZLZB_BFZ004******************HD_ZBMX_HZ***ZLZB_BFZ004******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ004')
begin
	print '����ָ��ZLZB_BFZ004,��ָ��ZLZB_BFZ004�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ004') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_BFZ004','�����������Ѫ����Ѫ������','select ''ZLZB_BFZ004'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (12) group by timekey,yykey,kskey,bfzkey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_BFZ004'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (12) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_BFZ004'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (12) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','8410','','','0','1','0','FACT_GZ_HZAQ_BFZ','rc','[{\"dim_key\":\"zqssbz\",\"relation\":\"0\",\"caliber\":\"1\"},{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"12\"}]','timekey,yykey,kskey,bfzkey','','select ''ZLZB_BFZ004'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (12) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','0')
	
end
go

/************No.23: ZLZB_BFZ005******************HD_ZBMX_HZ***ZLZB_BFZ005******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ005')
begin
	print '����ָ��ZLZB_BFZ005,��ָ��ZLZB_BFZ005�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ005') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_BFZ005','�����������˿��ѿ�����','select ''ZLZB_BFZ005'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (5) group by timekey,yykey,kskey,bfzkey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_BFZ005'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (5) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_BFZ005'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (5) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','8411','','','0','1','0','FACT_GZ_HZAQ_BFZ','rc','[{\"dim_key\":\"zqssbz\",\"relation\":\"0\",\"caliber\":\"1\"},{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"5\"}]','timekey,yykey,kskey,bfzkey','','select ''ZLZB_BFZ005'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (5) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','0')
	
end
go

/************No.24: ZLZB_BFZ006******************HD_ZBMX_HZ***ZLZB_BFZ006******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ006')
begin
	print '����ָ��ZLZB_BFZ006,��ָ��ZLZB_BFZ006�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ006') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_BFZ006','�����������������','select ''ZLZB_BFZ006'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (18) group by timekey,yykey,kskey,bfzkey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_BFZ006'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (18) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_BFZ006'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (18) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','8412','','','0','1','0','FACT_GZ_HZAQ_BFZ','rc','[{\"dim_key\":\"zqssbz\",\"relation\":\"0\",\"caliber\":\"1\"},{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"18\"}]','timekey,yykey,kskey,bfzkey','','select ''ZLZB_BFZ006'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (18) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','0')
	
end
go

/************No.25: ZLZB_BFZ007******************HD_ZBMX_HZ***ZLZB_BFZ007******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ007')
begin
	print '����ָ��ZLZB_BFZ007,��ָ��ZLZB_BFZ007�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ007') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_BFZ007','�������������˥������','select ''ZLZB_BFZ007'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (15) group by timekey,yykey,kskey,bfzkey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_BFZ007'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (15) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_BFZ007'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (15) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','8413','','','0','1','0','FACT_GZ_HZAQ_BFZ','rc','[{\"dim_key\":\"zqssbz\",\"relation\":\"0\",\"caliber\":\"1\"},{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"15\"}]','timekey,yykey,kskey,bfzkey','','select ''ZLZB_BFZ007'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (15) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','0')
	
end
go

/************No.26: ZLZB_BFZ008******************HD_ZBMX_HZ***ZLZB_BFZ008******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ008')
begin
	print '����ָ��ZLZB_BFZ008,��ָ��ZLZB_BFZ008�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ008') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_BFZ008','�����������л������������','select ''ZLZB_BFZ008'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (14) group by timekey,yykey,kskey,bfzkey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_BFZ008'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (14) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_BFZ008'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (14) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','8414','','','0','1','0','FACT_GZ_HZAQ_BFZ','rc','[{\"dim_key\":\"zqssbz\",\"relation\":\"0\",\"caliber\":\"1\"},{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"14\"}]','timekey,yykey,kskey,bfzkey','','select ''ZLZB_BFZ008'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (14) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','0')
	
end
go

/************No.27: ZLZB_BFZ009******************HD_ZBMX_HZ***ZLZB_BFZ009******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ009')
begin
	print '����ָ��ZLZB_BFZ009,��ָ��ZLZB_BFZ009�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ009') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('ZLZB_BFZ009','����������������֢����','select ''ZLZB_BFZ009'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (19) group by timekey,yykey,kskey,bfzkey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_BFZ009'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (19) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''ZLZB_BFZ009'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (19) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','8415','','','0','1','0','FACT_GZ_HZAQ_BFZ','rc','[{\"dim_key\":\"zqssbz\",\"relation\":\"0\",\"caliber\":\"1\"},{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"19\"}]','timekey,yykey,kskey,bfzkey','','select ''ZLZB_BFZ009'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (19) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','0')
	
end
go


/*********No.1: ZLZB_AQ00650******HD_ZBMX_HZ***ZLZB_AQ00650*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ00650')
begin
update HD_ZBMX_HZ set
condition=''
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='rc'
,fact_table='FACT_GZ_HZAQ_BFZ'
,gspz=''
,hqsql_text='select ''ZLZB_AQ00650'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='0'
,kxwdz='timekey,yykey,kskey,bfzkey'
,memo=''
,orderno='11262'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,bfzkey'
,sql_start='select ''ZLZB_AQ00650'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_AQ00650'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_AQ00650'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='1'
,zb_id='ZLZB_AQ00650'
,zb_name='������������߳�Ժ�˴Σ�����18���꣩'
,zbzt='0'
 where zb_id='ZLZB_AQ00650'
end
go

/*********No.2: ZLZB_AQ0073******HD_ZBMX_HZ***ZLZB_AQ0073*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0073')
begin
update HD_ZBMX_HZ set
condition=''
,dependindex='ZLZB_BFZ008,D002'
,dlzgs=''
,dylx='0'
,fact_dlz=''
,fact_table=''
,gspz='@�����������л������������(ZLZB_BFZ008)/@סԺ��������(D002)'
,hqsql_text='select ''ZLZB_AQ0073'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_BFZ008'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey'
,jlzt='1'
,kslx='-1'
,kxwdz='timekey,yykey,kskey'
,memo=''
,orderno='12483'
,proc_name=''
,sql_end=''
,sql_middle='select timekey,yykey,kskey,sum(rc) fz,0 fm from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (14) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ssrc) fm from FACT_YY_SS_ZYSSYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey'
,sql_start=''
,sql_text='select ''ZLZB_AQ0073'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_BFZ008'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey'
,sql_text_first=''
,tqsql_text='select ''ZLZB_AQ0073'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_BFZ008'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey'
,ysfs='-1'
,zb_id='ZLZB_AQ0073'
,zb_name='���������󲢷�֢���������л����)������'
,zbzt='0'
 where zb_id='ZLZB_AQ0073'
end
go

/*********No.3: ZLZB_AQ0082******HD_ZBMX_HZ***ZLZB_AQ0082*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0082')
begin
update HD_ZBMX_HZ set
condition=''
,dependindex='ZLZB_AQ0083,D002'
,dlzgs=''
,dylx='0'
,fact_dlz=''
,fact_table=''
,gspz='@�������������˿��ѿ���������(ZLZB_AQ0083)/@סԺ��������(D002)'
,hqsql_text='select ''ZLZB_AQ0082'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_AQ0083'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey'
,jlzt='1'
,kslx='-1'
,kxwdz='timekey,yykey,kskey'
,memo=''
,orderno='11413'
,proc_name=''
,sql_end=''
,sql_middle='select timekey,yykey,kskey,sum(rc) fz,0 fm from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (5) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ssrc) fm from FACT_YY_SS_ZYSSYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey'
,sql_start=''
,sql_text='select ''ZLZB_AQ0082'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_AQ0083'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey'
,sql_text_first=''
,tqsql_text='select ''ZLZB_AQ0082'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_AQ0083'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey'
,ysfs='-1'
,zb_id='ZLZB_AQ0082'
,zb_name='�������������˿��ѿ�������'
,zbzt='0'
 where zb_id='ZLZB_AQ0082'
end
go

/*********No.4: ZLZB_AQ0083******HD_ZBMX_HZ***ZLZB_AQ0083*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0083')
begin
update HD_ZBMX_HZ set
condition='[{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"5\"}]'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='rc'
,fact_table='FACT_GZ_HZAQ_BFZ'
,gspz=''
,hqsql_text='select ''ZLZB_AQ0083'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (5) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='0'
,kxwdz='timekey,yykey,kskey,bfzkey'
,memo=''
,orderno='10483'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (5) group by timekey,yykey,kskey,bfzkey'
,sql_start='select ''ZLZB_AQ0083'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_AQ0083'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (5) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_AQ0083'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (5) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='1'
,zb_id='ZLZB_AQ0083'
,zb_name='�������������˿��ѿ���������'
,zbzt='0'
 where zb_id='ZLZB_AQ0083'
end
go

/*********No.5: ZLZB_AQ0084******HD_ZBMX_HZ***ZLZB_AQ0084*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0084')
begin
update HD_ZBMX_HZ set
condition=''
,dependindex='ZLZB_AQ0085,D002'
,dlzgs=''
,dylx='0'
,fact_dlz=''
,fact_table=''
,gspz='@�������˨�������Ѫ˨��������(ZLZB_AQ0085)/@סԺ��������(D002)'
,hqsql_text='select ''ZLZB_AQ0084'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_AQ0085'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey'
,jlzt='1'
,kslx='-1'
,kxwdz='timekey,yykey,kskey'
,memo=''
,orderno='11414'
,proc_name=''
,sql_end=''
,sql_middle='select timekey,yykey,kskey,sum(rc) fz,0 fm from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (10,11) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ssrc) fm from FACT_YY_SS_ZYSSYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey'
,sql_start=''
,sql_text='select ''ZLZB_AQ0084'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_AQ0085'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey'
,sql_text_first=''
,tqsql_text='select ''ZLZB_AQ0084'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_AQ0085'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey'
,ysfs='-1'
,zb_id='ZLZB_AQ0084'
,zb_name='�������˨�������Ѫ˨������'
,zbzt='0'
 where zb_id='ZLZB_AQ0084'
end
go

/*********No.6: ZLZB_AQ0085******HD_ZBMX_HZ***ZLZB_AQ0085*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0085')
begin
update HD_ZBMX_HZ set
condition='[{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"10,11\"}]'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='rc'
,fact_table='FACT_GZ_HZAQ_BFZ'
,gspz=''
,hqsql_text='select ''ZLZB_AQ0085'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (10,11) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='0'
,kxwdz='timekey,yykey,kskey,bfzkey'
,memo=''
,orderno='10484'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (10,11) group by timekey,yykey,kskey,bfzkey'
,sql_start='select ''ZLZB_AQ0085'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_AQ0085'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (10,11) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_AQ0085'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (10,11) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='1'
,zb_id='ZLZB_AQ0085'
,zb_name='�������˨�������Ѫ˨��������'
,zbzt='0'
 where zb_id='ZLZB_AQ0085'
end
go

/*********No.7: ZLZB_AQ0086******HD_ZBMX_HZ***ZLZB_AQ0086*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0086')
begin
update HD_ZBMX_HZ set
condition=''
,dependindex='ZLZB_AQ0087,D002'
,dlzgs=''
,dylx='0'
,fact_dlz=''
,fact_table=''
,gspz='@�������Ѫ��Ѫ�׷�������(ZLZB_AQ0087)/@סԺ��������(D002)'
,hqsql_text='select ''ZLZB_AQ0086'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_AQ0087'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey'
,jlzt='1'
,kslx='-1'
,kxwdz='timekey,yykey,kskey'
,memo=''
,orderno='11415'
,proc_name=''
,sql_end=''
,sql_middle='select timekey,yykey,kskey,sum(rc) fz,0 fm from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (12) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ssrc) fm from FACT_YY_SS_ZYSSYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey'
,sql_start=''
,sql_text='select ''ZLZB_AQ0086'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_AQ0087'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey'
,sql_text_first=''
,tqsql_text='select ''ZLZB_AQ0086'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_AQ0087'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey'
,ysfs='-1'
,zb_id='ZLZB_AQ0086'
,zb_name='�������Ѫ��Ѫ�׷�����'
,zbzt='0'
 where zb_id='ZLZB_AQ0086'
end
go

/*********No.8: ZLZB_AQ0087******HD_ZBMX_HZ***ZLZB_AQ0087*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0087')
begin
update HD_ZBMX_HZ set
condition='[{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"12\"}]'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='rc'
,fact_table='FACT_GZ_HZAQ_BFZ'
,gspz=''
,hqsql_text='select ''ZLZB_AQ0087'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (12) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='0'
,kxwdz='timekey,yykey,kskey,bfzkey'
,memo=''
,orderno='10485'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (12) group by timekey,yykey,kskey,bfzkey'
,sql_start='select ''ZLZB_AQ0087'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_AQ0087'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (12) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_AQ0087'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (12) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='1'
,zb_id='ZLZB_AQ0087'
,zb_name='�������Ѫ��Ѫ�׷�������'
,zbzt='0'
 where zb_id='ZLZB_AQ0087'
end
go

/*********No.9: ZLZB_AQ0090******HD_ZBMX_HZ***ZLZB_AQ0090*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0090')
begin
update HD_ZBMX_HZ set
condition=''
,dependindex='ZLZB_AQ0091,D002'
,dlzgs=''
,dylx='0'
,fact_dlz=''
,fact_table=''
,gspz='@�������������л���ҷ�������(ZLZB_AQ0091)/@סԺ��������(D002)'
,hqsql_text='select ''ZLZB_AQ0090'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_AQ0091'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey'
,jlzt='1'
,kslx='-1'
,kxwdz='timekey,yykey,kskey'
,memo=''
,orderno='11416'
,proc_name=''
,sql_end=''
,sql_middle='select timekey,yykey,kskey,sum(rc) fz,0 fm from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (14) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ssrc) fm from FACT_YY_SS_ZYSSYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey'
,sql_start=''
,sql_text='select ''ZLZB_AQ0090'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_AQ0091'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey'
,sql_text_first=''
,tqsql_text='select ''ZLZB_AQ0090'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_AQ0091'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey'
,ysfs='-1'
,zb_id='ZLZB_AQ0090'
,zb_name='�������������л���ҷ�����'
,zbzt='0'
 where zb_id='ZLZB_AQ0090'
end
go

/*********No.10: ZLZB_AQ0091******HD_ZBMX_HZ***ZLZB_AQ0091*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0091')
begin
update HD_ZBMX_HZ set
condition='[{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"14\"}]'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='rc'
,fact_table='FACT_GZ_HZAQ_BFZ'
,gspz=''
,hqsql_text='select ''ZLZB_AQ0091'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (14) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='0'
,kxwdz='timekey,yykey,kskey,bfzkey'
,memo=''
,orderno='10488'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (14) group by timekey,yykey,kskey,bfzkey'
,sql_start='select ''ZLZB_AQ0091'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_AQ0091'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (14) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_AQ0091'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (14) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='1'
,zb_id='ZLZB_AQ0091'
,zb_name='�������������л���ҷ�������'
,zbzt='0'
 where zb_id='ZLZB_AQ0091'
end
go

/*********No.11: ZLZB_AQ0092******HD_ZBMX_HZ***ZLZB_AQ0092*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0092')
begin
update HD_ZBMX_HZ set
condition=''
,dependindex='ZLZB_AQ0093,D002'
,dlzgs=''
,dylx='0'
,fact_dlz=''
,fact_table=''
,gspz='@���������˥�߷�������(ZLZB_AQ0093)/@סԺ��������(D002)'
,hqsql_text='select ''ZLZB_AQ0092'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_AQ0093'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey'
,jlzt='1'
,kslx='-1'
,kxwdz='timekey,yykey,kskey'
,memo=''
,orderno='11417'
,proc_name=''
,sql_end=''
,sql_middle='select timekey,yykey,kskey,sum(rc) fz,0 fm from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (15) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ssrc) fm from FACT_YY_SS_ZYSSYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey'
,sql_start=''
,sql_text='select ''ZLZB_AQ0092'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_AQ0093'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey'
,sql_text_first=''
,tqsql_text='select ''ZLZB_AQ0092'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_AQ0093'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey'
,ysfs='-1'
,zb_id='ZLZB_AQ0092'
,zb_name='���������˥�߷�����'
,zbzt='0'
 where zb_id='ZLZB_AQ0092'
end
go

/*********No.12: ZLZB_AQ0093******HD_ZBMX_HZ***ZLZB_AQ0093*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0093')
begin
update HD_ZBMX_HZ set
condition='[{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"15\"}]'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='rc'
,fact_table='FACT_GZ_HZAQ_BFZ'
,gspz=''
,hqsql_text='select ''ZLZB_AQ0093'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (15) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='0'
,kxwdz='timekey,yykey,kskey,bfzkey'
,memo=''
,orderno='10489'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (15) group by timekey,yykey,kskey,bfzkey'
,sql_start='select ''ZLZB_AQ0093'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_AQ0093'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (15) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_AQ0093'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (15) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='1'
,zb_id='ZLZB_AQ0093'
,zb_name='���������˥�߷�������'
,zbzt='0'
 where zb_id='ZLZB_AQ0093'
end
go

/*********No.13: ZLZB_AQ0094******HD_ZBMX_HZ***ZLZB_AQ0094*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0094')
begin
update HD_ZBMX_HZ set
condition=''
,dependindex='ZLZB_AQ0095,D002'
,dlzgs=''
,dylx='0'
,fact_dlz=''
,fact_table=''
,gspz='@�������Ѫ֢��������(ZLZB_AQ0095)/@סԺ��������(D002)'
,hqsql_text='select ''ZLZB_AQ0094'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_AQ0095'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey'
,jlzt='1'
,kslx='-1'
,kxwdz='timekey,yykey,kskey'
,memo=''
,orderno='11418'
,proc_name=''
,sql_end=''
,sql_middle='select timekey,yykey,kskey,sum(rc) fz,0 fm from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (16) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ssrc) fm from FACT_YY_SS_ZYSSYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey'
,sql_start=''
,sql_text='select ''ZLZB_AQ0094'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_AQ0095'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey'
,sql_text_first=''
,tqsql_text='select ''ZLZB_AQ0094'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_AQ0095'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey'
,ysfs='-1'
,zb_id='ZLZB_AQ0094'
,zb_name='�������Ѫ֢������'
,zbzt='0'
 where zb_id='ZLZB_AQ0094'
end
go

/*********No.14: ZLZB_AQ0095******HD_ZBMX_HZ***ZLZB_AQ0095*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0095')
begin
update HD_ZBMX_HZ set
condition='[{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"16\"}]'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='rc'
,fact_table='FACT_GZ_HZAQ_BFZ'
,gspz=''
,hqsql_text='select ''ZLZB_AQ0095'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (16) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='0'
,kxwdz='timekey,yykey,kskey,bfzkey'
,memo=''
,orderno='10490'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (16) group by timekey,yykey,kskey,bfzkey'
,sql_start='select ''ZLZB_AQ0095'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_AQ0095'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (16) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_AQ0095'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and bfzkey in (16) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='1'
,zb_id='ZLZB_AQ0095'
,zb_name='�������Ѫ֢��������'
,zbzt='0'
 where zb_id='ZLZB_AQ0095'
end
go

/*********No.15: ZLZB_AQ0105******HD_ZBMX_HZ***ZLZB_AQ0105*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0105')
begin
update HD_ZBMX_HZ set
condition=''
,dependindex='ZLZB_BFZ002,D002'
,dlzgs=''
,dylx='0'
,fact_dlz=''
,fact_table=''
,gspz='@�����������Ѫ˨��������(ZLZB_BFZ002)/@סԺ��������(D002)'
,hqsql_text='select ''ZLZB_AQ0105'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_BFZ002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey'
,jlzt='1'
,kslx='-1'
,kxwdz='timekey,yykey,kskey'
,memo=''
,orderno='12482'
,proc_name=''
,sql_end=''
,sql_middle='select timekey,yykey,kskey,sum(rc) fz,0 fm from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (11) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ssrc) fm from FACT_YY_SS_ZYSSYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey'
,sql_start=''
,sql_text='select ''ZLZB_AQ0105'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_BFZ002'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey'
,sql_text_first=''
,tqsql_text='select ''ZLZB_AQ0105'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_BFZ002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey'
,ysfs='-1'
,zb_id='ZLZB_AQ0105'
,zb_name='������Ѫ˨������'
,zbzt='0'
 where zb_id='ZLZB_AQ0105'
end
go

/*********No.16: ZLZB_AQ0106******HD_ZBMX_HZ***ZLZB_AQ0106*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_AQ0106')
begin
update HD_ZBMX_HZ set
condition=''
,dependindex='ZLZB_BFZ006,D002'
,dlzgs=''
,dylx='0'
,fact_dlz=''
,fact_table=''
,gspz='@�����������������(ZLZB_BFZ006)/@סԺ��������(D002)'
,hqsql_text='select ''ZLZB_AQ0106'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''ZLZB_BFZ006'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey'
,jlzt='1'
,kslx='-1'
,kxwdz='timekey,yykey,kskey'
,memo=''
,orderno='12481'
,proc_name=''
,sql_end=''
,sql_middle='select timekey,yykey,kskey,sum(rc) fz,0 fm from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (18) group by timekey,yykey,kskey union all select timekey,yykey,kskey,0 fz,sum(ssrc) fm from FACT_YY_SS_ZYSSYWLFX a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey'
,sql_start=''
,sql_text='select ''ZLZB_AQ0106'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''ZLZB_BFZ006'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''D002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey'
,sql_text_first=''
,tqsql_text='select ''ZLZB_AQ0106'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''ZLZB_BFZ006'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''D002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey'
,ysfs='-1'
,zb_id='ZLZB_AQ0106'
,zb_name='�������������'
,zbzt='0'
 where zb_id='ZLZB_AQ0106'
end
go

/*********No.17: ZLZB_BFZ001******HD_ZBMX_HZ***ZLZB_BFZ001*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ001')
begin
update HD_ZBMX_HZ set
condition='[{\"dim_key\":\"zqssbz\",\"relation\":\"0\",\"caliber\":\"1\"},{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"10\"}]'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='rc'
,fact_table='FACT_GZ_HZAQ_BFZ'
,gspz=''
,hqsql_text='select ''ZLZB_BFZ001'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (10) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='0'
,kxwdz='timekey,yykey,kskey,bfzkey'
,memo=''
,orderno='8407'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (10) group by timekey,yykey,kskey,bfzkey'
,sql_start='select ''ZLZB_BFZ001'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_BFZ001'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (10) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_BFZ001'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (10) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='1'
,zb_id='ZLZB_BFZ001'
,zb_name='�����������˨������'
,zbzt='0'
 where zb_id='ZLZB_BFZ001'
end
go

/*********No.18: ZLZB_BFZ0018******HD_ZBMX_HZ***ZLZB_BFZ0018*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ0018')
begin
update HD_ZBMX_HZ set
condition=''
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='rc'
,fact_table='FACT_GZ_HZAQ_BFZ'
,gspz=''
,hqsql_text='select ''ZLZB_BFZ0018'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='0'
,kxwdz='timekey,yykey,kskey,bfzkey'
,memo=''
,orderno='11278'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,bfzkey'
,sql_start='select ''ZLZB_BFZ0018'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_BFZ0018'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_BFZ0018'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='1'
,zb_id='ZLZB_BFZ0018'
,zb_name='�����󲢷�֢�����˴�'
,zbzt='0'
 where zb_id='ZLZB_BFZ0018'
end
go

/*********No.19: ZLZB_BFZ001801******HD_ZBMX_HZ***ZLZB_BFZ001801*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ001801')
begin
update HD_ZBMX_HZ set
condition='[{\"dim_key\":\"swbz\",\"relation\":\"0\",\"caliber\":\"1\"}]'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='rc'
,fact_table='FACT_GZ_HZAQ_BFZ'
,gspz=''
,hqsql_text='select ''ZLZB_BFZ001801'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and swbz in (1) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='0'
,kxwdz='timekey,yykey,kskey,bfzkey'
,memo=''
,orderno='11280'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and swbz in (1) group by timekey,yykey,kskey,bfzkey'
,sql_start='select ''ZLZB_BFZ001801'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_BFZ001801'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and swbz in (1) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_BFZ001801'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and swbz in (1) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='1'
,zb_id='ZLZB_BFZ001801'
,zb_name='�����󲢷�֢�����������˴�'
,zbzt='0'
 where zb_id='ZLZB_BFZ001801'
end
go

/*********No.20: ZLZB_BFZ002******HD_ZBMX_HZ***ZLZB_BFZ002*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ002')
begin
update HD_ZBMX_HZ set
condition='[{\"dim_key\":\"zqssbz\",\"relation\":\"0\",\"caliber\":\"1\"},{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"11\"}]'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='rc'
,fact_table='FACT_GZ_HZAQ_BFZ'
,gspz=''
,hqsql_text='select ''ZLZB_BFZ002'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (11) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='0'
,kxwdz='timekey,yykey,kskey,bfzkey'
,memo=''
,orderno='8408'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (11) group by timekey,yykey,kskey,bfzkey'
,sql_start='select ''ZLZB_BFZ002'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_BFZ002'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (11) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_BFZ002'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (11) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='1'
,zb_id='ZLZB_BFZ002'
,zb_name='�����������Ѫ˨��������'
,zbzt='0'
 where zb_id='ZLZB_BFZ002'
end
go

/*********No.21: ZLZB_BFZ003******HD_ZBMX_HZ***ZLZB_BFZ003*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ003')
begin
update HD_ZBMX_HZ set
condition='[{\"dim_key\":\"zqssbz\",\"relation\":\"0\",\"caliber\":\"1\"},{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"16\"}]'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='rc'
,fact_table='FACT_GZ_HZAQ_BFZ'
,gspz=''
,hqsql_text='select ''ZLZB_BFZ003'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (16) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='0'
,kxwdz='timekey,yykey,kskey,bfzkey'
,memo=''
,orderno='8409'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (16) group by timekey,yykey,kskey,bfzkey'
,sql_start='select ''ZLZB_BFZ003'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_BFZ003'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (16) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_BFZ003'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (16) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='1'
,zb_id='ZLZB_BFZ003'
,zb_name='�����������Ѫ֢����'
,zbzt='0'
 where zb_id='ZLZB_BFZ003'
end
go

/*********No.22: ZLZB_BFZ004******HD_ZBMX_HZ***ZLZB_BFZ004*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ004')
begin
update HD_ZBMX_HZ set
condition='[{\"dim_key\":\"zqssbz\",\"relation\":\"0\",\"caliber\":\"1\"},{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"12\"}]'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='rc'
,fact_table='FACT_GZ_HZAQ_BFZ'
,gspz=''
,hqsql_text='select ''ZLZB_BFZ004'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (12) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='0'
,kxwdz='timekey,yykey,kskey,bfzkey'
,memo=''
,orderno='8410'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (12) group by timekey,yykey,kskey,bfzkey'
,sql_start='select ''ZLZB_BFZ004'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_BFZ004'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (12) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_BFZ004'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (12) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='1'
,zb_id='ZLZB_BFZ004'
,zb_name='�����������Ѫ����Ѫ������'
,zbzt='0'
 where zb_id='ZLZB_BFZ004'
end
go

/*********No.23: ZLZB_BFZ005******HD_ZBMX_HZ***ZLZB_BFZ005*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ005')
begin
update HD_ZBMX_HZ set
condition='[{\"dim_key\":\"zqssbz\",\"relation\":\"0\",\"caliber\":\"1\"},{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"5\"}]'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='rc'
,fact_table='FACT_GZ_HZAQ_BFZ'
,gspz=''
,hqsql_text='select ''ZLZB_BFZ005'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (5) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='0'
,kxwdz='timekey,yykey,kskey,bfzkey'
,memo=''
,orderno='8411'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (5) group by timekey,yykey,kskey,bfzkey'
,sql_start='select ''ZLZB_BFZ005'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_BFZ005'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (5) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_BFZ005'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (5) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='1'
,zb_id='ZLZB_BFZ005'
,zb_name='�����������˿��ѿ�����'
,zbzt='0'
 where zb_id='ZLZB_BFZ005'
end
go

/*********No.24: ZLZB_BFZ006******HD_ZBMX_HZ***ZLZB_BFZ006*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ006')
begin
update HD_ZBMX_HZ set
condition='[{\"dim_key\":\"zqssbz\",\"relation\":\"0\",\"caliber\":\"1\"},{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"18\"}]'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='rc'
,fact_table='FACT_GZ_HZAQ_BFZ'
,gspz=''
,hqsql_text='select ''ZLZB_BFZ006'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (18) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='0'
,kxwdz='timekey,yykey,kskey,bfzkey'
,memo=''
,orderno='8412'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (18) group by timekey,yykey,kskey,bfzkey'
,sql_start='select ''ZLZB_BFZ006'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_BFZ006'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (18) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_BFZ006'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (18) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='1'
,zb_id='ZLZB_BFZ006'
,zb_name='�����������������'
,zbzt='0'
 where zb_id='ZLZB_BFZ006'
end
go

/*********No.25: ZLZB_BFZ007******HD_ZBMX_HZ***ZLZB_BFZ007*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ007')
begin
update HD_ZBMX_HZ set
condition='[{\"dim_key\":\"zqssbz\",\"relation\":\"0\",\"caliber\":\"1\"},{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"15\"}]'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='rc'
,fact_table='FACT_GZ_HZAQ_BFZ'
,gspz=''
,hqsql_text='select ''ZLZB_BFZ007'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (15) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='0'
,kxwdz='timekey,yykey,kskey,bfzkey'
,memo=''
,orderno='8413'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (15) group by timekey,yykey,kskey,bfzkey'
,sql_start='select ''ZLZB_BFZ007'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_BFZ007'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (15) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_BFZ007'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (15) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='1'
,zb_id='ZLZB_BFZ007'
,zb_name='�������������˥������'
,zbzt='0'
 where zb_id='ZLZB_BFZ007'
end
go

/*********No.26: ZLZB_BFZ008******HD_ZBMX_HZ***ZLZB_BFZ008*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ008')
begin
update HD_ZBMX_HZ set
condition='[{\"dim_key\":\"zqssbz\",\"relation\":\"0\",\"caliber\":\"1\"},{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"14\"}]'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='rc'
,fact_table='FACT_GZ_HZAQ_BFZ'
,gspz=''
,hqsql_text='select ''ZLZB_BFZ008'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (14) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='0'
,kxwdz='timekey,yykey,kskey,bfzkey'
,memo=''
,orderno='8414'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (14) group by timekey,yykey,kskey,bfzkey'
,sql_start='select ''ZLZB_BFZ008'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_BFZ008'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (14) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_BFZ008'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (14) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='1'
,zb_id='ZLZB_BFZ008'
,zb_name='�����������л������������'
,zbzt='0'
 where zb_id='ZLZB_BFZ008'
end
go

/*********No.27: ZLZB_BFZ009******HD_ZBMX_HZ***ZLZB_BFZ009*****************/

if  exists(select 1 from HD_ZBMX_HZ where zb_id='ZLZB_BFZ009')
begin
update HD_ZBMX_HZ set
condition='[{\"dim_key\":\"zqssbz\",\"relation\":\"0\",\"caliber\":\"1\"},{\"dim_key\":\"bfzkey\",\"relation\":\"0\",\"caliber\":\"19\"}]'
,dependindex=''
,dlzgs=''
,dylx='0'
,fact_dlz='rc'
,fact_table='FACT_GZ_HZAQ_BFZ'
,gspz=''
,hqsql_text='select ''ZLZB_BFZ009'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (19) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')'
,jlzt='1'
,kslx='0'
,kxwdz='timekey,yykey,kskey,bfzkey'
,memo=''
,orderno='8415'
,proc_name=''
,sql_end=') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_middle='select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (19) group by timekey,yykey,kskey,bfzkey'
,sql_start='select ''ZLZB_BFZ009'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from ('
,sql_text='select ''ZLZB_BFZ009'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (19) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')'
,sql_text_first=''
,tqsql_text='select ''ZLZB_BFZ009'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,bfzkey,sum(rc) fz from FACT_GZ_HZAQ_BFZ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) and zqssbz in (1) and bfzkey in (19) group by timekey,yykey,kskey,bfzkey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')'
,ysfs='1'
,zb_id='ZLZB_BFZ009'
,zb_name='����������������֢����'
,zbzt='0'
 where zb_id='ZLZB_BFZ009'
end
go
