DATA mysas.beverage;
	INPUT age$ drink$ count @@;
CARDS;
20 Coke 10 20 Pepsi 14 20 Fanta  4 20 Others 12
30 Coke 13 30 Pepsi  9 30 Fanta 10 30 Others  8
40 Coke 12 40 Pepsi  8 40 Fanta 10 40 Others 10
;
RUN;

GOPTIONS BORDER;
TITLE F=CENTB H=3 "Beverage Preference";
FOOTNOTE F=SWISSB H=1.5 J=R "Gchart 1: Vertical Bar Chart";
PATTERN C=BLUE VALUE=X1;

PROC GCHART DATA=mysas.beverage;
	VBAR drink / FREQ=count TYPE=PERCENT CTEXT=RED;
RUN;

FOOTNOTE F=SWISSB H=1.5 J=R "Gchart 2: Vertical Bar Chart";

PROC GCHART DATA=mysas.beverage;
	VBAR age / FREQ=count TYPE=PERCENT GROUP=drink CTEXT=RED;
RUN;
