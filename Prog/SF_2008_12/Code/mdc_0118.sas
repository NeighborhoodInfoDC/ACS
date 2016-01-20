TITLE2 "m20125dc0118000";
DATA work.SFm0118dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0118000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*IMPUTATION OF MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B99086m1='Total:'
B99086m2='Imputed'
B99086m3='Not imputed'
/*IMPUTATION OF TIME ARRIVING AT WORK FROM HOME FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B99087m1='Total:'
B99087m2='Did not work at home:'
/*Time arriving at work from home -- */
B99087m3='Imputed for either departure time or minutes to work'
B99087m4='Not imputed for either departure time or minutes to work'
B99087m5='Worked at home'
/*IMPUTATION OF TRAVEL TIME TO WORK FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B99088m1='Total:'
B99088m2='Did not work at home:'
/*Travel time to work -- */
B99088m3='Imputed'
B99088m4='Not imputed'
B99088m5='Worked at home'
/*IMPUTATION OF VEHICLES AVAILABLE FOR WORKERS FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over in households */
 
B99089m1='Total:'
B99089m2='Imputed'
B99089m3='Not imputed'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B99086m1
B99086m2
B99086m3
 
B99087m1
B99087m2
B99087m3
B99087m4
B99087m5
 
B99088m1
B99088m2
B99088m3
B99088m4
B99088m5
 
B99089m1
B99089m2
B99089m3
;
RUN;
TITLE2;
