DATA mysas.exam4;
	SET mysas.exam;
	IF mid >= 30 THEN score1='A';
		ELSE IF mid >= 20 THEN score1='B';
		ELSE score1='C';
	IF final >= 30 THEN score2='P';
		ELSE score2='F';
RUN;
