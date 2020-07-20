DATA mysas.male;
	INPUT name$ sex$ mid final pre;
CARDS;
±èÃ¶¼ö	M	10	40	30
°­¹ÎÈ£	M	50	15	45
;
RUN;

DATA mysas.female;
	INPUT name$ sex$ mid final;
CARDS;
ÀÌ¿µÈñ	F	15	10
¹ÚÁö¼ö	F	20	 .
;
RUN;

DATA mysas.concat;
	SET mysas.male mysas.female;
	IF final=. THEN final=mid;
RUN;
