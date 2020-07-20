PROC SORT DATA=mysas.htwt OUT=mysas.new_htwt;
	BY dept DESCENDING height;
RUN;
