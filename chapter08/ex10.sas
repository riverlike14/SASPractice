PROC SORT DATA=mysas.htwt;
	BY dept;
RUN;

PROC PRINT DATA=mysas.htwt LABEL;
	LABEL name="�̸�" gender="����" age="����"
		height="Ű(cm)" weight="������(kg)";
	BY dept;
	SUM height weight;
RUN;
