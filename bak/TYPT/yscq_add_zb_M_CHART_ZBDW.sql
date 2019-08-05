/************No.1: R001******************M_CHART_ZBDW***R001******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='R001')
begin
	print '新增指标R001,但指标R001已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='R001') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('R001','停诊次数','次','1')
	
end
go

/************No.2: R003******************M_CHART_ZBDW***R003******************************/

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

/************No.3: R002******************M_CHART_ZBDW***R002******************************/

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

/************No.4: R004******************M_CHART_ZBDW***R004******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='R004')
begin
	print '新增指标R004,但指标R004已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='R004') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('R004','请假天数','天','1')
	
end
go

/************No.5: R005******************M_CHART_ZBDW***R005******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='R005')
begin
	print '新增指标R005,但指标R005已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='R005') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('R005','按时出诊次数','次','1')
	
end
go

/************No.6: R006******************M_CHART_ZBDW***R006******************************/

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

/************No.7: R007******************M_CHART_ZBDW***R007******************************/

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

/************No.8: R008******************M_CHART_ZBDW***R008******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='R008')
begin
	print '新增指标R008,但指标R008已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='R008') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('R008','脱岗次数','次','1')
	
end
go

/************No.9: R009******************M_CHART_ZBDW***R009******************************/

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

/************No.10: R0010******************M_CHART_ZBDW***R0010******************************/

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

/************No.11: R0011******************M_CHART_ZBDW***R0011******************************/

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

/************No.12: R0012******************M_CHART_ZBDW***R0012******************************/

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

/************No.13: R0013******************M_CHART_ZBDW***R0013******************************/

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

/************No.14: R0014******************M_CHART_ZBDW***R0014******************************/

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

/************No.15: R0015******************M_CHART_ZBDW***R0015******************************/

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

/************No.16: R0016******************M_CHART_ZBDW***R0016******************************/

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

