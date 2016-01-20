TITLE2 "e20115dc0009000";
DATA work.SFe0009dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0009000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*NATIVITY AND CITIZENSHIP STATUS IN THE UNITED STATES */
/*Universe:  Total population in the United States */
 
B05001e1='Total:'
B05001e2='U.S. citizen, born in the United States'
B05001e3='U.S. citizen, born in Puerto Rico or U.S. Island Areas'
B05001e4='U.S. citizen, born abroad of American parent(s)'
B05001e5='U.S. citizen by naturalization'
B05001e6='Not a U.S. citizen'
 
/*NATIVITY AND CITIZENSHIP STATUS IN PUERTO RICO */
/*Universe:  Total population in Puerto Rico */
 
B05001PRe1='Total:'
B05001PRe2='U.S. citizen, born in Puerto Rico'
B05001PRe3='U.S. citizen, born in U.S. or U.S. Island Areas'
B05001PRe4='U.S. citizen, born abroad of American parent(s)'
B05001PRe5='U.S. citizen by naturalization'
B05001PRe6='Not a U.S. citizen'
 
/*PLACE OF BIRTH BY NATIVITY AND CITIZENSHIP STATUS */
/*Universe:  Total population */
 
B05002e1='Total:'
B05002e2='Native:'
B05002e3='Born in state of residence'
B05002e4='Born in other state in the United States:'
B05002e5='Northeast'
B05002e6='Midwest'
B05002e7='South'
B05002e8='West'
B05002e9='Born outside the United States:'
B05002e10='Puerto Rico'
B05002e11='U.S. Island Areas'
B05002e12='Born abroad of American parent(s)'
B05002e13='Foreign born:'
B05002e14='Naturalized U.S. citizen'
B05002e15='Not a U.S. citizen'
 
/*SEX BY AGE BY NATIVITY AND CITIZENSHIP STATUS */
/*Universe:  Total population */
 
B05003e1='Total:'
B05003e2='Male:'
B05003e3='Under 18 years:'
B05003e4='Native'
B05003e5='Foreign born:'
B05003e6='Naturalized U.S. citizen'
B05003e7='Not a U.S. citizen'
B05003e8='18 years and over:'
B05003e9='Native'
B05003e10='Foreign born:'
B05003e11='Naturalized U.S. citizen'
B05003e12='Not a U.S. citizen'
B05003e13='Female:'
B05003e14='Under 18 years:'
B05003e15='Native'
B05003e16='Foreign born:'
B05003e17='Naturalized U.S. citizen'
B05003e18='Not a U.S. citizen'
B05003e19='18 years and over:'
B05003e20='Native'
B05003e21='Foreign born:'
B05003e22='Naturalized U.S. citizen'
B05003e23='Not a U.S. citizen'
 
/*SEX BY AGE BY NATIVITY AND CITIZENSHIP STATUS (WHITE ALONE) */
/*Universe:  People who are White alone */
 
B05003Ae1='Total:'
B05003Ae2='Male:'
B05003Ae3='Under 18 years:'
B05003Ae4='Native'
B05003Ae5='Foreign born:'
B05003Ae6='Naturalized U.S. citizen'
B05003Ae7='Not a U.S. citizen'
B05003Ae8='18 years and over:'
B05003Ae9='Native'
B05003Ae10='Foreign born:'
B05003Ae11='Naturalized U.S. citizen'
B05003Ae12='Not a U.S. citizen'
B05003Ae13='Female:'
B05003Ae14='Under 18 years:'
B05003Ae15='Native'
B05003Ae16='Foreign born:'
B05003Ae17='Naturalized U.S. citizen'
B05003Ae18='Not a U.S. citizen'
B05003Ae19='18 years and over:'
B05003Ae20='Native'
B05003Ae21='Foreign born:'
B05003Ae22='Naturalized U.S. citizen'
B05003Ae23='Not a U.S. citizen'
 
/*SEX BY AGE BY NATIVITY AND CITIZENSHIP STATUS (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone */
 
B05003Be1='Total:'
B05003Be2='Male:'
B05003Be3='Under 18 years:'
B05003Be4='Native'
B05003Be5='Foreign born:'
B05003Be6='Naturalized U.S. citizen'
B05003Be7='Not a U.S. citizen'
B05003Be8='18 years and over:'
B05003Be9='Native'
B05003Be10='Foreign born:'
B05003Be11='Naturalized U.S. citizen'
B05003Be12='Not a U.S. citizen'
B05003Be13='Female:'
B05003Be14='Under 18 years:'
B05003Be15='Native'
B05003Be16='Foreign born:'
B05003Be17='Naturalized U.S. citizen'
B05003Be18='Not a U.S. citizen'
B05003Be19='18 years and over:'
B05003Be20='Native'
B05003Be21='Foreign born:'
B05003Be22='Naturalized U.S. citizen'
B05003Be23='Not a U.S. citizen'
 
/*SEX BY AGE BY NATIVITY AND CITIZENSHIP STATUS (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  People who are American Indian and Alaska Native alone */
 
B05003Ce1='Total:'
B05003Ce2='Male:'
B05003Ce3='Under 18 years:'
B05003Ce4='Native'
B05003Ce5='Foreign born:'
B05003Ce6='Naturalized U.S. citizen'
B05003Ce7='Not a U.S. citizen'
B05003Ce8='18 years and over:'
B05003Ce9='Native'
B05003Ce10='Foreign born:'
B05003Ce11='Naturalized U.S. citizen'
B05003Ce12='Not a U.S. citizen'
B05003Ce13='Female:'
B05003Ce14='Under 18 years:'
B05003Ce15='Native'
B05003Ce16='Foreign born:'
B05003Ce17='Naturalized U.S. citizen'
B05003Ce18='Not a U.S. citizen'
B05003Ce19='18 years and over:'
B05003Ce20='Native'
B05003Ce21='Foreign born:'
B05003Ce22='Naturalized U.S. citizen'
B05003Ce23='Not a U.S. citizen'
 
/*SEX BY AGE BY NATIVITY AND CITIZENSHIP STATUS (ASIAN ALONE) */
/*Universe:  People who are Asian alone */
 
B05003De1='Total:'
B05003De2='Male:'
B05003De3='Under 18 years:'
B05003De4='Native'
B05003De5='Foreign born:'
B05003De6='Naturalized U.S. citizen'
B05003De7='Not a U.S. citizen'
B05003De8='18 years and over:'
B05003De9='Native'
B05003De10='Foreign born:'
B05003De11='Naturalized U.S. citizen'
B05003De12='Not a U.S. citizen'
B05003De13='Female:'
B05003De14='Under 18 years:'
B05003De15='Native'
B05003De16='Foreign born:'
B05003De17='Naturalized U.S. citizen'
B05003De18='Not a U.S. citizen'
B05003De19='18 years and over:'
B05003De20='Native'
B05003De21='Foreign born:'
B05003De22='Naturalized U.S. citizen'
B05003De23='Not a U.S. citizen'
 
/*SEX BY AGE BY NATIVITY AND CITIZENSHIP STATUS (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  People who are Native Hawaiian and Other Pacific Islander alone */
 
B05003Ee1='Total:'
B05003Ee2='Male:'
B05003Ee3='Under 18 years:'
B05003Ee4='Native'
B05003Ee5='Foreign born:'
B05003Ee6='Naturalized U.S. citizen'
B05003Ee7='Not a U.S. citizen'
B05003Ee8='18 years and over:'
B05003Ee9='Native'
B05003Ee10='Foreign born:'
B05003Ee11='Naturalized U.S. citizen'
B05003Ee12='Not a U.S. citizen'
B05003Ee13='Female:'
B05003Ee14='Under 18 years:'
B05003Ee15='Native'
B05003Ee16='Foreign born:'
B05003Ee17='Naturalized U.S. citizen'
B05003Ee18='Not a U.S. citizen'
B05003Ee19='18 years and over:'
B05003Ee20='Native'
B05003Ee21='Foreign born:'
B05003Ee22='Naturalized U.S. citizen'
B05003Ee23='Not a U.S. citizen'
 
/*SEX BY AGE BY NATIVITY AND CITIZENSHIP STATUS (SOME OTHER RACE ALONE) */
/*Universe:  People who are Some Other Race alone */
 
B05003Fe1='Total:'
B05003Fe2='Male:'
B05003Fe3='Under 18 years:'
B05003Fe4='Native'
B05003Fe5='Foreign born:'
B05003Fe6='Naturalized U.S. citizen'
B05003Fe7='Not a U.S. citizen'
B05003Fe8='18 years and over:'
B05003Fe9='Native'
B05003Fe10='Foreign born:'
B05003Fe11='Naturalized U.S. citizen'
B05003Fe12='Not a U.S. citizen'
B05003Fe13='Female:'
B05003Fe14='Under 18 years:'
B05003Fe15='Native'
B05003Fe16='Foreign born:'
B05003Fe17='Naturalized U.S. citizen'
B05003Fe18='Not a U.S. citizen'
B05003Fe19='18 years and over:'
B05003Fe20='Native'
B05003Fe21='Foreign born:'
B05003Fe22='Naturalized U.S. citizen'
B05003Fe23='Not a U.S. citizen'
 
/*SEX BY AGE BY NATIVITY AND CITIZENSHIP STATUS (TWO OR MORE RACES) */
/*Universe:  People who are Two or More Races */
 
B05003Ge1='Total:'
B05003Ge2='Male:'
B05003Ge3='Under 18 years:'
B05003Ge4='Native'
B05003Ge5='Foreign born:'
B05003Ge6='Naturalized U.S. citizen'
B05003Ge7='Not a U.S. citizen'
B05003Ge8='18 years and over:'
B05003Ge9='Native'
B05003Ge10='Foreign born:'
B05003Ge11='Naturalized U.S. citizen'
B05003Ge12='Not a U.S. citizen'
B05003Ge13='Female:'
B05003Ge14='Under 18 years:'
B05003Ge15='Native'
B05003Ge16='Foreign born:'
B05003Ge17='Naturalized U.S. citizen'
B05003Ge18='Not a U.S. citizen'
B05003Ge19='18 years and over:'
B05003Ge20='Native'
B05003Ge21='Foreign born:'
B05003Ge22='Naturalized U.S. citizen'
B05003Ge23='Not a U.S. citizen'
 
/*SEX BY AGE BY NATIVITY AND CITIZENSHIP STATUS (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population */
 
B05003He1='Total:'
B05003He2='Male:'
B05003He3='Under 18 years:'
B05003He4='Native'
B05003He5='Foreign born:'
B05003He6='Naturalized U.S. citizen'
B05003He7='Not a U.S. citizen'
B05003He8='18 years and over:'
B05003He9='Native'
B05003He10='Foreign born:'
B05003He11='Naturalized U.S. citizen'
B05003He12='Not a U.S. citizen'
B05003He13='Female:'
B05003He14='Under 18 years:'
B05003He15='Native'
B05003He16='Foreign born:'
B05003He17='Naturalized U.S. citizen'
B05003He18='Not a U.S. citizen'
B05003He19='18 years and over:'
B05003He20='Native'
B05003He21='Foreign born:'
B05003He22='Naturalized U.S. citizen'
B05003He23='Not a U.S. citizen'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B05001e1
B05001e2
B05001e3
B05001e4
B05001e5
B05001e6
 
B05001PRe1
B05001PRe2
B05001PRe3
B05001PRe4
B05001PRe5
B05001PRe6
 
B05002e1
B05002e2
B05002e3
B05002e4
B05002e5
B05002e6
B05002e7
B05002e8
B05002e9
B05002e10
B05002e11
B05002e12
B05002e13
B05002e14
B05002e15
 
B05003e1
B05003e2
B05003e3
B05003e4
B05003e5
B05003e6
B05003e7
B05003e8
B05003e9
B05003e10
B05003e11
B05003e12
B05003e13
B05003e14
B05003e15
B05003e16
B05003e17
B05003e18
B05003e19
B05003e20
B05003e21
B05003e22
B05003e23
 
B05003Ae1
B05003Ae2
B05003Ae3
B05003Ae4
B05003Ae5
B05003Ae6
B05003Ae7
B05003Ae8
B05003Ae9
B05003Ae10
B05003Ae11
B05003Ae12
B05003Ae13
B05003Ae14
B05003Ae15
B05003Ae16
B05003Ae17
B05003Ae18
B05003Ae19
B05003Ae20
B05003Ae21
B05003Ae22
B05003Ae23
 
B05003Be1
B05003Be2
B05003Be3
B05003Be4
B05003Be5
B05003Be6
B05003Be7
B05003Be8
B05003Be9
B05003Be10
B05003Be11
B05003Be12
B05003Be13
B05003Be14
B05003Be15
B05003Be16
B05003Be17
B05003Be18
B05003Be19
B05003Be20
B05003Be21
B05003Be22
B05003Be23
 
B05003Ce1
B05003Ce2
B05003Ce3
B05003Ce4
B05003Ce5
B05003Ce6
B05003Ce7
B05003Ce8
B05003Ce9
B05003Ce10
B05003Ce11
B05003Ce12
B05003Ce13
B05003Ce14
B05003Ce15
B05003Ce16
B05003Ce17
B05003Ce18
B05003Ce19
B05003Ce20
B05003Ce21
B05003Ce22
B05003Ce23
 
B05003De1
B05003De2
B05003De3
B05003De4
B05003De5
B05003De6
B05003De7
B05003De8
B05003De9
B05003De10
B05003De11
B05003De12
B05003De13
B05003De14
B05003De15
B05003De16
B05003De17
B05003De18
B05003De19
B05003De20
B05003De21
B05003De22
B05003De23
 
B05003Ee1
B05003Ee2
B05003Ee3
B05003Ee4
B05003Ee5
B05003Ee6
B05003Ee7
B05003Ee8
B05003Ee9
B05003Ee10
B05003Ee11
B05003Ee12
B05003Ee13
B05003Ee14
B05003Ee15
B05003Ee16
B05003Ee17
B05003Ee18
B05003Ee19
B05003Ee20
B05003Ee21
B05003Ee22
B05003Ee23
 
B05003Fe1
B05003Fe2
B05003Fe3
B05003Fe4
B05003Fe5
B05003Fe6
B05003Fe7
B05003Fe8
B05003Fe9
B05003Fe10
B05003Fe11
B05003Fe12
B05003Fe13
B05003Fe14
B05003Fe15
B05003Fe16
B05003Fe17
B05003Fe18
B05003Fe19
B05003Fe20
B05003Fe21
B05003Fe22
B05003Fe23
 
B05003Ge1
B05003Ge2
B05003Ge3
B05003Ge4
B05003Ge5
B05003Ge6
B05003Ge7
B05003Ge8
B05003Ge9
B05003Ge10
B05003Ge11
B05003Ge12
B05003Ge13
B05003Ge14
B05003Ge15
B05003Ge16
B05003Ge17
B05003Ge18
B05003Ge19
B05003Ge20
B05003Ge21
B05003Ge22
B05003Ge23
 
B05003He1
B05003He2
B05003He3
B05003He4
B05003He5
B05003He6
B05003He7
B05003He8
B05003He9
B05003He10
B05003He11
B05003He12
B05003He13
B05003He14
B05003He15
B05003He16
B05003He17
B05003He18
B05003He19
B05003He20
B05003He21
B05003He22
B05003He23
;
RUN;
TITLE2;
