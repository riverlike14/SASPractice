PROC SGSCATTER DATA=sashelp.cars;
	COMPARE Y=mpg_highway
	X=(weight enginesize horsepower) / GROUP=type;
RUN;
