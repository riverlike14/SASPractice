GOPTIONS BORDER;
TITLE F=CENTB H=3 "Beverage Preference";
FOOTNOTE F=SWISSB H=1.5 J=R "Gchart 3: Horizontal Bar Chart";
PATTERN C=BLUE;

PROC GCHART DATA=mysas.beverage;
	HBAR drink / FREQ=count TYPE=PERCENT;
RUN;
