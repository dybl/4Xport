/************No.1: R003******************M_CHART_ZBDW***R003******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='R003')
begin
	print '新增指标R003,但指标R003已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='R003') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('R003','停诊率','%','0.01')
	
end
go

/************No.2: R006******************M_CHART_ZBDW***R006******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='R006')
begin
	print '新增指标R006,但指标R006已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='R006') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('R006','按时出诊率','%','0.01')
	
end
go

/************No.3: R009******************M_CHART_ZBDW***R009******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='R009')
begin
	print '新增指标R009,但指标R009已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='R009') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('R009','接诊量','人、万人','1、10000')
	
end
go

/************No.4: R0011******************M_CHART_ZBDW***R0011******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='R0011')
begin
	print '新增指标R0011,但指标R0011已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='R0011') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('R0011','开诊时长','分钟','1')
	
end
go

/************No.5: R0013******************M_CHART_ZBDW***R0013******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='R0013')
begin
	print '新增指标R0013,但指标R0013已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='R0013') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('R0013','看诊时长','分钟','1')
	
end
go

/************No.6: R0015******************M_CHART_ZBDW***R0015******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='R0015')
begin
	print '新增指标R0015,但指标R0015已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='R0015') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('R0015','候诊时长','分钟','1')
	
end
go

/************No.7: R0010******************M_CHART_ZBDW***R0010******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='R0010')
begin
	print '新增指标R0010,但指标R0010已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='R0010') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('R0010','平均接诊量','人、万人','1、10000')
	
end
go

/************No.8: R0014******************M_CHART_ZBDW***R0014******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='R0014')
begin
	print '新增指标R0014,但指标R0014已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='R0014') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('R0014','平均看诊时长','分钟','1')
	
end
go

/************No.9: R0016******************M_CHART_ZBDW***R0016******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='R0016')
begin
	print '新增指标R0016,但指标R0016已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='R0016') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('R0016','平均候诊时长','分钟','1')
	
end
go

/************No.10: R0012******************M_CHART_ZBDW***R0012******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='R0012')
begin
	print '新增指标R0012,但指标R0012已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='R0012') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('R0012','平均开诊时长','分钟','1')
	
end
go

/************No.11: R002******************M_CHART_ZBDW***R002******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='R002')
begin
	print '新增指标R002,但指标R002已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='R002') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('R002','医生班次','次','1')
	
end
go

/************No.12: R007******************M_CHART_ZBDW***R007******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='R007')
begin
	print '新增指标R007,但指标R007已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='R007') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('R007','出诊次数','次','1')
	
end
go

