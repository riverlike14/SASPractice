PROC TABULATE DATA=mysas.item;
	CLASS sex job age;
	TABLE job *F=8.2 (sex age) *F=5.0;
RUN;
