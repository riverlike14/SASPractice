PROC CHART DATA=mysas.htwt;
	HBAR dept gender / SUMVAR=age TYPE=MEAN;
RUN;
