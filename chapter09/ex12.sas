PROC TABULATE DATA=mysas.item NOSEPS;
	CLASS sex job item1;
	TABLE job*sex ALL="��ü",
		(item1 ALL="��ü��") *F=8.0 / RTS=20 INDENT=4 MISSTEXT="0";
RUN;
