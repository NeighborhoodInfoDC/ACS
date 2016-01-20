TITLE2 "e20125md0045000";
DATA work.SFe0045md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0045000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*NATIVITY BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER */
/*Universe:  Population 5 years and over */
 
B16005e1='Total:'
B16005e2='Native:'
B16005e3='Speak only English'
B16005e4='Speak Spanish:'
B16005e5='Speak English "very well"'
B16005e6='Speak English "well"'
B16005e7='Speak English "not well"'
B16005e8='Speak English "not at all"'
B16005e9='Speak other Indo-European languages:'
B16005e10='Speak English "very well"'
B16005e11='Speak English "well"'
B16005e12='Speak English "not well"'
B16005e13='Speak English "not at all"'
B16005e14='Speak Asian and Pacific Island languages:'
B16005e15='Speak English "very well"'
B16005e16='Speak English "well"'
B16005e17='Speak English "not well"'
B16005e18='Speak English "not at all"'
B16005e19='Speak other languages:'
B16005e20='Speak English "very well"'
B16005e21='Speak English "well"'
B16005e22='Speak English "not well"'
B16005e23='Speak English "not at all"'
B16005e24='Foreign born:'
B16005e25='Speak only English'
B16005e26='Speak Spanish:'
B16005e27='Speak English "very well"'
B16005e28='Speak English "well"'
B16005e29='Speak English "not well"'
B16005e30='Speak English "not at all"'
B16005e31='Speak other Indo-European languages:'
B16005e32='Speak English "very well"'
B16005e33='Speak English "well"'
B16005e34='Speak English "not well"'
B16005e35='Speak English "not at all"'
B16005e36='Speak Asian and Pacific Island languages:'
B16005e37='Speak English "very well"'
B16005e38='Speak English "well"'
B16005e39='Speak English "not well"'
B16005e40='Speak English "not at all"'
B16005e41='Speak other languages:'
B16005e42='Speak English "very well"'
B16005e43='Speak English "well"'
B16005e44='Speak English "not well"'
B16005e45='Speak English "not at all"'
/*NATIVITY BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER (WHITE ALONE) */
/*Universe:  White alone population 5 years and over */
 
B16005Ae1='Total:'
B16005Ae2='Native:'
B16005Ae3='Speak only English'
B16005Ae4='Speak another language'
B16005Ae5='Speak English "very well"'
B16005Ae6='Speak English less than "very well"'
B16005Ae7='Foreign born:'
B16005Ae8='Speak only English'
B16005Ae9='Speak another language'
B16005Ae10='Speak English "very well"'
B16005Ae11='Speak English less than "very well"'
/*NATIVITY BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone population 5 years and over */
 
B16005Be1='Total:'
B16005Be2='Native:'
B16005Be3='Speak only English'
B16005Be4='Speak another language'
B16005Be5='Speak English "very well"'
B16005Be6='Speak English less than "very well"'
B16005Be7='Foreign born:'
B16005Be8='Speak only English'
B16005Be9='Speak another language'
B16005Be10='Speak English "very well"'
B16005Be11='Speak English less than "very well"'
/*NATIVITY BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone population 5 years and over */
 
B16005Ce1='Total:'
B16005Ce2='Native:'
B16005Ce3='Speak only English'
B16005Ce4='Speak another language'
B16005Ce5='Speak English "very well"'
B16005Ce6='Speak English less than "very well"'
B16005Ce7='Foreign born:'
B16005Ce8='Speak only English'
B16005Ce9='Speak another language'
B16005Ce10='Speak English "very well"'
B16005Ce11='Speak English less than "very well"'
/*NATIVITY BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER (ASIAN ALONE) */
/*Universe:  Asian alone population 5 years and over */
 
B16005De1='Total:'
B16005De2='Native:'
B16005De3='Speak only English'
B16005De4='Speak another language'
B16005De5='Speak English "very well"'
B16005De6='Speak English less than "very well"'
B16005De7='Foreign born:'
B16005De8='Speak only English'
B16005De9='Speak another language'
B16005De10='Speak English "very well"'
B16005De11='Speak English less than "very well"'
/*NATIVITY BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 5 years and over */
 
B16005Ee1='Total:'
B16005Ee2='Native:'
B16005Ee3='Speak only English'
B16005Ee4='Speak another language'
B16005Ee5='Speak English "very well"'
B16005Ee6='Speak English less than "very well"'
B16005Ee7='Foreign born:'
B16005Ee8='Speak only English'
B16005Ee9='Speak another language'
B16005Ee10='Speak English "very well"'
B16005Ee11='Speak English less than "very well"'
/*NATIVITY BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone population 5 years and over */
 
B16005Fe1='Total:'
B16005Fe2='Native:'
B16005Fe3='Speak only English'
B16005Fe4='Speak another language'
B16005Fe5='Speak English "very well"'
B16005Fe6='Speak English less than "very well"'
B16005Fe7='Foreign born:'
B16005Fe8='Speak only English'
B16005Fe9='Speak another language'
B16005Fe10='Speak English "very well"'
B16005Fe11='Speak English less than "very well"'
/*NATIVITY BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER (TWO OR MORE RACES) */
/*Universe:  Two or more races population 5 years and over */
 
B16005Ge1='Total:'
B16005Ge2='Native:'
B16005Ge3='Speak only English'
B16005Ge4='Speak another language'
B16005Ge5='Speak English "very well"'
B16005Ge6='Speak English less than "very well"'
B16005Ge7='Foreign born:'
B16005Ge8='Speak only English'
B16005Ge9='Speak another language'
B16005Ge10='Speak English "very well"'
B16005Ge11='Speak English less than "very well"'
/*NATIVITY BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population 5 years and over */
 
B16005He1='Total:'
B16005He2='Native:'
B16005He3='Speak only English'
B16005He4='Speak another language'
B16005He5='Speak English "very well"'
B16005He6='Speak English less than "very well"'
B16005He7='Foreign born:'
B16005He8='Speak only English'
B16005He9='Speak another language'
B16005He10='Speak English "very well"'
B16005He11='Speak English less than "very well"'
/*NATIVITY BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population 5 years and over */
 
B16005Ie1='Total:'
B16005Ie2='Native:'
B16005Ie3='Speak only English'
B16005Ie4='Speak another language'
B16005Ie5='Speak English "very well"'
B16005Ie6='Speak English less than "very well"'
B16005Ie7='Foreign born:'
B16005Ie8='Speak only English'
B16005Ie9='Speak another language'
B16005Ie10='Speak English "very well"'
B16005Ie11='Speak English less than "very well"'
/*LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population 5 years and over */
 
B16006e1='Total:'
B16006e2='Speak only English'
B16006e3='Speak Spanish:'
B16006e4='Speak English "very well"'
B16006e5='Speak English "well"'
B16006e6='Speak English "not well"'
B16006e7='Speak English "not at all"'
B16006e8='Speak other language'
/*AGE BY LANGUAGE SPOKEN AT HOME FOR THE POPULATION 5 YEARS AND OVER */
/*Universe:  Population 5 years and over */
 
B16007e1='Total:'
B16007e2='5 to 17 years:'
B16007e3='Speak only English'
B16007e4='Speak Spanish'
B16007e5='Speak other Indo-European languages'
B16007e6='Speak Asian and Pacific Island languages'
B16007e7='Speak other languages'
B16007e8='18 to 64 years:'
B16007e9='Speak only English'
B16007e10='Speak Spanish'
B16007e11='Speak other Indo-European languages'
B16007e12='Speak Asian and Pacific Island languages'
B16007e13='Speak other languages'
B16007e14='65 years and over:'
B16007e15='Speak only English'
B16007e16='Speak Spanish'
B16007e17='Speak other Indo-European languages'
B16007e18='Speak Asian and Pacific Island languages'
B16007e19='Speak other languages'
/*CITIZENSHIP STATUS BY AGE BY LANGUAGE SPOKEN AT HOME AND ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER */
/*Universe:  Population 5 years and over */
 
B16008e1='Total:'
B16008e2='Native population:'
B16008e3='5 to 17 years:'
B16008e4='Speak only English'
B16008e5='Speak Spanish'
B16008e6='Speak English "very well"'
B16008e7='Speak English less than "very well"'
B16008e8='Speak other languages'
B16008e9='Speak English "very well"'
B16008e10='Speak English less than "very well"'
B16008e11='18 years and over:'
B16008e12='Speak only English'
B16008e13='Speak Spanish'
B16008e14='Speak English "very well"'
B16008e15='Speak English less than "very well"'
B16008e16='Speak other languages'
B16008e17='Speak English "very well"'
B16008e18='Speak English less than "very well"'
B16008e19='Foreign-born population:'
B16008e20='Naturalized U.S. citizen:'
B16008e21='5 to 17 years:'
B16008e22='Speak only English'
B16008e23='Speak Spanish'
B16008e24='Speak English "very well"'
B16008e25='Speak English less than "very well"'
B16008e26='Speak other languages'
B16008e27='Speak English "very well"'
B16008e28='Speak English less than "very well"'
B16008e29='18 years and over:'
B16008e30='Speak only English'
B16008e31='Speak Spanish'
B16008e32='Speak English "very well"'
B16008e33='Speak English less than "very well"'
B16008e34='Speak other languages'
B16008e35='Speak English "very well"'
B16008e36='Speak English less than "very well"'
B16008e37='Not a U.S. citizen:'
B16008e38='5 to 17 years:'
B16008e39='Speak only English'
B16008e40='Speak Spanish'
B16008e41='Speak English "very well"'
B16008e42='Speak English less than "very well"'
B16008e43='Speak other languages'
B16008e44='Speak English "very well"'
B16008e45='Speak English less than "very well"'
B16008e46='18 years and over:'
B16008e47='Speak only English'
B16008e48='Speak Spanish'
B16008e49='Speak English "very well"'
B16008e50='Speak English less than "very well"'
B16008e51='Speak other languages'
B16008e52='Speak English "very well"'
B16008e53='Speak English less than "very well"'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B16005e1
B16005e2
B16005e3
B16005e4
B16005e5
B16005e6
B16005e7
B16005e8
B16005e9
B16005e10
B16005e11
B16005e12
B16005e13
B16005e14
B16005e15
B16005e16
B16005e17
B16005e18
B16005e19
B16005e20
B16005e21
B16005e22
B16005e23
B16005e24
B16005e25
B16005e26
B16005e27
B16005e28
B16005e29
B16005e30
B16005e31
B16005e32
B16005e33
B16005e34
B16005e35
B16005e36
B16005e37
B16005e38
B16005e39
B16005e40
B16005e41
B16005e42
B16005e43
B16005e44
B16005e45
 
B16005Ae1
B16005Ae2
B16005Ae3
B16005Ae4
B16005Ae5
B16005Ae6
B16005Ae7
B16005Ae8
B16005Ae9
B16005Ae10
B16005Ae11
 
B16005Be1
B16005Be2
B16005Be3
B16005Be4
B16005Be5
B16005Be6
B16005Be7
B16005Be8
B16005Be9
B16005Be10
B16005Be11
 
B16005Ce1
B16005Ce2
B16005Ce3
B16005Ce4
B16005Ce5
B16005Ce6
B16005Ce7
B16005Ce8
B16005Ce9
B16005Ce10
B16005Ce11
 
B16005De1
B16005De2
B16005De3
B16005De4
B16005De5
B16005De6
B16005De7
B16005De8
B16005De9
B16005De10
B16005De11
 
B16005Ee1
B16005Ee2
B16005Ee3
B16005Ee4
B16005Ee5
B16005Ee6
B16005Ee7
B16005Ee8
B16005Ee9
B16005Ee10
B16005Ee11
 
B16005Fe1
B16005Fe2
B16005Fe3
B16005Fe4
B16005Fe5
B16005Fe6
B16005Fe7
B16005Fe8
B16005Fe9
B16005Fe10
B16005Fe11
 
B16005Ge1
B16005Ge2
B16005Ge3
B16005Ge4
B16005Ge5
B16005Ge6
B16005Ge7
B16005Ge8
B16005Ge9
B16005Ge10
B16005Ge11
 
B16005He1
B16005He2
B16005He3
B16005He4
B16005He5
B16005He6
B16005He7
B16005He8
B16005He9
B16005He10
B16005He11
 
B16005Ie1
B16005Ie2
B16005Ie3
B16005Ie4
B16005Ie5
B16005Ie6
B16005Ie7
B16005Ie8
B16005Ie9
B16005Ie10
B16005Ie11
 
B16006e1
B16006e2
B16006e3
B16006e4
B16006e5
B16006e6
B16006e7
B16006e8
 
B16007e1
B16007e2
B16007e3
B16007e4
B16007e5
B16007e6
B16007e7
B16007e8
B16007e9
B16007e10
B16007e11
B16007e12
B16007e13
B16007e14
B16007e15
B16007e16
B16007e17
B16007e18
B16007e19
 
B16008e1
B16008e2
B16008e3
B16008e4
B16008e5
B16008e6
B16008e7
B16008e8
B16008e9
B16008e10
B16008e11
B16008e12
B16008e13
B16008e14
B16008e15
B16008e16
B16008e17
B16008e18
B16008e19
B16008e20
B16008e21
B16008e22
B16008e23
B16008e24
B16008e25
B16008e26
B16008e27
B16008e28
B16008e29
B16008e30
B16008e31
B16008e32
B16008e33
B16008e34
B16008e35
B16008e36
B16008e37
B16008e38
B16008e39
B16008e40
B16008e41
B16008e42
B16008e43
B16008e44
B16008e45
B16008e46
B16008e47
B16008e48
B16008e49
B16008e50
B16008e51
B16008e52
B16008e53
;
RUN;
TITLE2;
