DATA mysas.one;
	INPUT a b c;
CARDS;
11	21	31
12	22	32
13	23	33
14	24	34
15	25	35
16	26	36
;
RUN;

DATA mysas.two;
	INPUT c d;
CARDS;
41	51
42	52
.	53
44	54
;
RUN;

DATA mysas.combine;
	MERGE mysas.one mysas.two;
RUN;
