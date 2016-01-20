TITLE2 "e20125md0001000";
DATA work.SFe0001md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0001000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*UNWEIGHTED SAMPLE COUNT OF THE POPULATION */
/*Universe:  Total population */
 
B00001e1='Total'
/*UNWEIGHTED SAMPLE HOUSING UNITS */
/*Universe:  Housing units */
 
B00002e1='Total'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B00001e1
 
B00002e1
;
RUN;
TITLE2;
