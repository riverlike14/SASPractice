PROC FORMAT LIBRARY=mysas.prefer_format;
	VALUE $jobname 
		'A' = "������"
		'B' = "�繫��"
		'C' = "�Ͽ���";
	VALUE agegroup 
		low -< 30 = "30�̸�"
		30 -< 40 = "30<=,<40"
		40 - high = "40�̻�";
	VALUE prefer
		1 = "�ſ�������"
		2 = "������"
		3 = "�Ⱦ���"
		4 = "�ſ�Ⱦ���";
RUN;
