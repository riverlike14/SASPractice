LIBNAME mysas "C:\Users\User\Documents\My SAS Files\mysas";

DATA mysas.person;
	INFILE "C:\Users\User\Documents\My SAS Files\¼ºÀû.txt" encoding="utf-8";
	INPUT name$ dept$ salary age;
RUN;
