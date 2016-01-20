TITLE2 "m20125md0056000";
DATA work.SFm0056md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0056000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SEX BY AGE BY DISABILITY STATUS */
/*Universe:  Civilian noninstitutionalized population */
 
B18101m1='Total:'
B18101m2='Male:'
B18101m3='Under 5 years:'
B18101m4='With a disability'
B18101m5='No disability'
B18101m6='5 to 17 years:'
B18101m7='With a disability'
B18101m8='No disability'
B18101m9='18 to 34 years:'
B18101m10='With a disability'
B18101m11='No disability'
B18101m12='35 to 64 years:'
B18101m13='With a disability'
B18101m14='No disability'
B18101m15='65 to 74 years:'
B18101m16='With a disability'
B18101m17='No disability'
B18101m18='75 years and over:'
B18101m19='With a disability'
B18101m20='No disability'
B18101m21='Female:'
B18101m22='Under 5 years:'
B18101m23='With a disability'
B18101m24='No disability'
B18101m25='5 to 17 years:'
B18101m26='With a disability'
B18101m27='No disability'
B18101m28='18 to 34 years:'
B18101m29='With a disability'
B18101m30='No disability'
B18101m31='35 to 64 years:'
B18101m32='With a disability'
B18101m33='No disability'
B18101m34='65 to 74 years:'
B18101m35='With a disability'
B18101m36='No disability'
B18101m37='75 years and over:'
B18101m38='With a disability'
B18101m39='No disability'
/*AGE BY DISABILITY STATUS (WHITE ALONE) */
/*Universe:  White alone civilian noninstitutionalized population */
 
B18101Am1='Total:'
B18101Am2='Under 18 years:'
B18101Am3='With a disability'
B18101Am4='No disability'
B18101Am5='18 to 64 years:'
B18101Am6='With a disability'
B18101Am7='No disability'
B18101Am8='65 years and over:'
B18101Am9='With a disability'
B18101Am10='No disability'
/*AGE BY DISABILITY STATUS (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone civilian noninstitutionalized population */
 
B18101Bm1='Total:'
B18101Bm2='Under 18 years:'
B18101Bm3='With a disability'
B18101Bm4='No disability'
B18101Bm5='18 to 64 years:'
B18101Bm6='With a disability'
B18101Bm7='No disability'
B18101Bm8='65 years and over:'
B18101Bm9='With a disability'
B18101Bm10='No disability'
/*AGE BY DISABILITY STATUS (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone civilian noninstitutionalized population */
 
B18101Cm1='Total:'
B18101Cm2='Under 18 years:'
B18101Cm3='With a disability'
B18101Cm4='No disability'
B18101Cm5='18 to 64 years:'
B18101Cm6='With a disability'
B18101Cm7='No disability'
B18101Cm8='65 years and over:'
B18101Cm9='With a disability'
B18101Cm10='No disability'
/*AGE BY DISABILITY STATUS (ASIAN ALONE) */
/*Universe:  Asian alone civilian noninstitutionalized population */
 
B18101Dm1='Total:'
B18101Dm2='Under 18 years:'
B18101Dm3='With a disability'
B18101Dm4='No disability'
B18101Dm5='18 to 64 years:'
B18101Dm6='With a disability'
B18101Dm7='No disability'
B18101Dm8='65 years and over:'
B18101Dm9='With a disability'
B18101Dm10='No disability'
/*AGE BY DISABILITY STATUS (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and other Pacific Islander alone civilian noninstitutionalized population */
 
B18101Em1='Total:'
B18101Em2='Under 18 years:'
B18101Em3='With a disability'
B18101Em4='No disability'
B18101Em5='18 to 64 years:'
B18101Em6='With a disability'
B18101Em7='No disability'
B18101Em8='65 years and over:'
B18101Em9='With a disability'
B18101Em10='No disability'
/*AGE BY DISABILITY STATUS (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone civilian noninstitutionalized population */
 
B18101Fm1='Total:'
B18101Fm2='Under 18 years:'
B18101Fm3='With a disability'
B18101Fm4='No disability'
B18101Fm5='18 to 64 years:'
B18101Fm6='With a disability'
B18101Fm7='No disability'
B18101Fm8='65 years and over:'
B18101Fm9='With a disability'
B18101Fm10='No disability'
/*AGE BY DISABILITY STATUS (TWO OR MORE RACES) */
/*Universe:  Two or more races civilian noninstitutionalized population */
 
B18101Gm1='Total:'
B18101Gm2='Under 18 years:'
B18101Gm3='With a disability'
B18101Gm4='No disability'
B18101Gm5='18 to 64 years:'
B18101Gm6='With a disability'
B18101Gm7='No disability'
B18101Gm8='65 years and over:'
B18101Gm9='With a disability'
B18101Gm10='No disability'
/*AGE BY DISABILITY STATUS (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino civilian noninstitutionalized population */
 
B18101Hm1='Total:'
B18101Hm2='Under 18 years:'
B18101Hm3='With a disability'
B18101Hm4='No disability'
B18101Hm5='18 to 64 years:'
B18101Hm6='With a disability'
B18101Hm7='No disability'
B18101Hm8='65 years and over:'
B18101Hm9='With a disability'
B18101Hm10='No disability'
/*AGE BY DISABILITY STATUS (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino civilian noninstitutionalized population */
 
B18101Im1='Total:'
B18101Im2='Under 18 years:'
B18101Im3='With a disability'
B18101Im4='No disability'
B18101Im5='18 to 64 years:'
B18101Im6='With a disability'
B18101Im7='No disability'
B18101Im8='65 years and over:'
B18101Im9='With a disability'
B18101Im10='No disability'
/*SEX BY AGE BY HEARING DIFFICULTY */
/*Universe:  Civilian noninstitutionalized population */
 
B18102m1='Total:'
B18102m2='Male:'
B18102m3='Under 5 years:'
B18102m4='With a hearing difficulty'
B18102m5='No hearing difficulty'
B18102m6='5 to 17 years:'
B18102m7='With a hearing difficulty'
B18102m8='No hearing difficulty'
B18102m9='18 to 34 years:'
B18102m10='With a hearing difficulty'
B18102m11='No hearing difficulty'
B18102m12='35 to 64 years:'
B18102m13='With a hearing difficulty'
B18102m14='No hearing difficulty'
B18102m15='65 to 74 years:'
B18102m16='With a hearing difficulty'
B18102m17='No hearing difficulty'
B18102m18='75 years and over:'
B18102m19='With a hearing difficulty'
B18102m20='No hearing difficulty'
B18102m21='Female:'
B18102m22='Under 5 years:'
B18102m23='With a hearing difficulty'
B18102m24='No hearing difficulty'
B18102m25='5 to 17 years:'
B18102m26='With a hearing difficulty'
B18102m27='No hearing difficulty'
B18102m28='18 to 34 years:'
B18102m29='With a hearing difficulty'
B18102m30='No hearing difficulty'
B18102m31='35 to 64 years:'
B18102m32='With a hearing difficulty'
B18102m33='No hearing difficulty'
B18102m34='65 to 74 years:'
B18102m35='With a hearing difficulty'
B18102m36='No hearing difficulty'
B18102m37='75 years and over:'
B18102m38='With a hearing difficulty'
B18102m39='No hearing difficulty'
/*SEX BY AGE BY VISION DIFFICULTY */
/*Universe:  Civilian noninstitutionalized population */
 
B18103m1='Total:'
B18103m2='Male:'
B18103m3='Under 5 years:'
B18103m4='With a vision difficulty'
B18103m5='No vision difficulty'
B18103m6='5 to 17 years:'
B18103m7='With a vision difficulty'
B18103m8='No vision difficulty'
B18103m9='18 to 34 years:'
B18103m10='With a vision difficulty'
B18103m11='No vision difficulty'
B18103m12='35 to 64 years:'
B18103m13='With a vision difficulty'
B18103m14='No vision difficulty'
B18103m15='65 to 74 years:'
B18103m16='With a vision difficulty'
B18103m17='No vision difficulty'
B18103m18='75 years and over:'
B18103m19='With a vision difficulty'
B18103m20='No vision difficulty'
B18103m21='Female:'
B18103m22='Under 5 years:'
B18103m23='With a vision difficulty'
B18103m24='No vision difficulty'
B18103m25='5 to 17 years:'
B18103m26='With a vision difficulty'
B18103m27='No vision difficulty'
B18103m28='18 to 34 years:'
B18103m29='With a vision difficulty'
B18103m30='No vision difficulty'
B18103m31='35 to 64 years:'
B18103m32='With a vision difficulty'
B18103m33='No vision difficulty'
B18103m34='65 to 74 years:'
B18103m35='With a vision difficulty'
B18103m36='No vision difficulty'
B18103m37='75 years and over:'
B18103m38='With a vision difficulty'
B18103m39='No vision difficulty'
/*SEX BY AGE BY COGNITIVE DIFFICULTY */
/*Universe:  Civilian noninstitutionalized population 5 years and over */
 
B18104m1='Total:'
B18104m2='Male:'
B18104m3='5 to 17 years:'
B18104m4='With a cognitive difficulty'
B18104m5='No cognitive difficulty'
B18104m6='18 to 34 years:'
B18104m7='With a cognitive difficulty'
B18104m8='No cognitive difficulty'
B18104m9='35 to 64 years:'
B18104m10='With a cognitive difficulty'
B18104m11='No cognitive difficulty'
B18104m12='65 to 74 years:'
B18104m13='With a cognitive difficulty'
B18104m14='No cognitive difficulty'
B18104m15='75 years and over:'
B18104m16='With a cognitive difficulty'
B18104m17='No cognitive difficulty'
B18104m18='Female:'
B18104m19='5 to 17 years:'
B18104m20='With a cognitive difficulty'
B18104m21='No cognitive difficulty'
B18104m22='18 to 34 years:'
B18104m23='With a cognitive difficulty'
B18104m24='No cognitive difficulty'
B18104m25='35 to 64 years:'
B18104m26='With a cognitive difficulty'
B18104m27='No cognitive difficulty'
B18104m28='65 to 74 years:'
B18104m29='With a cognitive difficulty'
B18104m30='No cognitive difficulty'
B18104m31='75 years and over:'
B18104m32='With a cognitive difficulty'
B18104m33='No cognitive difficulty'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B18101m1
B18101m2
B18101m3
B18101m4
B18101m5
B18101m6
B18101m7
B18101m8
B18101m9
B18101m10
B18101m11
B18101m12
B18101m13
B18101m14
B18101m15
B18101m16
B18101m17
B18101m18
B18101m19
B18101m20
B18101m21
B18101m22
B18101m23
B18101m24
B18101m25
B18101m26
B18101m27
B18101m28
B18101m29
B18101m30
B18101m31
B18101m32
B18101m33
B18101m34
B18101m35
B18101m36
B18101m37
B18101m38
B18101m39
 
B18101Am1
B18101Am2
B18101Am3
B18101Am4
B18101Am5
B18101Am6
B18101Am7
B18101Am8
B18101Am9
B18101Am10
 
B18101Bm1
B18101Bm2
B18101Bm3
B18101Bm4
B18101Bm5
B18101Bm6
B18101Bm7
B18101Bm8
B18101Bm9
B18101Bm10
 
B18101Cm1
B18101Cm2
B18101Cm3
B18101Cm4
B18101Cm5
B18101Cm6
B18101Cm7
B18101Cm8
B18101Cm9
B18101Cm10
 
B18101Dm1
B18101Dm2
B18101Dm3
B18101Dm4
B18101Dm5
B18101Dm6
B18101Dm7
B18101Dm8
B18101Dm9
B18101Dm10
 
B18101Em1
B18101Em2
B18101Em3
B18101Em4
B18101Em5
B18101Em6
B18101Em7
B18101Em8
B18101Em9
B18101Em10
 
B18101Fm1
B18101Fm2
B18101Fm3
B18101Fm4
B18101Fm5
B18101Fm6
B18101Fm7
B18101Fm8
B18101Fm9
B18101Fm10
 
B18101Gm1
B18101Gm2
B18101Gm3
B18101Gm4
B18101Gm5
B18101Gm6
B18101Gm7
B18101Gm8
B18101Gm9
B18101Gm10
 
B18101Hm1
B18101Hm2
B18101Hm3
B18101Hm4
B18101Hm5
B18101Hm6
B18101Hm7
B18101Hm8
B18101Hm9
B18101Hm10
 
B18101Im1
B18101Im2
B18101Im3
B18101Im4
B18101Im5
B18101Im6
B18101Im7
B18101Im8
B18101Im9
B18101Im10
 
B18102m1
B18102m2
B18102m3
B18102m4
B18102m5
B18102m6
B18102m7
B18102m8
B18102m9
B18102m10
B18102m11
B18102m12
B18102m13
B18102m14
B18102m15
B18102m16
B18102m17
B18102m18
B18102m19
B18102m20
B18102m21
B18102m22
B18102m23
B18102m24
B18102m25
B18102m26
B18102m27
B18102m28
B18102m29
B18102m30
B18102m31
B18102m32
B18102m33
B18102m34
B18102m35
B18102m36
B18102m37
B18102m38
B18102m39
 
B18103m1
B18103m2
B18103m3
B18103m4
B18103m5
B18103m6
B18103m7
B18103m8
B18103m9
B18103m10
B18103m11
B18103m12
B18103m13
B18103m14
B18103m15
B18103m16
B18103m17
B18103m18
B18103m19
B18103m20
B18103m21
B18103m22
B18103m23
B18103m24
B18103m25
B18103m26
B18103m27
B18103m28
B18103m29
B18103m30
B18103m31
B18103m32
B18103m33
B18103m34
B18103m35
B18103m36
B18103m37
B18103m38
B18103m39
 
B18104m1
B18104m2
B18104m3
B18104m4
B18104m5
B18104m6
B18104m7
B18104m8
B18104m9
B18104m10
B18104m11
B18104m12
B18104m13
B18104m14
B18104m15
B18104m16
B18104m17
B18104m18
B18104m19
B18104m20
B18104m21
B18104m22
B18104m23
B18104m24
B18104m25
B18104m26
B18104m27
B18104m28
B18104m29
B18104m30
B18104m31
B18104m32
B18104m33
;
RUN;
TITLE2;
