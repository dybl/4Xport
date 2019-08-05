/************No.1: R001******************Y_COLUMN_MAP_ZBFACT***R001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R001' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb R001'
go

/************No.2: R0010******************Y_COLUMN_MAP_ZBFACT***R0010******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R0010' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R0010','','','R009,R007')
	go

/************No.3: R0011******************Y_COLUMN_MAP_ZBFACT***R0011******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R0011' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R0011','FACT_YY_MZ_YSCQ','kaizsc','')
	go

/************No.4: R0012******************Y_COLUMN_MAP_ZBFACT***R0012******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R0012' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R0012','','','R0011,R007')
	go

/************No.5: R0013******************Y_COLUMN_MAP_ZBFACT***R0013******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R0013' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R0013','FACT_YY_MZ_YSCQ','kanzsc','')
	go

/************No.6: R0014******************Y_COLUMN_MAP_ZBFACT***R0014******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R0014' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R0014','','','R0013,R009')
	go

/************No.7: R0015******************Y_COLUMN_MAP_ZBFACT***R0015******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R0015' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R0015','FACT_YY_MZ_YSCQ','houzsc','')
	go

/************No.8: R0016******************Y_COLUMN_MAP_ZBFACT***R0016******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R0016' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R0016','','','R0015,R009')
	go

/************No.9: R002******************Y_COLUMN_MAP_ZBFACT***R002******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R002' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R002','FACT_YY_MZ_KSYSBC','pbyss','')
	go

/************No.10: R003******************Y_COLUMN_MAP_ZBFACT***R003******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R003' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R003','','','R001,R002')
	go

/************No.11: R004******************Y_COLUMN_MAP_ZBFACT***R004******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R004' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R004','FACT_RLZY_QJFX','qjsc','')
	go

/************No.12: R005******************Y_COLUMN_MAP_ZBFACT***R005******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R005' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb R005'
go

/************No.13: R006******************Y_COLUMN_MAP_ZBFACT***R006******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R006' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R006','','','R005,R007')
	go

/************No.14: R007******************Y_COLUMN_MAP_ZBFACT***R007******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R007' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R007','FACT_YY_MZ_YSCQ','sfcz','')
	go

/************No.15: R008******************Y_COLUMN_MAP_ZBFACT***R008******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R008' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb R008'
go

/************No.16: R009******************Y_COLUMN_MAP_ZBFACT***R009******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='R009' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('R009','FACT_YY_MZ_JZRC','ghrc','')
	go

