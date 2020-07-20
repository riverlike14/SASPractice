proc import dbms=excel
		datafile="C:\Users\User\Documents\My SAS Files\기업이미지.xlsx"
		out = mysas.company
		replace;
	range="Sheet1$";
run;
