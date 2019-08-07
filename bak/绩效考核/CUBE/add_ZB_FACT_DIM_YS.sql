/************No.1: A32001******************ZB_FACT_DIM_YS***A32001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A32001' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_SEX','sexkey','sex','性别',' where',' where','sexkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32001','sum','A00101','1','A102','1','DIM_YB_YBLX','yblxkey','yblxmc','医保类型',' where',' where','yblxkey','','','','','','')
	go

/************No.2: A00101******************ZB_FACT_DIM_YS***A00101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A00101' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A00101','sum','A00101','1','0','0','DIM_MJZBZ','mjzkey','name','门急诊',' where',' where','mjzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A00101','sum','A00101','1','0','0','DIM_YYFS','yyfskey','yyfsmc','预约方式',' where',' where','yyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A00101','sum','A00101','1','0','0','DIM_CZRYK','czykey','rymc','操作人员',' where',' where','czykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A00101','sum','A00101','ghrc','0','0','DIM_CFZ','cfzbz','cfz','初复诊',' where',' where','cfzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A00101','sum','A00101','ghrc','0','0','DIM_NLD','nldkey','nld','年龄',' where',' where','nldkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A00101','sum','A00101','ghrc','0','0','DIM_SEX','sexkey','sex','性别',' where',' where','sexkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A00101','sum','A00101','ghrc','0','0','DIM_ZDDMK','zddmkey','zdmc','诊断',' where',' where','zddmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A00101','sum','A00101','ghrc','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A00101','sum','A00101','ghrc','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A00101','sum','A00101','ghrc','0','0','DIM_YB_YBLX','yblxkey','yblxmc','医保类型',' where',' where','yblxkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A00101','sum','A00101','ghrc','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A00101','sum','A00101','ghrc','0','0','DIM_GHLB','ghlbkey','ghlbmc','挂号类别',' where',' where','ghlbkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A00101','sum','A00101','ghrc','0','0','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	go

/************No.3: A102******************ZB_FACT_DIM_YS***A102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A102' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A102','sum','A102','cyrc','0','0','DIM_ZDDMK','ryzddmkey','zdmc','入院诊断',' where',' where','zddmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A102','sum','A102','cyrc','0','0','DIM_ZDDMK','cyzddmkey','zdmc','出院诊断',' where',' where','zddmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A102','sum','A102','1','0','0','DIM_ZYTS','zytskey','zyts','住院天数',' where',' where','zytskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A102','sum','A102','1','0','0','DIM_ZY_ZLD','zlzkey','zlzmc','诊疗组',' where',' where','zlzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A102','sum','A102','cyrc','0','0','DIM_CYFS','cyfskey','cyfsmc','出院方式',' where',' where','cyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A102','sum','A102','1','0','0','DIM_YB_YBLX','yblxkey','yblxmc','医保类型',' where',' where','yblxkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A102','sum','A102','1','0','0','DIM_BQDMK','rybqkey','name','入院病区',' where',' where','bqkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A102','sum','A102','1','0','0','DIM_BQDMK','bqkey','name','病区',' where',' where','bqkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A102','sum','A102','1','0','0','DIM_KSXX','rykskey','ksmc','入院科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A102','sum','A102','1','0','0','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A102','sum','A102','1','0','0','DIM_SEX','sexkey','sex','性别',' where',' where','sexkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A102','sum','A102','cyrc','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A102','sum','A102','cyrc','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A102','sum','A102','cyrc','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	go

/************No.4: A321******************ZB_FACT_DIM_YS***A321******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A321' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb A321'
go

/************No.5: A32101******************ZB_FACT_DIM_YS***A32101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A32101' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb A32101'
go

/************No.6: A32102******************ZB_FACT_DIM_YS***A32102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A32102' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32102','sum','A32102','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32102','sum','A32102','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A32102','sum','A32102','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.7: BA_D0025******************ZB_FACT_DIM_YS***BA_D0025******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='BA_D0025' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb BA_D0025'
go

/************No.8: BA_D0023******************ZB_FACT_DIM_YS***BA_D0023******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='BA_D0023' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb BA_D0023'
go

/************No.9: BA_D0024******************ZB_FACT_DIM_YS***BA_D0024******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='BA_D0024' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb BA_D0024'
go

/************No.10: BA_D0028******************ZB_FACT_DIM_YS***BA_D0028******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='BA_D0028' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb BA_D0028'
go

/************No.11: BA_D0026******************ZB_FACT_DIM_YS***BA_D0026******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='BA_D0026' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb BA_D0026'
go

/************No.12: BA_D0027******************ZB_FACT_DIM_YS***BA_D0027******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='BA_D0027' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb BA_D0027'
go

/************No.13: BA_D0030******************ZB_FACT_DIM_YS***BA_D0030******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='BA_D0030' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb BA_D0030'
go

/************No.14: BA_D0029******************ZB_FACT_DIM_YS***BA_D0029******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='BA_D0029' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb BA_D0029'
go

/************No.15: BA_D0032******************ZB_FACT_DIM_YS***BA_D0032******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='BA_D0032' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb BA_D0032'
go

/************No.16: BA_D0031******************ZB_FACT_DIM_YS***BA_D0031******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='BA_D0031' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb BA_D0031'
go

/************No.17: A32201******************ZB_FACT_DIM_YS***A32201******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A32201' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb A32201'
go

/************No.18: A322******************ZB_FACT_DIM_YS***A322******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A322' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb A322'
go

/************No.19: A32202******************ZB_FACT_DIM_YS***A32202******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A32202' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb A32202'
go

/************No.20: A32203******************ZB_FACT_DIM_YS***A32203******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A32203' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb A32203'
go

/************No.21: A323******************ZB_FACT_DIM_YS***A323******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A323' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb A323'
go

/************No.22: B10901******************ZB_FACT_DIM_YS***B10901******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B10901' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B10901'
go

/************No.23: B109******************ZB_FACT_DIM_YS***B109******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B109' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B109'
go

/************No.24: B10902******************ZB_FACT_DIM_YS***B10902******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B10902' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B10902'
go

/************No.25: B10903******************ZB_FACT_DIM_YS***B10903******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B10903' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B10903'
go

/************No.26: B001******************ZB_FACT_DIM_YS***B001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B001' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B001','sum','B001','1','0','1','DIM_ZDDMK','zddmkey','zdmc','诊断',' where',' where','zddmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B001','sum','B001','ghfy+cffy','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B001','sum','B001','ghfy+cffy','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B001','sum','B001','ghfy+cffy','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B001','sum','B001','ghfy+cffy','0','0','DIM_SFDXMK','dxmkey','dxmmc','收费大项目',' where',' where','dxmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B001','sum','B001','ghfy+cffy','0','0','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	go

/************No.27: BA_D0034******************ZB_FACT_DIM_YS***BA_D0034******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='BA_D0034' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb BA_D0034'
go

/************No.28: BA_D0033******************ZB_FACT_DIM_YS***BA_D0033******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='BA_D0033' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb BA_D0033'
go

/************No.29: BA_D0037******************ZB_FACT_DIM_YS***BA_D0037******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='BA_D0037' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb BA_D0037'
go

/************No.30: BA_D0036******************ZB_FACT_DIM_YS***BA_D0036******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='BA_D0036' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb BA_D0036'
go

/************No.31: BA_D0035******************ZB_FACT_DIM_YS***BA_D0035******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='BA_D0035' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb BA_D0035'
go

/************No.32: JXHK_DBZ004******************ZB_FACT_DIM_YS***JXHK_DBZ004******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXHK_DBZ004' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXHK_DBZ004'
go

/************No.33: JXHK_DBZ005******************ZB_FACT_DIM_YS***JXHK_DBZ005******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXHK_DBZ005' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXHK_DBZ005'
go

/************No.34: JXHK_DBZ007******************ZB_FACT_DIM_YS***JXHK_DBZ007******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXHK_DBZ007' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXHK_DBZ007'
go

/************No.35: JXHK_DBZ006******************ZB_FACT_DIM_YS***JXHK_DBZ006******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXHK_DBZ006' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXHK_DBZ006'
go

/************No.36: JXHK_DBZ001******************ZB_FACT_DIM_YS***JXHK_DBZ001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXHK_DBZ001' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXHK_DBZ001'
go

/************No.37: JXHK_DBZ002******************ZB_FACT_DIM_YS***JXHK_DBZ002******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXHK_DBZ002' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXHK_DBZ002'
go

/************No.38: JXHK_DBZ003******************ZB_FACT_DIM_YS***JXHK_DBZ003******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXHK_DBZ003' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXHK_DBZ003'
go

/************No.39: JXKH_DBZ100******************ZB_FACT_DIM_YS***JXKH_DBZ100******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ100' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ100'
go

/************No.40: JXKH_DBZ101******************ZB_FACT_DIM_YS***JXKH_DBZ101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ101' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ101'
go

/************No.41: JXKH_DBZ102******************ZB_FACT_DIM_YS***JXKH_DBZ102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ102' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ102'
go

/************No.42: JXKH_DBZ103******************ZB_FACT_DIM_YS***JXKH_DBZ103******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ103' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ103'
go

/************No.43: JXKH_DBZ104******************ZB_FACT_DIM_YS***JXKH_DBZ104******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ104' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ104'
go

/************No.44: JXKH_DBZ105******************ZB_FACT_DIM_YS***JXKH_DBZ105******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ105' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ105'
go

/************No.45: JXKH_DBZ107******************ZB_FACT_DIM_YS***JXKH_DBZ107******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ107' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ107'
go

/************No.46: JXKH_DBZ108******************ZB_FACT_DIM_YS***JXKH_DBZ108******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ108' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ108'
go

/************No.47: JXKH_DBZ200******************ZB_FACT_DIM_YS***JXKH_DBZ200******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ200' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ200'
go

/************No.48: JXKH_DBZ201******************ZB_FACT_DIM_YS***JXKH_DBZ201******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ201' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ201'
go

/************No.49: JXKH_DBZ202******************ZB_FACT_DIM_YS***JXKH_DBZ202******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ202' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ202'
go

/************No.50: JXKH_DBZ204******************ZB_FACT_DIM_YS***JXKH_DBZ204******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ204' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ204'
go

/************No.51: JXKH_DBZ205******************ZB_FACT_DIM_YS***JXKH_DBZ205******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ205' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ205'
go

/************No.52: JXKH_DBZ207******************ZB_FACT_DIM_YS***JXKH_DBZ207******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ207' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ207'
go

/************No.53: JXKH_DBZ208******************ZB_FACT_DIM_YS***JXKH_DBZ208******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ208' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ208'
go

/************No.54: JXKH_DBZ300******************ZB_FACT_DIM_YS***JXKH_DBZ300******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ300' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ300'
go

/************No.55: JXKH_DBZ301******************ZB_FACT_DIM_YS***JXKH_DBZ301******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ301' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ301'
go

/************No.56: JXKH_DBZ302******************ZB_FACT_DIM_YS***JXKH_DBZ302******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ302' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ302'
go

/************No.57: JXKH_DBZ304******************ZB_FACT_DIM_YS***JXKH_DBZ304******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ304' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ304'
go

/************No.58: JXKH_DBZ305******************ZB_FACT_DIM_YS***JXKH_DBZ305******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ305' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ305'
go

/************No.59: JXKH_DBZ307******************ZB_FACT_DIM_YS***JXKH_DBZ307******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ307' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ307'
go

/************No.60: JXKH_DBZ308******************ZB_FACT_DIM_YS***JXKH_DBZ308******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ308' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ308'
go

/************No.61: JXKH_DBZ400******************ZB_FACT_DIM_YS***JXKH_DBZ400******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ400' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ400'
go

/************No.62: JXKH_DBZ401******************ZB_FACT_DIM_YS***JXKH_DBZ401******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ401' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ401'
go

/************No.63: JXKH_DBZ402******************ZB_FACT_DIM_YS***JXKH_DBZ402******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ402' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ402'
go

/************No.64: JXKH_DBZ404******************ZB_FACT_DIM_YS***JXKH_DBZ404******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ404' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ404'
go

/************No.65: JXKH_DBZ405******************ZB_FACT_DIM_YS***JXKH_DBZ405******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ405' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ405'
go

/************No.66: JXKH_DBZ407******************ZB_FACT_DIM_YS***JXKH_DBZ407******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ407' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ407'
go

/************No.67: JXKH_DBZ408******************ZB_FACT_DIM_YS***JXKH_DBZ408******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ408' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ408'
go

/************No.68: JXKH_DBZ500******************ZB_FACT_DIM_YS***JXKH_DBZ500******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ500' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ500'
go

/************No.69: JXKH_DBZ501******************ZB_FACT_DIM_YS***JXKH_DBZ501******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ501' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ501'
go

/************No.70: JXKH_DBZ502******************ZB_FACT_DIM_YS***JXKH_DBZ502******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ502' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ502'
go

/************No.71: JXKH_DBZ504******************ZB_FACT_DIM_YS***JXKH_DBZ504******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ504' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ504'
go

/************No.72: JXKH_DBZ505******************ZB_FACT_DIM_YS***JXKH_DBZ505******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ505' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ505'
go

/************No.73: JXKH_DBZ507******************ZB_FACT_DIM_YS***JXKH_DBZ507******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ507' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ507'
go

/************No.74: JXKH_DBZ508******************ZB_FACT_DIM_YS***JXKH_DBZ508******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ508' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ508'
go

/************No.75: JXKH_DBZ600******************ZB_FACT_DIM_YS***JXKH_DBZ600******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ600' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ600'
go

/************No.76: JXKH_DBZ601******************ZB_FACT_DIM_YS***JXKH_DBZ601******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ601' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ601'
go

/************No.77: JXKH_DBZ602******************ZB_FACT_DIM_YS***JXKH_DBZ602******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ602' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ602'
go

/************No.78: JXKH_DBZ604******************ZB_FACT_DIM_YS***JXKH_DBZ604******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ604' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ604'
go

/************No.79: JXKH_DBZ605******************ZB_FACT_DIM_YS***JXKH_DBZ605******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ605' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ605'
go

/************No.80: JXKH_DBZ607******************ZB_FACT_DIM_YS***JXKH_DBZ607******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ607' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ607'
go

/************No.81: JXKH_DBZ608******************ZB_FACT_DIM_YS***JXKH_DBZ608******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ608' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ608'
go

/************No.82: JXKH_DBZ700******************ZB_FACT_DIM_YS***JXKH_DBZ700******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ700' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ700'
go

/************No.83: JXKH_DBZ701******************ZB_FACT_DIM_YS***JXKH_DBZ701******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ701' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ701'
go

/************No.84: JXKH_DBZ702******************ZB_FACT_DIM_YS***JXKH_DBZ702******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ702' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ702'
go

/************No.85: JXKH_DBZ704******************ZB_FACT_DIM_YS***JXKH_DBZ704******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ704' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ704'
go

/************No.86: JXKH_DBZ705******************ZB_FACT_DIM_YS***JXKH_DBZ705******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ705' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ705'
go

/************No.87: JXKH_DBZ707******************ZB_FACT_DIM_YS***JXKH_DBZ707******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ707' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ707'
go

/************No.88: JXKH_DBZ708******************ZB_FACT_DIM_YS***JXKH_DBZ708******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ708' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ708'
go

/************No.89: JXKH_DBZ800******************ZB_FACT_DIM_YS***JXKH_DBZ800******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ800' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ800'
go

/************No.90: JXKH_DBZ801******************ZB_FACT_DIM_YS***JXKH_DBZ801******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ801' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ801'
go

/************No.91: JXKH_DBZ802******************ZB_FACT_DIM_YS***JXKH_DBZ802******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ802' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ802'
go

/************No.92: JXKH_DBZ804******************ZB_FACT_DIM_YS***JXKH_DBZ804******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ804' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ804'
go

/************No.93: JXKH_DBZ805******************ZB_FACT_DIM_YS***JXKH_DBZ805******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ805' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ805'
go

/************No.94: JXKH_DBZ807******************ZB_FACT_DIM_YS***JXKH_DBZ807******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ807' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ807'
go

/************No.95: JXKH_DBZ808******************ZB_FACT_DIM_YS***JXKH_DBZ808******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ808' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ808'
go

/************No.96: JXKH_DBZ900******************ZB_FACT_DIM_YS***JXKH_DBZ900******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ900' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ900'
go

/************No.97: JXKH_DBZ901******************ZB_FACT_DIM_YS***JXKH_DBZ901******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ901' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ901'
go

/************No.98: JXKH_DBZ902******************ZB_FACT_DIM_YS***JXKH_DBZ902******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ902' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ902'
go

/************No.99: JXKH_DBZ904******************ZB_FACT_DIM_YS***JXKH_DBZ904******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ904' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ904'
go

/************No.100: JXKH_DBZ905******************ZB_FACT_DIM_YS***JXKH_DBZ905******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ905' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ905'
go

/************No.101: JXKH_DBZ907******************ZB_FACT_DIM_YS***JXKH_DBZ907******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ907' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ907'
go

/************No.102: JXKH_DBZ908******************ZB_FACT_DIM_YS***JXKH_DBZ908******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ908' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ908'
go

/************No.103: JXKH_DBZ1000******************ZB_FACT_DIM_YS***JXKH_DBZ1000******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ1000' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ1000'
go

/************No.104: JXKH_DBZ1001******************ZB_FACT_DIM_YS***JXKH_DBZ1001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ1001' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ1001'
go

/************No.105: JXKH_DBZ1002******************ZB_FACT_DIM_YS***JXKH_DBZ1002******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ1002' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ1002'
go

/************No.106: JXKH_DBZ1004******************ZB_FACT_DIM_YS***JXKH_DBZ1004******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ1004' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ1004'
go

/************No.107: JXKH_DBZ1005******************ZB_FACT_DIM_YS***JXKH_DBZ1005******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ1005' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ1005'
go

/************No.108: JXKH_DBZ1007******************ZB_FACT_DIM_YS***JXKH_DBZ1007******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ1007' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ1007'
go

/************No.109: JXKH_DBZ1008******************ZB_FACT_DIM_YS***JXKH_DBZ1008******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='JXKH_DBZ1008' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb JXKH_DBZ1008'
go

/************No.110: J108******************ZB_FACT_DIM_YS***J108******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='J108' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J108','sum','J108','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J108','sum','J108','1','0','0','DIM_LIS_INSTRUMENT','yqkey','yqmc','检验仪器',' where',' where','yqkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J108','sum','J108','1','0','0','DIM_JCLB','jclbkey','jclbmc','检查类别',' where',' where','jclbkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J108','sum','J108','1','0','0','DIM_MZZY','mzzykey','mzzyname','门诊住院',' where',' where','mzzykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J108','sum','J108','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J108','sum','J108','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J108','sum','J108','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.111: J10901******************ZB_FACT_DIM_YS***J10901******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='J10901' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb J10901'
go

/************No.112: J109******************ZB_FACT_DIM_YS***J109******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='J109' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb J109'
go

/************No.113: J00304******************ZB_FACT_DIM_YS***J00304******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='J00304' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb J00304'
go

/************No.114: J0030106******************ZB_FACT_DIM_YS***J0030106******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='J0030106' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J0030106','sum','J00301','1','J0030105','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('J0030106','sum','J00301','1','J0030105','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.115: J0030107******************ZB_FACT_DIM_YS***J0030107******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='J0030107' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb J0030107'
go

/************No.116: J0030109******************ZB_FACT_DIM_YS***J0030109******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='J0030109' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb J0030109'
go

/************No.117: J0030110******************ZB_FACT_DIM_YS***J0030110******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='J0030110' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb J0030110'
go

/************No.118: J0030111******************ZB_FACT_DIM_YS***J0030111******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='J0030111' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb J0030111'
go

/************No.119: J0030112******************ZB_FACT_DIM_YS***J0030112******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='J0030112' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb J0030112'
go

/************No.120: ZBZL_YXZB_DRGS0020502******************ZB_FACT_DIM_YS***ZBZL_YXZB_DRGS0020502******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZBZL_YXZB_DRGS0020502' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS0020502','sum','ZBZL_YXZB_DRGS0020501','1','ZBZL_YXZB_DRGS002','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS0020502','sum','ZBZL_YXZB_DRGS0020501','1','ZBZL_YXZB_DRGS002','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS0020502','sum','ZBZL_YXZB_DRGS0020501','1','ZBZL_YXZB_DRGS002','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS0020502','sum','ZBZL_YXZB_DRGS0020501','1','ZBZL_YXZB_DRGS002','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS0020502','sum','ZBZL_YXZB_DRGS0020501','1','ZBZL_YXZB_DRGS002','1','DIM_DRGS','drgskey','drgsmc','诊断相关分组',' where',' where','drgskey','','','','','','')
	go

/************No.121: ZBZL_YXZB_DRGS0020501******************ZB_FACT_DIM_YS***ZBZL_YXZB_DRGS0020501******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZBZL_YXZB_DRGS0020501' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS0020501','sum','ZBZL_YXZB_DRGS0020501','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS0020501','sum','ZBZL_YXZB_DRGS0020501','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS0020501','sum','ZBZL_YXZB_DRGS0020501','1','0','0','DIM_DRGS','drgskey','drgsmc','诊断相关分组',' where',' where','drgskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS0020501','sum','ZBZL_YXZB_DRGS0020501','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS0020501','sum','ZBZL_YXZB_DRGS0020501','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	go

/************No.122: ZBZL_YXZB_DRGS00101******************ZB_FACT_DIM_YS***ZBZL_YXZB_DRGS00101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZBZL_YXZB_DRGS00101' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS00101','sum','ZBZL_YXZB_DRGS00101','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS00101','sum','ZBZL_YXZB_DRGS00101','1','0','0','DIM_DRGS_FXPGDJ','fxpgdjkey','fxpf','诊断相关分组的风险评估等级',' where',' where','fxpgdjkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS00101','sum','ZBZL_YXZB_DRGS00101','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS00101','sum','ZBZL_YXZB_DRGS00101','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZBZL_YXZB_DRGS00101','sum','ZBZL_YXZB_DRGS00101','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.123: F50002******************ZB_FACT_DIM_YS***F50002******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='F50002' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('F50002','sum','F50001','1','F500','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('F50002','sum','F50001','1','F500','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.124: F50001******************ZB_FACT_DIM_YS***F50001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='F50001' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb F50001'
go

/************No.125: F500******************ZB_FACT_DIM_YS***F500******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='F500' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb F500'
go

/************No.126: E20122******************ZB_FACT_DIM_YS***E20122******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E20122' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20122','sum','E20121','1','E201','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20122','sum','E20121','1','E201','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20122','sum','E20121','1','E201','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20122','sum','E20121','1','E201','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	go

/************No.127: E20121******************ZB_FACT_DIM_YS***E20121******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E20121' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20121','sum','E20121','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20121','sum','E20121','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20121','sum','E20121','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20121','sum','E20121','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	go

/************No.128: E201******************ZB_FACT_DIM_YS***E201******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E201' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E201','sum','E201','cfs','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E201','sum','E201','cfs','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E201','sum','E201','1','0','0','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E201','sum','E201','cfs','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.129: A1026******************ZB_FACT_DIM_YS***A1026******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A1026' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb A1026'
go

/************No.130: A1025******************ZB_FACT_DIM_YS***A1025******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A1025' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A1025','sum','A1025','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A1025','sum','A1025','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A1025','sum','A1025','1','0','0','DIM_BQDMK','bqkey','name','病区',' where',' where','bqkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A1025','sum','A1025','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.131: E00209******************ZB_FACT_DIM_YS***E00209******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E00209' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00209','sum','E00230','1','A111','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00209','sum','E00230','1','A111','1','DIM_ZY_ZLD','zlzkey','zlzmc','诊疗组',' where',' where','zlzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00209','sum','E00230','1','A111','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00209','sum','E00230','1','A111','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00209','sum','E00230','1','A111','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.132: E00230******************ZB_FACT_DIM_YS***E00230******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E00230' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00230','sum','E00230','1','0','0','DIM_ZY_ZLD','zlzkey','zlzmc','诊疗组',' where',' where','zlzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00230','sum','E00230','1','0','0','DIM_YPFL','ypflkey','flmc','药品分类',' where',' where','ypflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00230','sum','E00230','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00230','sum','E00230','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00230','sum','E00230','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00230','sum','E00230','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00230','sum','E00230','1','0','0','DIM_YPXX','ypkey','ypmc','药品',' where',' where','ypkey','','','','','','')
	go

/************No.133: A111******************ZB_FACT_DIM_YS***A111******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A111' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A111','sum','A111','1','0','0','DIM_KSXX','rykskey','ksmc','入院科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A111','sum','A111','1','0','0','DIM_ZYTS','zytskey','zyts','住院天数',' where',' where','zytskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A111','sum','A111','zyts','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A111','sum','A111','zyts','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A111','sum','A111','zyts','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A111','sum','A111','1','0','0','DIM_BQDMK','rybqkey','name','入院病区',' where',' where','bqkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A111','sum','A111','1','0','0','DIM_ZDDMK','cyzddmkey','zdmc','出院诊断',' where',' where','zddmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A111','sum','A111','1','0','0','DIM_ZY_ZLD','zlzkey','zlzmc','诊疗组',' where',' where','zlzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A111','sum','A111','1','0','0','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A111','sum','A111','1','0','0','DIM_CYFS','cyfskey','cyfsmc','出院方式',' where',' where','cyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A111','sum','A111','1','0','0','DIM_ZDDMK','ryzddmkey','zdmc','入院诊断',' where',' where','zddmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A111','sum','A111','1','0','0','DIM_QZTS','qztskey','qztsmc','确诊天数',' where',' where','qztskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A111','sum','A111','1','0','0','DIM_BQDMK','bqkey','name','病区',' where',' where','bqkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A111','sum','A111','1','0','0','DIM_SEX','sexkey','sex','性别',' where',' where','sexkey','','','','','','')
	go

/************No.134: E20203******************ZB_FACT_DIM_YS***E20203******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E20203' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20203','sum','E20103','1','E20105','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20203','sum','E20103','1','E20105','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20203','sum','E20103','1','E20105','1','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20203','sum','E20103','1','E20105','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	go

/************No.135: E20103******************ZB_FACT_DIM_YS***E20103******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E20103' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20103','sum','E20103','jbypcfs','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20103','sum','E20103','jbypcfs','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20103','sum','E20103','jbypcfs','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E20103','sum','E20103','1','0','0','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	go

/************No.136: E00310******************ZB_FACT_DIM_YS***E00310******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E00310' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00310','sum','A001','1','E00308','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00310','sum','A001','1','E00308','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.137: E00308******************ZB_FACT_DIM_YS***E00308******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E00308' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00308','sum','E00308','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00308','sum','E00308','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00308','sum','E00308','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	go

/************No.138: G005******************ZB_FACT_DIM_YS***G005******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='G005' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G005','sum','G005','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G005','sum','G005','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G005','sum','G005','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G005','sum','G005','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	go

/************No.139: E00902******************ZB_FACT_DIM_YS***E00902******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E00902' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00902','sum','E00901','1','A102','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00902','sum','E00901','1','A102','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00902','sum','E00901','1','A102','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.140: E00901******************ZB_FACT_DIM_YS***E00901******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E00901' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00901','sum','E00901','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00901','sum','E00901','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E00901','sum','E00901','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.141: A1027******************ZB_FACT_DIM_YS***A1027******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A1027' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb A1027'
go

/************No.142: G30002******************ZB_FACT_DIM_YS***G30002******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='G30002' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G30002','sum','G30001','1','G300','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G30002','sum','G30001','1','G300','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G30002','sum','G30001','1','G300','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.143: G30001******************ZB_FACT_DIM_YS***G30001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='G30001' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G30001','sum','G30001','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G30001','sum','G30001','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G30001','sum','G30001','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	go

/************No.144: G300******************ZB_FACT_DIM_YS***G300******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='G300' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G300','sum','G300','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G300','sum','G300','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G300','sum','G300','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	go

/************No.145: E00504******************ZB_FACT_DIM_YS***E00504******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E00504' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb E00504'
go

/************No.146: E00503******************ZB_FACT_DIM_YS***E00503******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E00503' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb E00503'
go

/************No.147: E0050301******************ZB_FACT_DIM_YS***E0050301******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E0050301' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb E0050301'
go

/************No.148: E005******************ZB_FACT_DIM_YS***E005******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E005' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb E005'
go

/************No.149: E00501******************ZB_FACT_DIM_YS***E00501******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E00501' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb E00501'
go

/************No.150: E00502******************ZB_FACT_DIM_YS***E00502******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E00502' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb E00502'
go

/************No.151: A006******************ZB_FACT_DIM_YS***A006******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A006' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A006','sum','A004','1','A003','1','DIM_YYFS','yyfskey','yyfsmc','预约方式',' where',' where','yyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A006','sum','A004','1','A003','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A006','sum','A004','1','A003','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A006','sum','A004','1','A003','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	go

/************No.152: A004******************ZB_FACT_DIM_YS***A004******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A004' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A004','sum','A004','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A004','sum','A004','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A004','sum','A004','1','0','0','DIM_YYFS','yyfskey','yyfsmc','预约方式',' where',' where','yyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A004','sum','A004','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	go

/************No.153: A003******************ZB_FACT_DIM_YS***A003******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A003' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A003','sum','A003','yyrc','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A003','sum','A003','yyrc','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A003','sum','A003','yyrc','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A003','sum','A003','yyrc','0','0','DIM_YYFS','yyfskey','yyfsmc','预约方式',' where',' where','yyfskey','','','','','','')
	go

/************No.154: A00309******************ZB_FACT_DIM_YS***A00309******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A00309' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb A00309'
go

/************No.155: A00308******************ZB_FACT_DIM_YS***A00308******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A00308' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb A00308'
go

/************No.156: A00401******************ZB_FACT_DIM_YS***A00401******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A00401' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A00401','sum','A00401','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A00401','sum','A00401','1','0','0','DIM_YYFS','yyfskey','yyfsmc','预约方式',' where',' where','yyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A00401','sum','A00401','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A00401','sum','A00401','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A00401','sum','A00401','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.157: ZLZB_YY0091******************ZB_FACT_DIM_YS***ZLZB_YY0091******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0091' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0091'
go

/************No.158: A115******************ZB_FACT_DIM_YS***A115******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A115' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A115','sum','A111','1','ZLZB_YY0005','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('A115','sum','A111','1','ZLZB_YY0005','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.159: ZLZB_YY0005******************ZB_FACT_DIM_YS***ZLZB_YY0005******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0005' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0005'
go

/************No.160: ZLZB_YY006601******************ZB_FACT_DIM_YS***ZLZB_YY006601******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY006601' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY006601','sum','ZLZB_YY0066','1','ZLZB_YY0001','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY006601','sum','ZLZB_YY0066','1','ZLZB_YY0001','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.161: ZLZB_YY0066******************ZB_FACT_DIM_YS***ZLZB_YY0066******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0066' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0066'
go

/************No.162: ZLZB_YY0001******************ZB_FACT_DIM_YS***ZLZB_YY0001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0001' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY0001','sum','ZLZB_YY0001','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY0001','sum','ZLZB_YY0001','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY0001','sum','ZLZB_YY0001','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.163: B00103******************ZB_FACT_DIM_YS***B00103******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B00103' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00103','sum','B00101','1','B001','1','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00103','sum','B00101','1','B001','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00103','sum','B00101','1','B001','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00103','sum','B00101','1','B001','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00103','sum','B00101','1','B001','1','DIM_ZDDMK','zddmkey','zdmc','诊断',' where',' where','zddmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00103','sum','B00101','1','B001','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00103','sum','B00101','1','B001','1','DIM_SFDXMK','dxmkey','dxmmc','收费大项目',' where',' where','dxmkey','','','','','','')
	go

/************No.164: B00101******************ZB_FACT_DIM_YS***B00101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B00101' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00101','sum','B00101','ghfy+cffy','0','0','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00101','sum','B00101','1','0','0','DIM_SFDXMK','dxmkey','dxmmc','大项目',' where',' where','dxmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00101','sum','B00101','1','0','0','DIM_ZDDMK','zddmkey','zdmc','诊断',' where',' where','zddmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00101','sum','B00101','1','0','0','DIM_CZRYK','czykey','rymc','操作人员',' where',' where','czykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00101','sum','B00101','ghfy+cffy','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00101','sum','B00101','ghfy+cffy','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00101','sum','B00101','ghfy+cffy','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	go

/************No.165: C002020102******************ZB_FACT_DIM_YS***C002020102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='C002020102' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C002020102','sum','C0020201','1','B00101','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C002020102','sum','C0020201','1','B00101','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C002020102','sum','C0020201','1','B00101','1','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C002020102','sum','C0020201','1','B00101','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C002020102','sum','C0020201','1','B00101','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	go

/************No.166: C0020201******************ZB_FACT_DIM_YS***C0020201******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='C0020201' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C0020201','sum','C0020201','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C0020201','sum','C0020201','1','0','0','DIM_YB_YBLX','yblxkey','yblxmc','医保类型',' where',' where','yblxkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C0020201','sum','C0020201','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C0020201','sum','C0020201','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C0020201','sum','C0020201','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C0020201','sum','C0020201','1','0','0','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	go

/************No.167: B00104******************ZB_FACT_DIM_YS***B00104******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B00104' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_ZDDMK','zddmkey','zdmc','诊断',' where',' where','zddmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_SFDXMK','dxmkey','dxmmc','收费大项目',' where',' where','dxmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_BQDMK','bqkey','name','病区',' where',' where','bqkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00104','sum','B00102','1','B001','1','DIM_ZY_ZLZXX','zlzkey','zlzmc','诊疗组',' where',' where','zlzkey','','','','','','')
	go

/************No.168: B00102******************ZB_FACT_DIM_YS***B00102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B00102' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00102','sum','B00102','zfy','0','0','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00102','sum','B00102','zfy','0','0','DIM_BQDMK','bqkey','name','病区',' where',' where','bqkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00102','sum','B00102','zfy','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00102','sum','B00102','zfy','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00102','sum','B00102','zfy','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00102','sum','B00102','zfy','0','0','DIM_SFDXMK','dxmkey','dxmmc','收费大项目',' where',' where','dxmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00102','sum','B00102','1','0','0','DIM_ZDDMK','zddmkey','zdmc','诊断',' where',' where','zddmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00102','sum','B00102','1','0','0','DIM_ZY_ZLD','zlzkey','zlzmc','诊疗组',' where',' where','zlzkey','','','','','','')
	go

/************No.169: C102020102******************ZB_FACT_DIM_YS***C102020102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='C102020102' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C102020102','sum','C1020201','1','B00102','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C102020102','sum','C1020201','1','B00102','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C102020102','sum','C1020201','1','B00102','1','DIM_ZY_ZLZXX','zlzkey','zlzmc','诊疗组',' where',' where','zlzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C102020102','sum','C1020201','1','B00102','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C102020102','sum','C1020201','1','B00102','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C102020102','sum','C1020201','1','B00102','1','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	go

/************No.170: C1020201******************ZB_FACT_DIM_YS***C1020201******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='C1020201' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C1020201','sum','C1020201','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C1020201','sum','C1020201','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C1020201','sum','C1020201','1','0','0','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C1020201','sum','C1020201','1','0','0','DIM_ZY_ZLD','zlzkey','zlzmc','诊疗组',' where',' where','zlzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C1020201','sum','C1020201','1','0','0','DIM_YB_YBLX','yblxkey','yblxmc','医保类型',' where',' where','yblxkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C1020201','sum','C1020201','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('C1020201','sum','C1020201','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	go

/************No.171: C701******************ZB_FACT_DIM_YS***C701******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='C701' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb C701'
go

/************No.172: C702******************ZB_FACT_DIM_YS***C702******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='C702' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb C702'
go

/************No.173: C3020201******************ZB_FACT_DIM_YS***C3020201******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='C3020201' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb C3020201'
go

/************No.174: B00106******************ZB_FACT_DIM_YS***B00106******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B00106' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00106','sum','B00105','1','B001','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00106','sum','B00105','1','B001','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00106','sum','B00105','1','B001','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.175: B00105******************ZB_FACT_DIM_YS***B00105******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B00105' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00105','sum','B00105','1','0','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00105','sum','B00105','1','0','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00105','sum','B00105','1','0','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.176: B0010501******************ZB_FACT_DIM_YS***B0010501******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B0010501' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0010501','sum','B0010501','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0010501','sum','B0010501','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0010501','sum','B0010501','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	go

/************No.177: B0010502******************ZB_FACT_DIM_YS***B0010502******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B0010502' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0010502','sum','B0010502','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0010502','sum','B0010502','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0010502','sum','B0010502','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.178: B002******************ZB_FACT_DIM_YS***B002******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B002' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B002','sum','B002','1','0','1','DIM_YPFL','ypflkey','flmc','药品分类',' where',' where','ypflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B002','sum','B002','1','0','1','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B002','sum','B002','1','0','1','DIM_KSSJB','kssjbkey','kssjbmc','抗生素级别',' where',' where','kssjbkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B002','sum','B002','1','0','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B002','sum','B002','1','0','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B002','sum','B002','1','0','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B002','sum','B002','1','0','1','DIM_YPDL','ypdlkey','dlmc','药品大类',' where',' where','ypdlkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B002','sum','B002','1','0','1','DIM_TSYPBZ','tsypbzkey','tsypbzmc','特殊药品类别',' where',' where','tsypbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B002','sum','B002','1','0','1','DIM_YPXX','ypkey','ypmc','药品',' where',' where','ypkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B002','sum','B002','1','0','1','DIM_SFDXMK','dxmkey','dxmmc','收费大项目',' where',' where','dxmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B002','sum','B002','1','0','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B002','sum','B002','1','0','1','DIM_SF_YPYFK','ypyfkey','name','门诊药品用法',' where',' where','ypyfkey','','','','','','')
	go

/************No.179: B005******************ZB_FACT_DIM_YS***B005******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B005' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B005','sum','B005','cffy','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B005','sum','B005','cffy','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B005','sum','B005','cffy','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B005','sum','B005','cffy','0','0','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B005','sum','B005','1','0','1','DIM_SFDXMK','dxmkey','dxmmc','大项目',' where',' where','dxmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B005','sum','B005','1','0','1','DIM_ZDDMK','zddmkey','zdmc','诊断',' where',' where','zddmkey','','','','','','')
	go

/************No.180: B009******************ZB_FACT_DIM_YS***B009******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B009' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B009','sum','B009','1','0','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B009','sum','B009','1','0','1','DIM_CZRYK','czykey','rymc','操作人员',' where',' where','czykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B009','sum','B009','1','0','1','DIM_SFDXMK','dxmkey','dxmmc','大项目',' where',' where','dxmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B009','sum','B009','1','0','1','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B009','sum','B009','1','0','1','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B009','sum','B009','1','0','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B009','sum','B009','1','0','1','DIM_ZDDMK','zddmkey','zdmc','诊断',' where',' where','zddmkey','','','','','','')
	go

/************No.181: B004******************ZB_FACT_DIM_YS***B004******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B004' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B004','sum','B004','cffy','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B004','sum','B004','cffy','0','0','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B004','sum','B004','cffy','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B004','sum','B004','cffy','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B004','sum','B004','1','0','1','DIM_SFDXMK','dxmkey','dxmmc','大项目',' where',' where','dxmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B004','sum','B004','1','0','1','DIM_ZDDMK','zddmkey','zdmc','诊断',' where',' where','zddmkey','','','','','','')
	go

/************No.182: B00204******************ZB_FACT_DIM_YS***B00204******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B00204' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00204','sum','B00203','1','B002','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00204','sum','B00203','1','B002','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00204','sum','B00203','1','B002','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	go

/************No.183: B00203******************ZB_FACT_DIM_YS***B00203******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B00203' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00203','sum','B00203','1','0','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00203','sum','B00203','1','0','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00203','sum','B00203','1','0','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.184: B0020301******************ZB_FACT_DIM_YS***B0020301******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B0020301' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0020301','sum','B0020301','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0020301','sum','B0020301','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0020301','sum','B0020301','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.185: B002030101******************ZB_FACT_DIM_YS***B002030101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B002030101' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B002030101'
go

/************No.186: B002030102******************ZB_FACT_DIM_YS***B002030102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B002030102' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B002030102'
go

/************No.187: B0020302******************ZB_FACT_DIM_YS***B0020302******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B0020302' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0020302','sum','B0020302','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0020302','sum','B0020302','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0020302','sum','B0020302','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.188: ZLZB_YY009202******************ZB_FACT_DIM_YS***ZLZB_YY009202******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY009202' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY009202','sum','ZLZB_YY009201','1','ZLZB_YY0092','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY009202','sum','ZLZB_YY009201','1','ZLZB_YY0092','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	go

/************No.189: ZLZB_YY009201******************ZB_FACT_DIM_YS***ZLZB_YY009201******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY009201' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY009201'
go

/************No.190: ZLZB_YY0092******************ZB_FACT_DIM_YS***ZLZB_YY0092******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0092' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0092'
go

/************No.191: ZLZB_YY009204******************ZB_FACT_DIM_YS***ZLZB_YY009204******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY009204' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY009204'
go

/************No.192: ZLZB_YY009203******************ZB_FACT_DIM_YS***ZLZB_YY009203******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY009203' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY009203'
go

/************No.193: B000******************ZB_FACT_DIM_YS***B000******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B000' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B000'
go

/************No.194: ZLZB_YY0093******************ZB_FACT_DIM_YS***ZLZB_YY0093******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0093' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0093'
go

/************No.195: B301******************ZB_FACT_DIM_YS***B301******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B301' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B301'
go

/************No.196: B303******************ZB_FACT_DIM_YS***B303******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B303' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B303'
go

/************No.197: B304******************ZB_FACT_DIM_YS***B304******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B304' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B304'
go

/************No.198: B305******************ZB_FACT_DIM_YS***B305******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B305' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B305'
go

/************No.199: B306******************ZB_FACT_DIM_YS***B306******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B306' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B306'
go

/************No.200: B307******************ZB_FACT_DIM_YS***B307******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B307' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B307'
go

/************No.201: B308******************ZB_FACT_DIM_YS***B308******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B308' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B308'
go

/************No.202: B309******************ZB_FACT_DIM_YS***B309******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B309' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B309'
go

/************No.203: B310******************ZB_FACT_DIM_YS***B310******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B310' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B310'
go

/************No.204: B311******************ZB_FACT_DIM_YS***B311******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B311' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B311'
go

/************No.205: B312******************ZB_FACT_DIM_YS***B312******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B312' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B312'
go

/************No.206: B313******************ZB_FACT_DIM_YS***B313******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B313' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B313'
go

/************No.207: ZLZB_YY0041******************ZB_FACT_DIM_YS***ZLZB_YY0041******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0041' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0041'
go

/************No.208: ZLZB_YY004101******************ZB_FACT_DIM_YS***ZLZB_YY004101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY004101' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY004101'
go

/************No.209: ZLZB_YY004102******************ZB_FACT_DIM_YS***ZLZB_YY004102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY004102' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY004102'
go

/************No.210: B317******************ZB_FACT_DIM_YS***B317******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B317' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B317'
go

/************No.211: B316******************ZB_FACT_DIM_YS***B316******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B316' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B316'
go

/************No.212: B314******************ZB_FACT_DIM_YS***B314******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B314' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B314'
go

/************No.213: B315******************ZB_FACT_DIM_YS***B315******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B315' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B315'
go

/************No.214: B318******************ZB_FACT_DIM_YS***B318******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B318' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B318'
go

/************No.215: B319******************ZB_FACT_DIM_YS***B319******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B319' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B319'
go

/************No.216: B320******************ZB_FACT_DIM_YS***B320******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B320' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B320'
go

/************No.217: B10101******************ZB_FACT_DIM_YS***B10101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B10101' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B10101'
go

/************No.218: B0010101******************ZB_FACT_DIM_YS***B0010101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B0010101' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0010101','sum','B0010101','ghfy+cffy','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0010101','sum','B0010101','ghfy+cffy','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0010101','sum','B0010101','1','0','0','DIM_ZDDMK','zddmkey','zdmc','诊断',' where',' where','zddmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0010101','sum','B0010101','ghfy+cffy','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0010101','sum','B0010101','ghfy+cffy','0','0','DIM_SFDXMK','dxmkey','dxmmc','收费大项目',' where',' where','dxmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0010101','sum','B0010101','ghfy+cffy','0','0','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0010101','sum','B0010101','1','0','0','DIM_CZRYK','czykey','rymc','操作人员',' where',' where','czykey','','','','','','')
	go

/************No.219: B10301******************ZB_FACT_DIM_YS***B10301******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B10301' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B10301'
go

/************No.220: B0020101******************ZB_FACT_DIM_YS***B0020101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B0020101' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0020101','sum','B0020101','1','0','0','DIM_KSSJB','kssjbkey','kssjbmc','抗生素级别',' where',' where','kssjbkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0020101','sum','B0020101','1','0','0','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0020101','sum','B0020101','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0020101','sum','B0020101','1','0','0','DIM_YPFL','ypflkey','flmc','药品分类',' where',' where','ypflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0020101','sum','B0020101','1','0','0','DIM_TSYPBZ','tsypbzkey','tsypbzmc','特殊药品类别',' where',' where','tsypbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0020101','sum','B0020101','1','0','0','DIM_SFDXMK','dxmkey','dxmmc','收费大项目',' where',' where','dxmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0020101','sum','B0020101','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0020101','sum','B0020101','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0020101','sum','B0020101','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0020101','sum','B0020101','1','0','0','DIM_MJZBZ','mjzkey','name','门急诊',' where',' where','mjzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0020101','sum','B0020101','1','0','0','DIM_YPDL','ypdlkey','dlmc','药品大类',' where',' where','ypdlkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0020101','sum','B0020101','1','0','0','DIM_YPXX','ypkey','ypmc','药品',' where',' where','ypkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B0020101','sum','B0020101','1','0','0','DIM_SF_YPYFK','ypyfkey','name','门诊药品用法',' where',' where','ypyfkey','','','','','','')
	go

/************No.221: B102******************ZB_FACT_DIM_YS***B102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B102' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B102','sum','B00102','zfy','A102','cyrc','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B102','sum','B00102','zfy','A102','cyrc','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B102','sum','B00102','zfy','A102','cyrc','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B102','sum','B00102','1','A102','1','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B102','sum','B00102','1','A102','1','DIM_BQDMK','bqkey','name','病区',' where',' where','bqkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B102','sum','B00102','1','A102','1','DIM_ZY_ZLD','zlzkey','zlzmc','诊疗组',' where',' where','zlzkey','','','','','','')
	go

/************No.222: B104******************ZB_FACT_DIM_YS***B104******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B104' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B104','sum','B00202','zfy','A102','cyrc','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B104','sum','B00202','zfy','A102','cyrc','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B104','sum','B00202','zfy','A102','cyrc','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B104','sum','B00202','1','A102','1','DIM_BQDMK','bqkey','name','病区',' where',' where','bqkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B104','sum','B00202','1','A102','1','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B104','sum','B00202','1','A102','1','DIM_ZY_ZLD','zlzkey','zlzmc','诊疗组',' where',' where','zlzkey','','','','','','')
	go

/************No.223: B00202******************ZB_FACT_DIM_YS***B00202******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B00202' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00202','sum','B00202','1','0','0','DIM_SFDXMK','dxmkey','dxmmc','收费大项目',' where',' where','dxmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00202','sum','B00202','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00202','sum','B00202','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00202','sum','B00202','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00202','sum','B00202','1','0','0','DIM_YPXX','ypkey','ypmc','药品',' where',' where','ypkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00202','sum','B00202','1','0','0','DIM_TSYPBZ','tsypbzkey','tsypbzmc','特殊药品类别',' where',' where','tsypbzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00202','sum','B00202','1','0','0','DIM_BQDMK','bqkey','name','病区',' where',' where','bqkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00202','sum','B00202','1','0','0','DIM_ZY_ZLD','zlzkey','zlzmc','诊疗组',' where',' where','zlzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00202','sum','B00202','1','0','0','DIM_SF_YPYFK','ypyfkey','name','门诊药品用法',' where',' where','ypyfkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00202','sum','B00202','1','0','0','DIM_KSSJB','kssjbkey','kssjbmc','抗生素级别',' where',' where','kssjbkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00202','sum','B00202','1','0','0','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('B00202','sum','B00202','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	go

/************No.224: ZLZB_YY00040102******************ZB_FACT_DIM_YS***ZLZB_YY00040102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY00040102' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040102','sum','ZLZB_YY00040101','1','ZLZB_YY000401','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040102','sum','ZLZB_YY00040101','1','ZLZB_YY000401','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.225: ZLZB_YY0004010201******************ZB_FACT_DIM_YS***ZLZB_YY0004010201******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0004010201' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0004010201'
go

/************No.226: ZLZB_YY000401******************ZB_FACT_DIM_YS***ZLZB_YY000401******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY000401' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY000401'
go

/************No.227: ZLZB_YY00040104******************ZB_FACT_DIM_YS***ZLZB_YY00040104******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY00040104' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040104','sum','ZLZB_YY00040103','1','ZLZB_YY000401','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040104','sum','ZLZB_YY00040103','1','ZLZB_YY000401','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	go

/************No.228: ZLZB_YY0004010203******************ZB_FACT_DIM_YS***ZLZB_YY0004010203******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0004010203' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0004010203'
go

/************No.229: ZLZB_YY00040106******************ZB_FACT_DIM_YS***ZLZB_YY00040106******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY00040106' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040106','sum','ZLZB_YY00040105','1','ZLZB_YY000401','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040106','sum','ZLZB_YY00040105','1','ZLZB_YY000401','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.230: ZLZB_YY0004010205******************ZB_FACT_DIM_YS***ZLZB_YY0004010205******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0004010205' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0004010205'
go

/************No.231: ZLZB_YY00040108******************ZB_FACT_DIM_YS***ZLZB_YY00040108******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY00040108' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040108','sum','ZLZB_YY00040107','1','ZLZB_YY000401','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040108','sum','ZLZB_YY00040107','1','ZLZB_YY000401','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.232: ZLZB_YY00040107******************ZB_FACT_DIM_YS***ZLZB_YY00040107******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY00040107' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY00040107'
go

/************No.233: ZLZB_YY005801******************ZB_FACT_DIM_YS***ZLZB_YY005801******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY005801' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY005801'
go

/************No.234: ZLZB_YY0058******************ZB_FACT_DIM_YS***ZLZB_YY0058******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0058' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0058'
go

/************No.235: ZLZB_YY000501******************ZB_FACT_DIM_YS***ZLZB_YY000501******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY000501' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000501','sum','ZLZB_YY0057','1','ZLZB_YY0005','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000501','sum','ZLZB_YY0057','1','ZLZB_YY0005','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.236: ZLZB_YY0057******************ZB_FACT_DIM_YS***ZLZB_YY0057******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0057' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0057'
go

/************No.237: ZLZB_YY000503******************ZB_FACT_DIM_YS***ZLZB_YY000503******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY000503' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000503','sum','ZLZB_YY000502','1','ZLZB_YY0005','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000503','sum','ZLZB_YY000502','1','ZLZB_YY0005','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.238: ZLZB_YY000502******************ZB_FACT_DIM_YS***ZLZB_YY000502******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY000502' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY000502'
go

/************No.239: ZLZB_YY000504******************ZB_FACT_DIM_YS***ZLZB_YY000504******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY000504' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000504','sum','ZLZB_YY0052','1','ZLZB_YY0005','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000504','sum','ZLZB_YY0052','1','ZLZB_YY0005','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.240: ZLZB_YY0052******************ZB_FACT_DIM_YS***ZLZB_YY0052******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0052' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0052'
go

/************No.241: ZLZB_YY000505******************ZB_FACT_DIM_YS***ZLZB_YY000505******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY000505' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000505','sum','ZLZB_ZLGL_LCBL001','1','ZLZB_YY0005','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000505','sum','ZLZB_ZLGL_LCBL001','1','ZLZB_YY0005','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	go

/************No.242: ZLZB_ZLGL_LCBL001******************ZB_FACT_DIM_YS***ZLZB_ZLGL_LCBL001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_ZLGL_LCBL001' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_ZLGL_LCBL001','sum','ZLZB_ZLGL_LCBL001','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	go

/************No.243: ZLZB_YY000507******************ZB_FACT_DIM_YS***ZLZB_YY000507******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY000507' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000507','sum','ZLZB_YY000506','1','ZLZB_YY0005','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY000507','sum','ZLZB_YY000506','1','ZLZB_YY0005','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.244: ZLZB_YY000506******************ZB_FACT_DIM_YS***ZLZB_YY000506******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY000506' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY000506'
go

/************No.245: ZLZB_YY00040109******************ZB_FACT_DIM_YS***ZLZB_YY00040109******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY00040109' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040109','sum','ZLZB_YY0005','1','ZLZB_YY0006','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_YY00040109','sum','ZLZB_YY0005','1','ZLZB_YY0006','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.246: ZLZB_YY0006******************ZB_FACT_DIM_YS***ZLZB_YY0006******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0006' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0006'
go

/************No.247: ZLZB_YY0094******************ZB_FACT_DIM_YS***ZLZB_YY0094******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0094' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0094'
go

/************No.248: ZLZB_YY0106******************ZB_FACT_DIM_YS***ZLZB_YY0106******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0106' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0106'
go

/************No.249: ZLZB_YY0107******************ZB_FACT_DIM_YS***ZLZB_YY0107******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0107' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0107'
go

/************No.250: ZLZB_YY0108******************ZB_FACT_DIM_YS***ZLZB_YY0108******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0108' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0108'
go

/************No.251: ZLZB_YY0109******************ZB_FACT_DIM_YS***ZLZB_YY0109******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0109' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0109'
go

/************No.252: ZLZB_YY0110******************ZB_FACT_DIM_YS***ZLZB_YY0110******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0110' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0110'
go

/************No.253: ZLZB_YY0111******************ZB_FACT_DIM_YS***ZLZB_YY0111******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0111' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0111'
go

/************No.254: ZLZB_YY0112******************ZB_FACT_DIM_YS***ZLZB_YY0112******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0112' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0112'
go

/************No.255: ZLZB_YY0095******************ZB_FACT_DIM_YS***ZLZB_YY0095******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0095' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0095'
go

/************No.256: ZLZB_YY009502******************ZB_FACT_DIM_YS***ZLZB_YY009502******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY009502' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY009502'
go

/************No.257: ZLZB_YY009501******************ZB_FACT_DIM_YS***ZLZB_YY009501******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY009501' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY009501'
go

/************No.258: ZLZB_YY0113******************ZB_FACT_DIM_YS***ZLZB_YY0113******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0113' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0113'
go

/************No.259: ZLZB_YY00920101******************ZB_FACT_DIM_YS***ZLZB_YY00920101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY00920101' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY00920101'
go

/************No.260: ZLZB_YY0114******************ZB_FACT_DIM_YS***ZLZB_YY0114******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0114' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0114'
go

/************No.261: ZLZB_YY0115******************ZB_FACT_DIM_YS***ZLZB_YY0115******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0115' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0115'
go

/************No.262: ZLZB_YY0116******************ZB_FACT_DIM_YS***ZLZB_YY0116******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0116' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0116'
go

/************No.263: ZLZB_YY0117******************ZB_FACT_DIM_YS***ZLZB_YY0117******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0117' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0117'
go

/************No.264: ZLZB_YY0096******************ZB_FACT_DIM_YS***ZLZB_YY0096******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0096' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0096'
go

/************No.265: ZLZB_YY0118******************ZB_FACT_DIM_YS***ZLZB_YY0118******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0118' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0118'
go

/************No.266: ZLZB_YY0119******************ZB_FACT_DIM_YS***ZLZB_YY0119******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0119' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0119'
go

/************No.267: ZLZB_YY0097******************ZB_FACT_DIM_YS***ZLZB_YY0097******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0097' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0097'
go

/************No.268: ZLZB_YY0120******************ZB_FACT_DIM_YS***ZLZB_YY0120******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0120' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0120'
go

/************No.269: ZLZB_YY0121******************ZB_FACT_DIM_YS***ZLZB_YY0121******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0121' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0121'
go

/************No.270: ZLZB_YY0122******************ZB_FACT_DIM_YS***ZLZB_YY0122******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0122' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0122'
go

/************No.271: ZLZB_YY0098******************ZB_FACT_DIM_YS***ZLZB_YY0098******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0098' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0098'
go

/************No.272: ZLZB_YY0099******************ZB_FACT_DIM_YS***ZLZB_YY0099******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0099' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0099'
go

/************No.273: ZLZB_YY009901******************ZB_FACT_DIM_YS***ZLZB_YY009901******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY009901' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY009901'
go

/************No.274: ZLZB_YY0100******************ZB_FACT_DIM_YS***ZLZB_YY0100******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0100' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0100'
go

/************No.275: ZLZB_YY010001******************ZB_FACT_DIM_YS***ZLZB_YY010001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY010001' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY010001'
go

/************No.276: ZLZB_YY0101******************ZB_FACT_DIM_YS***ZLZB_YY0101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_YY0101' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZLZB_YY0101'
go

/************No.277: F501******************ZB_FACT_DIM_YS***F501******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='F501' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb F501'
go

/************No.278: F502******************ZB_FACT_DIM_YS***F502******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='F502' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb F502'
go

/************No.279: F503******************ZB_FACT_DIM_YS***F503******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='F503' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb F503'
go

/************No.280: G00501******************ZB_FACT_DIM_YS***G00501******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='G00501' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00501','sum','G00501','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00501','sum','G00501','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00501','sum','G00501','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00501','sum','G00501','1','0','0','DIM_MJZBZ','mjzkey','name','门急诊',' where',' where','mjzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00501','sum','G00501','1','0','0','DIM_ZDDMK','zddmkey','zdmc','诊断',' where',' where','zddmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00501','sum','G00501','1','0','0','DIM_SEX','sexkey','sex','性别',' where',' where','sexkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00501','sum','G00501','1','0','0','DIM_NLD','nldkey','nld','年龄',' where',' where','nldkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00501','sum','G00501','1','0','0','DIM_CZRYK','czykey','rymc','操作人员',' where',' where','czykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00501','sum','G00501','1','0','0','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00501','sum','G00501','1','0','0','DIM_GHLB','ghlbkey','ghlbmc','挂号类别',' where',' where','ghlbkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00501','sum','G00501','1','0','0','DIM_YYFS','yyfskey','yyfsmc','预约方式',' where',' where','yyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00501','sum','G00501','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00501','sum','G00501','1','0','0','DIM_HOUR','hourkey','hour','小时',' where',' where','hourkey','','','','','','')
	go

/************No.281: G00502******************ZB_FACT_DIM_YS***G00502******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='G00502' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00502','sum','G00502','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00502','sum','G00502','1','0','0','DIM_ZDDMK','zddmkey','zdmc','诊断',' where',' where','zddmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00502','sum','G00502','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00502','sum','G00502','1','0','0','DIM_SEX','sexkey','sex','性别',' where',' where','sexkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00502','sum','G00502','1','0','0','DIM_MJZBZ','mjzkey','name','门急诊',' where',' where','mjzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00502','sum','G00502','1','0','0','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00502','sum','G00502','1','0','0','DIM_HOUR','hourkey','hour','小时',' where',' where','hourkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00502','sum','G00502','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00502','sum','G00502','1','0','0','DIM_GHLB','ghlbkey','ghlbmc','挂号类别',' where',' where','ghlbkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00502','sum','G00502','1','0','0','DIM_NLD','nldkey','nld','年龄',' where',' where','nldkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00502','sum','G00502','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00502','sum','G00502','1','0','0','DIM_YYFS','yyfskey','yyfsmc','预约方式',' where',' where','yyfskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('G00502','sum','G00502','1','0','0','DIM_CZRYK','czykey','rymc','操作人员',' where',' where','czykey','','','','','','')
	go

/************No.282: ZBZL_YXZB_DRGS0020505******************ZB_FACT_DIM_YS***ZBZL_YXZB_DRGS0020505******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZBZL_YXZB_DRGS0020505' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZBZL_YXZB_DRGS0020505'
go

/************No.283: ZBZL_YXZB_DRGS0020201******************ZB_FACT_DIM_YS***ZBZL_YXZB_DRGS0020201******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZBZL_YXZB_DRGS0020201' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb ZBZL_YXZB_DRGS0020201'
go

/************No.284: E3110201******************ZB_FACT_DIM_YS***E3110201******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E3110201' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb E3110201'
go

/************No.285: A1021101******************ZB_FACT_DIM_YS***A1021101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A1021101' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb A1021101'
go

/************No.286: A1021102******************ZB_FACT_DIM_YS***A1021102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='A1021102' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb A1021102'
go

/************No.287: E2030105******************ZB_FACT_DIM_YS***E2030105******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E2030105' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb E2030105'
go

/************No.288: E2030106******************ZB_FACT_DIM_YS***E2030106******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E2030106' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb E2030106'
go

/************No.289: E31102******************ZB_FACT_DIM_YS***E31102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E31102' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb E31102'
go

/************No.290: E3110202******************ZB_FACT_DIM_YS***E3110202******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E3110202' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb E3110202'
go

/************No.291: E0030402******************ZB_FACT_DIM_YS***E0030402******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E0030402' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E0030402','sum','E0030401','1','E001','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E0030402','sum','E0030401','1','E001','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E0030402','sum','E0030401','1','E001','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E0030402','sum','E0030401','1','E001','1','DIM_YPXX','ypkey','ypmc','药品',' where',' where','ypkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E0030402','sum','E0030401','1','E001','1','DIM_KSSJB','kssjbkey','kssjbmc','抗生素级别',' where',' where','kssjbkey','','','','','','')
	go

/************No.292: E0030401******************ZB_FACT_DIM_YS***E0030401******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='E0030401' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E0030401','sum','E0030401','1','0','0','DIM_YBFLXX','ybflkey','ybsm','医保分类',' where',' where','ybflkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E0030401','sum','E0030401','1','0','0','DIM_SF_YPYFK','ypyfkey','name','门诊药品用法',' where',' where','ypyfkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E0030401','sum','E0030401','1','0','0','DIM_KSSJB','kssjbkey','kssjbmc','抗生素级别',' where',' where','kssjbkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E0030401','sum','E0030401','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E0030401','sum','E0030401','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E0030401','sum','E0030401','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E0030401','sum','E0030401','1','0','0','DIM_YSXX','yskey','ysmc','医生',' where',' where','yskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E0030401','sum','E0030401','1','0','0','DIM_MJZBZ','mjzkey','name','门急诊',' where',' where','mjzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E0030401','sum','E0030401','1','0','0','DIM_SFDXMK','dxmkey','dxmmc','大项目',' where',' where','dxmkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('E0030401','sum','E0030401','1','0','0','DIM_YPXX','ypkey','ypmc','药品',' where',' where','ypkey','','','','','','')
	go

/************No.293: B002090101******************ZB_FACT_DIM_YS***B002090101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B002090101' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B002090101'
go

/************No.294: B001090101******************ZB_FACT_DIM_YS***B001090101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B001090101' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B001090101'
go

/************No.295: B001090102******************ZB_FACT_DIM_YS***B001090102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B001090102' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B001090102'
go

/************No.296: B001090301******************ZB_FACT_DIM_YS***B001090301******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B001090301' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B001090301'
go

/************No.297: B001090302******************ZB_FACT_DIM_YS***B001090302******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B001090302' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B001090302'
go

/************No.298: B002010601******************ZB_FACT_DIM_YS***B002010601******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B002010601' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B002010601'
go

/************No.299: B002010602******************ZB_FACT_DIM_YS***B002010602******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B002010602' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B002010602'
go

/************No.300: B002090102******************ZB_FACT_DIM_YS***B002090102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B002090102' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B002090102'
go

/************No.301: B002100101******************ZB_FACT_DIM_YS***B002100101******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B002100101' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B002100101'
go

/************No.302: B002100102******************ZB_FACT_DIM_YS***B002100102******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='B002100102' 
	print 'This table ZB_FACT_DIM_YS  do not have the zb B002100102'
go

