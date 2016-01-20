TITLE2 "e20115dc0112000";
DATA work.SFe0112dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0112000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*IMPUTATION OF MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B99086e1='Total:'
B99086e2='Imputed'
B99086e3='Not imputed'
 
/*IMPUTATION OF TIME ARRIVING AT WORK FROM HOME FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B99087e1='Total:'
B99087e2='Did not work at home:'
/*Time arriving at work from home -- */
B99087e3='Imputed for either departure time or minutes to work'
B99087e4='Not imputed for either departure time or minutes to work'
B99087e5='Worked at home'
 
/*IMPUTATION OF TRAVEL TIME TO WORK FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B99088e1='Total:'
B99088e2='Did not work at home:'
/*Travel time to work -- */
B99088e3='Imputed'
B99088e4='Not imputed'
B99088e5='Worked at home'
 
/*IMPUTATION OF VEHICLES AVAILABLE FOR WORKERS FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over in households */
 
B99089e1='Total:'
B99089e2='Imputed'
B99089e3='Not imputed'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B99086e1
B99086e2
B99086e3
 
B99087e1
B99087e2
B99087e3
B99087e4
B99087e5
 
B99088e1
B99088e2
B99088e3
B99088e4
B99088e5
 
B99089e1
B99089e2
B99089e3
;
RUN;
TITLE2;
