PROC MEANS DATA=mysas.htwt NOPRINT NWAY;
	CLASS gender dept;
	VAR age height weight;
	OUTPUT OUT=mysas.htwt_m MEAN=;
RUN;
