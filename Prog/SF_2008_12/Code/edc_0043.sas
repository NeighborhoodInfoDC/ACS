TITLE2 "e20125dc0043000";
DATA work.SFe0043dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0043000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SEX BY AGE BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 18 YEARS AND OVER */
/*Universe:  Population 18 years and over */
 
B15001e1='Total:'
B15001e2='Male:'
B15001e3='18 to 24 years:'
B15001e4='Less than 9th grade'
B15001e5='9th to 12th grade, no diploma'
B15001e6='High school graduate, GED, or alternative'
B15001e7='Some college, no degree'
B15001e8='Associate''s degree'
B15001e9='Bachelor''s degree'
B15001e10='Graduate or professional degree'
B15001e11='25 to 34 years:'
B15001e12='Less than 9th grade'
B15001e13='9th to 12th grade, no diploma'
B15001e14='High school graduate, GED, or alternative'
B15001e15='Some college, no degree'
B15001e16='Associate''s degree'
B15001e17='Bachelor''s degree'
B15001e18='Graduate or professional degree'
B15001e19='35 to 44 years:'
B15001e20='Less than 9th grade'
B15001e21='9th to 12th grade, no diploma'
B15001e22='High school graduate, GED, or alternative'
B15001e23='Some college, no degree'
B15001e24='Associate''s degree'
B15001e25='Bachelor''s degree'
B15001e26='Graduate or professional degree'
B15001e27='45 to 64 years:'
B15001e28='Less than 9th grade'
B15001e29='9th to 12th grade, no diploma'
B15001e30='High school graduate, GED, or alternative'
B15001e31='Some college, no degree'
B15001e32='Associate''s degree'
B15001e33='Bachelor''s degree'
B15001e34='Graduate or professional degree'
B15001e35='65 years and over:'
B15001e36='Less than 9th grade'
B15001e37='9th to 12th grade, no diploma'
B15001e38='High school graduate, GED, or alternative'
B15001e39='Some college, no degree'
B15001e40='Associate''s degree'
B15001e41='Bachelor''s degree'
B15001e42='Graduate or professional degree'
B15001e43='Female:'
B15001e44='18 to 24 years:'
B15001e45='Less than 9th grade'
B15001e46='9th to 12th grade, no diploma'
B15001e47='High school graduate, GED, or alternative'
B15001e48='Some college, no degree'
B15001e49='Associate''s degree'
B15001e50='Bachelor''s degree'
B15001e51='Graduate or professional degree'
B15001e52='25 to 34 years:'
B15001e53='Less than 9th grade'
B15001e54='9th to 12th grade, no diploma'
B15001e55='High school graduate, GED, or alternative'
B15001e56='Some college, no degree'
B15001e57='Associate''s degree'
B15001e58='Bachelor''s degree'
B15001e59='Graduate or professional degree'
B15001e60='35 to 44 years:'
B15001e61='Less than 9th grade'
B15001e62='9th to 12th grade, no diploma'
B15001e63='High school graduate, GED, or alternative'
B15001e64='Some college, no degree'
B15001e65='Associate''s degree'
B15001e66='Bachelor''s degree'
B15001e67='Graduate or professional degree'
B15001e68='45 to 64 years:'
B15001e69='Less than 9th grade'
B15001e70='9th to 12th grade, no diploma'
B15001e71='High school graduate, GED, or alternative'
B15001e72='Some college, no degree'
B15001e73='Associate''s degree'
B15001e74='Bachelor''s degree'
B15001e75='Graduate or professional degree'
B15001e76='65 years and over:'
B15001e77='Less than 9th grade'
B15001e78='9th to 12th grade, no diploma'
B15001e79='High school graduate, GED, or alternative'
B15001e80='Some college, no degree'
B15001e81='Associate''s degree'
B15001e82='Bachelor''s degree'
B15001e83='Graduate or professional degree'
/*SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER */
/*Universe:  Population 25 years and over */
 
B15002e1='Total:'
B15002e2='Male:'
B15002e3='No schooling completed'
B15002e4='Nursery to 4th grade'
B15002e5='5th and 6th grade'
B15002e6='7th and 8th grade'
B15002e7='9th grade'
B15002e8='10th grade'
B15002e9='11th grade'
B15002e10='12th grade, no diploma'
B15002e11='High school graduate, GED, or alternative'
B15002e12='Some college, less than 1 year'
B15002e13='Some college, 1 or more years, no degree'
B15002e14='Associate''s degree'
B15002e15='Bachelor''s degree'
B15002e16='Master''s degree'
B15002e17='Professional school degree'
B15002e18='Doctorate degree'
B15002e19='Female:'
B15002e20='No schooling completed'
B15002e21='Nursery to 4th grade'
B15002e22='5th and 6th grade'
B15002e23='7th and 8th grade'
B15002e24='9th grade'
B15002e25='10th grade'
B15002e26='11th grade'
B15002e27='12th grade, no diploma'
B15002e28='High school graduate, GED, or alternative'
B15002e29='Some college, less than 1 year'
B15002e30='Some college, 1 or more years, no degree'
B15002e31='Associate''s degree'
B15002e32='Bachelor''s degree'
B15002e33='Master''s degree'
B15002e34='Professional school degree'
B15002e35='Doctorate degree'
/*EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER */
/*Universe:  Population 25 years and over */
 
B15003e1='Total:'
B15003e2='No schooling completed'
B15003e3='Nursery school'
B15003e4='Kindergarten'
B15003e5='1st grade'
B15003e6='2nd grade'
B15003e7='3rd grade'
B15003e8='4th grade'
B15003e9='5th grade'
B15003e10='6th grade'
B15003e11='7th grade'
B15003e12='8th grade'
B15003e13='9th grade'
B15003e14='10th grade'
B15003e15='11th grade'
B15003e16='12th grade, no diploma'
B15003e17='Regular high school diploma'
B15003e18='GED or alternative credential'
B15003e19='Some college, less than 1 year'
B15003e20='Some college, 1 or more years, no degree'
B15003e21='Associate''s degree'
B15003e22='Bachelor''s degree'
B15003e23='Master''s degree'
B15003e24='Professional school degree'
B15003e25='Doctorate degree'
/*SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER (WHITE ALONE) */
/*Universe:  White alone population 25 years and over */
 
C15002Ae1='Total:'
C15002Ae2='Male:'
C15002Ae3='Less than high school diploma'
C15002Ae4='High school graduate, GED, or alternative'
C15002Ae5='Some college or associate''s degree'
C15002Ae6='Bachelor''s degree or higher'
C15002Ae7='Female:'
C15002Ae8='Less than high school diploma'
C15002Ae9='High school graduate, GED, or alternative'
C15002Ae10='Some college or associate''s degree'
C15002Ae11='Bachelor''s degree or higher'
/*SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone population 25 years and over */
 
C15002Be1='Total:'
C15002Be2='Male:'
C15002Be3='Less than high school diploma'
C15002Be4='High school graduate, GED, or alternative'
C15002Be5='Some college or associate''s degree'
C15002Be6='Bachelor''s degree or higher'
C15002Be7='Female:'
C15002Be8='Less than high school diploma'
C15002Be9='High school graduate, GED, or alternative'
C15002Be10='Some college or associate''s degree'
C15002Be11='Bachelor''s degree or higher'
/*SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone population 25 years and over */
 
C15002Ce1='Total:'
C15002Ce2='Male:'
C15002Ce3='Less than high school diploma'
C15002Ce4='High school graduate, GED, or alternative'
C15002Ce5='Some college or associate''s degree'
C15002Ce6='Bachelor''s degree or higher'
C15002Ce7='Female:'
C15002Ce8='Less than high school diploma'
C15002Ce9='High school graduate, GED, or alternative'
C15002Ce10='Some college or associate''s degree'
C15002Ce11='Bachelor''s degree or higher'
/*SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER (ASIAN ALONE) */
/*Universe:  Asian alone population 25 years and over */
 
C15002De1='Total:'
C15002De2='Male:'
C15002De3='Less than high school diploma'
C15002De4='High school graduate, GED, or alternative'
C15002De5='Some college or associate''s degree'
C15002De6='Bachelor''s degree or higher'
C15002De7='Female:'
C15002De8='Less than high school diploma'
C15002De9='High school graduate, GED, or alternative'
C15002De10='Some college or associate''s degree'
C15002De11='Bachelor''s degree or higher'
/*SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 25 years and over */
 
C15002Ee1='Total:'
C15002Ee2='Male:'
C15002Ee3='Less than high school diploma'
C15002Ee4='High school graduate, GED, or alternative'
C15002Ee5='Some college or associate''s degree'
C15002Ee6='Bachelor''s degree or higher'
C15002Ee7='Female:'
C15002Ee8='Less than high school diploma'
C15002Ee9='High school graduate, GED, or alternative'
C15002Ee10='Some college or associate''s degree'
C15002Ee11='Bachelor''s degree or higher'
/*SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone population 25 years and over */
 
C15002Fe1='Total:'
C15002Fe2='Male:'
C15002Fe3='Less than high school diploma'
C15002Fe4='High school graduate, GED, or alternative'
C15002Fe5='Some college or associate''s degree'
C15002Fe6='Bachelor''s degree or higher'
C15002Fe7='Female:'
C15002Fe8='Less than high school diploma'
C15002Fe9='High school graduate, GED, or alternative'
C15002Fe10='Some college or associate''s degree'
C15002Fe11='Bachelor''s degree or higher'
/*SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER (TWO OR MORE RACES) */
/*Universe:  Two or more races population 25 years and over */
 
C15002Ge1='Total:'
C15002Ge2='Male:'
C15002Ge3='Less than high school diploma'
C15002Ge4='High school graduate, GED, or alternative'
C15002Ge5='Some college or associate''s degree'
C15002Ge6='Bachelor''s degree or higher'
C15002Ge7='Female:'
C15002Ge8='Less than high school diploma'
C15002Ge9='High school graduate, GED, or alternative'
C15002Ge10='Some college or associate''s degree'
C15002Ge11='Bachelor''s degree or higher'
/*SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population 25 years and over */
 
C15002He1='Total:'
C15002He2='Male:'
C15002He3='Less than high school diploma'
C15002He4='High school graduate, GED, or alternative'
C15002He5='Some college or associate''s degree'
C15002He6='Bachelor''s degree or higher'
C15002He7='Female:'
C15002He8='Less than high school diploma'
C15002He9='High school graduate, GED, or alternative'
C15002He10='Some college or associate''s degree'
C15002He11='Bachelor''s degree or higher'
/*SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population 25 years and over */
 
C15002Ie1='Total:'
C15002Ie2='Male:'
C15002Ie3='Less than high school diploma'
C15002Ie4='High school graduate, GED, or alternative'
C15002Ie5='Some college or associate''s degree'
C15002Ie6='Bachelor''s degree or higher'
C15002Ie7='Female:'
C15002Ie8='Less than high school diploma'
C15002Ie9='High school graduate, GED, or alternative'
C15002Ie10='Some college or associate''s degree'
C15002Ie11='Bachelor''s degree or higher'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B15001e1
B15001e2
B15001e3
B15001e4
B15001e5
B15001e6
B15001e7
B15001e8
B15001e9
B15001e10
B15001e11
B15001e12
B15001e13
B15001e14
B15001e15
B15001e16
B15001e17
B15001e18
B15001e19
B15001e20
B15001e21
B15001e22
B15001e23
B15001e24
B15001e25
B15001e26
B15001e27
B15001e28
B15001e29
B15001e30
B15001e31
B15001e32
B15001e33
B15001e34
B15001e35
B15001e36
B15001e37
B15001e38
B15001e39
B15001e40
B15001e41
B15001e42
B15001e43
B15001e44
B15001e45
B15001e46
B15001e47
B15001e48
B15001e49
B15001e50
B15001e51
B15001e52
B15001e53
B15001e54
B15001e55
B15001e56
B15001e57
B15001e58
B15001e59
B15001e60
B15001e61
B15001e62
B15001e63
B15001e64
B15001e65
B15001e66
B15001e67
B15001e68
B15001e69
B15001e70
B15001e71
B15001e72
B15001e73
B15001e74
B15001e75
B15001e76
B15001e77
B15001e78
B15001e79
B15001e80
B15001e81
B15001e82
B15001e83
 
B15002e1
B15002e2
B15002e3
B15002e4
B15002e5
B15002e6
B15002e7
B15002e8
B15002e9
B15002e10
B15002e11
B15002e12
B15002e13
B15002e14
B15002e15
B15002e16
B15002e17
B15002e18
B15002e19
B15002e20
B15002e21
B15002e22
B15002e23
B15002e24
B15002e25
B15002e26
B15002e27
B15002e28
B15002e29
B15002e30
B15002e31
B15002e32
B15002e33
B15002e34
B15002e35
 
B15003e1
B15003e2
B15003e3
B15003e4
B15003e5
B15003e6
B15003e7
B15003e8
B15003e9
B15003e10
B15003e11
B15003e12
B15003e13
B15003e14
B15003e15
B15003e16
B15003e17
B15003e18
B15003e19
B15003e20
B15003e21
B15003e22
B15003e23
B15003e24
B15003e25
 
C15002Ae1
C15002Ae2
C15002Ae3
C15002Ae4
C15002Ae5
C15002Ae6
C15002Ae7
C15002Ae8
C15002Ae9
C15002Ae10
C15002Ae11
 
C15002Be1
C15002Be2
C15002Be3
C15002Be4
C15002Be5
C15002Be6
C15002Be7
C15002Be8
C15002Be9
C15002Be10
C15002Be11
 
C15002Ce1
C15002Ce2
C15002Ce3
C15002Ce4
C15002Ce5
C15002Ce6
C15002Ce7
C15002Ce8
C15002Ce9
C15002Ce10
C15002Ce11
 
C15002De1
C15002De2
C15002De3
C15002De4
C15002De5
C15002De6
C15002De7
C15002De8
C15002De9
C15002De10
C15002De11
 
C15002Ee1
C15002Ee2
C15002Ee3
C15002Ee4
C15002Ee5
C15002Ee6
C15002Ee7
C15002Ee8
C15002Ee9
C15002Ee10
C15002Ee11
 
C15002Fe1
C15002Fe2
C15002Fe3
C15002Fe4
C15002Fe5
C15002Fe6
C15002Fe7
C15002Fe8
C15002Fe9
C15002Fe10
C15002Fe11
 
C15002Ge1
C15002Ge2
C15002Ge3
C15002Ge4
C15002Ge5
C15002Ge6
C15002Ge7
C15002Ge8
C15002Ge9
C15002Ge10
C15002Ge11
 
C15002He1
C15002He2
C15002He3
C15002He4
C15002He5
C15002He6
C15002He7
C15002He8
C15002He9
C15002He10
C15002He11
 
C15002Ie1
C15002Ie2
C15002Ie3
C15002Ie4
C15002Ie5
C15002Ie6
C15002Ie7
C15002Ie8
C15002Ie9
C15002Ie10
C15002Ie11
;
RUN;
TITLE2;
