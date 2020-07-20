PROC TABULATE DATA=mysas.item;
	FORMAT sex $f_sex. job $f_job. age f_age.;
	CLASS sex job age;
	VAR item1 item2 item3;
	TABLE (job=' ' ALL)*(sex=' ' ALL),
		(age=' ')*('N' *F=2.0
			PCTN="Ptot" *F=4.2 PCTN<age>="Page" *F=4.1
			PCTN<job ALL>="Pjob" *F=4.1
			PCTN<sex ALL>="Psex" *F=4.1) ALL=' ' *F=2.0;
RUN;
