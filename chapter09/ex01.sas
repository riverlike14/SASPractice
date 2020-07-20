DATA mysas.item;
	INPUT region$ sex$ job$ age item1-item3 @@;
	LABEL region="����" sex="��"
		job="����" age="����"
		item1="����1" item2="����2" item3="����3";
CARDS;
1 F A 25 1 1 1	2 M B 26 2 1 1	3 F C 31 1 3 1
1 M A 35 1 2 3	2 F C 29 1 1 2	3 F A 28 1 1 1
1 M C 33 2 1 2	2 M A 25 3 2 2	3 M B 24 1 3 2
1 F B 33 2 3 2	2 F A 27 2 1 1	3 F A 29 2 1 3
1 F A 35 1 3 1	2 M B 28 1 1 2	3 M B 34 2 1 1
1 F C 25 1 1 3	2 M C 33 1 1 1	3 F C 37 1 2 1
1 F A 31 2 2 1	2 F C 29 2 1 2	3 F B 32 1 1 2
1 M A 21 1 1 3	2 M C 23 1 2 2	3 M C 25 1 3 2
1 M B 35 2 1 1	2 M A 39 1 2 3	3 F A 26 3 2 3
1 F B 33 2 3 2	2 M C 27 2 1 2	3 M C 23 2 1 1
1 F . 29 2 3 2	2 F . 35 1 1 2 	3 M . 32 2 2 1
;
RUN;

PROC FORMAT LIBRARY=mysas.item_format;
	VALUE $f_region "1"="����" "2"="�λ�" "3"="����";
	VALUE $f_sex "F"="����" "M"="����";
	VALUE $f_job "A"="������" "B"="�繫��" "C"="�Ϲ���";
	VALUE f_age 21-<30="20��" 30-<40="30��";
	VALUE f_item 1="��Ⱦ���" 2="�躸��" 3="��������";
RUN;

OPTIONS FMTSEARCH=(WORK SASUSER mysas.item_format);

DATA mysas.item;
	SET mysas.item;
	FORMAT region $f_region. sex $f_sex. job $f_job. age f_age.
		item1 item2 item3 f_item.;
RUN;
