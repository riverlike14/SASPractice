PROC SGSCATTER DATA=sashelp.iris(WHERE=(species EQ "Virginica"));
	MATRIX petallength petalwidth sepallength
		/ ELLIPSE=(TYPE=MEAN) DIAGONAL=(HISTOGRAM KERNEL);
RUN;
