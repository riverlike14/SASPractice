PROC TABULATE DATA=mysas.item;
	CLASS sex age;
	TABLE (sex=' '*(age=' ' ALL) ALL="ÀüÃ¼") *F=7.0;
RUN;
