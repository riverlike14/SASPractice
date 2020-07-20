OPTIONS PAGESIZE=40 LINESIZE=132 NODATE PAGENO=1 SOURCE;

PROC DATASETS LIBRARY=health DETAILS;
	COPY OUT=dest1 MOVE MEMTYPE=CATALOG;
		SELECT etest1-etest5;
	COPY OUT=dest2;
		EXCLUDE d: mlscl oxygen source test2 vision weight;
	DELETE tension a2(MT=catalog);
	CHANGE a1=postdrug;
	EXCHANGE weight=bodyfat;
RUN;
