/************No.1: ZLZB_AQ00650******************ZB_FACT_DIM_YS***ZLZB_AQ00650******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_AQ00650' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ00650','sum','ZLZB_AQ00650','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ00650','sum','ZLZB_AQ00650','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ00650','sum','ZLZB_AQ00650','1','0','0','DIM_ZLZB_BFZLX','bfzkey','bfzmc','质量指标-并发症类型',' where',' where','bfzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ00650','sum','ZLZB_AQ00650','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	go

/************No.2: ZLZB_AQ0073******************ZB_FACT_DIM_YS***ZLZB_AQ0073******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_AQ0073' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0073','sum','ZLZB_BFZ008','1','D002','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0073','sum','ZLZB_BFZ008','1','D002','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0073','sum','ZLZB_BFZ008','1','D002','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.3: ZLZB_AQ0082******************ZB_FACT_DIM_YS***ZLZB_AQ0082******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_AQ0082' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0082','sum','ZLZB_AQ0083','1','D002','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0082','sum','ZLZB_AQ0083','1','D002','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0082','sum','ZLZB_AQ0083','1','D002','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.4: ZLZB_AQ0083******************ZB_FACT_DIM_YS***ZLZB_AQ0083******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_AQ0083' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0083','sum','ZLZB_AQ0083','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0083','sum','ZLZB_AQ0083','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0083','sum','ZLZB_AQ0083','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0083','sum','ZLZB_AQ0083','1','0','0','DIM_ZLZB_BFZLX','bfzkey','bfzmc','质量指标-并发症类型',' where',' where','bfzkey','','','','','','')
	go

/************No.5: ZLZB_AQ0084******************ZB_FACT_DIM_YS***ZLZB_AQ0084******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_AQ0084' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0084','sum','ZLZB_AQ0085','1','D002','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0084','sum','ZLZB_AQ0085','1','D002','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0084','sum','ZLZB_AQ0085','1','D002','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.6: ZLZB_AQ0085******************ZB_FACT_DIM_YS***ZLZB_AQ0085******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_AQ0085' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0085','sum','ZLZB_AQ0085','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0085','sum','ZLZB_AQ0085','1','0','0','DIM_ZLZB_BFZLX','bfzkey','bfzmc','质量指标-并发症类型',' where',' where','bfzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0085','sum','ZLZB_AQ0085','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0085','sum','ZLZB_AQ0085','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	go

/************No.7: ZLZB_AQ0086******************ZB_FACT_DIM_YS***ZLZB_AQ0086******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_AQ0086' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0086','sum','ZLZB_AQ0087','1','D002','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0086','sum','ZLZB_AQ0087','1','D002','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0086','sum','ZLZB_AQ0087','1','D002','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.8: ZLZB_AQ0087******************ZB_FACT_DIM_YS***ZLZB_AQ0087******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_AQ0087' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0087','sum','ZLZB_AQ0087','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0087','sum','ZLZB_AQ0087','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0087','sum','ZLZB_AQ0087','1','0','0','DIM_ZLZB_BFZLX','bfzkey','bfzmc','质量指标-并发症类型',' where',' where','bfzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0087','sum','ZLZB_AQ0087','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	go

/************No.9: ZLZB_AQ0090******************ZB_FACT_DIM_YS***ZLZB_AQ0090******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_AQ0090' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0090','sum','ZLZB_AQ0091','1','D002','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0090','sum','ZLZB_AQ0091','1','D002','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0090','sum','ZLZB_AQ0091','1','D002','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.10: ZLZB_AQ0091******************ZB_FACT_DIM_YS***ZLZB_AQ0091******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_AQ0091' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0091','sum','ZLZB_AQ0091','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0091','sum','ZLZB_AQ0091','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0091','sum','ZLZB_AQ0091','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0091','sum','ZLZB_AQ0091','1','0','0','DIM_ZLZB_BFZLX','bfzkey','bfzmc','质量指标-并发症类型',' where',' where','bfzkey','','','','','','')
	go

/************No.11: ZLZB_AQ0092******************ZB_FACT_DIM_YS***ZLZB_AQ0092******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_AQ0092' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0092','sum','ZLZB_AQ0093','1','D002','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0092','sum','ZLZB_AQ0093','1','D002','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0092','sum','ZLZB_AQ0093','1','D002','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.12: ZLZB_AQ0093******************ZB_FACT_DIM_YS***ZLZB_AQ0093******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_AQ0093' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0093','sum','ZLZB_AQ0093','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0093','sum','ZLZB_AQ0093','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0093','sum','ZLZB_AQ0093','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0093','sum','ZLZB_AQ0093','1','0','0','DIM_ZLZB_BFZLX','bfzkey','bfzmc','质量指标-并发症类型',' where',' where','bfzkey','','','','','','')
	go

/************No.13: ZLZB_AQ0094******************ZB_FACT_DIM_YS***ZLZB_AQ0094******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_AQ0094' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0094','sum','ZLZB_AQ0095','1','D002','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0094','sum','ZLZB_AQ0095','1','D002','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0094','sum','ZLZB_AQ0095','1','D002','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	go

/************No.14: ZLZB_AQ0095******************ZB_FACT_DIM_YS***ZLZB_AQ0095******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_AQ0095' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0095','sum','ZLZB_AQ0095','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0095','sum','ZLZB_AQ0095','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0095','sum','ZLZB_AQ0095','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0095','sum','ZLZB_AQ0095','1','0','0','DIM_ZLZB_BFZLX','bfzkey','bfzmc','质量指标-并发症类型',' where',' where','bfzkey','','','','','','')
	go

/************No.15: ZLZB_AQ0105******************ZB_FACT_DIM_YS***ZLZB_AQ0105******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_AQ0105' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0105','sum','ZLZB_BFZ002','1','D002','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0105','sum','ZLZB_BFZ002','1','D002','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0105','sum','ZLZB_BFZ002','1','D002','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.16: ZLZB_AQ0106******************ZB_FACT_DIM_YS***ZLZB_AQ0106******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_AQ0106' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0106','sum','ZLZB_BFZ006','1','D002','1','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0106','sum','ZLZB_BFZ006','1','D002','1','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_AQ0106','sum','ZLZB_BFZ006','1','D002','1','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	go

/************No.17: ZLZB_BFZ001******************ZB_FACT_DIM_YS***ZLZB_BFZ001******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_BFZ001' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ001','sum','ZLZB_BFZ001','1','0','0','DIM_ZLZB_BFZLX','bfzkey','bfzmc','质量指标-并发症类型',' where',' where','bfzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ001','sum','ZLZB_BFZ001','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ001','sum','ZLZB_BFZ001','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ001','sum','ZLZB_BFZ001','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	go

/************No.18: ZLZB_BFZ0018******************ZB_FACT_DIM_YS***ZLZB_BFZ0018******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_BFZ0018' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ0018','sum','ZLZB_BFZ0018','1','0','0','DIM_ZLZB_BFZLX','bfzkey','bfzmc','质量指标-并发症类型',' where',' where','bfzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ0018','sum','ZLZB_BFZ0018','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ0018','sum','ZLZB_BFZ0018','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ0018','sum','ZLZB_BFZ0018','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.19: ZLZB_BFZ001801******************ZB_FACT_DIM_YS***ZLZB_BFZ001801******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_BFZ001801' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ001801','sum','ZLZB_BFZ001801','1','0','0','DIM_ZLZB_BFZLX','bfzkey','bfzmc','质量指标-并发症类型',' where',' where','bfzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ001801','sum','ZLZB_BFZ001801','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ001801','sum','ZLZB_BFZ001801','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ001801','sum','ZLZB_BFZ001801','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	go

/************No.20: ZLZB_BFZ002******************ZB_FACT_DIM_YS***ZLZB_BFZ002******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_BFZ002' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ002','sum','ZLZB_BFZ002','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ002','sum','ZLZB_BFZ002','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ002','sum','ZLZB_BFZ002','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ002','sum','ZLZB_BFZ002','1','0','0','DIM_ZLZB_BFZLX','bfzkey','bfzmc','质量指标-并发症类型',' where',' where','bfzkey','','','','','','')
	go

/************No.21: ZLZB_BFZ003******************ZB_FACT_DIM_YS***ZLZB_BFZ003******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_BFZ003' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ003','sum','ZLZB_BFZ003','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ003','sum','ZLZB_BFZ003','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ003','sum','ZLZB_BFZ003','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ003','sum','ZLZB_BFZ003','1','0','0','DIM_ZLZB_BFZLX','bfzkey','bfzmc','质量指标-并发症类型',' where',' where','bfzkey','','','','','','')
	go

/************No.22: ZLZB_BFZ004******************ZB_FACT_DIM_YS***ZLZB_BFZ004******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_BFZ004' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ004','sum','ZLZB_BFZ004','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ004','sum','ZLZB_BFZ004','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ004','sum','ZLZB_BFZ004','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ004','sum','ZLZB_BFZ004','1','0','0','DIM_ZLZB_BFZLX','bfzkey','bfzmc','质量指标-并发症类型',' where',' where','bfzkey','','','','','','')
	go

/************No.23: ZLZB_BFZ005******************ZB_FACT_DIM_YS***ZLZB_BFZ005******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_BFZ005' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ005','sum','ZLZB_BFZ005','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ005','sum','ZLZB_BFZ005','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ005','sum','ZLZB_BFZ005','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ005','sum','ZLZB_BFZ005','1','0','0','DIM_ZLZB_BFZLX','bfzkey','bfzmc','质量指标-并发症类型',' where',' where','bfzkey','','','','','','')
	go

/************No.24: ZLZB_BFZ006******************ZB_FACT_DIM_YS***ZLZB_BFZ006******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_BFZ006' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ006','sum','ZLZB_BFZ006','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ006','sum','ZLZB_BFZ006','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ006','sum','ZLZB_BFZ006','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ006','sum','ZLZB_BFZ006','1','0','0','DIM_ZLZB_BFZLX','bfzkey','bfzmc','质量指标-并发症类型',' where',' where','bfzkey','','','','','','')
	go

/************No.25: ZLZB_BFZ007******************ZB_FACT_DIM_YS***ZLZB_BFZ007******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_BFZ007' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ007','sum','ZLZB_BFZ007','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ007','sum','ZLZB_BFZ007','1','0','0','DIM_ZLZB_BFZLX','bfzkey','bfzmc','质量指标-并发症类型',' where',' where','bfzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ007','sum','ZLZB_BFZ007','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ007','sum','ZLZB_BFZ007','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	go

/************No.26: ZLZB_BFZ008******************ZB_FACT_DIM_YS***ZLZB_BFZ008******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_BFZ008' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ008','sum','ZLZB_BFZ008','1','0','0','DIM_ZLZB_BFZLX','bfzkey','bfzmc','质量指标-并发症类型',' where',' where','bfzkey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ008','sum','ZLZB_BFZ008','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ008','sum','ZLZB_BFZ008','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ008','sum','ZLZB_BFZ008','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	go

/************No.27: ZLZB_BFZ009******************ZB_FACT_DIM_YS***ZLZB_BFZ009******************************/

	delete from ZB_FACT_DIM_YS where zbmx_id='ZLZB_BFZ009' 
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ009','sum','ZLZB_BFZ009','1','0','0','DIM_TIME','timekey','month_name','时间',' where',' where','timekey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ009','sum','ZLZB_BFZ009','1','0','0','DIM_YYXX','yykey','yymc','医院名称',' where',' where','yykey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ009','sum','ZLZB_BFZ009','1','0','0','DIM_KSXX','kskey','ksmc','科室',' where',' where','kskey','','','','','','')
	INSERT ZB_FACT_DIM_YS ( zbmx_id,zbmx_tjhs,fz_fact_table_name,fz_fact_val,fm_fact_table_name,fm_fact_val,dim_table_name,join_code,dim_table_val,dim_table,fz_condition,fm_condition,next_join_code,next_kz_key,next_kz_value,wdkz_lb,wdkz_table,wdkz_key,wdkz_name)
	values('ZLZB_BFZ009','sum','ZLZB_BFZ009','1','0','0','DIM_ZLZB_BFZLX','bfzkey','bfzmc','质量指标-并发症类型',' where',' where','bfzkey','','','','','','')
	go

