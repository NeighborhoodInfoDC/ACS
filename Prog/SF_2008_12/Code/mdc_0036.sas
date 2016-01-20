TITLE2 "m20125dc0036000";
DATA work.SFm0036dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0036000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) */
/*Universe:  Households */
 
B11001m1='Total:'
B11001m2='Family households:'
B11001m3='Married-couple family'
B11001m4='Other family:'
B11001m5='Male householder, no wife present'
B11001m6='Female householder, no husband present'
B11001m7='Nonfamily households:'
B11001m8='Householder living alone'
B11001m9='Householder not living alone'
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) (WHITE ALONE) */
/*Universe:  Households with a householder who is White alone */
 
B11001Am1='Total:'
B11001Am2='Family households:'
B11001Am3='Married-couple family'
B11001Am4='Other family:'
B11001Am5='Male householder, no wife present'
B11001Am6='Female householder, no husband present'
B11001Am7='Nonfamily households:'
B11001Am8='Householder living alone'
B11001Am9='Householder not living alone'
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Households with a householder who is Black or African American alone */
 
B11001Bm1='Total:'
B11001Bm2='Family households:'
B11001Bm3='Married-couple family'
B11001Bm4='Other family:'
B11001Bm5='Male householder, no wife present'
B11001Bm6='Female householder, no husband present'
B11001Bm7='Nonfamily households:'
B11001Bm8='Householder living alone'
B11001Bm9='Householder not living alone'
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  Households with a householder who is American Indian and Alaska Native alone */
 
B11001Cm1='Total:'
B11001Cm2='Family households:'
B11001Cm3='Married-couple family'
B11001Cm4='Other family:'
B11001Cm5='Male householder, no wife present'
B11001Cm6='Female householder, no husband present'
B11001Cm7='Nonfamily households:'
B11001Cm8='Householder living alone'
B11001Cm9='Householder not living alone'
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) (ASIAN ALONE) */
/*Universe:  Households with a householder who is Asian alone */
 
B11001Dm1='Total:'
B11001Dm2='Family households:'
B11001Dm3='Married-couple family'
B11001Dm4='Other family:'
B11001Dm5='Male householder, no wife present'
B11001Dm6='Female householder, no husband present'
B11001Dm7='Nonfamily households:'
B11001Dm8='Householder living alone'
B11001Dm9='Householder not living alone'
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Households with a householder who is Native Hawaiian and Other Pacific Islander alone */
 
B11001Em1='Total:'
B11001Em2='Family households:'
B11001Em3='Married-couple family'
B11001Em4='Other family:'
B11001Em5='Male householder, no wife present'
B11001Em6='Female householder, no husband present'
B11001Em7='Nonfamily households:'
B11001Em8='Householder living alone'
B11001Em9='Householder not living alone'
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) (SOME OTHER RACE ALONE) */
/*Universe:  Households with a householder who is Some other race alone */
 
B11001Fm1='Total:'
B11001Fm2='Family households:'
B11001Fm3='Married-couple family'
B11001Fm4='Other family:'
B11001Fm5='Male householder, no wife present'
B11001Fm6='Female householder, no husband present'
B11001Fm7='Nonfamily households:'
B11001Fm8='Householder living alone'
B11001Fm9='Householder not living alone'
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) (TWO OR MORE RACES) */
/*Universe:  Households with a householder who is Two or more races */
 
B11001Gm1='Total:'
B11001Gm2='Family households:'
B11001Gm3='Married-couple family'
B11001Gm4='Other family:'
B11001Gm5='Male householder, no wife present'
B11001Gm6='Female householder, no husband present'
B11001Gm7='Nonfamily households:'
B11001Gm8='Householder living alone'
B11001Gm9='Householder not living alone'
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  Households with a householder who is White alone, not Hispanic or Latino */
 
B11001Hm1='Total:'
B11001Hm2='Family households:'
B11001Hm3='Married-couple family'
B11001Hm4='Other family:'
B11001Hm5='Male householder, no wife present'
B11001Hm6='Female householder, no husband present'
B11001Hm7='Nonfamily households:'
B11001Hm8='Householder living alone'
B11001Hm9='Householder not living alone'
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) (HISPANIC OR LATINO) */
/*Universe:  Households with a householder who is Hispanic or Latino */
 
B11001Im1='Total:'
B11001Im2='Family households:'
B11001Im3='Married-couple family'
B11001Im4='Other family:'
B11001Im5='Male householder, no wife present'
B11001Im6='Female householder, no husband present'
B11001Im7='Nonfamily households:'
B11001Im8='Householder living alone'
B11001Im9='Householder not living alone'
/*HOUSEHOLD TYPE BY RELATIVES AND NONRELATIVES FOR POPULATION IN HOUSEHOLDS */
/*Universe:  Population in households */
 
B11002m1='Total:'
B11002m2='In family households:'
B11002m3='In married-couple family:'
B11002m4='Relatives'
B11002m5='Nonrelatives'
B11002m6='In male householder, no wife present, family:'
B11002m7='Relatives'
B11002m8='Nonrelatives'
B11002m9='In female householder, no husband present, family:'
B11002m10='Relatives'
B11002m11='Nonrelatives'
B11002m12='In nonfamily households'
/*HOUSEHOLD TYPE BY RELATIVES AND NONRELATIVES FOR POPULATION IN HOUSEHOLDS (WHITE ALONE) */
/*Universe:  Population in households with a householder who is White alone */
 
B11002Am1='Total:'
B11002Am2='In family households:'
B11002Am3='In married-couple family:'
B11002Am4='Relatives'
B11002Am5='Nonrelatives'
B11002Am6='In male householder, no wife present, family:'
B11002Am7='Relatives'
B11002Am8='Nonrelatives'
B11002Am9='In female householder, no husband present, family:'
B11002Am10='Relatives'
B11002Am11='Nonrelatives'
B11002Am12='In nonfamily households'
/*HOUSEHOLD TYPE BY RELATIVES AND NONRELATIVES FOR POPULATION IN HOUSEHOLDS (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Population in households with a householder who is Black or African American alone */
 
B11002Bm1='Total:'
B11002Bm2='In family households:'
B11002Bm3='In married-couple family:'
B11002Bm4='Relatives'
B11002Bm5='Nonrelatives'
B11002Bm6='In male householder, no wife present, family:'
B11002Bm7='Relatives'
B11002Bm8='Nonrelatives'
B11002Bm9='In female householder, no husband present, family:'
B11002Bm10='Relatives'
B11002Bm11='Nonrelatives'
B11002Bm12='In nonfamily households'
/*HOUSEHOLD TYPE BY RELATIVES AND NONRELATIVES FOR POPULATION IN HOUSEHOLDS (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  Population in households with a householder who is American Indian and Alaska Native alone */
 
B11002Cm1='Total:'
B11002Cm2='In family households:'
B11002Cm3='In married-couple family:'
B11002Cm4='Relatives'
B11002Cm5='Nonrelatives'
B11002Cm6='In male householder, no wife present, family:'
B11002Cm7='Relatives'
B11002Cm8='Nonrelatives'
B11002Cm9='In female householder, no husband present, family:'
B11002Cm10='Relatives'
B11002Cm11='Nonrelatives'
B11002Cm12='In nonfamily households'
/*HOUSEHOLD TYPE BY RELATIVES AND NONRELATIVES FOR POPULATION IN HOUSEHOLDS (ASIAN ALONE) */
/*Universe:  Population in households with a householder who is Asian alone */
 
B11002Dm1='Total:'
B11002Dm2='In family households:'
B11002Dm3='In married-couple family:'
B11002Dm4='Relatives'
B11002Dm5='Nonrelatives'
B11002Dm6='In male householder, no wife present, family:'
B11002Dm7='Relatives'
B11002Dm8='Nonrelatives'
B11002Dm9='In female householder, no husband present, family:'
B11002Dm10='Relatives'
B11002Dm11='Nonrelatives'
B11002Dm12='In nonfamily households'
/*HOUSEHOLD TYPE BY RELATIVES AND NONRELATIVES FOR POPULATION IN HOUSEHOLDS (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Population in households with a householder who is Native Hawaiian and Other Pacific Islander alone */
 
B11002Em1='Total:'
B11002Em2='In family households:'
B11002Em3='In married-couple family:'
B11002Em4='Relatives'
B11002Em5='Nonrelatives'
B11002Em6='In male householder, no wife present, family:'
B11002Em7='Relatives'
B11002Em8='Nonrelatives'
B11002Em9='In female householder, no husband present, family:'
B11002Em10='Relatives'
B11002Em11='Nonrelatives'
B11002Em12='In nonfamily households'
/*HOUSEHOLD TYPE BY RELATIVES AND NONRELATIVES FOR POPULATION IN HOUSEHOLDS (SOME OTHER RACE ALONE) */
/*Universe:  Population in households with a householder who is Some other race alone */
 
B11002Fm1='Total:'
B11002Fm2='In family households:'
B11002Fm3='In married-couple family:'
B11002Fm4='Relatives'
B11002Fm5='Nonrelatives'
B11002Fm6='In male householder, no wife present, family:'
B11002Fm7='Relatives'
B11002Fm8='Nonrelatives'
B11002Fm9='In female householder, no husband present, family:'
B11002Fm10='Relatives'
B11002Fm11='Nonrelatives'
B11002Fm12='In nonfamily households'
/*HOUSEHOLD TYPE BY RELATIVES AND NONRELATIVES FOR POPULATION IN HOUSEHOLDS (TWO OR MORE RACES) */
/*Universe:  Population in households with a householder who is Two or more races */
 
B11002Gm1='Total:'
B11002Gm2='In family households:'
B11002Gm3='In married-couple family:'
B11002Gm4='Relatives'
B11002Gm5='Nonrelatives'
B11002Gm6='In male householder, no wife present, family:'
B11002Gm7='Relatives'
B11002Gm8='Nonrelatives'
B11002Gm9='In female householder, no husband present, family:'
B11002Gm10='Relatives'
B11002Gm11='Nonrelatives'
B11002Gm12='In nonfamily households'
/*HOUSEHOLD TYPE BY RELATIVES AND NONRELATIVES FOR POPULATION IN HOUSEHOLDS (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  Population in households with a householder who is White alone, not Hispanic or Latino */
 
B11002Hm1='Total:'
B11002Hm2='In family households:'
B11002Hm3='In married-couple family:'
B11002Hm4='Relatives'
B11002Hm5='Nonrelatives'
B11002Hm6='In male householder, no wife present, family:'
B11002Hm7='Relatives'
B11002Hm8='Nonrelatives'
B11002Hm9='In female householder, no husband present, family:'
B11002Hm10='Relatives'
B11002Hm11='Nonrelatives'
B11002Hm12='In nonfamily households'
/*HOUSEHOLD TYPE BY RELATIVES AND NONRELATIVES FOR POPULATION IN HOUSEHOLDS (HISPANIC OR LATINO) */
/*Universe:  Population in households with a householder who is Hispanic or Latino */
 
B11002Im1='Total:'
B11002Im2='In family households:'
B11002Im3='In married-couple family:'
B11002Im4='Relatives'
B11002Im5='Nonrelatives'
B11002Im6='In male householder, no wife present, family:'
B11002Im7='Relatives'
B11002Im8='Nonrelatives'
B11002Im9='In female householder, no husband present, family:'
B11002Im10='Relatives'
B11002Im11='Nonrelatives'
B11002Im12='In nonfamily households'
/*FAMILY TYPE BY PRESENCE AND AGE OF OWN CHILDREN UNDER 18 YEARS */
/*Universe:  Families */
 
B11003m1='Total:'
B11003m2='Married-couple family:'
B11003m3='With own children under 18 years:'
B11003m4='Under 6 years only'
B11003m5='Under 6 years and 6 to 17 years'
B11003m6='6 to 17 years only'
B11003m7='No own children under 18 years'
B11003m8='Other family:'
B11003m9='Male householder, no wife present:'
B11003m10='With own children under 18 years:'
B11003m11='Under 6 years only'
B11003m12='Under 6 years and 6 to 17 years'
B11003m13='6 to 17 years only'
B11003m14='No own children under 18 years'
B11003m15='Female householder, no husband present:'
B11003m16='With own children under 18 years:'
B11003m17='Under 6 years only'
B11003m18='Under 6 years and 6 to 17 years'
B11003m19='6 to 17 years only'
B11003m20='No own children under 18 years'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B11001m1
B11001m2
B11001m3
B11001m4
B11001m5
B11001m6
B11001m7
B11001m8
B11001m9
 
B11001Am1
B11001Am2
B11001Am3
B11001Am4
B11001Am5
B11001Am6
B11001Am7
B11001Am8
B11001Am9
 
B11001Bm1
B11001Bm2
B11001Bm3
B11001Bm4
B11001Bm5
B11001Bm6
B11001Bm7
B11001Bm8
B11001Bm9
 
B11001Cm1
B11001Cm2
B11001Cm3
B11001Cm4
B11001Cm5
B11001Cm6
B11001Cm7
B11001Cm8
B11001Cm9
 
B11001Dm1
B11001Dm2
B11001Dm3
B11001Dm4
B11001Dm5
B11001Dm6
B11001Dm7
B11001Dm8
B11001Dm9
 
B11001Em1
B11001Em2
B11001Em3
B11001Em4
B11001Em5
B11001Em6
B11001Em7
B11001Em8
B11001Em9
 
B11001Fm1
B11001Fm2
B11001Fm3
B11001Fm4
B11001Fm5
B11001Fm6
B11001Fm7
B11001Fm8
B11001Fm9
 
B11001Gm1
B11001Gm2
B11001Gm3
B11001Gm4
B11001Gm5
B11001Gm6
B11001Gm7
B11001Gm8
B11001Gm9
 
B11001Hm1
B11001Hm2
B11001Hm3
B11001Hm4
B11001Hm5
B11001Hm6
B11001Hm7
B11001Hm8
B11001Hm9
 
B11001Im1
B11001Im2
B11001Im3
B11001Im4
B11001Im5
B11001Im6
B11001Im7
B11001Im8
B11001Im9
 
B11002m1
B11002m2
B11002m3
B11002m4
B11002m5
B11002m6
B11002m7
B11002m8
B11002m9
B11002m10
B11002m11
B11002m12
 
B11002Am1
B11002Am2
B11002Am3
B11002Am4
B11002Am5
B11002Am6
B11002Am7
B11002Am8
B11002Am9
B11002Am10
B11002Am11
B11002Am12
 
B11002Bm1
B11002Bm2
B11002Bm3
B11002Bm4
B11002Bm5
B11002Bm6
B11002Bm7
B11002Bm8
B11002Bm9
B11002Bm10
B11002Bm11
B11002Bm12
 
B11002Cm1
B11002Cm2
B11002Cm3
B11002Cm4
B11002Cm5
B11002Cm6
B11002Cm7
B11002Cm8
B11002Cm9
B11002Cm10
B11002Cm11
B11002Cm12
 
B11002Dm1
B11002Dm2
B11002Dm3
B11002Dm4
B11002Dm5
B11002Dm6
B11002Dm7
B11002Dm8
B11002Dm9
B11002Dm10
B11002Dm11
B11002Dm12
 
B11002Em1
B11002Em2
B11002Em3
B11002Em4
B11002Em5
B11002Em6
B11002Em7
B11002Em8
B11002Em9
B11002Em10
B11002Em11
B11002Em12
 
B11002Fm1
B11002Fm2
B11002Fm3
B11002Fm4
B11002Fm5
B11002Fm6
B11002Fm7
B11002Fm8
B11002Fm9
B11002Fm10
B11002Fm11
B11002Fm12
 
B11002Gm1
B11002Gm2
B11002Gm3
B11002Gm4
B11002Gm5
B11002Gm6
B11002Gm7
B11002Gm8
B11002Gm9
B11002Gm10
B11002Gm11
B11002Gm12
 
B11002Hm1
B11002Hm2
B11002Hm3
B11002Hm4
B11002Hm5
B11002Hm6
B11002Hm7
B11002Hm8
B11002Hm9
B11002Hm10
B11002Hm11
B11002Hm12
 
B11002Im1
B11002Im2
B11002Im3
B11002Im4
B11002Im5
B11002Im6
B11002Im7
B11002Im8
B11002Im9
B11002Im10
B11002Im11
B11002Im12
 
B11003m1
B11003m2
B11003m3
B11003m4
B11003m5
B11003m6
B11003m7
B11003m8
B11003m9
B11003m10
B11003m11
B11003m12
B11003m13
B11003m14
B11003m15
B11003m16
B11003m17
B11003m18
B11003m19
B11003m20
;
RUN;
TITLE2;
