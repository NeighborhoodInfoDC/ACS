TITLE2 "m20115dc0045000";
DATA work.SFm0045dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0045000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*NATIVITY BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER */
/*Universe:  Population 5 years and over */
 
B16005m1='Total:'
B16005m2='Native:'
B16005m3='Speak only English'
B16005m4='Speak Spanish:'
B16005m5='Speak English "very well"'
B16005m6='Speak English "well"'
B16005m7='Speak English "not well"'
B16005m8='Speak English "not at all"'
B16005m9='Speak other Indo-European languages:'
B16005m10='Speak English "very well"'
B16005m11='Speak English "well"'
B16005m12='Speak English "not well"'
B16005m13='Speak English "not at all"'
B16005m14='Speak Asian and Pacific Island languages:'
B16005m15='Speak English "very well"'
B16005m16='Speak English "well"'
B16005m17='Speak English "not well"'
B16005m18='Speak English "not at all"'
B16005m19='Speak other languages:'
B16005m20='Speak English "very well"'
B16005m21='Speak English "well"'
B16005m22='Speak English "not well"'
B16005m23='Speak English "not at all"'
B16005m24='Foreign born:'
B16005m25='Speak only English'
B16005m26='Speak Spanish:'
B16005m27='Speak English "very well"'
B16005m28='Speak English "well"'
B16005m29='Speak English "not well"'
B16005m30='Speak English "not at all"'
B16005m31='Speak other Indo-European languages:'
B16005m32='Speak English "very well"'
B16005m33='Speak English "well"'
B16005m34='Speak English "not well"'
B16005m35='Speak English "not at all"'
B16005m36='Speak Asian and Pacific Island languages:'
B16005m37='Speak English "very well"'
B16005m38='Speak English "well"'
B16005m39='Speak English "not well"'
B16005m40='Speak English "not at all"'
B16005m41='Speak other languages:'
B16005m42='Speak English "very well"'
B16005m43='Speak English "well"'
B16005m44='Speak English "not well"'
B16005m45='Speak English "not at all"'
 
/*NATIVITY BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER (WHITE ALONE) */
/*Universe:  White alone population 5 years and over */
 
B16005Am1='Total:'
B16005Am2='Native:'
B16005Am3='Speak only English'
B16005Am4='Speak another language'
B16005Am5='Speak English "very well"'
B16005Am6='Speak English less than "very well"'
B16005Am7='Foreign born:'
B16005Am8='Speak only English'
B16005Am9='Speak another language'
B16005Am10='Speak English "very well"'
B16005Am11='Speak English less than "very well"'
 
/*NATIVITY BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone population 5 years and over */
 
B16005Bm1='Total:'
B16005Bm2='Native:'
B16005Bm3='Speak only English'
B16005Bm4='Speak another language'
B16005Bm5='Speak English "very well"'
B16005Bm6='Speak English less than "very well"'
B16005Bm7='Foreign born:'
B16005Bm8='Speak only English'
B16005Bm9='Speak another language'
B16005Bm10='Speak English "very well"'
B16005Bm11='Speak English less than "very well"'
 
/*NATIVITY BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone population 5 years and over */
 
B16005Cm1='Total:'
B16005Cm2='Native:'
B16005Cm3='Speak only English'
B16005Cm4='Speak another language'
B16005Cm5='Speak English "very well"'
B16005Cm6='Speak English less than "very well"'
B16005Cm7='Foreign born:'
B16005Cm8='Speak only English'
B16005Cm9='Speak another language'
B16005Cm10='Speak English "very well"'
B16005Cm11='Speak English less than "very well"'
 
/*NATIVITY BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER (ASIAN ALONE) */
/*Universe:  Asian alone population 5 years and over */
 
B16005Dm1='Total:'
B16005Dm2='Native:'
B16005Dm3='Speak only English'
B16005Dm4='Speak another language'
B16005Dm5='Speak English "very well"'
B16005Dm6='Speak English less than "very well"'
B16005Dm7='Foreign born:'
B16005Dm8='Speak only English'
B16005Dm9='Speak another language'
B16005Dm10='Speak English "very well"'
B16005Dm11='Speak English less than "very well"'
 
/*NATIVITY BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 5 years and over */
 
B16005Em1='Total:'
B16005Em2='Native:'
B16005Em3='Speak only English'
B16005Em4='Speak another language'
B16005Em5='Speak English "very well"'
B16005Em6='Speak English less than "very well"'
B16005Em7='Foreign born:'
B16005Em8='Speak only English'
B16005Em9='Speak another language'
B16005Em10='Speak English "very well"'
B16005Em11='Speak English less than "very well"'
 
/*NATIVITY BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone population 5 years and over */
 
B16005Fm1='Total:'
B16005Fm2='Native:'
B16005Fm3='Speak only English'
B16005Fm4='Speak another language'
B16005Fm5='Speak English "very well"'
B16005Fm6='Speak English less than "very well"'
B16005Fm7='Foreign born:'
B16005Fm8='Speak only English'
B16005Fm9='Speak another language'
B16005Fm10='Speak English "very well"'
B16005Fm11='Speak English less than "very well"'
 
/*NATIVITY BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER (TWO OR MORE RACES) */
/*Universe:  Two or more races population 5 years and over */
 
B16005Gm1='Total:'
B16005Gm2='Native:'
B16005Gm3='Speak only English'
B16005Gm4='Speak another language'
B16005Gm5='Speak English "very well"'
B16005Gm6='Speak English less than "very well"'
B16005Gm7='Foreign born:'
B16005Gm8='Speak only English'
B16005Gm9='Speak another language'
B16005Gm10='Speak English "very well"'
B16005Gm11='Speak English less than "very well"'
 
/*NATIVITY BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population 5 years and over */
 
B16005Hm1='Total:'
B16005Hm2='Native:'
B16005Hm3='Speak only English'
B16005Hm4='Speak another language'
B16005Hm5='Speak English "very well"'
B16005Hm6='Speak English less than "very well"'
B16005Hm7='Foreign born:'
B16005Hm8='Speak only English'
B16005Hm9='Speak another language'
B16005Hm10='Speak English "very well"'
B16005Hm11='Speak English less than "very well"'
 
/*NATIVITY BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population 5 years and over */
 
B16005Im1='Total:'
B16005Im2='Native:'
B16005Im3='Speak only English'
B16005Im4='Speak another language'
B16005Im5='Speak English "very well"'
B16005Im6='Speak English less than "very well"'
B16005Im7='Foreign born:'
B16005Im8='Speak only English'
B16005Im9='Speak another language'
B16005Im10='Speak English "very well"'
B16005Im11='Speak English less than "very well"'
 
/*LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population 5 years and over */
 
B16006m1='Total:'
B16006m2='Speak only English'
B16006m3='Speak Spanish:'
B16006m4='Speak English "very well"'
B16006m5='Speak English "well"'
B16006m6='Speak English "not well"'
B16006m7='Speak English "not at all"'
B16006m8='Speak other language'
 
/*AGE BY LANGUAGE SPOKEN AT HOME FOR THE POPULATION 5 YEARS AND OVER */
/*Universe:  Population 5 years and over */
 
B16007m1='Total:'
B16007m2='5 to 17 years:'
B16007m3='Speak only English'
B16007m4='Speak Spanish'
B16007m5='Speak other Indo-European languages'
B16007m6='Speak Asian and Pacific Island languages'
B16007m7='Speak other languages'
B16007m8='18 to 64 years:'
B16007m9='Speak only English'
B16007m10='Speak Spanish'
B16007m11='Speak other Indo-European languages'
B16007m12='Speak Asian and Pacific Island languages'
B16007m13='Speak other languages'
B16007m14='65 years and over:'
B16007m15='Speak only English'
B16007m16='Speak Spanish'
B16007m17='Speak other Indo-European languages'
B16007m18='Speak Asian and Pacific Island languages'
B16007m19='Speak other languages'
 
/*CITIZENSHIP STATUS BY AGE BY LANGUAGE SPOKEN AT HOME AND ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER */
/*Universe:  Population 5 years and over */
 
B16008m1='Total:'
B16008m2='Native population:'
B16008m3='5 to 17 years:'
B16008m4='Speak only English'
B16008m5='Speak Spanish'
B16008m6='Speak English "very well"'
B16008m7='Speak English less than "very well"'
B16008m8='Speak other languages'
B16008m9='Speak English "very well"'
B16008m10='Speak English less than "very well"'
B16008m11='18 years and over:'
B16008m12='Speak only English'
B16008m13='Speak Spanish'
B16008m14='Speak English "very well"'
B16008m15='Speak English less than "very well"'
B16008m16='Speak other languages'
B16008m17='Speak English "very well"'
B16008m18='Speak English less than "very well"'
B16008m19='Foreign-born population:'
B16008m20='Naturalized U.S. citizen:'
B16008m21='5 to 17 years:'
B16008m22='Speak only English'
B16008m23='Speak Spanish'
B16008m24='Speak English "very well"'
B16008m25='Speak English less than "very well"'
B16008m26='Speak other languages'
B16008m27='Speak English "very well"'
B16008m28='Speak English less than "very well"'
B16008m29='18 years and over:'
B16008m30='Speak only English'
B16008m31='Speak Spanish'
B16008m32='Speak English "very well"'
B16008m33='Speak English less than "very well"'
B16008m34='Speak other languages'
B16008m35='Speak English "very well"'
B16008m36='Speak English less than "very well"'
B16008m37='Not a U.S. citizen:'
B16008m38='5 to 17 years:'
B16008m39='Speak only English'
B16008m40='Speak Spanish'
B16008m41='Speak English "very well"'
B16008m42='Speak English less than "very well"'
B16008m43='Speak other languages'
B16008m44='Speak English "very well"'
B16008m45='Speak English less than "very well"'
B16008m46='18 years and over:'
B16008m47='Speak only English'
B16008m48='Speak Spanish'
B16008m49='Speak English "very well"'
B16008m50='Speak English less than "very well"'
B16008m51='Speak other languages'
B16008m52='Speak English "very well"'
B16008m53='Speak English less than "very well"'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B16005m1
B16005m2
B16005m3
B16005m4
B16005m5
B16005m6
B16005m7
B16005m8
B16005m9
B16005m10
B16005m11
B16005m12
B16005m13
B16005m14
B16005m15
B16005m16
B16005m17
B16005m18
B16005m19
B16005m20
B16005m21
B16005m22
B16005m23
B16005m24
B16005m25
B16005m26
B16005m27
B16005m28
B16005m29
B16005m30
B16005m31
B16005m32
B16005m33
B16005m34
B16005m35
B16005m36
B16005m37
B16005m38
B16005m39
B16005m40
B16005m41
B16005m42
B16005m43
B16005m44
B16005m45
 
B16005Am1
B16005Am2
B16005Am3
B16005Am4
B16005Am5
B16005Am6
B16005Am7
B16005Am8
B16005Am9
B16005Am10
B16005Am11
 
B16005Bm1
B16005Bm2
B16005Bm3
B16005Bm4
B16005Bm5
B16005Bm6
B16005Bm7
B16005Bm8
B16005Bm9
B16005Bm10
B16005Bm11
 
B16005Cm1
B16005Cm2
B16005Cm3
B16005Cm4
B16005Cm5
B16005Cm6
B16005Cm7
B16005Cm8
B16005Cm9
B16005Cm10
B16005Cm11
 
B16005Dm1
B16005Dm2
B16005Dm3
B16005Dm4
B16005Dm5
B16005Dm6
B16005Dm7
B16005Dm8
B16005Dm9
B16005Dm10
B16005Dm11
 
B16005Em1
B16005Em2
B16005Em3
B16005Em4
B16005Em5
B16005Em6
B16005Em7
B16005Em8
B16005Em9
B16005Em10
B16005Em11
 
B16005Fm1
B16005Fm2
B16005Fm3
B16005Fm4
B16005Fm5
B16005Fm6
B16005Fm7
B16005Fm8
B16005Fm9
B16005Fm10
B16005Fm11
 
B16005Gm1
B16005Gm2
B16005Gm3
B16005Gm4
B16005Gm5
B16005Gm6
B16005Gm7
B16005Gm8
B16005Gm9
B16005Gm10
B16005Gm11
 
B16005Hm1
B16005Hm2
B16005Hm3
B16005Hm4
B16005Hm5
B16005Hm6
B16005Hm7
B16005Hm8
B16005Hm9
B16005Hm10
B16005Hm11
 
B16005Im1
B16005Im2
B16005Im3
B16005Im4
B16005Im5
B16005Im6
B16005Im7
B16005Im8
B16005Im9
B16005Im10
B16005Im11
 
B16006m1
B16006m2
B16006m3
B16006m4
B16006m5
B16006m6
B16006m7
B16006m8
 
B16007m1
B16007m2
B16007m3
B16007m4
B16007m5
B16007m6
B16007m7
B16007m8
B16007m9
B16007m10
B16007m11
B16007m12
B16007m13
B16007m14
B16007m15
B16007m16
B16007m17
B16007m18
B16007m19
 
B16008m1
B16008m2
B16008m3
B16008m4
B16008m5
B16008m6
B16008m7
B16008m8
B16008m9
B16008m10
B16008m11
B16008m12
B16008m13
B16008m14
B16008m15
B16008m16
B16008m17
B16008m18
B16008m19
B16008m20
B16008m21
B16008m22
B16008m23
B16008m24
B16008m25
B16008m26
B16008m27
B16008m28
B16008m29
B16008m30
B16008m31
B16008m32
B16008m33
B16008m34
B16008m35
B16008m36
B16008m37
B16008m38
B16008m39
B16008m40
B16008m41
B16008m42
B16008m43
B16008m44
B16008m45
B16008m46
B16008m47
B16008m48
B16008m49
B16008m50
B16008m51
B16008m52
B16008m53
;
RUN;
TITLE2;
