PROC TABULATE DATA=mysas.item MISSING;
	CLASS sex job item1;
	TABLE job*sex,
		(item1 ALL="��ü��") *F=8.0 / MISSTEXT="����";
RUN;
