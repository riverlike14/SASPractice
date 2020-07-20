DATA mysas.avescore;
	INPUT name$ (x1-x3)(1. ) y1-y3;
	total = SUM(OF x1-x3 y1-y3);
	average = MEAN(OF x1-x3 y1-y3);
CARDS;
김철수 551 2 1 3
최민지 .31 4 5 1
이영희 153 2 . 2
오인수 412 4 . .
;
RUN;
