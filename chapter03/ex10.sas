OPTIONS PAGESIZE=30 NODATE PAGENO=1;

TITLE "--- Data-Set htwt ---";

PROC FREQ DATA=mysas.htwt;
TITLE2 ">>> ���� �� <<<";
	TABLES sex;
RUN;

TITLE2 ">>> ������跮 <<<";
TITLE3 "*** '����' ***";
PROC MEANS DATA=mysas.htwt MEAN;
	CLASS gender;
	VAR height weight;
FOOTNOTE "Ű�� ������";
RUN;
