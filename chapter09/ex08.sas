PROC TABULATE DATA=mysas.item;
	CLASS sex job age;
	TABLE job="�����з�"*sex=' '*age=' ' *F=4.1 / PRINTMISS;
RUN;
