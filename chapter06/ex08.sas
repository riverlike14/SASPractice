DATA mysas.hire;
	INPUT name$ 6. +1 bdate DATE7. +1 hired MMDDYY8.;
	hiredate = hired + (365.25 * 3);
	hireqtr = QTR(hiredate);
	IF hired > "01jan94"D THEN new="YES";
	FORMAT bdate MMDDYY8. hired YYMMDD8. hiredate WEEKDATE17.;
CARDS;
±èÃ¶¼ö 01jan60 09-15-90
ÃÖ¹ÎÁö 05oct49 01-24-92
ÀÌ¿µÈñ 18mar88 10-10-93
¿ÀÀÎ¼ö 29feb80 05-29-94
;
RUN;
