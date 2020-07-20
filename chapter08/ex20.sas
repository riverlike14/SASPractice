PROC PRINTTO
	PRINT="./Documents/My SAS Files/output.txt"
	LOG="./Documents/My SAS Files/log.txt" NEW;
RUN;

PROC FREQ DATA=mysas.htwt;
	TABLES gender dept;
RUN;

PROC PRINTTO;
RUN;
