DATA mysas.all2;
	MERGE mysas.mid(KEEP=name mid pre OBS=4)
		mysas.final(DROP=sex RENAME=(pre=pre1));
	BY name;
RUN;
