/************No.1: A001******************Y_COLUMN_MAP_ZBFACT***A001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A001','FACT_YY_MZ_JZRC','ghrc','')
	go

/************No.2: A001002******************Y_COLUMN_MAP_ZBFACT***A001002******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A001002' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A001002','FACT_YY_MZ_JZRC','ghrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A001002','FACT_YY_MZ_JZRC','yblxkey','')
	go

/************No.3: A001003******************Y_COLUMN_MAP_ZBFACT***A001003******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A001003' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A001003','','','A001002,C001')
	go

/************No.4: A00101******************Y_COLUMN_MAP_ZBFACT***A00101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A00101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A00101','FACT_YY_MZ_JZRC','ghrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A00101','FACT_YY_MZ_JZRC','mjzkey','')
	go

/************No.5: A00102******************Y_COLUMN_MAP_ZBFACT***A00102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A00102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A00102','FACT_YY_MZ_JZRC','ghrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A00102','FACT_YY_MZ_JZRC','mjzkey','')
	go

/************No.6: A0010502******************Y_COLUMN_MAP_ZBFACT***A0010502******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A0010502' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A0010502','FACT_YY_MZ_PATID','patid','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A0010502','FACT_YY_MZ_PATID','ybbz','')
	go

/************No.7: A0010503******************Y_COLUMN_MAP_ZBFACT***A0010503******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A0010503' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A0010503','FACT_YY_MZ_PATID','patid','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A0010503','FACT_YY_MZ_PATID','ybbz','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A0010503','FACT_YY_MZ_PATID','cfzbz','')
	go

/************No.8: A0010903******************Y_COLUMN_MAP_ZBFACT***A0010903******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A0010903' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A0010903'
go

/************No.9: A0010904******************Y_COLUMN_MAP_ZBFACT***A0010904******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A0010904' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A0010904','','','A0010903,A00101')
	go

/************No.10: A0010905******************Y_COLUMN_MAP_ZBFACT***A0010905******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A0010905' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A0010905'
go

/************No.11: A00110******************Y_COLUMN_MAP_ZBFACT***A00110******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A00110' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A00110','FACT_YY_MZ_JZRC','ghrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A00110','FACT_YY_MZ_JZRC','ghlbkey','')
	go

/************No.12: A001105******************Y_COLUMN_MAP_ZBFACT***A001105******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A001105' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A001105','','','A00110,A00803')
	go

/************No.13: A00140******************Y_COLUMN_MAP_ZBFACT***A00140******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A00140' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A00140','FACT_YY_MZ_JZRC','ghrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A00140','FACT_YY_MZ_JZRC','mjzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A00140','FACT_YY_MZ_JZRC','kskey','')
	go

/************No.14: A0014001******************Y_COLUMN_MAP_ZBFACT***A0014001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A0014001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A0014001','FACT_YY_MZ_JZRC','ghrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A0014001','FACT_YY_MZ_JZRC','mjzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A0014001','FACT_YY_MZ_JZRC','kskey','')
	go

/************No.15: A00141******************Y_COLUMN_MAP_ZBFACT***A00141******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A00141' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A00141','','','A00140,A001')
	go

/************No.16: A00142******************Y_COLUMN_MAP_ZBFACT***A00142******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A00142' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A00142','FACT_YY_MZ_JZRC','zyfywlfrc','')
	go

/************No.17: A00143******************Y_COLUMN_MAP_ZBFACT***A00143******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A00143' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A00143','','','A00142,A001')
	go

/************No.18: A002******************Y_COLUMN_MAP_ZBFACT***A002******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A002' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A002','FACT_YY_MZ_TJRC','tjrc','')
	go

/************No.19: A0020******************Y_COLUMN_MAP_ZBFACT***A0020******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A0020' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A0020'
go

/************No.20: A002001******************Y_COLUMN_MAP_ZBFACT***A002001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A002001' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A002001'
go

/************No.21: A002002******************Y_COLUMN_MAP_ZBFACT***A002002******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A002002' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A002002','','','A002001,A0020')
	go

/************No.22: A00201******************Y_COLUMN_MAP_ZBFACT***A00201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A00201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A00201','','','A002,A001')
	go

/************No.23: A0021******************Y_COLUMN_MAP_ZBFACT***A0021******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A0021' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A0021'
go

/************No.24: A002101******************Y_COLUMN_MAP_ZBFACT***A002101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A002101' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A002101'
go

/************No.25: A002102******************Y_COLUMN_MAP_ZBFACT***A002102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A002102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A002102','','','A002101,A0021')
	go

/************No.26: A00301******************Y_COLUMN_MAP_ZBFACT***A00301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A00301' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A00301','','','A003,A001')
	go

/************No.27: A00401******************Y_COLUMN_MAP_ZBFACT***A00401******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A00401' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A00401','FACT_YY_MZ_YYRC','yxyyjzrc','')
	go

/************No.28: A00803******************Y_COLUMN_MAP_ZBFACT***A00803******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A00803' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A00803','FACT_YYGH_PBXX','ghhxzs','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A00803','FACT_YYGH_PBXX','zjysbz','')
	go

/************No.29: A101******************Y_COLUMN_MAP_ZBFACT***A101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A101','FACT_YY_ZY_RYYWLFX','ryrc','')
	go

/************No.30: A10102******************Y_COLUMN_MAP_ZBFACT***A10102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A10102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A10102','','','A101,A001')
	go

/************No.31: A10103******************Y_COLUMN_MAP_ZBFACT***A10103******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A10103' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A10103','FACT_YY_ZY_RYYWLFX','patid','')
	go

/************No.32: A10104******************Y_COLUMN_MAP_ZBFACT***A10104******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A10104' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A10104','','','A101,A10103')
	go

/************No.33: A102******************Y_COLUMN_MAP_ZBFACT***A102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A102','FACT_YY_ZY_CYYWLFX','cyrc','')
	go

/************No.34: A10213******************Y_COLUMN_MAP_ZBFACT***A10213******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A10213' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A10213','FACT_YY_ZY_CYYWLFX','cyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A10213','FACT_YY_ZY_CYYWLFX','zyypbz','')
	go

/************No.35: A1021301******************Y_COLUMN_MAP_ZBFACT***A1021301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1021301' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1021301','','','A10213,A102')
	go

/************No.36: A10214******************Y_COLUMN_MAP_ZBFACT***A10214******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A10214' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A10214','FACT_YY_ZY_CYYWLFX','cyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A10214','FACT_YY_ZY_CYYWLFX','zyhlbz','')
	go

/************No.37: A1021401******************Y_COLUMN_MAP_ZBFACT***A1021401******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1021401' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1021401','','','A10214,A102')
	go

/************No.38: A10215******************Y_COLUMN_MAP_ZBFACT***A10215******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A10215' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A10215','FACT_YY_ZY_CYYWLFX','cyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A10215','FACT_YY_ZY_CYYWLFX','zyzlbz','')
	go

/************No.39: A1021501******************Y_COLUMN_MAP_ZBFACT***A1021501******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1021501' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1021501','','','A10215,A102')
	go

/************No.40: A10216******************Y_COLUMN_MAP_ZBFACT***A10216******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A10216' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A10216','FACT_YY_MZ_JZRC','zyyzhzlrc','')
	go

/************No.41: A1021601******************Y_COLUMN_MAP_ZBFACT***A1021601******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1021601' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1021601','','','A10216,A102')
	go

/************No.42: A10217******************Y_COLUMN_MAP_ZBFACT***A10217******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A10217' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A10217','FACT_YY_MZ_JZRC','zyyzhzlrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A10217','FACT_YY_MZ_JZRC','mjzkey','')
	go

/************No.43: A1021701******************Y_COLUMN_MAP_ZBFACT***A1021701******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1021701' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1021701','','','A10217,A00101')
	go

/************No.44: A10218******************Y_COLUMN_MAP_ZBFACT***A10218******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A10218' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A10218','FACT_YY_MZ_JZRC','zyyfbjfwrc','')
	go

/************No.45: A1021801******************Y_COLUMN_MAP_ZBFACT***A1021801******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1021801' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1021801','','','A10218,A00101')
	go

/************No.46: A10219******************Y_COLUMN_MAP_ZBFACT***A10219******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A10219' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A10219','FACT_YY_MZ_JZRC','zyzlxmcs','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A10219','FACT_YY_MZ_JZRC','mjzkey','')
	go

/************No.47: A1021901******************Y_COLUMN_MAP_ZBFACT***A1021901******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1021901' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1021901','','','A10219,A00101')
	go

/************No.48: A1024******************Y_COLUMN_MAP_ZBFACT***A1024******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1024' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1024','FACT_YY_ZY_CYYWLFX','cyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1024','FACT_YY_ZY_CYYWLFX','ycfbz','')
	go

/************No.49: A102401******************Y_COLUMN_MAP_ZBFACT***A102401******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A102401' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A102401','FACT_YY_ZY_CYYWLFX','cyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A102401','FACT_YY_ZY_CYYWLFX','ycfbz','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A102401','FACT_YY_ZY_CYYWLFX','cyfskey','')
	go

/************No.50: A102402******************Y_COLUMN_MAP_ZBFACT***A102402******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A102402' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A102402','','','A102401,A1024')
	go

/************No.51: A104******************Y_COLUMN_MAP_ZBFACT***A104******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A104' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A104','FACT_YY_ZYBRZYL','sws','')
	go

/************No.52: A105******************Y_COLUMN_MAP_ZBFACT***A105******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A105' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A105','','','A111,A102')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A105','','','A111,A102')
	go

/************No.53: A106******************Y_COLUMN_MAP_ZBFACT***A106******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A106' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A106','','','A102,A113')
	go

/************No.54: A107******************Y_COLUMN_MAP_ZBFACT***A107******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A107' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A107','','','A112,A110')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A107','','','A112,A110')
	go

/************No.55: A108******************Y_COLUMN_MAP_ZBFACT***A108******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A108' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A108','','','B00102,A112')
	go

/************No.56: A109******************Y_COLUMN_MAP_ZBFACT***A109******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A109' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A109','','','A112,A113')
	go

/************No.57: A110******************Y_COLUMN_MAP_ZBFACT***A110******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A110' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A110','FACT_YY_ZY_CWSYQK','kfcw','')
	go

/************No.58: A111******************Y_COLUMN_MAP_ZBFACT***A111******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A111' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A111','FACT_YY_ZY_CYYWLFX','zyts','')
	go

/************No.59: A11104******************Y_COLUMN_MAP_ZBFACT***A11104******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A11104' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11104','FACT_YY_ZY_CYYWLFX','zyts','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11104','FACT_YY_ZY_CYYWLFX','jtbcbz','')
	go

/************No.60: A11105******************Y_COLUMN_MAP_ZBFACT***A11105******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A11105' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11105','','','A11104,ZLZB_YY000101')
	go

/************No.61: A1110601******************Y_COLUMN_MAP_ZBFACT***A1110601******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1110601' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1110601','','','A111060101,A111060202')
	go

/************No.62: A111060101******************Y_COLUMN_MAP_ZBFACT***A111060101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A111060101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A111060101','FACT_YY_ZY_CYYWLFX','zyts','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A111060101','FACT_YY_ZY_CYYWLFX','ybbz','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A111060101','FACT_YY_ZY_CYYWLFX','yblxkey','')
	go

/************No.63: A1110602******************Y_COLUMN_MAP_ZBFACT***A1110602******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1110602' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1110602','','','A111060201,A111060202')
	go

/************No.64: A111060201******************Y_COLUMN_MAP_ZBFACT***A111060201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A111060201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A111060201','FACT_YY_ZY_CYYWLFX','zyts','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A111060201','FACT_YY_ZY_CYYWLFX','ybbz','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A111060201','FACT_YY_ZY_CYYWLFX','yblxkey','')
	go

/************No.65: A111060202******************Y_COLUMN_MAP_ZBFACT***A111060202******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A111060202' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A111060202','FACT_YY_ZY_CYYWLFX','zyts','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A111060202','FACT_YY_ZY_CYYWLFX','ybbz','')
	go

/************No.66: A112******************Y_COLUMN_MAP_ZBFACT***A112******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A112' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A112','FACT_YY_ZY_CWSYQK','zycw','')
	go

/************No.67: A1120101******************Y_COLUMN_MAP_ZBFACT***A1120101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1120101' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A1120101'
go

/************No.68: A1120102******************Y_COLUMN_MAP_ZBFACT***A1120102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1120102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1120102','','','A1120101,A112')
	go

/************No.69: A11202******************Y_COLUMN_MAP_ZBFACT***A11202******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A11202' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11202','FACT_YY_ZY_CWSYQK','zycw','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11202','FACT_YY_ZY_CWSYQK','kskey','')
	go

/************No.70: A1120201******************Y_COLUMN_MAP_ZBFACT***A1120201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1120201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1120201','','','A11202,A112')
	go

/************No.71: A11203******************Y_COLUMN_MAP_ZBFACT***A11203******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A11203' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11203','FACT_YY_ZY_CWSYQK','zycw','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11203','FACT_YY_ZY_CWSYQK','kskey','')
	go

/************No.72: A1120301******************Y_COLUMN_MAP_ZBFACT***A1120301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1120301' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1120301','','','A11203,A112')
	go

/************No.73: A11204******************Y_COLUMN_MAP_ZBFACT***A11204******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A11204' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11204','FACT_YY_ZY_CWSYQK','zycw','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11204','FACT_YY_ZY_CWSYQK','kskey','')
	go

/************No.74: A1120401******************Y_COLUMN_MAP_ZBFACT***A1120401******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1120401' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1120401','','','A11204,A112')
	go

/************No.75: A11205******************Y_COLUMN_MAP_ZBFACT***A11205******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A11205' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11205','FACT_YY_ZY_CWSYQK','zycw','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11205','FACT_YY_ZY_CWSYQK','kskey','')
	go

/************No.76: A1120501******************Y_COLUMN_MAP_ZBFACT***A1120501******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1120501' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1120501','','','A11205,A112')
	go

/************No.77: A11206******************Y_COLUMN_MAP_ZBFACT***A11206******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A11206' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11206','FACT_YY_ZY_CWSYQK','zycw','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11206','FACT_YY_ZY_CWSYQK','kskey','')
	go

/************No.78: A1120601******************Y_COLUMN_MAP_ZBFACT***A1120601******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1120601' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1120601','','','A11206,A112')
	go

/************No.79: A11208******************Y_COLUMN_MAP_ZBFACT***A11208******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A11208' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11208','FACT_YY_ZY_CWSYQK','zycw','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11208','FACT_YY_ZY_CWSYQK','kskey','')
	go

/************No.80: A1120801******************Y_COLUMN_MAP_ZBFACT***A1120801******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1120801' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1120801','','','A11208,A112')
	go

/************No.81: A11209******************Y_COLUMN_MAP_ZBFACT***A11209******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A11209' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11209','','','A112,A001')
	go

/************No.82: A11210******************Y_COLUMN_MAP_ZBFACT***A11210******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A11210' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11210','FACT_YY_ZY_CYYWLFX','zyts','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11210','FACT_YY_ZY_CYYWLFX','wzrc','')
	go

/************No.83: A1121001******************Y_COLUMN_MAP_ZBFACT***A1121001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1121001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1121001','','','A11210,A112')
	go

/************No.84: A11211******************Y_COLUMN_MAP_ZBFACT***A11211******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A11211' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11211','FACT_YY_ZY_CWSYQK','zycw','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11211','FACT_YY_ZY_CWSYQK','kskey','')
	go

/************No.85: A1121101******************Y_COLUMN_MAP_ZBFACT***A1121101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1121101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1121101','','','A11211,A112')
	go

/************No.86: A11212******************Y_COLUMN_MAP_ZBFACT***A11212******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A11212' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11212','FACT_YY_ZY_CYYWLFX','zyts','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11212','FACT_YY_ZY_CYYWLFX','yebz','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A11212','FACT_YY_ZY_CYYWLFX','ycfbz','')
	go

/************No.87: A1121201******************Y_COLUMN_MAP_ZBFACT***A1121201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1121201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1121201','','','A11212,A112')
	go

/************No.88: A113******************Y_COLUMN_MAP_ZBFACT***A113******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A113' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A113','','','A110')
	go

/************No.89: A114******************Y_COLUMN_MAP_ZBFACT***A114******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A114' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A114','','','A102,ZLZB_YY000401')
	go

/************No.90: A322******************Y_COLUMN_MAP_ZBFACT***A322******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A322' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A322','','','A32202,A32203')
	go

/************No.91: A32201******************Y_COLUMN_MAP_ZBFACT***A32201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A32201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A32201','','','A322,A323')
	go

/************No.92: A323******************Y_COLUMN_MAP_ZBFACT***A323******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A323' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A323'
go

/************No.93: B001******************Y_COLUMN_MAP_ZBFACT***B001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B001','','','B00101,B00102')
	go

/************No.94: B00101******************Y_COLUMN_MAP_ZBFACT***B00101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00101','FACT_FY_MZ_FYFX','ghfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00101','FACT_FY_MZ_FYFX','cffy','')
	go

/************No.95: B0010106******************Y_COLUMN_MAP_ZBFACT***B0010106******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B0010106' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B0010106'
go

/************No.96: B0010107******************Y_COLUMN_MAP_ZBFACT***B0010107******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B0010107' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0010107','FACT_FY_MZ_FYFX','ghfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0010107','FACT_FY_MZ_FYFX','cffy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0010107','FACT_FY_MZ_FYFX','dxmkey','')
	go

/************No.97: B00102******************Y_COLUMN_MAP_ZBFACT***B00102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00102','FACT_FY_ZY_FYFX','zfy','')
	go

/************No.98: B0010201******************Y_COLUMN_MAP_ZBFACT***B0010201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B0010201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0010201','','','B0010202,B001')
	go

/************No.99: B0010202******************Y_COLUMN_MAP_ZBFACT***B0010202******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B0010202' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0010202','','','B0010203,B0010204')
	go

/************No.100: B0010203******************Y_COLUMN_MAP_ZBFACT***B0010203******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B0010203' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0010203','FACT_FY_MZ_FYFX','zyzljsfyfy','')
	go

/************No.101: B0010204******************Y_COLUMN_MAP_ZBFACT***B0010204******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B0010204' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0010204','FACT_FY_ZY_FYFX','zyzljsfyfy','')
	go

/************No.102: B0010206******************Y_COLUMN_MAP_ZBFACT***B0010206******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B0010206' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B0010206'
go

/************No.103: B0010207******************Y_COLUMN_MAP_ZBFACT***B0010207******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B0010207' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0010207','FACT_FY_ZY_FYFX','zfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0010207','FACT_FY_ZY_FYFX','dxmkey','')
	go

/************No.104: B0010208******************Y_COLUMN_MAP_ZBFACT***B0010208******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B0010208' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0010208','FACT_FY_ZY_FYFX','zrwfy','')
	go

/************No.105: B001020801******************Y_COLUMN_MAP_ZBFACT***B001020801******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B001020801' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B001020801','','','B0010208,B00102')
	go

/************No.106: B00107******************Y_COLUMN_MAP_ZBFACT***B00107******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00107' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00107','','','B0010701,B0010702')
	go

/************No.107: B00110******************Y_COLUMN_MAP_ZBFACT***B00110******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00110' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00110','','','B0010106,B0010206')
	go

/************No.108: B00111******************Y_COLUMN_MAP_ZBFACT***B00111******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00111' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00111','','','B0010107,B0010207')
	go

/************No.109: B00112******************Y_COLUMN_MAP_ZBFACT***B00112******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00112' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00112','','','B00111,B001')
	go

/************No.110: B002******************Y_COLUMN_MAP_ZBFACT***B002******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B002' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B002','','','B00201,B00202')
	go

/************No.111: B00201******************Y_COLUMN_MAP_ZBFACT***B00201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00201','FACT_YP_MZ_FYFX','ypfy','')
	go

/************No.112: B0020101******************Y_COLUMN_MAP_ZBFACT***B0020101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B0020101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0020101','FACT_YP_MZ_FYFX','ypfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0020101','FACT_YP_MZ_FYFX','mjzkey','')
	go

/************No.113: B0020102******************Y_COLUMN_MAP_ZBFACT***B0020102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B0020102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0020102','FACT_YP_MZ_FYFX','ypfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0020102','FACT_YP_MZ_FYFX','mjzkey','')
	go

/************No.114: B00202******************Y_COLUMN_MAP_ZBFACT***B00202******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00202' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00202','FACT_YP_ZY_FYFX','ypfy','')
	go

/************No.115: B00205******************Y_COLUMN_MAP_ZBFACT***B00205******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00205' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00205','','','B0020501,B0020502')
	go

/************No.116: B004******************Y_COLUMN_MAP_ZBFACT***B004******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B004' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B004','','','B00401,B00402')
	go

/************No.117: B0040103******************Y_COLUMN_MAP_ZBFACT***B0040103******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B0040103' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0040103','FACT_FY_MZ_FYFX','lczdsjfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0040103','FACT_FY_MZ_FYFX','mjzkey','')
	go

/************No.118: B0040203******************Y_COLUMN_MAP_ZBFACT***B0040203******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B0040203' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0040203','FACT_FY_ZY_FYFX','lczdsjfy','')
	go

/************No.119: B00404******************Y_COLUMN_MAP_ZBFACT***B00404******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00404' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00404','','','B0040103,B0040203')
	go

/************No.120: B0040401******************Y_COLUMN_MAP_ZBFACT***B0040401******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B0040401' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0040401','','','B00404,B004')
	go

/************No.121: B005******************Y_COLUMN_MAP_ZBFACT***B005******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B005' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B005','','','B00501,B00502')
	go

/************No.122: B00503******************Y_COLUMN_MAP_ZBFACT***B00503******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00503' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00503','','','B005,B001')
	go

/************No.123: B009******************Y_COLUMN_MAP_ZBFACT***B009******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B009' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B009','','','B003,B004')
	go

/************No.124: B00901******************Y_COLUMN_MAP_ZBFACT***B00901******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00901' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00901','','','B009,B001')
	go

/************No.125: B00902******************Y_COLUMN_MAP_ZBFACT***B00902******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00902' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00902','','','B00301,B00401')
	go

/************No.126: B0090201******************Y_COLUMN_MAP_ZBFACT***B0090201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B0090201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0090201','','','B00902,A001')
	go

/************No.127: B00903******************Y_COLUMN_MAP_ZBFACT***B00903******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00903' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00903','','','B00302,B00402')
	go

/************No.128: B0090301******************Y_COLUMN_MAP_ZBFACT***B0090301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B0090301' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0090301','','','B00903,A102')
	go

/************No.129: B101******************Y_COLUMN_MAP_ZBFACT***B101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B101','','','B00101,A001')
	go

/************No.130: B10101******************Y_COLUMN_MAP_ZBFACT***B10101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B10101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B10101','','','B0010101,A00101')
	go

/************No.131: B10102******************Y_COLUMN_MAP_ZBFACT***B10102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B10102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B10102','','','B0010102,A00102')
	go

/************No.132: B102******************Y_COLUMN_MAP_ZBFACT***B102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B102','','','B00102,A102')
	go

/************No.133: B103******************Y_COLUMN_MAP_ZBFACT***B103******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B103' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B103','','','B00201,A001')
	go

/************No.134: B10301******************Y_COLUMN_MAP_ZBFACT***B10301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B10301' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B10301','','','B0020101,A00101')
	go

/************No.135: B10302******************Y_COLUMN_MAP_ZBFACT***B10302******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B10302' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B10302','','','B0020102,A00102')
	go

/************No.136: B104******************Y_COLUMN_MAP_ZBFACT***B104******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B104' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B104','','','B00202,A102')
	go

/************No.137: C001******************Y_COLUMN_MAP_ZBFACT***C001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C001','FACT_YY_MZ_JZRC','ybghrc','')
	go

/************No.138: C00101******************Y_COLUMN_MAP_ZBFACT***C00101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C00101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C00101','','','A0010503,A0010502')
	go

/************No.139: C00104******************Y_COLUMN_MAP_ZBFACT***C00104******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C00104' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C00104','FACT_YY_MZ_JZRC','ghrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C00104','FACT_YY_MZ_JZRC','yblxkey','')
	go

/************No.140: C0010401******************Y_COLUMN_MAP_ZBFACT***C0010401******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C0010401' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C0010401','','','C00104,C001')
	go

/************No.141: C00214******************Y_COLUMN_MAP_ZBFACT***C00214******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C00214' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C00214','FACT_YB_YBZKFX','zfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C00214','FACT_YB_YBZKFX','yblxkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C00214','FACT_YB_YBZKFX','mzzy','')
	go

/************No.142: C0021401******************Y_COLUMN_MAP_ZBFACT***C0021401******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C0021401' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C0021401','','','C00214,C00104')
	go

/************No.143: C00216******************Y_COLUMN_MAP_ZBFACT***C00216******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C00216' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C00216','FACT_YB_YBZKFX','zfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C00216','FACT_YB_YBZKFX','yblxkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C00216','FACT_YB_YBZKFX','mzzykey','')
	go

/************No.144: C0021601******************Y_COLUMN_MAP_ZBFACT***C0021601******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C0021601' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C0021601','FACT_YB_YBZKFX','zffy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C0021601','FACT_YB_YBZKFX','yblxkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C0021601','FACT_YB_YBZKFX','mzzykey','')
	go

/************No.145: C0021602******************Y_COLUMN_MAP_ZBFACT***C0021602******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C0021602' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C0021602','','','C0021601,C00216')
	go

/************No.146: C0021603******************Y_COLUMN_MAP_ZBFACT***C0021603******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C0021603' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C0021603','FACT_YB_YBZKFX','ybzfy_zfje','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C0021603','FACT_YB_YBZKFX','yblxkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C0021603','FACT_YB_YBZKFX','mzzykey','')
	go

/************No.147: C0021604******************Y_COLUMN_MAP_ZBFACT***C0021604******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C0021604' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C0021604','','','C0021603,C00216')
	go

/************No.148: C0021605******************Y_COLUMN_MAP_ZBFACT***C0021605******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C0021605' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C0021605','FACT_YB_YBZKFX','ybzfy_zfje','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C0021605','FACT_YB_YBZKFX','zffy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C0021605','FACT_YB_YBZKFX','yblxkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C0021605','FACT_YB_YBZKFX','mzzykey','')
	go

/************No.149: C0021606******************Y_COLUMN_MAP_ZBFACT***C0021606******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C0021606' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C0021606','','','C0021605,C00216')
	go

/************No.150: C0021702******************Y_COLUMN_MAP_ZBFACT***C0021702******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C0021702' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C0021702','','','C1021701,C10217')
	go

/************No.151: C00304******************Y_COLUMN_MAP_ZBFACT***C00304******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C00304' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C00304','FACT_YB_YBZKFX','ypfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C00304','FACT_YB_YBZKFX','yblxkey','')
	go

/************No.152: C0030401******************Y_COLUMN_MAP_ZBFACT***C0030401******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C0030401' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C0030401','','','C00304,C00104')
	go

/************No.153: C10101******************Y_COLUMN_MAP_ZBFACT***C10101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C10101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C10101','FACT_YY_ZY_CYYWLFX','cyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C10101','FACT_YY_ZY_CYYWLFX','ybbz','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C10101','FACT_YY_ZY_CYYWLFX','yblxkey','')
	go

/************No.154: C10215******************Y_COLUMN_MAP_ZBFACT***C10215******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C10215' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C10215','FACT_YB_YBZKFX','zfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C10215','FACT_YB_YBZKFX','yblxkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C10215','FACT_YB_YBZKFX','mzzykey','')
	go

/************No.155: C1021501******************Y_COLUMN_MAP_ZBFACT***C1021501******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C1021501' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021501','','','C10215,C10101')
	go

/************No.156: C10216******************Y_COLUMN_MAP_ZBFACT***C10216******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C10216' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C10216','FACT_YB_YBZKFX','zfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C10216','FACT_YB_YBZKFX','yblxkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C10216','FACT_YB_YBZKFX','mzzykey','')
	go

/************No.157: C1021601******************Y_COLUMN_MAP_ZBFACT***C1021601******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C1021601' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021601','FACT_YB_YBZKFX','zffy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021601','FACT_YB_YBZKFX','yblxkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021601','FACT_YB_YBZKFX','mzzykey','')
	go

/************No.158: C1021602******************Y_COLUMN_MAP_ZBFACT***C1021602******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C1021602' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021602','','','C1021601,C10216')
	go

/************No.159: C1021603******************Y_COLUMN_MAP_ZBFACT***C1021603******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C1021603' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021603','FACT_YB_YBZKFX','ybzfy_zfje','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021603','FACT_YB_YBZKFX','yblxkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021603','FACT_YB_YBZKFX','mzzykey','')
	go

/************No.160: C1021604******************Y_COLUMN_MAP_ZBFACT***C1021604******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C1021604' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021604','','','C1021603,C10216')
	go

/************No.161: C1021605******************Y_COLUMN_MAP_ZBFACT***C1021605******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C1021605' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021605','FACT_YB_YBZKFX','ybzfy_zfje','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021605','FACT_YB_YBZKFX','zffy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021605','FACT_YB_YBZKFX','yblxkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021605','FACT_YB_YBZKFX','mzzykey','')
	go

/************No.162: C1021606******************Y_COLUMN_MAP_ZBFACT***C1021606******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C1021606' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021606','','','C1021605,C10216')
	go

/************No.163: C10217******************Y_COLUMN_MAP_ZBFACT***C10217******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C10217' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C10217','FACT_YB_YBZKFX','zfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C10217','FACT_YB_YBZKFX','yblxkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C10217','FACT_YB_YBZKFX','mzzykey','')
	go

/************No.164: C1021701******************Y_COLUMN_MAP_ZBFACT***C1021701******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C1021701' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021701','FACT_YB_YBZKFX','zffy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021701','FACT_YB_YBZKFX','yblxkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021701','FACT_YB_YBZKFX','mzzykey','')
	go

/************No.165: C1021703******************Y_COLUMN_MAP_ZBFACT***C1021703******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C1021703' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021703','FACT_YB_YBZKFX','ybzfy_zfje','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021703','FACT_YB_YBZKFX','yblxkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021703','FACT_YB_YBZKFX','mzzykey','')
	go

/************No.166: C1021704******************Y_COLUMN_MAP_ZBFACT***C1021704******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C1021704' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021704','','','C1021703,C10217')
	go

/************No.167: C1021705******************Y_COLUMN_MAP_ZBFACT***C1021705******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C1021705' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021705','FACT_YB_YBZKFX','ybzfy_zfje','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021705','FACT_YB_YBZKFX','zffy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021705','FACT_YB_YBZKFX','yblxkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021705','FACT_YB_YBZKFX','mzzykey','')
	go

/************No.168: C1021706******************Y_COLUMN_MAP_ZBFACT***C1021706******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C1021706' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1021706','','','C1021705,C10217')
	go

/************No.169: C10303******************Y_COLUMN_MAP_ZBFACT***C10303******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C10303' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C10303','FACT_YB_YBZKFX','ypfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C10303','FACT_YB_YBZKFX','yblxkey','')
	go

/************No.170: C1030301******************Y_COLUMN_MAP_ZBFACT***C1030301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C1030301' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1030301','','','C10303,C10101')
	go

/************No.171: C601******************Y_COLUMN_MAP_ZBFACT***C601******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C601' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C601','FACT_YB_YBZKFX','zfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C601','FACT_YB_YBZKFX','yblxkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C601','FACT_YB_YBZKFX','mzzykey','')
	go

/************No.172: C60101******************Y_COLUMN_MAP_ZBFACT***C60101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C60101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C60101','FACT_YB_YBZKFX','zffy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C60101','FACT_YB_YBZKFX','yblxkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C60101','FACT_YB_YBZKFX','mzzykey','')
	go

/************No.173: C60102******************Y_COLUMN_MAP_ZBFACT***C60102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C60102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C60102','','','C60101,C601')
	go

/************No.174: C60103******************Y_COLUMN_MAP_ZBFACT***C60103******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C60103' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C60103','FACT_YB_YBZKFX','ybzfy_zfje','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C60103','FACT_YB_YBZKFX','yblxkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C60103','FACT_YB_YBZKFX','mzzykey','')
	go

/************No.175: C60104******************Y_COLUMN_MAP_ZBFACT***C60104******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C60104' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C60104','','','C60103,C601')
	go

/************No.176: C60105******************Y_COLUMN_MAP_ZBFACT***C60105******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C60105' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C60105','FACT_YB_YBZKFX','ybzfy_zfje','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C60105','FACT_YB_YBZKFX','zffy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C60105','FACT_YB_YBZKFX','yblxkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C60105','FACT_YB_YBZKFX','mzzykey','')
	go

/************No.177: C60106******************Y_COLUMN_MAP_ZBFACT***C60106******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C60106' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C60106','','','C60105,C601')
	go

/************No.178: D0001******************Y_COLUMN_MAP_ZBFACT***D0001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D0001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D0001','','','D001,D002')
	go

/************No.179: D001******************Y_COLUMN_MAP_ZBFACT***D001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D001','FACT_YY_SS_MZSSYWLFX','mzssrc','')
	go

/************No.180: D002******************Y_COLUMN_MAP_ZBFACT***D002******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D002' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D002','FACT_YY_SS_ZYSSYWLFX','ssrc','')
	go

/************No.181: D00201******************Y_COLUMN_MAP_ZBFACT***D00201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D00201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D00201','FACT_BA_CYYWLFX','cyrs','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D00201','FACT_BA_CYYWLFX','zqssbz','')
	go

/************No.182: D0020101******************Y_COLUMN_MAP_ZBFACT***D0020101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D0020101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D0020101','FACT_YY_SS_ZYSSYWLFX','ssrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D0020101','FACT_YY_SS_ZYSSYWLFX','swbz','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D0020101','FACT_YY_SS_ZYSSYWLFX','zqssbz','')
	go

/************No.183: D0020102******************Y_COLUMN_MAP_ZBFACT***D0020102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D0020102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D0020102','','','D0020101,D00201')
	go

/************No.184: D0020103******************Y_COLUMN_MAP_ZBFACT***D0020103******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D0020103' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D0020103','','','D00201,D002')
	go

/************No.185: D00201******************Y_COLUMN_MAP_ZBFACT***D00201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D00201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D00201','FACT_BA_CYYWLFX','cyrs','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D00201','FACT_BA_CYYWLFX','zqssbz','')
	go

/************No.186: D00202******************Y_COLUMN_MAP_ZBFACT***D00202******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D00202' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D00202','FACT_YY_SS_RJSSYWLFX','ssrc','')
	go

/************No.187: D0020201******************Y_COLUMN_MAP_ZBFACT***D0020201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D0020201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D0020201','','','D00202,D002')
	go

/************No.188: D00204******************Y_COLUMN_MAP_ZBFACT***D00204******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D00204' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D00204','','','D00209,D002')
	go

/************No.189: D00209******************Y_COLUMN_MAP_ZBFACT***D00209******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D00209' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D00209','FACT_YY_SS_ZYSSYWLFX','sjssrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D00209','FACT_YY_SS_ZYSSYWLFX','sijssrc','')
	go

/************No.190: D0021001******************Y_COLUMN_MAP_ZBFACT***D0021001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D0021001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D0021001','FACT_YY_SS_ZYSSYWLFX','ssrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D0021001','FACT_YY_SS_ZYSSYWLFX','cfssbz','')
	go

/************No.191: D0021002******************Y_COLUMN_MAP_ZBFACT***D0021002******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D0021002' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D0021002','','','D0021001,D002')
	go

/************No.192: D0021003******************Y_COLUMN_MAP_ZBFACT***D0021003******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D0021003' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D0021003','FACT_YY_SS_ZYSSYWLFX','ssrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D0021003','FACT_YY_SS_ZYSSYWLFX','qkdjkey','')
	go

/************No.193: D002100301******************Y_COLUMN_MAP_ZBFACT***D002100301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D002100301' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D002100301','FACT_YY_SS_ZYSSYWLFX','ssrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D002100301','FACT_YY_SS_ZYSSYWLFX','qkdjkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D002100301','FACT_YY_SS_ZYSSYWLFX','yhlb','')
	go

/************No.194: D002100302******************Y_COLUMN_MAP_ZBFACT***D002100302******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D002100302' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D002100302','','','D002100301,D0021003')
	go

/************No.195: D0021004******************Y_COLUMN_MAP_ZBFACT***D0021004******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D0021004' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D0021004','FACT_YY_ZY_CYYWLFX','ssrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D0021004','FACT_YY_ZY_CYYWLFX','kskey','')
	go

/************No.196: D002100401******************Y_COLUMN_MAP_ZBFACT***D002100401******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D002100401' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb D002100401'
go

/************No.197: D002100402******************Y_COLUMN_MAP_ZBFACT***D002100402******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D002100402' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D002100402','','','D002100401,D0021004')
	go

/************No.198: D007******************Y_COLUMN_MAP_ZBFACT***D007******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='D007' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('D007','FACT_YY_ZY_CYYWLFX','ssrc','')
	go

/************No.199: E001002******************Y_COLUMN_MAP_ZBFACT***E001002******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E001002' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E001002','FACT_DIM_YP','idm','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E001002','FACT_DIM_YP','jybz','')
	go

/************No.200: E00100201******************Y_COLUMN_MAP_ZBFACT***E00100201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00100201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00100201','FACT_DIM_YP','idm','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00100201','FACT_DIM_YP','jybz','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00100201','FACT_DIM_YP','zmlb','')
	go

/************No.201: E00100202******************Y_COLUMN_MAP_ZBFACT***E00100202******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00100202' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00100202','','','E00100201,E001002')
	go

/************No.202: E0010402******************Y_COLUMN_MAP_ZBFACT***E0010402******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E0010402' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E0010402','FACT_YP_ZY_FYFX','zyfy_ypcyzj','')
	go

/************No.203: E001040201******************Y_COLUMN_MAP_ZBFACT***E001040201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E001040201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E001040201','','','E0010402,B00102')
	go

/************No.204: E0010403******************Y_COLUMN_MAP_ZBFACT***E0010403******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E0010403' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E0010403','','','E00104,B002')
	go

/************No.205: E0010404******************Y_COLUMN_MAP_ZBFACT***E0010404******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E0010404' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E0010404','','','E00102,E00104')
	go

/************No.206: E002******************Y_COLUMN_MAP_ZBFACT***E002******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E002' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E002','','','E00201,E00202')
	go

/************No.207: E00201******************Y_COLUMN_MAP_ZBFACT***E00201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00201','FACT_YP_MZ_FYFX','kjfy','')
	go

/************No.208: E002010101******************Y_COLUMN_MAP_ZBFACT***E002010101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E002010101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E002010101','','','E0020102,B0020101')
	go

/************No.209: E002010102******************Y_COLUMN_MAP_ZBFACT***E002010102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E002010102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E002010102','','','E0020103,B0020102')
	go

/************No.210: E0020102******************Y_COLUMN_MAP_ZBFACT***E0020102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E0020102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E0020102','FACT_YP_MZ_FYFX','kjfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E0020102','FACT_YP_MZ_FYFX','mjzkey','')
	go

/************No.211: E0020103******************Y_COLUMN_MAP_ZBFACT***E0020103******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E0020103' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E0020103','FACT_YP_MZ_FYFX','kjfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E0020103','FACT_YP_MZ_FYFX','mjzkey','')
	go

/************No.212: E00202******************Y_COLUMN_MAP_ZBFACT***E00202******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00202' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00202','FACT_YP_ZY_FYFX','kjfy','')
	go

/************No.213: E00203******************Y_COLUMN_MAP_ZBFACT***E00203******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00203' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00203','','','E00201,E00205')
	go

/************No.214: E0020301******************Y_COLUMN_MAP_ZBFACT***E0020301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E0020301' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E0020301','','','E0020102,E0020510')
	go

/************No.215: E0020302******************Y_COLUMN_MAP_ZBFACT***E0020302******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E0020302' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E0020302','','','E0020103,E0020511')
	go

/************No.216: E00204******************Y_COLUMN_MAP_ZBFACT***E00204******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00204' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00204','','','E00202,E00207')
	go

/************No.217: E00205******************Y_COLUMN_MAP_ZBFACT***E00205******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00205' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00205','FACT_YY_MZ_JZRC','sykjyrc','')
	go

/************No.218: E0020510******************Y_COLUMN_MAP_ZBFACT***E0020510******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E0020510' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E0020510','FACT_YY_MZ_JZRC','sykjyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E0020510','FACT_YY_MZ_JZRC','mjzkey','')
	go

/************No.219: E0020511******************Y_COLUMN_MAP_ZBFACT***E0020511******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E0020511' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E0020511','FACT_YY_MZ_JZRC','sykjyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E0020511','FACT_YY_MZ_JZRC','mjzkey','')
	go

/************No.220: E00206******************Y_COLUMN_MAP_ZBFACT***E00206******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00206' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00206','','','E00205,A001')
	go

/************No.221: E0020601******************Y_COLUMN_MAP_ZBFACT***E0020601******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E0020601' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E0020601','','','E0020510,A00101')
	go

/************No.222: E0020602******************Y_COLUMN_MAP_ZBFACT***E0020602******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E0020602' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E0020602','','','E0020511,A00102')
	go

/************No.223: E00207******************Y_COLUMN_MAP_ZBFACT***E00207******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00207' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00207','FACT_YY_ZY_CYYWLFX','kjysyrc','')
	go

/************No.224: E002070104******************Y_COLUMN_MAP_ZBFACT***E002070104******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E002070104' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E002070104','FACT_YY_ZY_CYYWLFX','kjysyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E002070104','FACT_YY_ZY_CYYWLFX','yfxkjysybz','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E002070104','FACT_YY_ZY_CYYWLFX','ylqkssbrbz','')
	go

/************No.225: E00207010404******************Y_COLUMN_MAP_ZBFACT***E00207010404******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00207010404' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00207010404','','','E00207010403,E002070104')
	go

/************No.226: E00208******************Y_COLUMN_MAP_ZBFACT***E00208******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00208' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00208','','','E00207,A102')
	go

/************No.227: E00209******************Y_COLUMN_MAP_ZBFACT***E00209******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00209' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00209','','','E00230,A111')
	go

/************No.228: E00211******************Y_COLUMN_MAP_ZBFACT***E00211******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00211' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00211','','','E002070104,E00207')
	go

/************No.229: E00230******************Y_COLUMN_MAP_ZBFACT***E00230******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00230' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00230','FACT_YP_ZY_FYFX','ddds','')
	go

/************No.230: E0026******************Y_COLUMN_MAP_ZBFACT***E0026******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E0026' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E0026','','','E002,B002')
	go

/************No.231: E003******************Y_COLUMN_MAP_ZBFACT***E003******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E003' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E003','','','E00301,E00302')
	go

/************No.232: E00303******************Y_COLUMN_MAP_ZBFACT***E00303******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00303' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00303','','','E003,B002')
	go

/************No.233: E00306******************Y_COLUMN_MAP_ZBFACT***E00306******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00306' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00306','','','G30001,E001002')
	go

/************No.234: E101******************Y_COLUMN_MAP_ZBFACT***E101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E101','','','B002,B001')
	go

/************No.235: E10106******************Y_COLUMN_MAP_ZBFACT***E10106******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E10106' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E10106','','','B00205,B00107')
	go

/************No.236: E10302******************Y_COLUMN_MAP_ZBFACT***E10302******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E10302' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E10302','','','E00202,B00202')
	go

/************No.237: E201******************Y_COLUMN_MAP_ZBFACT***E201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E201','FACT_YP_CFLFX','cfs','')
	go

/************No.238: E20103******************Y_COLUMN_MAP_ZBFACT***E20103******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E20103' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E20103','FACT_YP_CFLFX','jbypcfs','')
	go

/************No.239: E201101******************Y_COLUMN_MAP_ZBFACT***E201101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E201101' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb E201101'
go

/************No.240: E201170301******************Y_COLUMN_MAP_ZBFACT***E201170301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E201170301' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E201170301','FACT_YP_CFLFX','zycfs_ypcyzj','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E201170301','FACT_YP_CFLFX','mjzkey','')
	go

/************No.241: E201170303******************Y_COLUMN_MAP_ZBFACT***E201170303******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E201170303' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E201170303','','','E201170301,E20137')
	go

/************No.242: E20118******************Y_COLUMN_MAP_ZBFACT***E20118******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E20118' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E20118','FACT_YP_CFLFX','caoycfs','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E20118','FACT_YP_CFLFX','mjzkey','')
	go

/************No.243: E2011801******************Y_COLUMN_MAP_ZBFACT***E2011801******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E2011801' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E2011801','FACT_YP_CFLFX','caoycfs','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E2011801','FACT_YP_CFLFX','mjzkey','')
	go

/************No.244: E201180101******************Y_COLUMN_MAP_ZBFACT***E201180101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E201180101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E201180101','FACT_YP_CFLFX','xbzcycfs','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E201180101','FACT_YP_CFLFX','mjzkey','')
	go

/************No.245: E201180102******************Y_COLUMN_MAP_ZBFACT***E201180102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E201180102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E201180102','','','E201180101,E20137')
	go

/************No.246: E201180301******************Y_COLUMN_MAP_ZBFACT***E201180301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E201180301' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E201180301','','','E2011801,A0014001')
	go

/************No.247: E2011804******************Y_COLUMN_MAP_ZBFACT***E2011804******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E2011804' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E2011804','','','E2011801,E201170301')
	go

/************No.248: E20119******************Y_COLUMN_MAP_ZBFACT***E20119******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E20119' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E20119','','','E20118,E201')
	go

/************No.249: E20137******************Y_COLUMN_MAP_ZBFACT***E20137******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E20137' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E20137','FACT_YP_CFLFX','cfs','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E20137','FACT_YP_CFLFX','mjzkey','')
	go

/************No.250: E201407******************Y_COLUMN_MAP_ZBFACT***E201407******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E201407' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E201407','FACT_SF_MZ_CFJC','hgcfs','')
	go

/************No.251: E20140701******************Y_COLUMN_MAP_ZBFACT***E20140701******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E20140701' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E20140701','','','E201407,E201')
	go

/************No.252: E20203******************Y_COLUMN_MAP_ZBFACT***E20203******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E20203' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E20203','','','E20103,E201')
	go

/************No.253: E2020801******************Y_COLUMN_MAP_ZBFACT***E2020801******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E2020801' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E2020801','','','E2010801,E20137')
	go

/************No.254: E20301******************Y_COLUMN_MAP_ZBFACT***E20301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E20301' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E20301','','','E306,A001')
	go

/************No.255: E2030103******************Y_COLUMN_MAP_ZBFACT***E2030103******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E2030103' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E2030103','','','E30601,A00101')
	go

/************No.256: E2030104******************Y_COLUMN_MAP_ZBFACT***E2030104******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E2030104' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E2030104','','','E30602,A00102')
	go

/************No.257: E301******************Y_COLUMN_MAP_ZBFACT***E301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E301' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E301','','','B00202,A111')
	go

/************No.258: E306******************Y_COLUMN_MAP_ZBFACT***E306******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E306' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E306','FACT_YY_MZ_JZRC','zslywsyrc','')
	go

/************No.259: F001******************Y_COLUMN_MAP_ZBFACT***F001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F001','FACT_YY_ZYBRZYL','zls','')
	go

/************No.260: F002******************Y_COLUMN_MAP_ZBFACT***F002******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F002' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F002','FACT_YY_ZYBRZYL','zys','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F002','FACT_YY_ZYBRZYL','hzs','')
	go

/************No.261: F00203******************Y_COLUMN_MAP_ZBFACT***F00203******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F00203' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F00203','','','F00201,F001')
	go

/************No.262: F003******************Y_COLUMN_MAP_ZBFACT***F003******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F003' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F003','','','F002,F001')
	go

/************No.263: F004******************Y_COLUMN_MAP_ZBFACT***F004******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F004' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F004','FACT_YY_ZY_CYYWLFX','cyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F004','FACT_YY_ZY_CYYWLFX','cyfskey','')
	go

/************No.264: F005******************Y_COLUMN_MAP_ZBFACT***F005******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F005' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F005','','','F004,F001')
	go

/************No.265: F006******************Y_COLUMN_MAP_ZBFACT***F006******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F006' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F006','','','A104,A102')
	go

/************No.266: F009******************Y_COLUMN_MAP_ZBFACT***F009******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F009' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F009','','','F311,F312')
	go

/************No.267: F010******************Y_COLUMN_MAP_ZBFACT***F010******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F010' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F010','','','F310,A102')
	go

/************No.268: F1003******************Y_COLUMN_MAP_ZBFACT***F1003******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F1003' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F1003','FACT_YY_ZY_BACK15_30','syxh','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F1003','FACT_YY_ZY_BACK15_30','back30','')
	go

/************No.269: F100301******************Y_COLUMN_MAP_ZBFACT***F100301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F100301' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F100301','','','F1003,A102')
	go

/************No.270: F201******************Y_COLUMN_MAP_ZBFACT***F201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F201','FACT_YY_ZY_CYYWLFX','cyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F201','FACT_YY_ZY_CYYWLFX','grbz','')
	go

/************No.271: F202******************Y_COLUMN_MAP_ZBFACT***F202******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F202' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F202','','','F201,A102')
	go

/************No.272: F203******************Y_COLUMN_MAP_ZBFACT***F203******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F203' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F203','FACT_YY_ZY_CYYWLFX','ssrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F203','FACT_YY_ZY_CYYWLFX','grbz','')
	go

/************No.273: F204******************Y_COLUMN_MAP_ZBFACT***F204******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F204' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F204','','','F203,D007')
	go

/************No.274: F301******************Y_COLUMN_MAP_ZBFACT***F301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F301' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F301','','','F314,F313')
	go

/************No.275: F306******************Y_COLUMN_MAP_ZBFACT***F306******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F306' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F306','','','F318,F314')
	go

/************No.276: F310******************Y_COLUMN_MAP_ZBFACT***F310******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F310' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F310','FACT_YY_ZY_CYYWLFX','cyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F310','FACT_YY_ZY_CYYWLFX','rcfhbz','')
	go

/************No.277: F311******************Y_COLUMN_MAP_ZBFACT***F311******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F311' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F311','FACT_YY_ZY_CYYWLFX','cyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F311','FACT_YY_ZY_CYYWLFX','qjcgbz','')
	go

/************No.278: F312******************Y_COLUMN_MAP_ZBFACT***F312******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F312' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F312','FACT_YY_ZY_CYYWLFX','cyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F312','FACT_YY_ZY_CYYWLFX','qjbz','')
	go

/************No.279: F31201******************Y_COLUMN_MAP_ZBFACT***F31201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F31201' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb F31201'
go

/************No.280: F31202******************Y_COLUMN_MAP_ZBFACT***F31202******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F31202' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F31202','','','F31201,F312')
	go

/************No.281: F313******************Y_COLUMN_MAP_ZBFACT***F313******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F313' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F313','FACT_YY_ZY_LCLJFX','fhljzls','')
	go

/************No.282: F314******************Y_COLUMN_MAP_ZBFACT***F314******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F314' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F314','FACT_YY_ZY_LCLJFX','rljzls','')
	go

/************No.283: F318******************Y_COLUMN_MAP_ZBFACT***F318******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F318' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F318','FACT_YY_ZY_LCLJFX','byls','')
	go

/************No.284: G30001******************Y_COLUMN_MAP_ZBFACT***G30001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='G30001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('G30001','FACT_DIM_YP','idm','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('G30001','FACT_DIM_YP','gjjzcgbz','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('G30001','FACT_DIM_YP','jybz','')
	go

/************No.285: I017******************Y_COLUMN_MAP_ZBFACT***I017******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='I017' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('I017','','','I01701,I01702')
	go

/************No.286: I01701******************Y_COLUMN_MAP_ZBFACT***I01701******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='I01701' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb I01701'
go

/************No.287: I01702******************Y_COLUMN_MAP_ZBFACT***I01702******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='I01702' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb I01702'
go

/************No.288: J005_WS001******************Y_COLUMN_MAP_ZBFACT***J005_WS001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='J005_WS001' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb J005_WS001'
go

/************No.289: J005_WS00101******************Y_COLUMN_MAP_ZBFACT***J005_WS00101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='J005_WS00101' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb J005_WS00101'
go

/************No.290: J005_WS00102******************Y_COLUMN_MAP_ZBFACT***J005_WS00102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='J005_WS00102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('J005_WS00102','','','J005_WS00101,J005_WS001')
	go

/************No.291: ZLZB_AQ004301******************Y_COLUMN_MAP_ZBFACT***ZLZB_AQ004301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_AQ004301' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_AQ004301','','','ZLZB_AQ0043,A102')
	go

/************No.292: ZLZB_AQ00650******************Y_COLUMN_MAP_ZBFACT***ZLZB_AQ00650******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_AQ00650' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_AQ00650','FACT_GZ_HZAQ_BFZ','rc','')
	go

/************No.293: ZLZB_AQ0107******************Y_COLUMN_MAP_ZBFACT***ZLZB_AQ0107******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_AQ0107' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_AQ0107','','','ZLZB_BFZ0018,ZLZB_AQ00650')
	go

/************No.294: ZLZB_AQ0110******************Y_COLUMN_MAP_ZBFACT***ZLZB_AQ0110******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_AQ0110' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_AQ0110','FACT_GZ_HZAQ_YCFX','rc','')
	go

/************No.295: ZLZB_AQ0111******************Y_COLUMN_MAP_ZBFACT***ZLZB_AQ0111******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_AQ0111' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_AQ0111','','','ZLZB_AQ0110,A102')
	go

/************No.296: ZLZB_BFZ0018******************Y_COLUMN_MAP_ZBFACT***ZLZB_BFZ0018******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_BFZ0018' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_BFZ0018','FACT_GZ_HZAQ_BFZ','rc','')
	go

/************No.297: ZLZB_BFZ0018024******************Y_COLUMN_MAP_ZBFACT***ZLZB_BFZ0018024******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_BFZ0018024' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_BFZ0018024'
go

/************No.298: ZLZB_BFZ001802******************Y_COLUMN_MAP_ZBFACT***ZLZB_BFZ001802******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_BFZ001802' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_BFZ001802','FACT_GZ_HZAQ_BFZ','rc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_BFZ001802','FACT_GZ_HZAQ_BFZ','ssbz','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_BFZ001802','FACT_GZ_HZAQ_BFZ','zqssbz','')
	go

/************No.299: ZLZB_ICU000******************Y_COLUMN_MAP_ZBFACT***ZLZB_ICU000******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_ICU000' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_ICU000','FACT_GZ_ZZYX_ICU','syxh','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_ICU000','FACT_GZ_ZZYX_ICU','zcsj','')
	go

/************No.300: ZLZB_ICU0002******************Y_COLUMN_MAP_ZBFACT***ZLZB_ICU0002******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_ICU0002' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_ICU0002'
go

/************No.301: ZLZB_ICU0003******************Y_COLUMN_MAP_ZBFACT***ZLZB_ICU0003******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_ICU0003' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_ICU0003'
go

/************No.302: ZLZB_SS0086******************Y_COLUMN_MAP_ZBFACT***ZLZB_SS0086******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_SS0086' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_SS0086','FACT_GZ_HZAQ_ZDSS','rc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_SS0086','FACT_GZ_HZAQ_ZDSS','zdsskey','')
	go

/************No.303: ZLZB_WJZ001******************Y_COLUMN_MAP_ZBFACT***ZLZB_WJZ001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_WJZ001' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_WJZ001'
go

/************No.304: ZLZB_WJZ00101******************Y_COLUMN_MAP_ZBFACT***ZLZB_WJZ00101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_WJZ00101' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_WJZ00101'
go

/************No.305: ZLZB_WJZ00102******************Y_COLUMN_MAP_ZBFACT***ZLZB_WJZ00102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_WJZ00102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_WJZ00102','','','ZLZB_WJZ00101,ZLZB_WJZ001')
	go

/************No.306: ZLZB_YG1001******************Y_COLUMN_MAP_ZBFACT***ZLZB_YG1001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YG1001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YG1001','FACT_YY_ZY_CYYWLFX','cyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YG1001','FACT_YY_ZY_CYYWLFX','zgbz','')
	go

/************No.307: ZLZB_YG100101******************Y_COLUMN_MAP_ZBFACT***ZLZB_YG100101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YG100101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YG100101','FACT_YY_ZY_CYYWLFX','cyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YG100101','FACT_YY_ZY_CYYWLFX','zgbz','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YG100101','FACT_YY_ZY_CYYWLFX','zggrbz','')
	go

/************No.308: ZLZB_YG100102******************Y_COLUMN_MAP_ZBFACT***ZLZB_YG100102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YG100102' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YG100102'
go

/************No.309: ZLZB_YY0001******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0001','FACT_BA_ZY_CWSYQK','kfcw','')
	go

/************No.310: ZLZB_YY000101******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY000101','FACT_YY_ZY_CYYWLFX','cyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY000101','FACT_YY_ZY_CYYWLFX','jtbcbz','')
	go

/************No.311: ZLZB_YY000401******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000401******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000401' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY000401'
go

/************No.312: ZLZB_YY00040103******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00040103******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00040103' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY00040103'
go

/************No.313: ZLZB_YY00040104******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00040104******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00040104' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY00040104','','','ZLZB_YY00040103,ZLZB_YY000401')
	go

/************No.314: ZLZB_YY00040105******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00040105******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00040105' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY00040105'
go

/************No.315: ZLZB_YY00040106******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00040106******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00040106' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY00040106','','','ZLZB_YY00040105,ZLZB_YY000401')
	go

/************No.316: ZLZB_YY00040107******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00040107******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00040107' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY00040107'
go

/************No.317: ZLZB_YY00040108******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00040108******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00040108' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY00040108','','','ZLZB_YY00040107,ZLZB_YY000401')
	go

/************No.318: ZLZB_YY00040109******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00040109******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00040109' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY00040109','','','ZLZB_YY0005,ZLZB_YY0006')
	go

/************No.319: ZLZB_YY00040110******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00040110******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00040110' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY00040110'
go

/************No.320: ZLZB_YY00040111******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00040111******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00040111' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY00040111'
go

/************No.321: ZLZB_YY00040201******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00040201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00040201' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY00040201'
go

/************No.322: ZLZB_YY000402******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000402******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000402' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY000402'
go

/************No.323: ZLZB_YY000403******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000403******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000403' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY000403'
go

/************No.324: ZLZB_YY000405******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000405******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000405' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY000405'
go

/************No.325: ZLZB_YY000406******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000406******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000406' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY000406','','','ZLZB_YY000405,A112')
	go

/************No.326: ZLZB_YY000407******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000407******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000407' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY000407'
go

/************No.327: ZLZB_YY000408******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000408******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000408' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY000408','','','ZLZB_YY000407,ZLZB_YY0001')
	go

/************No.328: ZLZB_YY000409******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000409******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000409' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY000409'
go

/************No.329: ZLZB_YY000410******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000410******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000410' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY000410'
go

/************No.330: ZLZB_YY0005******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0005******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0005' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0005','FACT_FY_MZ_FYFX','ghfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0005','FACT_FY_MZ_FYFX','cffy','')
	go

/************No.331: ZLZB_YY000506******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000506******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000506' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY000506'
go

/************No.332: ZLZB_YY000507******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000507******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000507' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY000507','','','ZLZB_YY000506,ZLZB_YY0005')
	go

/************No.333: ZLZB_YY0006******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0006******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0006' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0006'
go

/************No.334: ZLZB_YY0019******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0019******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0019' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0019'
go

/************No.335: ZLZB_YY001901******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY001901******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY001901' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY001901'
go

/************No.336: ZLZB_YY0025******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0025******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0025' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0025','FACT_YY_ZY_CYYWLFX','qjcs','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0025','FACT_YY_ZY_CYYWLFX','kskey','')
	go

/************No.337: ZLZB_YY002501******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY002501******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY002501' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY002501','FACT_YY_ZY_CYYWLFX','qjcgcs','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY002501','FACT_YY_ZY_CYYWLFX','kskey','')
	go

/************No.338: ZLZB_YY002502******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY002502******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY002502' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY002502'
go

/************No.339: ZLZB_YY0026******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0026******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0026' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0026','','','ZLZB_YY002601,ZLZB_YY002602')
	go

/************No.340: ZLZB_YY002601******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY002601******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY002601' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY002601','FACT_YY_ZY_CYYWLFX','cyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY002601','FACT_YY_ZY_CYYWLFX','yebz','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY002601','FACT_YY_ZY_CYYWLFX','cyfskey','')
	go

/************No.341: ZLZB_YY002602******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY002602******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY002602' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY002602','FACT_YY_ZY_CYYWLFX','cyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY002602','FACT_YY_ZY_CYYWLFX','yebz','')
	go

/************No.342: ZLZB_YY0027******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0027******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0027' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0027','FACT_YY_ZY_CYYWLFX','qjcs','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0027','FACT_YY_ZY_CYYWLFX','cyfskey','')
	go

/************No.343: ZLZB_YY002701******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY002701******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY002701' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY002701'
go

/************No.344: ZLZB_YY0028******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0028******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0028' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0028','FACT_YY_ZY_CYYWLFX','qjcs','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0028','FACT_YY_ZY_CYYWLFX','cyfskey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0028','FACT_YY_ZY_CYYWLFX','kskey','')
	go

/************No.345: ZLZB_YY002801******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY002801******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY002801' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY002801','FACT_GZ_ZLGL_JZZY','rc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY002801','FACT_GZ_ZLGL_JZZY','swbz','')
	go

/************No.346: ZLZB_YY002802******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY002802******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY002802' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY002802'
go

/************No.347: ZLZB_YY0102******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0102' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0102'
go

/************No.348: ZLZB_YY010201******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY010201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY010201' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY010201'
go

/************No.349: ZLZB_YY010202******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY010202******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY010202' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY010202'
go

/************No.350: ZLZB_YY0103******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0103******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0103' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0103'
go

/************No.351: ZLZB_YY010301******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY010301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY010301' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY010301'
go

/************No.352: ZLZB_YY010302******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY010302******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY010302' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY010302'
go

/************No.353: ZLZB_YY0104******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0104******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0104' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0104'
go

/************No.354: ZLZB_YY010401******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY010401******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY010401' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY010401'
go

/************No.355: ZLZB_YY010402******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY010402******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY010402' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY010402'
go

/************No.356: ZLZB_YY0105******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0105******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0105' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0105'
go

/************No.357: ZLZB_YY010501******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY010501******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY010501' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY010501'
go

/************No.358: ZLZB_YY010502******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY010502******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY010502' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY010502'
go

/************No.359: ZLZB_ZLGL_LCBL035******************Y_COLUMN_MAP_ZBFACT***ZLZB_ZLGL_LCBL035******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_ZLGL_LCBL035' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_ZLGL_LCBL035'
go

/************No.360: ZLZB_ZLGL_LCBL036******************Y_COLUMN_MAP_ZBFACT***ZLZB_ZLGL_LCBL036******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_ZLGL_LCBL036' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_ZLGL_LCBL036'
go

/************No.361: ZLZB_ZLGL_LCBL037******************Y_COLUMN_MAP_ZBFACT***ZLZB_ZLGL_LCBL037******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_ZLGL_LCBL037' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_ZLGL_LCBL037','','','ZLZB_ZLGL_LCBL035,ZLZB_ZLGL_LCBL036')
	go

