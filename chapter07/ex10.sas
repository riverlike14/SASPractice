DATA mysas.stat;
	INPUT dept$ id$ score grade$;
	IF _N_=1 THEN score=17;
	obsnum=_N_;
	errornum=_ERROR_;
CARDS;
STAT S01 15 C
STAT S02 40 A
STAT S03 35 B
MATH M01 32 B
MATH M02 54 A
MATH M03  C C
MATH M04 63 A
;
RUN;
