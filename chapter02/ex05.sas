libname mysas "C:\Users\User\Documents\My SAS Files\SAS_Data";
libname new "C:\Temp\newdata";

data new.company1;
	set mysas.company;
	itemmean = (item1 + item2 + item3) / 3;
run;
