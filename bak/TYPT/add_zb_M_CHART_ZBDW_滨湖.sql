/************No.1: SSJKMZ00109******************M_CHART_ZBDW***SSJKMZ00109******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='SSJKMZ00109')
begin
	print '新增指标SSJKMZ00109,但指标SSJKMZ00109已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='SSJKMZ00109') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('SSJKMZ00109','门急诊检查人次','人、万人','1、10000')
	
end
go

/************No.2: SSJKMZ00110******************M_CHART_ZBDW***SSJKMZ00110******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='SSJKMZ00110')
begin
	print '新增指标SSJKMZ00110,但指标SSJKMZ00110已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='SSJKMZ00110') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('SSJKMZ00110','门急诊检验人次','人、万人','1、10000')
	
end
go

