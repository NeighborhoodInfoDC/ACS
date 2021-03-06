TITLE2 "m20125dc0016000";
DATA work.SFm0016dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0016000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY AGE FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Population 1 year and over in the United States */
 
B07001m1='Total:'
B07001m2='1 to 4 years'
B07001m3='5 to 17 years'
B07001m4='18 and 19 years'
B07001m5='20 to 24 years'
B07001m6='25 to 29 years'
B07001m7='30 to 34 years'
B07001m8='35 to 39 years'
B07001m9='40 to 44 years'
B07001m10='45 to 49 years'
B07001m11='50 to 54 years'
B07001m12='55 to 59 years'
B07001m13='60 to 64 years'
B07001m14='65 to 69 years'
B07001m15='70 to 74 years'
B07001m16='75 years and over'
B07001m17='Same house 1 year ago:'
B07001m18='1 to 4 years'
B07001m19='5 to 17 years'
B07001m20='18 and 19 years'
B07001m21='20 to 24 years'
B07001m22='25 to 29 years'
B07001m23='30 to 34 years'
B07001m24='35 to 39 years'
B07001m25='40 to 44 years'
B07001m26='45 to 49 years'
B07001m27='50 to 54 years'
B07001m28='55 to 59 years'
B07001m29='60 to 64 years'
B07001m30='65 to 69 years'
B07001m31='70 to 74 years'
B07001m32='75 years and over'
B07001m33='Moved within same county:'
B07001m34='1 to 4 years'
B07001m35='5 to 17 years'
B07001m36='18 and 19 years'
B07001m37='20 to 24 years'
B07001m38='25 to 29 years'
B07001m39='30 to 34 years'
B07001m40='35 to 39 years'
B07001m41='40 to 44 years'
B07001m42='45 to 49 years'
B07001m43='50 to 54 years'
B07001m44='55 to 59 years'
B07001m45='60 to 64 years'
B07001m46='65 to 69 years'
B07001m47='70 to 74 years'
B07001m48='75 years and over'
B07001m49='Moved from different county within same state:'
B07001m50='1 to 4 years'
B07001m51='5 to 17 years'
B07001m52='18 and 19 years'
B07001m53='20 to 24 years'
B07001m54='25 to 29 years'
B07001m55='30 to 34 years'
B07001m56='35 to 39 years'
B07001m57='40 to 44 years'
B07001m58='45 to 49 years'
B07001m59='50 to 54 years'
B07001m60='55 to 59 years'
B07001m61='60 to 64 years'
B07001m62='65 to 69 years'
B07001m63='70 to 74 years'
B07001m64='75 years and over'
B07001m65='Moved from different state:'
B07001m66='1 to 4 years'
B07001m67='5 to 17 years'
B07001m68='18 and 19 years'
B07001m69='20 to 24 years'
B07001m70='25 to 29 years'
B07001m71='30 to 34 years'
B07001m72='35 to 39 years'
B07001m73='40 to 44 years'
B07001m74='45 to 49 years'
B07001m75='50 to 54 years'
B07001m76='55 to 59 years'
B07001m77='60 to 64 years'
B07001m78='65 to 69 years'
B07001m79='70 to 74 years'
B07001m80='75 years and over'
B07001m81='Moved from abroad:'
B07001m82='1 to 4 years'
B07001m83='5 to 17 years'
B07001m84='18 and 19 years'
B07001m85='20 to 24 years'
B07001m86='25 to 29 years'
B07001m87='30 to 34 years'
B07001m88='35 to 39 years'
B07001m89='40 to 44 years'
B07001m90='45 to 49 years'
B07001m91='50 to 54 years'
B07001m92='55 to 59 years'
B07001m93='60 to 64 years'
B07001m94='65 to 69 years'
B07001m95='70 to 74 years'
B07001m96='75 years and over'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY AGE FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Population 1 year and over in Puerto Rico */
 
B07001PRm1='Total:'
B07001PRm2='1 to 4 years'
B07001PRm3='5 to 17 years'
B07001PRm4='18 and 19 years'
B07001PRm5='20 to 24 years'
B07001PRm6='25 to 29 years'
B07001PRm7='30 to 34 years'
B07001PRm8='35 to 39 years'
B07001PRm9='40 to 44 years'
B07001PRm10='45 to 49 years'
B07001PRm11='50 to 54 years'
B07001PRm12='55 to 59 years'
B07001PRm13='60 to 64 years'
B07001PRm14='65 to 69 years'
B07001PRm15='70 to 74 years'
B07001PRm16='75 years and over'
B07001PRm17='Same house 1 year ago:'
B07001PRm18='1 to 4 years'
B07001PRm19='5 to 17 years'
B07001PRm20='18 and 19 years'
B07001PRm21='20 to 24 years'
B07001PRm22='25 to 29 years'
B07001PRm23='30 to 34 years'
B07001PRm24='35 to 39 years'
B07001PRm25='40 to 44 years'
B07001PRm26='45 to 49 years'
B07001PRm27='50 to 54 years'
B07001PRm28='55 to 59 years'
B07001PRm29='60 to 64 years'
B07001PRm30='65 to 69 years'
B07001PRm31='70 to 74 years'
B07001PRm32='75 years and over'
B07001PRm33='Moved within same municipio:'
B07001PRm34='1 to 4 years'
B07001PRm35='5 to 17 years'
B07001PRm36='18 and 19 years'
B07001PRm37='20 to 24 years'
B07001PRm38='25 to 29 years'
B07001PRm39='30 to 34 years'
B07001PRm40='35 to 39 years'
B07001PRm41='40 to 44 years'
B07001PRm42='45 to 49 years'
B07001PRm43='50 to 54 years'
B07001PRm44='55 to 59 years'
B07001PRm45='60 to 64 years'
B07001PRm46='65 to 69 years'
B07001PRm47='70 to 74 years'
B07001PRm48='75 years and over'
B07001PRm49='Moved from different municipio:'
B07001PRm50='1 to 4 years'
B07001PRm51='5 to 17 years'
B07001PRm52='18 and 19 years'
B07001PRm53='20 to 24 years'
B07001PRm54='25 to 29 years'
B07001PRm55='30 to 34 years'
B07001PRm56='35 to 39 years'
B07001PRm57='40 to 44 years'
B07001PRm58='45 to 49 years'
B07001PRm59='50 to 54 years'
B07001PRm60='55 to 59 years'
B07001PRm61='60 to 64 years'
B07001PRm62='65 to 69 years'
B07001PRm63='70 to 74 years'
B07001PRm64='75 years and over'
B07001PRm65='Moved from the United States:'
B07001PRm66='1 to 4 years'
B07001PRm67='5 to 17 years'
B07001PRm68='18 and 19 years'
B07001PRm69='20 to 24 years'
B07001PRm70='25 to 29 years'
B07001PRm71='30 to 34 years'
B07001PRm72='35 to 39 years'
B07001PRm73='40 to 44 years'
B07001PRm74='45 to 49 years'
B07001PRm75='50 to 54 years'
B07001PRm76='55 to 59 years'
B07001PRm77='60 to 64 years'
B07001PRm78='65 to 69 years'
B07001PRm79='70 to 74 years'
B07001PRm80='75 years and over'
B07001PRm81='Moved from elsewhere:'
B07001PRm82='1 to 4 years'
B07001PRm83='5 to 17 years'
B07001PRm84='18 and 19 years'
B07001PRm85='20 to 24 years'
B07001PRm86='25 to 29 years'
B07001PRm87='30 to 34 years'
B07001PRm88='35 to 39 years'
B07001PRm89='40 to 44 years'
B07001PRm90='45 to 49 years'
B07001PRm91='50 to 54 years'
B07001PRm92='55 to 59 years'
B07001PRm93='60 to 64 years'
B07001PRm94='65 to 69 years'
B07001PRm95='70 to 74 years'
B07001PRm96='75 years and over'
/*MEDIAN AGE BY GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Population 1 year and over in the United States */
/*Median age -- */
 
B07002m1='Total:'
B07002m2='Same house 1 year ago'
B07002m3='Moved within same county'
B07002m4='Moved from different county within same state'
B07002m5='Moved from different state'
B07002m6='Moved from abroad'
/*MEDIAN AGE BY GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Population 1 year and over in Puerto Rico */
/*Median age -- */
 
B07002PRm1='Total:'
B07002PRm2='Same house 1 year ago'
B07002PRm3='Moved within same municipio'
B07002PRm4='Moved from different municipio'
B07002PRm5='Moved from the United States'
B07002PRm6='Moved from elsewhere'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY SEX FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Population 1 year and over in the United States */
 
B07003m1='Total:'
B07003m2='Male'
B07003m3='Female'
B07003m4='Same house 1 year ago:'
B07003m5='Male'
B07003m6='Female'
B07003m7='Moved within same county:'
B07003m8='Male'
B07003m9='Female'
B07003m10='Moved from different county within same state:'
B07003m11='Male'
B07003m12='Female'
B07003m13='Moved from different state:'
B07003m14='Male'
B07003m15='Female'
B07003m16='Moved from abroad:'
B07003m17='Male'
B07003m18='Female'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY SEX FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Population 1 year and over in Puerto Rico */
 
B07003PRm1='Total:'
B07003PRm2='Male'
B07003PRm3='Female'
B07003PRm4='Same house 1 year ago:'
B07003PRm5='Male'
B07003PRm6='Female'
B07003PRm7='Moved within same municipio:'
B07003PRm8='Male'
B07003PRm9='Female'
B07003PRm10='Moved from different municipio:'
B07003PRm11='Male'
B07003PRm12='Female'
B07003PRm13='Moved from the United States:'
B07003PRm14='Male'
B07003PRm15='Female'
B07003PRm16='Moved from elsewhere:'
B07003PRm17='Male'
B07003PRm18='Female'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B07001m1
B07001m2
B07001m3
B07001m4
B07001m5
B07001m6
B07001m7
B07001m8
B07001m9
B07001m10
B07001m11
B07001m12
B07001m13
B07001m14
B07001m15
B07001m16
B07001m17
B07001m18
B07001m19
B07001m20
B07001m21
B07001m22
B07001m23
B07001m24
B07001m25
B07001m26
B07001m27
B07001m28
B07001m29
B07001m30
B07001m31
B07001m32
B07001m33
B07001m34
B07001m35
B07001m36
B07001m37
B07001m38
B07001m39
B07001m40
B07001m41
B07001m42
B07001m43
B07001m44
B07001m45
B07001m46
B07001m47
B07001m48
B07001m49
B07001m50
B07001m51
B07001m52
B07001m53
B07001m54
B07001m55
B07001m56
B07001m57
B07001m58
B07001m59
B07001m60
B07001m61
B07001m62
B07001m63
B07001m64
B07001m65
B07001m66
B07001m67
B07001m68
B07001m69
B07001m70
B07001m71
B07001m72
B07001m73
B07001m74
B07001m75
B07001m76
B07001m77
B07001m78
B07001m79
B07001m80
B07001m81
B07001m82
B07001m83
B07001m84
B07001m85
B07001m86
B07001m87
B07001m88
B07001m89
B07001m90
B07001m91
B07001m92
B07001m93
B07001m94
B07001m95
B07001m96
 
B07001PRm1
B07001PRm2
B07001PRm3
B07001PRm4
B07001PRm5
B07001PRm6
B07001PRm7
B07001PRm8
B07001PRm9
B07001PRm10
B07001PRm11
B07001PRm12
B07001PRm13
B07001PRm14
B07001PRm15
B07001PRm16
B07001PRm17
B07001PRm18
B07001PRm19
B07001PRm20
B07001PRm21
B07001PRm22
B07001PRm23
B07001PRm24
B07001PRm25
B07001PRm26
B07001PRm27
B07001PRm28
B07001PRm29
B07001PRm30
B07001PRm31
B07001PRm32
B07001PRm33
B07001PRm34
B07001PRm35
B07001PRm36
B07001PRm37
B07001PRm38
B07001PRm39
B07001PRm40
B07001PRm41
B07001PRm42
B07001PRm43
B07001PRm44
B07001PRm45
B07001PRm46
B07001PRm47
B07001PRm48
B07001PRm49
B07001PRm50
B07001PRm51
B07001PRm52
B07001PRm53
B07001PRm54
B07001PRm55
B07001PRm56
B07001PRm57
B07001PRm58
B07001PRm59
B07001PRm60
B07001PRm61
B07001PRm62
B07001PRm63
B07001PRm64
B07001PRm65
B07001PRm66
B07001PRm67
B07001PRm68
B07001PRm69
B07001PRm70
B07001PRm71
B07001PRm72
B07001PRm73
B07001PRm74
B07001PRm75
B07001PRm76
B07001PRm77
B07001PRm78
B07001PRm79
B07001PRm80
B07001PRm81
B07001PRm82
B07001PRm83
B07001PRm84
B07001PRm85
B07001PRm86
B07001PRm87
B07001PRm88
B07001PRm89
B07001PRm90
B07001PRm91
B07001PRm92
B07001PRm93
B07001PRm94
B07001PRm95
B07001PRm96
 
B07002m1
B07002m2
B07002m3
B07002m4
B07002m5
B07002m6
 
B07002PRm1
B07002PRm2
B07002PRm3
B07002PRm4
B07002PRm5
B07002PRm6
 
B07003m1
B07003m2
B07003m3
B07003m4
B07003m5
B07003m6
B07003m7
B07003m8
B07003m9
B07003m10
B07003m11
B07003m12
B07003m13
B07003m14
B07003m15
B07003m16
B07003m17
B07003m18
 
B07003PRm1
B07003PRm2
B07003PRm3
B07003PRm4
B07003PRm5
B07003PRm6
B07003PRm7
B07003PRm8
B07003PRm9
B07003PRm10
B07003PRm11
B07003PRm12
B07003PRm13
B07003PRm14
B07003PRm15
B07003PRm16
B07003PRm17
B07003PRm18
;
RUN;
TITLE2;
