DATA mysas.exam2;
	SET mysas.exam;
	IF final=. THEN final=10;
	IF (mid + final) >= 50 THEN score1='P';
	IF mid >= 30 or final >= 30 THEN score2='P';
	IF score1=' ' THEN
		DO;
			score1='F';
			score2='F';
		END;
RUN;
