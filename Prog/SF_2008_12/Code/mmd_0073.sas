TITLE2 "m20125md0073000";
DATA work.SFm0073md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0073000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SERVICE-CONNECTED DISABILITY-RATING STATUS AND RATINGS FOR CIVILIAN VETERANS 18 YEARS AND OVER */
/*Universe:  Civilian veterans 18 years and over */
 
B21100m1='Total:'
B21100m2='Has no service-connected disability rating'
B21100m3='Has a service-connected disability rating:'
B21100m4='0 percent'
B21100m5='10 or 20 percent'
B21100m6='30 or 40 percent'
B21100m7='50 or 60 percent'
B21100m8='70 percent or higher'
B21100m9='Rating not reported'
/*AGE BY VETERAN STATUS BY POVERTY STATUS IN THE PAST 12 MONTHS BY DISABILITY STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER */
/*Universe:  Civilian population 18 years and over for whom poverty status is determined */
 
C21007m1='Total:'
C21007m2='18 to 64 years:'
C21007m3='Veteran:'
C21007m4='Income in the past 12 months below poverty level:'
C21007m5='With a disability'
C21007m6='No disability'
C21007m7='Income in the past 12 months at or above poverty level:'
C21007m8='With a disability'
C21007m9='No disability'
C21007m10='Nonveteran:'
C21007m11='Income in the past 12 months below poverty level:'
C21007m12='With a disability'
C21007m13='No disability'
C21007m14='Income in the past 12 months at or above poverty level:'
C21007m15='With a disability'
C21007m16='No disability'
C21007m17='65 years and over:'
C21007m18='Veteran:'
C21007m19='Income in the past 12 months below poverty level:'
C21007m20='With a disability'
C21007m21='No disability'
C21007m22='Income in the past 12 months at or above poverty level:'
C21007m23='With a disability'
C21007m24='No disability'
C21007m25='Nonveteran:'
C21007m26='Income in the past 12 months below poverty level:'
C21007m27='With a disability'
C21007m28='No disability'
C21007m29='Income in the past 12 months at or above poverty level:'
C21007m30='With a disability'
C21007m31='No disability'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B21100m1
B21100m2
B21100m3
B21100m4
B21100m5
B21100m6
B21100m7
B21100m8
B21100m9
 
C21007m1
C21007m2
C21007m3
C21007m4
C21007m5
C21007m6
C21007m7
C21007m8
C21007m9
C21007m10
C21007m11
C21007m12
C21007m13
C21007m14
C21007m15
C21007m16
C21007m17
C21007m18
C21007m19
C21007m20
C21007m21
C21007m22
C21007m23
C21007m24
C21007m25
C21007m26
C21007m27
C21007m28
C21007m29
C21007m30
C21007m31
;
RUN;
TITLE2;
