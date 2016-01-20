TITLE2 "e20125md0078000";
DATA work.SFe0078md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0078000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*POVERTY STATUS IN THE PAST 12 MONTHS BY DISABILITY STATUS BY EMPLOYMENT STATUS FOR THE POPULATION 20 TO 64 YEARS */
/*Universe:  Population 20 to 64 years for whom poverty status is determined */
 
B23024e1='Total:'
B23024e2='Income in the past 12 months below poverty level:'
B23024e3='With a disability:'
B23024e4='In labor force:'
B23024e5='In Armed Forces'
B23024e6='Civilian:'
B23024e7='Employed'
B23024e8='Unemployed'
B23024e9='Not in labor force'
B23024e10='No disability:'
B23024e11='In labor force:'
B23024e12='In Armed Forces'
B23024e13='Civilian:'
B23024e14='Employed'
B23024e15='Unemployed'
B23024e16='Not in labor force'
B23024e17='Income in the past 12 months at or above poverty level:'
B23024e18='With a disability:'
B23024e19='In labor force:'
B23024e20='In Armed Forces'
B23024e21='Civilian:'
B23024e22='Employed'
B23024e23='Unemployed'
B23024e24='Not in labor force'
B23024e25='No disability:'
B23024e26='In labor force:'
B23024e27='In Armed Forces'
B23024e28='Civilian:'
B23024e29='Employed'
B23024e30='Unemployed'
B23024e31='Not in labor force'
/*EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER */
/*Universe:  Population 16 years and over */
 
B23025e1='Total:'
B23025e2='In labor force:'
B23025e3='Civilian labor force:'
B23025e4='Employed'
B23025e5='Unemployed'
B23025e6='Armed Forces'
B23025e7='Not in labor force'
/*SEX BY DISABILITY STATUS BY FULL-TIME WORK STATUS IN THE PAST 12 MONTHS FOR THE POPULATION 16 TO 64 YEARS */
/*Universe:  Population 16 to 64 years */
 
C23023e1='Total:'
C23023e2='Male:'
C23023e3='With a disability:'
C23023e4='Worked in the past 12 months:'
C23023e5='Worked full-time, year-round'
C23023e6='Worked less than full-time, year-round'
C23023e7='Did not work in the past 12 months'
C23023e8='No disability:'
C23023e9='Worked in the past 12 months:'
C23023e10='Worked full-time, year-round'
C23023e11='Worked less than full-time, year-round'
C23023e12='Did not work in the past 12 months'
C23023e13='Female:'
C23023e14='With a disability:'
C23023e15='Worked in the past 12 months:'
C23023e16='Worked full-time, year-round'
C23023e17='Worked less than full-time, year-round'
C23023e18='Did not work in the past 12 months'
C23023e19='No disability:'
C23023e20='Worked in the past 12 months:'
C23023e21='Worked full-time, year-round'
C23023e22='Worked less than full-time, year-round'
C23023e23='Did not work in the past 12 months'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B23024e1
B23024e2
B23024e3
B23024e4
B23024e5
B23024e6
B23024e7
B23024e8
B23024e9
B23024e10
B23024e11
B23024e12
B23024e13
B23024e14
B23024e15
B23024e16
B23024e17
B23024e18
B23024e19
B23024e20
B23024e21
B23024e22
B23024e23
B23024e24
B23024e25
B23024e26
B23024e27
B23024e28
B23024e29
B23024e30
B23024e31
 
B23025e1
B23025e2
B23025e3
B23025e4
B23025e5
B23025e6
B23025e7
 
C23023e1
C23023e2
C23023e3
C23023e4
C23023e5
C23023e6
C23023e7
C23023e8
C23023e9
C23023e10
C23023e11
C23023e12
C23023e13
C23023e14
C23023e15
C23023e16
C23023e17
C23023e18
C23023e19
C23023e20
C23023e21
C23023e22
C23023e23
;
RUN;
TITLE2;
