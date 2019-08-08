/************No.1: ZLZB_SS0086******************ZBMX***ZLZB_SS0086******************************/

if exists(select 1 from ZBMX where id='ZLZB_SS0086')
begin
	print '新增指标ZLZB_SS0086,但指标ZLZB_SS0086已存在于表ZBMX中,请核查!'
end
if not exists(select 1 from ZBMX where id='ZLZB_SS0086') 
begin 
	