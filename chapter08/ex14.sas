DATA mysas.response;
	INPUT subject educat$ occup$ response;
CARDS;
1 high a 10
1 high b 20
1 high c 30
1 coll a 40
1 coll c 50
2 high a 11
2 high b 21
2 high c 31
2 coll a 12
2 coll b 22
;
RUN;

PROC SORT DATA=mysas.response;
	BY subject educat;
RUN;

PROC TRANSPOSE DATA=mysas.response OUT=mysas.res_new(DROP=_NAME_);
	ID occup;
	VAR response;
	BY subject educat;
RUN;
