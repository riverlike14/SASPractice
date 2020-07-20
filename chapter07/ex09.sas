DATA mysas.gender_m mysas.gender_f;
	SET mysas.survey;
	IF sex="Male" THEN OUTPUT mysas.gender_m;
		ELSE OUTPUT mysas.gender_f;
RUN;
