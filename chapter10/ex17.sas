PROC SGPLOT DATA=sashelp.stocks (WHere=(date >= "01jan2000"D
		AND date <= "01jan2001"D AND stock="IBM"));
	TITLE "Stock Volume vs. Close";
	VBAR date / RESPONSE=volume;
	VLINE date / RESPONSE=close Y2AXIS;
RUN;
