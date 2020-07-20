DATA mysas.sales;
	INPUT month type$ sales @@;
	ymd=MDY(month, 1, 2002);
	FORMAT ymd YYMM8.;
CARDS;
1 Actual	3405	1 Predict	3167
2 Actual	3851	2 Predict	3967
3 Actual	5404	3 Predict	5982
4 Actual	6089	4 Predict	6103
5 Actual	7012	5 Predict	6581
6 Actual	7345	6 Predict	7127
7 Actual	7894	7 Predict	8309
8 Actual	11230	8 Predict	11451
9 Actual	9656	9 Predict	9836
10 Actual	8596	10 Predict	7664
11 Actual	7294	11 Predict	7231
12 Actual	5335	12 Predict	4391
;
RUN;

GOPTIONS FTEXT=SWISS;
TITLE "Actual and Predict value" J=C;
FOOTNOTE H=1.5 J=R "Gplot 3 : Plot by type";
SYMBOL1 I=NONE H=2 VALUE=STAR CV=RED;
SYMBOL2 I=SPLINE H=1 VALUE=DOT CV=BLUE;

PROC GPLOT DATA=mysas.sales;
	PLOT sales * month = type / FRAME;
RUN;
