PROC TABULATE DATA=mysas.item;
	CLASS sex job age item1;
	TABLE job="�����з�"*(sex=' ' age=' '),
		(item1 ALL="��ü��") *F=8.0 / RTS=20 PRINTMISS;
RUN;
