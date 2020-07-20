PROC SUMMARY DATA=mysas.htwt NWAY;
	CLASS dept;
	VAR height weight;
	OUTPUT OUT=mysas.height_m
		MEAN(height weight)=mean_h mean_w;
RUN;

PROC SORT DATA=mysas.htwt;
	BY dept;
RUN;

DATA mysas.htwt_r;
	MERGE mysas.htwt mysas.height_m(DROP=_TYPE_ _FREQ_);
		BY dept;
		ratio_h = (height / mean_h) * 100;
		diff_w = weight - mean_w;
RUN;
