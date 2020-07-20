PROC TABULATE DATA=mysas.item;
	CLASS sex job age;
	VAR item1 item2 item3;
	TABLE job*sex ALL,
		(item1 item2 item3)*(SUM *F=4.0 PCTSUM="¹éºÐÀ²" *F=8.2);
RUN;
