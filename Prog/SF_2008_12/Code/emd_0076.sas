TITLE2 "e20125md0076000";
DATA work.SFe0076md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0076000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*PRESENCE OF OWN CHILDREN UNDER 18 YEARS BY AGE OF OWN CHILDREN UNDER 18 YEARS BY EMPLOYMENT STATUS FOR FEMALES 20 TO 64 YEARS */
/*Universe:  Females 20 to 64 years in households */
 
B23003e1='Total:'
B23003e2='With own children under 18 years:'
B23003e3='Under 6 years only:'
B23003e4='In labor force:'
B23003e5='In Armed Forces'
B23003e6='Civilian:'
B23003e7='Employed'
B23003e8='Unemployed'
B23003e9='Not in labor force'
B23003e10='Under 6 years and 6 to 17 years:'
B23003e11='In labor force:'
B23003e12='In Armed Forces'
B23003e13='Civilian:'
B23003e14='Employed'
B23003e15='Unemployed'
B23003e16='Not in labor force'
B23003e17='6 to 17 years only:'
B23003e18='In labor force:'
B23003e19='In Armed Forces'
B23003e20='Civilian:'
B23003e21='Employed'
B23003e22='Unemployed'
B23003e23='Not in labor force'
B23003e24='No own children under 18 years:'
B23003e25='In labor force:'
B23003e26='In Armed Forces'
B23003e27='Civilian:'
B23003e28='Employed'
B23003e29='Unemployed'
B23003e30='Not in labor force'
/*WORK STATUS IN THE PAST 12 MONTHS BY AGE BY EMPLOYMENT STATUS FOR THE CIVILIAN POPULATION 65 YEARS AND OVER */
/*Universe:  Civilian population 65 years and over */
 
B23004e1='Total:'
B23004e2='Worked in the past 12 months:'
B23004e3='65 to 74 years:'
B23004e4='In labor force:'
B23004e5='Employed'
B23004e6='Unemployed'
B23004e7='Not in labor force'
B23004e8='75 years and over:'
B23004e9='In labor force:'
B23004e10='Employed'
B23004e11='Unemployed'
B23004e12='Not in labor force'
B23004e13='Did not work in the past 12 months:'
B23004e14='65 to 74 years:'
B23004e15='Unemployed'
B23004e16='Not in labor force'
B23004e17='75 years and over:'
B23004e18='Unemployed'
B23004e19='Not in labor force'
/*SEX BY AGE BY EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone population 16 years and over */
 
C23002Ce1='Total:'
C23002Ce2='Male:'
C23002Ce3='16 to 64 years:'
C23002Ce4='In labor force:'
C23002Ce5='In Armed Forces'
C23002Ce6='Civilian:'
C23002Ce7='Employed'
C23002Ce8='Unemployed'
C23002Ce9='Not in labor force'
C23002Ce10='65 years and over:'
C23002Ce11='In labor force:'
C23002Ce12='Employed'
C23002Ce13='Unemployed'
C23002Ce14='Not in labor force'
C23002Ce15='Female:'
C23002Ce16='16 to 64 years:'
C23002Ce17='In labor force:'
C23002Ce18='In Armed Forces'
C23002Ce19='Civilian:'
C23002Ce20='Employed'
C23002Ce21='Unemployed'
C23002Ce22='Not in labor force'
C23002Ce23='65 years and over:'
C23002Ce24='In labor force:'
C23002Ce25='Employed'
C23002Ce26='Unemployed'
C23002Ce27='Not in labor force'
/*SEX BY AGE BY EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER (ASIAN ALONE) */
/*Universe:  Asian alone population 16 years and over */
 
C23002De1='Total:'
C23002De2='Male:'
C23002De3='16 to 64 years:'
C23002De4='In labor force:'
C23002De5='In Armed Forces'
C23002De6='Civilian:'
C23002De7='Employed'
C23002De8='Unemployed'
C23002De9='Not in labor force'
C23002De10='65 years and over:'
C23002De11='In labor force:'
C23002De12='Employed'
C23002De13='Unemployed'
C23002De14='Not in labor force'
C23002De15='Female:'
C23002De16='16 to 64 years:'
C23002De17='In labor force:'
C23002De18='In Armed Forces'
C23002De19='Civilian:'
C23002De20='Employed'
C23002De21='Unemployed'
C23002De22='Not in labor force'
C23002De23='65 years and over:'
C23002De24='In labor force:'
C23002De25='Employed'
C23002De26='Unemployed'
C23002De27='Not in labor force'
/*SEX BY AGE BY EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 16 years and over */
 
C23002Ee1='Total:'
C23002Ee2='Male:'
C23002Ee3='16 to 64 years:'
C23002Ee4='In labor force:'
C23002Ee5='In Armed Forces'
C23002Ee6='Civilian:'
C23002Ee7='Employed'
C23002Ee8='Unemployed'
C23002Ee9='Not in labor force'
C23002Ee10='65 years and over:'
C23002Ee11='In labor force:'
C23002Ee12='Employed'
C23002Ee13='Unemployed'
C23002Ee14='Not in labor force'
C23002Ee15='Female:'
C23002Ee16='16 to 64 years:'
C23002Ee17='In labor force:'
C23002Ee18='In Armed Forces'
C23002Ee19='Civilian:'
C23002Ee20='Employed'
C23002Ee21='Unemployed'
C23002Ee22='Not in labor force'
C23002Ee23='65 years and over:'
C23002Ee24='In labor force:'
C23002Ee25='Employed'
C23002Ee26='Unemployed'
C23002Ee27='Not in labor force'
/*SEX BY AGE BY EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone population 16 years and over */
 
C23002Fe1='Total:'
C23002Fe2='Male:'
C23002Fe3='16 to 64 years:'
C23002Fe4='In labor force:'
C23002Fe5='In Armed Forces'
C23002Fe6='Civilian:'
C23002Fe7='Employed'
C23002Fe8='Unemployed'
C23002Fe9='Not in labor force'
C23002Fe10='65 years and over:'
C23002Fe11='In labor force:'
C23002Fe12='Employed'
C23002Fe13='Unemployed'
C23002Fe14='Not in labor force'
C23002Fe15='Female:'
C23002Fe16='16 to 64 years:'
C23002Fe17='In labor force:'
C23002Fe18='In Armed Forces'
C23002Fe19='Civilian:'
C23002Fe20='Employed'
C23002Fe21='Unemployed'
C23002Fe22='Not in labor force'
C23002Fe23='65 years and over:'
C23002Fe24='In labor force:'
C23002Fe25='Employed'
C23002Fe26='Unemployed'
C23002Fe27='Not in labor force'
/*SEX BY AGE BY EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER (TWO OR MORE RACES) */
/*Universe:  Two or more races population 16 years and over */
 
C23002Ge1='Total:'
C23002Ge2='Male:'
C23002Ge3='16 to 64 years:'
C23002Ge4='In labor force:'
C23002Ge5='In Armed Forces'
C23002Ge6='Civilian:'
C23002Ge7='Employed'
C23002Ge8='Unemployed'
C23002Ge9='Not in labor force'
C23002Ge10='65 years and over:'
C23002Ge11='In labor force:'
C23002Ge12='Employed'
C23002Ge13='Unemployed'
C23002Ge14='Not in labor force'
C23002Ge15='Female:'
C23002Ge16='16 to 64 years:'
C23002Ge17='In labor force:'
C23002Ge18='In Armed Forces'
C23002Ge19='Civilian:'
C23002Ge20='Employed'
C23002Ge21='Unemployed'
C23002Ge22='Not in labor force'
C23002Ge23='65 years and over:'
C23002Ge24='In labor force:'
C23002Ge25='Employed'
C23002Ge26='Unemployed'
C23002Ge27='Not in labor force'
/*SEX BY AGE BY EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population 16 years and over */
 
C23002He1='Total:'
C23002He2='Male:'
C23002He3='16 to 64 years:'
C23002He4='In labor force:'
C23002He5='In Armed Forces'
C23002He6='Civilian:'
C23002He7='Employed'
C23002He8='Unemployed'
C23002He9='Not in labor force'
C23002He10='65 years and over:'
C23002He11='In labor force:'
C23002He12='Employed'
C23002He13='Unemployed'
C23002He14='Not in labor force'
C23002He15='Female:'
C23002He16='16 to 64 years:'
C23002He17='In labor force:'
C23002He18='In Armed Forces'
C23002He19='Civilian:'
C23002He20='Employed'
C23002He21='Unemployed'
C23002He22='Not in labor force'
C23002He23='65 years and over:'
C23002He24='In labor force:'
C23002He25='Employed'
C23002He26='Unemployed'
C23002He27='Not in labor force'
/*SEX BY AGE BY EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population 16 years and over */
 
C23002Ie1='Total:'
C23002Ie2='Male:'
C23002Ie3='16 to 64 years:'
C23002Ie4='In labor force:'
C23002Ie5='In Armed Forces'
C23002Ie6='Civilian:'
C23002Ie7='Employed'
C23002Ie8='Unemployed'
C23002Ie9='Not in labor force'
C23002Ie10='65 years and over:'
C23002Ie11='In labor force:'
C23002Ie12='Employed'
C23002Ie13='Unemployed'
C23002Ie14='Not in labor force'
C23002Ie15='Female:'
C23002Ie16='16 to 64 years:'
C23002Ie17='In labor force:'
C23002Ie18='In Armed Forces'
C23002Ie19='Civilian:'
C23002Ie20='Employed'
C23002Ie21='Unemployed'
C23002Ie22='Not in labor force'
C23002Ie23='65 years and over:'
C23002Ie24='In labor force:'
C23002Ie25='Employed'
C23002Ie26='Unemployed'
C23002Ie27='Not in labor force'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B23003e1
B23003e2
B23003e3
B23003e4
B23003e5
B23003e6
B23003e7
B23003e8
B23003e9
B23003e10
B23003e11
B23003e12
B23003e13
B23003e14
B23003e15
B23003e16
B23003e17
B23003e18
B23003e19
B23003e20
B23003e21
B23003e22
B23003e23
B23003e24
B23003e25
B23003e26
B23003e27
B23003e28
B23003e29
B23003e30
 
B23004e1
B23004e2
B23004e3
B23004e4
B23004e5
B23004e6
B23004e7
B23004e8
B23004e9
B23004e10
B23004e11
B23004e12
B23004e13
B23004e14
B23004e15
B23004e16
B23004e17
B23004e18
B23004e19
 
C23002Ce1
C23002Ce2
C23002Ce3
C23002Ce4
C23002Ce5
C23002Ce6
C23002Ce7
C23002Ce8
C23002Ce9
C23002Ce10
C23002Ce11
C23002Ce12
C23002Ce13
C23002Ce14
C23002Ce15
C23002Ce16
C23002Ce17
C23002Ce18
C23002Ce19
C23002Ce20
C23002Ce21
C23002Ce22
C23002Ce23
C23002Ce24
C23002Ce25
C23002Ce26
C23002Ce27
 
C23002De1
C23002De2
C23002De3
C23002De4
C23002De5
C23002De6
C23002De7
C23002De8
C23002De9
C23002De10
C23002De11
C23002De12
C23002De13
C23002De14
C23002De15
C23002De16
C23002De17
C23002De18
C23002De19
C23002De20
C23002De21
C23002De22
C23002De23
C23002De24
C23002De25
C23002De26
C23002De27
 
C23002Ee1
C23002Ee2
C23002Ee3
C23002Ee4
C23002Ee5
C23002Ee6
C23002Ee7
C23002Ee8
C23002Ee9
C23002Ee10
C23002Ee11
C23002Ee12
C23002Ee13
C23002Ee14
C23002Ee15
C23002Ee16
C23002Ee17
C23002Ee18
C23002Ee19
C23002Ee20
C23002Ee21
C23002Ee22
C23002Ee23
C23002Ee24
C23002Ee25
C23002Ee26
C23002Ee27
 
C23002Fe1
C23002Fe2
C23002Fe3
C23002Fe4
C23002Fe5
C23002Fe6
C23002Fe7
C23002Fe8
C23002Fe9
C23002Fe10
C23002Fe11
C23002Fe12
C23002Fe13
C23002Fe14
C23002Fe15
C23002Fe16
C23002Fe17
C23002Fe18
C23002Fe19
C23002Fe20
C23002Fe21
C23002Fe22
C23002Fe23
C23002Fe24
C23002Fe25
C23002Fe26
C23002Fe27
 
C23002Ge1
C23002Ge2
C23002Ge3
C23002Ge4
C23002Ge5
C23002Ge6
C23002Ge7
C23002Ge8
C23002Ge9
C23002Ge10
C23002Ge11
C23002Ge12
C23002Ge13
C23002Ge14
C23002Ge15
C23002Ge16
C23002Ge17
C23002Ge18
C23002Ge19
C23002Ge20
C23002Ge21
C23002Ge22
C23002Ge23
C23002Ge24
C23002Ge25
C23002Ge26
C23002Ge27
 
C23002He1
C23002He2
C23002He3
C23002He4
C23002He5
C23002He6
C23002He7
C23002He8
C23002He9
C23002He10
C23002He11
C23002He12
C23002He13
C23002He14
C23002He15
C23002He16
C23002He17
C23002He18
C23002He19
C23002He20
C23002He21
C23002He22
C23002He23
C23002He24
C23002He25
C23002He26
C23002He27
 
C23002Ie1
C23002Ie2
C23002Ie3
C23002Ie4
C23002Ie5
C23002Ie6
C23002Ie7
C23002Ie8
C23002Ie9
C23002Ie10
C23002Ie11
C23002Ie12
C23002Ie13
C23002Ie14
C23002Ie15
C23002Ie16
C23002Ie17
C23002Ie18
C23002Ie19
C23002Ie20
C23002Ie21
C23002Ie22
C23002Ie23
C23002Ie24
C23002Ie25
C23002Ie26
C23002Ie27
;
RUN;
TITLE2;
