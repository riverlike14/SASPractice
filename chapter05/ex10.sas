DATA mysas.year;
	INPUT year 1-4 @;
	IF year=1988 THEN INPUT day 5-7 amount 8-10;
	IF year=1989 THEN INPUT day 6-8 amount 10-12;
CARDS;
19883.2149
19885.7614
1989 7.9 764
1989 6.8 875
;
RUN;
