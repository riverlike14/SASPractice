PROC TABULATE DATA=mysas.item;
	CLASS sex age;
	TABLE (sex=' '*(age=' ' ALL) ALL="��ü") *F=7.0;
RUN;
