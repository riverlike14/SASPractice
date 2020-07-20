DATA mysas.mid;
	INPUT name$ sex$ pre mid;
CARDS;
��ö��	M	30	10
����ȣ	M	45	50
�̿���	F	.	15
������	F	.	20
�ֺ�ȣ	F	.	8
;
RUN;

DATA mysas.final;
	INPUT name$ sex$ pre final;
CARDS;
�̿���	F	32	10
��ö��	M	.	40
������	F	15	20
����ȣ	M	.	15
;
RUN;

PROC SORT DATA=mysas.mid;
	BY name;
RUN;

PROC SORT DATA=mysas.final;
	BY name;
RUN;

DATA mysas.all;
	MERGE mysas.mid mysas.final;
	BY name;
RUN;
