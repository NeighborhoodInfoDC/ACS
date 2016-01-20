TITLE2 "e20115dc0039000";
DATA work.SFe0039dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0039000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*SEX BY MARITAL STATUS FOR THE POPULATION 15 YEARS AND OVER (ASIAN ALONE) */
/*Universe:  Asian alone population 15 years and over */
 
B12002De1='Total:'
B12002De2='Male:'
B12002De3='Never married'
B12002De4='Now married (except separated)'
B12002De5='Separated'
B12002De6='Widowed'
B12002De7='Divorced'
B12002De8='Female:'
B12002De9='Never married'
B12002De10='Now married (except separated)'
B12002De11='Separated'
B12002De12='Widowed'
B12002De13='Divorced'
 
/*SEX BY MARITAL STATUS FOR THE POPULATION 15 YEARS AND OVER (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 15 years and over */
 
B12002Ee1='Total:'
B12002Ee2='Male:'
B12002Ee3='Never married'
B12002Ee4='Now married (except separated)'
B12002Ee5='Separated'
B12002Ee6='Widowed'
B12002Ee7='Divorced'
B12002Ee8='Female:'
B12002Ee9='Never married'
B12002Ee10='Now married (except separated)'
B12002Ee11='Separated'
B12002Ee12='Widowed'
B12002Ee13='Divorced'
 
/*SEX BY MARITAL STATUS FOR THE POPULATION 15 YEARS AND OVER (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone population 15 years and over */
 
B12002Fe1='Total:'
B12002Fe2='Male:'
B12002Fe3='Never married'
B12002Fe4='Now married (except separated)'
B12002Fe5='Separated'
B12002Fe6='Widowed'
B12002Fe7='Divorced'
B12002Fe8='Female:'
B12002Fe9='Never married'
B12002Fe10='Now married (except separated)'
B12002Fe11='Separated'
B12002Fe12='Widowed'
B12002Fe13='Divorced'
 
/*SEX BY MARITAL STATUS FOR THE POPULATION 15 YEARS AND OVER (TWO OR MORE RACES) */
/*Universe:  Two or more races population 15 years and over */
 
B12002Ge1='Total:'
B12002Ge2='Male:'
B12002Ge3='Never married'
B12002Ge4='Now married (except separated)'
B12002Ge5='Separated'
B12002Ge6='Widowed'
B12002Ge7='Divorced'
B12002Ge8='Female:'
B12002Ge9='Never married'
B12002Ge10='Now married (except separated)'
B12002Ge11='Separated'
B12002Ge12='Widowed'
B12002Ge13='Divorced'
 
/*SEX BY MARITAL STATUS FOR THE POPULATION 15 YEARS AND OVER (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population 15 years and over */
 
B12002He1='Total:'
B12002He2='Male:'
B12002He3='Never married'
B12002He4='Now married (except separated)'
B12002He5='Separated'
B12002He6='Widowed'
B12002He7='Divorced'
B12002He8='Female:'
B12002He9='Never married'
B12002He10='Now married (except separated)'
B12002He11='Separated'
B12002He12='Widowed'
B12002He13='Divorced'
 
/*SEX BY MARITAL STATUS FOR THE POPULATION 15 YEARS AND OVER (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population 15 years and over */
 
B12002Ie1='Total:'
B12002Ie2='Male:'
B12002Ie3='Never married'
B12002Ie4='Now married (except separated)'
B12002Ie5='Separated'
B12002Ie6='Widowed'
B12002Ie7='Divorced'
B12002Ie8='Female:'
B12002Ie9='Never married'
B12002Ie10='Now married (except separated)'
B12002Ie11='Separated'
B12002Ie12='Widowed'
B12002Ie13='Divorced'
 
/*MARITAL STATUS BY NATIVITY */
/*Universe:  Population 15 years and over */
 
B12005e1='Total:'
B12005e2='Never married:'
B12005e3='Native'
B12005e4='Foreign born'
B12005e5='Now married (except separated):'
B12005e6='Native'
B12005e7='Foreign born'
B12005e8='Separated:'
B12005e9='Native'
B12005e10='Foreign born'
B12005e11='Widowed:'
B12005e12='Native'
B12005e13='Foreign born'
B12005e14='Divorced:'
B12005e15='Native'
B12005e16='Foreign born'
 
/*MARITAL STATUS BY SEX BY LABOR FORCE PARTICIPATION */
/*Universe:  Population 16 years and over */
 
B12006e1='Total:'
B12006e2='Never married:'
B12006e3='Male:'
B12006e4='In labor force:'
B12006e5='Employed or in Armed Forces'
B12006e6='Unemployed'
B12006e7='Not in labor force'
B12006e8='Female:'
B12006e9='In labor force:'
B12006e10='Employed or in Armed Forces'
B12006e11='Unemployed'
B12006e12='Not in labor force'
B12006e13='Now married (except separated):'
B12006e14='Male:'
B12006e15='In labor force:'
B12006e16='Employed or in Armed Forces'
B12006e17='Unemployed'
B12006e18='Not in labor force'
B12006e19='Female:'
B12006e20='In labor force:'
B12006e21='Employed or in Armed Forces'
B12006e22='Unemployed'
B12006e23='Not in labor force'
B12006e24='Separated:'
B12006e25='Male:'
B12006e26='In labor force:'
B12006e27='Employed or in Armed Forces'
B12006e28='Unemployed'
B12006e29='Not in labor force'
B12006e30='Female:'
B12006e31='In labor force:'
B12006e32='Employed or in Armed Forces'
B12006e33='Unemployed'
B12006e34='Not in labor force'
B12006e35='Widowed:'
B12006e36='Male:'
B12006e37='In labor force:'
B12006e38='Employed or in Armed Forces'
B12006e39='Unemployed'
B12006e40='Not in labor force'
B12006e41='Female:'
B12006e42='In labor force:'
B12006e43='Employed or in Armed Forces'
B12006e44='Unemployed'
B12006e45='Not in labor force'
B12006e46='Divorced:'
B12006e47='Male:'
B12006e48='In labor force:'
B12006e49='Employed or in Armed Forces'
B12006e50='Unemployed'
B12006e51='Not in labor force'
B12006e52='Female:'
B12006e53='In labor force:'
B12006e54='Employed or in Armed Forces'
B12006e55='Unemployed'
B12006e56='Not in labor force'
 
/*MEDIAN AGE AT FIRST MARRIAGE */
/*Universe:  Population 15 to 54 years */
/*Median age at first marriage -- */
 
B12007e1='Male'
B12007e2='Female'
 
/*MEDIAN AGE AT FIRST MARRIAGE (WHITE ALONE) */
/*Universe:  White alone population 15 to 54 years */
/*Median age at first marriage -- */
 
B12007Ae1='Male'
B12007Ae2='Female'
 
/*MEDIAN AGE AT FIRST MARRIAGE (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone population 15 to 54 years */
/*Median age at first marriage -- */
 
B12007Be1='Male'
B12007Be2='Female'
 
/*MEDIAN AGE AT FIRST MARRIAGE (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone population 15 to 54 years */
/*Median age at first marriage -- */
 
B12007Ce1='Male'
B12007Ce2='Female'
 
/*MEDIAN AGE AT FIRST MARRIAGE (ASIAN ALONE) */
/*Universe:  Asian alone population 15 to 54 years */
/*Median age at first marriage -- */
 
B12007De1='Male'
B12007De2='Female'
 
/*MEDIAN AGE AT FIRST MARRIAGE (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 15 to 54 years */
/*Median age at first marriage -- */
 
B12007Ee1='Male'
B12007Ee2='Female'
 
/*MEDIAN AGE AT FIRST MARRIAGE (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone population 15 to 54 years */
/*Median age at first marriage -- */
 
B12007Fe1='Male'
B12007Fe2='Female'
 
/*MEDIAN AGE AT FIRST MARRIAGE (TWO OR MORE RACES) */
/*Universe:  Two or more races population 15 to 54 years */
/*Median age at first marriage -- */
 
B12007Ge1='Male'
B12007Ge2='Female'
 
/*MEDIAN AGE AT FIRST MARRIAGE (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population 15 to 54 years */
/*Median age at first marriage -- */
 
B12007He1='Male'
B12007He2='Female'
 
/*MEDIAN AGE AT FIRST MARRIAGE (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population 15 to 54 years */
/*Median age at first marriage -- */
 
B12007Ie1='Male'
B12007Ie2='Female'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B12002De1
B12002De2
B12002De3
B12002De4
B12002De5
B12002De6
B12002De7
B12002De8
B12002De9
B12002De10
B12002De11
B12002De12
B12002De13
 
B12002Ee1
B12002Ee2
B12002Ee3
B12002Ee4
B12002Ee5
B12002Ee6
B12002Ee7
B12002Ee8
B12002Ee9
B12002Ee10
B12002Ee11
B12002Ee12
B12002Ee13
 
B12002Fe1
B12002Fe2
B12002Fe3
B12002Fe4
B12002Fe5
B12002Fe6
B12002Fe7
B12002Fe8
B12002Fe9
B12002Fe10
B12002Fe11
B12002Fe12
B12002Fe13
 
B12002Ge1
B12002Ge2
B12002Ge3
B12002Ge4
B12002Ge5
B12002Ge6
B12002Ge7
B12002Ge8
B12002Ge9
B12002Ge10
B12002Ge11
B12002Ge12
B12002Ge13
 
B12002He1
B12002He2
B12002He3
B12002He4
B12002He5
B12002He6
B12002He7
B12002He8
B12002He9
B12002He10
B12002He11
B12002He12
B12002He13
 
B12002Ie1
B12002Ie2
B12002Ie3
B12002Ie4
B12002Ie5
B12002Ie6
B12002Ie7
B12002Ie8
B12002Ie9
B12002Ie10
B12002Ie11
B12002Ie12
B12002Ie13
 
B12005e1
B12005e2
B12005e3
B12005e4
B12005e5
B12005e6
B12005e7
B12005e8
B12005e9
B12005e10
B12005e11
B12005e12
B12005e13
B12005e14
B12005e15
B12005e16
 
B12006e1
B12006e2
B12006e3
B12006e4
B12006e5
B12006e6
B12006e7
B12006e8
B12006e9
B12006e10
B12006e11
B12006e12
B12006e13
B12006e14
B12006e15
B12006e16
B12006e17
B12006e18
B12006e19
B12006e20
B12006e21
B12006e22
B12006e23
B12006e24
B12006e25
B12006e26
B12006e27
B12006e28
B12006e29
B12006e30
B12006e31
B12006e32
B12006e33
B12006e34
B12006e35
B12006e36
B12006e37
B12006e38
B12006e39
B12006e40
B12006e41
B12006e42
B12006e43
B12006e44
B12006e45
B12006e46
B12006e47
B12006e48
B12006e49
B12006e50
B12006e51
B12006e52
B12006e53
B12006e54
B12006e55
B12006e56
 
B12007e1
B12007e2
 
B12007Ae1
B12007Ae2
 
B12007Be1
B12007Be2
 
B12007Ce1
B12007Ce2
 
B12007De1
B12007De2
 
B12007Ee1
B12007Ee2
 
B12007Fe1
B12007Fe2
 
B12007Ge1
B12007Ge2
 
B12007He1
B12007He2
 
B12007Ie1
B12007Ie2
;
RUN;
TITLE2;
