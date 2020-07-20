TITLE "Effect of Temperature on the Number" J=C
	"and Size of Bacterial Divisions";
FOOTNOTE F=SWISSB H=1.5 J=R "Gplot 2 : Overlay Plot";
SYMBOL1 I=NONE H=1 VALUE=DOT CV=BLUE;
SYMBOL2 I=NONE H=1 VALUE=CIRCLE CV=BLACK;

PROC GPLOT DATA=mysas.bacteria;
	PLOT div * mass = 1 life * mass = 2 / OVERLAY FRAME;
RUN;
