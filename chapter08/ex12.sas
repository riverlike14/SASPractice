PROC FORMAT LIBRARY=mysas.prefer_format;
	VALUE $jobname 
		'A' = "전문직"
		'B' = "사무직"
		'C' = "일용직";
	VALUE agegroup 
		low -< 30 = "30미만"
		30 -< 40 = "30<=,<40"
		40 - high = "40이상";
	VALUE prefer
		1 = "매우좋아함"
		2 = "좋아함"
		3 = "싫어함"
		4 = "매우싫어함";
RUN;
