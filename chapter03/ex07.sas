PROC CHART DATA=mysas.htwt;
	HBAR dept;
	PIE age / DISCRETE;
RUN;
