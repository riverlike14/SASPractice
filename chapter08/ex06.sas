PROC STANDARD DATA=mysas.htwt OUT=mysas.stand_hw MEAN=0 STD=1;
	VAR height weight;
RUN;
