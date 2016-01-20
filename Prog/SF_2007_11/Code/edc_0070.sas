TITLE2 "e20115dc0070000";
DATA work.SFe0070dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0070000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*SEX BY AGE BY VETERAN STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER */
/*Universe:  Civilian population 18 years and over */
 
B21001e1='Total:'
B21001e2='Veteran'
B21001e3='Nonveteran'
B21001e4='Male:'
B21001e5='Veteran'
B21001e6='Nonveteran'
B21001e7='18 to 34 years:'
B21001e8='Veteran'
B21001e9='Nonveteran'
B21001e10='35 to 54 years:'
B21001e11='Veteran'
B21001e12='Nonveteran'
B21001e13='55 to 64 years:'
B21001e14='Veteran'
B21001e15='Nonveteran'
B21001e16='65 to 74 years:'
B21001e17='Veteran'
B21001e18='Nonveteran'
B21001e19='75 years and over:'
B21001e20='Veteran'
B21001e21='Nonveteran'
B21001e22='Female:'
B21001e23='Veteran'
B21001e24='Nonveteran'
B21001e25='18 to 34 years:'
B21001e26='Veteran'
B21001e27='Nonveteran'
B21001e28='35 to 54 years:'
B21001e29='Veteran'
B21001e30='Nonveteran'
B21001e31='55 to 64 years:'
B21001e32='Veteran'
B21001e33='Nonveteran'
B21001e34='65 to 74 years:'
B21001e35='Veteran'
B21001e36='Nonveteran'
B21001e37='75 years and over:'
B21001e38='Veteran'
B21001e39='Nonveteran'
 
/*PERIOD OF MILITARY SERVICE FOR CIVILIAN VETERANS 18 YEARS AND OVER */
/*Universe:  Civilian veterans 18 years and over */
 
B21002e1='Total:'
B21002e2='Gulf War (9/2001 or later), no Gulf War (8/1990 to 8/2001), no Vietnam Era'
B21002e3='Gulf War (9/2001 or later) and Gulf War (8/1990 to 8/2001), no Vietnam Era'
B21002e4='Gulf War (9/2001 or later), and Gulf War (8/1990 to 8/2001), and Vietnam Era'
B21002e5='Gulf War (8/1990 to 8/2001), no Vietnam Era'
B21002e6='Gulf War (8/1990 to 8/2001) and Vietnam Era'
B21002e7='Vietnam Era, no Korean War, no World War II'
B21002e8='Vietnam Era and Korean War, no World War II'
B21002e9='Vietnam Era and Korean War and World War II'
B21002e10='Korean War, no Vietnam Era, no World War II'
B21002e11='Korean War and World War II, no Vietnam Era'
B21002e12='World War II, no Korean War, no Vietnam Era'
B21002e13='Between Gulf War and Vietnam Era only'
B21002e14='Between Vietnam Era and Korean War only'
B21002e15='Between Korean War and World War II only'
B21002e16='Pre-World War II only'
 
/*VETERAN STATUS BY EDUCATIONAL ATTAINMENT FOR THE CIVILIAN POPULATION 25 YEARS AND OVER */
/*Universe:  Civilian population 25 years and over */
 
B21003e1='Total:'
B21003e2='Veteran:'
B21003e3='Less than high school graduate'
B21003e4='High school graduate (includes equivalency)'
B21003e5='Some college or associate''s degree'
B21003e6='Bachelor''s degree or higher'
B21003e7='Nonveteran:'
B21003e8='Less than high school graduate'
B21003e9='High school graduate (includes equivalency)'
B21003e10='Some college or associate''s degree'
B21003e11='Bachelor''s degree or higher'
 
/*MEDIAN INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY VETERAN STATUS BY SEX FOR THE CIVILIAN POPULATION 18 YEARS AND OVER WITH INCOME */
/*Universe:  Civilian population 18 years and over with income in the past 12 months */
/*Median income in the past 12 months (in 2011 inflation-adjusted dollars)-- */
 
B21004e1='Total:'
B21004e2='Veteran:'
B21004e3='Male'
B21004e4='Female'
B21004e5='Nonveteran:'
B21004e6='Male'
B21004e7='Female'
 
/*AGE BY VETERAN STATUS BY EMPLOYMENT STATUS FOR THE CIVILIAN POPULATION 18 TO 64 YEARS */
/*Universe:  Civilian population 18 to 64 years */
 
B21005e1='Total:'
B21005e2='18 to 34 years:'
B21005e3='Veteran:'
B21005e4='In labor force:'
B21005e5='Employed'
B21005e6='Unemployed'
B21005e7='Not in labor force'
B21005e8='Nonveteran:'
B21005e9='In labor force:'
B21005e10='Employed'
B21005e11='Unemployed'
B21005e12='Not in labor force'
B21005e13='35 to 54 years:'
B21005e14='Veteran:'
B21005e15='In labor force:'
B21005e16='Employed'
B21005e17='Unemployed'
B21005e18='Not in labor force'
B21005e19='Nonveteran:'
B21005e20='In labor force:'
B21005e21='Employed'
B21005e22='Unemployed'
B21005e23='Not in labor force'
B21005e24='55 to 64 years:'
B21005e25='Veteran:'
B21005e26='In labor force:'
B21005e27='Employed'
B21005e28='Unemployed'
B21005e29='Not in labor force'
B21005e30='Nonveteran:'
B21005e31='In labor force:'
B21005e32='Employed'
B21005e33='Unemployed'
B21005e34='Not in labor force'
 
/*SEX BY AGE BY VETERAN STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER (WHITE ALONE) */
/*Universe: White alone civilian population 18 years and over */
 
C21001Ae1='Total:'
C21001Ae2='Male:'
C21001Ae3='18 to 64 years:'
C21001Ae4='Veteran'
C21001Ae5='Nonveteran'
C21001Ae6='65 years and over:'
C21001Ae7='Veteran'
C21001Ae8='Nonveteran'
C21001Ae9='Female:'
C21001Ae10='18 to 64 years:'
C21001Ae11='Veteran'
C21001Ae12='Nonveteran'
C21001Ae13='65 years and over:'
C21001Ae14='Veteran'
C21001Ae15='Nonveteran'
 
/*SEX BY AGE BY VETERAN STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe: Black or African American alone civilian population 18 years and over */
 
C21001Be1='Total:'
C21001Be2='Male:'
C21001Be3='18 to 64 years:'
C21001Be4='Veteran'
C21001Be5='Nonveteran'
C21001Be6='65 years and over:'
C21001Be7='Veteran'
C21001Be8='Nonveteran'
C21001Be9='Female:'
C21001Be10='18 to 64 years:'
C21001Be11='Veteran'
C21001Be12='Nonveteran'
C21001Be13='65 years and over:'
C21001Be14='Veteran'
C21001Be15='Nonveteran'
 
/*SEX BY AGE BY VETERAN STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe: American Indian and Alaska Native alone civilian population 18 years and over */
 
C21001Ce1='Total:'
C21001Ce2='Male:'
C21001Ce3='18 to 64 years:'
C21001Ce4='Veteran'
C21001Ce5='Nonveteran'
C21001Ce6='65 years and over:'
C21001Ce7='Veteran'
C21001Ce8='Nonveteran'
C21001Ce9='Female:'
C21001Ce10='18 to 64 years:'
C21001Ce11='Veteran'
C21001Ce12='Nonveteran'
C21001Ce13='65 years and over:'
C21001Ce14='Veteran'
C21001Ce15='Nonveteran'
 
/*SEX BY AGE BY VETERAN STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER (ASIAN ALONE) */
/*Universe: Asian alone civilian population 18 years and over */
 
C21001De1='Total:'
C21001De2='Male:'
C21001De3='18 to 64 years:'
C21001De4='Veteran'
C21001De5='Nonveteran'
C21001De6='65 years and over:'
C21001De7='Veteran'
C21001De8='Nonveteran'
C21001De9='Female:'
C21001De10='18 to 64 years:'
C21001De11='Veteran'
C21001De12='Nonveteran'
C21001De13='65 years and over:'
C21001De14='Veteran'
C21001De15='Nonveteran'
 
/*SEX BY AGE BY VETERAN STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe: Native Hawaiian and Other Pacific Islander alone civilian population 18 years and over */
 
C21001Ee1='Total:'
C21001Ee2='Male:'
C21001Ee3='18 to 64 years:'
C21001Ee4='Veteran'
C21001Ee5='Nonveteran'
C21001Ee6='65 years and over:'
C21001Ee7='Veteran'
C21001Ee8='Nonveteran'
C21001Ee9='Female:'
C21001Ee10='18 to 64 years:'
C21001Ee11='Veteran'
C21001Ee12='Nonveteran'
C21001Ee13='65 years and over:'
C21001Ee14='Veteran'
C21001Ee15='Nonveteran'
 
/*SEX BY AGE BY VETERAN STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER (SOME OTHER RACE ALONE) */
/*Universe: Some other race alone civilian population 18 years and over */
 
C21001Fe1='Total:'
C21001Fe2='Male:'
C21001Fe3='18 to 64 years:'
C21001Fe4='Veteran'
C21001Fe5='Nonveteran'
C21001Fe6='65 years and over:'
C21001Fe7='Veteran'
C21001Fe8='Nonveteran'
C21001Fe9='Female:'
C21001Fe10='18 to 64 years:'
C21001Fe11='Veteran'
C21001Fe12='Nonveteran'
C21001Fe13='65 years and over:'
C21001Fe14='Veteran'
C21001Fe15='Nonveteran'
 
/*SEX BY AGE BY VETERAN STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER (TWO OR MORE RACES) */
/*Universe: Two or more races civilian population 18 years and over */
 
C21001Ge1='Total:'
C21001Ge2='Male:'
C21001Ge3='18 to 64 years:'
C21001Ge4='Veteran'
C21001Ge5='Nonveteran'
C21001Ge6='65 years and over:'
C21001Ge7='Veteran'
C21001Ge8='Nonveteran'
C21001Ge9='Female:'
C21001Ge10='18 to 64 years:'
C21001Ge11='Veteran'
C21001Ge12='Nonveteran'
C21001Ge13='65 years and over:'
C21001Ge14='Veteran'
C21001Ge15='Nonveteran'
 
/*SEX BY AGE BY VETERAN STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe: White alone, not Hispanic or Latino civilian population 18 years and over */
 
C21001He1='Total:'
C21001He2='Male:'
C21001He3='18 to 64 years:'
C21001He4='Veteran'
C21001He5='Nonveteran'
C21001He6='65 years and over:'
C21001He7='Veteran'
C21001He8='Nonveteran'
C21001He9='Female:'
C21001He10='18 to 64 years:'
C21001He11='Veteran'
C21001He12='Nonveteran'
C21001He13='65 years and over:'
C21001He14='Veteran'
C21001He15='Nonveteran'
 
/*SEX BY AGE BY VETERAN STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER (HISPANIC OR LATINO) */
/*Universe: Hispanic or Latino civilian population 18 years and over */
 
C21001Ie1='Total:'
C21001Ie2='Male:'
C21001Ie3='18 to 64 years:'
C21001Ie4='Veteran'
C21001Ie5='Nonveteran'
C21001Ie6='65 years and over:'
C21001Ie7='Veteran'
C21001Ie8='Nonveteran'
C21001Ie9='Female:'
C21001Ie10='18 to 64 years:'
C21001Ie11='Veteran'
C21001Ie12='Nonveteran'
C21001Ie13='65 years and over:'
C21001Ie14='Veteran'
C21001Ie15='Nonveteran'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B21001e1
B21001e2
B21001e3
B21001e4
B21001e5
B21001e6
B21001e7
B21001e8
B21001e9
B21001e10
B21001e11
B21001e12
B21001e13
B21001e14
B21001e15
B21001e16
B21001e17
B21001e18
B21001e19
B21001e20
B21001e21
B21001e22
B21001e23
B21001e24
B21001e25
B21001e26
B21001e27
B21001e28
B21001e29
B21001e30
B21001e31
B21001e32
B21001e33
B21001e34
B21001e35
B21001e36
B21001e37
B21001e38
B21001e39
 
B21002e1
B21002e2
B21002e3
B21002e4
B21002e5
B21002e6
B21002e7
B21002e8
B21002e9
B21002e10
B21002e11
B21002e12
B21002e13
B21002e14
B21002e15
B21002e16
 
B21003e1
B21003e2
B21003e3
B21003e4
B21003e5
B21003e6
B21003e7
B21003e8
B21003e9
B21003e10
B21003e11
 
B21004e1
B21004e2
B21004e3
B21004e4
B21004e5
B21004e6
B21004e7
 
B21005e1
B21005e2
B21005e3
B21005e4
B21005e5
B21005e6
B21005e7
B21005e8
B21005e9
B21005e10
B21005e11
B21005e12
B21005e13
B21005e14
B21005e15
B21005e16
B21005e17
B21005e18
B21005e19
B21005e20
B21005e21
B21005e22
B21005e23
B21005e24
B21005e25
B21005e26
B21005e27
B21005e28
B21005e29
B21005e30
B21005e31
B21005e32
B21005e33
B21005e34
 
C21001Ae1
C21001Ae2
C21001Ae3
C21001Ae4
C21001Ae5
C21001Ae6
C21001Ae7
C21001Ae8
C21001Ae9
C21001Ae10
C21001Ae11
C21001Ae12
C21001Ae13
C21001Ae14
C21001Ae15
 
C21001Be1
C21001Be2
C21001Be3
C21001Be4
C21001Be5
C21001Be6
C21001Be7
C21001Be8
C21001Be9
C21001Be10
C21001Be11
C21001Be12
C21001Be13
C21001Be14
C21001Be15
 
C21001Ce1
C21001Ce2
C21001Ce3
C21001Ce4
C21001Ce5
C21001Ce6
C21001Ce7
C21001Ce8
C21001Ce9
C21001Ce10
C21001Ce11
C21001Ce12
C21001Ce13
C21001Ce14
C21001Ce15
 
C21001De1
C21001De2
C21001De3
C21001De4
C21001De5
C21001De6
C21001De7
C21001De8
C21001De9
C21001De10
C21001De11
C21001De12
C21001De13
C21001De14
C21001De15
 
C21001Ee1
C21001Ee2
C21001Ee3
C21001Ee4
C21001Ee5
C21001Ee6
C21001Ee7
C21001Ee8
C21001Ee9
C21001Ee10
C21001Ee11
C21001Ee12
C21001Ee13
C21001Ee14
C21001Ee15
 
C21001Fe1
C21001Fe2
C21001Fe3
C21001Fe4
C21001Fe5
C21001Fe6
C21001Fe7
C21001Fe8
C21001Fe9
C21001Fe10
C21001Fe11
C21001Fe12
C21001Fe13
C21001Fe14
C21001Fe15
 
C21001Ge1
C21001Ge2
C21001Ge3
C21001Ge4
C21001Ge5
C21001Ge6
C21001Ge7
C21001Ge8
C21001Ge9
C21001Ge10
C21001Ge11
C21001Ge12
C21001Ge13
C21001Ge14
C21001Ge15
 
C21001He1
C21001He2
C21001He3
C21001He4
C21001He5
C21001He6
C21001He7
C21001He8
C21001He9
C21001He10
C21001He11
C21001He12
C21001He13
C21001He14
C21001He15
 
C21001Ie1
C21001Ie2
C21001Ie3
C21001Ie4
C21001Ie5
C21001Ie6
C21001Ie7
C21001Ie8
C21001Ie9
C21001Ie10
C21001Ie11
C21001Ie12
C21001Ie13
C21001Ie14
C21001Ie15
;
RUN;
TITLE2;
