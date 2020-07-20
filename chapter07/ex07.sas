DATA mysas.all3;
	MERGE mysas.mid mysas.final;
	BY name;
	RENAME mid=m_score final=f_score;
	DROP sex pre;
RUN;

PROC PRINT DATA=mysas.all(FIRSTOBS=2 OBS=3);
	TITLE "2nd and 3rd Observations";
RUN;
