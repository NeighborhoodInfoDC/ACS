TITLE2 "m20125dc0078000";
DATA work.SFm0078dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0078000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*POVERTY STATUS IN THE PAST 12 MONTHS BY DISABILITY STATUS BY EMPLOYMENT STATUS FOR THE POPULATION 20 TO 64 YEARS */
/*Universe:  Population 20 to 64 years for whom poverty status is determined */
 
B23024m1='Total:'
B23024m2='Income in the past 12 months below poverty level:'
B23024m3='With a disability:'
B23024m4='In labor force:'
B23024m5='In Armed Forces'
B23024m6='Civilian:'
B23024m7='Employed'
B23024m8='Unemployed'
B23024m9='Not in labor force'
B23024m10='No disability:'
B23024m11='In labor force:'
B23024m12='In Armed Forces'
B23024m13='Civilian:'
B23024m14='Employed'
B23024m15='Unemployed'
B23024m16='Not in labor force'
B23024m17='Income in the past 12 months at or above poverty level:'
B23024m18='With a disability:'
B23024m19='In labor force:'
B23024m20='In Armed Forces'
B23024m21='Civilian:'
B23024m22='Employed'
B23024m23='Unemployed'
B23024m24='Not in labor force'
B23024m25='No disability:'
B23024m26='In labor force:'
B23024m27='In Armed Forces'
B23024m28='Civilian:'
B23024m29='Employed'
B23024m30='Unemployed'
B23024m31='Not in labor force'
/*EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER */
/*Universe:  Population 16 years and over */
 
B23025m1='Total:'
B23025m2='In labor force:'
B23025m3='Civilian labor force:'
B23025m4='Employed'
B23025m5='Unemployed'
B23025m6='Armed Forces'
B23025m7='Not in labor force'
/*SEX BY DISABILITY STATUS BY FULL-TIME WORK STATUS IN THE PAST 12 MONTHS FOR THE POPULATION 16 TO 64 YEARS */
/*Universe:  Population 16 to 64 years */
 
C23023m1='Total:'
C23023m2='Male:'
C23023m3='With a disability:'
C23023m4='Worked in the past 12 months:'
C23023m5='Worked full-time, year-round'
C23023m6='Worked less than full-time, year-round'
C23023m7='Did not work in the past 12 months'
C23023m8='No disability:'
C23023m9='Worked in the past 12 months:'
C23023m10='Worked full-time, year-round'
C23023m11='Worked less than full-time, year-round'
C23023m12='Did not work in the past 12 months'
C23023m13='Female:'
C23023m14='With a disability:'
C23023m15='Worked in the past 12 months:'
C23023m16='Worked full-time, year-round'
C23023m17='Worked less than full-time, year-round'
C23023m18='Did not work in the past 12 months'
C23023m19='No disability:'
C23023m20='Worked in the past 12 months:'
C23023m21='Worked full-time, year-round'
C23023m22='Worked less than full-time, year-round'
C23023m23='Did not work in the past 12 months'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B23024m1
B23024m2
B23024m3
B23024m4
B23024m5
B23024m6
B23024m7
B23024m8
B23024m9
B23024m10
B23024m11
B23024m12
B23024m13
B23024m14
B23024m15
B23024m16
B23024m17
B23024m18
B23024m19
B23024m20
B23024m21
B23024m22
B23024m23
B23024m24
B23024m25
B23024m26
B23024m27
B23024m28
B23024m29
B23024m30
B23024m31
 
B23025m1
B23025m2
B23025m3
B23025m4
B23025m5
B23025m6
B23025m7
 
C23023m1
C23023m2
C23023m3
C23023m4
C23023m5
C23023m6
C23023m7
C23023m8
C23023m9
C23023m10
C23023m11
C23023m12
C23023m13
C23023m14
C23023m15
C23023m16
C23023m17
C23023m18
C23023m19
C23023m20
C23023m21
C23023m22
C23023m23
;
RUN;
TITLE2;
