DATA mysas.subject;
	INPUT name$ dept$ math stat eng kor art;
CARDS;
��ö�� Stat 5 5 1 2 1
�ֹ��� Stat . 3 1 4 5
�̿��� Stat 1 5 3 2 .
���μ� Stat 4 1 2 4 .
����ȣ Econ 3 2 3 1 4
;
RUN;

FILENAME myfile ".\Documents\My SAS Files\scoreout.txt";

DATA _NULL_;
	SET mysas.subject;
	FILE myfile;
	IF dept="Stat";
		PUT name 6. ',' @11 math ',' stat ',' +3 eng ',' kor ',' art;
RUN;
