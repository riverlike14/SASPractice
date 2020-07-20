PROC FORMAT;
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

DATA mysas.prefer;
	INPUT job$ age coffee drink @@;
	LABEL job="직업";
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
