/************No.1: A00309******************M_CHART_ZBDW***A00309******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='A00309')
begin
	print '新增指标A00309,但指标A00309已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='A00309') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('A00309','门诊预约患者平均候诊时间','分钟','1')
	
end
go

/************No.2: A006******************M_CHART_ZBDW***A006******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='A006')
begin
	print '新增指标A006,但指标A006已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='A006') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('A006','预约就诊率','%','0.01')
	
end
go

/************No.3: A115******************M_CHART_ZBDW***A115******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='A115')
begin
	print '新增指标A115,但指标A115已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='A115') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('A115','每名执业医师日均住院工作负担','天','1')
	
end
go

/************No.4: A32001******************M_CHART_ZBDW***A32001******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='A32001')
begin
	print '新增指标A32001,但指标A32001已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='A32001') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('A32001','门诊人次数与出院人次数比','%','0.01')
	
end
go

/************No.5: A32101******************M_CHART_ZBDW***A32101******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='A32101')
begin
	print '新增指标A32101,但指标A32101已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='A32101') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('A32101','门诊下转患者人次数','人、万人','1、10000')
	
end
go

/************No.6: A32102******************M_CHART_ZBDW***A32102******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='A32102')
begin
	print '新增指标A32102,但指标A32102已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='A32102') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('A32102','住院下转患者人次数','人、万人','1、10000')
	
end
go

/************No.7: A32201******************M_CHART_ZBDW***A32201******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='A32201')
begin
	print '新增指标A32201,但指标A32201已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='A32201') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('A32201','特需医疗服务量占比','%','0.01')
	
end
go

/************No.8: B001******************M_CHART_ZBDW***B001******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='B001')
begin
	print '新增指标B001,但指标B001已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='B001') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('B001','医院总费用','元、万元、亿元','1、10000、100000000')
	
end
go

/************No.9: B00103******************M_CHART_ZBDW***B00103******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='B00103')
begin
	print '新增指标B00103,但指标B00103已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='B00103') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('B00103','门急诊费用占比','%','0.01')
	
end
go

/************No.10: B00104******************M_CHART_ZBDW***B00104******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='B00104')
begin
	print '新增指标B00104,但指标B00104已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='B00104') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('B00104','住院费用占比','%','0.01')
	
end
go

/************No.11: B00106******************M_CHART_ZBDW***B00106******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='B00106')
begin
	print '新增指标B00106,但指标B00106已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='B00106') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('B00106','医疗服务收入（不含药品、耗材、检查检验收入）占医疗收入比例','元、万元','1、10000')
	
end
go

/************No.12: B00204******************M_CHART_ZBDW***B00204******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='B00204')
begin
	print '新增指标B00204,但指标B00204已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='B00204') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('B00204','辅助药品总费用占比','%','0.01')
	
end
go

/************No.13: B101******************M_CHART_ZBDW***B101******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='B101')
begin
	print '新增指标B101,但指标B101已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='B101') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('B101','门急诊均次费','元、万元','1、10000')
	
end
go

/************No.14: B102******************M_CHART_ZBDW***B102******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='B102')
begin
	print '新增指标B102,但指标B102已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='B102') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('B102','住院均次费','元、万元、亿元','1、10000、100000000')
	
end
go

/************No.15: B103******************M_CHART_ZBDW***B103******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='B103')
begin
	print '新增指标B103,但指标B103已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='B103') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('B103','门急诊药品均次费','元、万元、亿元','1、10000、100000000')
	
end
go

/************No.16: B104******************M_CHART_ZBDW***B104******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='B104')
begin
	print '新增指标B104,但指标B104已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='B104') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('B104','住院药品均次药费','元、万元、亿元','1、10000、100000000')
	
end
go

/************No.17: B10901******************M_CHART_ZBDW***B10901******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='B10901')
begin
	print '新增指标B10901,但指标B10901已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='B10901') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('B10901','特需医疗服务收入占比','%','0.01')
	
end
go

/************No.18: C002020102******************M_CHART_ZBDW***C002020102******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='C002020102')
begin
	print '新增指标C002020102,但指标C002020102已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='C002020102') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('C002020102','门诊收入中来自医保基金的比例','%','0.01')
	
end
go

/************No.19: C102020102******************M_CHART_ZBDW***C102020102******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='C102020102')
begin
	print '新增指标C102020102,但指标C102020102已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='C102020102') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('C102020102','住院收入中来自医保基金的比例','%','0.01')
	
end
go

/************No.20: D00203******************M_CHART_ZBDW***D00203******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='D00203')
begin
	print '新增指标D00203,但指标D00203已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='D00203') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('D00203','住院患者手术率(%)','%','0.01')
	
end
go

/************No.21: D00204******************M_CHART_ZBDW***D00204******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='D00204')
begin
	print '新增指标D00204,但指标D00204已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='D00204') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('D00204','三四级手术占比(%)','%','0.01')
	
end
go

/************No.22: D009******************M_CHART_ZBDW***D009******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='D009')
begin
	print '新增指标D009,但指标D009已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='D009') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('D009','日间占同期择期手术比例(%)','%','0.01')
	
end
go

/************No.23: D10001******************M_CHART_ZBDW***D10001******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='D10001')
begin
	print '新增指标D10001,但指标D10001已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='D10001') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('D10001','出院患者微创手术(介入)占比','%','0.01')
	
end
go

/************No.24: E00209******************M_CHART_ZBDW***E00209******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='E00209')
begin
	print '新增指标E00209,但指标E00209已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='E00209') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('E00209','住院抗菌药物使用强度','-','1')
	
end
go

/************No.25: E00504******************M_CHART_ZBDW***E00504******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='E00504')
begin
	print '新增指标E00504,但指标E00504已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='E00504') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('E00504','国家组织药品集中采购中标药品使用比例','%','0.01')
	
end
go

/************No.26: E00902******************M_CHART_ZBDW***E00902******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='E00902')
begin
	print '新增指标E00902,但指标E00902已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='E00902') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('E00902','住院患者基本药物使用率','次','1')
	
end
go

/************No.27: E20122******************M_CHART_ZBDW***E20122******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='E20122')
begin
	print '新增指标E20122,但指标E20122已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='E20122') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('E20122','点评处方比例','%','0.01')
	
end
go

/************No.28: E20203******************M_CHART_ZBDW***E20203******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='E20203')
begin
	print '新增指标E20203,但指标E20203已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='E20203') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('E20203','门急诊基本药品处方率(%)','%','0.01')
	
end
go

/************No.29: F50002******************M_CHART_ZBDW***F50002******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='F50002')
begin
	print '新增指标F50002,但指标F50002已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='F50002') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('F50002','优质护理服务病房覆盖率','个','1')
	
end
go

/************No.30: F501******************M_CHART_ZBDW***F501******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='F501')
begin
	print '新增指标F501,但指标F501已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='F501') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('F501','门诊患者满意度','%','0.01')
	
end
go

/************No.31: F502******************M_CHART_ZBDW***F502******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='F502')
begin
	print '新增指标F502,但指标F502已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='F502') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('F502','住院患者满意度','%','0.01')
	
end
go

/************No.32: F503******************M_CHART_ZBDW***F503******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='F503')
begin
	print '新增指标F503,但指标F503已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='F503') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('F503','医务人员满意度','%','0.01')
	
end
go

/************No.33: G30002******************M_CHART_ZBDW***G30002******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='G30002')
begin
	print '新增指标G30002,但指标G30002已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='G30002') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('G30002','基本药物采购(入库)品种数占比','%','0.01')
	
end
go

/************No.34: J00304******************M_CHART_ZBDW***J00304******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='J00304')
begin
	print '新增指标J00304,但指标J00304已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='J00304') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('J00304','通过国家室间质量评价的临床检验项目数','个','1')
	
end
go

/************No.35: J108******************M_CHART_ZBDW***J108******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='J108')
begin
	print '新增指标J108,但指标J108已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='J108') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('J108','大型医用影像设备检查的阳性率(CT、MRI、DSA、SPECT、PET-CT)','%','0.01')
	
end
go

/************No.36: ZBZL_YXZB_DRGS0020502******************M_CHART_ZBDW***ZBZL_YXZB_DRGS0020502******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZBZL_YXZB_DRGS0020502')
begin
	print '新增指标ZBZL_YXZB_DRGS0020502,但指标ZBZL_YXZB_DRGS0020502已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZBZL_YXZB_DRGS0020502') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZBZL_YXZB_DRGS0020502','低风险DRG组死亡率','%','0.01')
	
end
go

/************No.37: ZLZB_AQ0107******************M_CHART_ZBDW***ZLZB_AQ0107******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_AQ0107')
begin
	print '新增指标ZLZB_AQ0107,但指标ZLZB_AQ0107已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_AQ0107') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_AQ0107','手术并发症发生率','%','0.01')
	
end
go

/************No.38: ZLZB_DBZ901******************M_CHART_ZBDW***ZLZB_DBZ901******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_DBZ901')
begin
	print '新增指标ZLZB_DBZ901,但指标ZLZB_DBZ901已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_DBZ901') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_DBZ901','总例数','例','1')
	
end
go

/************No.39: ZLZB_DBZ902******************M_CHART_ZBDW***ZLZB_DBZ902******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_DBZ902')
begin
	print '新增指标ZLZB_DBZ902,但指标ZLZB_DBZ902已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_DBZ902') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_DBZ902','死亡例数','例','1')
	
end
go

/************No.40: ZLZB_DBZ903******************M_CHART_ZBDW***ZLZB_DBZ903******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_DBZ903')
begin
	print '新增指标ZLZB_DBZ903,但指标ZLZB_DBZ903已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_DBZ903') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_DBZ903','平均住院天数','天','1')
	
end
go

/************No.41: ZLZB_DBZ90301******************M_CHART_ZBDW***ZLZB_DBZ90301******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_DBZ90301')
begin
	print '新增指标ZLZB_DBZ90301,但指标ZLZB_DBZ90301已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_DBZ90301') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_DBZ90301','总住院天数','天','1')
	
end
go

/************No.42: ZLZB_DBZ904******************M_CHART_ZBDW***ZLZB_DBZ904******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_DBZ904')
begin
	print '新增指标ZLZB_DBZ904,但指标ZLZB_DBZ904已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_DBZ904') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_DBZ904','术前平均等待天数','天','1')
	
end
go

/************No.43: ZLZB_DBZ90401******************M_CHART_ZBDW***ZLZB_DBZ90401******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_DBZ90401')
begin
	print '新增指标ZLZB_DBZ90401,但指标ZLZB_DBZ90401已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_DBZ90401') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_DBZ90401','术前平均住院天数','天','1')
	
end
go

/************No.44: ZLZB_DBZ905******************M_CHART_ZBDW***ZLZB_DBZ905******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_DBZ905')
begin
	print '新增指标ZLZB_DBZ905,但指标ZLZB_DBZ905已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_DBZ905') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_DBZ905','总费用','元、万元','1、10000')
	
end
go

/************No.45: ZLZB_DBZ906******************M_CHART_ZBDW***ZLZB_DBZ906******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_DBZ906')
begin
	print '新增指标ZLZB_DBZ906,但指标ZLZB_DBZ906已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_DBZ906') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_DBZ906','总药费','元、万元','1、10000')
	
end
go

/************No.46: ZLZB_DBZ907******************M_CHART_ZBDW***ZLZB_DBZ907******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_DBZ907')
begin
	print '新增指标ZLZB_DBZ907,但指标ZLZB_DBZ907已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_DBZ907') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_DBZ907','均次费','元、万元','1、10000')
	
end
go

/************No.47: ZLZB_DBZ908******************M_CHART_ZBDW***ZLZB_DBZ908******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_DBZ908')
begin
	print '新增指标ZLZB_DBZ908,但指标ZLZB_DBZ908已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_DBZ908') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_DBZ908','均次药费','元、万元','1、10000')
	
end
go

/************No.48: ZLZB_YG0073******************M_CHART_ZBDW***ZLZB_YG0073******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YG0073')
begin
	print '新增指标ZLZB_YG0073,但指标ZLZB_YG0073已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YG0073') 
begin 
	print 'This table M_CHART_ZBDW  do not have the zb ZLZB_YG0073'

end
go

/************No.49: ZLZB_YY00040102******************M_CHART_ZBDW***ZLZB_YY00040102******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY00040102')
begin
	print '新增指标ZLZB_YY00040102,但指标ZLZB_YY00040102已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY00040102') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY00040102','初级卫生技术人员占比','%','0.01')
	
end
go

/************No.50: ZLZB_YY00040104******************M_CHART_ZBDW***ZLZB_YY00040104******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY00040104')
begin
	print '新增指标ZLZB_YY00040104,但指标ZLZB_YY00040104已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY00040104') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY00040104','中级卫生技术人员占比','%','0.01')
	
end
go

/************No.51: ZLZB_YY00040106******************M_CHART_ZBDW***ZLZB_YY00040106******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY00040106')
begin
	print '新增指标ZLZB_YY00040106,但指标ZLZB_YY00040106已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY00040106') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY00040106','副高级卫生技术人员占比','%','0.01')
	
end
go

/************No.52: ZLZB_YY00040108******************M_CHART_ZBDW***ZLZB_YY00040108******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY00040108')
begin
	print '新增指标ZLZB_YY00040108,但指标ZLZB_YY00040108已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY00040108') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY00040108','高级卫生技术人员占比','%','0.01')
	
end
go

/************No.53: ZLZB_YY00040109******************M_CHART_ZBDW***ZLZB_YY00040109******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY00040109')
begin
	print '新增指标ZLZB_YY00040109,但指标ZLZB_YY00040109已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY00040109') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY00040109','医护比','%','0.01')
	
end
go

/************No.54: ZLZB_YY000501******************M_CHART_ZBDW***ZLZB_YY000501******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY000501')
begin
	print '新增指标ZLZB_YY000501,但指标ZLZB_YY000501已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY000501') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY000501','麻醉医师人员占比','%','0.01')
	
end
go

/************No.55: ZLZB_YY000503******************M_CHART_ZBDW***ZLZB_YY000503******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY000503')
begin
	print '新增指标ZLZB_YY000503,但指标ZLZB_YY000503已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY000503') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY000503','儿科医师人员占比','%','0.01')
	
end
go

/************No.56: ZLZB_YY000504******************M_CHART_ZBDW***ZLZB_YY000504******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY000504')
begin
	print '新增指标ZLZB_YY000504,但指标ZLZB_YY000504已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY000504') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY000504','重症医师人员占比','%','0.01')
	
end
go

/************No.57: ZLZB_YY000505******************M_CHART_ZBDW***ZLZB_YY000505******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY000505')
begin
	print '新增指标ZLZB_YY000505,但指标ZLZB_YY000505已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY000505') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY000505','病理医师人员占比','%','0.01')
	
end
go

/************No.58: ZLZB_YY000507******************M_CHART_ZBDW***ZLZB_YY000507******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY000507')
begin
	print '新增指标ZLZB_YY000507,但指标ZLZB_YY000507已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY000507') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY000507','中医师人员占比','%','0.01')
	
end
go

/************No.59: ZLZB_YY0041******************M_CHART_ZBDW***ZLZB_YY0041******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY0041')
begin
	print '新增指标ZLZB_YY0041,但指标ZLZB_YY0041已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY0041') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY0041','资产负债率','%','0.01')
	
end
go

/************No.60: ZLZB_YY006601******************M_CHART_ZBDW***ZLZB_YY006601******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY006601')
begin
	print '新增指标ZLZB_YY006601,但指标ZLZB_YY006601已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY006601') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY006601','每百张病床药师人数','人、万人','1、10000')
	
end
go

/************No.61: ZLZB_YY0091******************M_CHART_ZBDW***ZLZB_YY0091******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY0091')
begin
	print '新增指标ZLZB_YY0091,但指标ZLZB_YY0091已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY0091') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY0091','电子病历应用功能水平分级','级','1')
	
end
go

/************No.62: ZLZB_YY00920101******************M_CHART_ZBDW***ZLZB_YY00920101******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY00920101')
begin
	print '新增指标ZLZB_YY00920101,但指标ZLZB_YY00920101已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY00920101') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY00920101','医学人才培养经费','元、万元','1、10000')
	
end
go

/************No.63: ZLZB_YY009202******************M_CHART_ZBDW***ZLZB_YY009202******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY009202')
begin
	print '新增指标ZLZB_YY009202,但指标ZLZB_YY009202已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY009202') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY009202','人员支出占业务支出比重','%','0.01')
	
end
go

/************No.64: ZLZB_YY009204******************M_CHART_ZBDW***ZLZB_YY009204******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY009204')
begin
	print '新增指标ZLZB_YY009204,但指标ZLZB_YY009204已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY009204') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY009204','万元收入能耗支出','元、万元','1、10000')
	
end
go

/************No.65: ZLZB_YY0093******************M_CHART_ZBDW***ZLZB_YY0093******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY0093')
begin
	print '新增指标ZLZB_YY0093,但指标ZLZB_YY0093已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY0093') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY0093','收支结余','元、万元','1、10000')
	
end
go

/************No.66: ZLZB_YY0094******************M_CHART_ZBDW***ZLZB_YY0094******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY0094')
begin
	print '新增指标ZLZB_YY0094,但指标ZLZB_YY0094已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY0094') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY0094','医院接受其他医院（尤其对口支援医院、医联体内医院）进修并返回原医院独立工作人数占比','%','0.01')
	
end
go

/************No.67: ZLZB_YY0095******************M_CHART_ZBDW***ZLZB_YY0095******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY0095')
begin
	print '新增指标ZLZB_YY0095,但指标ZLZB_YY0095已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY0095') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY0095','医院住院医师首次参加医师资格考试通过率','%','0.01')
	
end
go

/************No.68: ZLZB_YY0096******************M_CHART_ZBDW***ZLZB_YY0096******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY0096')
begin
	print '新增指标ZLZB_YY0096,但指标ZLZB_YY0096已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY0096') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY0096','临床带教教师和指导医师接受教育教学培训人次数','次','1')
	
end
go

/************No.69: ZLZB_YY0097******************M_CHART_ZBDW***ZLZB_YY0097******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY0097')
begin
	print '新增指标ZLZB_YY0097,但指标ZLZB_YY0097已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY0097') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY0097','承担医学教育的人数','人、万人','1、10000')
	
end
go

/************No.70: ZLZB_YY0098******************M_CHART_ZBDW***ZLZB_YY0098******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY0098')
begin
	print '新增指标ZLZB_YY0098,但指标ZLZB_YY0098已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY0098') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY0098','发表教学论文的数量','篇','1')
	
end
go

/************No.71: ZLZB_YY0099******************M_CHART_ZBDW***ZLZB_YY0099******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY0099')
begin
	print '新增指标ZLZB_YY0099,但指标ZLZB_YY0099已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY0099') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY0099','每百名卫生技术人员科研项目经费','元、万元','1、10000')
	
end
go

/************No.72: ZLZB_YY0100******************M_CHART_ZBDW***ZLZB_YY0100******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY0100')
begin
	print '新增指标ZLZB_YY0100,但指标ZLZB_YY0100已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY0100') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY0100','每百名卫生技术人员科研成果转化金额','元、万元','1、10000')
	
end
go

/************No.73: ZLZB_YY0101******************M_CHART_ZBDW***ZLZB_YY0101******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY0101')
begin
	print '新增指标ZLZB_YY0101,但指标ZLZB_YY0101已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY0101') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY0101','公共信用综合评价等级','级','1')
	
end
go

/************No.74: A32202******************M_CHART_ZBDW***A32202******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='A32202')
begin
	print '新增指标A32202,但指标A32202已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='A32202') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('A32202','门急诊特需医疗服务量','-','1')
	
end
go

/************No.75: A32203******************M_CHART_ZBDW***A32203******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='A32203')
begin
	print '新增指标A32203,但指标A32203已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='A32203') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('A32203','住院特需医疗服务量','-','1')
	
end
go

/************No.76: A323******************M_CHART_ZBDW***A323******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='A323')
begin
	print '新增指标A323,但指标A323已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='A323') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('A323','医疗服务量','-','1')
	
end
go

/************No.77: A32301******************M_CHART_ZBDW***A32301******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='A32301')
begin
	print '新增指标A32301,但指标A32301已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='A32301') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('A32301','门急诊医疗服务量','-','1')
	
end
go

/************No.78: A32302******************M_CHART_ZBDW***A32302******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='A32302')
begin
	print '新增指标A32302,但指标A32302已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='A32302') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('A32302','住院医疗服务量','-','1')
	
end
go

/************No.79: B10902******************M_CHART_ZBDW***B10902******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='B10902')
begin
	print '新增指标B10902,但指标B10902已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='B10902') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('B10902','门急诊特需医疗服务收入','元、万元','1、10000')
	
end
go

/************No.80: B10903******************M_CHART_ZBDW***B10903******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='B10903')
begin
	print '新增指标B10903,但指标B10903已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='B10903') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('B10903','住院特需医疗服务收入','元、万元','1、10000')
	
end
go

/************No.81: ZLZB_YY004101******************M_CHART_ZBDW***ZLZB_YY004101******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY004101')
begin
	print '新增指标ZLZB_YY004101,但指标ZLZB_YY004101已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY004101') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY004101','资产总额','元、万元','1、10000')
	
end
go

/************No.82: ZLZB_YY004102******************M_CHART_ZBDW***ZLZB_YY004102******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY004102')
begin
	print '新增指标ZLZB_YY004102,但指标ZLZB_YY004102已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY004102') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY004102','负债总额','元、万元','1、10000')
	
end
go

/************No.83: ZLZB_YY009402******************M_CHART_ZBDW***ZLZB_YY009402******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY009402')
begin
	print '新增指标ZLZB_YY009402,但指标ZLZB_YY009402已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY009402') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY009402','医院接受其他医院（尤其对口支援医院、医联体内医院）进修并返回原医院独立工作人数','人、万人','1、10000')
	
end
go

/************No.84: ZLZB_YY009401******************M_CHART_ZBDW***ZLZB_YY009401******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY009401')
begin
	print '新增指标ZLZB_YY009401,但指标ZLZB_YY009401已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY009401') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY009401','医院接受其他医院（尤其对口支援医院、医联体内医院）进修人数','人、万人','1、10000')
	
end
go

/************No.85: ZLZB_YY009502******************M_CHART_ZBDW***ZLZB_YY009502******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY009502')
begin
	print '新增指标ZLZB_YY009502,但指标ZLZB_YY009502已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY009502') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY009502','医院住院医师首次参加医师资格考试通过人数','人、万人','1、10000')
	
end
go

/************No.86: ZLZB_YY009501******************M_CHART_ZBDW***ZLZB_YY009501******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY009501')
begin
	print '新增指标ZLZB_YY009501,但指标ZLZB_YY009501已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY009501') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY009501','医院住院医师首次参加医师资格考试人数','人、万人','1、10000')
	
end
go

/************No.87: ZLZB_YY009901******************M_CHART_ZBDW***ZLZB_YY009901******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY009901')
begin
	print '新增指标ZLZB_YY009901,但指标ZLZB_YY009901已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY009901') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY009901','科研项目经费*100','元、万元','1、10000')
	
end
go

/************No.88: ZLZB_YY010001******************M_CHART_ZBDW***ZLZB_YY010001******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY010001')
begin
	print '新增指标ZLZB_YY010001,但指标ZLZB_YY010001已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='ZLZB_YY010001') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('ZLZB_YY010001','科研成果转化金额*100','元、万元','1、10000')
	
end
go

/************No.89: J10901******************M_CHART_ZBDW***J10901******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='J10901')
begin
	print '新增指标J10901,但指标J10901已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='J10901') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('J10901','大型医用设备检查阳性例数','例','1')
	
end
go

/************No.90: J109******************M_CHART_ZBDW***J109******************************/

if exists(select 1 from M_CHART_ZBDW where mx_id='J109')
begin
	print '新增指标J109,但指标J109已存在于表M_CHART_ZBDW中,请核查!'
end
if not exists(select 1 from M_CHART_ZBDW where mx_id='J109') 
begin 
	INSERT M_CHART_ZBDW ( mx_id,mx_name,mx_zbdw,mx_percent_type)
	values('J109','大型医用设备检查总例数','例','1')
	
end
go

