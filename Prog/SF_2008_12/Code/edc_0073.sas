TITLE2 "e20125dc0073000";
DATA work.SFe0073dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0073000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SERVICE-CONNECTED DISABILITY-RATING STATUS AND RATINGS FOR CIVILIAN VETERANS 18 YEARS AND OVER */
/*Universe:  Civilian veterans 18 years and over */
 
B21100e1='Total:'
B21100e2='Has no service-connected disability rating'
B21100e3='Has a service-connected disability rating:'
B21100e4='0 percent'
B21100e5='10 or 20 percent'
B21100e6='30 or 40 percent'
B21100e7='50 or 60 percent'
B21100e8='70 percent or higher'
B21100e9='Rating not reported'
/*AGE BY VETERAN STATUS BY POVERTY STATUS IN THE PAST 12 MONTHS BY DISABILITY STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER */
/*Universe:  Civilian population 18 years and over for whom poverty status is determined */
 
C21007e1='Total:'
C21007e2='18 to 64 years:'
C21007e3='Veteran:'
C21007e4='Income in the past 12 months below poverty level:'
C21007e5='With a disability'
C21007e6='No disability'
C21007e7='Income in the past 12 months at or above poverty level:'
C21007e8='With a disability'
C21007e9='No disability'
C21007e10='Nonveteran:'
C21007e11='Income in the past 12 months below poverty level:'
C21007e12='With a disability'
C21007e13='No disability'
C21007e14='Income in the past 12 months at or above poverty level:'
C21007e15='With a disability'
C21007e16='No disability'
C21007e17='65 years and over:'
C21007e18='Veteran:'
C21007e19='Income in the past 12 months below poverty level:'
C21007e20='With a disability'
C21007e21='No disability'
C21007e22='Income in the past 12 months at or above poverty level:'
C21007e23='With a disability'
C21007e24='No disability'
C21007e25='Nonveteran:'
C21007e26='Income in the past 12 months below poverty level:'
C21007e27='With a disability'
C21007e28='No disability'
C21007e29='Income in the past 12 months at or above poverty level:'
C21007e30='With a disability'
C21007e31='No disability'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B21100e1
B21100e2
B21100e3
B21100e4
B21100e5
B21100e6
B21100e7
B21100e8
B21100e9
 
C21007e1
C21007e2
C21007e3
C21007e4
C21007e5
C21007e6
C21007e7
C21007e8
C21007e9
C21007e10
C21007e11
C21007e12
C21007e13
C21007e14
C21007e15
C21007e16
C21007e17
C21007e18
C21007e19
C21007e20
C21007e21
C21007e22
C21007e23
C21007e24
C21007e25
C21007e26
C21007e27
C21007e28
C21007e29
C21007e30
C21007e31
;
RUN;
TITLE2;
