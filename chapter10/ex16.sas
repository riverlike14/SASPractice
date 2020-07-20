PROC SGPLOT DATA=sashelp.heart;
	TITLE "Cholesterol Distribution";
	HISTOGRAM cholesterol;
	DENSITY cholesterol;
	DENSITY cholesterol / TYPE=KERNEL;
	KEYLEGEND / LOCATION=INSIDE POSITION=TOPRIGHT;
RUN;
