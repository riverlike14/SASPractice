PROC BOXPLOT DATA=mysas.htwt;
	PLOT (height weight) * gender / BOXSTYLE=SKELETAL;
RUN;
