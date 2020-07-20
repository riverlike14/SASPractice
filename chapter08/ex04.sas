PROC RANK DATA=mysas.htwt OUT=mysas.rank_hw TIES=LOW;
	VAR age height weight;
RUN;
