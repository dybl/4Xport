/************No.1: R001******************ZBMX***R001******************************/

if exists(select 1 from ZBMX where id='R001')
begin
	print '新增指标R001,但指标R001已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='R001') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('R001','46','停诊次数','0','1','0','次','2','','','0.00000','1','0','','','挂号账单无记录，但排班中有，算停诊','','','R001','','','0','2','','0','0','','0','0','1','0','0','0','0','0','0','')
	
end
go

/************No.2: R0010******************ZBMX***R0010******************************/

if exists(select 1 from ZBMX where id='R0010')
begin
	print '新增指标R0010,但指标R0010已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='R0010') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('R0010','46','平均接诊量','0','1','4','人','1','0','','0.00000','1','0','','1900-01-01 00:00:00','','','','R0010','0','','0','1','','0','0','','0','0','1','0','0','0','1','1','0','')
	
end
go

/************No.3: R0011******************ZBMX***R0011******************************/

if exists(select 1 from ZBMX where id='R0011')
begin
	print '新增指标R0011,但指标R0011已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='R0011') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('R0011','46','开诊时长','0','1','0','分钟','0','0','','0.00000','1','0','','1900-01-01 00:00:00','','','','R0011','0','','0','1','','0','0','','0','0','1','0','0','0','0','0','0','')
	
end
go

/************No.4: R0012******************ZBMX***R0012******************************/

if exists(select 1 from ZBMX where id='R0012')
begin
	print '新增指标R0012,但指标R0012已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='R0012') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('R0012','46','平均开诊时长','0','1','4','分钟','1','0','','0.00000','1','0','','1900-01-01 00:00:00','','','','R0012','0','','0','1','','0','0','','0','0','1','0','0','0','1','1','0','')
	
end
go

/************No.5: R0013******************ZBMX***R0013******************************/

if exists(select 1 from ZBMX where id='R0013')
begin
	print '新增指标R0013,但指标R0013已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='R0013') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('R0013','46','看诊时长','0','1','4','分钟','0','0','','0.00000','1','0','','1900-01-01 00:00:00','','','','R0013','0','','0','1','','0','0','','0','0','1','0','0','0','0','0','0','')
	
end
go

/************No.6: R0014******************ZBMX***R0014******************************/

if exists(select 1 from ZBMX where id='R0014')
begin
	print '新增指标R0014,但指标R0014已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='R0014') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('R0014','46','平均看诊时长','0','1','4','分钟','1','0','','0.00000','1','0','','1900-01-01 00:00:00','','','','R0014','0','','0','1','','0','0','','0','0','1','0','0','0','1','1','0','')
	
end
go

/************No.7: R0015******************ZBMX***R0015******************************/

if exists(select 1 from ZBMX where id='R0015')
begin
	print '新增指标R0015,但指标R0015已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='R0015') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('R0015','46','候诊时长','0','1','4','分钟','0','0','','0.00000','1','0','','1900-01-01 00:00:00','','','','R0015','0','','0','1','','0','0','','0','0','1','0','0','0','0','0','0','')
	
end
go

/************No.8: R0016******************ZBMX***R0016******************************/

if exists(select 1 from ZBMX where id='R0016')
begin
	print '新增指标R0016,但指标R0016已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='R0016') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('R0016','46','平均候诊时长','0','1','4','分钟','1','0','','0.00000','1','0','','1900-01-01 00:00:00','','','','R0016','0','','0','1','','0','0','','0','0','1','0','0','0','1','1','0','')
	
end
go

/************No.9: R002******************ZBMX***R002******************************/

if exists(select 1 from ZBMX where id='R002')
begin
	print '新增指标R002,但指标R002已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='R002') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('R002','46','医生班次','0','1','0','次','0','','','0.00000','1','0','','','','','','R002','','','0','1','','0','0','','0','0','1','0','0','0','0','0','0','')
	
end
go

/************No.10: R003******************ZBMX***R003******************************/

if exists(select 1 from ZBMX where id='R003')
begin
	print '新增指标R003,但指标R003已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='R003') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('R003','46','停诊率','0','100','4','%','1','','','0.00000','1','0','','','','','','R003','','','0','2','','0','0','','0','0','1','0','0','0','0','0','0','')
	
end
go

/************No.11: R004******************ZBMX***R004******************************/

if exists(select 1 from ZBMX where id='R004')
begin
	print '新增指标R004,但指标R004已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='R004') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('R004','46','请假天数','0','1','4','天','0','','','0.00000','1','0','','','','','','R004','','','0','2','','0','0','','0','0','1','0','0','0','0','1','0','')
	
end
go

/************No.12: R005******************ZBMX***R005******************************/

if exists(select 1 from ZBMX where id='R005')
begin
	print '新增指标R005,但指标R005已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='R005') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('R005','46','按时出诊次数','0','1','0','次','2','','','0.00000','1','0','','','','','','R005','','','0','1','','0','0','','0','0','1','0','0','0','0','0','0','')
	
end
go

/************No.13: R006******************ZBMX***R006******************************/

if exists(select 1 from ZBMX where id='R006')
begin
	print '新增指标R006,但指标R006已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='R006') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('R006','46','按时出诊率','0','100','4','%','1','','','0.00000','1','0','','','','','','R006','','','0','1','','0','0','','0','0','1','0','0','0','0','0','0','')
	
end
go

/************No.14: R007******************ZBMX***R007******************************/

if exists(select 1 from ZBMX where id='R007')
begin
	print '新增指标R007,但指标R007已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='R007') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('R007','46','出诊次数','0','1','0','次','0','0','','0.00000','1','0','','1900-01-01 00:00:00','','','','R007','0','','0','1','','0','0','','0','0','1','0','0','0','0','0','0','')
	
end
go

/************No.15: R008******************ZBMX***R008******************************/

if exists(select 1 from ZBMX where id='R008')
begin
	print '新增指标R008,但指标R008已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='R008') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('R008','46','脱岗次数','0','1','0','次','2','','','0.00000','1','0','','','','','','R008','','','0','2','','0','0','','0','0','1','0','0','0','0','1','0','')
	
end
go

/************No.16: R009******************ZBMX***R009******************************/

if exists(select 1 from ZBMX where id='R009')
begin
	print '新增指标R009,但指标R009已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='R009') 
begin 
	INSERT ZBMX ( id,zbfl_id,name,jlzt,percent_type,xsws,zbdw,tjfs,blbz,code,mbz_zzfd,mbz_having,mbz_lrfs,czry,gxrq,memo,xtly,fjgz_id,bmid,ljfs,jskj,jyzt,pjbz,zbyy,mzzybz,yjgzdm,yjgznr,is_hz,pid,qrzt,tjzb,mbz_lrfa,isblzb,blfs,blgz,isxybl,blyy)
	values('R009','46','接诊量','0','1','0','人','0','0','','0.00000','1','0','','1900-01-01 00:00:00','','','','R009','0','','0','1','','0','0','','0','0','1','0','0','0','0','0','0','')
	
end
go

