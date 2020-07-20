TITLE "Distribution of Cholesterol Levels";
PROC SGPANEL DATA=sashelp.heart;
	PANELBY weight_status sex / LAYOUT=LATTICE NOVARNAME;
	HBOX cholesterol;
RUN;
