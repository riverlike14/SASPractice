PROC RANK DATA=mysas.htwt OUT=mysas.rank_hw TIES=LOW;
	VAR age height weight;
	RANKS r_age r_height r_weight;
RUN;
