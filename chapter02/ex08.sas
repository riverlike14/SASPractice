libname mysas "C:\Users\User\Documents\My SAS Files\SAS_Data";

data mysas.htwt;
	input name$ gender$ dept$ age height weight;
	label name="�̸�" gender="����" dept="�а�" 
		age="����" height="Ű" weight="������";
cards;
��ö�� M Stat 25 170 67
����ȣ M Stat 20 169 70
�̿��� F Math 19 160 58
������ F Econ 21 160 59
�ֺ�ȣ M Math 28 177 62
����� F Stat 22 173 60
�̻�ȣ M Econ 19 170 71
��̼� F Math 16 150 48
����� M Econ 29 165 53
������ F Stat 16 169 57
;
run;
