PROC COPY IN=health OUT=xptout MEMTYPE=DATA;
	SELECT bonus budget salary;
RUN;
