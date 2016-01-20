TITLE2 "m20125md0006000";
DATA work.SFm0006md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0006000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*FIRST ANCESTRY REPORTED */
/*Universe:  Total population */
 
B04001m1='Total:'
B04001m2='Afghan'
B04001m3='Albanian'
B04001m4='Alsatian'
B04001m5='American'
B04001m6='Arab:'
B04001m7='Egyptian'
B04001m8='Iraqi'
B04001m9='Jordanian'
B04001m10='Lebanese'
B04001m11='Moroccan'
B04001m12='Palestinian'
B04001m13='Syrian'
B04001m14='Arab'
B04001m15='Other Arab'
B04001m16='Armenian'
B04001m17='Assyrian/Chaldean/Syriac'
B04001m18='Australian'
B04001m19='Austrian'
B04001m20='Basque'
B04001m21='Belgian'
B04001m22='Brazilian'
B04001m23='British'
B04001m24='Bulgarian'
B04001m25='Cajun'
B04001m26='Canadian'
B04001m27='Carpatho Rusyn'
B04001m28='Celtic'
B04001m29='Croatian'
B04001m30='Cypriot'
B04001m31='Czech'
B04001m32='Czechoslovakian'
B04001m33='Danish'
B04001m34='Dutch'
B04001m35='Eastern European'
B04001m36='English'
B04001m37='Estonian'
B04001m38='European'
B04001m39='Finnish'
B04001m40='French (except Basque)'
B04001m41='French Canadian'
B04001m42='German'
B04001m43='German Russian'
B04001m44='Greek'
B04001m45='Guyanese'
B04001m46='Hungarian'
B04001m47='Icelander'
B04001m48='Iranian'
B04001m49='Irish'
B04001m50='Israeli'
B04001m51='Italian'
B04001m52='Latvian'
B04001m53='Lithuanian'
B04001m54='Luxemburger'
B04001m55='Macedonian'
B04001m56='Maltese'
B04001m57='New Zealander'
B04001m58='Northern European'
B04001m59='Norwegian'
B04001m60='Pennsylvania German'
B04001m61='Polish'
B04001m62='Portuguese'
B04001m63='Romanian'
B04001m64='Russian'
B04001m65='Scandinavian'
B04001m66='Scotch-Irish'
B04001m67='Scottish'
B04001m68='Serbian'
B04001m69='Slavic'
B04001m70='Slovak'
B04001m71='Slovene'
B04001m72='Soviet Union'
B04001m73='Subsaharan African:'
B04001m74='Cape Verdean'
B04001m75='Ethiopian'
B04001m76='Ghanaian'
B04001m77='Kenyan'
B04001m78='Liberian'
B04001m79='Nigerian'
B04001m80='Senegalese'
B04001m81='Sierra Leonean'
B04001m82='Somalian'
B04001m83='South African'
B04001m84='Sudanese'
B04001m85='Ugandan'
B04001m86='Zimbabwean'
B04001m87='African'
B04001m88='Other Subsaharan African'
B04001m89='Swedish'
B04001m90='Swiss'
B04001m91='Turkish'
B04001m92='Ukrainian'
B04001m93='Welsh'
B04001m94='West Indian (except Hispanic groups):'
B04001m95='Bahamian'
B04001m96='Barbadian'
B04001m97='Belizean'
B04001m98='Bermudan'
B04001m99='British West Indian'
B04001m100='Dutch West Indian'
B04001m101='Haitian'
B04001m102='Jamaican'
B04001m103='Trinidadian and Tobagonian'
B04001m104='U.S. Virgin Islander'
B04001m105='West Indian'
B04001m106='Other West Indian'
B04001m107='Yugoslavian'
B04001m108='Other groups'
B04001m109='Unclassified or not reported'
/*SECOND ANCESTRY REPORTED */
/*Universe:  Total population */
 
B04002m1='Total:'
B04002m2='Afghan'
B04002m3='Albanian'
B04002m4='Alsatian'
B04002m5='American'
B04002m6='Arab:'
B04002m7='Egyptian'
B04002m8='Iraqi'
B04002m9='Jordanian'
B04002m10='Lebanese'
B04002m11='Moroccan'
B04002m12='Palestinian'
B04002m13='Syrian'
B04002m14='Arab'
B04002m15='Other Arab'
B04002m16='Armenian'
B04002m17='Assyrian/Chaldean/Syriac'
B04002m18='Australian'
B04002m19='Austrian'
B04002m20='Basque'
B04002m21='Belgian'
B04002m22='Brazilian'
B04002m23='British'
B04002m24='Bulgarian'
B04002m25='Cajun'
B04002m26='Canadian'
B04002m27='Carpatho Rusyn'
B04002m28='Celtic'
B04002m29='Croatian'
B04002m30='Cypriot'
B04002m31='Czech'
B04002m32='Czechoslovakian'
B04002m33='Danish'
B04002m34='Dutch'
B04002m35='Eastern European'
B04002m36='English'
B04002m37='Estonian'
B04002m38='European'
B04002m39='Finnish'
B04002m40='French (except Basque)'
B04002m41='French Canadian'
B04002m42='German'
B04002m43='German Russian'
B04002m44='Greek'
B04002m45='Guyanese'
B04002m46='Hungarian'
B04002m47='Icelander'
B04002m48='Iranian'
B04002m49='Irish'
B04002m50='Israeli'
B04002m51='Italian'
B04002m52='Latvian'
B04002m53='Lithuanian'
B04002m54='Luxemburger'
B04002m55='Macedonian'
B04002m56='Maltese'
B04002m57='New Zealander'
B04002m58='Northern European'
B04002m59='Norwegian'
B04002m60='Pennsylvania German'
B04002m61='Polish'
B04002m62='Portuguese'
B04002m63='Romanian'
B04002m64='Russian'
B04002m65='Scandinavian'
B04002m66='Scotch-Irish'
B04002m67='Scottish'
B04002m68='Serbian'
B04002m69='Slavic'
B04002m70='Slovak'
B04002m71='Slovene'
B04002m72='Soviet Union'
B04002m73='Subsaharan African:'
B04002m74='Cape Verdean'
B04002m75='Ethiopian'
B04002m76='Ghanaian'
B04002m77='Kenyan'
B04002m78='Liberian'
B04002m79='Nigerian'
B04002m80='Senegalese'
B04002m81='Sierra Leonean'
B04002m82='Somalian'
B04002m83='South African'
B04002m84='Sudanese'
B04002m85='Ugandan'
B04002m86='Zimbabwean'
B04002m87='African'
B04002m88='Other Subsaharan African'
B04002m89='Swedish'
B04002m90='Swiss'
B04002m91='Turkish'
B04002m92='Ukrainian'
B04002m93='Welsh'
B04002m94='West Indian (except Hispanic groups):'
B04002m95='Bahamian'
B04002m96='Barbadian'
B04002m97='Belizean'
B04002m98='Bermudan'
B04002m99='British West Indian'
B04002m100='Dutch West Indian'
B04002m101='Haitian'
B04002m102='Jamaican'
B04002m103='Trinidadian and Tobagonian'
B04002m104='U.S. Virgin Islander'
B04002m105='West Indian'
B04002m106='Other West Indian'
B04002m107='Yugoslavian'
B04002m108='Other groups'
B04002m109='Unclassified or not reported'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B04001m1
B04001m2
B04001m3
B04001m4
B04001m5
B04001m6
B04001m7
B04001m8
B04001m9
B04001m10
B04001m11
B04001m12
B04001m13
B04001m14
B04001m15
B04001m16
B04001m17
B04001m18
B04001m19
B04001m20
B04001m21
B04001m22
B04001m23
B04001m24
B04001m25
B04001m26
B04001m27
B04001m28
B04001m29
B04001m30
B04001m31
B04001m32
B04001m33
B04001m34
B04001m35
B04001m36
B04001m37
B04001m38
B04001m39
B04001m40
B04001m41
B04001m42
B04001m43
B04001m44
B04001m45
B04001m46
B04001m47
B04001m48
B04001m49
B04001m50
B04001m51
B04001m52
B04001m53
B04001m54
B04001m55
B04001m56
B04001m57
B04001m58
B04001m59
B04001m60
B04001m61
B04001m62
B04001m63
B04001m64
B04001m65
B04001m66
B04001m67
B04001m68
B04001m69
B04001m70
B04001m71
B04001m72
B04001m73
B04001m74
B04001m75
B04001m76
B04001m77
B04001m78
B04001m79
B04001m80
B04001m81
B04001m82
B04001m83
B04001m84
B04001m85
B04001m86
B04001m87
B04001m88
B04001m89
B04001m90
B04001m91
B04001m92
B04001m93
B04001m94
B04001m95
B04001m96
B04001m97
B04001m98
B04001m99
B04001m100
B04001m101
B04001m102
B04001m103
B04001m104
B04001m105
B04001m106
B04001m107
B04001m108
B04001m109
 
B04002m1
B04002m2
B04002m3
B04002m4
B04002m5
B04002m6
B04002m7
B04002m8
B04002m9
B04002m10
B04002m11
B04002m12
B04002m13
B04002m14
B04002m15
B04002m16
B04002m17
B04002m18
B04002m19
B04002m20
B04002m21
B04002m22
B04002m23
B04002m24
B04002m25
B04002m26
B04002m27
B04002m28
B04002m29
B04002m30
B04002m31
B04002m32
B04002m33
B04002m34
B04002m35
B04002m36
B04002m37
B04002m38
B04002m39
B04002m40
B04002m41
B04002m42
B04002m43
B04002m44
B04002m45
B04002m46
B04002m47
B04002m48
B04002m49
B04002m50
B04002m51
B04002m52
B04002m53
B04002m54
B04002m55
B04002m56
B04002m57
B04002m58
B04002m59
B04002m60
B04002m61
B04002m62
B04002m63
B04002m64
B04002m65
B04002m66
B04002m67
B04002m68
B04002m69
B04002m70
B04002m71
B04002m72
B04002m73
B04002m74
B04002m75
B04002m76
B04002m77
B04002m78
B04002m79
B04002m80
B04002m81
B04002m82
B04002m83
B04002m84
B04002m85
B04002m86
B04002m87
B04002m88
B04002m89
B04002m90
B04002m91
B04002m92
B04002m93
B04002m94
B04002m95
B04002m96
B04002m97
B04002m98
B04002m99
B04002m100
B04002m101
B04002m102
B04002m103
B04002m104
B04002m105
B04002m106
B04002m107
B04002m108
B04002m109
;
RUN;
TITLE2;
