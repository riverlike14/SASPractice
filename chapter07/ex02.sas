DATA mysas.male;
	INPUT name$ sex$ mid final pre;
CARDS;
��ö��	M	10	40	30
����ȣ	M	50	15	45
;
RUN;

DATA mysas.female;
	INPUT name$ sex$ mid final;
CARDS;
�̿���	F	15	10
������	F	20	 .
;
RUN;

DATA mysas.concat;
	SET mysas.male mysas.female;
	IF final=. THEN final=mid;
RUN;
