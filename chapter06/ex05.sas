DATA mysas.exam3;
	SET mysas.exam;
	IF mid IN (10 15) THEN score1='C';
	IF mid IN (20,50) THEN score1='B';
	IF name IN ("�̿���" "������") THEN sex='F';
	IF name IN ("��ö��", "����ȣ") THEN sex='M';
RUN;
