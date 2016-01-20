TITLE2 "m20125md0072000";
DATA work.SFm0072md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0072000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SEX BY AGE BY VETERAN STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER */
/*Universe:  Civilian population 18 years and over */
 
B21001m1='Total:'
B21001m2='Veteran'
B21001m3='Nonveteran'
B21001m4='Male:'
B21001m5='Veteran'
B21001m6='Nonveteran'
B21001m7='18 to 34 years:'
B21001m8='Veteran'
B21001m9='Nonveteran'
B21001m10='35 to 54 years:'
B21001m11='Veteran'
B21001m12='Nonveteran'
B21001m13='55 to 64 years:'
B21001m14='Veteran'
B21001m15='Nonveteran'
B21001m16='65 to 74 years:'
B21001m17='Veteran'
B21001m18='Nonveteran'
B21001m19='75 years and over:'
B21001m20='Veteran'
B21001m21='Nonveteran'
B21001m22='Female:'
B21001m23='Veteran'
B21001m24='Nonveteran'
B21001m25='18 to 34 years:'
B21001m26='Veteran'
B21001m27='Nonveteran'
B21001m28='35 to 54 years:'
B21001m29='Veteran'
B21001m30='Nonveteran'
B21001m31='55 to 64 years:'
B21001m32='Veteran'
B21001m33='Nonveteran'
B21001m34='65 to 74 years:'
B21001m35='Veteran'
B21001m36='Nonveteran'
B21001m37='75 years and over:'
B21001m38='Veteran'
B21001m39='Nonveteran'
/*PERIOD OF MILITARY SERVICE FOR CIVILIAN VETERANS 18 YEARS AND OVER */
/*Universe:  Civilian veterans 18 years and over */
 
B21002m1='Total:'
B21002m2='Gulf War (9/2001 or later), no Gulf War (8/1990 to 8/2001), no Vietnam Era'
B21002m3='Gulf War (9/2001 or later) and Gulf War (8/1990 to 8/2001), no Vietnam Era'
B21002m4='Gulf War (9/2001 or later), and Gulf War (8/1990 to 8/2001), and Vietnam Era'
B21002m5='Gulf War (8/1990 to 8/2001), no Vietnam Era'
B21002m6='Gulf War (8/1990 to 8/2001) and Vietnam Era'
B21002m7='Vietnam Era, no Korean War, no World War II'
B21002m8='Vietnam Era and Korean War, no World War II'
B21002m9='Vietnam Era and Korean War and World War II'
B21002m10='Korean War, no Vietnam Era, no World War II'
B21002m11='Korean War and World War II, no Vietnam Era'
B21002m12='World War II, no Korean War, no Vietnam Era'
B21002m13='Between Gulf War and Vietnam Era only'
B21002m14='Between Vietnam Era and Korean War only'
B21002m15='Between Korean War and World War II only'
B21002m16='Pre-World War II only'
/*VETERAN STATUS BY EDUCATIONAL ATTAINMENT FOR THE CIVILIAN POPULATION 25 YEARS AND OVER */
/*Universe:  Civilian population 25 years and over */
 
B21003m1='Total:'
B21003m2='Veteran:'
B21003m3='Less than high school graduate'
B21003m4='High school graduate (includes equivalency)'
B21003m5='Some college or associate''s degree'
B21003m6='Bachelor''s degree or higher'
B21003m7='Nonveteran:'
B21003m8='Less than high school graduate'
B21003m9='High school graduate (includes equivalency)'
B21003m10='Some college or associate''s degree'
B21003m11='Bachelor''s degree or higher'
/*MEDIAN INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY VETERAN STATUS BY SEX FOR THE CIVILIAN POPULATION 18 YEARS AND OVER WITH INCOME */
/*Universe:  Civilian population 18 years and over with income in the past 12 months */
/*Median income in the past 12 months (in 2012 inflation-adjusted dollars)-- */
 
B21004m1='Total:'
B21004m2='Veteran:'
B21004m3='Male'
B21004m4='Female'
B21004m5='Nonveteran:'
B21004m6='Male'
B21004m7='Female'
/*AGE BY VETERAN STATUS BY EMPLOYMENT STATUS FOR THE CIVILIAN POPULATION 18 TO 64 YEARS */
/*Universe:  Civilian population 18 to 64 years */
 
B21005m1='Total:'
B21005m2='18 to 34 years:'
B21005m3='Veteran:'
B21005m4='In labor force:'
B21005m5='Employed'
B21005m6='Unemployed'
B21005m7='Not in labor force'
B21005m8='Nonveteran:'
B21005m9='In labor force:'
B21005m10='Employed'
B21005m11='Unemployed'
B21005m12='Not in labor force'
B21005m13='35 to 54 years:'
B21005m14='Veteran:'
B21005m15='In labor force:'
B21005m16='Employed'
B21005m17='Unemployed'
B21005m18='Not in labor force'
B21005m19='Nonveteran:'
B21005m20='In labor force:'
B21005m21='Employed'
B21005m22='Unemployed'
B21005m23='Not in labor force'
B21005m24='55 to 64 years:'
B21005m25='Veteran:'
B21005m26='In labor force:'
B21005m27='Employed'
B21005m28='Unemployed'
B21005m29='Not in labor force'
B21005m30='Nonveteran:'
B21005m31='In labor force:'
B21005m32='Employed'
B21005m33='Unemployed'
B21005m34='Not in labor force'
/*SEX BY AGE BY VETERAN STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER (WHITE ALONE) */
/*Universe: White alone civilian population 18 years and over */
 
C21001Am1='Total:'
C21001Am2='Male:'
C21001Am3='18 to 64 years:'
C21001Am4='Veteran'
C21001Am5='Nonveteran'
C21001Am6='65 years and over:'
C21001Am7='Veteran'
C21001Am8='Nonveteran'
C21001Am9='Female:'
C21001Am10='18 to 64 years:'
C21001Am11='Veteran'
C21001Am12='Nonveteran'
C21001Am13='65 years and over:'
C21001Am14='Veteran'
C21001Am15='Nonveteran'
/*SEX BY AGE BY VETERAN STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe: Black or African American alone civilian population 18 years and over */
 
C21001Bm1='Total:'
C21001Bm2='Male:'
C21001Bm3='18 to 64 years:'
C21001Bm4='Veteran'
C21001Bm5='Nonveteran'
C21001Bm6='65 years and over:'
C21001Bm7='Veteran'
C21001Bm8='Nonveteran'
C21001Bm9='Female:'
C21001Bm10='18 to 64 years:'
C21001Bm11='Veteran'
C21001Bm12='Nonveteran'
C21001Bm13='65 years and over:'
C21001Bm14='Veteran'
C21001Bm15='Nonveteran'
/*SEX BY AGE BY VETERAN STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe: American Indian and Alaska Native alone civilian population 18 years and over */
 
C21001Cm1='Total:'
C21001Cm2='Male:'
C21001Cm3='18 to 64 years:'
C21001Cm4='Veteran'
C21001Cm5='Nonveteran'
C21001Cm6='65 years and over:'
C21001Cm7='Veteran'
C21001Cm8='Nonveteran'
C21001Cm9='Female:'
C21001Cm10='18 to 64 years:'
C21001Cm11='Veteran'
C21001Cm12='Nonveteran'
C21001Cm13='65 years and over:'
C21001Cm14='Veteran'
C21001Cm15='Nonveteran'
/*SEX BY AGE BY VETERAN STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER (ASIAN ALONE) */
/*Universe: Asian alone civilian population 18 years and over */
 
C21001Dm1='Total:'
C21001Dm2='Male:'
C21001Dm3='18 to 64 years:'
C21001Dm4='Veteran'
C21001Dm5='Nonveteran'
C21001Dm6='65 years and over:'
C21001Dm7='Veteran'
C21001Dm8='Nonveteran'
C21001Dm9='Female:'
C21001Dm10='18 to 64 years:'
C21001Dm11='Veteran'
C21001Dm12='Nonveteran'
C21001Dm13='65 years and over:'
C21001Dm14='Veteran'
C21001Dm15='Nonveteran'
/*SEX BY AGE BY VETERAN STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe: Native Hawaiian and Other Pacific Islander alone civilian population 18 years and over */
 
C21001Em1='Total:'
C21001Em2='Male:'
C21001Em3='18 to 64 years:'
C21001Em4='Veteran'
C21001Em5='Nonveteran'
C21001Em6='65 years and over:'
C21001Em7='Veteran'
C21001Em8='Nonveteran'
C21001Em9='Female:'
C21001Em10='18 to 64 years:'
C21001Em11='Veteran'
C21001Em12='Nonveteran'
C21001Em13='65 years and over:'
C21001Em14='Veteran'
C21001Em15='Nonveteran'
/*SEX BY AGE BY VETERAN STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER (SOME OTHER RACE ALONE) */
/*Universe: Some other race alone civilian population 18 years and over */
 
C21001Fm1='Total:'
C21001Fm2='Male:'
C21001Fm3='18 to 64 years:'
C21001Fm4='Veteran'
C21001Fm5='Nonveteran'
C21001Fm6='65 years and over:'
C21001Fm7='Veteran'
C21001Fm8='Nonveteran'
C21001Fm9='Female:'
C21001Fm10='18 to 64 years:'
C21001Fm11='Veteran'
C21001Fm12='Nonveteran'
C21001Fm13='65 years and over:'
C21001Fm14='Veteran'
C21001Fm15='Nonveteran'
/*SEX BY AGE BY VETERAN STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER (TWO OR MORE RACES) */
/*Universe: Two or more races civilian population 18 years and over */
 
C21001Gm1='Total:'
C21001Gm2='Male:'
C21001Gm3='18 to 64 years:'
C21001Gm4='Veteran'
C21001Gm5='Nonveteran'
C21001Gm6='65 years and over:'
C21001Gm7='Veteran'
C21001Gm8='Nonveteran'
C21001Gm9='Female:'
C21001Gm10='18 to 64 years:'
C21001Gm11='Veteran'
C21001Gm12='Nonveteran'
C21001Gm13='65 years and over:'
C21001Gm14='Veteran'
C21001Gm15='Nonveteran'
/*SEX BY AGE BY VETERAN STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe: White alone, not Hispanic or Latino civilian population 18 years and over */
 
C21001Hm1='Total:'
C21001Hm2='Male:'
C21001Hm3='18 to 64 years:'
C21001Hm4='Veteran'
C21001Hm5='Nonveteran'
C21001Hm6='65 years and over:'
C21001Hm7='Veteran'
C21001Hm8='Nonveteran'
C21001Hm9='Female:'
C21001Hm10='18 to 64 years:'
C21001Hm11='Veteran'
C21001Hm12='Nonveteran'
C21001Hm13='65 years and over:'
C21001Hm14='Veteran'
C21001Hm15='Nonveteran'
/*SEX BY AGE BY VETERAN STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER (HISPANIC OR LATINO) */
/*Universe: Hispanic or Latino civilian population 18 years and over */
 
C21001Im1='Total:'
C21001Im2='Male:'
C21001Im3='18 to 64 years:'
C21001Im4='Veteran'
C21001Im5='Nonveteran'
C21001Im6='65 years and over:'
C21001Im7='Veteran'
C21001Im8='Nonveteran'
C21001Im9='Female:'
C21001Im10='18 to 64 years:'
C21001Im11='Veteran'
C21001Im12='Nonveteran'
C21001Im13='65 years and over:'
C21001Im14='Veteran'
C21001Im15='Nonveteran'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B21001m1
B21001m2
B21001m3
B21001m4
B21001m5
B21001m6
B21001m7
B21001m8
B21001m9
B21001m10
B21001m11
B21001m12
B21001m13
B21001m14
B21001m15
B21001m16
B21001m17
B21001m18
B21001m19
B21001m20
B21001m21
B21001m22
B21001m23
B21001m24
B21001m25
B21001m26
B21001m27
B21001m28
B21001m29
B21001m30
B21001m31
B21001m32
B21001m33
B21001m34
B21001m35
B21001m36
B21001m37
B21001m38
B21001m39
 
B21002m1
B21002m2
B21002m3
B21002m4
B21002m5
B21002m6
B21002m7
B21002m8
B21002m9
B21002m10
B21002m11
B21002m12
B21002m13
B21002m14
B21002m15
B21002m16
 
B21003m1
B21003m2
B21003m3
B21003m4
B21003m5
B21003m6
B21003m7
B21003m8
B21003m9
B21003m10
B21003m11
 
B21004m1
B21004m2
B21004m3
B21004m4
B21004m5
B21004m6
B21004m7
 
B21005m1
B21005m2
B21005m3
B21005m4
B21005m5
B21005m6
B21005m7
B21005m8
B21005m9
B21005m10
B21005m11
B21005m12
B21005m13
B21005m14
B21005m15
B21005m16
B21005m17
B21005m18
B21005m19
B21005m20
B21005m21
B21005m22
B21005m23
B21005m24
B21005m25
B21005m26
B21005m27
B21005m28
B21005m29
B21005m30
B21005m31
B21005m32
B21005m33
B21005m34
 
C21001Am1
C21001Am2
C21001Am3
C21001Am4
C21001Am5
C21001Am6
C21001Am7
C21001Am8
C21001Am9
C21001Am10
C21001Am11
C21001Am12
C21001Am13
C21001Am14
C21001Am15
 
C21001Bm1
C21001Bm2
C21001Bm3
C21001Bm4
C21001Bm5
C21001Bm6
C21001Bm7
C21001Bm8
C21001Bm9
C21001Bm10
C21001Bm11
C21001Bm12
C21001Bm13
C21001Bm14
C21001Bm15
 
C21001Cm1
C21001Cm2
C21001Cm3
C21001Cm4
C21001Cm5
C21001Cm6
C21001Cm7
C21001Cm8
C21001Cm9
C21001Cm10
C21001Cm11
C21001Cm12
C21001Cm13
C21001Cm14
C21001Cm15
 
C21001Dm1
C21001Dm2
C21001Dm3
C21001Dm4
C21001Dm5
C21001Dm6
C21001Dm7
C21001Dm8
C21001Dm9
C21001Dm10
C21001Dm11
C21001Dm12
C21001Dm13
C21001Dm14
C21001Dm15
 
C21001Em1
C21001Em2
C21001Em3
C21001Em4
C21001Em5
C21001Em6
C21001Em7
C21001Em8
C21001Em9
C21001Em10
C21001Em11
C21001Em12
C21001Em13
C21001Em14
C21001Em15
 
C21001Fm1
C21001Fm2
C21001Fm3
C21001Fm4
C21001Fm5
C21001Fm6
C21001Fm7
C21001Fm8
C21001Fm9
C21001Fm10
C21001Fm11
C21001Fm12
C21001Fm13
C21001Fm14
C21001Fm15
 
C21001Gm1
C21001Gm2
C21001Gm3
C21001Gm4
C21001Gm5
C21001Gm6
C21001Gm7
C21001Gm8
C21001Gm9
C21001Gm10
C21001Gm11
C21001Gm12
C21001Gm13
C21001Gm14
C21001Gm15
 
C21001Hm1
C21001Hm2
C21001Hm3
C21001Hm4
C21001Hm5
C21001Hm6
C21001Hm7
C21001Hm8
C21001Hm9
C21001Hm10
C21001Hm11
C21001Hm12
C21001Hm13
C21001Hm14
C21001Hm15
 
C21001Im1
C21001Im2
C21001Im3
C21001Im4
C21001Im5
C21001Im6
C21001Im7
C21001Im8
C21001Im9
C21001Im10
C21001Im11
C21001Im12
C21001Im13
C21001Im14
C21001Im15
;
RUN;
TITLE2;
