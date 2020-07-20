OPTIONS PAGESIZE=30 NODATE PAGENO=1;

TITLE "--- Data-Set htwt ---";

PROC FREQ DATA=mysas.htwt;
TITLE2 ">>> 성별 빈도 <<<";
	TABLES sex;
RUN;

TITLE2 ">>> 기초통계량 <<<";
TITLE3 "*** '성별' ***";
PROC MEANS DATA=mysas.htwt MEAN;
	CLASS gender;
	VAR height weight;
FOOTNOTE "키와 몸무게";
RUN;
