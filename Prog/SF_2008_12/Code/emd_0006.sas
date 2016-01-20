TITLE2 "e20125md0006000";
DATA work.SFe0006md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0006000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*FIRST ANCESTRY REPORTED */
/*Universe:  Total population */
 
B04001e1='Total:'
B04001e2='Afghan'
B04001e3='Albanian'
B04001e4='Alsatian'
B04001e5='American'
B04001e6='Arab:'
B04001e7='Egyptian'
B04001e8='Iraqi'
B04001e9='Jordanian'
B04001e10='Lebanese'
B04001e11='Moroccan'
B04001e12='Palestinian'
B04001e13='Syrian'
B04001e14='Arab'
B04001e15='Other Arab'
B04001e16='Armenian'
B04001e17='Assyrian/Chaldean/Syriac'
B04001e18='Australian'
B04001e19='Austrian'
B04001e20='Basque'
B04001e21='Belgian'
B04001e22='Brazilian'
B04001e23='British'
B04001e24='Bulgarian'
B04001e25='Cajun'
B04001e26='Canadian'
B04001e27='Carpatho Rusyn'
B04001e28='Celtic'
B04001e29='Croatian'
B04001e30='Cypriot'
B04001e31='Czech'
B04001e32='Czechoslovakian'
B04001e33='Danish'
B04001e34='Dutch'
B04001e35='Eastern European'
B04001e36='English'
B04001e37='Estonian'
B04001e38='European'
B04001e39='Finnish'
B04001e40='French (except Basque)'
B04001e41='French Canadian'
B04001e42='German'
B04001e43='German Russian'
B04001e44='Greek'
B04001e45='Guyanese'
B04001e46='Hungarian'
B04001e47='Icelander'
B04001e48='Iranian'
B04001e49='Irish'
B04001e50='Israeli'
B04001e51='Italian'
B04001e52='Latvian'
B04001e53='Lithuanian'
B04001e54='Luxemburger'
B04001e55='Macedonian'
B04001e56='Maltese'
B04001e57='New Zealander'
B04001e58='Northern European'
B04001e59='Norwegian'
B04001e60='Pennsylvania German'
B04001e61='Polish'
B04001e62='Portuguese'
B04001e63='Romanian'
B04001e64='Russian'
B04001e65='Scandinavian'
B04001e66='Scotch-Irish'
B04001e67='Scottish'
B04001e68='Serbian'
B04001e69='Slavic'
B04001e70='Slovak'
B04001e71='Slovene'
B04001e72='Soviet Union'
B04001e73='Subsaharan African:'
B04001e74='Cape Verdean'
B04001e75='Ethiopian'
B04001e76='Ghanaian'
B04001e77='Kenyan'
B04001e78='Liberian'
B04001e79='Nigerian'
B04001e80='Senegalese'
B04001e81='Sierra Leonean'
B04001e82='Somalian'
B04001e83='South African'
B04001e84='Sudanese'
B04001e85='Ugandan'
B04001e86='Zimbabwean'
B04001e87='African'
B04001e88='Other Subsaharan African'
B04001e89='Swedish'
B04001e90='Swiss'
B04001e91='Turkish'
B04001e92='Ukrainian'
B04001e93='Welsh'
B04001e94='West Indian (except Hispanic groups):'
B04001e95='Bahamian'
B04001e96='Barbadian'
B04001e97='Belizean'
B04001e98='Bermudan'
B04001e99='British West Indian'
B04001e100='Dutch West Indian'
B04001e101='Haitian'
B04001e102='Jamaican'
B04001e103='Trinidadian and Tobagonian'
B04001e104='U.S. Virgin Islander'
B04001e105='West Indian'
B04001e106='Other West Indian'
B04001e107='Yugoslavian'
B04001e108='Other groups'
B04001e109='Unclassified or not reported'
/*SECOND ANCESTRY REPORTED */
/*Universe:  Total population */
 
B04002e1='Total:'
B04002e2='Afghan'
B04002e3='Albanian'
B04002e4='Alsatian'
B04002e5='American'
B04002e6='Arab:'
B04002e7='Egyptian'
B04002e8='Iraqi'
B04002e9='Jordanian'
B04002e10='Lebanese'
B04002e11='Moroccan'
B04002e12='Palestinian'
B04002e13='Syrian'
B04002e14='Arab'
B04002e15='Other Arab'
B04002e16='Armenian'
B04002e17='Assyrian/Chaldean/Syriac'
B04002e18='Australian'
B04002e19='Austrian'
B04002e20='Basque'
B04002e21='Belgian'
B04002e22='Brazilian'
B04002e23='British'
B04002e24='Bulgarian'
B04002e25='Cajun'
B04002e26='Canadian'
B04002e27='Carpatho Rusyn'
B04002e28='Celtic'
B04002e29='Croatian'
B04002e30='Cypriot'
B04002e31='Czech'
B04002e32='Czechoslovakian'
B04002e33='Danish'
B04002e34='Dutch'
B04002e35='Eastern European'
B04002e36='English'
B04002e37='Estonian'
B04002e38='European'
B04002e39='Finnish'
B04002e40='French (except Basque)'
B04002e41='French Canadian'
B04002e42='German'
B04002e43='German Russian'
B04002e44='Greek'
B04002e45='Guyanese'
B04002e46='Hungarian'
B04002e47='Icelander'
B04002e48='Iranian'
B04002e49='Irish'
B04002e50='Israeli'
B04002e51='Italian'
B04002e52='Latvian'
B04002e53='Lithuanian'
B04002e54='Luxemburger'
B04002e55='Macedonian'
B04002e56='Maltese'
B04002e57='New Zealander'
B04002e58='Northern European'
B04002e59='Norwegian'
B04002e60='Pennsylvania German'
B04002e61='Polish'
B04002e62='Portuguese'
B04002e63='Romanian'
B04002e64='Russian'
B04002e65='Scandinavian'
B04002e66='Scotch-Irish'
B04002e67='Scottish'
B04002e68='Serbian'
B04002e69='Slavic'
B04002e70='Slovak'
B04002e71='Slovene'
B04002e72='Soviet Union'
B04002e73='Subsaharan African:'
B04002e74='Cape Verdean'
B04002e75='Ethiopian'
B04002e76='Ghanaian'
B04002e77='Kenyan'
B04002e78='Liberian'
B04002e79='Nigerian'
B04002e80='Senegalese'
B04002e81='Sierra Leonean'
B04002e82='Somalian'
B04002e83='South African'
B04002e84='Sudanese'
B04002e85='Ugandan'
B04002e86='Zimbabwean'
B04002e87='African'
B04002e88='Other Subsaharan African'
B04002e89='Swedish'
B04002e90='Swiss'
B04002e91='Turkish'
B04002e92='Ukrainian'
B04002e93='Welsh'
B04002e94='West Indian (except Hispanic groups):'
B04002e95='Bahamian'
B04002e96='Barbadian'
B04002e97='Belizean'
B04002e98='Bermudan'
B04002e99='British West Indian'
B04002e100='Dutch West Indian'
B04002e101='Haitian'
B04002e102='Jamaican'
B04002e103='Trinidadian and Tobagonian'
B04002e104='U.S. Virgin Islander'
B04002e105='West Indian'
B04002e106='Other West Indian'
B04002e107='Yugoslavian'
B04002e108='Other groups'
B04002e109='Unclassified or not reported'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B04001e1
B04001e2
B04001e3
B04001e4
B04001e5
B04001e6
B04001e7
B04001e8
B04001e9
B04001e10
B04001e11
B04001e12
B04001e13
B04001e14
B04001e15
B04001e16
B04001e17
B04001e18
B04001e19
B04001e20
B04001e21
B04001e22
B04001e23
B04001e24
B04001e25
B04001e26
B04001e27
B04001e28
B04001e29
B04001e30
B04001e31
B04001e32
B04001e33
B04001e34
B04001e35
B04001e36
B04001e37
B04001e38
B04001e39
B04001e40
B04001e41
B04001e42
B04001e43
B04001e44
B04001e45
B04001e46
B04001e47
B04001e48
B04001e49
B04001e50
B04001e51
B04001e52
B04001e53
B04001e54
B04001e55
B04001e56
B04001e57
B04001e58
B04001e59
B04001e60
B04001e61
B04001e62
B04001e63
B04001e64
B04001e65
B04001e66
B04001e67
B04001e68
B04001e69
B04001e70
B04001e71
B04001e72
B04001e73
B04001e74
B04001e75
B04001e76
B04001e77
B04001e78
B04001e79
B04001e80
B04001e81
B04001e82
B04001e83
B04001e84
B04001e85
B04001e86
B04001e87
B04001e88
B04001e89
B04001e90
B04001e91
B04001e92
B04001e93
B04001e94
B04001e95
B04001e96
B04001e97
B04001e98
B04001e99
B04001e100
B04001e101
B04001e102
B04001e103
B04001e104
B04001e105
B04001e106
B04001e107
B04001e108
B04001e109
 
B04002e1
B04002e2
B04002e3
B04002e4
B04002e5
B04002e6
B04002e7
B04002e8
B04002e9
B04002e10
B04002e11
B04002e12
B04002e13
B04002e14
B04002e15
B04002e16
B04002e17
B04002e18
B04002e19
B04002e20
B04002e21
B04002e22
B04002e23
B04002e24
B04002e25
B04002e26
B04002e27
B04002e28
B04002e29
B04002e30
B04002e31
B04002e32
B04002e33
B04002e34
B04002e35
B04002e36
B04002e37
B04002e38
B04002e39
B04002e40
B04002e41
B04002e42
B04002e43
B04002e44
B04002e45
B04002e46
B04002e47
B04002e48
B04002e49
B04002e50
B04002e51
B04002e52
B04002e53
B04002e54
B04002e55
B04002e56
B04002e57
B04002e58
B04002e59
B04002e60
B04002e61
B04002e62
B04002e63
B04002e64
B04002e65
B04002e66
B04002e67
B04002e68
B04002e69
B04002e70
B04002e71
B04002e72
B04002e73
B04002e74
B04002e75
B04002e76
B04002e77
B04002e78
B04002e79
B04002e80
B04002e81
B04002e82
B04002e83
B04002e84
B04002e85
B04002e86
B04002e87
B04002e88
B04002e89
B04002e90
B04002e91
B04002e92
B04002e93
B04002e94
B04002e95
B04002e96
B04002e97
B04002e98
B04002e99
B04002e100
B04002e101
B04002e102
B04002e103
B04002e104
B04002e105
B04002e106
B04002e107
B04002e108
B04002e109
;
RUN;
TITLE2;
