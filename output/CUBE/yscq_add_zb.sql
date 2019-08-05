/************No.1: R001******************ZB_FACT_DIM_YS***R001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='R001' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb R001'
go

/************No.1: R001******************ZBMX***R001******************************/

if exists(select 1 from ZBMX where id='R001')
begin
	print '����ָ��R001,��ָ��R001�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='R001') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('R001','RLZY03','ͣ�����','0','1','0','��','0','','','0.00000','1','0','','','�Һ��˵��޼�¼�����Ű����У���ͣ��','','','R001','','','0','1','','','','','','0','1','0','','1','0','1','')
	
end
go

/************No.1: R001******************Y_COLUMN_MAP_ZBFACT***R001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R001' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb R001'
go

/************No.1: R001******************HD_ZBMX_HZ_YS***R001******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R001')
begin
	print '����ָ��R001,��ָ��R001�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R001') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb R001'

end
go

/************No.1: R001******************HD_ZBMX_HZ***R001******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='R001')
begin
	print '����ָ��R001,��ָ��R001�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='R001') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb R001'

end
go

/************No.2: R003******************ZB_FACT_DIM_YS***R003******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='R003' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb R003'
go

/************No.2: R003******************ZBMX***R003******************************/

if exists(select 1 from ZBMX where id='R003')
begin
	print '����ָ��R003,��ָ��R003�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='R003') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('R003','RLZY03','ͣ����','0','100','0','%','1','','','0.00000','1','0','','','','','','R003','','','0','1','','','','','','0','1','0','','1','1','1','')
	
end
go

/************No.2: R003******************Y_COLUMN_MAP_ZBFACT***R003******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R003' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R003','','','R001,R002')
	go

/************No.2: R003******************HD_ZBMX_HZ_YS***R003******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R003')
begin
	print '����ָ��R003,��ָ��R003�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R003') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb R003'

end
go

/************No.2: R003******************HD_ZBMX_HZ***R003******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='R003')
begin
	print '����ָ��R003,��ָ��R003�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='R003') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('R003','ͣ����','','','','select ''R003'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''R001'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''R002'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''R003'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''R001'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''R002'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','R001,R002','12511','','','0','-1','-1','','','','','@ͣ�����(R001)/@ҽ�����(R002)','select ''R003'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''R001'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''R002'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.3: R002******************ZB_FACT_DIM_YS***R002******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='R002' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb R002'
go

/************No.3: R002******************ZBMX***R002******************************/

if exists(select 1 from ZBMX where id='R002')
begin
	print '����ָ��R002,��ָ��R002�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='R002') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('R002','RLZY03','ҽ�����','0','1','0','��','0','','','0.00000','1','0','','','','','','R002','','','0','1','','','','','','0','1','0','','0','0','1','')
	
end
go

/************No.3: R002******************Y_COLUMN_MAP_ZBFACT***R002******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R002' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R002','FACT_YY_MZ_KSYSBC','pbyss','')
	go

/************No.3: R002******************HD_ZBMX_HZ_YS***R002******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R002')
begin
	print '����ָ��R002,��ָ��R002�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R002') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb R002'

end
go

/************No.3: R002******************HD_ZBMX_HZ***R002******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='R002')
begin
	print '����ָ��R002,��ָ��R002�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='R002') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('R002','ҽ�����','select ''R002'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select yykey,kskey,timekey,sum(pbyss) fz from FACT_YY_MZ_KSYSBC a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''R002'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select yykey,kskey,timekey,sum(pbyss) fz from FACT_YY_MZ_KSYSBC a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''R002'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select yykey,kskey,timekey,sum(pbyss) fz from FACT_YY_MZ_KSYSBC a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','','','','0','1','0','FACT_YY_MZ_KSYSBC','pbyss','','yykey,kskey,timekey','','select ''R002'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select yykey,kskey,timekey,sum(pbyss) fz from FACT_YY_MZ_KSYSBC a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','')
	
end
go

/************No.4: R004******************ZB_FACT_DIM_YS***R004******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='R004' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb R004'
go

/************No.4: R004******************ZBMX***R004******************************/

if exists(select 1 from ZBMX where id='R004')
begin
	print '����ָ��R004,��ָ��R004�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='R004') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('R004','RLZY03','�������','0','1','0','��','0','','','0.00000','1','0','','','','','','R004','','','0','1','','','','','','0','1','0','','1','0','1','')
	
end
go

/************No.4: R004******************Y_COLUMN_MAP_ZBFACT***R004******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R004' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb R004'
go

/************No.4: R004******************HD_ZBMX_HZ_YS***R004******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R004')
begin
	print '����ָ��R004,��ָ��R004�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R004') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb R004'

end
go

/************No.4: R004******************HD_ZBMX_HZ***R004******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='R004')
begin
	print '����ָ��R004,��ָ��R004�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='R004') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb R004'

end
go

/************No.5: R005******************ZB_FACT_DIM_YS***R005******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='R005' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb R005'
go

/************No.5: R005******************ZBMX***R005******************************/

if exists(select 1 from ZBMX where id='R005')
begin
	print '����ָ��R005,��ָ��R005�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='R005') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('R005','RLZY03','��ʱ�������','0','1','0','��','0','','','0.00000','1','0','','','','','','R005','','','0','1','','','','','','0','1','0','','1','0','1','')
	
end
go

/************No.5: R005******************Y_COLUMN_MAP_ZBFACT***R005******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R005' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb R005'
go

/************No.5: R005******************HD_ZBMX_HZ_YS***R005******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R005')
begin
	print '����ָ��R005,��ָ��R005�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R005') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb R005'

end
go

/************No.5: R005******************HD_ZBMX_HZ***R005******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='R005')
begin
	print '����ָ��R005,��ָ��R005�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='R005') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb R005'

end
go

/************No.6: R006******************ZB_FACT_DIM_YS***R006******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='R006' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb R006'
go

/************No.6: R006******************ZBMX***R006******************************/

if exists(select 1 from ZBMX where id='R006')
begin
	print '����ָ��R006,��ָ��R006�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='R006') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('R006','RLZY03','��ʱ������','0','100','0','%','1','','','0.00000','1','0','','','','','','R006','','','0','1','','','','','','0','1','0','','1','1','1','')
	
end
go

/************No.6: R006******************Y_COLUMN_MAP_ZBFACT***R006******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R006' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R006','','','R005,R007')
	go

/************No.6: R006******************HD_ZBMX_HZ_YS***R006******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R006')
begin
	print '����ָ��R006,��ָ��R006�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R006') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb R006'

end
go

/************No.6: R006******************HD_ZBMX_HZ***R006******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='R006')
begin
	print '����ָ��R006,��ָ��R006�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='R006') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('R006','��ʱ������','','','','select ''R006'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''R005'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''R007'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''R006'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''R005'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''R007'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','R005,R007','12513','','','0','-1','-1','','','','','@��ʱ�������(R005)/@�������(R007)','select ''R006'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''R005'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''R007'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.7: R007******************ZB_FACT_DIM_YS***R007******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='R007' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb R007'
go

/************No.7: R007******************ZBMX***R007******************************/

if exists(select 1 from ZBMX where id='R007')
begin
	print '����ָ��R007,��ָ��R007�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='R007') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('R007','RLZY03','�������','0','1','0','��','0','','','0.00000','1','0','','','','','','R007','','','0','1','','','','','','0','1','0','','0','0','1','')
	
end
go

/************No.7: R007******************Y_COLUMN_MAP_ZBFACT***R007******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R007' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R007','FACT_YY_MZ_YSCQ','sfcz','')
	go

/************No.7: R007******************HD_ZBMX_HZ_YS***R007******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R007')
begin
	print '����ָ��R007,��ָ��R007�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R007') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('R007','�������','select ''R007'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(sfcz) fz from FACT_YY_MZ_YSCQ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm','select ''R007'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(sfcz) fz from FACT_YY_MZ_YSCQ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm','1','','','','','','0','select ''R007'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(sfcz) fz from FACT_YY_MZ_YSCQ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm')
	
end
go

/************No.7: R007******************HD_ZBMX_HZ***R007******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='R007')
begin
	print '����ָ��R007,��ָ��R007�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='R007') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('R007','�������','select ''R007'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select yykey,kskey,timekey,yskey,sum(sfcz) fz from FACT_YY_MZ_YSCQ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey,yskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''R007'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select yykey,kskey,timekey,yskey,sum(sfcz) fz from FACT_YY_MZ_YSCQ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''R007'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select yykey,kskey,timekey,yskey,sum(sfcz) fz from FACT_YY_MZ_YSCQ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','','','','0','1','0','FACT_YY_MZ_YSCQ','sfcz','','yykey,kskey,timekey,yskey','','select ''R007'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select yykey,kskey,timekey,yskey,sum(sfcz) fz from FACT_YY_MZ_YSCQ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','')
	
end
go

/************No.8: R008******************ZB_FACT_DIM_YS***R008******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='R008' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb R008'
go

/************No.8: R008******************ZBMX***R008******************************/

if exists(select 1 from ZBMX where id='R008')
begin
	print '����ָ��R008,��ָ��R008�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='R008') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('R008','RLZY03','�Ѹڴ���','0','1','0','��','0','','','0.00000','1','0','','','','','','R008','','','0','1','','','','','','0','1','0','','1','0','1','')
	
end
go

/************No.8: R008******************Y_COLUMN_MAP_ZBFACT***R008******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R008' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb R008'
go

/************No.8: R008******************HD_ZBMX_HZ_YS***R008******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R008')
begin
	print '����ָ��R008,��ָ��R008�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R008') 
begin 
	print 'This table HD_ZBMX_HZ_YS  do not have the zb R008'

end
go

/************No.8: R008******************HD_ZBMX_HZ***R008******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='R008')
begin
	print '����ָ��R008,��ָ��R008�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='R008') 
begin 
	print 'This table HD_ZBMX_HZ  do not have the zb R008'

end
go

/************No.9: R009******************ZB_FACT_DIM_YS***R009******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='R009' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb R009'
go

/************No.9: R009******************ZBMX***R009******************************/

if exists(select 1 from ZBMX where id='R009')
begin
	print '����ָ��R009,��ָ��R009�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='R009') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('R009','RLZY03','������','0','1','0','��','0','','','0.00000','1','0','','','','','','R009','','','0','1','','','','','','0','1','0','','0','0','1','')
	
end
go

/************No.9: R009******************Y_COLUMN_MAP_ZBFACT***R009******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R009' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R009','FACT_YY_MZ_JZRC','ghrc','')
	go

/************No.9: R009******************HD_ZBMX_HZ_YS***R009******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R009')
begin
	print '����ָ��R009,��ָ��R009�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R009') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('R009','������','select ''R009'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(ghrc) fz from FACT_YY_MZ_JZRC a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm','select ''R009'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(ghrc) fz from FACT_YY_MZ_JZRC a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm','1','','','','','','0','select ''R009'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(ghrc) fz from FACT_YY_MZ_JZRC a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm')
	
end
go

/************No.9: R009******************HD_ZBMX_HZ***R009******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='R009')
begin
	print '����ָ��R009,��ָ��R009�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='R009') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('R009','������','select ''R009'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select timekey,yykey,kskey,yskey,sum(ghrc) fz from FACT_YY_MZ_JZRC a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''R009'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,sum(ghrc) fz from FACT_YY_MZ_JZRC a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''R009'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,sum(ghrc) fz from FACT_YY_MZ_JZRC a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','','','','0','1','0','FACT_YY_MZ_JZRC','ghrc','','timekey,yykey,kskey,yskey','','select ''R009'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select timekey,yykey,kskey,yskey,sum(ghrc) fz from FACT_YY_MZ_JZRC a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','')
	
end
go

/************No.10: R0010******************ZB_FACT_DIM_YS***R0010******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='R0010' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb R0010'
go

/************No.10: R0010******************ZBMX***R0010******************************/

if exists(select 1 from ZBMX where id='R0010')
begin
	print '����ָ��R0010,��ָ��R0010�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='R0010') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('R0010','RLZY03','ƽ��������','0','1','4','��','1','','','0.00000','1','0','','','','','','R0010','','','0','1','','','','','','0','1','0','','0','1','1','')
	
end
go

/************No.10: R0010******************Y_COLUMN_MAP_ZBFACT***R0010******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R0010' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R0010','','','R009,R007')
	go

/************No.10: R0010******************HD_ZBMX_HZ_YS***R0010******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R0010')
begin
	print '����ָ��R0010,��ָ��R0010�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R0010') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('R0010','ƽ��������','select ''R0010'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''R009'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''R007'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''R0010'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''R009'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''R007'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','R009,R007','','','','0','select ''R0010'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''R009'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''R007'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.10: R0010******************HD_ZBMX_HZ***R0010******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='R0010')
begin
	print '����ָ��R0010,��ָ��R0010�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='R0010') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('R0010','ƽ��������','','select timekey,yykey,kskey,yskey,sum(ghrc) fz,0 fm from FACT_YY_MZ_JZRC a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey union all select timekey,yykey,kskey,yskey,0 fz,sum(sfcz) fm from FACT_YY_MZ_YSCQ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey','','select ''R0010'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''R009'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''R007'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''R0010'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''R009'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''R007'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','R009,R007','12514','','','0','-1','-1','','','','timekey,yykey,kskey,yskey','������(R009)/@�������(R007)','select ''R0010'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''R009'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''R007'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.11: R0011******************ZB_FACT_DIM_YS***R0011******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='R0011' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb R0011'
go

/************No.11: R0011******************ZBMX***R0011******************************/

if exists(select 1 from ZBMX where id='R0011')
begin
	print '����ָ��R0011,��ָ��R0011�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='R0011') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('R0011','RLZY03','����ʱ��','0','1','0','����','0','','','0.00000','1','0','','','','','','R0011','','','0','1','','','','','','0','1','0','','0','0','1','')
	
end
go

/************No.11: R0011******************Y_COLUMN_MAP_ZBFACT***R0011******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R0011' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R0011','FACT_YY_MZ_YSCQ','kaizsc','')
	go

/************No.11: R0011******************HD_ZBMX_HZ_YS***R0011******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R0011')
begin
	print '����ָ��R0011,��ָ��R0011�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R0011') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('R0011','����ʱ��','select ''R0011'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(kaizsc) fz from FACT_YY_MZ_YSCQ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm','select ''R0011'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(kaizsc) fz from FACT_YY_MZ_YSCQ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm','1','','','0','','','0','select ''R0011'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(kaizsc) fz from FACT_YY_MZ_YSCQ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm')
	
end
go

/************No.11: R0011******************HD_ZBMX_HZ***R0011******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='R0011')
begin
	print '����ָ��R0011,��ָ��R0011�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='R0011') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('R0011','����ʱ��','select ''R0011'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select yykey,kskey,timekey,yskey,sum(kaizsc) fz from FACT_YY_MZ_YSCQ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey,yskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''R0011'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select yykey,kskey,timekey,yskey,sum(kaizsc) fz from FACT_YY_MZ_YSCQ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''R0011'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select yykey,kskey,timekey,yskey,sum(kaizsc) fz from FACT_YY_MZ_YSCQ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','','','','0','1','0','FACT_YY_MZ_YSCQ','kaizsc','','yykey,kskey,timekey,yskey','','select ''R0011'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select yykey,kskey,timekey,yskey,sum(kaizsc) fz from FACT_YY_MZ_YSCQ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','')
	
end
go

/************No.12: R0012******************ZB_FACT_DIM_YS***R0012******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='R0012' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb R0012'
go

/************No.12: R0012******************ZBMX***R0012******************************/

if exists(select 1 from ZBMX where id='R0012')
begin
	print '����ָ��R0012,��ָ��R0012�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='R0012') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('R0012','RLZY03','ƽ������ʱ��','0','1','4','����','1','','','0.00000','1','0','','','','','','R0012','','','0','1','','','','','','0','1','0','','0','1','1','')
	
end
go

/************No.12: R0012******************Y_COLUMN_MAP_ZBFACT***R0012******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R0012' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R0012','','','R0011,R007')
	go

/************No.12: R0012******************HD_ZBMX_HZ_YS***R0012******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R0012')
begin
	print '����ָ��R0012,��ָ��R0012�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R0012') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('R0012','ƽ������ʱ��','select ''R0012'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''R0011'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''R007'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''R0012'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''R0011'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''R007'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','R0011,R007','','','','0','select ''R0012'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''R0011'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''R007'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.12: R0012******************HD_ZBMX_HZ***R0012******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='R0012')
begin
	print '����ָ��R0012,��ָ��R0012�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='R0012') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('R0012','ƽ������ʱ��','','select yykey,kskey,timekey,yskey,sum(kaizsc) fz,0 fm from FACT_YY_MZ_YSCQ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey,yskey union all select yykey,kskey,timekey,yskey,0 fz,sum(sfcz) fm from FACT_YY_MZ_YSCQ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey,yskey','','select ''R0012'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''R0011'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''R007'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''R0012'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''R0011'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''R007'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','R0011,R007','12515','','','0','-1','-1','','','','yykey,kskey,timekey,yskey','@����ʱ��(R0011)/@�������(R007)','select ''R0012'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''R0011'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''R007'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.13: R0013******************ZB_FACT_DIM_YS***R0013******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='R0013' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb R0013'
go

/************No.13: R0013******************ZBMX***R0013******************************/

if exists(select 1 from ZBMX where id='R0013')
begin
	print '����ָ��R0013,��ָ��R0013�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='R0013') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('R0013','RLZY03','����ʱ��','0','1','4','����','0','','','0.00000','1','0','','','','','','R0013','','','0','1','','','','','','0','1','0','','0','0','1','')
	
end
go

/************No.13: R0013******************Y_COLUMN_MAP_ZBFACT***R0013******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R0013' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R0013','FACT_YY_MZ_YSCQ','kanzsc','')
	go

/************No.13: R0013******************HD_ZBMX_HZ_YS***R0013******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R0013')
begin
	print '����ָ��R0013,��ָ��R0013�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R0013') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('R0013','����ʱ��','select ''R0013'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(kanzsc) fz from FACT_YY_MZ_YSCQ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm','select ''R0013'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(kanzsc) fz from FACT_YY_MZ_YSCQ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm','1','','','','','','0','select ''R0013'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(kanzsc) fz from FACT_YY_MZ_YSCQ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm')
	
end
go

/************No.13: R0013******************HD_ZBMX_HZ***R0013******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='R0013')
begin
	print '����ָ��R0013,��ָ��R0013�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='R0013') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('R0013','����ʱ��','select ''R0013'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select yykey,kskey,timekey,yskey,sum(kanzsc) fz from FACT_YY_MZ_YSCQ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey,yskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''R0013'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select yykey,kskey,timekey,yskey,sum(kanzsc) fz from FACT_YY_MZ_YSCQ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''R0013'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select yykey,kskey,timekey,yskey,sum(kanzsc) fz from FACT_YY_MZ_YSCQ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','','','','0','1','0','FACT_YY_MZ_YSCQ','kanzsc','','yykey,kskey,timekey,yskey','','select ''R0013'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select yykey,kskey,timekey,yskey,sum(kanzsc) fz from FACT_YY_MZ_YSCQ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','')
	
end
go

/************No.14: R0014******************ZB_FACT_DIM_YS***R0014******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='R0014' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb R0014'
go

/************No.14: R0014******************ZBMX***R0014******************************/

if exists(select 1 from ZBMX where id='R0014')
begin
	print '����ָ��R0014,��ָ��R0014�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='R0014') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('R0014','RLZY03','ƽ������ʱ��','0','1','4','����','1','','','0.00000','1','0','','','','','','R0014','','','0','1','','','','','','0','1','0','','0','1','1','')
	
end
go

/************No.14: R0014******************Y_COLUMN_MAP_ZBFACT***R0014******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R0014' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R0014','','','R0013,R009')
	go

/************No.14: R0014******************HD_ZBMX_HZ_YS***R0014******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R0014')
begin
	print '����ָ��R0014,��ָ��R0014�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R0014') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('R0014','ƽ������ʱ��','select ''R0014'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''R0013'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''R009'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''R0014'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''R0013'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''R009'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','R0013,R009','','','','0','select ''R0014'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''R0013'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''R009'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.14: R0014******************HD_ZBMX_HZ***R0014******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='R0014')
begin
	print '����ָ��R0014,��ָ��R0014�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='R0014') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('R0014','ƽ������ʱ��','','select yykey,kskey,timekey,yskey,sum(kanzsc) fz,0 fm from FACT_YY_MZ_YSCQ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey,yskey union all select yykey,kskey,timekey,yskey,0 fz,sum(ghrc) fm from FACT_YY_MZ_JZRC a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey,yskey','','select ''R0014'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''R0013'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''R009'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''R0014'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''R0013'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''R009'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','R0013,R009','12516','','','0','-1','-1','','','','yykey,kskey,timekey,yskey','@����ʱ��(R0013)/@������(R009)','select ''R0014'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''R0013'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''R009'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

/************No.15: R0015******************ZB_FACT_DIM_YS***R0015******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='R0015' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb R0015'
go

/************No.15: R0015******************ZBMX***R0015******************************/

if exists(select 1 from ZBMX where id='R0015')
begin
	print '����ָ��R0015,��ָ��R0015�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='R0015') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('R0015','RLZY03','����ʱ��','0','1','4','����','0','','','0.00000','1','0','','','','','','R0015','','','0','1','','','','','','0','1','0','','0','0','1','')
	
end
go

/************No.15: R0015******************Y_COLUMN_MAP_ZBFACT***R0015******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R0015' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R0015','FACT_YY_MZ_YSCQ','houzsc','')
	go

/************No.15: R0015******************HD_ZBMX_HZ_YS***R0015******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R0015')
begin
	print '����ָ��R0015,��ָ��R0015�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R0015') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('R0015','����ʱ��','select ''R0015'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(houzsc) fz from FACT_YY_MZ_YSCQ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1''),a.yskey,d.ysdm','select ''R0015'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(houzsc) fz from FACT_YY_MZ_YSCQ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1''),a.yskey,d.ysdm','1','','','','','','0','select ''R0015'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,a.yskey,d.ysdm,null bqkey from (select timekey,yykey,kskey,yskey,sum(houzsc) fz from FACT_YY_MZ_YSCQ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by timekey,yykey,kskey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey left join DIM_YSXX d on a.yskey=d.yskey where (a.kskey=@kskey or @kskey=-1) group  by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1''),a.yskey,d.ysdm')
	
end
go

/************No.15: R0015******************HD_ZBMX_HZ***R0015******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='R0015')
begin
	print '����ָ��R0015,��ָ��R0015�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='R0015') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('R0015','����ʱ��','select ''R0015'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (','select yykey,kskey,timekey,yskey,sum(houzsc) fz from FACT_YY_MZ_YSCQ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey,yskey',') a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''R0015'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select yykey,kskey,timekey,yskey,sum(houzsc) fz from FACT_YY_MZ_YSCQ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),timekey,120)+''1'')','select ''R0015'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select yykey,kskey,timekey,yskey,sum(houzsc) fz from FACT_YY_MZ_YSCQ a where timekey between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(year,1,timekey),120)+''1'')','1','','','','','','0','1','0','FACT_YY_MZ_YSCQ','houzsc','','yykey,kskey,timekey,yskey','','select ''R0015'' zbmx_id,a.yykey,isnull(b.yydm,''01'') yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'') month,sum(fz) fz,0 fm,null czry,getdate() gxrq,null bqkey from (select yykey,kskey,timekey,yskey,sum(houzsc) fz from FACT_YY_MZ_YSCQ a where timekey between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey,yskey) a inner join DIM_YYXX b on a.yykey=b.yykey inner join DIM_KSXX c on a.kskey=c.kskey and a.yykey=c.yykey group by a.yykey,b.yydm,a.kskey,c.ksdm,convert(date,convert(char(8),dateadd(month,1,timekey),120)+''1'')','','')
	
end
go

/************No.16: R0016******************ZB_FACT_DIM_YS***R0016******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='R0016' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb R0016'
go

/************No.16: R0016******************ZBMX***R0016******************************/

if exists(select 1 from ZBMX where id='R0016')
begin
	print '����ָ��R0016,��ָ��R0016�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='R0016') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl)
	values('R0016','RLZY03','ƽ������ʱ��','0','1','4','����','1','','','0.00000','1','0','','','','','','R0016','','','0','1','','','','','','0','1','0','','0','1','1','')
	
end
go

/************No.16: R0016******************Y_COLUMN_MAP_ZBFACT***R0016******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R0016' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R0016','','','R0015,R009')
	go

/************No.16: R0016******************HD_ZBMX_HZ_YS***R0016******************************/

if exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R0016')
begin
	print '����ָ��R0016,��ָ��R0016�Ѵ����ڱ�HD_ZBMX_HZ_YS��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ_YS where zb_id='R0016') 
begin 
	INSERT HD_ZBMX_HZ_YS ( zb_id,zb_name,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,hqsql_text)
	values('R0016','ƽ������ʱ��','select ''R0016'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''R0015'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,yskey,ysdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where zbmx_id =''R009'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','select ''R0016'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''R0015'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''R009'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm','1','','R0015,R009','','','','0','select ''R0016'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,yskey,ysdm,bqkey from (select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''R0015'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,yskey,ysdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_YS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''R009'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey,yskey,ysdm')
	
end
go

/************No.16: R0016******************HD_ZBMX_HZ***R0016******************************/

if exists(select 1 from HD_ZBMX_HZ where zb_id='R0016')
begin
	print '����ָ��R0016,��ָ��R0016�Ѵ����ڱ�HD_ZBMX_HZ��,��˲�!'
end
if not exists(select 1 from HD_ZBMX_HZ where zb_id='R0016') 
begin 
	INSERT HD_ZBMX_HZ ( zb_id,zb_name,sql_start,sql_middle,sql_end,sql_text,tqsql_text,jlzt,memo,dependindex,orderno,sql_text_first,proc_name,zbzt,ysfs,kslx,fact_table,fact_dlz,condition,kxwdz,gspz,hqsql_text,dlzgs,dylx)
	values('R0016','ƽ������ʱ��','','select yykey,kskey,timekey,yskey,sum(houzsc) fz,0 fm from FACT_YY_MZ_YSCQ a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey,yskey union all select yykey,kskey,timekey,yskey,0 fz,sum(ghrc) fm from FACT_YY_MZ_JZRC a where timekey between @kssj and @jssj and (a.yykey in (@yykey) or -1 in (@yykey)) group by yykey,kskey,timekey,yskey','','select ''R0016'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''R0015'' and month between @kssj and @jssj union all select yykey,yydm,kskey,ksdm,month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where zbmx_id =''R009'' and month between @kssj and @jssj)t group by yykey,yydm,kskey,ksdm,month,bqkey','select ''R0016'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''R0015'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(year,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(year,1,month) < getdate() and zbmx_id =''R009'' and month between dateadd(year,-1,@kssj) and dateadd(year,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','1','','R0015,R009','12517','','','0','-1','-1','','','','yykey,kskey,timekey,yskey','@����ʱ��(R0015)/@������(R009)','select ''R0016'' zbmx_id,yykey,yydm,kskey,ksdm,month,sum(fz) fz,sum(fm) fm,null czry,getdate() gxrq,bqkey from (select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,fz,0 fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''R0015'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj) union all select yykey,yydm,kskey,ksdm,dateadd(month,1,month) month,0 fz,fz fm,bqkey from FACT_RESULT_KS_VALUE_M where dateadd(month,1,month) < getdate() and zbmx_id =''R009'' and month between dateadd(month,-1,@kssj) and dateadd(month,-1,@jssj))t group by yykey,yydm,kskey,ksdm,month,bqkey','','')
	
end
go

