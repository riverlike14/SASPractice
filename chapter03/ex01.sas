LIBNAME mysas "./Documents\My SAS Files\mysas";

PROC MEANS DATA=mysas.htwt MAXDEC=2 MEAN STD CV RANGE;
	CLASS gender;
	VAR age height weight;
	TITLE '>>>>> ���� ������跮 <<<<<';
RUN;
