proc import dbms=excel
		datafile="C:\Users\User\Documents\My SAS Files\����̹���.xlsx"
		out = mysas.company
		replace;
	range="Sheet1$";
run;
