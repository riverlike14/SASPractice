PROC TABULATE DATA=mysas.item;
	CLASS sex job;
	VAR age item1 item2 item3;
	TABLE job*sex,
		N="��" *F=4.0 age *MEAN="���" *F=8.2
		(item1 item2 item3) *SUM="�հ�" *F=6.2;
RUN;
