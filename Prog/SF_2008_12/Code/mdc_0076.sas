TITLE2 "m20125dc0076000";
DATA work.SFm0076dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0076000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*PRESENCE OF OWN CHILDREN UNDER 18 YEARS BY AGE OF OWN CHILDREN UNDER 18 YEARS BY EMPLOYMENT STATUS FOR FEMALES 20 TO 64 YEARS */
/*Universe:  Females 20 to 64 years in households */
 
B23003m1='Total:'
B23003m2='With own children under 18 years:'
B23003m3='Under 6 years only:'
B23003m4='In labor force:'
B23003m5='In Armed Forces'
B23003m6='Civilian:'
B23003m7='Employed'
B23003m8='Unemployed'
B23003m9='Not in labor force'
B23003m10='Under 6 years and 6 to 17 years:'
B23003m11='In labor force:'
B23003m12='In Armed Forces'
B23003m13='Civilian:'
B23003m14='Employed'
B23003m15='Unemployed'
B23003m16='Not in labor force'
B23003m17='6 to 17 years only:'
B23003m18='In labor force:'
B23003m19='In Armed Forces'
B23003m20='Civilian:'
B23003m21='Employed'
B23003m22='Unemployed'
B23003m23='Not in labor force'
B23003m24='No own children under 18 years:'
B23003m25='In labor force:'
B23003m26='In Armed Forces'
B23003m27='Civilian:'
B23003m28='Employed'
B23003m29='Unemployed'
B23003m30='Not in labor force'
/*WORK STATUS IN THE PAST 12 MONTHS BY AGE BY EMPLOYMENT STATUS FOR THE CIVILIAN POPULATION 65 YEARS AND OVER */
/*Universe:  Civilian population 65 years and over */
 
B23004m1='Total:'
B23004m2='Worked in the past 12 months:'
B23004m3='65 to 74 years:'
B23004m4='In labor force:'
B23004m5='Employed'
B23004m6='Unemployed'
B23004m7='Not in labor force'
B23004m8='75 years and over:'
B23004m9='In labor force:'
B23004m10='Employed'
B23004m11='Unemployed'
B23004m12='Not in labor force'
B23004m13='Did not work in the past 12 months:'
B23004m14='65 to 74 years:'
B23004m15='Unemployed'
B23004m16='Not in labor force'
B23004m17='75 years and over:'
B23004m18='Unemployed'
B23004m19='Not in labor force'
/*SEX BY AGE BY EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone population 16 years and over */
 
C23002Cm1='Total:'
C23002Cm2='Male:'
C23002Cm3='16 to 64 years:'
C23002Cm4='In labor force:'
C23002Cm5='In Armed Forces'
C23002Cm6='Civilian:'
C23002Cm7='Employed'
C23002Cm8='Unemployed'
C23002Cm9='Not in labor force'
C23002Cm10='65 years and over:'
C23002Cm11='In labor force:'
C23002Cm12='Employed'
C23002Cm13='Unemployed'
C23002Cm14='Not in labor force'
C23002Cm15='Female:'
C23002Cm16='16 to 64 years:'
C23002Cm17='In labor force:'
C23002Cm18='In Armed Forces'
C23002Cm19='Civilian:'
C23002Cm20='Employed'
C23002Cm21='Unemployed'
C23002Cm22='Not in labor force'
C23002Cm23='65 years and over:'
C23002Cm24='In labor force:'
C23002Cm25='Employed'
C23002Cm26='Unemployed'
C23002Cm27='Not in labor force'
/*SEX BY AGE BY EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER (ASIAN ALONE) */
/*Universe:  Asian alone population 16 years and over */
 
C23002Dm1='Total:'
C23002Dm2='Male:'
C23002Dm3='16 to 64 years:'
C23002Dm4='In labor force:'
C23002Dm5='In Armed Forces'
C23002Dm6='Civilian:'
C23002Dm7='Employed'
C23002Dm8='Unemployed'
C23002Dm9='Not in labor force'
C23002Dm10='65 years and over:'
C23002Dm11='In labor force:'
C23002Dm12='Employed'
C23002Dm13='Unemployed'
C23002Dm14='Not in labor force'
C23002Dm15='Female:'
C23002Dm16='16 to 64 years:'
C23002Dm17='In labor force:'
C23002Dm18='In Armed Forces'
C23002Dm19='Civilian:'
C23002Dm20='Employed'
C23002Dm21='Unemployed'
C23002Dm22='Not in labor force'
C23002Dm23='65 years and over:'
C23002Dm24='In labor force:'
C23002Dm25='Employed'
C23002Dm26='Unemployed'
C23002Dm27='Not in labor force'
/*SEX BY AGE BY EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 16 years and over */
 
C23002Em1='Total:'
C23002Em2='Male:'
C23002Em3='16 to 64 years:'
C23002Em4='In labor force:'
C23002Em5='In Armed Forces'
C23002Em6='Civilian:'
C23002Em7='Employed'
C23002Em8='Unemployed'
C23002Em9='Not in labor force'
C23002Em10='65 years and over:'
C23002Em11='In labor force:'
C23002Em12='Employed'
C23002Em13='Unemployed'
C23002Em14='Not in labor force'
C23002Em15='Female:'
C23002Em16='16 to 64 years:'
C23002Em17='In labor force:'
C23002Em18='In Armed Forces'
C23002Em19='Civilian:'
C23002Em20='Employed'
C23002Em21='Unemployed'
C23002Em22='Not in labor force'
C23002Em23='65 years and over:'
C23002Em24='In labor force:'
C23002Em25='Employed'
C23002Em26='Unemployed'
C23002Em27='Not in labor force'
/*SEX BY AGE BY EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone population 16 years and over */
 
C23002Fm1='Total:'
C23002Fm2='Male:'
C23002Fm3='16 to 64 years:'
C23002Fm4='In labor force:'
C23002Fm5='In Armed Forces'
C23002Fm6='Civilian:'
C23002Fm7='Employed'
C23002Fm8='Unemployed'
C23002Fm9='Not in labor force'
C23002Fm10='65 years and over:'
C23002Fm11='In labor force:'
C23002Fm12='Employed'
C23002Fm13='Unemployed'
C23002Fm14='Not in labor force'
C23002Fm15='Female:'
C23002Fm16='16 to 64 years:'
C23002Fm17='In labor force:'
C23002Fm18='In Armed Forces'
C23002Fm19='Civilian:'
C23002Fm20='Employed'
C23002Fm21='Unemployed'
C23002Fm22='Not in labor force'
C23002Fm23='65 years and over:'
C23002Fm24='In labor force:'
C23002Fm25='Employed'
C23002Fm26='Unemployed'
C23002Fm27='Not in labor force'
/*SEX BY AGE BY EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER (TWO OR MORE RACES) */
/*Universe:  Two or more races population 16 years and over */
 
C23002Gm1='Total:'
C23002Gm2='Male:'
C23002Gm3='16 to 64 years:'
C23002Gm4='In labor force:'
C23002Gm5='In Armed Forces'
C23002Gm6='Civilian:'
C23002Gm7='Employed'
C23002Gm8='Unemployed'
C23002Gm9='Not in labor force'
C23002Gm10='65 years and over:'
C23002Gm11='In labor force:'
C23002Gm12='Employed'
C23002Gm13='Unemployed'
C23002Gm14='Not in labor force'
C23002Gm15='Female:'
C23002Gm16='16 to 64 years:'
C23002Gm17='In labor force:'
C23002Gm18='In Armed Forces'
C23002Gm19='Civilian:'
C23002Gm20='Employed'
C23002Gm21='Unemployed'
C23002Gm22='Not in labor force'
C23002Gm23='65 years and over:'
C23002Gm24='In labor force:'
C23002Gm25='Employed'
C23002Gm26='Unemployed'
C23002Gm27='Not in labor force'
/*SEX BY AGE BY EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population 16 years and over */
 
C23002Hm1='Total:'
C23002Hm2='Male:'
C23002Hm3='16 to 64 years:'
C23002Hm4='In labor force:'
C23002Hm5='In Armed Forces'
C23002Hm6='Civilian:'
C23002Hm7='Employed'
C23002Hm8='Unemployed'
C23002Hm9='Not in labor force'
C23002Hm10='65 years and over:'
C23002Hm11='In labor force:'
C23002Hm12='Employed'
C23002Hm13='Unemployed'
C23002Hm14='Not in labor force'
C23002Hm15='Female:'
C23002Hm16='16 to 64 years:'
C23002Hm17='In labor force:'
C23002Hm18='In Armed Forces'
C23002Hm19='Civilian:'
C23002Hm20='Employed'
C23002Hm21='Unemployed'
C23002Hm22='Not in labor force'
C23002Hm23='65 years and over:'
C23002Hm24='In labor force:'
C23002Hm25='Employed'
C23002Hm26='Unemployed'
C23002Hm27='Not in labor force'
/*SEX BY AGE BY EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population 16 years and over */
 
C23002Im1='Total:'
C23002Im2='Male:'
C23002Im3='16 to 64 years:'
C23002Im4='In labor force:'
C23002Im5='In Armed Forces'
C23002Im6='Civilian:'
C23002Im7='Employed'
C23002Im8='Unemployed'
C23002Im9='Not in labor force'
C23002Im10='65 years and over:'
C23002Im11='In labor force:'
C23002Im12='Employed'
C23002Im13='Unemployed'
C23002Im14='Not in labor force'
C23002Im15='Female:'
C23002Im16='16 to 64 years:'
C23002Im17='In labor force:'
C23002Im18='In Armed Forces'
C23002Im19='Civilian:'
C23002Im20='Employed'
C23002Im21='Unemployed'
C23002Im22='Not in labor force'
C23002Im23='65 years and over:'
C23002Im24='In labor force:'
C23002Im25='Employed'
C23002Im26='Unemployed'
C23002Im27='Not in labor force'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B23003m1
B23003m2
B23003m3
B23003m4
B23003m5
B23003m6
B23003m7
B23003m8
B23003m9
B23003m10
B23003m11
B23003m12
B23003m13
B23003m14
B23003m15
B23003m16
B23003m17
B23003m18
B23003m19
B23003m20
B23003m21
B23003m22
B23003m23
B23003m24
B23003m25
B23003m26
B23003m27
B23003m28
B23003m29
B23003m30
 
B23004m1
B23004m2
B23004m3
B23004m4
B23004m5
B23004m6
B23004m7
B23004m8
B23004m9
B23004m10
B23004m11
B23004m12
B23004m13
B23004m14
B23004m15
B23004m16
B23004m17
B23004m18
B23004m19
 
C23002Cm1
C23002Cm2
C23002Cm3
C23002Cm4
C23002Cm5
C23002Cm6
C23002Cm7
C23002Cm8
C23002Cm9
C23002Cm10
C23002Cm11
C23002Cm12
C23002Cm13
C23002Cm14
C23002Cm15
C23002Cm16
C23002Cm17
C23002Cm18
C23002Cm19
C23002Cm20
C23002Cm21
C23002Cm22
C23002Cm23
C23002Cm24
C23002Cm25
C23002Cm26
C23002Cm27
 
C23002Dm1
C23002Dm2
C23002Dm3
C23002Dm4
C23002Dm5
C23002Dm6
C23002Dm7
C23002Dm8
C23002Dm9
C23002Dm10
C23002Dm11
C23002Dm12
C23002Dm13
C23002Dm14
C23002Dm15
C23002Dm16
C23002Dm17
C23002Dm18
C23002Dm19
C23002Dm20
C23002Dm21
C23002Dm22
C23002Dm23
C23002Dm24
C23002Dm25
C23002Dm26
C23002Dm27
 
C23002Em1
C23002Em2
C23002Em3
C23002Em4
C23002Em5
C23002Em6
C23002Em7
C23002Em8
C23002Em9
C23002Em10
C23002Em11
C23002Em12
C23002Em13
C23002Em14
C23002Em15
C23002Em16
C23002Em17
C23002Em18
C23002Em19
C23002Em20
C23002Em21
C23002Em22
C23002Em23
C23002Em24
C23002Em25
C23002Em26
C23002Em27
 
C23002Fm1
C23002Fm2
C23002Fm3
C23002Fm4
C23002Fm5
C23002Fm6
C23002Fm7
C23002Fm8
C23002Fm9
C23002Fm10
C23002Fm11
C23002Fm12
C23002Fm13
C23002Fm14
C23002Fm15
C23002Fm16
C23002Fm17
C23002Fm18
C23002Fm19
C23002Fm20
C23002Fm21
C23002Fm22
C23002Fm23
C23002Fm24
C23002Fm25
C23002Fm26
C23002Fm27
 
C23002Gm1
C23002Gm2
C23002Gm3
C23002Gm4
C23002Gm5
C23002Gm6
C23002Gm7
C23002Gm8
C23002Gm9
C23002Gm10
C23002Gm11
C23002Gm12
C23002Gm13
C23002Gm14
C23002Gm15
C23002Gm16
C23002Gm17
C23002Gm18
C23002Gm19
C23002Gm20
C23002Gm21
C23002Gm22
C23002Gm23
C23002Gm24
C23002Gm25
C23002Gm26
C23002Gm27
 
C23002Hm1
C23002Hm2
C23002Hm3
C23002Hm4
C23002Hm5
C23002Hm6
C23002Hm7
C23002Hm8
C23002Hm9
C23002Hm10
C23002Hm11
C23002Hm12
C23002Hm13
C23002Hm14
C23002Hm15
C23002Hm16
C23002Hm17
C23002Hm18
C23002Hm19
C23002Hm20
C23002Hm21
C23002Hm22
C23002Hm23
C23002Hm24
C23002Hm25
C23002Hm26
C23002Hm27
 
C23002Im1
C23002Im2
C23002Im3
C23002Im4
C23002Im5
C23002Im6
C23002Im7
C23002Im8
C23002Im9
C23002Im10
C23002Im11
C23002Im12
C23002Im13
C23002Im14
C23002Im15
C23002Im16
C23002Im17
C23002Im18
C23002Im19
C23002Im20
C23002Im21
C23002Im22
C23002Im23
C23002Im24
C23002Im25
C23002Im26
C23002Im27
;
RUN;
TITLE2;
