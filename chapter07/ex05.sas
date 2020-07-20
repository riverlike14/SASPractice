PROC SORT DATA=mysas.mid;
	BY name;
RUN;

PROC SORT DATA=mysas.final;
	BY name;
RUN;

DATA mysas.all1;
	UPDATE mysas.mid mysas.final;
	BY name;
RUN;
