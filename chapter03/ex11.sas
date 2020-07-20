OPTIONS NODATE PAGENO=1;

TITLE "--- Data-Set htwt ---";
FOOTNOTE;

TITLE2 "***** ¿¬·É > 20 *****";
PROC MEANS DATA=mysas.htwt MEAN STD;
	WHERE age > 20;
	CLASS gender;
	VAR height weight;
RUN;

TITLE2 "***** Dept : Stat or Math *****";
PROC PRINT DATA=mysas.htwt;
	WHERE dept CONTAINS "at";
RUN;
