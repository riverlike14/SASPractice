PROC MEANS DATA=mysas.htwt NOPRINT;
	CLASS gender dept;
	VAR age height weight;
	OUTPUT OUT=mysas.htwt_m1
		MEAN(age height weight)=mean_a mean_h mean_w
		SUM(age height weight)=sum_a sum_h sum_w;
RUN;
