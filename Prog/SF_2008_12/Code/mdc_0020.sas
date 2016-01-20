TITLE2 "m20125dc0020000";
DATA work.SFm0020dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0020000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY AGE FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Population 1 year and over in the United States */
 
B07401m1='Total living in area 1 year ago:'
B07401m2='1 to 4 years'
B07401m3='5 to 17 years'
B07401m4='18 and 19 years'
B07401m5='20 to 24 years'
B07401m6='25 to 29 years'
B07401m7='30 to 34 years'
B07401m8='35 to 39 years'
B07401m9='40 to 44 years'
B07401m10='45 to 49 years'
B07401m11='50 to 54 years'
B07401m12='55 to 59 years'
B07401m13='60 to 64 years'
B07401m14='65 to 69 years'
B07401m15='70 to 74 years'
B07401m16='75 years and over'
B07401m17='Same house:'
B07401m18='1 to 4 years'
B07401m19='5 to 17 years'
B07401m20='18 and 19 years'
B07401m21='20 to 24 years'
B07401m22='25 to 29 years'
B07401m23='30 to 34 years'
B07401m24='35 to 39 years'
B07401m25='40 to 44 years'
B07401m26='45 to 49 years'
B07401m27='50 to 54 years'
B07401m28='55 to 59 years'
B07401m29='60 to 64 years'
B07401m30='65 to 69 years'
B07401m31='70 to 74 years'
B07401m32='75 years and over'
B07401m33='Moved within same county:'
B07401m34='1 to 4 years'
B07401m35='5 to 17 years'
B07401m36='18 and 19 years'
B07401m37='20 to 24 years'
B07401m38='25 to 29 years'
B07401m39='30 to 34 years'
B07401m40='35 to 39 years'
B07401m41='40 to 44 years'
B07401m42='45 to 49 years'
B07401m43='50 to 54 years'
B07401m44='55 to 59 years'
B07401m45='60 to 64 years'
B07401m46='65 to 69 years'
B07401m47='70 to 74 years'
B07401m48='75 years and over'
B07401m49='Moved to different county within same state:'
B07401m50='1 to 4 years'
B07401m51='5 to 17 years'
B07401m52='18 and 19 years'
B07401m53='20 to 24 years'
B07401m54='25 to 29 years'
B07401m55='30 to 34 years'
B07401m56='35 to 39 years'
B07401m57='40 to 44 years'
B07401m58='45 to 49 years'
B07401m59='50 to 54 years'
B07401m60='55 to 59 years'
B07401m61='60 to 64 years'
B07401m62='65 to 69 years'
B07401m63='70 to 74 years'
B07401m64='75 years and over'
B07401m65='Moved to different state:'
B07401m66='1 to 4 years'
B07401m67='5 to 17 years'
B07401m68='18 and 19 years'
B07401m69='20 to 24 years'
B07401m70='25 to 29 years'
B07401m71='30 to 34 years'
B07401m72='35 to 39 years'
B07401m73='40 to 44 years'
B07401m74='45 to 49 years'
B07401m75='50 to 54 years'
B07401m76='55 to 59 years'
B07401m77='60 to 64 years'
B07401m78='65 to 69 years'
B07401m79='70 to 74 years'
B07401m80='75 years and over'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY AGE FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Population 1 year and over */
 
B07401PRm1='Total living in area 1 year ago:'
B07401PRm2='1 to 4 years'
B07401PRm3='5 to 17 years'
B07401PRm4='18 and 19 years'
B07401PRm5='20 to 24 years'
B07401PRm6='25 to 29 years'
B07401PRm7='30 to 34 years'
B07401PRm8='35 to 39 years'
B07401PRm9='40 to 44 years'
B07401PRm10='45 to 49 years'
B07401PRm11='50 to 54 years'
B07401PRm12='55 to 59 years'
B07401PRm13='60 to 64 years'
B07401PRm14='65 to 69 years'
B07401PRm15='70 to 74 years'
B07401PRm16='75 years and over'
B07401PRm17='Same house:'
B07401PRm18='1 to 4 years'
B07401PRm19='5 to 17 years'
B07401PRm20='18 and 19 years'
B07401PRm21='20 to 24 years'
B07401PRm22='25 to 29 years'
B07401PRm23='30 to 34 years'
B07401PRm24='35 to 39 years'
B07401PRm25='40 to 44 years'
B07401PRm26='45 to 49 years'
B07401PRm27='50 to 54 years'
B07401PRm28='55 to 59 years'
B07401PRm29='60 to 64 years'
B07401PRm30='65 to 69 years'
B07401PRm31='70 to 74 years'
B07401PRm32='75 years and over'
B07401PRm33='Moved within same municipio:'
B07401PRm34='1 to 4 years'
B07401PRm35='5 to 17 years'
B07401PRm36='18 and 19 years'
B07401PRm37='20 to 24 years'
B07401PRm38='25 to 29 years'
B07401PRm39='30 to 34 years'
B07401PRm40='35 to 39 years'
B07401PRm41='40 to 44 years'
B07401PRm42='45 to 49 years'
B07401PRm43='50 to 54 years'
B07401PRm44='55 to 59 years'
B07401PRm45='60 to 64 years'
B07401PRm46='65 to 69 years'
B07401PRm47='70 to 74 years'
B07401PRm48='75 years and over'
B07401PRm49='Moved to different municipio:'
B07401PRm50='1 to 4 years'
B07401PRm51='5 to 17 years'
B07401PRm52='18 and 19 years'
B07401PRm53='20 to 24 years'
B07401PRm54='25 to 29 years'
B07401PRm55='30 to 34 years'
B07401PRm56='35 to 39 years'
B07401PRm57='40 to 44 years'
B07401PRm58='45 to 49 years'
B07401PRm59='50 to 54 years'
B07401PRm60='55 to 59 years'
B07401PRm61='60 to 64 years'
B07401PRm62='65 to 69 years'
B07401PRm63='70 to 74 years'
B07401PRm64='75 years and over'
B07401PRm65='Moved to the United States:'
B07401PRm66='1 to 4 years'
B07401PRm67='5 to 17 years'
B07401PRm68='18 and 19 years'
B07401PRm69='20 to 24 years'
B07401PRm70='25 to 29 years'
B07401PRm71='30 to 34 years'
B07401PRm72='35 to 39 years'
B07401PRm73='40 to 44 years'
B07401PRm74='45 to 49 years'
B07401PRm75='50 to 54 years'
B07401PRm76='55 to 59 years'
B07401PRm77='60 to 64 years'
B07401PRm78='65 to 69 years'
B07401PRm79='70 to 74 years'
B07401PRm80='75 years and over'
/*MEDIAN AGE BY GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Population 1 year and over in the United States */
/*Median age -- */
 
B07402m1='Total living in area 1 year ago:'
B07402m2='Same house'
B07402m3='Moved within same county'
B07402m4='Moved to different county within same state'
B07402m5='Moved to different state'
/*MEDIAN AGE BY GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Population 1 year and over */
/*Median age -- */
 
B07402PRm1='Total living in area 1 year ago:'
B07402PRm2='Same house'
B07402PRm3='Moved within same municipio'
B07402PRm4='Moved to different municipio'
B07402PRm5='Moved to the United States'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY SEX FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Population 1 year and over in the United States */
 
B07403m1='Total living in area 1 year ago:'
B07403m2='Male'
B07403m3='Female'
B07403m4='Same house:'
B07403m5='Male'
B07403m6='Female'
B07403m7='Moved within same county:'
B07403m8='Male'
B07403m9='Female'
B07403m10='Moved to different county within same state:'
B07403m11='Male'
B07403m12='Female'
B07403m13='Moved to different state:'
B07403m14='Male'
B07403m15='Female'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY SEX FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Population 1 year and over */
 
B07403PRm1='Total living in area 1 year ago:'
B07403PRm2='Male'
B07403PRm3='Female'
B07403PRm4='Same house:'
B07403PRm5='Male'
B07403PRm6='Female'
B07403PRm7='Moved within same municipio:'
B07403PRm8='Male'
B07403PRm9='Female'
B07403PRm10='Moved to different municipio:'
B07403PRm11='Male'
B07403PRm12='Female'
B07403PRm13='Moved to the United States:'
B07403PRm14='Male'
B07403PRm15='Female'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (WHITE ALONE) FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  White alone population 1 year and over in the United States */
 
B07404Am1='Total living in area 1 year ago:'
B07404Am2='Same house'
B07404Am3='Moved within same county'
B07404Am4='Moved to different county within same state'
B07404Am5='Moved to different state'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (BLACK OR AFRICAN AMERICAN ALONE) FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Black or African American alone population 1 year and over in the United States */
 
B07404Bm1='Total living in area 1 year ago:'
B07404Bm2='Same house'
B07404Bm3='Moved within same county'
B07404Bm4='Moved to different county within same state'
B07404Bm5='Moved to different state'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (AMERICAN INDIAN AND ALASKA NATIVE ALONE) FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  American Indian and Alaskan Native alone population 1 year and over in the United States */
 
B07404Cm1='Total living in area 1 year ago:'
B07404Cm2='Same house'
B07404Cm3='Moved within same county'
B07404Cm4='Moved to different county within same state'
B07404Cm5='Moved to different state'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (ASIAN ALONE) FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Asian alone population 1 year and over in the United States */
 
B07404Dm1='Total living in area 1 year ago:'
B07404Dm2='Same house'
B07404Dm3='Moved within same county'
B07404Dm4='Moved to different county within same state'
B07404Dm5='Moved to different state'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 1 year and over in the United States */
 
B07404Em1='Total living in area 1 year ago:'
B07404Em2='Same house'
B07404Em3='Moved within same county'
B07404Em4='Moved to different county within same state'
B07404Em5='Moved to different state'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (SOME OTHER RACE ALONE) FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Some other race alone population 1 year and over in the United States */
 
B07404Fm1='Total living in area 1 year ago:'
B07404Fm2='Same house'
B07404Fm3='Moved within same county'
B07404Fm4='Moved to different county within same state'
B07404Fm5='Moved to different state'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (TWO OR MORE RACES) FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Two or more races population 1 year and over in the United States */
 
B07404Gm1='Total living in area 1 year ago:'
B07404Gm2='Same house'
B07404Gm3='Moved within same county'
B07404Gm4='Moved to different county within same state'
B07404Gm5='Moved to different state'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (WHITE ALONE, NOT HISPANIC OR LATINO) FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  White alone, not Hispanic or Latino population 1 year and over in the United States */
 
B07404Hm1='Total living in area 1 year ago:'
B07404Hm2='Same house'
B07404Hm3='Moved within same county'
B07404Hm4='Moved to different county within same state'
B07404Hm5='Moved to different state'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (HISPANIC OR LATINO) FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Hispanic or Latino population 1 year and over in the United States */
 
B07404Im1='Total living in area 1 year ago:'
B07404Im2='Same house'
B07404Im3='Moved within same county'
B07404Im4='Moved to different county within same state'
B07404Im5='Moved to different state'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B07401m1
B07401m2
B07401m3
B07401m4
B07401m5
B07401m6
B07401m7
B07401m8
B07401m9
B07401m10
B07401m11
B07401m12
B07401m13
B07401m14
B07401m15
B07401m16
B07401m17
B07401m18
B07401m19
B07401m20
B07401m21
B07401m22
B07401m23
B07401m24
B07401m25
B07401m26
B07401m27
B07401m28
B07401m29
B07401m30
B07401m31
B07401m32
B07401m33
B07401m34
B07401m35
B07401m36
B07401m37
B07401m38
B07401m39
B07401m40
B07401m41
B07401m42
B07401m43
B07401m44
B07401m45
B07401m46
B07401m47
B07401m48
B07401m49
B07401m50
B07401m51
B07401m52
B07401m53
B07401m54
B07401m55
B07401m56
B07401m57
B07401m58
B07401m59
B07401m60
B07401m61
B07401m62
B07401m63
B07401m64
B07401m65
B07401m66
B07401m67
B07401m68
B07401m69
B07401m70
B07401m71
B07401m72
B07401m73
B07401m74
B07401m75
B07401m76
B07401m77
B07401m78
B07401m79
B07401m80
 
B07401PRm1
B07401PRm2
B07401PRm3
B07401PRm4
B07401PRm5
B07401PRm6
B07401PRm7
B07401PRm8
B07401PRm9
B07401PRm10
B07401PRm11
B07401PRm12
B07401PRm13
B07401PRm14
B07401PRm15
B07401PRm16
B07401PRm17
B07401PRm18
B07401PRm19
B07401PRm20
B07401PRm21
B07401PRm22
B07401PRm23
B07401PRm24
B07401PRm25
B07401PRm26
B07401PRm27
B07401PRm28
B07401PRm29
B07401PRm30
B07401PRm31
B07401PRm32
B07401PRm33
B07401PRm34
B07401PRm35
B07401PRm36
B07401PRm37
B07401PRm38
B07401PRm39
B07401PRm40
B07401PRm41
B07401PRm42
B07401PRm43
B07401PRm44
B07401PRm45
B07401PRm46
B07401PRm47
B07401PRm48
B07401PRm49
B07401PRm50
B07401PRm51
B07401PRm52
B07401PRm53
B07401PRm54
B07401PRm55
B07401PRm56
B07401PRm57
B07401PRm58
B07401PRm59
B07401PRm60
B07401PRm61
B07401PRm62
B07401PRm63
B07401PRm64
B07401PRm65
B07401PRm66
B07401PRm67
B07401PRm68
B07401PRm69
B07401PRm70
B07401PRm71
B07401PRm72
B07401PRm73
B07401PRm74
B07401PRm75
B07401PRm76
B07401PRm77
B07401PRm78
B07401PRm79
B07401PRm80
 
B07402m1
B07402m2
B07402m3
B07402m4
B07402m5
 
B07402PRm1
B07402PRm2
B07402PRm3
B07402PRm4
B07402PRm5
 
B07403m1
B07403m2
B07403m3
B07403m4
B07403m5
B07403m6
B07403m7
B07403m8
B07403m9
B07403m10
B07403m11
B07403m12
B07403m13
B07403m14
B07403m15
 
B07403PRm1
B07403PRm2
B07403PRm3
B07403PRm4
B07403PRm5
B07403PRm6
B07403PRm7
B07403PRm8
B07403PRm9
B07403PRm10
B07403PRm11
B07403PRm12
B07403PRm13
B07403PRm14
B07403PRm15
 
B07404Am1
B07404Am2
B07404Am3
B07404Am4
B07404Am5
 
B07404Bm1
B07404Bm2
B07404Bm3
B07404Bm4
B07404Bm5
 
B07404Cm1
B07404Cm2
B07404Cm3
B07404Cm4
B07404Cm5
 
B07404Dm1
B07404Dm2
B07404Dm3
B07404Dm4
B07404Dm5
 
B07404Em1
B07404Em2
B07404Em3
B07404Em4
B07404Em5
 
B07404Fm1
B07404Fm2
B07404Fm3
B07404Fm4
B07404Fm5
 
B07404Gm1
B07404Gm2
B07404Gm3
B07404Gm4
B07404Gm5
 
B07404Hm1
B07404Hm2
B07404Hm3
B07404Hm4
B07404Hm5
 
B07404Im1
B07404Im2
B07404Im3
B07404Im4
B07404Im5
;
RUN;
TITLE2;
