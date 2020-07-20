DATA mysas.drink;
	INPUT age drink$ count;
CARDS;
18 A 10
19 A 13
20 A 12
18 B 14
19 B 7
20 B 4
18 C 2
19 C 10
20 C 6
18 D 12
19 D 8
20 D 10
;
RUN;


PROC FREQ DATA=mysas.drink;
	WEIGHT count;
	TABLES age drink age * drink / NOCOL NOPERCENT;
RUN;
