TITLE2 "m20125md0003000";
DATA work.SFm0003md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0003000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SEX BY AGE (TWO OR MORE RACES) */
/*Universe:  People who are Two or More Races */
 
B01001Gm1='Total:'
B01001Gm2='Male:'
B01001Gm3='Under 5 years'
B01001Gm4='5 to 9 years'
B01001Gm5='10 to 14 years'
B01001Gm6='15 to 17 years'
B01001Gm7='18 and 19 years'
B01001Gm8='20 to 24 years'
B01001Gm9='25 to 29 years'
B01001Gm10='30 to 34 years'
B01001Gm11='35 to 44 years'
B01001Gm12='45 to 54 years'
B01001Gm13='55 to 64 years'
B01001Gm14='65 to 74 years'
B01001Gm15='75 to 84 years'
B01001Gm16='85 years and over'
B01001Gm17='Female:'
B01001Gm18='Under 5 years'
B01001Gm19='5 to 9 years'
B01001Gm20='10 to 14 years'
B01001Gm21='15 to 17 years'
B01001Gm22='18 and 19 years'
B01001Gm23='20 to 24 years'
B01001Gm24='25 to 29 years'
B01001Gm25='30 to 34 years'
B01001Gm26='35 to 44 years'
B01001Gm27='45 to 54 years'
B01001Gm28='55 to 64 years'
B01001Gm29='65 to 74 years'
B01001Gm30='75 to 84 years'
B01001Gm31='85 years and over'
/*SEX BY AGE (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population */
 
B01001Hm1='Total:'
B01001Hm2='Male:'
B01001Hm3='Under 5 years'
B01001Hm4='5 to 9 years'
B01001Hm5='10 to 14 years'
B01001Hm6='15 to 17 years'
B01001Hm7='18 and 19 years'
B01001Hm8='20 to 24 years'
B01001Hm9='25 to 29 years'
B01001Hm10='30 to 34 years'
B01001Hm11='35 to 44 years'
B01001Hm12='45 to 54 years'
B01001Hm13='55 to 64 years'
B01001Hm14='65 to 74 years'
B01001Hm15='75 to 84 years'
B01001Hm16='85 years and over'
B01001Hm17='Female:'
B01001Hm18='Under 5 years'
B01001Hm19='5 to 9 years'
B01001Hm20='10 to 14 years'
B01001Hm21='15 to 17 years'
B01001Hm22='18 and 19 years'
B01001Hm23='20 to 24 years'
B01001Hm24='25 to 29 years'
B01001Hm25='30 to 34 years'
B01001Hm26='35 to 44 years'
B01001Hm27='45 to 54 years'
B01001Hm28='55 to 64 years'
B01001Hm29='65 to 74 years'
B01001Hm30='75 to 84 years'
B01001Hm31='85 years and over'
/*SEX BY AGE (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population */
 
B01001Im1='Total:'
B01001Im2='Male:'
B01001Im3='Under 5 years'
B01001Im4='5 to 9 years'
B01001Im5='10 to 14 years'
B01001Im6='15 to 17 years'
B01001Im7='18 and 19 years'
B01001Im8='20 to 24 years'
B01001Im9='25 to 29 years'
B01001Im10='30 to 34 years'
B01001Im11='35 to 44 years'
B01001Im12='45 to 54 years'
B01001Im13='55 to 64 years'
B01001Im14='65 to 74 years'
B01001Im15='75 to 84 years'
B01001Im16='85 years and over'
B01001Im17='Female:'
B01001Im18='Under 5 years'
B01001Im19='5 to 9 years'
B01001Im20='10 to 14 years'
B01001Im21='15 to 17 years'
B01001Im22='18 and 19 years'
B01001Im23='20 to 24 years'
B01001Im24='25 to 29 years'
B01001Im25='30 to 34 years'
B01001Im26='35 to 44 years'
B01001Im27='45 to 54 years'
B01001Im28='55 to 64 years'
B01001Im29='65 to 74 years'
B01001Im30='75 to 84 years'
B01001Im31='85 years and over'
/*MEDIAN AGE BY SEX */
/*Universe:  Total population */
/*Median age -- */
 
B01002m1='Total:'
B01002m2='Male'
B01002m3='Female'
/*MEDIAN AGE BY SEX (WHITE ALONE) */
/*Universe:  People who are White alone */
/*Median age -- */
 
B01002Am1='Total:'
B01002Am2='Male'
B01002Am3='Female'
/*MEDIAN AGE BY SEX (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone */
/*Median age -- */
 
B01002Bm1='Total:'
B01002Bm2='Male'
B01002Bm3='Female'
/*MEDIAN AGE BY SEX (AMERICAN INDIAN AND ALASKA NATIVE) */
/*Universe:  People who are American Indian and Alaska Native alone */
/*Median age -- */
 
B01002Cm1='Total:'
B01002Cm2='Male'
B01002Cm3='Female'
/*MEDIAN AGE BY SEX (ASIAN ALONE) */
/*Universe:  People who are Asian alone */
/*Median age -- */
 
B01002Dm1='Total:'
B01002Dm2='Male'
B01002Dm3='Female'
/*MEDIAN AGE BY SEX (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  People who are Native Hawaiian and Other Pacific Islander alone */
/*Median age -- */
 
B01002Em1='Total:'
B01002Em2='Male'
B01002Em3='Female'
/*MEDIAN AGE BY SEX (SOME OTHER RACE ALONE) */
/*Universe:  People who are Some Other Race alone */
/*Median age -- */
 
B01002Fm1='Total:'
B01002Fm2='Male'
B01002Fm3='Female'
/*MEDIAN AGE BY SEX (TWO OR MORE RACES) */
/*Universe:  People who are Two or More Races */
/*Median age -- */
 
B01002Gm1='Total:'
B01002Gm2='Male'
B01002Gm3='Female'
/*MEDIAN AGE BY SEX (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population */
/*Median age -- */
 
B01002Hm1='Total:'
B01002Hm2='Male'
B01002Hm3='Female'
/*MEDIAN AGE BY SEX (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population */
/*Median age -- */
 
B01002Im1='Total:'
B01002Im2='Male'
B01002Im3='Female'
/*TOTAL POPULATION */
/*Universe:  Total population */
 
B01003m1='Total'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B01001Gm1
B01001Gm2
B01001Gm3
B01001Gm4
B01001Gm5
B01001Gm6
B01001Gm7
B01001Gm8
B01001Gm9
B01001Gm10
B01001Gm11
B01001Gm12
B01001Gm13
B01001Gm14
B01001Gm15
B01001Gm16
B01001Gm17
B01001Gm18
B01001Gm19
B01001Gm20
B01001Gm21
B01001Gm22
B01001Gm23
B01001Gm24
B01001Gm25
B01001Gm26
B01001Gm27
B01001Gm28
B01001Gm29
B01001Gm30
B01001Gm31
 
B01001Hm1
B01001Hm2
B01001Hm3
B01001Hm4
B01001Hm5
B01001Hm6
B01001Hm7
B01001Hm8
B01001Hm9
B01001Hm10
B01001Hm11
B01001Hm12
B01001Hm13
B01001Hm14
B01001Hm15
B01001Hm16
B01001Hm17
B01001Hm18
B01001Hm19
B01001Hm20
B01001Hm21
B01001Hm22
B01001Hm23
B01001Hm24
B01001Hm25
B01001Hm26
B01001Hm27
B01001Hm28
B01001Hm29
B01001Hm30
B01001Hm31
 
B01001Im1
B01001Im2
B01001Im3
B01001Im4
B01001Im5
B01001Im6
B01001Im7
B01001Im8
B01001Im9
B01001Im10
B01001Im11
B01001Im12
B01001Im13
B01001Im14
B01001Im15
B01001Im16
B01001Im17
B01001Im18
B01001Im19
B01001Im20
B01001Im21
B01001Im22
B01001Im23
B01001Im24
B01001Im25
B01001Im26
B01001Im27
B01001Im28
B01001Im29
B01001Im30
B01001Im31
 
B01002m1
B01002m2
B01002m3
 
B01002Am1
B01002Am2
B01002Am3
 
B01002Bm1
B01002Bm2
B01002Bm3
 
B01002Cm1
B01002Cm2
B01002Cm3
 
B01002Dm1
B01002Dm2
B01002Dm3
 
B01002Em1
B01002Em2
B01002Em3
 
B01002Fm1
B01002Fm2
B01002Fm3
 
B01002Gm1
B01002Gm2
B01002Gm3
 
B01002Hm1
B01002Hm2
B01002Hm3
 
B01002Im1
B01002Im2
B01002Im3
 
B01003m1
;
RUN;
TITLE2;
