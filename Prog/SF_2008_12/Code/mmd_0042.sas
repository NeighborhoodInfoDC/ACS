TITLE2 "m20125md0042000";
DATA work.SFm0042md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0042000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone population 3 years and over */
 
B14007Bm1='Total:'
B14007Bm2='Enrolled in school:'
B14007Bm3='Enrolled in nursery school, preschool'
B14007Bm4='Enrolled in kindergarten'
B14007Bm5='Enrolled in grade 1'
B14007Bm6='Enrolled in grade 2'
B14007Bm7='Enrolled in grade 3'
B14007Bm8='Enrolled in grade 4'
B14007Bm9='Enrolled in grade 5'
B14007Bm10='Enrolled in grade 6'
B14007Bm11='Enrolled in grade 7'
B14007Bm12='Enrolled in grade 8'
B14007Bm13='Enrolled in grade 9'
B14007Bm14='Enrolled in grade 10'
B14007Bm15='Enrolled in grade 11'
B14007Bm16='Enrolled in grade 12'
B14007Bm17='Enrolled in college, undergraduate years'
B14007Bm18='Graduate or professional school'
B14007Bm19='Not enrolled in school'
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone population 3 years and over */
 
B14007Cm1='Total:'
B14007Cm2='Enrolled in school:'
B14007Cm3='Enrolled in nursery school, preschool'
B14007Cm4='Enrolled in kindergarten'
B14007Cm5='Enrolled in grade 1'
B14007Cm6='Enrolled in grade 2'
B14007Cm7='Enrolled in grade 3'
B14007Cm8='Enrolled in grade 4'
B14007Cm9='Enrolled in grade 5'
B14007Cm10='Enrolled in grade 6'
B14007Cm11='Enrolled in grade 7'
B14007Cm12='Enrolled in grade 8'
B14007Cm13='Enrolled in grade 9'
B14007Cm14='Enrolled in grade 10'
B14007Cm15='Enrolled in grade 11'
B14007Cm16='Enrolled in grade 12'
B14007Cm17='Enrolled in college, undergraduate years'
B14007Cm18='Graduate or professional school'
B14007Cm19='Not enrolled in school'
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (ASIAN ALONE) */
/*Universe:  Asian alone population 3 years and over */
 
B14007Dm1='Total:'
B14007Dm2='Enrolled in school:'
B14007Dm3='Enrolled in nursery school, preschool'
B14007Dm4='Enrolled in kindergarten'
B14007Dm5='Enrolled in grade 1'
B14007Dm6='Enrolled in grade 2'
B14007Dm7='Enrolled in grade 3'
B14007Dm8='Enrolled in grade 4'
B14007Dm9='Enrolled in grade 5'
B14007Dm10='Enrolled in grade 6'
B14007Dm11='Enrolled in grade 7'
B14007Dm12='Enrolled in grade 8'
B14007Dm13='Enrolled in grade 9'
B14007Dm14='Enrolled in grade 10'
B14007Dm15='Enrolled in grade 11'
B14007Dm16='Enrolled in grade 12'
B14007Dm17='Enrolled in college, undergraduate years'
B14007Dm18='Graduate or professional school'
B14007Dm19='Not enrolled in school'
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 3 years and over */
 
B14007Em1='Total:'
B14007Em2='Enrolled in school:'
B14007Em3='Enrolled in nursery school, preschool'
B14007Em4='Enrolled in kindergarten'
B14007Em5='Enrolled in grade 1'
B14007Em6='Enrolled in grade 2'
B14007Em7='Enrolled in grade 3'
B14007Em8='Enrolled in grade 4'
B14007Em9='Enrolled in grade 5'
B14007Em10='Enrolled in grade 6'
B14007Em11='Enrolled in grade 7'
B14007Em12='Enrolled in grade 8'
B14007Em13='Enrolled in grade 9'
B14007Em14='Enrolled in grade 10'
B14007Em15='Enrolled in grade 11'
B14007Em16='Enrolled in grade 12'
B14007Em17='Enrolled in college, undergraduate years'
B14007Em18='Graduate or professional school'
B14007Em19='Not enrolled in school'
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone population 3 years and over */
 
B14007Fm1='Total:'
B14007Fm2='Enrolled in school:'
B14007Fm3='Enrolled in nursery school, preschool'
B14007Fm4='Enrolled in kindergarten'
B14007Fm5='Enrolled in grade 1'
B14007Fm6='Enrolled in grade 2'
B14007Fm7='Enrolled in grade 3'
B14007Fm8='Enrolled in grade 4'
B14007Fm9='Enrolled in grade 5'
B14007Fm10='Enrolled in grade 6'
B14007Fm11='Enrolled in grade 7'
B14007Fm12='Enrolled in grade 8'
B14007Fm13='Enrolled in grade 9'
B14007Fm14='Enrolled in grade 10'
B14007Fm15='Enrolled in grade 11'
B14007Fm16='Enrolled in grade 12'
B14007Fm17='Enrolled in college, undergraduate years'
B14007Fm18='Graduate or professional school'
B14007Fm19='Not enrolled in school'
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (TWO OR MORE RACES) */
/*Universe:  Two or more races population 3 years and over */
 
B14007Gm1='Total:'
B14007Gm2='Enrolled in school:'
B14007Gm3='Enrolled in nursery school, preschool'
B14007Gm4='Enrolled in kindergarten'
B14007Gm5='Enrolled in grade 1'
B14007Gm6='Enrolled in grade 2'
B14007Gm7='Enrolled in grade 3'
B14007Gm8='Enrolled in grade 4'
B14007Gm9='Enrolled in grade 5'
B14007Gm10='Enrolled in grade 6'
B14007Gm11='Enrolled in grade 7'
B14007Gm12='Enrolled in grade 8'
B14007Gm13='Enrolled in grade 9'
B14007Gm14='Enrolled in grade 10'
B14007Gm15='Enrolled in grade 11'
B14007Gm16='Enrolled in grade 12'
B14007Gm17='Enrolled in college, undergraduate years'
B14007Gm18='Graduate or professional school'
B14007Gm19='Not enrolled in school'
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino, population 3 years and over */
 
B14007Hm1='Total:'
B14007Hm2='Enrolled in school:'
B14007Hm3='Enrolled in nursery school, preschool'
B14007Hm4='Enrolled in kindergarten'
B14007Hm5='Enrolled in grade 1'
B14007Hm6='Enrolled in grade 2'
B14007Hm7='Enrolled in grade 3'
B14007Hm8='Enrolled in grade 4'
B14007Hm9='Enrolled in grade 5'
B14007Hm10='Enrolled in grade 6'
B14007Hm11='Enrolled in grade 7'
B14007Hm12='Enrolled in grade 8'
B14007Hm13='Enrolled in grade 9'
B14007Hm14='Enrolled in grade 10'
B14007Hm15='Enrolled in grade 11'
B14007Hm16='Enrolled in grade 12'
B14007Hm17='Enrolled in college, undergraduate years'
B14007Hm18='Graduate or professional school'
B14007Hm19='Not enrolled in school'
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population 3 years and over */
 
B14007Im1='Total:'
B14007Im2='Enrolled in school:'
B14007Im3='Enrolled in nursery school, preschool'
B14007Im4='Enrolled in kindergarten'
B14007Im5='Enrolled in grade 1'
B14007Im6='Enrolled in grade 2'
B14007Im7='Enrolled in grade 3'
B14007Im8='Enrolled in grade 4'
B14007Im9='Enrolled in grade 5'
B14007Im10='Enrolled in grade 6'
B14007Im11='Enrolled in grade 7'
B14007Im12='Enrolled in grade 8'
B14007Im13='Enrolled in grade 9'
B14007Im14='Enrolled in grade 10'
B14007Im15='Enrolled in grade 11'
B14007Im16='Enrolled in grade 12'
B14007Im17='Enrolled in college, undergraduate years'
B14007Im18='Graduate or professional school'
B14007Im19='Not enrolled in school'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B14007Bm1
B14007Bm2
B14007Bm3
B14007Bm4
B14007Bm5
B14007Bm6
B14007Bm7
B14007Bm8
B14007Bm9
B14007Bm10
B14007Bm11
B14007Bm12
B14007Bm13
B14007Bm14
B14007Bm15
B14007Bm16
B14007Bm17
B14007Bm18
B14007Bm19
 
B14007Cm1
B14007Cm2
B14007Cm3
B14007Cm4
B14007Cm5
B14007Cm6
B14007Cm7
B14007Cm8
B14007Cm9
B14007Cm10
B14007Cm11
B14007Cm12
B14007Cm13
B14007Cm14
B14007Cm15
B14007Cm16
B14007Cm17
B14007Cm18
B14007Cm19
 
B14007Dm1
B14007Dm2
B14007Dm3
B14007Dm4
B14007Dm5
B14007Dm6
B14007Dm7
B14007Dm8
B14007Dm9
B14007Dm10
B14007Dm11
B14007Dm12
B14007Dm13
B14007Dm14
B14007Dm15
B14007Dm16
B14007Dm17
B14007Dm18
B14007Dm19
 
B14007Em1
B14007Em2
B14007Em3
B14007Em4
B14007Em5
B14007Em6
B14007Em7
B14007Em8
B14007Em9
B14007Em10
B14007Em11
B14007Em12
B14007Em13
B14007Em14
B14007Em15
B14007Em16
B14007Em17
B14007Em18
B14007Em19
 
B14007Fm1
B14007Fm2
B14007Fm3
B14007Fm4
B14007Fm5
B14007Fm6
B14007Fm7
B14007Fm8
B14007Fm9
B14007Fm10
B14007Fm11
B14007Fm12
B14007Fm13
B14007Fm14
B14007Fm15
B14007Fm16
B14007Fm17
B14007Fm18
B14007Fm19
 
B14007Gm1
B14007Gm2
B14007Gm3
B14007Gm4
B14007Gm5
B14007Gm6
B14007Gm7
B14007Gm8
B14007Gm9
B14007Gm10
B14007Gm11
B14007Gm12
B14007Gm13
B14007Gm14
B14007Gm15
B14007Gm16
B14007Gm17
B14007Gm18
B14007Gm19
 
B14007Hm1
B14007Hm2
B14007Hm3
B14007Hm4
B14007Hm5
B14007Hm6
B14007Hm7
B14007Hm8
B14007Hm9
B14007Hm10
B14007Hm11
B14007Hm12
B14007Hm13
B14007Hm14
B14007Hm15
B14007Hm16
B14007Hm17
B14007Hm18
B14007Hm19
 
B14007Im1
B14007Im2
B14007Im3
B14007Im4
B14007Im5
B14007Im6
B14007Im7
B14007Im8
B14007Im9
B14007Im10
B14007Im11
B14007Im12
B14007Im13
B14007Im14
B14007Im15
B14007Im16
B14007Im17
B14007Im18
B14007Im19
;
RUN;
TITLE2;
