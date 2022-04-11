libname carslib "~";
/*autocorrects the column name and uses SAS standards*/
options validvarname=v7;
/*importing the data from excel file*/
proc import 
		datafile="/home/u59406283/File CARS_1993.xlsx" 
		out=carslib.cars1993 
		dbms=xlsx replace;
run;
/*Metadata description-contents*/
proc contents data=carslib.cars1993;
run;
/*Descriptive statistics-means,freq,univariate*/
proc means data=carslib.cars1993;
run;
proc freq data=carslib.cars1993;
run;
proc univariate data=carslib.cars1993;
run;