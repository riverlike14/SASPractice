DATA mysas.subject;
	INPUT name$ dept$ math stat eng kor art;
CARDS;
±èÃ¶¼ö Stat 5 5 1 2 1
ÃÖ¹ÎÁö Stat . 3 1 4 5
ÀÌ¿µÈñ Stat 1 5 3 2 .
¿ÀÀÎ¼ö Stat 4 1 2 4 .
°­¹ÎÈ£ Econ 3 2 3 1 4
;
RUN;

FILENAME myfile ".\Documents\My SAS Files\scoreout.txt";

DATA _NULL_;
	SET mysas.subject;
	FILE myfile;
	IF dept="Stat";
		PUT name 6. ',' @11 math ',' stat ',' +3 eng ',' kor ',' art;
RUN;
