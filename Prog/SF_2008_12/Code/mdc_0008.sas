TITLE2 "m20125dc0008000";
DATA work.SFm0008dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0008000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*PEOPLE REPORTING MULTIPLE ANCESTRY */
/*Universe:  People reporting multiple ancestries */
 
B04005m1='Total:'
B04005m2='Afghan'
B04005m3='Albanian'
B04005m4='Alsatian'
B04005m5='American'
B04005m6='Arab:'
B04005m7='Egyptian'
B04005m8='Iraqi'
B04005m9='Jordanian'
B04005m10='Lebanese'
B04005m11='Moroccan'
B04005m12='Palestinian'
B04005m13='Syrian'
B04005m14='Arab'
B04005m15='Other Arab'
B04005m16='Armenian'
B04005m17='Assyrian/Chaldean/Syriac'
B04005m18='Australian'
B04005m19='Austrian'
B04005m20='Basque'
B04005m21='Belgian'
B04005m22='Brazilian'
B04005m23='British'
B04005m24='Bulgarian'
B04005m25='Cajun'
B04005m26='Canadian'
B04005m27='Carpatho Rusyn'
B04005m28='Celtic'
B04005m29='Croatian'
B04005m30='Cypriot'
B04005m31='Czech'
B04005m32='Czechoslovakian'
B04005m33='Danish'
B04005m34='Dutch'
B04005m35='Eastern European'
B04005m36='English'
B04005m37='Estonian'
B04005m38='European'
B04005m39='Finnish'
B04005m40='French (except Basque)'
B04005m41='French Canadian'
B04005m42='German'
B04005m43='German Russian'
B04005m44='Greek'
B04005m45='Guyanese'
B04005m46='Hungarian'
B04005m47='Icelander'
B04005m48='Iranian'
B04005m49='Irish'
B04005m50='Israeli'
B04005m51='Italian'
B04005m52='Latvian'
B04005m53='Lithuanian'
B04005m54='Luxemburger'
B04005m55='Macedonian'
B04005m56='Maltese'
B04005m57='New Zealander'
B04005m58='Northern European'
B04005m59='Norwegian'
B04005m60='Pennsylvania German'
B04005m61='Polish'
B04005m62='Portuguese'
B04005m63='Romanian'
B04005m64='Russian'
B04005m65='Scandinavian'
B04005m66='Scotch-Irish'
B04005m67='Scottish'
B04005m68='Serbian'
B04005m69='Slavic'
B04005m70='Slovak'
B04005m71='Slovene'
B04005m72='Soviet Union'
B04005m73='Subsaharan African:'
B04005m74='Cape Verdean'
B04005m75='Ethiopian'
B04005m76='Ghanaian'
B04005m77='Kenyan'
B04005m78='Liberian'
B04005m79='Nigerian'
B04005m80='Senegalese'
B04005m81='Sierra Leonean'
B04005m82='Somalian'
B04005m83='South African'
B04005m84='Sudanese'
B04005m85='Ugandan'
B04005m86='Zimbabwean'
B04005m87='African'
B04005m88='Other Subsaharan African'
B04005m89='Swedish'
B04005m90='Swiss'
B04005m91='Turkish'
B04005m92='Ukrainian'
B04005m93='Welsh'
B04005m94='West Indian (except Hispanic groups):'
B04005m95='Bahamian'
B04005m96='Barbadian'
B04005m97='Belizean'
B04005m98='Bermudan'
B04005m99='British West Indian'
B04005m100='Dutch West Indian'
B04005m101='Haitian'
B04005m102='Jamaican'
B04005m103='Trinidadian and Tobagonian'
B04005m104='U.S. Virgin Islander'
B04005m105='West Indian'
B04005m106='Other West Indian'
B04005m107='Yugoslavian'
B04005m108='Other groups'
/*PEOPLE REPORTING ANCESTRY */
/*Universe:  Total population */
 
B04006m1='Total:'
B04006m2='Afghan'
B04006m3='Albanian'
B04006m4='Alsatian'
B04006m5='American'
B04006m6='Arab:'
B04006m7='Egyptian'
B04006m8='Iraqi'
B04006m9='Jordanian'
B04006m10='Lebanese'
B04006m11='Moroccan'
B04006m12='Palestinian'
B04006m13='Syrian'
B04006m14='Arab'
B04006m15='Other Arab'
B04006m16='Armenian'
B04006m17='Assyrian/Chaldean/Syriac'
B04006m18='Australian'
B04006m19='Austrian'
B04006m20='Basque'
B04006m21='Belgian'
B04006m22='Brazilian'
B04006m23='British'
B04006m24='Bulgarian'
B04006m25='Cajun'
B04006m26='Canadian'
B04006m27='Carpatho Rusyn'
B04006m28='Celtic'
B04006m29='Croatian'
B04006m30='Cypriot'
B04006m31='Czech'
B04006m32='Czechoslovakian'
B04006m33='Danish'
B04006m34='Dutch'
B04006m35='Eastern European'
B04006m36='English'
B04006m37='Estonian'
B04006m38='European'
B04006m39='Finnish'
B04006m40='French (except Basque)'
B04006m41='French Canadian'
B04006m42='German'
B04006m43='German Russian'
B04006m44='Greek'
B04006m45='Guyanese'
B04006m46='Hungarian'
B04006m47='Icelander'
B04006m48='Iranian'
B04006m49='Irish'
B04006m50='Israeli'
B04006m51='Italian'
B04006m52='Latvian'
B04006m53='Lithuanian'
B04006m54='Luxemburger'
B04006m55='Macedonian'
B04006m56='Maltese'
B04006m57='New Zealander'
B04006m58='Northern European'
B04006m59='Norwegian'
B04006m60='Pennsylvania German'
B04006m61='Polish'
B04006m62='Portuguese'
B04006m63='Romanian'
B04006m64='Russian'
B04006m65='Scandinavian'
B04006m66='Scotch-Irish'
B04006m67='Scottish'
B04006m68='Serbian'
B04006m69='Slavic'
B04006m70='Slovak'
B04006m71='Slovene'
B04006m72='Soviet Union'
B04006m73='Subsaharan African:'
B04006m74='Cape Verdean'
B04006m75='Ethiopian'
B04006m76='Ghanaian'
B04006m77='Kenyan'
B04006m78='Liberian'
B04006m79='Nigerian'
B04006m80='Senegalese'
B04006m81='Sierra Leonean'
B04006m82='Somalian'
B04006m83='South African'
B04006m84='Sudanese'
B04006m85='Ugandan'
B04006m86='Zimbabwean'
B04006m87='African'
B04006m88='Other Subsaharan African'
B04006m89='Swedish'
B04006m90='Swiss'
B04006m91='Turkish'
B04006m92='Ukrainian'
B04006m93='Welsh'
B04006m94='West Indian (except Hispanic groups):'
B04006m95='Bahamian'
B04006m96='Barbadian'
B04006m97='Belizean'
B04006m98='Bermudan'
B04006m99='British West Indian'
B04006m100='Dutch West Indian'
B04006m101='Haitian'
B04006m102='Jamaican'
B04006m103='Trinidadian and Tobagonian'
B04006m104='U.S. Virgin Islander'
B04006m105='West Indian'
B04006m106='Other West Indian'
B04006m107='Yugoslavian'
B04006m108='Other groups'
B04006m109='Unclassified or not reported'
/*ANCESTRY */
/*Universe:  Total population */
 
B04007m1='Total:'
B04007m2='Ancestry specified:'
B04007m3='Single ancestry'
B04007m4='Multiple ancestry'
B04007m5='Ancestry not specified:'
B04007m6='Ancestry unclassified'
B04007m7='Ancestry not reported'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B04005m1
B04005m2
B04005m3
B04005m4
B04005m5
B04005m6
B04005m7
B04005m8
B04005m9
B04005m10
B04005m11
B04005m12
B04005m13
B04005m14
B04005m15
B04005m16
B04005m17
B04005m18
B04005m19
B04005m20
B04005m21
B04005m22
B04005m23
B04005m24
B04005m25
B04005m26
B04005m27
B04005m28
B04005m29
B04005m30
B04005m31
B04005m32
B04005m33
B04005m34
B04005m35
B04005m36
B04005m37
B04005m38
B04005m39
B04005m40
B04005m41
B04005m42
B04005m43
B04005m44
B04005m45
B04005m46
B04005m47
B04005m48
B04005m49
B04005m50
B04005m51
B04005m52
B04005m53
B04005m54
B04005m55
B04005m56
B04005m57
B04005m58
B04005m59
B04005m60
B04005m61
B04005m62
B04005m63
B04005m64
B04005m65
B04005m66
B04005m67
B04005m68
B04005m69
B04005m70
B04005m71
B04005m72
B04005m73
B04005m74
B04005m75
B04005m76
B04005m77
B04005m78
B04005m79
B04005m80
B04005m81
B04005m82
B04005m83
B04005m84
B04005m85
B04005m86
B04005m87
B04005m88
B04005m89
B04005m90
B04005m91
B04005m92
B04005m93
B04005m94
B04005m95
B04005m96
B04005m97
B04005m98
B04005m99
B04005m100
B04005m101
B04005m102
B04005m103
B04005m104
B04005m105
B04005m106
B04005m107
B04005m108
 
B04006m1
B04006m2
B04006m3
B04006m4
B04006m5
B04006m6
B04006m7
B04006m8
B04006m9
B04006m10
B04006m11
B04006m12
B04006m13
B04006m14
B04006m15
B04006m16
B04006m17
B04006m18
B04006m19
B04006m20
B04006m21
B04006m22
B04006m23
B04006m24
B04006m25
B04006m26
B04006m27
B04006m28
B04006m29
B04006m30
B04006m31
B04006m32
B04006m33
B04006m34
B04006m35
B04006m36
B04006m37
B04006m38
B04006m39
B04006m40
B04006m41
B04006m42
B04006m43
B04006m44
B04006m45
B04006m46
B04006m47
B04006m48
B04006m49
B04006m50
B04006m51
B04006m52
B04006m53
B04006m54
B04006m55
B04006m56
B04006m57
B04006m58
B04006m59
B04006m60
B04006m61
B04006m62
B04006m63
B04006m64
B04006m65
B04006m66
B04006m67
B04006m68
B04006m69
B04006m70
B04006m71
B04006m72
B04006m73
B04006m74
B04006m75
B04006m76
B04006m77
B04006m78
B04006m79
B04006m80
B04006m81
B04006m82
B04006m83
B04006m84
B04006m85
B04006m86
B04006m87
B04006m88
B04006m89
B04006m90
B04006m91
B04006m92
B04006m93
B04006m94
B04006m95
B04006m96
B04006m97
B04006m98
B04006m99
B04006m100
B04006m101
B04006m102
B04006m103
B04006m104
B04006m105
B04006m106
B04006m107
B04006m108
B04006m109
 
B04007m1
B04007m2
B04007m3
B04007m4
B04007m5
B04007m6
B04007m7
;
RUN;
TITLE2;
