LIBNAME mysas "C:\Users\User\Documents\My SAS Files\mysas";

DATA mysas.person;
	INFILE "C:\Users\User\Documents\My SAS Files\����.txt" encoding="utf-8";
	INPUT name$ dept$ salary age;
RUN;
