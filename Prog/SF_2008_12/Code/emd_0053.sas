TITLE2 "e20125md0053000";
DATA work.SFe0053md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0053000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*POVERTY STATUS IN THE PAST 12 MONTHS BY HOUSEHOLD TYPE BY AGE OF HOUSEHOLDER */
/*Universe:  Households */
 
B17017e1='Total:'
B17017e2='Income in the past 12 months below poverty level:'
B17017e3='Family households:'
B17017e4='Married-couple family:'
B17017e5='Householder under 25 years'
B17017e6='Householder 25 to 44 years'
B17017e7='Householder 45 to 64 years'
B17017e8='Householder 65 years and over'
B17017e9='Other family:'
B17017e10='Male householder, no wife present:'
B17017e11='Householder under 25 years'
B17017e12='Householder 25 to 44 years'
B17017e13='Householder 45 to 64 years'
B17017e14='Householder 65 years and over'
B17017e15='Female householder, no husband present:'
B17017e16='Householder under 25 years'
B17017e17='Householder 25 to 44 years'
B17017e18='Householder 45 to 64 years'
B17017e19='Householder 65 years and over'
B17017e20='Nonfamily households:'
B17017e21='Male householder:'
B17017e22='Householder under 25 years'
B17017e23='Householder 25 to 44 years'
B17017e24='Householder 45 to 64 years'
B17017e25='Householder 65 years and over'
B17017e26='Female householder:'
B17017e27='Householder under 25 years'
B17017e28='Householder 25 to 44 years'
B17017e29='Householder 45 to 64 years'
B17017e30='Householder 65 years and over'
B17017e31='Income in the past 12 months at or above poverty level:'
B17017e32='Family households:'
B17017e33='Married-couple family:'
B17017e34='Householder under 25 years'
B17017e35='Householder 25 to 44 years'
B17017e36='Householder 45 to 64 years'
B17017e37='Householder 65 years and over'
B17017e38='Other family:'
B17017e39='Male householder, no wife present:'
B17017e40='Householder under 25 years'
B17017e41='Householder 25 to 44 years'
B17017e42='Householder 45 to 64 years'
B17017e43='Householder 65 years and over'
B17017e44='Female householder, no husband present:'
B17017e45='Householder under 25 years'
B17017e46='Householder 25 to 44 years'
B17017e47='Householder 45 to 64 years'
B17017e48='Householder 65 years and over'
B17017e49='Nonfamily households:'
B17017e50='Male householder:'
B17017e51='Householder under 25 years'
B17017e52='Householder 25 to 44 years'
B17017e53='Householder 45 to 64 years'
B17017e54='Householder 65 years and over'
B17017e55='Female householder:'
B17017e56='Householder under 25 years'
B17017e57='Householder 25 to 44 years'
B17017e58='Householder 45 to 64 years'
B17017e59='Householder 65 years and over'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY HOUSEHOLD TYPE BY EDUCATIONAL ATTAINMENT OF HOUSEHOLDER */
/*Universe:  Families */
 
B17018e1='Total:'
B17018e2='Income in the past 12 months below poverty level:'
B17018e3='Married-couple family:'
B17018e4='Less than high school graduate'
B17018e5='High school graduate (includes equivalency)'
B17018e6='Some college, associate''s degree'
B17018e7='Bachelor''s degree or higher'
B17018e8='Other families:'
B17018e9='Male householder, no wife present:'
B17018e10='Less than high school graduate'
B17018e11='High school graduate (includes equivalency)'
B17018e12='Some college, associate''s degree'
B17018e13='Bachelor''s degree or higher'
B17018e14='Female householder, no husband present:'
B17018e15='Less than high school graduate'
B17018e16='High school graduate (includes equivalency)'
B17018e17='Some college, associate''s degree'
B17018e18='Bachelor''s degree or higher'
B17018e19='Income in the past 12 months at or above poverty level:'
B17018e20='Married-couple family:'
B17018e21='Less than high school graduate'
B17018e22='High school graduate (includes equivalency)'
B17018e23='Some college, associate''s degree'
B17018e24='Bachelor''s degree or higher'
B17018e25='Other families:'
B17018e26='Male householder, no wife present:'
B17018e27='Less than high school graduate'
B17018e28='High school graduate (includes equivalency)'
B17018e29='Some college, associate''s degree'
B17018e30='Bachelor''s degree or higher'
B17018e31='Female householder, no husband present:'
B17018e32='Less than high school graduate'
B17018e33='High school graduate (includes equivalency)'
B17018e34='Some college, associate''s degree'
B17018e35='Bachelor''s degree or higher'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY HOUSEHOLD TYPE BY TENURE */
/*Universe:  Families */
 
B17019e1='Total:'
B17019e2='Income in the past 12 months below poverty level:'
B17019e3='Married-couple family:'
B17019e4='Owner occupied'
B17019e5='Renter occupied'
B17019e6='Other families:'
B17019e7='Male householder, no wife present:'
B17019e8='Owner occupied'
B17019e9='Renter occupied'
B17019e10='Female householder, no husband present:'
B17019e11='Owner occupied'
B17019e12='Renter occupied'
B17019e13='Income in the past 12 months at or above poverty level:'
B17019e14='Married-couple family:'
B17019e15='Owner occupied'
B17019e16='Renter occupied'
B17019e17='Other families:'
B17019e18='Male householder, no wife present:'
B17019e19='Owner occupied'
B17019e20='Renter occupied'
B17019e21='Female householder, no husband present:'
B17019e22='Owner occupied'
B17019e23='Renter occupied'
/*POVERTY STATUS IN THE PAST 12 MONTHS BY AGE (WHITE ALONE) */
/*Universe:  White alone population for whom poverty status is determined */
 
B17020Ae1='Total:'
B17020Ae2='Income in the past 12 months below poverty level:'
B17020Ae3='Under 5 years'
B17020Ae4='5 years'
B17020Ae5='6 to 11 years'
B17020Ae6='12 to 17 years'
B17020Ae7='18 to 64 years'
B17020Ae8='65 to 74 years'
B17020Ae9='75 years and over'
B17020Ae10='Income in the past 12 months at or above poverty level:'
B17020Ae11='Under 5 years'
B17020Ae12='5 years'
B17020Ae13='6 to 11 years'
B17020Ae14='12 to 17 years'
B17020Ae15='18 to 64 years'
B17020Ae16='65 to 74 years'
B17020Ae17='75 years and over'
/*POVERTY STATUS IN THE PAST 12 MONTHS BY AGE (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone population for whom poverty status is determined */
 
B17020Be1='Total:'
B17020Be2='Income in the past 12 months below poverty level:'
B17020Be3='Under 5 years'
B17020Be4='5 years'
B17020Be5='6 to 11 years'
B17020Be6='12 to 17 years'
B17020Be7='18 to 64 years'
B17020Be8='65 to 74 years'
B17020Be9='75 years and over'
B17020Be10='Income in the past 12 months at or above poverty level:'
B17020Be11='Under 5 years'
B17020Be12='5 years'
B17020Be13='6 to 11 years'
B17020Be14='12 to 17 years'
B17020Be15='18 to 64 years'
B17020Be16='65 to 74 years'
B17020Be17='75 years and over'
/*POVERTY STATUS IN THE PAST 12 MONTHS BY AGE (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone population for whom poverty status is determined */
 
B17020Ce1='Total:'
B17020Ce2='Income in the past 12 months below poverty level:'
B17020Ce3='Under 5 years'
B17020Ce4='5 years'
B17020Ce5='6 to 11 years'
B17020Ce6='12 to 17 years'
B17020Ce7='18 to 64 years'
B17020Ce8='65 to 74 years'
B17020Ce9='75 years and over'
B17020Ce10='Income in the past 12 months at or above poverty level:'
B17020Ce11='Under 5 years'
B17020Ce12='5 years'
B17020Ce13='6 to 11 years'
B17020Ce14='12 to 17 years'
B17020Ce15='18 to 64 years'
B17020Ce16='65 to 74 years'
B17020Ce17='75 years and over'
/*POVERTY STATUS IN THE PAST 12 MONTHS BY AGE (ASIAN ALONE) */
/*Universe:  Asian alone population for whom poverty status is determined */
 
B17020De1='Total:'
B17020De2='Income in the past 12 months below poverty level:'
B17020De3='Under 5 years'
B17020De4='5 years'
B17020De5='6 to 11 years'
B17020De6='12 to 17 years'
B17020De7='18 to 64 years'
B17020De8='65 to 74 years'
B17020De9='75 years and over'
B17020De10='Income in the past 12 months at or above poverty level:'
B17020De11='Under 5 years'
B17020De12='5 years'
B17020De13='6 to 11 years'
B17020De14='12 to 17 years'
B17020De15='18 to 64 years'
B17020De16='65 to 74 years'
B17020De17='75 years and over'
/*POVERTY STATUS IN THE PAST 12 MONTHS BY AGE (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population for whom poverty status is determined */
 
B17020Ee1='Total:'
B17020Ee2='Income in the past 12 months below poverty level:'
B17020Ee3='Under 5 years'
B17020Ee4='5 years'
B17020Ee5='6 to 11 years'
B17020Ee6='12 to 17 years'
B17020Ee7='18 to 64 years'
B17020Ee8='65 to 74 years'
B17020Ee9='75 years and over'
B17020Ee10='Income in the past 12 months at or above poverty level:'
B17020Ee11='Under 5 years'
B17020Ee12='5 years'
B17020Ee13='6 to 11 years'
B17020Ee14='12 to 17 years'
B17020Ee15='18 to 64 years'
B17020Ee16='65 to 74 years'
B17020Ee17='75 years and over'
/*POVERTY STATUS IN THE PAST 12 MONTHS BY AGE (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone population for whom poverty status is determined */
 
B17020Fe1='Total:'
B17020Fe2='Income in the past 12 months below poverty level:'
B17020Fe3='Under 5 years'
B17020Fe4='5 years'
B17020Fe5='6 to 11 years'
B17020Fe6='12 to 17 years'
B17020Fe7='18 to 64 years'
B17020Fe8='65 to 74 years'
B17020Fe9='75 years and over'
B17020Fe10='Income in the past 12 months at or above poverty level:'
B17020Fe11='Under 5 years'
B17020Fe12='5 years'
B17020Fe13='6 to 11 years'
B17020Fe14='12 to 17 years'
B17020Fe15='18 to 64 years'
B17020Fe16='65 to 74 years'
B17020Fe17='75 years and over'
/*POVERTY STATUS IN THE PAST 12 MONTHS BY AGE (TWO OR MORE RACES) */
/*Universe:  Two or more races population for whom poverty status is determined */
 
B17020Ge1='Total:'
B17020Ge2='Income in the past 12 months below poverty level:'
B17020Ge3='Under 5 years'
B17020Ge4='5 years'
B17020Ge5='6 to 11 years'
B17020Ge6='12 to 17 years'
B17020Ge7='18 to 64 years'
B17020Ge8='65 to 74 years'
B17020Ge9='75 years and over'
B17020Ge10='Income in the past 12 months at or above poverty level:'
B17020Ge11='Under 5 years'
B17020Ge12='5 years'
B17020Ge13='6 to 11 years'
B17020Ge14='12 to 17 years'
B17020Ge15='18 to 64 years'
B17020Ge16='65 to 74 years'
B17020Ge17='75 years and over'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B17017e1
B17017e2
B17017e3
B17017e4
B17017e5
B17017e6
B17017e7
B17017e8
B17017e9
B17017e10
B17017e11
B17017e12
B17017e13
B17017e14
B17017e15
B17017e16
B17017e17
B17017e18
B17017e19
B17017e20
B17017e21
B17017e22
B17017e23
B17017e24
B17017e25
B17017e26
B17017e27
B17017e28
B17017e29
B17017e30
B17017e31
B17017e32
B17017e33
B17017e34
B17017e35
B17017e36
B17017e37
B17017e38
B17017e39
B17017e40
B17017e41
B17017e42
B17017e43
B17017e44
B17017e45
B17017e46
B17017e47
B17017e48
B17017e49
B17017e50
B17017e51
B17017e52
B17017e53
B17017e54
B17017e55
B17017e56
B17017e57
B17017e58
B17017e59
 
B17018e1
B17018e2
B17018e3
B17018e4
B17018e5
B17018e6
B17018e7
B17018e8
B17018e9
B17018e10
B17018e11
B17018e12
B17018e13
B17018e14
B17018e15
B17018e16
B17018e17
B17018e18
B17018e19
B17018e20
B17018e21
B17018e22
B17018e23
B17018e24
B17018e25
B17018e26
B17018e27
B17018e28
B17018e29
B17018e30
B17018e31
B17018e32
B17018e33
B17018e34
B17018e35
 
B17019e1
B17019e2
B17019e3
B17019e4
B17019e5
B17019e6
B17019e7
B17019e8
B17019e9
B17019e10
B17019e11
B17019e12
B17019e13
B17019e14
B17019e15
B17019e16
B17019e17
B17019e18
B17019e19
B17019e20
B17019e21
B17019e22
B17019e23
 
B17020Ae1
B17020Ae2
B17020Ae3
B17020Ae4
B17020Ae5
B17020Ae6
B17020Ae7
B17020Ae8
B17020Ae9
B17020Ae10
B17020Ae11
B17020Ae12
B17020Ae13
B17020Ae14
B17020Ae15
B17020Ae16
B17020Ae17
 
B17020Be1
B17020Be2
B17020Be3
B17020Be4
B17020Be5
B17020Be6
B17020Be7
B17020Be8
B17020Be9
B17020Be10
B17020Be11
B17020Be12
B17020Be13
B17020Be14
B17020Be15
B17020Be16
B17020Be17
 
B17020Ce1
B17020Ce2
B17020Ce3
B17020Ce4
B17020Ce5
B17020Ce6
B17020Ce7
B17020Ce8
B17020Ce9
B17020Ce10
B17020Ce11
B17020Ce12
B17020Ce13
B17020Ce14
B17020Ce15
B17020Ce16
B17020Ce17
 
B17020De1
B17020De2
B17020De3
B17020De4
B17020De5
B17020De6
B17020De7
B17020De8
B17020De9
B17020De10
B17020De11
B17020De12
B17020De13
B17020De14
B17020De15
B17020De16
B17020De17
 
B17020Ee1
B17020Ee2
B17020Ee3
B17020Ee4
B17020Ee5
B17020Ee6
B17020Ee7
B17020Ee8
B17020Ee9
B17020Ee10
B17020Ee11
B17020Ee12
B17020Ee13
B17020Ee14
B17020Ee15
B17020Ee16
B17020Ee17
 
B17020Fe1
B17020Fe2
B17020Fe3
B17020Fe4
B17020Fe5
B17020Fe6
B17020Fe7
B17020Fe8
B17020Fe9
B17020Fe10
B17020Fe11
B17020Fe12
B17020Fe13
B17020Fe14
B17020Fe15
B17020Fe16
B17020Fe17
 
B17020Ge1
B17020Ge2
B17020Ge3
B17020Ge4
B17020Ge5
B17020Ge6
B17020Ge7
B17020Ge8
B17020Ge9
B17020Ge10
B17020Ge11
B17020Ge12
B17020Ge13
B17020Ge14
B17020Ge15
B17020Ge16
B17020Ge17
;
RUN;
TITLE2;
