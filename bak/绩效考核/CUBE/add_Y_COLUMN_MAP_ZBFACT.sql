/************No.1: A32001******************Y_COLUMN_MAP_ZBFACT***A32001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A32001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A32001','','','A00101,A102')
	go

/************No.2: A00101******************Y_COLUMN_MAP_ZBFACT***A00101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A00101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A00101','FACT_YY_MZ_JZRC','ghrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A00101','FACT_YY_MZ_JZRC','mjzkey','')
	go

/************No.3: A102******************Y_COLUMN_MAP_ZBFACT***A102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A102','FACT_YY_ZY_CYYWLFX','cyrc','')
	go

/************No.4: A321******************Y_COLUMN_MAP_ZBFACT***A321******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A321' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A321','','','A32101,A32102')
	go

/************No.5: A32101******************Y_COLUMN_MAP_ZBFACT***A32101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A32101' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A32101'
go

/************No.6: A32102******************Y_COLUMN_MAP_ZBFACT***A32102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A32102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A32102','FACT_BA_CYYWLFX','cyrs','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A32102','FACT_BA_CYYWLFX','lyfskey','')
	go

/************No.7: BA_D0025******************Y_COLUMN_MAP_ZBFACT***BA_D0025******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='BA_D0025' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0025','','','BA_D0023,BA_D0024')
	go

/************No.8: BA_D0023******************Y_COLUMN_MAP_ZBFACT***BA_D0023******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='BA_D0023' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0023','FACT_BA_CYYWLFX','cyrs','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0023','FACT_BA_CYYWLFX','rjssbz','')
	go

/************No.9: BA_D0024******************Y_COLUMN_MAP_ZBFACT***BA_D0024******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='BA_D0024' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0024','FACT_BA_CYYWLFX','cyrs','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0024','FACT_BA_CYYWLFX','zqssbz','')
	go

/************No.10: BA_D0028******************Y_COLUMN_MAP_ZBFACT***BA_D0028******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='BA_D0028' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0028','','','BA_D0026,BA_D0027')
	go

/************No.11: BA_D0026******************Y_COLUMN_MAP_ZBFACT***BA_D0026******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='BA_D0026' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0026','FACT_BA_CYYWLFX','cyrs','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0026','FACT_BA_CYYWLFX','ssbz','')
	go

/************No.12: BA_D0027******************Y_COLUMN_MAP_ZBFACT***BA_D0027******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='BA_D0027' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0027','FACT_BA_CYYWLFX','cyrs','')
	go

/************No.13: BA_D0030******************Y_COLUMN_MAP_ZBFACT***BA_D0030******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='BA_D0030' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0030','','','BA_D0029,BA_D0026')
	go

/************No.14: BA_D0029******************Y_COLUMN_MAP_ZBFACT***BA_D0029******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='BA_D0029' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0029','FACT_BA_CYYWLFX','cyrs','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0029','FACT_BA_CYYWLFX','wcssbz','')
	go

/************No.15: BA_D0032******************Y_COLUMN_MAP_ZBFACT***BA_D0032******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='BA_D0032' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0032','','','BA_D0031,BA_D0026')
	go

/************No.16: BA_D0031******************Y_COLUMN_MAP_ZBFACT***BA_D0031******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='BA_D0031' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0031','FACT_BA_CYYWLFX','cyrs','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0031','FACT_BA_CYYWLFX','sjssbz','')
	go

/************No.17: A32201******************Y_COLUMN_MAP_ZBFACT***A32201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A32201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A32201','','','A322,A323')
	go

/************No.18: A322******************Y_COLUMN_MAP_ZBFACT***A322******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A322' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A322','','','A32202,A32203')
	go

/************No.19: A32202******************Y_COLUMN_MAP_ZBFACT***A32202******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A32202' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A32202'
go

/************No.20: A32203******************Y_COLUMN_MAP_ZBFACT***A32203******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A32203' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A32203'
go

/************No.21: A323******************Y_COLUMN_MAP_ZBFACT***A323******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A323' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A323'
go

/************No.22: B10901******************Y_COLUMN_MAP_ZBFACT***B10901******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B10901' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B10901','','','B109,B001')
	go

/************No.23: B109******************Y_COLUMN_MAP_ZBFACT***B109******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B109' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B109','','','B10902,B10903')
	go

/************No.24: B10902******************Y_COLUMN_MAP_ZBFACT***B10902******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B10902' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B10902'
go

/************No.25: B10903******************Y_COLUMN_MAP_ZBFACT***B10903******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B10903' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B10903'
go

/************No.26: B001******************Y_COLUMN_MAP_ZBFACT***B001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B001','','','B00101,B00102')
	go

/************No.27: BA_D0034******************Y_COLUMN_MAP_ZBFACT***BA_D0034******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='BA_D0034' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0034','','','BA_D0033,BA_D0026')
	go

/************No.28: BA_D0033******************Y_COLUMN_MAP_ZBFACT***BA_D0033******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='BA_D0033' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0033','FACT_BA_CYYWLFX','cyrs','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0033','FACT_BA_CYYWLFX','ssbfzbz','')
	go

/************No.29: BA_D0037******************Y_COLUMN_MAP_ZBFACT***BA_D0037******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='BA_D0037' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0037','','','BA_D0036,BA_D0035')
	go

/************No.30: BA_D0036******************Y_COLUMN_MAP_ZBFACT***BA_D0036******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='BA_D0036' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0036','FACT_BA_CYYWLFX','cyrs','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0036','FACT_BA_CYYWLFX','ylssgrbz','')
	go

/************No.31: BA_D0035******************Y_COLUMN_MAP_ZBFACT***BA_D0035******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='BA_D0035' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0035','FACT_BA_CYYWLFX','cyrs','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('BA_D0035','FACT_BA_CYYWLFX','ylssbz','')
	go

/************No.32: JXHK_DBZ004******************Y_COLUMN_MAP_ZBFACT***JXHK_DBZ004******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXHK_DBZ004' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXHK_DBZ004','FACT_ZLZB_JBBZ_DBZ','zfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXHK_DBZ004','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.33: JXHK_DBZ005******************Y_COLUMN_MAP_ZBFACT***JXHK_DBZ005******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXHK_DBZ005' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXHK_DBZ005','','','JXHK_DBZ007,JXHK_DBZ001')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXHK_DBZ005','','','JXHK_DBZ007,JXHK_DBZ001')
	go

/************No.34: JXHK_DBZ007******************Y_COLUMN_MAP_ZBFACT***JXHK_DBZ007******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXHK_DBZ007' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXHK_DBZ007','FACT_ZLZB_JBBZ_DBZ','sqddts','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXHK_DBZ007','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.35: JXHK_DBZ006******************Y_COLUMN_MAP_ZBFACT***JXHK_DBZ006******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXHK_DBZ006' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXHK_DBZ006','FACT_ZLZB_JBBZ_DBZ','ypfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXHK_DBZ006','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.36: JXHK_DBZ001******************Y_COLUMN_MAP_ZBFACT***JXHK_DBZ001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXHK_DBZ001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXHK_DBZ001','FACT_ZLZB_JBBZ_DBZ','ls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXHK_DBZ001','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.37: JXHK_DBZ002******************Y_COLUMN_MAP_ZBFACT***JXHK_DBZ002******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXHK_DBZ002' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXHK_DBZ002','FACT_ZLZB_JBBZ_DBZ','swls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXHK_DBZ002','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.38: JXHK_DBZ003******************Y_COLUMN_MAP_ZBFACT***JXHK_DBZ003******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXHK_DBZ003' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXHK_DBZ003','FACT_ZLZB_JBBZ_DBZ','zzyts','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXHK_DBZ003','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.39: JXKH_DBZ100******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ100******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ100' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ100','FACT_ZLZB_JBBZ_DBZ','ls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ100','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ100','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.40: JXKH_DBZ101******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ101','','','JXKH_DBZ102,JXKH_DBZ103')
	go

/************No.41: JXKH_DBZ102******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ102','FACT_ZLZB_JBBZ_DBZ','zzyts','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ102','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ102','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.42: JXKH_DBZ103******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ103******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ103' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ103','FACT_ZLZB_JBBZ_DBZ','ls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ103','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ103','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.43: JXKH_DBZ104******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ104******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ104' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ104','','','JXKH_DBZ105,JXKH_DBZ100')
	go

/************No.44: JXKH_DBZ105******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ105******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ105' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ105','FACT_ZLZB_JBBZ_DBZ','zfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ105','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ105','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.45: JXKH_DBZ107******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ107******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ107' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ107','','','JXKH_DBZ108,JXKH_DBZ100')
	go

/************No.46: JXKH_DBZ108******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ108******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ108' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ108','FACT_ZLZB_JBBZ_DBZ','swls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ108','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ108','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.47: JXKH_DBZ200******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ200******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ200' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ200','FACT_ZLZB_JBBZ_DBZ','ls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ200','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ200','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.48: JXKH_DBZ201******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ201','','','JXKH_DBZ202,JXKH_DBZ200')
	go

/************No.49: JXKH_DBZ202******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ202******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ202' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ202','FACT_ZLZB_JBBZ_DBZ','zzyts','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ202','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ202','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.50: JXKH_DBZ204******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ204******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ204' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ204','','','JXKH_DBZ205,JXKH_DBZ200')
	go

/************No.51: JXKH_DBZ205******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ205******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ205' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ205','FACT_ZLZB_JBBZ_DBZ','zfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ205','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ205','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.52: JXKH_DBZ207******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ207******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ207' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ207','','','JXKH_DBZ208,JXKH_DBZ200')
	go

/************No.53: JXKH_DBZ208******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ208******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ208' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ208','FACT_ZLZB_JBBZ_DBZ','swls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ208','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ208','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.54: JXKH_DBZ300******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ300******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ300' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ300','FACT_ZLZB_JBBZ_DBZ','ls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ300','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ300','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.55: JXKH_DBZ301******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ301' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ301','','','JXKH_DBZ302,JXKH_DBZ300')
	go

/************No.56: JXKH_DBZ302******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ302******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ302' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ302','FACT_ZLZB_JBBZ_DBZ','zzyts','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ302','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ302','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.57: JXKH_DBZ304******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ304******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ304' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ304','','','JXKH_DBZ305,JXKH_DBZ300')
	go

/************No.58: JXKH_DBZ305******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ305******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ305' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ305','FACT_ZLZB_JBBZ_DBZ','zfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ305','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ305','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.59: JXKH_DBZ307******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ307******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ307' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ307','','','JXKH_DBZ308,JXKH_DBZ300')
	go

/************No.60: JXKH_DBZ308******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ308******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ308' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ308','FACT_ZLZB_JBBZ_DBZ','swls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ308','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ308','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.61: JXKH_DBZ400******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ400******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ400' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ400','FACT_ZLZB_JBBZ_DBZ','ls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ400','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ400','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.62: JXKH_DBZ401******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ401******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ401' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ401','','','JXKH_DBZ402,JXKH_DBZ400')
	go

/************No.63: JXKH_DBZ402******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ402******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ402' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ402','FACT_ZLZB_JBBZ_DBZ','zzyts','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ402','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ402','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.64: JXKH_DBZ404******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ404******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ404' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ404','','','JXKH_DBZ405,JXKH_DBZ400')
	go

/************No.65: JXKH_DBZ405******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ405******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ405' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ405','FACT_ZLZB_JBBZ_DBZ','zfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ405','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ405','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.66: JXKH_DBZ407******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ407******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ407' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ407','','','JXKH_DBZ408,JXKH_DBZ400')
	go

/************No.67: JXKH_DBZ408******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ408******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ408' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ408','FACT_ZLZB_JBBZ_DBZ','swls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ408','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ408','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.68: JXKH_DBZ500******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ500******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ500' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ500','FACT_ZLZB_JBBZ_DBZ','ls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ500','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ500','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.69: JXKH_DBZ501******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ501******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ501' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ501','','','JXKH_DBZ502,JXKH_DBZ500')
	go

/************No.70: JXKH_DBZ502******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ502******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ502' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ502','FACT_ZLZB_JBBZ_DBZ','zzyts','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ502','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ502','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.71: JXKH_DBZ504******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ504******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ504' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ504','','','JXKH_DBZ505,JXKH_DBZ500')
	go

/************No.72: JXKH_DBZ505******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ505******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ505' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ505','FACT_ZLZB_JBBZ_DBZ','zfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ505','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ505','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.73: JXKH_DBZ507******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ507******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ507' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ507','','','JXKH_DBZ508,JXKH_DBZ500')
	go

/************No.74: JXKH_DBZ508******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ508******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ508' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ508','FACT_ZLZB_JBBZ_DBZ','swls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ508','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ508','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.75: JXKH_DBZ600******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ600******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ600' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ600','FACT_ZLZB_JBBZ_DBZ','ls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ600','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ600','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.76: JXKH_DBZ601******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ601******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ601' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ601','','','JXKH_DBZ602,JXKH_DBZ600')
	go

/************No.77: JXKH_DBZ602******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ602******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ602' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ602','FACT_ZLZB_JBBZ_DBZ','zzyts','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ602','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ602','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.78: JXKH_DBZ604******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ604******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ604' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ604','','','JXKH_DBZ605,JXKH_DBZ600')
	go

/************No.79: JXKH_DBZ605******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ605******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ605' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ605','FACT_ZLZB_JBBZ_DBZ','zfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ605','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ605','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.80: JXKH_DBZ607******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ607******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ607' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ607','','','JXKH_DBZ608,JXKH_DBZ600')
	go

/************No.81: JXKH_DBZ608******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ608******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ608' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ608','FACT_ZLZB_JBBZ_DBZ','swls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ608','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ608','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.82: JXKH_DBZ700******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ700******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ700' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ700','FACT_ZLZB_JBBZ_DBZ','ls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ700','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ700','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.83: JXKH_DBZ701******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ701******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ701' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ701','','','JXKH_DBZ702,JXKH_DBZ700')
	go

/************No.84: JXKH_DBZ702******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ702******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ702' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ702','FACT_ZLZB_JBBZ_DBZ','zzyts','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ702','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ702','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.85: JXKH_DBZ704******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ704******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ704' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ704','','','JXKH_DBZ705,JXKH_DBZ700')
	go

/************No.86: JXKH_DBZ705******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ705******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ705' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ705','FACT_ZLZB_JBBZ_DBZ','zfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ705','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ705','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.87: JXKH_DBZ707******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ707******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ707' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ707','','','JXKH_DBZ708,JXKH_DBZ700')
	go

/************No.88: JXKH_DBZ708******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ708******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ708' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ708','FACT_ZLZB_JBBZ_DBZ','swls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ708','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ708','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.89: JXKH_DBZ800******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ800******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ800' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ800','FACT_ZLZB_JBBZ_DBZ','ls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ800','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ800','FACT_ZLZB_JBBZ_DBZ','zlzbsybz','')
	go

/************No.90: JXKH_DBZ801******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ801******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ801' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ801','','','JXKH_DBZ802,JXKH_DBZ800')
	go

/************No.91: JXKH_DBZ802******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ802******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ802' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ802','FACT_ZLZB_JBBZ_DBZ','zzyts','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ802','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ802','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.92: JXKH_DBZ804******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ804******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ804' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ804','','','JXKH_DBZ805,JXKH_DBZ800')
	go

/************No.93: JXKH_DBZ805******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ805******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ805' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ805','FACT_ZLZB_JBBZ_DBZ','zfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ805','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ805','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.94: JXKH_DBZ807******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ807******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ807' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ807','','','JXKH_DBZ808,JXKH_DBZ800')
	go

/************No.95: JXKH_DBZ808******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ808******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ808' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ808','FACT_ZLZB_JBBZ_DBZ','swls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ808','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ808','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.96: JXKH_DBZ900******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ900******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ900' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ900','FACT_ZLZB_JBBZ_DBZ','ls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ900','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ900','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.97: JXKH_DBZ901******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ901******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ901' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ901','','','JXKH_DBZ902,JXKH_DBZ900')
	go

/************No.98: JXKH_DBZ902******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ902******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ902' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ902','FACT_ZLZB_JBBZ_DBZ','zzyts','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ902','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ902','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.99: JXKH_DBZ904******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ904******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ904' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ904','','','JXKH_DBZ905,JXKH_DBZ900')
	go

/************No.100: JXKH_DBZ905******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ905******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ905' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ905','FACT_ZLZB_JBBZ_DBZ','zfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ905','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ905','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.101: JXKH_DBZ907******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ907******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ907' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ907','','','JXKH_DBZ908,JXKH_DBZ900')
	go

/************No.102: JXKH_DBZ908******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ908******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ908' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ908','FACT_ZLZB_JBBZ_DBZ','swls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ908','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ908','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.103: JXKH_DBZ1000******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ1000******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ1000' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ1000','FACT_ZLZB_JBBZ_DBZ','ls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ1000','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ1000','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.104: JXKH_DBZ1001******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ1001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ1001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ1001','','','JXKH_DBZ1002,JXKH_DBZ1000')
	go

/************No.105: JXKH_DBZ1002******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ1002******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ1002' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ1002','FACT_ZLZB_JBBZ_DBZ','zzyts','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ1002','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ1002','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.106: JXKH_DBZ1004******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ1004******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ1004' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ1004','','','JXKH_DBZ1005,JXKH_DBZ1000')
	go

/************No.107: JXKH_DBZ1005******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ1005******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ1005' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ1005','FACT_ZLZB_JBBZ_DBZ','zfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ1005','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ1005','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.108: JXKH_DBZ1007******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ1007******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ1007' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ1007','','','JXKH_DBZ1008,JXKH_DBZ1000')
	go

/************No.109: JXKH_DBZ1008******************Y_COLUMN_MAP_ZBFACT***JXKH_DBZ1008******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='JXKH_DBZ1008' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ1008','FACT_ZLZB_JBBZ_DBZ','swls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ1008','FACT_ZLZB_JBBZ_DBZ','jxkhdbzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('JXKH_DBZ1008','FACT_ZLZB_JBBZ_DBZ','jxkhsybz','')
	go

/************No.110: J108******************Y_COLUMN_MAP_ZBFACT***J108******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='J108' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('J108','','','J10901,J109')
	go

/************No.111: J10901******************Y_COLUMN_MAP_ZBFACT***J10901******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='J10901' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb J10901'
go

/************No.112: J109******************Y_COLUMN_MAP_ZBFACT***J109******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='J109' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb J109'
go

/************No.113: J00304******************Y_COLUMN_MAP_ZBFACT***J00304******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='J00304' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb J00304'
go

/************No.114: J0030106******************Y_COLUMN_MAP_ZBFACT***J0030106******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='J0030106' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('J0030106','','','J0030107,J0030109')
	go

/************No.115: J0030107******************Y_COLUMN_MAP_ZBFACT***J0030107******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='J0030107' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb J0030107'
go

/************No.116: J0030109******************Y_COLUMN_MAP_ZBFACT***J0030109******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='J0030109' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb J0030109'
go

/************No.117: J0030110******************Y_COLUMN_MAP_ZBFACT***J0030110******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='J0030110' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('J0030110','','','J0030111,J0030112')
	go

/************No.118: J0030111******************Y_COLUMN_MAP_ZBFACT***J0030111******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='J0030111' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb J0030111'
go

/************No.119: J0030112******************Y_COLUMN_MAP_ZBFACT***J0030112******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='J0030112' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb J0030112'
go

/************No.120: ZBZL_YXZB_DRGS0020502******************Y_COLUMN_MAP_ZBFACT***ZBZL_YXZB_DRGS0020502******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZBZL_YXZB_DRGS0020502' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZBZL_YXZB_DRGS0020502','','','ZBZL_YXZB_DRGS0020501,ZBZL_YXZB_DRGS001')
	go

/************No.121: ZBZL_YXZB_DRGS0020501******************Y_COLUMN_MAP_ZBFACT***ZBZL_YXZB_DRGS0020501******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZBZL_YXZB_DRGS0020501' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZBZL_YXZB_DRGS0020501','FACT_GZ_YXZB_DRGS','swls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZBZL_YXZB_DRGS0020501','FACT_GZ_YXZB_DRGS','fxpgdjkey','')
	go

/************No.122: ZBZL_YXZB_DRGS00101******************Y_COLUMN_MAP_ZBFACT***ZBZL_YXZB_DRGS00101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZBZL_YXZB_DRGS00101' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZBZL_YXZB_DRGS00101'
go

/************No.123: F50002******************Y_COLUMN_MAP_ZBFACT***F50002******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F50002' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('F50002','','','F50001,F500')
	go

/************No.124: F50001******************Y_COLUMN_MAP_ZBFACT***F50001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F50001' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb F50001'
go

/************No.125: F500******************Y_COLUMN_MAP_ZBFACT***F500******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F500' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb F500'
go

/************No.126: E20122******************Y_COLUMN_MAP_ZBFACT***E20122******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E20122' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E20122','','','E20121,E201')
	go

/************No.127: E20121******************Y_COLUMN_MAP_ZBFACT***E20121******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E20121' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E20121','FACT_YP_CFLFX','dpcfs','')
	go

/************No.128: E201******************Y_COLUMN_MAP_ZBFACT***E201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E201','FACT_YP_CFLFX','cfs','')
	go

/************No.129: A1026******************Y_COLUMN_MAP_ZBFACT***A1026******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1026' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1026','','','A1025,A102')
	go

/************No.130: A1025******************Y_COLUMN_MAP_ZBFACT***A1025******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1025' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1025','FACT_YY_ZY_CYYWLFX','cyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1025','FACT_YY_ZY_CYYWLFX','yzdpbz','')
	go

/************No.131: E00209******************Y_COLUMN_MAP_ZBFACT***E00209******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00209' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00209','','','E00230,A111')
	go

/************No.132: E00230******************Y_COLUMN_MAP_ZBFACT***E00230******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00230' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00230','FACT_YP_ZY_FYFX','ddds','')
	go

/************No.133: A111******************Y_COLUMN_MAP_ZBFACT***A111******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A111' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A111','FACT_YY_ZY_CYYWLFX','zyts','')
	go

/************No.134: E20203******************Y_COLUMN_MAP_ZBFACT***E20203******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E20203' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E20203','','','E20103,E201')
	go

/************No.135: E20103******************Y_COLUMN_MAP_ZBFACT***E20103******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E20103' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E20103','FACT_YP_CFLFX','jbypcfs','')
	go

/************No.136: E00310******************Y_COLUMN_MAP_ZBFACT***E00310******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00310' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00310','','','E00308,G005')
	go

/************No.137: E00308******************Y_COLUMN_MAP_ZBFACT***E00308******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00308' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00308','FACT_YY_MZ_JZRC','jbywsyrc','')
	go

/************No.138: G005******************Y_COLUMN_MAP_ZBFACT***G005******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='G005' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('G005','FACT_YY_MZ_JZRC','yprc','')
	go

/************No.139: E00902******************Y_COLUMN_MAP_ZBFACT***E00902******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00902' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00902','','','E00901,A1027')
	go

/************No.140: E00901******************Y_COLUMN_MAP_ZBFACT***E00901******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00901' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00901','FACT_YY_ZY_CYYWLFX','cyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00901','FACT_YY_ZY_CYYWLFX','jbywsybz','')
	go

/************No.141: A1027******************Y_COLUMN_MAP_ZBFACT***A1027******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1027' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1027','FACT_YY_ZY_CYYWLFX','cyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1027','FACT_YY_ZY_CYYWLFX','ypsybz','')
	go

/************No.142: G30002******************Y_COLUMN_MAP_ZBFACT***G30002******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='G30002' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('G30002','','','G30001,G300')
	go

/************No.143: G30001******************Y_COLUMN_MAP_ZBFACT***G30001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='G30001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('G30001','FACT_DIM_YP','idm','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('G30001','FACT_DIM_YP','gjjzcgbz','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('G30001','FACT_DIM_YP','jybz','')
	go

/************No.144: G300******************Y_COLUMN_MAP_ZBFACT***G300******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='G300' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('G300','FACT_YP_JXCFX_YK','ypdm','')
	go

/************No.145: E00504******************Y_COLUMN_MAP_ZBFACT***E00504******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00504' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00504','','','E00503,E005')
	go

/************No.146: E00503******************Y_COLUMN_MAP_ZBFACT***E00503******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00503' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00503','','','E0050301,E0050302')
	go

/************No.147: E0050301******************Y_COLUMN_MAP_ZBFACT***E0050301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E0050301' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E0050301','FACT_YP_MZ_FYFX','ypsyl','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E0050301','FACT_YP_MZ_FYFX','gjjzcgbz','')
	go

/************No.148: E005******************Y_COLUMN_MAP_ZBFACT***E005******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E005' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E005','','','E00501,E00502')
	go

/************No.149: E00501******************Y_COLUMN_MAP_ZBFACT***E00501******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00501' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00501','FACT_YP_MZ_FYFX','ypsyl','')
	go

/************No.150: E00502******************Y_COLUMN_MAP_ZBFACT***E00502******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E00502' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E00502','FACT_YP_ZY_FYFX','ypsyl','')
	go

/************No.151: A006******************Y_COLUMN_MAP_ZBFACT***A006******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A006' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A006','','','A004,A003')
	go

/************No.152: A004******************Y_COLUMN_MAP_ZBFACT***A004******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A004' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A004','FACT_YY_MZ_YYRC','yyjzrc','')
	go

/************No.153: A003******************Y_COLUMN_MAP_ZBFACT***A003******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A003' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A003','FACT_YY_MZ_YYRC','yyrc','')
	go

/************No.154: A00309******************Y_COLUMN_MAP_ZBFACT***A00309******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A00309' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A00309','','','A00308,A00401')
	go

/************No.155: A00308******************Y_COLUMN_MAP_ZBFACT***A00308******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A00308' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb A00308'
go

/************No.156: A00401******************Y_COLUMN_MAP_ZBFACT***A00401******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A00401' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A00401','FACT_YY_MZ_YYRC','yxyyjzrc','')
	go

/************No.157: ZLZB_YY0091******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0091******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0091' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0091'
go

/************No.158: A115******************Y_COLUMN_MAP_ZBFACT***A115******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A115' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A115','','','A111,ZLZB_YY0005')
	go

/************No.159: ZLZB_YY0005******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0005******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0005' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0005','FACT_FY_MZ_FYFX','ghfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0005','FACT_FY_MZ_FYFX','cffy','')
	go

/************No.160: ZLZB_YY006601******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY006601******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY006601' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY006601','','','ZLZB_YY0066,ZLZB_YY0001')
	go

/************No.161: ZLZB_YY0066******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0066******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0066' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0066'
go

/************No.162: ZLZB_YY0001******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0001' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0001','FACT_BA_ZY_CWSYQK','kfcw','')
	go

/************No.163: B00103******************Y_COLUMN_MAP_ZBFACT***B00103******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00103' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00103','','','B00101,B001')
	go

/************No.164: B00101******************Y_COLUMN_MAP_ZBFACT***B00101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00101','FACT_FY_MZ_FYFX','ghfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00101','FACT_FY_MZ_FYFX','cffy','')
	go

/************No.165: C002020102******************Y_COLUMN_MAP_ZBFACT***C002020102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C002020102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C002020102','','','C0020201,B00101')
	go

/************No.166: C0020201******************Y_COLUMN_MAP_ZBFACT***C0020201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C0020201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C0020201','FACT_YB_YBZKFX','ybzffy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C0020201','FACT_YB_YBZKFX','mzzykey','')
	go

/************No.167: B00104******************Y_COLUMN_MAP_ZBFACT***B00104******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00104' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00104','','','B00102,B001')
	go

/************No.168: B00102******************Y_COLUMN_MAP_ZBFACT***B00102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00102','FACT_FY_ZY_FYFX','zfy','')
	go

/************No.169: C102020102******************Y_COLUMN_MAP_ZBFACT***C102020102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C102020102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C102020102','','','C1020201,B00102')
	go

/************No.170: C1020201******************Y_COLUMN_MAP_ZBFACT***C1020201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C1020201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1020201','FACT_YB_YBZKFX','ybzffy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C1020201','FACT_YB_YBZKFX','mzzykey','')
	go

/************No.171: C701******************Y_COLUMN_MAP_ZBFACT***C701******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C701' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C701','','','C702,C3020201')
	go

/************No.172: C702******************Y_COLUMN_MAP_ZBFACT***C702******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C702' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb C702'
go

/************No.173: C3020201******************Y_COLUMN_MAP_ZBFACT***C3020201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='C3020201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('C3020201','','','C1020201,C0020201')
	go

/************No.174: B00106******************Y_COLUMN_MAP_ZBFACT***B00106******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00106' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00106','','','B00105,B001')
	go

/************No.175: B00105******************Y_COLUMN_MAP_ZBFACT***B00105******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00105' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00105','','','B0010501,B0010502')
	go

/************No.176: B0010501******************Y_COLUMN_MAP_ZBFACT***B0010501******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B0010501' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0010501','FACT_FY_MZ_FYFX','ghfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0010501','FACT_FY_MZ_FYFX','cffy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0010501','FACT_FY_MZ_FYFX','dxmkey','')
	go

/************No.177: B0010502******************Y_COLUMN_MAP_ZBFACT***B0010502******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B0010502' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0010502','FACT_FY_ZY_FYFX','zfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0010502','FACT_FY_ZY_FYFX','dxmkey','')
	go

/************No.178: B002******************Y_COLUMN_MAP_ZBFACT***B002******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B002' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B002','','','B00201,B00202')
	go

/************No.179: B005******************Y_COLUMN_MAP_ZBFACT***B005******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B005' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B005','','','B00501,B00502')
	go

/************No.180: B009******************Y_COLUMN_MAP_ZBFACT***B009******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B009' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B009','','','B003,B004')
	go

/************No.181: B004******************Y_COLUMN_MAP_ZBFACT***B004******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B004' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B004','','','B00401,B00402')
	go

/************No.182: B00204******************Y_COLUMN_MAP_ZBFACT***B00204******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00204' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00204','','','B00203,B002')
	go

/************No.183: B00203******************Y_COLUMN_MAP_ZBFACT***B00203******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00203' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00203','','','B0020301,B0020302')
	go

/************No.184: B0020301******************Y_COLUMN_MAP_ZBFACT***B0020301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B0020301' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0020301','FACT_YP_MZ_FYFX','ypfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0020301','FACT_YP_MZ_FYFX','fzypbz','')
	go

/************No.185: B002030101******************Y_COLUMN_MAP_ZBFACT***B002030101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B002030101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B002030101','FACT_YP_MZ_FYFX','ypfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B002030101','FACT_YP_MZ_FYFX','fzypbz','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B002030101','FACT_YP_MZ_FYFX','mjzkey','')
	go

/************No.186: B002030102******************Y_COLUMN_MAP_ZBFACT***B002030102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B002030102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B002030102','FACT_YP_MZ_FYFX','ypfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B002030102','FACT_YP_MZ_FYFX','fzypbz','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B002030102','FACT_YP_MZ_FYFX','mjzkey','')
	go

/************No.187: B0020302******************Y_COLUMN_MAP_ZBFACT***B0020302******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B0020302' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0020302','FACT_YP_ZY_FYFX','ypfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0020302','FACT_YP_ZY_FYFX','fzypbz','')
	go

/************No.188: ZLZB_YY009202******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY009202******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY009202' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY009202','','','ZLZB_YY009201,ZLZB_YY0092')
	go

/************No.189: ZLZB_YY009201******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY009201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY009201' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY009201'
go

/************No.190: ZLZB_YY0092******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0092******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0092' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0092'
go

/************No.191: ZLZB_YY009204******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY009204******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY009204' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY009204'
go

/************No.192: ZLZB_YY009203******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY009203******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY009203' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY009203'
go

/************No.193: B000******************Y_COLUMN_MAP_ZBFACT***B000******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B000' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B000','','','B001,B303,B306,B312,B309')
	go

/************No.194: ZLZB_YY0093******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0093******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0093' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0093','','','B301,B308,B311')
	go

/************No.195: B301******************Y_COLUMN_MAP_ZBFACT***B301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B301' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B301','','','B321,B306,B307')
	go

/************No.196: B303******************Y_COLUMN_MAP_ZBFACT***B303******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B303' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B303'
go

/************No.197: B304******************Y_COLUMN_MAP_ZBFACT***B304******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B304' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B304'
go

/************No.198: B305******************Y_COLUMN_MAP_ZBFACT***B305******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B305' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B305'
go

/************No.199: B306******************Y_COLUMN_MAP_ZBFACT***B306******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B306' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B306'
go

/************No.200: B307******************Y_COLUMN_MAP_ZBFACT***B307******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B307' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B307'
go

/************No.201: B308******************Y_COLUMN_MAP_ZBFACT***B308******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B308' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B308','','','B309,B310')
	go

/************No.202: B309******************Y_COLUMN_MAP_ZBFACT***B309******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B309' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B309'
go

/************No.203: B310******************Y_COLUMN_MAP_ZBFACT***B310******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B310' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B310'
go

/************No.204: B311******************Y_COLUMN_MAP_ZBFACT***B311******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B311' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B311','','','B312,B313')
	go

/************No.205: B312******************Y_COLUMN_MAP_ZBFACT***B312******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B312' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B312'
go

/************No.206: B313******************Y_COLUMN_MAP_ZBFACT***B313******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B313' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B313'
go

/************No.207: ZLZB_YY0041******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0041******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0041' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0041','','','ZLZB_YY004102,ZLZB_YY004101')
	go

/************No.208: ZLZB_YY004101******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY004101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY004101' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY004101'
go

/************No.209: ZLZB_YY004102******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY004102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY004102' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY004102'
go

/************No.210: B317******************Y_COLUMN_MAP_ZBFACT***B317******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B317' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B317'
go

/************No.211: B316******************Y_COLUMN_MAP_ZBFACT***B316******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B316' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B316','','','B314,B315')
	go

/************No.212: B314******************Y_COLUMN_MAP_ZBFACT***B314******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B314' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B314','FACT_YP_MZ_FYFX','ypfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B314','FACT_YP_MZ_FYFX','tpypbz','')
	go

/************No.213: B315******************Y_COLUMN_MAP_ZBFACT***B315******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B315' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B315','FACT_YP_ZY_FYFX','ypfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B315','FACT_YP_ZY_FYFX','tpypbz','')
	go

/************No.214: B318******************Y_COLUMN_MAP_ZBFACT***B318******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B318' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B318'
go

/************No.215: B319******************Y_COLUMN_MAP_ZBFACT***B319******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B319' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B319'
go

/************No.216: B320******************Y_COLUMN_MAP_ZBFACT***B320******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B320' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B320'
go

/************No.217: B10101******************Y_COLUMN_MAP_ZBFACT***B10101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B10101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B10101','','','B0010101,A00101')
	go

/************No.218: B0010101******************Y_COLUMN_MAP_ZBFACT***B0010101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B0010101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0010101','FACT_FY_MZ_FYFX','ghfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0010101','FACT_FY_MZ_FYFX','cffy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0010101','FACT_FY_MZ_FYFX','mjzkey','')
	go

/************No.219: B10301******************Y_COLUMN_MAP_ZBFACT***B10301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B10301' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B10301','','','B0020101,A00101')
	go

/************No.220: B0020101******************Y_COLUMN_MAP_ZBFACT***B0020101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B0020101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0020101','FACT_YP_MZ_FYFX','ypfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B0020101','FACT_YP_MZ_FYFX','mjzkey','')
	go

/************No.221: B102******************Y_COLUMN_MAP_ZBFACT***B102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B102','','','B00102,A102')
	go

/************No.222: B104******************Y_COLUMN_MAP_ZBFACT***B104******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B104' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B104','','','B00202,A102')
	go

/************No.223: B00202******************Y_COLUMN_MAP_ZBFACT***B00202******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B00202' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B00202','FACT_YP_ZY_FYFX','ypfy','')
	go

/************No.224: ZLZB_YY00040102******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00040102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00040102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY00040102','','','ZLZB_YY00040101,ZLZB_YY000401')
	go

/************No.225: ZLZB_YY0004010201******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0004010201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0004010201' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0004010201'
go

/************No.226: ZLZB_YY000401******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000401******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000401' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY000401'
go

/************No.227: ZLZB_YY00040104******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00040104******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00040104' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY00040104','','','ZLZB_YY00040103,ZLZB_YY000401')
	go

/************No.228: ZLZB_YY0004010203******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0004010203******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0004010203' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0004010203'
go

/************No.229: ZLZB_YY00040106******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00040106******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00040106' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY00040106','','','ZLZB_YY00040105,ZLZB_YY000401')
	go

/************No.230: ZLZB_YY0004010205******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0004010205******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0004010205' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0004010205'
go

/************No.231: ZLZB_YY00040108******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00040108******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00040108' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY00040108','','','ZLZB_YY00040107,ZLZB_YY000401')
	go

/************No.232: ZLZB_YY00040107******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00040107******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00040107' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY00040107'
go

/************No.233: ZLZB_YY005801******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY005801******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY005801' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY005801','','','ZLZB_YY0058,ZLZB_YY0005')
	go

/************No.234: ZLZB_YY0058******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0058******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0058' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0058'
go

/************No.235: ZLZB_YY000501******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000501******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000501' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY000501','','','ZLZB_YY0057,ZLZB_YY0005')
	go

/************No.236: ZLZB_YY0057******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0057******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0057' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0057'
go

/************No.237: ZLZB_YY000503******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000503******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000503' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY000503','','','ZLZB_YY000502,ZLZB_YY0005')
	go

/************No.238: ZLZB_YY000502******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000502******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000502' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY000502'
go

/************No.239: ZLZB_YY000504******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000504******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000504' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY000504','','','ZLZB_YY0052,ZLZB_YY0005')
	go

/************No.240: ZLZB_YY0052******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0052******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0052' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0052'
go

/************No.241: ZLZB_YY000505******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000505******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000505' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY000505','','','ZLZB_ZLGL_LCBL001,ZLZB_YY0005')
	go

/************No.242: ZLZB_ZLGL_LCBL001******************Y_COLUMN_MAP_ZBFACT***ZLZB_ZLGL_LCBL001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_ZLGL_LCBL001' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_ZLGL_LCBL001'
go

/************No.243: ZLZB_YY000507******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000507******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000507' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY000507','','','ZLZB_YY000506,ZLZB_YY0005')
	go

/************No.244: ZLZB_YY000506******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY000506******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY000506' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY000506'
go

/************No.245: ZLZB_YY00040109******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00040109******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00040109' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY00040109','','','ZLZB_YY0005,ZLZB_YY0006')
	go

/************No.246: ZLZB_YY0006******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0006******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0006' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0006'
go

/************No.247: ZLZB_YY0094******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0094******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0094' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0094','','','ZLZB_YY009402,ZLZB_YY0112')
	go

/************No.248: ZLZB_YY0106******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0106******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0106' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0106'
go

/************No.249: ZLZB_YY0107******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0107******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0107' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0107'
go

/************No.250: ZLZB_YY0108******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0108******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0108' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0108'
go

/************No.251: ZLZB_YY0109******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0109******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0109' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0109'
go

/************No.252: ZLZB_YY0110******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0110******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0110' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0110'
go

/************No.253: ZLZB_YY0111******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0111******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0111' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0111'
go

/************No.254: ZLZB_YY0112******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0112******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0112' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0112'
go

/************No.255: ZLZB_YY0095******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0095******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0095' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0095','','','ZLZB_YY009502,ZLZB_YY009501')
	go

/************No.256: ZLZB_YY009502******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY009502******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY009502' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY009502'
go

/************No.257: ZLZB_YY009501******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY009501******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY009501' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY009501'
go

/************No.258: ZLZB_YY0113******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0113******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0113' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0113','','','ZLZB_YY00920101,ZLZB_YY0117')
	go

/************No.259: ZLZB_YY00920101******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY00920101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY00920101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY00920101','','','ZLZB_YY0114,ZLZB_YY0115,ZLZB_YY0116')
	go

/************No.260: ZLZB_YY0114******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0114******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0114' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0114'
go

/************No.261: ZLZB_YY0115******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0115******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0115' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0115'
go

/************No.262: ZLZB_YY0116******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0116******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0116' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0116'
go

/************No.263: ZLZB_YY0117******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0117******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0117' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0117','','','B304,B313')
	go

/************No.264: ZLZB_YY0096******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0096******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0096' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0096','','','ZLZB_YY0118,ZLZB_YY0119')
	go

/************No.265: ZLZB_YY0118******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0118******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0118' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0118'
go

/************No.266: ZLZB_YY0119******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0119******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0119' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0119'
go

/************No.267: ZLZB_YY0097******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0097******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0097' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0097','','','ZLZB_YY0120,ZLZB_YY0121,ZLZB_YY0122')
	go

/************No.268: ZLZB_YY0120******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0120******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0120' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0120'
go

/************No.269: ZLZB_YY0121******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0121******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0121' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0121'
go

/************No.270: ZLZB_YY0122******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0122******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0122' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0122'
go

/************No.271: ZLZB_YY0098******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0098******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0098' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0098'
go

/************No.272: ZLZB_YY0099******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0099******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0099' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0099','','','ZLZB_YY009901,ZLZB_YY000401')
	go

/************No.273: ZLZB_YY009901******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY009901******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY009901' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY009901'
go

/************No.274: ZLZB_YY0100******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0100******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0100' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZLZB_YY0100','','','ZLZB_YY010001,ZLZB_YY000401')
	go

/************No.275: ZLZB_YY010001******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY010001******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY010001' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY010001'
go

/************No.276: ZLZB_YY0101******************Y_COLUMN_MAP_ZBFACT***ZLZB_YY0101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZLZB_YY0101' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb ZLZB_YY0101'
go

/************No.277: F501******************Y_COLUMN_MAP_ZBFACT***F501******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F501' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb F501'
go

/************No.278: F502******************Y_COLUMN_MAP_ZBFACT***F502******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F502' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb F502'
go

/************No.279: F503******************Y_COLUMN_MAP_ZBFACT***F503******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='F503' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb F503'
go

/************No.280: G00501******************Y_COLUMN_MAP_ZBFACT***G00501******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='G00501' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('G00501','FACT_YY_MZ_JZRC','yprc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('G00501','FACT_YY_MZ_JZRC','mjzkey','')
	go

/************No.281: G00502******************Y_COLUMN_MAP_ZBFACT***G00502******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='G00502' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('G00502','FACT_YY_MZ_JZRC','yprc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('G00502','FACT_YY_MZ_JZRC','mjzkey','')
	go

/************No.282: ZBZL_YXZB_DRGS0020505******************Y_COLUMN_MAP_ZBFACT***ZBZL_YXZB_DRGS0020505******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZBZL_YXZB_DRGS0020505' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZBZL_YXZB_DRGS0020505','','','ZBZL_YXZB_DRGS0020201,ZBZL_YXZB_DRGS00202')
	go

/************No.283: ZBZL_YXZB_DRGS0020201******************Y_COLUMN_MAP_ZBFACT***ZBZL_YXZB_DRGS0020201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='ZBZL_YXZB_DRGS0020201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZBZL_YXZB_DRGS0020201','FACT_GZ_YXZB_DRGS','swls','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('ZBZL_YXZB_DRGS0020201','FACT_GZ_YXZB_DRGS','fxpgdjkey','')
	go

/************No.284: E3110201******************Y_COLUMN_MAP_ZBFACT***E3110201******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E3110201' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E3110201','FACT_YY_MZ_JZRC','zcyzsjrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E3110201','FACT_YY_MZ_JZRC','mjzkey','')
	go

/************No.285: A1021101******************Y_COLUMN_MAP_ZBFACT***A1021101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1021101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1021101','FACT_YY_ZY_CYYWLFX','zsjywsyrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1021101','FACT_YY_ZY_CYYWLFX','zcybz','')
	go

/************No.286: A1021102******************Y_COLUMN_MAP_ZBFACT***A1021102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='A1021102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('A1021102','','','A1021101,A102')
	go

/************No.287: E2030105******************Y_COLUMN_MAP_ZBFACT***E2030105******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E2030105' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E2030105','','','E3110201,A00101')
	go

/************No.288: E2030106******************Y_COLUMN_MAP_ZBFACT***E2030106******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E2030106' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E2030106','','','E3110202,A00102')
	go

/************No.289: E31102******************Y_COLUMN_MAP_ZBFACT***E31102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E31102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E31102','FACT_YY_MZ_JZRC','zcyzsjrc','')
	go

/************No.290: E3110202******************Y_COLUMN_MAP_ZBFACT***E3110202******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E3110202' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E3110202','FACT_YY_MZ_JZRC','zcyzsjrc','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E3110202','FACT_YY_MZ_JZRC','mjzkey','')
	go

/************No.291: E0030402******************Y_COLUMN_MAP_ZBFACT***E0030402******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E0030402' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E0030402','','','E0030401,E001')
	go

/************No.292: E0030401******************Y_COLUMN_MAP_ZBFACT***E0030401******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='E0030401' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E0030401','FACT_YP_MZ_FYFX','idm','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('E0030401','FACT_YP_MZ_FYFX','jbywbz','')
	go

/************No.293: B002090101******************Y_COLUMN_MAP_ZBFACT***B002090101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B002090101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B002090101','FACT_YP_MZ_FYFX','ypfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B002090101','FACT_YP_MZ_FYFX','yscfbz','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B002090101','FACT_YP_MZ_FYFX','mjzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B002090101','FACT_YP_MZ_FYFX','dxmkey','')
	go

/************No.294: B001090101******************Y_COLUMN_MAP_ZBFACT***B001090101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B001090101' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B001090101'
go

/************No.295: B001090102******************Y_COLUMN_MAP_ZBFACT***B001090102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B001090102' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B001090102'
go

/************No.296: B001090301******************Y_COLUMN_MAP_ZBFACT***B001090301******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B001090301' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B001090301'
go

/************No.297: B001090302******************Y_COLUMN_MAP_ZBFACT***B001090302******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B001090302' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B001090302'
go

/************No.298: B002010601******************Y_COLUMN_MAP_ZBFACT***B002010601******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B002010601' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B002010601'
go

/************No.299: B002010602******************Y_COLUMN_MAP_ZBFACT***B002010602******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B002010602' 
	print 'This table Y_COLUMN_MAP_ZBFACT  do not have the zb B002010602'
go

/************No.300: B002090102******************Y_COLUMN_MAP_ZBFACT***B002090102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B002090102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B002090102','FACT_YP_MZ_FYFX','ypfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B002090102','FACT_YP_MZ_FYFX','yscfbz','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B002090102','FACT_YP_MZ_FYFX','mjzkey','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B002090102','FACT_YP_MZ_FYFX','dxmkey','')
	go

/************No.301: B002100101******************Y_COLUMN_MAP_ZBFACT***B002100101******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B002100101' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B002100101','FACT_YP_MZ_FYFX','ypfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B002100101','FACT_YP_MZ_FYFX','yscfbz','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B002100101','FACT_YP_MZ_FYFX','mjzkey','')
	go

/************No.302: B002100102******************Y_COLUMN_MAP_ZBFACT***B002100102******************************/

	delete from Y_COLUMN_MAP_ZBFACT where zb_id='B002100102' 
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B002100102','FACT_YP_MZ_FYFX','ypfy','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B002100102','FACT_YP_MZ_FYFX','yscfbz','')
	INSERT Y_COLUMN_MAP_ZBFACT ( zb_id,fact_tablename,fact_colname,depend_zbids)
	values('B002100102','FACT_YP_MZ_FYFX','mjzkey','')
	go

