PROC SORT DATA=mysas.stat;
	BY dept score;
RUN;

DATA mysas.stat_n;
	SET mysas.stat;
	BY dept;
	IF FIRST.dept=1 OR LAST.dept=1;
RUN;
