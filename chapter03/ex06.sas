PROC PLOT DATA=mysas.htwt;
	PLOT height * age = 'H' weight * age = gender
		/ HPOS = 50 VPOS = 15 OVERLAY;
RUN;
