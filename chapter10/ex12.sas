TITLE "Effect of Temperature on the Number" J=C
	"and Size of Bacterial Divisions";
FOOTNOTE F=SWISSB H=1.5 J=R "Gplot 4 : Bubble Plot";
AXIS1 LABEL=("Size (in Angstroms)");
AXIS2 LABEL=("Divisions");

PROC GPLOT DATA=mysas.bacteria;
	BUBBLE div * mass = life / HAXIS=AXIS1 VAXIS=AXIS2 BSIZE=15
		BCOLOR=BLUE BLABEL;
RUN;
