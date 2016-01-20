TITLE2 "m20125dc0113000";
DATA work.SFm0113dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0113000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*HEALTH INSURANCE COVERAGE STATUS BY SEX BY AGE */
/*Universe:  Civilian noninstitutionalized population */
 
B27001m1='Total:'
B27001m2='Male:'
B27001m3='Under 6 years:'
B27001m4='With health insurance coverage'
B27001m5='No health insurance coverage'
B27001m6='6 to 17 years:'
B27001m7='With health insurance coverage'
B27001m8='No health insurance coverage'
B27001m9='18 to 24 years:'
B27001m10='With health insurance coverage'
B27001m11='No health insurance coverage'
B27001m12='25 to 34 years:'
B27001m13='With health insurance coverage'
B27001m14='No health insurance coverage'
B27001m15='35 to 44 years:'
B27001m16='With health insurance coverage'
B27001m17='No health insurance coverage'
B27001m18='45 to 54 years:'
B27001m19='With health insurance coverage'
B27001m20='No health insurance coverage'
B27001m21='55 to 64 years:'
B27001m22='With health insurance coverage'
B27001m23='No health insurance coverage'
B27001m24='65 to 74 years:'
B27001m25='With health insurance coverage'
B27001m26='No health insurance coverage'
B27001m27='75 years and over:'
B27001m28='With health insurance coverage'
B27001m29='No health insurance coverage'
B27001m30='Female:'
B27001m31='Under 6 years:'
B27001m32='With health insurance coverage'
B27001m33='No health insurance coverage'
B27001m34='6 to 17 years:'
B27001m35='With health insurance coverage'
B27001m36='No health insurance coverage'
B27001m37='18 to 24 years:'
B27001m38='With health insurance coverage'
B27001m39='No health insurance coverage'
B27001m40='25 to 34 years:'
B27001m41='With health insurance coverage'
B27001m42='No health insurance coverage'
B27001m43='35 to 44 years:'
B27001m44='With health insurance coverage'
B27001m45='No health insurance coverage'
B27001m46='45 to 54 years:'
B27001m47='With health insurance coverage'
B27001m48='No health insurance coverage'
B27001m49='55 to 64 years:'
B27001m50='With health insurance coverage'
B27001m51='No health insurance coverage'
B27001m52='65 to 74 years:'
B27001m53='With health insurance coverage'
B27001m54='No health insurance coverage'
B27001m55='75 years and over:'
B27001m56='With health insurance coverage'
B27001m57='No health insurance coverage'
/*PRIVATE HEALTH INSURANCE STATUS BY SEX BY AGE */
/*Universe:  Civilian noninstitutionalized population */
 
B27002m1='Total:'
B27002m2='Male:'
B27002m3='Under 6 years:'
B27002m4='With private health insurance'
B27002m5='No private health insurance'
B27002m6='6 to 17 years:'
B27002m7='With private health insurance'
B27002m8='No private health insurance'
B27002m9='18 to 24 years:'
B27002m10='With private health insurance'
B27002m11='No private health insurance'
B27002m12='25 to 34 years:'
B27002m13='With private health insurance'
B27002m14='No private health insurance'
B27002m15='35 to 44 years:'
B27002m16='With private health insurance'
B27002m17='No private health insurance'
B27002m18='45 to 54 years:'
B27002m19='With private health insurance'
B27002m20='No private health insurance'
B27002m21='55 to 64 years:'
B27002m22='With private health insurance'
B27002m23='No private health insurance'
B27002m24='65 to 74 years:'
B27002m25='With private health insurance'
B27002m26='No private health insurance'
B27002m27='75 years and over:'
B27002m28='With private health insurance'
B27002m29='No private health insurance'
B27002m30='Female:'
B27002m31='Under 6 years:'
B27002m32='With private health insurance'
B27002m33='No private health insurance'
B27002m34='6 to 17 years:'
B27002m35='With private health insurance'
B27002m36='No private health insurance'
B27002m37='18 to 24 years:'
B27002m38='With private health insurance'
B27002m39='No private health insurance'
B27002m40='25 to 34 years:'
B27002m41='With private health insurance'
B27002m42='No private health insurance'
B27002m43='35 to 44 years:'
B27002m44='With private health insurance'
B27002m45='No private health insurance'
B27002m46='45 to 54 years:'
B27002m47='With private health insurance'
B27002m48='No private health insurance'
B27002m49='55 to 64 years:'
B27002m50='With private health insurance'
B27002m51='No private health insurance'
B27002m52='65 to 74 years:'
B27002m53='With private health insurance'
B27002m54='No private health insurance'
B27002m55='75 years and over:'
B27002m56='With private health insurance'
B27002m57='No private health insurance'
/*HEALTH INSURANCE COVERAGE STATUS BY AGE (WHITE ALONE) */
/*Universe:  WHITE ALONE CIVILIAN NONINSTITUTIONALIZED POPULATION */
 
C27001Am1='Total:'
C27001Am2='Under 18 years:'
C27001Am3='With health insurance coverage'
C27001Am4='No health insurance coverage'
C27001Am5='18 to 64 years:'
C27001Am6='With health insurance coverage'
C27001Am7='No health insurance coverage'
C27001Am8='65 years and over:'
C27001Am9='With health insurance coverage'
C27001Am10='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS BY AGE (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  BLACK OR AFRICAN AMERICAN ALONE CIVILIAN NONINSTITUTIONALIZED POPULATION */
 
C27001Bm1='Total:'
C27001Bm2='Under 18 years:'
C27001Bm3='With health insurance coverage'
C27001Bm4='No health insurance coverage'
C27001Bm5='18 to 64 years:'
C27001Bm6='With health insurance coverage'
C27001Bm7='No health insurance coverage'
C27001Bm8='65 years and over:'
C27001Bm9='With health insurance coverage'
C27001Bm10='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS BY AGE (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  AMERICAN INDIAN AND ALASKA NATIVE ALONE CIVILIAN NONINSTITUTIONALIZED POPULATION */
 
C27001Cm1='Total:'
C27001Cm2='Under 18 years:'
C27001Cm3='With health insurance coverage'
C27001Cm4='No health insurance coverage'
C27001Cm5='18 to 64 years:'
C27001Cm6='With health insurance coverage'
C27001Cm7='No health insurance coverage'
C27001Cm8='65 years and over:'
C27001Cm9='With health insurance coverage'
C27001Cm10='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS BY AGE (ASIAN ALONE) */
/*Universe:  ASIAN ALONE CIVILIAN NONINSTITUTIONALIZED POPULATION */
 
C27001Dm1='Total:'
C27001Dm2='Under 18 years:'
C27001Dm3='With health insurance coverage'
C27001Dm4='No health insurance coverage'
C27001Dm5='18 to 64 years:'
C27001Dm6='With health insurance coverage'
C27001Dm7='No health insurance coverage'
C27001Dm8='65 years and over:'
C27001Dm9='With health insurance coverage'
C27001Dm10='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS BY AGE (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE CIVILIAN NONINSTITUTIONALIZED POPULATION */
 
C27001Em1='Total:'
C27001Em2='Under 18 years:'
C27001Em3='With health insurance coverage'
C27001Em4='No health insurance coverage'
C27001Em5='18 to 64 years:'
C27001Em6='With health insurance coverage'
C27001Em7='No health insurance coverage'
C27001Em8='65 years and over:'
C27001Em9='With health insurance coverage'
C27001Em10='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS BY AGE (SOME OTHER RACE ALONE) */
/*Universe:  SOME OTHER RACE ALONE CIVILIAN NONINSTITUTIONALIZED POPULATION */
 
C27001Fm1='Total:'
C27001Fm2='Under 18 years:'
C27001Fm3='With health insurance coverage'
C27001Fm4='No health insurance coverage'
C27001Fm5='18 to 64 years:'
C27001Fm6='With health insurance coverage'
C27001Fm7='No health insurance coverage'
C27001Fm8='65 years and over:'
C27001Fm9='With health insurance coverage'
C27001Fm10='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS BY AGE (TWO OR MORE RACES) */
/*Universe:  TWO OR MORE RACES CIVILIAN NONINSTITUTIONALIZED POPULATION */
 
C27001Gm1='Total:'
C27001Gm2='Under 18 years:'
C27001Gm3='With health insurance coverage'
C27001Gm4='No health insurance coverage'
C27001Gm5='18 to 64 years:'
C27001Gm6='With health insurance coverage'
C27001Gm7='No health insurance coverage'
C27001Gm8='65 years and over:'
C27001Gm9='With health insurance coverage'
C27001Gm10='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS BY AGE (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  WHITE ALONE, NOT HISPANIC OR LATINO CIVILIAN NONINSTITUTIONALIZED POPULATION */
 
C27001Hm1='Total:'
C27001Hm2='Under 18 years:'
C27001Hm3='With health insurance coverage'
C27001Hm4='No health insurance coverage'
C27001Hm5='18 to 64 years:'
C27001Hm6='With health insurance coverage'
C27001Hm7='No health insurance coverage'
C27001Hm8='65 years and over:'
C27001Hm9='With health insurance coverage'
C27001Hm10='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS BY AGE (HISPANIC OR LATINO) */
/*Universe:  HISPANIC OR LATINO CIVILIAN NONINSTITUTIONALIZED POPULATION */
 
C27001Im1='Total:'
C27001Im2='Under 18 years:'
C27001Im3='With health insurance coverage'
C27001Im4='No health insurance coverage'
C27001Im5='18 to 64 years:'
C27001Im6='With health insurance coverage'
C27001Im7='No health insurance coverage'
C27001Im8='65 years and over:'
C27001Im9='With health insurance coverage'
C27001Im10='No health insurance coverage'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B27001m1
B27001m2
B27001m3
B27001m4
B27001m5
B27001m6
B27001m7
B27001m8
B27001m9
B27001m10
B27001m11
B27001m12
B27001m13
B27001m14
B27001m15
B27001m16
B27001m17
B27001m18
B27001m19
B27001m20
B27001m21
B27001m22
B27001m23
B27001m24
B27001m25
B27001m26
B27001m27
B27001m28
B27001m29
B27001m30
B27001m31
B27001m32
B27001m33
B27001m34
B27001m35
B27001m36
B27001m37
B27001m38
B27001m39
B27001m40
B27001m41
B27001m42
B27001m43
B27001m44
B27001m45
B27001m46
B27001m47
B27001m48
B27001m49
B27001m50
B27001m51
B27001m52
B27001m53
B27001m54
B27001m55
B27001m56
B27001m57
 
B27002m1
B27002m2
B27002m3
B27002m4
B27002m5
B27002m6
B27002m7
B27002m8
B27002m9
B27002m10
B27002m11
B27002m12
B27002m13
B27002m14
B27002m15
B27002m16
B27002m17
B27002m18
B27002m19
B27002m20
B27002m21
B27002m22
B27002m23
B27002m24
B27002m25
B27002m26
B27002m27
B27002m28
B27002m29
B27002m30
B27002m31
B27002m32
B27002m33
B27002m34
B27002m35
B27002m36
B27002m37
B27002m38
B27002m39
B27002m40
B27002m41
B27002m42
B27002m43
B27002m44
B27002m45
B27002m46
B27002m47
B27002m48
B27002m49
B27002m50
B27002m51
B27002m52
B27002m53
B27002m54
B27002m55
B27002m56
B27002m57
 
C27001Am1
C27001Am2
C27001Am3
C27001Am4
C27001Am5
C27001Am6
C27001Am7
C27001Am8
C27001Am9
C27001Am10
 
C27001Bm1
C27001Bm2
C27001Bm3
C27001Bm4
C27001Bm5
C27001Bm6
C27001Bm7
C27001Bm8
C27001Bm9
C27001Bm10
 
C27001Cm1
C27001Cm2
C27001Cm3
C27001Cm4
C27001Cm5
C27001Cm6
C27001Cm7
C27001Cm8
C27001Cm9
C27001Cm10
 
C27001Dm1
C27001Dm2
C27001Dm3
C27001Dm4
C27001Dm5
C27001Dm6
C27001Dm7
C27001Dm8
C27001Dm9
C27001Dm10
 
C27001Em1
C27001Em2
C27001Em3
C27001Em4
C27001Em5
C27001Em6
C27001Em7
C27001Em8
C27001Em9
C27001Em10
 
C27001Fm1
C27001Fm2
C27001Fm3
C27001Fm4
C27001Fm5
C27001Fm6
C27001Fm7
C27001Fm8
C27001Fm9
C27001Fm10
 
C27001Gm1
C27001Gm2
C27001Gm3
C27001Gm4
C27001Gm5
C27001Gm6
C27001Gm7
C27001Gm8
C27001Gm9
C27001Gm10
 
C27001Hm1
C27001Hm2
C27001Hm3
C27001Hm4
C27001Hm5
C27001Hm6
C27001Hm7
C27001Hm8
C27001Hm9
C27001Hm10
 
C27001Im1
C27001Im2
C27001Im3
C27001Im4
C27001Im5
C27001Im6
C27001Im7
C27001Im8
C27001Im9
C27001Im10
;
RUN;
TITLE2;
