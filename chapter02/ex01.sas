data company;
	infile "C:\Users\User\Documents\My SAS Files\����̹���.txt";
	input id 1-2 age 3 gender$ 4 item1 5 item2 6 item3 7;
	label id="����ȣ" age="����" gender="����"
		item1="���� ��ǰ�� ����� ���� ����Ѵ�"
		item2="�Һ��ڸ� �߿��ϰ� �����"
		item3="�ŷ��Ҹ��� ����̴�";
run;
