TITLE2 "e20125md0008000";
DATA work.SFe0008md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0008000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*PEOPLE REPORTING MULTIPLE ANCESTRY */
/*Universe:  People reporting multiple ancestries */
 
B04005e1='Total:'
B04005e2='Afghan'
B04005e3='Albanian'
B04005e4='Alsatian'
B04005e5='American'
B04005e6='Arab:'
B04005e7='Egyptian'
B04005e8='Iraqi'
B04005e9='Jordanian'
B04005e10='Lebanese'
B04005e11='Moroccan'
B04005e12='Palestinian'
B04005e13='Syrian'
B04005e14='Arab'
B04005e15='Other Arab'
B04005e16='Armenian'
B04005e17='Assyrian/Chaldean/Syriac'
B04005e18='Australian'
B04005e19='Austrian'
B04005e20='Basque'
B04005e21='Belgian'
B04005e22='Brazilian'
B04005e23='British'
B04005e24='Bulgarian'
B04005e25='Cajun'
B04005e26='Canadian'
B04005e27='Carpatho Rusyn'
B04005e28='Celtic'
B04005e29='Croatian'
B04005e30='Cypriot'
B04005e31='Czech'
B04005e32='Czechoslovakian'
B04005e33='Danish'
B04005e34='Dutch'
B04005e35='Eastern European'
B04005e36='English'
B04005e37='Estonian'
B04005e38='European'
B04005e39='Finnish'
B04005e40='French (except Basque)'
B04005e41='French Canadian'
B04005e42='German'
B04005e43='German Russian'
B04005e44='Greek'
B04005e45='Guyanese'
B04005e46='Hungarian'
B04005e47='Icelander'
B04005e48='Iranian'
B04005e49='Irish'
B04005e50='Israeli'
B04005e51='Italian'
B04005e52='Latvian'
B04005e53='Lithuanian'
B04005e54='Luxemburger'
B04005e55='Macedonian'
B04005e56='Maltese'
B04005e57='New Zealander'
B04005e58='Northern European'
B04005e59='Norwegian'
B04005e60='Pennsylvania German'
B04005e61='Polish'
B04005e62='Portuguese'
B04005e63='Romanian'
B04005e64='Russian'
B04005e65='Scandinavian'
B04005e66='Scotch-Irish'
B04005e67='Scottish'
B04005e68='Serbian'
B04005e69='Slavic'
B04005e70='Slovak'
B04005e71='Slovene'
B04005e72='Soviet Union'
B04005e73='Subsaharan African:'
B04005e74='Cape Verdean'
B04005e75='Ethiopian'
B04005e76='Ghanaian'
B04005e77='Kenyan'
B04005e78='Liberian'
B04005e79='Nigerian'
B04005e80='Senegalese'
B04005e81='Sierra Leonean'
B04005e82='Somalian'
B04005e83='South African'
B04005e84='Sudanese'
B04005e85='Ugandan'
B04005e86='Zimbabwean'
B04005e87='African'
B04005e88='Other Subsaharan African'
B04005e89='Swedish'
B04005e90='Swiss'
B04005e91='Turkish'
B04005e92='Ukrainian'
B04005e93='Welsh'
B04005e94='West Indian (except Hispanic groups):'
B04005e95='Bahamian'
B04005e96='Barbadian'
B04005e97='Belizean'
B04005e98='Bermudan'
B04005e99='British West Indian'
B04005e100='Dutch West Indian'
B04005e101='Haitian'
B04005e102='Jamaican'
B04005e103='Trinidadian and Tobagonian'
B04005e104='U.S. Virgin Islander'
B04005e105='West Indian'
B04005e106='Other West Indian'
B04005e107='Yugoslavian'
B04005e108='Other groups'
/*PEOPLE REPORTING ANCESTRY */
/*Universe:  Total population */
 
B04006e1='Total:'
B04006e2='Afghan'
B04006e3='Albanian'
B04006e4='Alsatian'
B04006e5='American'
B04006e6='Arab:'
B04006e7='Egyptian'
B04006e8='Iraqi'
B04006e9='Jordanian'
B04006e10='Lebanese'
B04006e11='Moroccan'
B04006e12='Palestinian'
B04006e13='Syrian'
B04006e14='Arab'
B04006e15='Other Arab'
B04006e16='Armenian'
B04006e17='Assyrian/Chaldean/Syriac'
B04006e18='Australian'
B04006e19='Austrian'
B04006e20='Basque'
B04006e21='Belgian'
B04006e22='Brazilian'
B04006e23='British'
B04006e24='Bulgarian'
B04006e25='Cajun'
B04006e26='Canadian'
B04006e27='Carpatho Rusyn'
B04006e28='Celtic'
B04006e29='Croatian'
B04006e30='Cypriot'
B04006e31='Czech'
B04006e32='Czechoslovakian'
B04006e33='Danish'
B04006e34='Dutch'
B04006e35='Eastern European'
B04006e36='English'
B04006e37='Estonian'
B04006e38='European'
B04006e39='Finnish'
B04006e40='French (except Basque)'
B04006e41='French Canadian'
B04006e42='German'
B04006e43='German Russian'
B04006e44='Greek'
B04006e45='Guyanese'
B04006e46='Hungarian'
B04006e47='Icelander'
B04006e48='Iranian'
B04006e49='Irish'
B04006e50='Israeli'
B04006e51='Italian'
B04006e52='Latvian'
B04006e53='Lithuanian'
B04006e54='Luxemburger'
B04006e55='Macedonian'
B04006e56='Maltese'
B04006e57='New Zealander'
B04006e58='Northern European'
B04006e59='Norwegian'
B04006e60='Pennsylvania German'
B04006e61='Polish'
B04006e62='Portuguese'
B04006e63='Romanian'
B04006e64='Russian'
B04006e65='Scandinavian'
B04006e66='Scotch-Irish'
B04006e67='Scottish'
B04006e68='Serbian'
B04006e69='Slavic'
B04006e70='Slovak'
B04006e71='Slovene'
B04006e72='Soviet Union'
B04006e73='Subsaharan African:'
B04006e74='Cape Verdean'
B04006e75='Ethiopian'
B04006e76='Ghanaian'
B04006e77='Kenyan'
B04006e78='Liberian'
B04006e79='Nigerian'
B04006e80='Senegalese'
B04006e81='Sierra Leonean'
B04006e82='Somalian'
B04006e83='South African'
B04006e84='Sudanese'
B04006e85='Ugandan'
B04006e86='Zimbabwean'
B04006e87='African'
B04006e88='Other Subsaharan African'
B04006e89='Swedish'
B04006e90='Swiss'
B04006e91='Turkish'
B04006e92='Ukrainian'
B04006e93='Welsh'
B04006e94='West Indian (except Hispanic groups):'
B04006e95='Bahamian'
B04006e96='Barbadian'
B04006e97='Belizean'
B04006e98='Bermudan'
B04006e99='British West Indian'
B04006e100='Dutch West Indian'
B04006e101='Haitian'
B04006e102='Jamaican'
B04006e103='Trinidadian and Tobagonian'
B04006e104='U.S. Virgin Islander'
B04006e105='West Indian'
B04006e106='Other West Indian'
B04006e107='Yugoslavian'
B04006e108='Other groups'
B04006e109='Unclassified or not reported'
/*ANCESTRY */
/*Universe:  Total population */
 
B04007e1='Total:'
B04007e2='Ancestry specified:'
B04007e3='Single ancestry'
B04007e4='Multiple ancestry'
B04007e5='Ancestry not specified:'
B04007e6='Ancestry unclassified'
B04007e7='Ancestry not reported'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B04005e1
B04005e2
B04005e3
B04005e4
B04005e5
B04005e6
B04005e7
B04005e8
B04005e9
B04005e10
B04005e11
B04005e12
B04005e13
B04005e14
B04005e15
B04005e16
B04005e17
B04005e18
B04005e19
B04005e20
B04005e21
B04005e22
B04005e23
B04005e24
B04005e25
B04005e26
B04005e27
B04005e28
B04005e29
B04005e30
B04005e31
B04005e32
B04005e33
B04005e34
B04005e35
B04005e36
B04005e37
B04005e38
B04005e39
B04005e40
B04005e41
B04005e42
B04005e43
B04005e44
B04005e45
B04005e46
B04005e47
B04005e48
B04005e49
B04005e50
B04005e51
B04005e52
B04005e53
B04005e54
B04005e55
B04005e56
B04005e57
B04005e58
B04005e59
B04005e60
B04005e61
B04005e62
B04005e63
B04005e64
B04005e65
B04005e66
B04005e67
B04005e68
B04005e69
B04005e70
B04005e71
B04005e72
B04005e73
B04005e74
B04005e75
B04005e76
B04005e77
B04005e78
B04005e79
B04005e80
B04005e81
B04005e82
B04005e83
B04005e84
B04005e85
B04005e86
B04005e87
B04005e88
B04005e89
B04005e90
B04005e91
B04005e92
B04005e93
B04005e94
B04005e95
B04005e96
B04005e97
B04005e98
B04005e99
B04005e100
B04005e101
B04005e102
B04005e103
B04005e104
B04005e105
B04005e106
B04005e107
B04005e108
 
B04006e1
B04006e2
B04006e3
B04006e4
B04006e5
B04006e6
B04006e7
B04006e8
B04006e9
B04006e10
B04006e11
B04006e12
B04006e13
B04006e14
B04006e15
B04006e16
B04006e17
B04006e18
B04006e19
B04006e20
B04006e21
B04006e22
B04006e23
B04006e24
B04006e25
B04006e26
B04006e27
B04006e28
B04006e29
B04006e30
B04006e31
B04006e32
B04006e33
B04006e34
B04006e35
B04006e36
B04006e37
B04006e38
B04006e39
B04006e40
B04006e41
B04006e42
B04006e43
B04006e44
B04006e45
B04006e46
B04006e47
B04006e48
B04006e49
B04006e50
B04006e51
B04006e52
B04006e53
B04006e54
B04006e55
B04006e56
B04006e57
B04006e58
B04006e59
B04006e60
B04006e61
B04006e62
B04006e63
B04006e64
B04006e65
B04006e66
B04006e67
B04006e68
B04006e69
B04006e70
B04006e71
B04006e72
B04006e73
B04006e74
B04006e75
B04006e76
B04006e77
B04006e78
B04006e79
B04006e80
B04006e81
B04006e82
B04006e83
B04006e84
B04006e85
B04006e86
B04006e87
B04006e88
B04006e89
B04006e90
B04006e91
B04006e92
B04006e93
B04006e94
B04006e95
B04006e96
B04006e97
B04006e98
B04006e99
B04006e100
B04006e101
B04006e102
B04006e103
B04006e104
B04006e105
B04006e106
B04006e107
B04006e108
B04006e109
 
B04007e1
B04007e2
B04007e3
B04007e4
B04007e5
B04007e6
B04007e7
;
RUN;
TITLE2;
