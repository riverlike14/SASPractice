GOPTIONS BORDER;
TITLE F=CENTB H=3 "Beverage Preference";
FOOTNOTE F=SWISSB H=1.5 J=R "Gchart 5 : Pie Chart";

PROC GCHART DATA=mysas.beverage;
	PIE drink / FREQ=count CFILL=WHITE SLICE=ARROW
		PERCENT=INSIDE VALUE=INSIDE;
RUN;