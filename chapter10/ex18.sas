TITLE "Cholesterol Levels for Age > 60";
PROC SGPANEL DATA=sashelp.heart(WHERE=(AgeAtStart > 60));
	PANELBY sex / NOVARNAME;
	LOESS X=weight Y=cholesterol / CLM;
RUN;
