PROC TABULATE DATA=mysas.item;
	CLASS sex job age;
	TABLE job*sex ALL,
		(age=' ' ALL)*(N *F=4.0 PCTN="�����" *F=8.2);
RUN;
