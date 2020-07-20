PROC TABULATE DATA=mysas.item;
	CLASS sex job age;
	TABLE (job sex age) *F=7.1;
	TABLE job*sex*age *F=4.1;
	TABLE job*sex*age *F=4.1 / PRINTMISS;
	TABLE job*(sex age) *F=4.1;
RUN;
