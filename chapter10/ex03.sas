SYMBOL1 V=CIRCLE CV=BLUE I=JOIN CI=BLUE W=2;
SYMBOL2 V=DOT CV=RED I=SPLINE CI=RED W=2;

PROC GPLOT DATA=sample;
	PLOT x_value * z_value = 1 y_value * x_value = 2 / OVERLAY;
RUN;
