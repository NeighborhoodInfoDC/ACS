TITLE2 "e20125dc0020000";
DATA work.SFe0020dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0020000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY AGE FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Population 1 year and over in the United States */
 
B07401e1='Total living in area 1 year ago:'
B07401e2='1 to 4 years'
B07401e3='5 to 17 years'
B07401e4='18 and 19 years'
B07401e5='20 to 24 years'
B07401e6='25 to 29 years'
B07401e7='30 to 34 years'
B07401e8='35 to 39 years'
B07401e9='40 to 44 years'
B07401e10='45 to 49 years'
B07401e11='50 to 54 years'
B07401e12='55 to 59 years'
B07401e13='60 to 64 years'
B07401e14='65 to 69 years'
B07401e15='70 to 74 years'
B07401e16='75 years and over'
B07401e17='Same house:'
B07401e18='1 to 4 years'
B07401e19='5 to 17 years'
B07401e20='18 and 19 years'
B07401e21='20 to 24 years'
B07401e22='25 to 29 years'
B07401e23='30 to 34 years'
B07401e24='35 to 39 years'
B07401e25='40 to 44 years'
B07401e26='45 to 49 years'
B07401e27='50 to 54 years'
B07401e28='55 to 59 years'
B07401e29='60 to 64 years'
B07401e30='65 to 69 years'
B07401e31='70 to 74 years'
B07401e32='75 years and over'
B07401e33='Moved within same county:'
B07401e34='1 to 4 years'
B07401e35='5 to 17 years'
B07401e36='18 and 19 years'
B07401e37='20 to 24 years'
B07401e38='25 to 29 years'
B07401e39='30 to 34 years'
B07401e40='35 to 39 years'
B07401e41='40 to 44 years'
B07401e42='45 to 49 years'
B07401e43='50 to 54 years'
B07401e44='55 to 59 years'
B07401e45='60 to 64 years'
B07401e46='65 to 69 years'
B07401e47='70 to 74 years'
B07401e48='75 years and over'
B07401e49='Moved to different county within same state:'
B07401e50='1 to 4 years'
B07401e51='5 to 17 years'
B07401e52='18 and 19 years'
B07401e53='20 to 24 years'
B07401e54='25 to 29 years'
B07401e55='30 to 34 years'
B07401e56='35 to 39 years'
B07401e57='40 to 44 years'
B07401e58='45 to 49 years'
B07401e59='50 to 54 years'
B07401e60='55 to 59 years'
B07401e61='60 to 64 years'
B07401e62='65 to 69 years'
B07401e63='70 to 74 years'
B07401e64='75 years and over'
B07401e65='Moved to different state:'
B07401e66='1 to 4 years'
B07401e67='5 to 17 years'
B07401e68='18 and 19 years'
B07401e69='20 to 24 years'
B07401e70='25 to 29 years'
B07401e71='30 to 34 years'
B07401e72='35 to 39 years'
B07401e73='40 to 44 years'
B07401e74='45 to 49 years'
B07401e75='50 to 54 years'
B07401e76='55 to 59 years'
B07401e77='60 to 64 years'
B07401e78='65 to 69 years'
B07401e79='70 to 74 years'
B07401e80='75 years and over'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY AGE FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Population 1 year and over */
 
B07401PRe1='Total living in area 1 year ago:'
B07401PRe2='1 to 4 years'
B07401PRe3='5 to 17 years'
B07401PRe4='18 and 19 years'
B07401PRe5='20 to 24 years'
B07401PRe6='25 to 29 years'
B07401PRe7='30 to 34 years'
B07401PRe8='35 to 39 years'
B07401PRe9='40 to 44 years'
B07401PRe10='45 to 49 years'
B07401PRe11='50 to 54 years'
B07401PRe12='55 to 59 years'
B07401PRe13='60 to 64 years'
B07401PRe14='65 to 69 years'
B07401PRe15='70 to 74 years'
B07401PRe16='75 years and over'
B07401PRe17='Same house:'
B07401PRe18='1 to 4 years'
B07401PRe19='5 to 17 years'
B07401PRe20='18 and 19 years'
B07401PRe21='20 to 24 years'
B07401PRe22='25 to 29 years'
B07401PRe23='30 to 34 years'
B07401PRe24='35 to 39 years'
B07401PRe25='40 to 44 years'
B07401PRe26='45 to 49 years'
B07401PRe27='50 to 54 years'
B07401PRe28='55 to 59 years'
B07401PRe29='60 to 64 years'
B07401PRe30='65 to 69 years'
B07401PRe31='70 to 74 years'
B07401PRe32='75 years and over'
B07401PRe33='Moved within same municipio:'
B07401PRe34='1 to 4 years'
B07401PRe35='5 to 17 years'
B07401PRe36='18 and 19 years'
B07401PRe37='20 to 24 years'
B07401PRe38='25 to 29 years'
B07401PRe39='30 to 34 years'
B07401PRe40='35 to 39 years'
B07401PRe41='40 to 44 years'
B07401PRe42='45 to 49 years'
B07401PRe43='50 to 54 years'
B07401PRe44='55 to 59 years'
B07401PRe45='60 to 64 years'
B07401PRe46='65 to 69 years'
B07401PRe47='70 to 74 years'
B07401PRe48='75 years and over'
B07401PRe49='Moved to different municipio:'
B07401PRe50='1 to 4 years'
B07401PRe51='5 to 17 years'
B07401PRe52='18 and 19 years'
B07401PRe53='20 to 24 years'
B07401PRe54='25 to 29 years'
B07401PRe55='30 to 34 years'
B07401PRe56='35 to 39 years'
B07401PRe57='40 to 44 years'
B07401PRe58='45 to 49 years'
B07401PRe59='50 to 54 years'
B07401PRe60='55 to 59 years'
B07401PRe61='60 to 64 years'
B07401PRe62='65 to 69 years'
B07401PRe63='70 to 74 years'
B07401PRe64='75 years and over'
B07401PRe65='Moved to the United States:'
B07401PRe66='1 to 4 years'
B07401PRe67='5 to 17 years'
B07401PRe68='18 and 19 years'
B07401PRe69='20 to 24 years'
B07401PRe70='25 to 29 years'
B07401PRe71='30 to 34 years'
B07401PRe72='35 to 39 years'
B07401PRe73='40 to 44 years'
B07401PRe74='45 to 49 years'
B07401PRe75='50 to 54 years'
B07401PRe76='55 to 59 years'
B07401PRe77='60 to 64 years'
B07401PRe78='65 to 69 years'
B07401PRe79='70 to 74 years'
B07401PRe80='75 years and over'
/*MEDIAN AGE BY GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Population 1 year and over in the United States */
/*Median age -- */
 
B07402e1='Total living in area 1 year ago:'
B07402e2='Same house'
B07402e3='Moved within same county'
B07402e4='Moved to different county within same state'
B07402e5='Moved to different state'
/*MEDIAN AGE BY GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Population 1 year and over */
/*Median age -- */
 
B07402PRe1='Total living in area 1 year ago:'
B07402PRe2='Same house'
B07402PRe3='Moved within same municipio'
B07402PRe4='Moved to different municipio'
B07402PRe5='Moved to the United States'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY SEX FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Population 1 year and over in the United States */
 
B07403e1='Total living in area 1 year ago:'
B07403e2='Male'
B07403e3='Female'
B07403e4='Same house:'
B07403e5='Male'
B07403e6='Female'
B07403e7='Moved within same county:'
B07403e8='Male'
B07403e9='Female'
B07403e10='Moved to different county within same state:'
B07403e11='Male'
B07403e12='Female'
B07403e13='Moved to different state:'
B07403e14='Male'
B07403e15='Female'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY SEX FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Population 1 year and over */
 
B07403PRe1='Total living in area 1 year ago:'
B07403PRe2='Male'
B07403PRe3='Female'
B07403PRe4='Same house:'
B07403PRe5='Male'
B07403PRe6='Female'
B07403PRe7='Moved within same municipio:'
B07403PRe8='Male'
B07403PRe9='Female'
B07403PRe10='Moved to different municipio:'
B07403PRe11='Male'
B07403PRe12='Female'
B07403PRe13='Moved to the United States:'
B07403PRe14='Male'
B07403PRe15='Female'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (WHITE ALONE) FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  White alone population 1 year and over in the United States */
 
B07404Ae1='Total living in area 1 year ago:'
B07404Ae2='Same house'
B07404Ae3='Moved within same county'
B07404Ae4='Moved to different county within same state'
B07404Ae5='Moved to different state'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (BLACK OR AFRICAN AMERICAN ALONE) FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Black or African American alone population 1 year and over in the United States */
 
B07404Be1='Total living in area 1 year ago:'
B07404Be2='Same house'
B07404Be3='Moved within same county'
B07404Be4='Moved to different county within same state'
B07404Be5='Moved to different state'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (AMERICAN INDIAN AND ALASKA NATIVE ALONE) FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  American Indian and Alaskan Native alone population 1 year and over in the United States */
 
B07404Ce1='Total living in area 1 year ago:'
B07404Ce2='Same house'
B07404Ce3='Moved within same county'
B07404Ce4='Moved to different county within same state'
B07404Ce5='Moved to different state'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (ASIAN ALONE) FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Asian alone population 1 year and over in the United States */
 
B07404De1='Total living in area 1 year ago:'
B07404De2='Same house'
B07404De3='Moved within same county'
B07404De4='Moved to different county within same state'
B07404De5='Moved to different state'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 1 year and over in the United States */
 
B07404Ee1='Total living in area 1 year ago:'
B07404Ee2='Same house'
B07404Ee3='Moved within same county'
B07404Ee4='Moved to different county within same state'
B07404Ee5='Moved to different state'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (SOME OTHER RACE ALONE) FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Some other race alone population 1 year and over in the United States */
 
B07404Fe1='Total living in area 1 year ago:'
B07404Fe2='Same house'
B07404Fe3='Moved within same county'
B07404Fe4='Moved to different county within same state'
B07404Fe5='Moved to different state'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (TWO OR MORE RACES) FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Two or more races population 1 year and over in the United States */
 
B07404Ge1='Total living in area 1 year ago:'
B07404Ge2='Same house'
B07404Ge3='Moved within same county'
B07404Ge4='Moved to different county within same state'
B07404Ge5='Moved to different state'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (WHITE ALONE, NOT HISPANIC OR LATINO) FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  White alone, not Hispanic or Latino population 1 year and over in the United States */
 
B07404He1='Total living in area 1 year ago:'
B07404He2='Same house'
B07404He3='Moved within same county'
B07404He4='Moved to different county within same state'
B07404He5='Moved to different state'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (HISPANIC OR LATINO) FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Hispanic or Latino population 1 year and over in the United States */
 
B07404Ie1='Total living in area 1 year ago:'
B07404Ie2='Same house'
B07404Ie3='Moved within same county'
B07404Ie4='Moved to different county within same state'
B07404Ie5='Moved to different state'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B07401e1
B07401e2
B07401e3
B07401e4
B07401e5
B07401e6
B07401e7
B07401e8
B07401e9
B07401e10
B07401e11
B07401e12
B07401e13
B07401e14
B07401e15
B07401e16
B07401e17
B07401e18
B07401e19
B07401e20
B07401e21
B07401e22
B07401e23
B07401e24
B07401e25
B07401e26
B07401e27
B07401e28
B07401e29
B07401e30
B07401e31
B07401e32
B07401e33
B07401e34
B07401e35
B07401e36
B07401e37
B07401e38
B07401e39
B07401e40
B07401e41
B07401e42
B07401e43
B07401e44
B07401e45
B07401e46
B07401e47
B07401e48
B07401e49
B07401e50
B07401e51
B07401e52
B07401e53
B07401e54
B07401e55
B07401e56
B07401e57
B07401e58
B07401e59
B07401e60
B07401e61
B07401e62
B07401e63
B07401e64
B07401e65
B07401e66
B07401e67
B07401e68
B07401e69
B07401e70
B07401e71
B07401e72
B07401e73
B07401e74
B07401e75
B07401e76
B07401e77
B07401e78
B07401e79
B07401e80
 
B07401PRe1
B07401PRe2
B07401PRe3
B07401PRe4
B07401PRe5
B07401PRe6
B07401PRe7
B07401PRe8
B07401PRe9
B07401PRe10
B07401PRe11
B07401PRe12
B07401PRe13
B07401PRe14
B07401PRe15
B07401PRe16
B07401PRe17
B07401PRe18
B07401PRe19
B07401PRe20
B07401PRe21
B07401PRe22
B07401PRe23
B07401PRe24
B07401PRe25
B07401PRe26
B07401PRe27
B07401PRe28
B07401PRe29
B07401PRe30
B07401PRe31
B07401PRe32
B07401PRe33
B07401PRe34
B07401PRe35
B07401PRe36
B07401PRe37
B07401PRe38
B07401PRe39
B07401PRe40
B07401PRe41
B07401PRe42
B07401PRe43
B07401PRe44
B07401PRe45
B07401PRe46
B07401PRe47
B07401PRe48
B07401PRe49
B07401PRe50
B07401PRe51
B07401PRe52
B07401PRe53
B07401PRe54
B07401PRe55
B07401PRe56
B07401PRe57
B07401PRe58
B07401PRe59
B07401PRe60
B07401PRe61
B07401PRe62
B07401PRe63
B07401PRe64
B07401PRe65
B07401PRe66
B07401PRe67
B07401PRe68
B07401PRe69
B07401PRe70
B07401PRe71
B07401PRe72
B07401PRe73
B07401PRe74
B07401PRe75
B07401PRe76
B07401PRe77
B07401PRe78
B07401PRe79
B07401PRe80
 
B07402e1
B07402e2
B07402e3
B07402e4
B07402e5
 
B07402PRe1
B07402PRe2
B07402PRe3
B07402PRe4
B07402PRe5
 
B07403e1
B07403e2
B07403e3
B07403e4
B07403e5
B07403e6
B07403e7
B07403e8
B07403e9
B07403e10
B07403e11
B07403e12
B07403e13
B07403e14
B07403e15
 
B07403PRe1
B07403PRe2
B07403PRe3
B07403PRe4
B07403PRe5
B07403PRe6
B07403PRe7
B07403PRe8
B07403PRe9
B07403PRe10
B07403PRe11
B07403PRe12
B07403PRe13
B07403PRe14
B07403PRe15
 
B07404Ae1
B07404Ae2
B07404Ae3
B07404Ae4
B07404Ae5
 
B07404Be1
B07404Be2
B07404Be3
B07404Be4
B07404Be5
 
B07404Ce1
B07404Ce2
B07404Ce3
B07404Ce4
B07404Ce5
 
B07404De1
B07404De2
B07404De3
B07404De4
B07404De5
 
B07404Ee1
B07404Ee2
B07404Ee3
B07404Ee4
B07404Ee5
 
B07404Fe1
B07404Fe2
B07404Fe3
B07404Fe4
B07404Fe5
 
B07404Ge1
B07404Ge2
B07404Ge3
B07404Ge4
B07404Ge5
 
B07404He1
B07404He2
B07404He3
B07404He4
B07404He5
 
B07404Ie1
B07404Ie2
B07404Ie3
B07404Ie4
B07404Ie5
;
RUN;
TITLE2;
