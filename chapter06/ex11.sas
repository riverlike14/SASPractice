DATA mysas.tscore;
	INPUT name$ math stat eng kor art;
	ARRAY tscore[5] math stat eng kor art;
	DO i=1 TO 5;
		IF tscore(i)=9 THEN tscore(i)=.;
	END;
CARDS;
��ö�� 5 5 1 2 1
�ֹ��� 9 3 1 4 5
�̿��� 1 5 3 2 9
���μ� 4 1 2 4 9
;
RUN;
