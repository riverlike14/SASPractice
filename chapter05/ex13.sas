DATA mysas.score;
	INFILE CARDS DLM=',';
	INPUT test1 test2 test3;
CARDS;
91,87,95
97,,92
1,1,1
;
RUN;
