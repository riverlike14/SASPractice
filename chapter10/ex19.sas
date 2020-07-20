TITLE "Product Sales";
PROC SGPANEL DATA=sashelp.prdsale;
	PANELBY quarter;
	ROWAXIS LABEL="Sales";
	VBAR product / RESPONSE=predict STAT=MEAN TRANSPARENCY=0.3;
	VBAR product / RESPONSE=actual STAT=MEAN BARWIDTH=0.5 TRANSPARENCY=0.3;
RUN;
