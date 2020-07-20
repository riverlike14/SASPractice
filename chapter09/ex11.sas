PROC TABULATE DATA=mysas.item MISSING;
	CLASS sex job item1;
	TABLE job*sex,
		(item1 ALL="전체빈도") *F=8.0 / MISSTEXT="없음";
RUN;
