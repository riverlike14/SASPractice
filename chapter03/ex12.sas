TITLE ">>>>> ��������� �̿� <<<<";

PROC PRINT DATA=mysas.htwt LABEL;
	FORMAT dept $1. height 5.1 weight 5.1;
	LABEL height="����(cm)" weight="ü��(kg)";
RUN;
