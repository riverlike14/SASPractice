data ex1_1;
	input id$1-3 name$5-10 sex$13
		weight 16-17 height 19-21;
	if weight >= 70 then weight1="ge70";
		else weight1="lt70";
cards;
101 ±èÃ¶¼ö  M  74 170
102 ÀÌ¿µÈñ  F  68 166
103 ¾È¼öÁö  F  55 155
104 ¹Ú¹ÎÈ£  M  72 167
105         M  66 169
106 °­Áö¿µ  F  52  .
;
run;

proc print data=ex1_1;
run;
proc means data=ex1_1;
	var weight height;
run;

proc univariate data=ex1_1;
	var weight height;
run;
