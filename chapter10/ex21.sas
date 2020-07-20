TITLE "Weight Distribution in the Heart Study";
PROC SGPANEL DATA=sashelp.heart NOAUTOLEGEND;
	PANELBY sex / NOVARNAME;
	HISTOGRAM weight;
	DENSITY weight;
RUN;
