TITLE2 "m20125dc0011000";
DATA work.SFm0011dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0011000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*PLACE OF BIRTH FOR THE FOREIGN-BORN POPULATION IN PUERTO RICO */
/*Universe:  Foreign-born population in Puerto Rico excluding population born at sea */
 
B05006PRm1='Total:'
B05006PRm2='Europe:'
B05006PRm3='Northern Europe'
B05006PRm4='Western Europe'
B05006PRm5='Southern Europe:'
B05006PRm6='Spain'
B05006PRm7='Other Southern Europe'
B05006PRm8='Eastern Europe'
B05006PRm9='Europe, n.e.c.'
B05006PRm10='Asia:'
B05006PRm11='Eastern Asia:'
B05006PRm12='China:'
B05006PRm13='China, excluding Taiwan'
B05006PRm14='Taiwan'
B05006PRm15='Korea'
B05006PRm16='Other Eastern Asia'
B05006PRm17='South Central Asia'
B05006PRm18='South Eastern Asia'
B05006PRm19='Western Asia'
B05006PRm20='Asia,n.e.c.'
B05006PRm21='Africa'
B05006PRm22='Oceania'
B05006PRm23='Americas:'
B05006PRm24='Latin America:'
B05006PRm25='Caribbean:'
B05006PRm26='Cuba'
B05006PRm27='Dominican Republic'
B05006PRm28='Haiti'
B05006PRm29='Other Caribbean'
B05006PRm30='Central America:'
B05006PRm31='Mexico'
B05006PRm32='Costa Rica'
B05006PRm33='El Salvador'
B05006PRm34='Guatemala'
B05006PRm35='Honduras'
B05006PRm36='Panama'
B05006PRm37='Other Central America'
B05006PRm38='South America:'
B05006PRm39='Argentina'
B05006PRm40='Chile'
B05006PRm41='Colombia'
B05006PRm42='Ecuador'
B05006PRm43='Peru'
B05006PRm44='Venezuela'
B05006PRm45='Other South America'
B05006PRm46='Northern America'
/*PLACE OF BIRTH BY YEAR OF ENTRY BY CITIZENSHIP STATUS FOR THE FOREIGN-BORN POPULATION */
/*Universe:  Foreign-born population */
 
B05007m1='Total:'
B05007m2='Europe:'
B05007m3='Entered 2010 or later'
B05007m4='Naturalized U.S. citizen'
B05007m5='Not a U.S. citizen'
B05007m6='Entered 2000 to 2009'
B05007m7='Naturalized U.S. citizen'
B05007m8='Not a U.S. citizen'
B05007m9='Entered 1990 to 1999:'
B05007m10='Naturalized U.S. citizen'
B05007m11='Not a U.S. citizen'
B05007m12='Entered before 1990:'
B05007m13='Naturalized U.S. citizen'
B05007m14='Not a U.S. citizen'
B05007m15='Asia:'
B05007m16='Entered 2010 or later'
B05007m17='Naturalized U.S. citizen'
B05007m18='Not a U.S. citizen'
B05007m19='Entered 2000 to 2009'
B05007m20='Naturalized U.S. citizen'
B05007m21='Not a U.S. citizen'
B05007m22='Entered 1990 to 1999:'
B05007m23='Naturalized U.S. citizen'
B05007m24='Not a U.S. citizen'
B05007m25='Entered before 1990:'
B05007m26='Naturalized U.S. citizen'
B05007m27='Not a U.S. citizen'
B05007m28='Latin America:'
B05007m29='Caribbean:'
B05007m30='Entered 2010 or later'
B05007m31='Naturalized U.S. citizen'
B05007m32='Not a U.S. citizen'
B05007m33='Entered 2000 to 2009'
B05007m34='Naturalized U.S. citizen'
B05007m35='Not a U.S. citizen'
B05007m36='Entered 1990 to 1999:'
B05007m37='Naturalized U.S. citizen'
B05007m38='Not a U.S. citizen'
B05007m39='Entered before 1990:'
B05007m40='Naturalized U.S. citizen'
B05007m41='Not a U.S. citizen'
B05007m42='Central America:'
B05007m43='Mexico:'
B05007m44='Entered 2010 or later'
B05007m45='Naturalized U.S. citizen'
B05007m46='Not a U.S. citizen'
B05007m47='Entered 2000 to 2009'
B05007m48='Naturalized U.S. citizen'
B05007m49='Not a U.S. citizen'
B05007m50='Entered 1990 to 1999:'
B05007m51='Naturalized U.S. citizen'
B05007m52='Not a U.S. citizen'
B05007m53='Entered before 1990:'
B05007m54='Naturalized U.S. citizen'
B05007m55='Not a U.S. citizen'
B05007m56='Other Central America:'
B05007m57='Entered 2010 or later'
B05007m58='Naturalized U.S. citizen'
B05007m59='Not a U.S. citizen'
B05007m60='Entered 2000 to 2009'
B05007m61='Naturalized U.S. citizen'
B05007m62='Not a U.S. citizen'
B05007m63='Entered 1990 to 1999:'
B05007m64='Naturalized U.S. citizen'
B05007m65='Not a U.S. citizen'
B05007m66='Entered before 1990:'
B05007m67='Naturalized U.S. citizen'
B05007m68='Not a U.S. citizen'
B05007m69='South America:'
B05007m70='Entered 2010 or later'
B05007m71='Naturalized U.S. citizen'
B05007m72='Not a U.S. citizen'
B05007m73='Entered 2000 to 2009'
B05007m74='Naturalized U.S. citizen'
B05007m75='Not a U.S. citizen'
B05007m76='Entered 1990 to 1999:'
B05007m77='Naturalized U.S. citizen'
B05007m78='Not a U.S. citizen'
B05007m79='Entered before 1990:'
B05007m80='Naturalized U.S. citizen'
B05007m81='Not a U.S. citizen'
B05007m82='Other areas:'
B05007m83='Entered 2010 or later'
B05007m84='Naturalized U.S. citizen'
B05007m85='Not a U.S. citizen'
B05007m86='Entered 2000 to 2009'
B05007m87='Naturalized U.S. citizen'
B05007m88='Not a U.S. citizen'
B05007m89='Entered 1990 to 1999:'
B05007m90='Naturalized U.S. citizen'
B05007m91='Not a U.S. citizen'
B05007m92='Entered before 1990:'
B05007m93='Naturalized U.S. citizen'
B05007m94='Not a U.S. citizen'
/*SEX BY PLACE OF BIRTH BY YEAR OF ENTRY FOR THE FOREIGN-BORN POPULATION */
/*Universe:  Foreign-born population */
 
B05008m1='Total:'
B05008m2='Male:'
B05008m3='Europe:'
B05008m4='Entered 2010 or later'
B05008m5='Entered 2000 to 2009'
B05008m6='Entered before 2000'
B05008m7='Asia:'
B05008m8='Entered 2010 or later'
B05008m9='Entered 2000 to 2009'
B05008m10='Entered before 2000'
B05008m11='Latin America:'
B05008m12='Entered 2010 or later'
B05008m13='Entered 2000 to 2009'
B05008m14='Entered before 2000'
B05008m15='Caribbean:'
B05008m16='Entered 2010 or later'
B05008m17='Entered 2000 to 2009'
B05008m18='Entered before 2000'
B05008m19='Central America:'
B05008m20='Mexico:'
B05008m21='Entered 2010 or later'
B05008m22='Entered 2000 to 2009'
B05008m23='Entered before 2000'
B05008m24='Other Central America:'
B05008m25='Entered 2010 or later'
B05008m26='Entered 2000 to 2009'
B05008m27='Entered before 2000'
B05008m28='South America:'
B05008m29='Entered 2010 or later'
B05008m30='Entered 2000 to 2009'
B05008m31='Entered before 2000'
B05008m32='Other areas:'
B05008m33='Entered 2010 or later'
B05008m34='Entered 2000 to 2009'
B05008m35='Entered before 2000'
B05008m36='Female:'
B05008m37='Europe:'
B05008m38='Entered 2010 or later'
B05008m39='Entered 2000 to 2009'
B05008m40='Entered before 2000'
B05008m41='Asia:'
B05008m42='Entered 2010 or later'
B05008m43='Entered 2000 to 2009'
B05008m44='Entered before 2000'
B05008m45='Latin America:'
B05008m46='Entered 2010 or later'
B05008m47='Entered 2000 to 2009'
B05008m48='Entered before 2000'
B05008m49='Caribbean:'
B05008m50='Entered 2010 or later'
B05008m51='Entered 2000 to 2009'
B05008m52='Entered before 2000'
B05008m53='Central America:'
B05008m54='Mexico:'
B05008m55='Entered 2010 or later'
B05008m56='Entered 2000 to 2009'
B05008m57='Entered before 2000'
B05008m58='Other Central America:'
B05008m59='Entered 2010 or later'
B05008m60='Entered 2000 to 2009'
B05008m61='Entered before 2000'
B05008m62='South America:'
B05008m63='Entered 2010 or later'
B05008m64='Entered 2000 to 2009'
B05008m65='Entered before 2000'
B05008m66='Other areas:'
B05008m67='Entered 2010 or later'
B05008m68='Entered 2000 to 2009'
B05008m69='Entered before 2000'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B05006PRm1
B05006PRm2
B05006PRm3
B05006PRm4
B05006PRm5
B05006PRm6
B05006PRm7
B05006PRm8
B05006PRm9
B05006PRm10
B05006PRm11
B05006PRm12
B05006PRm13
B05006PRm14
B05006PRm15
B05006PRm16
B05006PRm17
B05006PRm18
B05006PRm19
B05006PRm20
B05006PRm21
B05006PRm22
B05006PRm23
B05006PRm24
B05006PRm25
B05006PRm26
B05006PRm27
B05006PRm28
B05006PRm29
B05006PRm30
B05006PRm31
B05006PRm32
B05006PRm33
B05006PRm34
B05006PRm35
B05006PRm36
B05006PRm37
B05006PRm38
B05006PRm39
B05006PRm40
B05006PRm41
B05006PRm42
B05006PRm43
B05006PRm44
B05006PRm45
B05006PRm46
 
B05007m1
B05007m2
B05007m3
B05007m4
B05007m5
B05007m6
B05007m7
B05007m8
B05007m9
B05007m10
B05007m11
B05007m12
B05007m13
B05007m14
B05007m15
B05007m16
B05007m17
B05007m18
B05007m19
B05007m20
B05007m21
B05007m22
B05007m23
B05007m24
B05007m25
B05007m26
B05007m27
B05007m28
B05007m29
B05007m30
B05007m31
B05007m32
B05007m33
B05007m34
B05007m35
B05007m36
B05007m37
B05007m38
B05007m39
B05007m40
B05007m41
B05007m42
B05007m43
B05007m44
B05007m45
B05007m46
B05007m47
B05007m48
B05007m49
B05007m50
B05007m51
B05007m52
B05007m53
B05007m54
B05007m55
B05007m56
B05007m57
B05007m58
B05007m59
B05007m60
B05007m61
B05007m62
B05007m63
B05007m64
B05007m65
B05007m66
B05007m67
B05007m68
B05007m69
B05007m70
B05007m71
B05007m72
B05007m73
B05007m74
B05007m75
B05007m76
B05007m77
B05007m78
B05007m79
B05007m80
B05007m81
B05007m82
B05007m83
B05007m84
B05007m85
B05007m86
B05007m87
B05007m88
B05007m89
B05007m90
B05007m91
B05007m92
B05007m93
B05007m94
 
B05008m1
B05008m2
B05008m3
B05008m4
B05008m5
B05008m6
B05008m7
B05008m8
B05008m9
B05008m10
B05008m11
B05008m12
B05008m13
B05008m14
B05008m15
B05008m16
B05008m17
B05008m18
B05008m19
B05008m20
B05008m21
B05008m22
B05008m23
B05008m24
B05008m25
B05008m26
B05008m27
B05008m28
B05008m29
B05008m30
B05008m31
B05008m32
B05008m33
B05008m34
B05008m35
B05008m36
B05008m37
B05008m38
B05008m39
B05008m40
B05008m41
B05008m42
B05008m43
B05008m44
B05008m45
B05008m46
B05008m47
B05008m48
B05008m49
B05008m50
B05008m51
B05008m52
B05008m53
B05008m54
B05008m55
B05008m56
B05008m57
B05008m58
B05008m59
B05008m60
B05008m61
B05008m62
B05008m63
B05008m64
B05008m65
B05008m66
B05008m67
B05008m68
B05008m69
;
RUN;
TITLE2;
