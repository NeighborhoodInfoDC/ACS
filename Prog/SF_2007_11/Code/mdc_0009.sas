TITLE2 "m20115dc0009000";
DATA work.SFm0009dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0009000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*NATIVITY AND CITIZENSHIP STATUS IN THE UNITED STATES */
/*Universe:  Total population in the United States */
 
B05001m1='Total:'
B05001m2='U.S. citizen, born in the United States'
B05001m3='U.S. citizen, born in Puerto Rico or U.S. Island Areas'
B05001m4='U.S. citizen, born abroad of American parent(s)'
B05001m5='U.S. citizen by naturalization'
B05001m6='Not a U.S. citizen'
 
/*NATIVITY AND CITIZENSHIP STATUS IN PUERTO RICO */
/*Universe:  Total population in Puerto Rico */
 
B05001PRm1='Total:'
B05001PRm2='U.S. citizen, born in Puerto Rico'
B05001PRm3='U.S. citizen, born in U.S. or U.S. Island Areas'
B05001PRm4='U.S. citizen, born abroad of American parent(s)'
B05001PRm5='U.S. citizen by naturalization'
B05001PRm6='Not a U.S. citizen'
 
/*PLACE OF BIRTH BY NATIVITY AND CITIZENSHIP STATUS */
/*Universe:  Total population */
 
B05002m1='Total:'
B05002m2='Native:'
B05002m3='Born in state of residence'
B05002m4='Born in other state in the United States:'
B05002m5='Northeast'
B05002m6='Midwest'
B05002m7='South'
B05002m8='West'
B05002m9='Born outside the United States:'
B05002m10='Puerto Rico'
B05002m11='U.S. Island Areas'
B05002m12='Born abroad of American parent(s)'
B05002m13='Foreign born:'
B05002m14='Naturalized U.S. citizen'
B05002m15='Not a U.S. citizen'
 
/*SEX BY AGE BY NATIVITY AND CITIZENSHIP STATUS */
/*Universe:  Total population */
 
B05003m1='Total:'
B05003m2='Male:'
B05003m3='Under 18 years:'
B05003m4='Native'
B05003m5='Foreign born:'
B05003m6='Naturalized U.S. citizen'
B05003m7='Not a U.S. citizen'
B05003m8='18 years and over:'
B05003m9='Native'
B05003m10='Foreign born:'
B05003m11='Naturalized U.S. citizen'
B05003m12='Not a U.S. citizen'
B05003m13='Female:'
B05003m14='Under 18 years:'
B05003m15='Native'
B05003m16='Foreign born:'
B05003m17='Naturalized U.S. citizen'
B05003m18='Not a U.S. citizen'
B05003m19='18 years and over:'
B05003m20='Native'
B05003m21='Foreign born:'
B05003m22='Naturalized U.S. citizen'
B05003m23='Not a U.S. citizen'
 
/*SEX BY AGE BY NATIVITY AND CITIZENSHIP STATUS (WHITE ALONE) */
/*Universe:  People who are White alone */
 
B05003Am1='Total:'
B05003Am2='Male:'
B05003Am3='Under 18 years:'
B05003Am4='Native'
B05003Am5='Foreign born:'
B05003Am6='Naturalized U.S. citizen'
B05003Am7='Not a U.S. citizen'
B05003Am8='18 years and over:'
B05003Am9='Native'
B05003Am10='Foreign born:'
B05003Am11='Naturalized U.S. citizen'
B05003Am12='Not a U.S. citizen'
B05003Am13='Female:'
B05003Am14='Under 18 years:'
B05003Am15='Native'
B05003Am16='Foreign born:'
B05003Am17='Naturalized U.S. citizen'
B05003Am18='Not a U.S. citizen'
B05003Am19='18 years and over:'
B05003Am20='Native'
B05003Am21='Foreign born:'
B05003Am22='Naturalized U.S. citizen'
B05003Am23='Not a U.S. citizen'
 
/*SEX BY AGE BY NATIVITY AND CITIZENSHIP STATUS (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone */
 
B05003Bm1='Total:'
B05003Bm2='Male:'
B05003Bm3='Under 18 years:'
B05003Bm4='Native'
B05003Bm5='Foreign born:'
B05003Bm6='Naturalized U.S. citizen'
B05003Bm7='Not a U.S. citizen'
B05003Bm8='18 years and over:'
B05003Bm9='Native'
B05003Bm10='Foreign born:'
B05003Bm11='Naturalized U.S. citizen'
B05003Bm12='Not a U.S. citizen'
B05003Bm13='Female:'
B05003Bm14='Under 18 years:'
B05003Bm15='Native'
B05003Bm16='Foreign born:'
B05003Bm17='Naturalized U.S. citizen'
B05003Bm18='Not a U.S. citizen'
B05003Bm19='18 years and over:'
B05003Bm20='Native'
B05003Bm21='Foreign born:'
B05003Bm22='Naturalized U.S. citizen'
B05003Bm23='Not a U.S. citizen'
 
/*SEX BY AGE BY NATIVITY AND CITIZENSHIP STATUS (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  People who are American Indian and Alaska Native alone */
 
B05003Cm1='Total:'
B05003Cm2='Male:'
B05003Cm3='Under 18 years:'
B05003Cm4='Native'
B05003Cm5='Foreign born:'
B05003Cm6='Naturalized U.S. citizen'
B05003Cm7='Not a U.S. citizen'
B05003Cm8='18 years and over:'
B05003Cm9='Native'
B05003Cm10='Foreign born:'
B05003Cm11='Naturalized U.S. citizen'
B05003Cm12='Not a U.S. citizen'
B05003Cm13='Female:'
B05003Cm14='Under 18 years:'
B05003Cm15='Native'
B05003Cm16='Foreign born:'
B05003Cm17='Naturalized U.S. citizen'
B05003Cm18='Not a U.S. citizen'
B05003Cm19='18 years and over:'
B05003Cm20='Native'
B05003Cm21='Foreign born:'
B05003Cm22='Naturalized U.S. citizen'
B05003Cm23='Not a U.S. citizen'
 
/*SEX BY AGE BY NATIVITY AND CITIZENSHIP STATUS (ASIAN ALONE) */
/*Universe:  People who are Asian alone */
 
B05003Dm1='Total:'
B05003Dm2='Male:'
B05003Dm3='Under 18 years:'
B05003Dm4='Native'
B05003Dm5='Foreign born:'
B05003Dm6='Naturalized U.S. citizen'
B05003Dm7='Not a U.S. citizen'
B05003Dm8='18 years and over:'
B05003Dm9='Native'
B05003Dm10='Foreign born:'
B05003Dm11='Naturalized U.S. citizen'
B05003Dm12='Not a U.S. citizen'
B05003Dm13='Female:'
B05003Dm14='Under 18 years:'
B05003Dm15='Native'
B05003Dm16='Foreign born:'
B05003Dm17='Naturalized U.S. citizen'
B05003Dm18='Not a U.S. citizen'
B05003Dm19='18 years and over:'
B05003Dm20='Native'
B05003Dm21='Foreign born:'
B05003Dm22='Naturalized U.S. citizen'
B05003Dm23='Not a U.S. citizen'
 
/*SEX BY AGE BY NATIVITY AND CITIZENSHIP STATUS (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  People who are Native Hawaiian and Other Pacific Islander alone */
 
B05003Em1='Total:'
B05003Em2='Male:'
B05003Em3='Under 18 years:'
B05003Em4='Native'
B05003Em5='Foreign born:'
B05003Em6='Naturalized U.S. citizen'
B05003Em7='Not a U.S. citizen'
B05003Em8='18 years and over:'
B05003Em9='Native'
B05003Em10='Foreign born:'
B05003Em11='Naturalized U.S. citizen'
B05003Em12='Not a U.S. citizen'
B05003Em13='Female:'
B05003Em14='Under 18 years:'
B05003Em15='Native'
B05003Em16='Foreign born:'
B05003Em17='Naturalized U.S. citizen'
B05003Em18='Not a U.S. citizen'
B05003Em19='18 years and over:'
B05003Em20='Native'
B05003Em21='Foreign born:'
B05003Em22='Naturalized U.S. citizen'
B05003Em23='Not a U.S. citizen'
 
/*SEX BY AGE BY NATIVITY AND CITIZENSHIP STATUS (SOME OTHER RACE ALONE) */
/*Universe:  People who are Some Other Race alone */
 
B05003Fm1='Total:'
B05003Fm2='Male:'
B05003Fm3='Under 18 years:'
B05003Fm4='Native'
B05003Fm5='Foreign born:'
B05003Fm6='Naturalized U.S. citizen'
B05003Fm7='Not a U.S. citizen'
B05003Fm8='18 years and over:'
B05003Fm9='Native'
B05003Fm10='Foreign born:'
B05003Fm11='Naturalized U.S. citizen'
B05003Fm12='Not a U.S. citizen'
B05003Fm13='Female:'
B05003Fm14='Under 18 years:'
B05003Fm15='Native'
B05003Fm16='Foreign born:'
B05003Fm17='Naturalized U.S. citizen'
B05003Fm18='Not a U.S. citizen'
B05003Fm19='18 years and over:'
B05003Fm20='Native'
B05003Fm21='Foreign born:'
B05003Fm22='Naturalized U.S. citizen'
B05003Fm23='Not a U.S. citizen'
 
/*SEX BY AGE BY NATIVITY AND CITIZENSHIP STATUS (TWO OR MORE RACES) */
/*Universe:  People who are Two or More Races */
 
B05003Gm1='Total:'
B05003Gm2='Male:'
B05003Gm3='Under 18 years:'
B05003Gm4='Native'
B05003Gm5='Foreign born:'
B05003Gm6='Naturalized U.S. citizen'
B05003Gm7='Not a U.S. citizen'
B05003Gm8='18 years and over:'
B05003Gm9='Native'
B05003Gm10='Foreign born:'
B05003Gm11='Naturalized U.S. citizen'
B05003Gm12='Not a U.S. citizen'
B05003Gm13='Female:'
B05003Gm14='Under 18 years:'
B05003Gm15='Native'
B05003Gm16='Foreign born:'
B05003Gm17='Naturalized U.S. citizen'
B05003Gm18='Not a U.S. citizen'
B05003Gm19='18 years and over:'
B05003Gm20='Native'
B05003Gm21='Foreign born:'
B05003Gm22='Naturalized U.S. citizen'
B05003Gm23='Not a U.S. citizen'
 
/*SEX BY AGE BY NATIVITY AND CITIZENSHIP STATUS (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population */
 
B05003Hm1='Total:'
B05003Hm2='Male:'
B05003Hm3='Under 18 years:'
B05003Hm4='Native'
B05003Hm5='Foreign born:'
B05003Hm6='Naturalized U.S. citizen'
B05003Hm7='Not a U.S. citizen'
B05003Hm8='18 years and over:'
B05003Hm9='Native'
B05003Hm10='Foreign born:'
B05003Hm11='Naturalized U.S. citizen'
B05003Hm12='Not a U.S. citizen'
B05003Hm13='Female:'
B05003Hm14='Under 18 years:'
B05003Hm15='Native'
B05003Hm16='Foreign born:'
B05003Hm17='Naturalized U.S. citizen'
B05003Hm18='Not a U.S. citizen'
B05003Hm19='18 years and over:'
B05003Hm20='Native'
B05003Hm21='Foreign born:'
B05003Hm22='Naturalized U.S. citizen'
B05003Hm23='Not a U.S. citizen'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B05001m1
B05001m2
B05001m3
B05001m4
B05001m5
B05001m6
 
B05001PRm1
B05001PRm2
B05001PRm3
B05001PRm4
B05001PRm5
B05001PRm6
 
B05002m1
B05002m2
B05002m3
B05002m4
B05002m5
B05002m6
B05002m7
B05002m8
B05002m9
B05002m10
B05002m11
B05002m12
B05002m13
B05002m14
B05002m15
 
B05003m1
B05003m2
B05003m3
B05003m4
B05003m5
B05003m6
B05003m7
B05003m8
B05003m9
B05003m10
B05003m11
B05003m12
B05003m13
B05003m14
B05003m15
B05003m16
B05003m17
B05003m18
B05003m19
B05003m20
B05003m21
B05003m22
B05003m23
 
B05003Am1
B05003Am2
B05003Am3
B05003Am4
B05003Am5
B05003Am6
B05003Am7
B05003Am8
B05003Am9
B05003Am10
B05003Am11
B05003Am12
B05003Am13
B05003Am14
B05003Am15
B05003Am16
B05003Am17
B05003Am18
B05003Am19
B05003Am20
B05003Am21
B05003Am22
B05003Am23
 
B05003Bm1
B05003Bm2
B05003Bm3
B05003Bm4
B05003Bm5
B05003Bm6
B05003Bm7
B05003Bm8
B05003Bm9
B05003Bm10
B05003Bm11
B05003Bm12
B05003Bm13
B05003Bm14
B05003Bm15
B05003Bm16
B05003Bm17
B05003Bm18
B05003Bm19
B05003Bm20
B05003Bm21
B05003Bm22
B05003Bm23
 
B05003Cm1
B05003Cm2
B05003Cm3
B05003Cm4
B05003Cm5
B05003Cm6
B05003Cm7
B05003Cm8
B05003Cm9
B05003Cm10
B05003Cm11
B05003Cm12
B05003Cm13
B05003Cm14
B05003Cm15
B05003Cm16
B05003Cm17
B05003Cm18
B05003Cm19
B05003Cm20
B05003Cm21
B05003Cm22
B05003Cm23
 
B05003Dm1
B05003Dm2
B05003Dm3
B05003Dm4
B05003Dm5
B05003Dm6
B05003Dm7
B05003Dm8
B05003Dm9
B05003Dm10
B05003Dm11
B05003Dm12
B05003Dm13
B05003Dm14
B05003Dm15
B05003Dm16
B05003Dm17
B05003Dm18
B05003Dm19
B05003Dm20
B05003Dm21
B05003Dm22
B05003Dm23
 
B05003Em1
B05003Em2
B05003Em3
B05003Em4
B05003Em5
B05003Em6
B05003Em7
B05003Em8
B05003Em9
B05003Em10
B05003Em11
B05003Em12
B05003Em13
B05003Em14
B05003Em15
B05003Em16
B05003Em17
B05003Em18
B05003Em19
B05003Em20
B05003Em21
B05003Em22
B05003Em23
 
B05003Fm1
B05003Fm2
B05003Fm3
B05003Fm4
B05003Fm5
B05003Fm6
B05003Fm7
B05003Fm8
B05003Fm9
B05003Fm10
B05003Fm11
B05003Fm12
B05003Fm13
B05003Fm14
B05003Fm15
B05003Fm16
B05003Fm17
B05003Fm18
B05003Fm19
B05003Fm20
B05003Fm21
B05003Fm22
B05003Fm23
 
B05003Gm1
B05003Gm2
B05003Gm3
B05003Gm4
B05003Gm5
B05003Gm6
B05003Gm7
B05003Gm8
B05003Gm9
B05003Gm10
B05003Gm11
B05003Gm12
B05003Gm13
B05003Gm14
B05003Gm15
B05003Gm16
B05003Gm17
B05003Gm18
B05003Gm19
B05003Gm20
B05003Gm21
B05003Gm22
B05003Gm23
 
B05003Hm1
B05003Hm2
B05003Hm3
B05003Hm4
B05003Hm5
B05003Hm6
B05003Hm7
B05003Hm8
B05003Hm9
B05003Hm10
B05003Hm11
B05003Hm12
B05003Hm13
B05003Hm14
B05003Hm15
B05003Hm16
B05003Hm17
B05003Hm18
B05003Hm19
B05003Hm20
B05003Hm21
B05003Hm22
B05003Hm23
;
RUN;
TITLE2;
