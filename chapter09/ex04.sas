PROC TABULATE DATA=mysas.item;
	CLASS sex job age / ASCENDING ORDER=UNFORMATTED;
	TABLE job sex age;
RUN;

PROC TABULATE DATA=mysas.item;
	CLASS sex job age / DESCENDING ORDER=FORMATED;
	TABLE job sex age;
RUN;

PROC TABULATE DATA=mysas.item;
	CLASS sex job age / ORDER=FREQ;
	TABLE job sex age;
RUN;
