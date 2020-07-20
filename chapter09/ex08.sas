PROC TABULATE DATA=mysas.item;
	CLASS sex job age;
	TABLE job="직업분류"*sex=' '*age=' ' *F=4.1 / PRINTMISS;
RUN;
