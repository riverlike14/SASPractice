PROC SORT DATA=mysas.htwt;
	BY dept;
RUN;

PROC PRINT DATA=mysas.htwt LABEL;
	LABEL name="이름" gender="성별" age="나이"
		height="키(cm)" weight="몸무게(kg)";
	BY dept;
	SUM height weight;
RUN;
