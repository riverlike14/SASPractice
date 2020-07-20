PROC TABULATE DATA=mysas.item NOSEPS;
	CLASS sex job item1;
	TABLE job*sex ALL="전체",
		(item1 ALL="전체빈도") *F=8.0 / RTS=20 INDENT=4 MISSTEXT="0";
RUN;
