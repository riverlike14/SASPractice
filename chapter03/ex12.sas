TITLE ">>>>> 출력포맷의 이용 <<<<";

PROC PRINT DATA=mysas.htwt LABEL;
	FORMAT dept $1. height 5.1 weight 5.1;
	LABEL height="신장(cm)" weight="체중(kg)";
RUN;
