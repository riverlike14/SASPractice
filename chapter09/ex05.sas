PROC FORMAT LIBRARY=mysas.item_format;
	VALUE $f_region "1"="서울" "2"="부산" "3"="광주";
	VALUE $f_sex "F"="여자" "M"="남자";
	VALUE $f_job "A"="전문직" "B"="사무직" "C"="일반직";
	VALUE f_age 21-<30="20대" 30-<40="30대";
	VALUE f_item 1="①싫어함" 2="②보통" 3="③좋아함";
	VALUE f_mage(MULTILABEL)
		21-<30="(20대)" 30-<40="(30대)"
		low-25="25세이하" 26-30="26~30"
		31-35="31~35" 36-high="36세이상";
RUN;

OPTIONS NODATE PAGENO=1 FMTSEARCH=(WORK SASUSER mysas.item_format);

PROC TABULATE DATA=mysas.item;
	FORMAT age f_mage.;
	CLASS sex job age / MLF ORDER=FORMATTED;
	TABLE age;
RUN;
