DATA mysas.trans;
	INPUT a1-a3 b$;
CARDS;
1 2 3 a
4 5 6 b
7 8 9 c
;
RUN;

PROC TRANSPOSE DATA=mysas.trans OUT=mysas.pose;
	ID b;
	VAR a1-a3;
RUN;
