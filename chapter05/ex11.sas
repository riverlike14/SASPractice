DATA mysas.midscore;
	INFILE "C:\Users\User\Documents\My SAS Files\중간시험.txt" FIRSTOBS=3;
	INPUT id 1-9 name$ 11-22 class$ 24-33 score 34-38;
RUN;
