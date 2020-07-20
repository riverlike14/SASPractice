PROC TABULATE DATA=mysas.item;
	CLASS sex job age item1;
	TABLE job="직업분류: ",
		sex*(age ALL="전체"),
		(item1 ALL="전체빈도") *F=8.0 / PRINTMISS;
RUN;
