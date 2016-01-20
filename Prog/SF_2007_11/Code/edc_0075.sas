TITLE2 "e20115dc0075000";
DATA work.SFe0075dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0075000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER */
/*Universe:  Population 16 years and over */
 
B23025e1='Total:'
B23025e2='In labor force:'
B23025e3='Civilian labor force:'
B23025e4='Employed'
B23025e5='Unemployed'
B23025e6='Armed Forces'
B23025e7='Not in labor force'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B23025e1
B23025e2
B23025e3
B23025e4
B23025e5
B23025e6
B23025e7
;
RUN;
TITLE2;
