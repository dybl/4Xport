/************No.1: ZLZB_SS0086******************ZBMX***ZLZB_SS0086******************************/

if exists(select 1 from ZBMX where id='ZLZB_SS0086')
begin
	print '����ָ��ZLZB_SS0086,��ָ��ZLZB_SS0086�Ѵ����ڱ�ZBMX��,��˲�!'
end
if not exists(select 1 from ZBMX where id='ZLZB_SS0086') 
begin 
	