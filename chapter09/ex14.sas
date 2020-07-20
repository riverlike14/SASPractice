PROC TABULATE DATA=mysas.item;
	CLASS sex job age;
	VAR item1 item2 item3;
	TABLE job*sex,
		N *F=3.0 age=' '*(item1 item2 item3) *MEAN *F=6.2;
RUN;
