/************No.1: SSJKMZ00109******************M_CHART_ZBDW***SSJKMZ00109******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='SSJKMZ00109')
begin
	print '����ָ��SSJKMZ00109,��ָ��SSJKMZ00109�Ѵ����ڱ�M_CHART_ZBDW��,��˲�!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='SSJKMZ00109') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('SSJKMZ00109','�ż������˴�','�ˡ�����','1��10000')
	
end
go

/************No.2: SSJKMZ00110******************M_CHART_ZBDW***SSJKMZ00110******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='SSJKMZ00110')
begin
	print '����ָ��SSJKMZ00110,��ָ��SSJKMZ00110�Ѵ����ڱ�M_CHART_ZBDW��,��˲�!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='SSJKMZ00110') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('SSJKMZ00110','�ż�������˴�','�ˡ�����','1��10000')
	
end
go

