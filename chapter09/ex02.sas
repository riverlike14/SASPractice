OPTIONS NODATE PAGENO=1 FMTSEARCH=(WORK SASUSER mysas.item_format);

TITLE "1-���� ��ǥ";

PROC TABULATE DATA=mysas.item;
	CLASS sex job age;
	TABLE job sex age;
RUN;
