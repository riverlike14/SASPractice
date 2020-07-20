ODS HTML
	BODY="C:\Users\User\\Documents\My SAS Files\uni_body.html"
	CONTENTS="C:\Users\User\\Documents\My SAS Files\uni_toc.html"
	PAGE="C:\Users\User\\Documents\My SAS Files\uni_page.html"
	FRAME="C:\Users\User\\Documents\My SAS Files\uni_all.html";

PROC UNIVARIATE DATA=mysas.htwt NORMAL PLOTS;
	VAR age height weight;
	HISTOGRAM age / NORMAL;
	PROBPLOT height weight / NORMAL;
	QQPLOT age / EXPONENTIAL;
	TITLE;
RUN;

ODS HTML CLOSE;
