PROC TABULATE DATA=mysas.item;
	CLASS sex job age item1;
	TABLE job="�����з�: ",
		sex*(age ALL="��ü"),
		(item1 ALL="��ü��") *F=8.0 / PRINTMISS;
RUN;
