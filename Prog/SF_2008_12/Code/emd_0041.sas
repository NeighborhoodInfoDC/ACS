TITLE2 "e20125md0041000";
DATA work.SFe0041md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0041000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SCHOOL ENROLLMENT BY LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER */
/*Universe:  Population 3 years and over */
 
B14001e1='Total:'
B14001e2='Enrolled in school:'
B14001e3='Enrolled in nursery school, preschool'
B14001e4='Enrolled in kindergarten'
B14001e5='Enrolled in grade 1 to grade 4'
B14001e6='Enrolled in grade 5 to grade 8'
B14001e7='Enrolled in grade 9 to grade 12'
B14001e8='Enrolled in college, undergraduate years'
B14001e9='Graduate or professional school'
B14001e10='Not enrolled in school'
/*SEX BY SCHOOL ENROLLMENT BY LEVEL OF SCHOOL BY TYPE OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER */
/*Universe:  Population 3 years and over */
 
B14002e1='Total:'
B14002e2='Male:'
B14002e3='Enrolled in school:'
B14002e4='Enrolled in nursery school, preschool:'
B14002e5='Public school'
B14002e6='Private school'
B14002e7='Enrolled in kindergarten:'
B14002e8='Public school'
B14002e9='Private school'
B14002e10='Enrolled in grade 1 to grade 4:'
B14002e11='Public school'
B14002e12='Private school'
B14002e13='Enrolled in grade 5 to grade 8:'
B14002e14='Public school'
B14002e15='Private school'
B14002e16='Enrolled in grade 9 to grade 12:'
B14002e17='Public school'
B14002e18='Private school'
B14002e19='Enrolled in college undergraduate years:'
B14002e20='Public school'
B14002e21='Private school'
B14002e22='Enrolled in graduate or professional school:'
B14002e23='Public school'
B14002e24='Private school'
B14002e25='Not enrolled in school'
B14002e26='Female:'
B14002e27='Enrolled in school:'
B14002e28='Enrolled in nursery school, preschool:'
B14002e29='Public school'
B14002e30='Private school'
B14002e31='Enrolled in kindergarten:'
B14002e32='Public school'
B14002e33='Private school'
B14002e34='Enrolled in grade 1 to grade 4:'
B14002e35='Public school'
B14002e36='Private school'
B14002e37='Enrolled in grade 5 to grade 8:'
B14002e38='Public school'
B14002e39='Private school'
B14002e40='Enrolled in grade 9 to grade 12:'
B14002e41='Public school'
B14002e42='Private school'
B14002e43='Enrolled in college undergraduate years:'
B14002e44='Public school'
B14002e45='Private school'
B14002e46='Enrolled in graduate or professional school:'
B14002e47='Public school'
B14002e48='Private school'
B14002e49='Not enrolled in school'
/*SEX BY SCHOOL ENROLLMENT BY TYPE OF SCHOOL BY AGE FOR THE POPULATION 3 YEARS AND OVER */
/*Universe:  Population 3 years and over */
 
B14003e1='Total:'
B14003e2='Male:'
B14003e3='Enrolled in public school:'
B14003e4='3 and 4 years'
B14003e5='5 to 9 years'
B14003e6='10 to 14 years'
B14003e7='15 to 17 years'
B14003e8='18 and 19 years'
B14003e9='20 to 24 years'
B14003e10='25 to 34 years'
B14003e11='35 years and over'
B14003e12='Enrolled in private school:'
B14003e13='3 and 4 years'
B14003e14='5 to 9 years'
B14003e15='10 to 14 years'
B14003e16='15 to 17 years'
B14003e17='18 and 19 years'
B14003e18='20 to 24 years'
B14003e19='25 to 34 years'
B14003e20='35 years and over'
B14003e21='Not enrolled in school:'
B14003e22='3 and 4 years'
B14003e23='5 to 9 years'
B14003e24='10 to 14 years'
B14003e25='15 to 17 years'
B14003e26='18 and 19 years'
B14003e27='20 to 24 years'
B14003e28='25 to 34 years'
B14003e29='35 years and over'
B14003e30='Female:'
B14003e31='Enrolled in public school:'
B14003e32='3 and 4 years'
B14003e33='5 to 9 years'
B14003e34='10 to 14 years'
B14003e35='15 to 17 years'
B14003e36='18 and 19 years'
B14003e37='20 to 24 years'
B14003e38='25 to 34 years'
B14003e39='35 years and over'
B14003e40='Enrolled in private school:'
B14003e41='3 and 4 years'
B14003e42='5 to 9 years'
B14003e43='10 to 14 years'
B14003e44='15 to 17 years'
B14003e45='18 and 19 years'
B14003e46='20 to 24 years'
B14003e47='25 to 34 years'
B14003e48='35 years and over'
B14003e49='Not enrolled in school:'
B14003e50='3 and 4 years'
B14003e51='5 to 9 years'
B14003e52='10 to 14 years'
B14003e53='15 to 17 years'
B14003e54='18 and 19 years'
B14003e55='20 to 24 years'
B14003e56='25 to 34 years'
B14003e57='35 years and over'
/*SEX BY COLLEGE OR GRADUATE SCHOOL ENROLLMENT BY TYPE OF SCHOOL BY AGE FOR THE POPULATION 15 YEARS AND OVER */
/*Universe:  Population 15 years and over */
 
B14004e1='Total:'
B14004e2='Male:'
B14004e3='Enrolled in public college or graduate school:'
B14004e4='15 to 17 years'
B14004e5='18 to 24 years'
B14004e6='25 to 34 years'
B14004e7='35 years and over'
B14004e8='Enrolled in private college or graduate school:'
B14004e9='15 to 17 years'
B14004e10='18 to 24 years'
B14004e11='25 to 34 years'
B14004e12='35 years and over'
B14004e13='Not enrolled in college or graduate school:'
B14004e14='15 to 17 years'
B14004e15='18 to 24 years'
B14004e16='25 to 34 years'
B14004e17='35 years and over'
B14004e18='Female:'
B14004e19='Enrolled in public college or graduate school:'
B14004e20='15 to 17 years'
B14004e21='18 to 24 years'
B14004e22='25 to 34 years'
B14004e23='35 years and over'
B14004e24='Enrolled in private college or graduate school:'
B14004e25='15 to 17 years'
B14004e26='18 to 24 years'
B14004e27='25 to 34 years'
B14004e28='35 years and over'
B14004e29='Not enrolled in college or graduate school:'
B14004e30='15 to 17 years'
B14004e31='18 to 24 years'
B14004e32='25 to 34 years'
B14004e33='35 years and over'
/*SEX BY SCHOOL ENROLLMENT BY EDUCATIONAL ATTAINMENT BY EMPLOYMENT STATUS FOR THE POPULATION 16 TO 19 YEARS */
/*Universe:  Population 16 to 19 years */
 
B14005e1='Total:'
B14005e2='Male:'
B14005e3='Enrolled in school:'
B14005e4='Employed'
B14005e5='Unemployed'
B14005e6='Not in labor force'
B14005e7='Not enrolled in school:'
B14005e8='High school graduate:'
B14005e9='Employed'
B14005e10='Unemployed'
B14005e11='Not in labor force'
B14005e12='Not high school graduate:'
B14005e13='Employed'
B14005e14='Unemployed'
B14005e15='Not in labor force'
B14005e16='Female:'
B14005e17='Enrolled in school:'
B14005e18='Employed'
B14005e19='Unemployed'
B14005e20='Not in labor force'
B14005e21='Not enrolled in school:'
B14005e22='High school graduate:'
B14005e23='Employed'
B14005e24='Unemployed'
B14005e25='Not in labor force'
B14005e26='Not high school graduate:'
B14005e27='Employed'
B14005e28='Unemployed'
B14005e29='Not in labor force'
/*POVERTY STATUS IN THE PAST 12 MONTHS BY SCHOOL ENROLLMENT BY LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER */
/*Universe:  Population 3 years and over for whom poverty status is determined */
 
B14006e1='Total:'
B14006e2='Income in the past 12 months below the poverty level:'
B14006e3='Enrolled in school:'
B14006e4='Enrolled in nursery school, preschool'
B14006e5='Enrolled in kindergarten'
B14006e6='Enrolled in grade 1 to grade 4'
B14006e7='Enrolled in grade 5 to grade 8'
B14006e8='Enrolled in grade 9 to grade 12'
B14006e9='Enrolled in college undergraduate years'
B14006e10='Enrolled in graduate or professional school'
B14006e11='Not enrolled in school'
B14006e12='Income in the past 12 months at or above the poverty level:'
B14006e13='Enrolled in school:'
B14006e14='Enrolled in nursery school, preschool'
B14006e15='Enrolled in kindergarten'
B14006e16='Enrolled in grade 1 to grade 4'
B14006e17='Enrolled in grade 5 to grade 8'
B14006e18='Enrolled in grade 9 to grade 12'
B14006e19='Enrolled in college undergraduate years'
B14006e20='Enrolled in graduate or professional school'
B14006e21='Not enrolled in school'
/*SCHOOL ENROLLMENT BY DETAILED  LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER */
/*Universe: Population 3 years and over */
 
B14007e1='Total:'
B14007e2='Enrolled in school:'
B14007e3='Enrolled in nursery school, preschool'
B14007e4='Enrolled in kindergarten'
B14007e5='Enrolled in grade 1'
B14007e6='Enrolled in grade 2'
B14007e7='Enrolled in grade 3'
B14007e8='Enrolled in grade 4'
B14007e9='Enrolled in grade 5'
B14007e10='Enrolled in grade 6'
B14007e11='Enrolled in grade 7'
B14007e12='Enrolled in grade 8'
B14007e13='Enrolled in grade 9'
B14007e14='Enrolled in grade 10'
B14007e15='Enrolled in grade 11'
B14007e16='Enrolled in grade 12'
B14007e17='Enrolled in college, undergraduate years'
B14007e18='Graduate or professional school'
B14007e19='Not enrolled in school'
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (WHITE ALONE) */
/*Universe:  White alone population 3 years and over */
 
B14007Ae1='Total:'
B14007Ae2='Enrolled in school:'
B14007Ae3='Enrolled in nursery school, preschool'
B14007Ae4='Enrolled in kindergarten'
B14007Ae5='Enrolled in grade 1'
B14007Ae6='Enrolled in grade 2'
B14007Ae7='Enrolled in grade 3'
B14007Ae8='Enrolled in grade 4'
B14007Ae9='Enrolled in grade 5'
B14007Ae10='Enrolled in grade 6'
B14007Ae11='Enrolled in grade 7'
B14007Ae12='Enrolled in grade 8'
B14007Ae13='Enrolled in grade 9'
B14007Ae14='Enrolled in grade 10'
B14007Ae15='Enrolled in grade 11'
B14007Ae16='Enrolled in grade 12'
B14007Ae17='Enrolled in college, undergraduate years'
B14007Ae18='Graduate or professional school'
B14007Ae19='Not enrolled in school'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B14001e1
B14001e2
B14001e3
B14001e4
B14001e5
B14001e6
B14001e7
B14001e8
B14001e9
B14001e10
 
B14002e1
B14002e2
B14002e3
B14002e4
B14002e5
B14002e6
B14002e7
B14002e8
B14002e9
B14002e10
B14002e11
B14002e12
B14002e13
B14002e14
B14002e15
B14002e16
B14002e17
B14002e18
B14002e19
B14002e20
B14002e21
B14002e22
B14002e23
B14002e24
B14002e25
B14002e26
B14002e27
B14002e28
B14002e29
B14002e30
B14002e31
B14002e32
B14002e33
B14002e34
B14002e35
B14002e36
B14002e37
B14002e38
B14002e39
B14002e40
B14002e41
B14002e42
B14002e43
B14002e44
B14002e45
B14002e46
B14002e47
B14002e48
B14002e49
 
B14003e1
B14003e2
B14003e3
B14003e4
B14003e5
B14003e6
B14003e7
B14003e8
B14003e9
B14003e10
B14003e11
B14003e12
B14003e13
B14003e14
B14003e15
B14003e16
B14003e17
B14003e18
B14003e19
B14003e20
B14003e21
B14003e22
B14003e23
B14003e24
B14003e25
B14003e26
B14003e27
B14003e28
B14003e29
B14003e30
B14003e31
B14003e32
B14003e33
B14003e34
B14003e35
B14003e36
B14003e37
B14003e38
B14003e39
B14003e40
B14003e41
B14003e42
B14003e43
B14003e44
B14003e45
B14003e46
B14003e47
B14003e48
B14003e49
B14003e50
B14003e51
B14003e52
B14003e53
B14003e54
B14003e55
B14003e56
B14003e57
 
B14004e1
B14004e2
B14004e3
B14004e4
B14004e5
B14004e6
B14004e7
B14004e8
B14004e9
B14004e10
B14004e11
B14004e12
B14004e13
B14004e14
B14004e15
B14004e16
B14004e17
B14004e18
B14004e19
B14004e20
B14004e21
B14004e22
B14004e23
B14004e24
B14004e25
B14004e26
B14004e27
B14004e28
B14004e29
B14004e30
B14004e31
B14004e32
B14004e33
 
B14005e1
B14005e2
B14005e3
B14005e4
B14005e5
B14005e6
B14005e7
B14005e8
B14005e9
B14005e10
B14005e11
B14005e12
B14005e13
B14005e14
B14005e15
B14005e16
B14005e17
B14005e18
B14005e19
B14005e20
B14005e21
B14005e22
B14005e23
B14005e24
B14005e25
B14005e26
B14005e27
B14005e28
B14005e29
 
B14006e1
B14006e2
B14006e3
B14006e4
B14006e5
B14006e6
B14006e7
B14006e8
B14006e9
B14006e10
B14006e11
B14006e12
B14006e13
B14006e14
B14006e15
B14006e16
B14006e17
B14006e18
B14006e19
B14006e20
B14006e21
 
B14007e1
B14007e2
B14007e3
B14007e4
B14007e5
B14007e6
B14007e7
B14007e8
B14007e9
B14007e10
B14007e11
B14007e12
B14007e13
B14007e14
B14007e15
B14007e16
B14007e17
B14007e18
B14007e19
 
B14007Ae1
B14007Ae2
B14007Ae3
B14007Ae4
B14007Ae5
B14007Ae6
B14007Ae7
B14007Ae8
B14007Ae9
B14007Ae10
B14007Ae11
B14007Ae12
B14007Ae13
B14007Ae14
B14007Ae15
B14007Ae16
B14007Ae17
B14007Ae18
B14007Ae19
;
RUN;
TITLE2;
