PROC SORT DATA=mysas.htwt;
	BY gender;
RUN;

PROC UNIVARIATE DATA=mysas.htwt NORMAL PLOTS;
	BY gender;
	VAR age height weight;
	HISTOGRAM age / NORMAL;
	PROBPLOT height weight / NORMAL;
	QQPLOT age / EXPONENTIAL;
RUN;
