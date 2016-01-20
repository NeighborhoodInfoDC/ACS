TITLE2 "e20125dc0003000";
DATA work.SFe0003dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0003000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SEX BY AGE (TWO OR MORE RACES) */
/*Universe:  People who are Two or More Races */
 
B01001Ge1='Total:'
B01001Ge2='Male:'
B01001Ge3='Under 5 years'
B01001Ge4='5 to 9 years'
B01001Ge5='10 to 14 years'
B01001Ge6='15 to 17 years'
B01001Ge7='18 and 19 years'
B01001Ge8='20 to 24 years'
B01001Ge9='25 to 29 years'
B01001Ge10='30 to 34 years'
B01001Ge11='35 to 44 years'
B01001Ge12='45 to 54 years'
B01001Ge13='55 to 64 years'
B01001Ge14='65 to 74 years'
B01001Ge15='75 to 84 years'
B01001Ge16='85 years and over'
B01001Ge17='Female:'
B01001Ge18='Under 5 years'
B01001Ge19='5 to 9 years'
B01001Ge20='10 to 14 years'
B01001Ge21='15 to 17 years'
B01001Ge22='18 and 19 years'
B01001Ge23='20 to 24 years'
B01001Ge24='25 to 29 years'
B01001Ge25='30 to 34 years'
B01001Ge26='35 to 44 years'
B01001Ge27='45 to 54 years'
B01001Ge28='55 to 64 years'
B01001Ge29='65 to 74 years'
B01001Ge30='75 to 84 years'
B01001Ge31='85 years and over'
/*SEX BY AGE (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population */
 
B01001He1='Total:'
B01001He2='Male:'
B01001He3='Under 5 years'
B01001He4='5 to 9 years'
B01001He5='10 to 14 years'
B01001He6='15 to 17 years'
B01001He7='18 and 19 years'
B01001He8='20 to 24 years'
B01001He9='25 to 29 years'
B01001He10='30 to 34 years'
B01001He11='35 to 44 years'
B01001He12='45 to 54 years'
B01001He13='55 to 64 years'
B01001He14='65 to 74 years'
B01001He15='75 to 84 years'
B01001He16='85 years and over'
B01001He17='Female:'
B01001He18='Under 5 years'
B01001He19='5 to 9 years'
B01001He20='10 to 14 years'
B01001He21='15 to 17 years'
B01001He22='18 and 19 years'
B01001He23='20 to 24 years'
B01001He24='25 to 29 years'
B01001He25='30 to 34 years'
B01001He26='35 to 44 years'
B01001He27='45 to 54 years'
B01001He28='55 to 64 years'
B01001He29='65 to 74 years'
B01001He30='75 to 84 years'
B01001He31='85 years and over'
/*SEX BY AGE (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population */
 
B01001Ie1='Total:'
B01001Ie2='Male:'
B01001Ie3='Under 5 years'
B01001Ie4='5 to 9 years'
B01001Ie5='10 to 14 years'
B01001Ie6='15 to 17 years'
B01001Ie7='18 and 19 years'
B01001Ie8='20 to 24 years'
B01001Ie9='25 to 29 years'
B01001Ie10='30 to 34 years'
B01001Ie11='35 to 44 years'
B01001Ie12='45 to 54 years'
B01001Ie13='55 to 64 years'
B01001Ie14='65 to 74 years'
B01001Ie15='75 to 84 years'
B01001Ie16='85 years and over'
B01001Ie17='Female:'
B01001Ie18='Under 5 years'
B01001Ie19='5 to 9 years'
B01001Ie20='10 to 14 years'
B01001Ie21='15 to 17 years'
B01001Ie22='18 and 19 years'
B01001Ie23='20 to 24 years'
B01001Ie24='25 to 29 years'
B01001Ie25='30 to 34 years'
B01001Ie26='35 to 44 years'
B01001Ie27='45 to 54 years'
B01001Ie28='55 to 64 years'
B01001Ie29='65 to 74 years'
B01001Ie30='75 to 84 years'
B01001Ie31='85 years and over'
/*MEDIAN AGE BY SEX */
/*Universe:  Total population */
/*Median age -- */
 
B01002e1='Total:'
B01002e2='Male'
B01002e3='Female'
/*MEDIAN AGE BY SEX (WHITE ALONE) */
/*Universe:  People who are White alone */
/*Median age -- */
 
B01002Ae1='Total:'
B01002Ae2='Male'
B01002Ae3='Female'
/*MEDIAN AGE BY SEX (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone */
/*Median age -- */
 
B01002Be1='Total:'
B01002Be2='Male'
B01002Be3='Female'
/*MEDIAN AGE BY SEX (AMERICAN INDIAN AND ALASKA NATIVE) */
/*Universe:  People who are American Indian and Alaska Native alone */
/*Median age -- */
 
B01002Ce1='Total:'
B01002Ce2='Male'
B01002Ce3='Female'
/*MEDIAN AGE BY SEX (ASIAN ALONE) */
/*Universe:  People who are Asian alone */
/*Median age -- */
 
B01002De1='Total:'
B01002De2='Male'
B01002De3='Female'
/*MEDIAN AGE BY SEX (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  People who are Native Hawaiian and Other Pacific Islander alone */
/*Median age -- */
 
B01002Ee1='Total:'
B01002Ee2='Male'
B01002Ee3='Female'
/*MEDIAN AGE BY SEX (SOME OTHER RACE ALONE) */
/*Universe:  People who are Some Other Race alone */
/*Median age -- */
 
B01002Fe1='Total:'
B01002Fe2='Male'
B01002Fe3='Female'
/*MEDIAN AGE BY SEX (TWO OR MORE RACES) */
/*Universe:  People who are Two or More Races */
/*Median age -- */
 
B01002Ge1='Total:'
B01002Ge2='Male'
B01002Ge3='Female'
/*MEDIAN AGE BY SEX (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population */
/*Median age -- */
 
B01002He1='Total:'
B01002He2='Male'
B01002He3='Female'
/*MEDIAN AGE BY SEX (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population */
/*Median age -- */
 
B01002Ie1='Total:'
B01002Ie2='Male'
B01002Ie3='Female'
/*TOTAL POPULATION */
/*Universe:  Total population */
 
B01003e1='Total'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B01001Ge1
B01001Ge2
B01001Ge3
B01001Ge4
B01001Ge5
B01001Ge6
B01001Ge7
B01001Ge8
B01001Ge9
B01001Ge10
B01001Ge11
B01001Ge12
B01001Ge13
B01001Ge14
B01001Ge15
B01001Ge16
B01001Ge17
B01001Ge18
B01001Ge19
B01001Ge20
B01001Ge21
B01001Ge22
B01001Ge23
B01001Ge24
B01001Ge25
B01001Ge26
B01001Ge27
B01001Ge28
B01001Ge29
B01001Ge30
B01001Ge31
 
B01001He1
B01001He2
B01001He3
B01001He4
B01001He5
B01001He6
B01001He7
B01001He8
B01001He9
B01001He10
B01001He11
B01001He12
B01001He13
B01001He14
B01001He15
B01001He16
B01001He17
B01001He18
B01001He19
B01001He20
B01001He21
B01001He22
B01001He23
B01001He24
B01001He25
B01001He26
B01001He27
B01001He28
B01001He29
B01001He30
B01001He31
 
B01001Ie1
B01001Ie2
B01001Ie3
B01001Ie4
B01001Ie5
B01001Ie6
B01001Ie7
B01001Ie8
B01001Ie9
B01001Ie10
B01001Ie11
B01001Ie12
B01001Ie13
B01001Ie14
B01001Ie15
B01001Ie16
B01001Ie17
B01001Ie18
B01001Ie19
B01001Ie20
B01001Ie21
B01001Ie22
B01001Ie23
B01001Ie24
B01001Ie25
B01001Ie26
B01001Ie27
B01001Ie28
B01001Ie29
B01001Ie30
B01001Ie31
 
B01002e1
B01002e2
B01002e3
 
B01002Ae1
B01002Ae2
B01002Ae3
 
B01002Be1
B01002Be2
B01002Be3
 
B01002Ce1
B01002Ce2
B01002Ce3
 
B01002De1
B01002De2
B01002De3
 
B01002Ee1
B01002Ee2
B01002Ee3
 
B01002Fe1
B01002Fe2
B01002Fe3
 
B01002Ge1
B01002Ge2
B01002Ge3
 
B01002He1
B01002He2
B01002He3
 
B01002Ie1
B01002Ie2
B01002Ie3
 
B01003e1
;
RUN;
TITLE2;
