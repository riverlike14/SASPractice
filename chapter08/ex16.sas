PROC DATASETS LIBRARY=mysas NOLIST;
	CONTENTS DATA=mysas.htwt OUT=contout;
RUN;

PROC CONTENTS DATA=mysas.htwt OUT=contout;
RUN;
