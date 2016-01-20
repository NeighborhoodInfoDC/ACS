TITLE2 "e20125dc0113000";
DATA work.SFe0113dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0113000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*HEALTH INSURANCE COVERAGE STATUS BY SEX BY AGE */
/*Universe:  Civilian noninstitutionalized population */
 
B27001e1='Total:'
B27001e2='Male:'
B27001e3='Under 6 years:'
B27001e4='With health insurance coverage'
B27001e5='No health insurance coverage'
B27001e6='6 to 17 years:'
B27001e7='With health insurance coverage'
B27001e8='No health insurance coverage'
B27001e9='18 to 24 years:'
B27001e10='With health insurance coverage'
B27001e11='No health insurance coverage'
B27001e12='25 to 34 years:'
B27001e13='With health insurance coverage'
B27001e14='No health insurance coverage'
B27001e15='35 to 44 years:'
B27001e16='With health insurance coverage'
B27001e17='No health insurance coverage'
B27001e18='45 to 54 years:'
B27001e19='With health insurance coverage'
B27001e20='No health insurance coverage'
B27001e21='55 to 64 years:'
B27001e22='With health insurance coverage'
B27001e23='No health insurance coverage'
B27001e24='65 to 74 years:'
B27001e25='With health insurance coverage'
B27001e26='No health insurance coverage'
B27001e27='75 years and over:'
B27001e28='With health insurance coverage'
B27001e29='No health insurance coverage'
B27001e30='Female:'
B27001e31='Under 6 years:'
B27001e32='With health insurance coverage'
B27001e33='No health insurance coverage'
B27001e34='6 to 17 years:'
B27001e35='With health insurance coverage'
B27001e36='No health insurance coverage'
B27001e37='18 to 24 years:'
B27001e38='With health insurance coverage'
B27001e39='No health insurance coverage'
B27001e40='25 to 34 years:'
B27001e41='With health insurance coverage'
B27001e42='No health insurance coverage'
B27001e43='35 to 44 years:'
B27001e44='With health insurance coverage'
B27001e45='No health insurance coverage'
B27001e46='45 to 54 years:'
B27001e47='With health insurance coverage'
B27001e48='No health insurance coverage'
B27001e49='55 to 64 years:'
B27001e50='With health insurance coverage'
B27001e51='No health insurance coverage'
B27001e52='65 to 74 years:'
B27001e53='With health insurance coverage'
B27001e54='No health insurance coverage'
B27001e55='75 years and over:'
B27001e56='With health insurance coverage'
B27001e57='No health insurance coverage'
/*PRIVATE HEALTH INSURANCE STATUS BY SEX BY AGE */
/*Universe:  Civilian noninstitutionalized population */
 
B27002e1='Total:'
B27002e2='Male:'
B27002e3='Under 6 years:'
B27002e4='With private health insurance'
B27002e5='No private health insurance'
B27002e6='6 to 17 years:'
B27002e7='With private health insurance'
B27002e8='No private health insurance'
B27002e9='18 to 24 years:'
B27002e10='With private health insurance'
B27002e11='No private health insurance'
B27002e12='25 to 34 years:'
B27002e13='With private health insurance'
B27002e14='No private health insurance'
B27002e15='35 to 44 years:'
B27002e16='With private health insurance'
B27002e17='No private health insurance'
B27002e18='45 to 54 years:'
B27002e19='With private health insurance'
B27002e20='No private health insurance'
B27002e21='55 to 64 years:'
B27002e22='With private health insurance'
B27002e23='No private health insurance'
B27002e24='65 to 74 years:'
B27002e25='With private health insurance'
B27002e26='No private health insurance'
B27002e27='75 years and over:'
B27002e28='With private health insurance'
B27002e29='No private health insurance'
B27002e30='Female:'
B27002e31='Under 6 years:'
B27002e32='With private health insurance'
B27002e33='No private health insurance'
B27002e34='6 to 17 years:'
B27002e35='With private health insurance'
B27002e36='No private health insurance'
B27002e37='18 to 24 years:'
B27002e38='With private health insurance'
B27002e39='No private health insurance'
B27002e40='25 to 34 years:'
B27002e41='With private health insurance'
B27002e42='No private health insurance'
B27002e43='35 to 44 years:'
B27002e44='With private health insurance'
B27002e45='No private health insurance'
B27002e46='45 to 54 years:'
B27002e47='With private health insurance'
B27002e48='No private health insurance'
B27002e49='55 to 64 years:'
B27002e50='With private health insurance'
B27002e51='No private health insurance'
B27002e52='65 to 74 years:'
B27002e53='With private health insurance'
B27002e54='No private health insurance'
B27002e55='75 years and over:'
B27002e56='With private health insurance'
B27002e57='No private health insurance'
/*HEALTH INSURANCE COVERAGE STATUS BY AGE (WHITE ALONE) */
/*Universe:  WHITE ALONE CIVILIAN NONINSTITUTIONALIZED POPULATION */
 
C27001Ae1='Total:'
C27001Ae2='Under 18 years:'
C27001Ae3='With health insurance coverage'
C27001Ae4='No health insurance coverage'
C27001Ae5='18 to 64 years:'
C27001Ae6='With health insurance coverage'
C27001Ae7='No health insurance coverage'
C27001Ae8='65 years and over:'
C27001Ae9='With health insurance coverage'
C27001Ae10='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS BY AGE (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  BLACK OR AFRICAN AMERICAN ALONE CIVILIAN NONINSTITUTIONALIZED POPULATION */
 
C27001Be1='Total:'
C27001Be2='Under 18 years:'
C27001Be3='With health insurance coverage'
C27001Be4='No health insurance coverage'
C27001Be5='18 to 64 years:'
C27001Be6='With health insurance coverage'
C27001Be7='No health insurance coverage'
C27001Be8='65 years and over:'
C27001Be9='With health insurance coverage'
C27001Be10='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS BY AGE (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  AMERICAN INDIAN AND ALASKA NATIVE ALONE CIVILIAN NONINSTITUTIONALIZED POPULATION */
 
C27001Ce1='Total:'
C27001Ce2='Under 18 years:'
C27001Ce3='With health insurance coverage'
C27001Ce4='No health insurance coverage'
C27001Ce5='18 to 64 years:'
C27001Ce6='With health insurance coverage'
C27001Ce7='No health insurance coverage'
C27001Ce8='65 years and over:'
C27001Ce9='With health insurance coverage'
C27001Ce10='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS BY AGE (ASIAN ALONE) */
/*Universe:  ASIAN ALONE CIVILIAN NONINSTITUTIONALIZED POPULATION */
 
C27001De1='Total:'
C27001De2='Under 18 years:'
C27001De3='With health insurance coverage'
C27001De4='No health insurance coverage'
C27001De5='18 to 64 years:'
C27001De6='With health insurance coverage'
C27001De7='No health insurance coverage'
C27001De8='65 years and over:'
C27001De9='With health insurance coverage'
C27001De10='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS BY AGE (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE CIVILIAN NONINSTITUTIONALIZED POPULATION */
 
C27001Ee1='Total:'
C27001Ee2='Under 18 years:'
C27001Ee3='With health insurance coverage'
C27001Ee4='No health insurance coverage'
C27001Ee5='18 to 64 years:'
C27001Ee6='With health insurance coverage'
C27001Ee7='No health insurance coverage'
C27001Ee8='65 years and over:'
C27001Ee9='With health insurance coverage'
C27001Ee10='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS BY AGE (SOME OTHER RACE ALONE) */
/*Universe:  SOME OTHER RACE ALONE CIVILIAN NONINSTITUTIONALIZED POPULATION */
 
C27001Fe1='Total:'
C27001Fe2='Under 18 years:'
C27001Fe3='With health insurance coverage'
C27001Fe4='No health insurance coverage'
C27001Fe5='18 to 64 years:'
C27001Fe6='With health insurance coverage'
C27001Fe7='No health insurance coverage'
C27001Fe8='65 years and over:'
C27001Fe9='With health insurance coverage'
C27001Fe10='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS BY AGE (TWO OR MORE RACES) */
/*Universe:  TWO OR MORE RACES CIVILIAN NONINSTITUTIONALIZED POPULATION */
 
C27001Ge1='Total:'
C27001Ge2='Under 18 years:'
C27001Ge3='With health insurance coverage'
C27001Ge4='No health insurance coverage'
C27001Ge5='18 to 64 years:'
C27001Ge6='With health insurance coverage'
C27001Ge7='No health insurance coverage'
C27001Ge8='65 years and over:'
C27001Ge9='With health insurance coverage'
C27001Ge10='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS BY AGE (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  WHITE ALONE, NOT HISPANIC OR LATINO CIVILIAN NONINSTITUTIONALIZED POPULATION */
 
C27001He1='Total:'
C27001He2='Under 18 years:'
C27001He3='With health insurance coverage'
C27001He4='No health insurance coverage'
C27001He5='18 to 64 years:'
C27001He6='With health insurance coverage'
C27001He7='No health insurance coverage'
C27001He8='65 years and over:'
C27001He9='With health insurance coverage'
C27001He10='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS BY AGE (HISPANIC OR LATINO) */
/*Universe:  HISPANIC OR LATINO CIVILIAN NONINSTITUTIONALIZED POPULATION */
 
C27001Ie1='Total:'
C27001Ie2='Under 18 years:'
C27001Ie3='With health insurance coverage'
C27001Ie4='No health insurance coverage'
C27001Ie5='18 to 64 years:'
C27001Ie6='With health insurance coverage'
C27001Ie7='No health insurance coverage'
C27001Ie8='65 years and over:'
C27001Ie9='With health insurance coverage'
C27001Ie10='No health insurance coverage'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B27001e1
B27001e2
B27001e3
B27001e4
B27001e5
B27001e6
B27001e7
B27001e8
B27001e9
B27001e10
B27001e11
B27001e12
B27001e13
B27001e14
B27001e15
B27001e16
B27001e17
B27001e18
B27001e19
B27001e20
B27001e21
B27001e22
B27001e23
B27001e24
B27001e25
B27001e26
B27001e27
B27001e28
B27001e29
B27001e30
B27001e31
B27001e32
B27001e33
B27001e34
B27001e35
B27001e36
B27001e37
B27001e38
B27001e39
B27001e40
B27001e41
B27001e42
B27001e43
B27001e44
B27001e45
B27001e46
B27001e47
B27001e48
B27001e49
B27001e50
B27001e51
B27001e52
B27001e53
B27001e54
B27001e55
B27001e56
B27001e57
 
B27002e1
B27002e2
B27002e3
B27002e4
B27002e5
B27002e6
B27002e7
B27002e8
B27002e9
B27002e10
B27002e11
B27002e12
B27002e13
B27002e14
B27002e15
B27002e16
B27002e17
B27002e18
B27002e19
B27002e20
B27002e21
B27002e22
B27002e23
B27002e24
B27002e25
B27002e26
B27002e27
B27002e28
B27002e29
B27002e30
B27002e31
B27002e32
B27002e33
B27002e34
B27002e35
B27002e36
B27002e37
B27002e38
B27002e39
B27002e40
B27002e41
B27002e42
B27002e43
B27002e44
B27002e45
B27002e46
B27002e47
B27002e48
B27002e49
B27002e50
B27002e51
B27002e52
B27002e53
B27002e54
B27002e55
B27002e56
B27002e57
 
C27001Ae1
C27001Ae2
C27001Ae3
C27001Ae4
C27001Ae5
C27001Ae6
C27001Ae7
C27001Ae8
C27001Ae9
C27001Ae10
 
C27001Be1
C27001Be2
C27001Be3
C27001Be4
C27001Be5
C27001Be6
C27001Be7
C27001Be8
C27001Be9
C27001Be10
 
C27001Ce1
C27001Ce2
C27001Ce3
C27001Ce4
C27001Ce5
C27001Ce6
C27001Ce7
C27001Ce8
C27001Ce9
C27001Ce10
 
C27001De1
C27001De2
C27001De3
C27001De4
C27001De5
C27001De6
C27001De7
C27001De8
C27001De9
C27001De10
 
C27001Ee1
C27001Ee2
C27001Ee3
C27001Ee4
C27001Ee5
C27001Ee6
C27001Ee7
C27001Ee8
C27001Ee9
C27001Ee10
 
C27001Fe1
C27001Fe2
C27001Fe3
C27001Fe4
C27001Fe5
C27001Fe6
C27001Fe7
C27001Fe8
C27001Fe9
C27001Fe10
 
C27001Ge1
C27001Ge2
C27001Ge3
C27001Ge4
C27001Ge5
C27001Ge6
C27001Ge7
C27001Ge8
C27001Ge9
C27001Ge10
 
C27001He1
C27001He2
C27001He3
C27001He4
C27001He5
C27001He6
C27001He7
C27001He8
C27001He9
C27001He10
 
C27001Ie1
C27001Ie2
C27001Ie3
C27001Ie4
C27001Ie5
C27001Ie6
C27001Ie7
C27001Ie8
C27001Ie9
C27001Ie10
;
RUN;
TITLE2;
