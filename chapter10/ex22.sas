PROC SGSCATTER DATA=sashelp.cars;
	PLOT mpg_highway * weight msrp * horsepower / GROUP=type;
RUN;
