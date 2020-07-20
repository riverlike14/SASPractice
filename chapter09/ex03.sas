PROC TABULATE DATA=mysas.item;
	CLASS sex job age / MISSING;
	TABLE job sex age;
RUN;
