
/*********No.2: ZLZB_JB1102******M_CHART_ZBDW***ZLZB_JB1102*****************/

if  exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_JB1102')
begin
update M_CHART_ZBDW set
mx_id='ZLZB_JB1102'
,mx_name='重点疾病的死亡例数'
,mx_percent_type='1'
,mx_zbdw='例'
 where mx_id='ZLZB_JB1102'
end
go

/*********No.4: ZLZB_JB1104******M_CHART_ZBDW***ZLZB_JB1104*****************/

if  exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_JB1104')
begin
update M_CHART_ZBDW set
mx_id='ZLZB_JB1104'
,mx_name='重点疾病的15日内再住院率'
,mx_percent_type='0.01'
,mx_zbdw='%'
 where mx_id='ZLZB_JB1104'
end
go

/*********No.5: ZLZB_JB1105******M_CHART_ZBDW***ZLZB_JB1105*****************/

if  exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_JB1105')
begin
update M_CHART_ZBDW set
mx_id='ZLZB_JB1105'
,mx_name='重点疾病的31日内再住院率'
,mx_percent_type='0.01'
,mx_zbdw='%'
 where mx_id='ZLZB_JB1105'
end
go

/*********No.6: ZLZB_JB1106******M_CHART_ZBDW***ZLZB_JB1106*****************/

if  exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_JB1106')
begin
update M_CHART_ZBDW set
mx_id='ZLZB_JB1106'
,mx_name='重点疾病的平均住院日'
,mx_percent_type='1'
,mx_zbdw='天'
 where mx_id='ZLZB_JB1106'
end
go

/*********No.7: ZLZB_JB1107******M_CHART_ZBDW***ZLZB_JB1107*****************/

if  exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_JB1107')
begin
update M_CHART_ZBDW set
mx_id='ZLZB_JB1107'
,mx_name='重点疾病的次均费用'
,mx_percent_type='1、10000'
,mx_zbdw='元、万元'
 where mx_id='ZLZB_JB1107'
end
go

/*********No.11: ZLZB_SS1101******M_CHART_ZBDW***ZLZB_SS1101*****************/

if  exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_SS1101')
begin
update M_CHART_ZBDW set
mx_id='ZLZB_SS1101'
,mx_name='重点手术的总例数'
,mx_percent_type='1'
,mx_zbdw='例'
 where mx_id='ZLZB_SS1101'
end
go

/*********No.12: ZLZB_SS1102******M_CHART_ZBDW***ZLZB_SS1102*****************/

if  exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_SS1102')
begin
update M_CHART_ZBDW set
mx_id='ZLZB_SS1102'
,mx_name='重点手术的死亡率'
,mx_percent_type='0.01'
,mx_zbdw='%'
 where mx_id='ZLZB_SS1102'
end
go

/*********No.13: ZLZB_SS1103******M_CHART_ZBDW***ZLZB_SS1103*****************/

if  exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_SS1103')
begin
update M_CHART_ZBDW set
mx_id='ZLZB_SS1103'
,mx_name='重点手术的术后非预期的重返手术室再手术率'
,mx_percent_type='0.01'
,mx_zbdw='%'
 where mx_id='ZLZB_SS1103'
end
go

/*********No.14: ZLZB_SS1104******M_CHART_ZBDW***ZLZB_SS1104*****************/

if  exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_SS1104')
begin
update M_CHART_ZBDW set
mx_id='ZLZB_SS1104'
,mx_name='重点手术的平均住院日'
,mx_percent_type='1'
,mx_zbdw='天'
 where mx_id='ZLZB_SS1104'
end
go

/*********No.15: ZLZB_SS1105******M_CHART_ZBDW***ZLZB_SS1105*****************/

if  exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_SS1105')
begin
update M_CHART_ZBDW set
mx_id='ZLZB_SS1105'
,mx_name='重点手术的术前平均住院日'
,mx_percent_type='1、10000'
,mx_zbdw='人、万人'
 where mx_id='ZLZB_SS1105'
end
go

/*********No.16: ZLZB_SS1106******M_CHART_ZBDW***ZLZB_SS1106*****************/

if  exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_SS1106')
begin
update M_CHART_ZBDW set
mx_id='ZLZB_SS1106'
,mx_name='重点手术的次均住院费用'
,mx_percent_type='1、10000'
,mx_zbdw='元、万元'
 where mx_id='ZLZB_SS1106'
end
go

/*********No.17: ZLZB_SS1107******M_CHART_ZBDW***ZLZB_SS1107*****************/

if  exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_SS1107')
begin
update M_CHART_ZBDW set
mx_id='ZLZB_SS1107'
,mx_name='重点手术的药品占住院费用比'
,mx_percent_type='0.01'
,mx_zbdw='%'
 where mx_id='ZLZB_SS1107'
end
go

/*********No.18: ZLZB_SS1108******M_CHART_ZBDW***ZLZB_SS1108*****************/

if  exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_SS1108')
begin
update M_CHART_ZBDW set
mx_id='ZLZB_SS1108'
,mx_name='重点手术的耗材占住院费用比'
,mx_percent_type='0.01'
,mx_zbdw='%'
 where mx_id='ZLZB_SS1108'
end
go
