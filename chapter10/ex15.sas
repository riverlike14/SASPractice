PROC SGPLOT DATA=sashelp.electric(WHERE=
	(year >= 2001 and customer="Residential"));
	XAXIS TYPE=DISCRETE;
	SERIES X=year Y=coal / DATALABEL;
	SERIES X=year Y=naturalgas / DATALABEL Y2AXIS;
RUN;
