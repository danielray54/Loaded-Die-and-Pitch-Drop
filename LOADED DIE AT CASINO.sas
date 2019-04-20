/*Create Data Set for Analysis*/ 
DATA CasinoDie; 
	/*Create 2 Variables - SIX(Y/N) & # of OCC*/ 
	INPUT Six$ Occ; 
	/*Put Values in Variables*/ 
	DATALINES; 
	YES 56 
	NO 134 
	; 
RUN; 
/*Call the FREQ Procedure */ 
/*Using ORDER = DATA to get the YES value*/ 
PROC FREQ DATA=CasinoDie ORDER=DATA; 
	/*Specifying the data is Binomial*/ 
	WEIGHT Occ; 
	TABLES Six / BINOMIAL(p=0.1667); 
RUN;

