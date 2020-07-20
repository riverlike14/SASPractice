PROC FORMAT;
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

DATA mysas.prefer;
	INPUT job$ age coffee drink @@;
	LABEL job="����";
	FORMAT job $jobname. age agegroup.;
CARDS;
A 45 1 4 A 39 1 3 A 56 1 3 B 33 2 3 B 42 3 2
B 28 3 3 B 37 2 2 C 52 4 1 C 21 3 1 C 37 4 2
;
RUN;

PROC FREQ DATA=mysas.prefer;
	FORMAT coffee drink prefer.;
	TABLES job * coffee / NOROW NOCOL NOPERCENT;
RUN;
