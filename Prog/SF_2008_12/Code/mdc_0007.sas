TITLE2 "m20125dc0007000";
DATA work.SFm0007dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0007000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*TOTAL ANCESTRY REPORTED */
/*Universe:  Total ancestry categories tallied for people with one or more ancestry categories reported */
 
B04003m1='Total:'
B04003m2='Afghan'
B04003m3='Albanian'
B04003m4='Alsatian'
B04003m5='American'
B04003m6='Arab:'
B04003m7='Egyptian'
B04003m8='Iraqi'
B04003m9='Jordanian'
B04003m10='Lebanese'
B04003m11='Moroccan'
B04003m12='Palestinian'
B04003m13='Syrian'
B04003m14='Arab'
B04003m15='Other Arab'
B04003m16='Armenian'
B04003m17='Assyrian/Chaldean/Syriac'
B04003m18='Australian'
B04003m19='Austrian'
B04003m20='Basque'
B04003m21='Belgian'
B04003m22='Brazilian'
B04003m23='British'
B04003m24='Bulgarian'
B04003m25='Cajun'
B04003m26='Canadian'
B04003m27='Carpatho Rusyn'
B04003m28='Celtic'
B04003m29='Croatian'
B04003m30='Cypriot'
B04003m31='Czech'
B04003m32='Czechoslovakian'
B04003m33='Danish'
B04003m34='Dutch'
B04003m35='Eastern European'
B04003m36='English'
B04003m37='Estonian'
B04003m38='European'
B04003m39='Finnish'
B04003m40='French (except Basque)'
B04003m41='French Canadian'
B04003m42='German'
B04003m43='German Russian'
B04003m44='Greek'
B04003m45='Guyanese'
B04003m46='Hungarian'
B04003m47='Icelander'
B04003m48='Iranian'
B04003m49='Irish'
B04003m50='Israeli'
B04003m51='Italian'
B04003m52='Latvian'
B04003m53='Lithuanian'
B04003m54='Luxemburger'
B04003m55='Macedonian'
B04003m56='Maltese'
B04003m57='New Zealander'
B04003m58='Northern European'
B04003m59='Norwegian'
B04003m60='Pennsylvania German'
B04003m61='Polish'
B04003m62='Portuguese'
B04003m63='Romanian'
B04003m64='Russian'
B04003m65='Scandinavian'
B04003m66='Scotch-Irish'
B04003m67='Scottish'
B04003m68='Serbian'
B04003m69='Slavic'
B04003m70='Slovak'
B04003m71='Slovene'
B04003m72='Soviet Union'
B04003m73='Subsaharan African:'
B04003m74='Cape Verdean'
B04003m75='Ethiopian'
B04003m76='Ghanaian'
B04003m77='Kenyan'
B04003m78='Liberian'
B04003m79='Nigerian'
B04003m80='Senegalese'
B04003m81='Sierra Leonean'
B04003m82='Somalian'
B04003m83='South African'
B04003m84='Sudanese'
B04003m85='Ugandan'
B04003m86='Zimbabwean'
B04003m87='African'
B04003m88='Other Subsaharan African'
B04003m89='Swedish'
B04003m90='Swiss'
B04003m91='Turkish'
B04003m92='Ukrainian'
B04003m93='Welsh'
B04003m94='West Indian (except Hispanic groups):'
B04003m95='Bahamian'
B04003m96='Barbadian'
B04003m97='Belizean'
B04003m98='Bermudan'
B04003m99='British West Indian'
B04003m100='Dutch West Indian'
B04003m101='Haitian'
B04003m102='Jamaican'
B04003m103='Trinidadian and Tobagonian'
B04003m104='U.S. Virgin Islander'
B04003m105='West Indian'
B04003m106='Other West Indian'
B04003m107='Yugoslavian'
B04003m108='Other groups'
/*PEOPLE REPORTING SINGLE ANCESTRY */
/*Universe:  People reporting single ancestry */
 
B04004m1='Total:'
B04004m2='Afghan'
B04004m3='Albanian'
B04004m4='Alsatian'
B04004m5='American'
B04004m6='Arab:'
B04004m7='Egyptian'
B04004m8='Iraqi'
B04004m9='Jordanian'
B04004m10='Lebanese'
B04004m11='Moroccan'
B04004m12='Palestinian'
B04004m13='Syrian'
B04004m14='Arab'
B04004m15='Other Arab'
B04004m16='Armenian'
B04004m17='Assyrian/Chaldean/Syriac'
B04004m18='Australian'
B04004m19='Austrian'
B04004m20='Basque'
B04004m21='Belgian'
B04004m22='Brazilian'
B04004m23='British'
B04004m24='Bulgarian'
B04004m25='Cajun'
B04004m26='Canadian'
B04004m27='Carpatho Rusyn'
B04004m28='Celtic'
B04004m29='Croatian'
B04004m30='Cypriot'
B04004m31='Czech'
B04004m32='Czechoslovakian'
B04004m33='Danish'
B04004m34='Dutch'
B04004m35='Eastern European'
B04004m36='English'
B04004m37='Estonian'
B04004m38='European'
B04004m39='Finnish'
B04004m40='French (except Basque)'
B04004m41='French Canadian'
B04004m42='German'
B04004m43='German Russian'
B04004m44='Greek'
B04004m45='Guyanese'
B04004m46='Hungarian'
B04004m47='Icelander'
B04004m48='Iranian'
B04004m49='Irish'
B04004m50='Israeli'
B04004m51='Italian'
B04004m52='Latvian'
B04004m53='Lithuanian'
B04004m54='Luxemburger'
B04004m55='Macedonian'
B04004m56='Maltese'
B04004m57='New Zealander'
B04004m58='Northern European'
B04004m59='Norwegian'
B04004m60='Pennsylvania German'
B04004m61='Polish'
B04004m62='Portuguese'
B04004m63='Romanian'
B04004m64='Russian'
B04004m65='Scandinavian'
B04004m66='Scotch-Irish'
B04004m67='Scottish'
B04004m68='Serbian'
B04004m69='Slavic'
B04004m70='Slovak'
B04004m71='Slovene'
B04004m72='Soviet Union'
B04004m73='Subsaharan African:'
B04004m74='Cape Verdean'
B04004m75='Ethiopian'
B04004m76='Ghanaian'
B04004m77='Kenyan'
B04004m78='Liberian'
B04004m79='Nigerian'
B04004m80='Senegalese'
B04004m81='Sierra Leonean'
B04004m82='Somalian'
B04004m83='South African'
B04004m84='Sudanese'
B04004m85='Ugandan'
B04004m86='Zimbabwean'
B04004m87='African'
B04004m88='Other Subsaharan African'
B04004m89='Swedish'
B04004m90='Swiss'
B04004m91='Turkish'
B04004m92='Ukrainian'
B04004m93='Welsh'
B04004m94='West Indian (except Hispanic groups):'
B04004m95='Bahamian'
B04004m96='Barbadian'
B04004m97='Belizean'
B04004m98='Bermudan'
B04004m99='British West Indian'
B04004m100='Dutch West Indian'
B04004m101='Haitian'
B04004m102='Jamaican'
B04004m103='Trinidadian and Tobagonian'
B04004m104='U.S. Virgin Islander'
B04004m105='West Indian'
B04004m106='Other West Indian'
B04004m107='Yugoslavian'
B04004m108='Other groups'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B04003m1
B04003m2
B04003m3
B04003m4
B04003m5
B04003m6
B04003m7
B04003m8
B04003m9
B04003m10
B04003m11
B04003m12
B04003m13
B04003m14
B04003m15
B04003m16
B04003m17
B04003m18
B04003m19
B04003m20
B04003m21
B04003m22
B04003m23
B04003m24
B04003m25
B04003m26
B04003m27
B04003m28
B04003m29
B04003m30
B04003m31
B04003m32
B04003m33
B04003m34
B04003m35
B04003m36
B04003m37
B04003m38
B04003m39
B04003m40
B04003m41
B04003m42
B04003m43
B04003m44
B04003m45
B04003m46
B04003m47
B04003m48
B04003m49
B04003m50
B04003m51
B04003m52
B04003m53
B04003m54
B04003m55
B04003m56
B04003m57
B04003m58
B04003m59
B04003m60
B04003m61
B04003m62
B04003m63
B04003m64
B04003m65
B04003m66
B04003m67
B04003m68
B04003m69
B04003m70
B04003m71
B04003m72
B04003m73
B04003m74
B04003m75
B04003m76
B04003m77
B04003m78
B04003m79
B04003m80
B04003m81
B04003m82
B04003m83
B04003m84
B04003m85
B04003m86
B04003m87
B04003m88
B04003m89
B04003m90
B04003m91
B04003m92
B04003m93
B04003m94
B04003m95
B04003m96
B04003m97
B04003m98
B04003m99
B04003m100
B04003m101
B04003m102
B04003m103
B04003m104
B04003m105
B04003m106
B04003m107
B04003m108
 
B04004m1
B04004m2
B04004m3
B04004m4
B04004m5
B04004m6
B04004m7
B04004m8
B04004m9
B04004m10
B04004m11
B04004m12
B04004m13
B04004m14
B04004m15
B04004m16
B04004m17
B04004m18
B04004m19
B04004m20
B04004m21
B04004m22
B04004m23
B04004m24
B04004m25
B04004m26
B04004m27
B04004m28
B04004m29
B04004m30
B04004m31
B04004m32
B04004m33
B04004m34
B04004m35
B04004m36
B04004m37
B04004m38
B04004m39
B04004m40
B04004m41
B04004m42
B04004m43
B04004m44
B04004m45
B04004m46
B04004m47
B04004m48
B04004m49
B04004m50
B04004m51
B04004m52
B04004m53
B04004m54
B04004m55
B04004m56
B04004m57
B04004m58
B04004m59
B04004m60
B04004m61
B04004m62
B04004m63
B04004m64
B04004m65
B04004m66
B04004m67
B04004m68
B04004m69
B04004m70
B04004m71
B04004m72
B04004m73
B04004m74
B04004m75
B04004m76
B04004m77
B04004m78
B04004m79
B04004m80
B04004m81
B04004m82
B04004m83
B04004m84
B04004m85
B04004m86
B04004m87
B04004m88
B04004m89
B04004m90
B04004m91
B04004m92
B04004m93
B04004m94
B04004m95
B04004m96
B04004m97
B04004m98
B04004m99
B04004m100
B04004m101
B04004m102
B04004m103
B04004m104
B04004m105
B04004m106
B04004m107
B04004m108
;
RUN;
TITLE2;
