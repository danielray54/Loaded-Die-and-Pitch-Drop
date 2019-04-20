/*Create Data Set for Analysis*/ 
DATA PitchDrop; 
	/*Create 2 Variables - Stress (Y/N) & Percentage*/ 
	INPUT Time; 
	/*Put Values in Variables*/ 
	DATALINES; 
	8.1  
	8.2  
	7.2  
	8.1  
	8.3  
	8.7  
	9.2 
	; 
RUN; 
/*Run a T-TEST procedure using  
	an alpha of 0.05,  
	a null hyp of 12.85  
	and making it a 2 tailed test 
*/ 
PROC TTEST DATA=pitchdrop alpha=0.05 H0=12.85 SIDES=2; 
RUN;

