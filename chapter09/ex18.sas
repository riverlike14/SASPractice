PROC TABULATE DATA=mysas.item;
	CLASS sex job age;
	VAR item1 item2 item3;
	TABLE job=' ' ALL,
		sex=' '*(N *F=3.0 COLPCTN="Col" *F=6.2
			ROWPCTN="Row" *F=6.2 REPPCTN="Rep" *F=6.2) ALL *F=3.0;
	TABLE (job=' ' ALL)*item1=' ',
		sex=' '*(SUM *F=3.0 COLPCTSUM="Col" *F=6.2
			ROWPCTSUM="Row" *F=6.2 REPPCTSUM="Rep" *F=6.2) ALL *F=3.0;
RUN;
