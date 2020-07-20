PROC FORMAT LIBRARY=mysas.item_format;
	VALUE $f_region "1"="����" "2"="�λ�" "3"="����";
	VALUE $f_sex "F"="����" "M"="����";
	VALUE $f_job "A"="������" "B"="�繫��" "C"="�Ϲ���";
	VALUE f_age 21-<30="20��" 30-<40="30��";
	VALUE f_item 1="��Ⱦ���" 2="�躸��" 3="��������";
	VALUE f_mage(MULTILABEL)
		21-<30="(20��)" 30-<40="(30��)"
		low-25="25������" 26-30="26~30"
		31-35="31~35" 36-high="36���̻�";
RUN;

OPTIONS NODATE PAGENO=1 FMTSEARCH=(WORK SASUSER mysas.item_format);

PROC TABULATE DATA=mysas.item;
	FORMAT age f_mage.;
	CLASS sex job age / MLF ORDER=FORMATTED;
	TABLE age;
RUN;
