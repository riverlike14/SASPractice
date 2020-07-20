PROC SGPLOT DATA=sashelp.heart;
	TITLE "Cholesterol Distribution by Weight Class";
	HBOX cholesterol / CATEGORY=weight_status;
RUN;
