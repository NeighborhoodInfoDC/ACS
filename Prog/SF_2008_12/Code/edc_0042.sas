TITLE2 "e20125dc0042000";
DATA work.SFe0042dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0042000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone population 3 years and over */
 
B14007Be1='Total:'
B14007Be2='Enrolled in school:'
B14007Be3='Enrolled in nursery school, preschool'
B14007Be4='Enrolled in kindergarten'
B14007Be5='Enrolled in grade 1'
B14007Be6='Enrolled in grade 2'
B14007Be7='Enrolled in grade 3'
B14007Be8='Enrolled in grade 4'
B14007Be9='Enrolled in grade 5'
B14007Be10='Enrolled in grade 6'
B14007Be11='Enrolled in grade 7'
B14007Be12='Enrolled in grade 8'
B14007Be13='Enrolled in grade 9'
B14007Be14='Enrolled in grade 10'
B14007Be15='Enrolled in grade 11'
B14007Be16='Enrolled in grade 12'
B14007Be17='Enrolled in college, undergraduate years'
B14007Be18='Graduate or professional school'
B14007Be19='Not enrolled in school'
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone population 3 years and over */
 
B14007Ce1='Total:'
B14007Ce2='Enrolled in school:'
B14007Ce3='Enrolled in nursery school, preschool'
B14007Ce4='Enrolled in kindergarten'
B14007Ce5='Enrolled in grade 1'
B14007Ce6='Enrolled in grade 2'
B14007Ce7='Enrolled in grade 3'
B14007Ce8='Enrolled in grade 4'
B14007Ce9='Enrolled in grade 5'
B14007Ce10='Enrolled in grade 6'
B14007Ce11='Enrolled in grade 7'
B14007Ce12='Enrolled in grade 8'
B14007Ce13='Enrolled in grade 9'
B14007Ce14='Enrolled in grade 10'
B14007Ce15='Enrolled in grade 11'
B14007Ce16='Enrolled in grade 12'
B14007Ce17='Enrolled in college, undergraduate years'
B14007Ce18='Graduate or professional school'
B14007Ce19='Not enrolled in school'
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (ASIAN ALONE) */
/*Universe:  Asian alone population 3 years and over */
 
B14007De1='Total:'
B14007De2='Enrolled in school:'
B14007De3='Enrolled in nursery school, preschool'
B14007De4='Enrolled in kindergarten'
B14007De5='Enrolled in grade 1'
B14007De6='Enrolled in grade 2'
B14007De7='Enrolled in grade 3'
B14007De8='Enrolled in grade 4'
B14007De9='Enrolled in grade 5'
B14007De10='Enrolled in grade 6'
B14007De11='Enrolled in grade 7'
B14007De12='Enrolled in grade 8'
B14007De13='Enrolled in grade 9'
B14007De14='Enrolled in grade 10'
B14007De15='Enrolled in grade 11'
B14007De16='Enrolled in grade 12'
B14007De17='Enrolled in college, undergraduate years'
B14007De18='Graduate or professional school'
B14007De19='Not enrolled in school'
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 3 years and over */
 
B14007Ee1='Total:'
B14007Ee2='Enrolled in school:'
B14007Ee3='Enrolled in nursery school, preschool'
B14007Ee4='Enrolled in kindergarten'
B14007Ee5='Enrolled in grade 1'
B14007Ee6='Enrolled in grade 2'
B14007Ee7='Enrolled in grade 3'
B14007Ee8='Enrolled in grade 4'
B14007Ee9='Enrolled in grade 5'
B14007Ee10='Enrolled in grade 6'
B14007Ee11='Enrolled in grade 7'
B14007Ee12='Enrolled in grade 8'
B14007Ee13='Enrolled in grade 9'
B14007Ee14='Enrolled in grade 10'
B14007Ee15='Enrolled in grade 11'
B14007Ee16='Enrolled in grade 12'
B14007Ee17='Enrolled in college, undergraduate years'
B14007Ee18='Graduate or professional school'
B14007Ee19='Not enrolled in school'
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone population 3 years and over */
 
B14007Fe1='Total:'
B14007Fe2='Enrolled in school:'
B14007Fe3='Enrolled in nursery school, preschool'
B14007Fe4='Enrolled in kindergarten'
B14007Fe5='Enrolled in grade 1'
B14007Fe6='Enrolled in grade 2'
B14007Fe7='Enrolled in grade 3'
B14007Fe8='Enrolled in grade 4'
B14007Fe9='Enrolled in grade 5'
B14007Fe10='Enrolled in grade 6'
B14007Fe11='Enrolled in grade 7'
B14007Fe12='Enrolled in grade 8'
B14007Fe13='Enrolled in grade 9'
B14007Fe14='Enrolled in grade 10'
B14007Fe15='Enrolled in grade 11'
B14007Fe16='Enrolled in grade 12'
B14007Fe17='Enrolled in college, undergraduate years'
B14007Fe18='Graduate or professional school'
B14007Fe19='Not enrolled in school'
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (TWO OR MORE RACES) */
/*Universe:  Two or more races population 3 years and over */
 
B14007Ge1='Total:'
B14007Ge2='Enrolled in school:'
B14007Ge3='Enrolled in nursery school, preschool'
B14007Ge4='Enrolled in kindergarten'
B14007Ge5='Enrolled in grade 1'
B14007Ge6='Enrolled in grade 2'
B14007Ge7='Enrolled in grade 3'
B14007Ge8='Enrolled in grade 4'
B14007Ge9='Enrolled in grade 5'
B14007Ge10='Enrolled in grade 6'
B14007Ge11='Enrolled in grade 7'
B14007Ge12='Enrolled in grade 8'
B14007Ge13='Enrolled in grade 9'
B14007Ge14='Enrolled in grade 10'
B14007Ge15='Enrolled in grade 11'
B14007Ge16='Enrolled in grade 12'
B14007Ge17='Enrolled in college, undergraduate years'
B14007Ge18='Graduate or professional school'
B14007Ge19='Not enrolled in school'
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino, population 3 years and over */
 
B14007He1='Total:'
B14007He2='Enrolled in school:'
B14007He3='Enrolled in nursery school, preschool'
B14007He4='Enrolled in kindergarten'
B14007He5='Enrolled in grade 1'
B14007He6='Enrolled in grade 2'
B14007He7='Enrolled in grade 3'
B14007He8='Enrolled in grade 4'
B14007He9='Enrolled in grade 5'
B14007He10='Enrolled in grade 6'
B14007He11='Enrolled in grade 7'
B14007He12='Enrolled in grade 8'
B14007He13='Enrolled in grade 9'
B14007He14='Enrolled in grade 10'
B14007He15='Enrolled in grade 11'
B14007He16='Enrolled in grade 12'
B14007He17='Enrolled in college, undergraduate years'
B14007He18='Graduate or professional school'
B14007He19='Not enrolled in school'
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population 3 years and over */
 
B14007Ie1='Total:'
B14007Ie2='Enrolled in school:'
B14007Ie3='Enrolled in nursery school, preschool'
B14007Ie4='Enrolled in kindergarten'
B14007Ie5='Enrolled in grade 1'
B14007Ie6='Enrolled in grade 2'
B14007Ie7='Enrolled in grade 3'
B14007Ie8='Enrolled in grade 4'
B14007Ie9='Enrolled in grade 5'
B14007Ie10='Enrolled in grade 6'
B14007Ie11='Enrolled in grade 7'
B14007Ie12='Enrolled in grade 8'
B14007Ie13='Enrolled in grade 9'
B14007Ie14='Enrolled in grade 10'
B14007Ie15='Enrolled in grade 11'
B14007Ie16='Enrolled in grade 12'
B14007Ie17='Enrolled in college, undergraduate years'
B14007Ie18='Graduate or professional school'
B14007Ie19='Not enrolled in school'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B14007Be1
B14007Be2
B14007Be3
B14007Be4
B14007Be5
B14007Be6
B14007Be7
B14007Be8
B14007Be9
B14007Be10
B14007Be11
B14007Be12
B14007Be13
B14007Be14
B14007Be15
B14007Be16
B14007Be17
B14007Be18
B14007Be19
 
B14007Ce1
B14007Ce2
B14007Ce3
B14007Ce4
B14007Ce5
B14007Ce6
B14007Ce7
B14007Ce8
B14007Ce9
B14007Ce10
B14007Ce11
B14007Ce12
B14007Ce13
B14007Ce14
B14007Ce15
B14007Ce16
B14007Ce17
B14007Ce18
B14007Ce19
 
B14007De1
B14007De2
B14007De3
B14007De4
B14007De5
B14007De6
B14007De7
B14007De8
B14007De9
B14007De10
B14007De11
B14007De12
B14007De13
B14007De14
B14007De15
B14007De16
B14007De17
B14007De18
B14007De19
 
B14007Ee1
B14007Ee2
B14007Ee3
B14007Ee4
B14007Ee5
B14007Ee6
B14007Ee7
B14007Ee8
B14007Ee9
B14007Ee10
B14007Ee11
B14007Ee12
B14007Ee13
B14007Ee14
B14007Ee15
B14007Ee16
B14007Ee17
B14007Ee18
B14007Ee19
 
B14007Fe1
B14007Fe2
B14007Fe3
B14007Fe4
B14007Fe5
B14007Fe6
B14007Fe7
B14007Fe8
B14007Fe9
B14007Fe10
B14007Fe11
B14007Fe12
B14007Fe13
B14007Fe14
B14007Fe15
B14007Fe16
B14007Fe17
B14007Fe18
B14007Fe19
 
B14007Ge1
B14007Ge2
B14007Ge3
B14007Ge4
B14007Ge5
B14007Ge6
B14007Ge7
B14007Ge8
B14007Ge9
B14007Ge10
B14007Ge11
B14007Ge12
B14007Ge13
B14007Ge14
B14007Ge15
B14007Ge16
B14007Ge17
B14007Ge18
B14007Ge19
 
B14007He1
B14007He2
B14007He3
B14007He4
B14007He5
B14007He6
B14007He7
B14007He8
B14007He9
B14007He10
B14007He11
B14007He12
B14007He13
B14007He14
B14007He15
B14007He16
B14007He17
B14007He18
B14007He19
 
B14007Ie1
B14007Ie2
B14007Ie3
B14007Ie4
B14007Ie5
B14007Ie6
B14007Ie7
B14007Ie8
B14007Ie9
B14007Ie10
B14007Ie11
B14007Ie12
B14007Ie13
B14007Ie14
B14007Ie15
B14007Ie16
B14007Ie17
B14007Ie18
B14007Ie19
;
RUN;
TITLE2;
