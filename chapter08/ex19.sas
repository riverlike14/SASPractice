PROC DATASETS LIBRARY=health NOLIST;
	MODIFY oxygen;
		RENAME oxygen=intake;
		LABEL intake="Intake Measurement";
RUN;
