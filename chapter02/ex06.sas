PROC IMPORT OUT= MYSAS.COMPANY 
            DATAFILE= "C:\Users\User\Documents\My SAS Files\����̹���.x
lsx" 
            DBMS=EXCEL REPLACE;
     RANGE="Sheet1$"; 
     GETNAMES=YES;
     MIXED=NO;
     SCANTEXT=YES;
     USEDATE=YES;
     SCANTIME=YES;
RUN;
