data ex1_1;
	infile "c:\Users\User\Documents\My Sas Files\score.txt" encoding="utf-8";
	input id$ 1-3 name$ 5-10 sex$ 13
		weight 16-17 height 19-21;
run;

proc print data=ex1_1;
run;

proc means data=ex1_1;
	var weight height;
run;

data ex1_2;
	set ex1_1;
	if weight >= 70 then weight1="ge70";
		else weight1="lt70";
run;

proc print data=ex1_2;
	var name weight weight1;
run;

proc chart data=ex1_2;
	vbar weight;
run;
