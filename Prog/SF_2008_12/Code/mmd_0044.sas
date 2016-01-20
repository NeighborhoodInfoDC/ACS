TITLE2 "m20125md0044000";
DATA work.SFm0044md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0044000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER */
/*Universe:  Population 5 years and over */
 
B16001m1='Total:'
B16001m2='Speak only English'
B16001m3='Spanish or Spanish Creole:'
B16001m4='Speak English "very well"'
B16001m5='Speak English less than "very well"'
B16001m6='French (incl. Patois, Cajun):'
B16001m7='Speak English "very well"'
B16001m8='Speak English less than "very well"'
B16001m9='French Creole:'
B16001m10='Speak English "very well"'
B16001m11='Speak English less than "very well"'
B16001m12='Italian:'
B16001m13='Speak English "very well"'
B16001m14='Speak English less than "very well"'
B16001m15='Portuguese or Portuguese Creole:'
B16001m16='Speak English "very well"'
B16001m17='Speak English less than "very well"'
B16001m18='German:'
B16001m19='Speak English "very well"'
B16001m20='Speak English less than "very well"'
B16001m21='Yiddish:'
B16001m22='Speak English "very well"'
B16001m23='Speak English less than "very well"'
B16001m24='Other West Germanic languages:'
B16001m25='Speak English "very well"'
B16001m26='Speak English less than "very well"'
B16001m27='Scandinavian languages:'
B16001m28='Speak English "very well"'
B16001m29='Speak English less than "very well"'
B16001m30='Greek:'
B16001m31='Speak English "very well"'
B16001m32='Speak English less than "very well"'
B16001m33='Russian:'
B16001m34='Speak English "very well"'
B16001m35='Speak English less than "very well"'
B16001m36='Polish:'
B16001m37='Speak English "very well"'
B16001m38='Speak English less than "very well"'
B16001m39='Serbo-Croatian:'
B16001m40='Speak English "very well"'
B16001m41='Speak English less than "very well"'
B16001m42='Other Slavic languages:'
B16001m43='Speak English "very well"'
B16001m44='Speak English less than "very well"'
B16001m45='Armenian:'
B16001m46='Speak English "very well"'
B16001m47='Speak English less than "very well"'
B16001m48='Persian:'
B16001m49='Speak English "very well"'
B16001m50='Speak English less than "very well"'
B16001m51='Gujarati:'
B16001m52='Speak English "very well"'
B16001m53='Speak English less than "very well"'
B16001m54='Hindi:'
B16001m55='Speak English "very well"'
B16001m56='Speak English less than "very well"'
B16001m57='Urdu:'
B16001m58='Speak English "very well"'
B16001m59='Speak English less than "very well"'
B16001m60='Other Indic languages:'
B16001m61='Speak English "very well"'
B16001m62='Speak English less than "very well"'
B16001m63='Other Indo-European languages:'
B16001m64='Speak English "very well"'
B16001m65='Speak English less than "very well"'
B16001m66='Chinese:'
B16001m67='Speak English "very well"'
B16001m68='Speak English less than "very well"'
B16001m69='Japanese:'
B16001m70='Speak English "very well"'
B16001m71='Speak English less than "very well"'
B16001m72='Korean:'
B16001m73='Speak English "very well"'
B16001m74='Speak English less than "very well"'
B16001m75='Mon-Khmer, Cambodian:'
B16001m76='Speak English "very well"'
B16001m77='Speak English less than "very well"'
B16001m78='Hmong:'
B16001m79='Speak English "very well"'
B16001m80='Speak English less than "very well"'
B16001m81='Thai:'
B16001m82='Speak English "very well"'
B16001m83='Speak English less than "very well"'
B16001m84='Laotian:'
B16001m85='Speak English "very well"'
B16001m86='Speak English less than "very well"'
B16001m87='Vietnamese:'
B16001m88='Speak English "very well"'
B16001m89='Speak English less than "very well"'
B16001m90='Other Asian languages:'
B16001m91='Speak English "very well"'
B16001m92='Speak English less than "very well"'
B16001m93='Tagalog:'
B16001m94='Speak English "very well"'
B16001m95='Speak English less than "very well"'
B16001m96='Other Pacific Island languages:'
B16001m97='Speak English "very well"'
B16001m98='Speak English less than "very well"'
B16001m99='Navajo:'
B16001m100='Speak English "very well"'
B16001m101='Speak English less than "very well"'
B16001m102='Other Native North American languages:'
B16001m103='Speak English "very well"'
B16001m104='Speak English less than "very well"'
B16001m105='Hungarian:'
B16001m106='Speak English "very well"'
B16001m107='Speak English less than "very well"'
B16001m108='Arabic:'
B16001m109='Speak English "very well"'
B16001m110='Speak English less than "very well"'
B16001m111='Hebrew:'
B16001m112='Speak English "very well"'
B16001m113='Speak English less than "very well"'
B16001m114='African languages:'
B16001m115='Speak English "very well"'
B16001m116='Speak English less than "very well"'
B16001m117='Other and unspecified languages:'
B16001m118='Speak English "very well"'
B16001m119='Speak English less than "very well"'
/*HOUSEHOLD LANGUAGE BY HOUSEHOLDS IN WHICH NO ONE 14 AND OVER SPEAKS ENGLISH ONLY OR SPEAKS A LANGUAGE OTHER THAN ENGLISH AT HOME AND SPEAKS ENGLISH "VERY WELL" */
/*Universe:  Households */
 
B16002m1='Total:'
B16002m2='English only'
B16002m3='Spanish:'
B16002m4='No one 14 and over speaks English only or speaks English "very well"'
B16002m5='At least one person 14 and over speaks English only or speaks English "very well"'
B16002m6='Other Indo-European languages:'
B16002m7='No one 14 and over speaks English only or speaks English "very well"'
B16002m8='At least one person 14 and over speaks English only or speaks English "very well"'
B16002m9='Asian and Pacific Island languages:'
B16002m10='No one 14 and over speaks English only or speaks English "very well"'
B16002m11='At least one person 14 and over speaks English only or speaks English "very well"'
B16002m12='Other languages:'
B16002m13='No one 14 and over speaks English only or speaks English "very well"'
B16002m14='At least one person 14 and over speaks English only or speaks English "very well"'
/*AGE BY LANGUAGE SPOKEN AT HOME FOR THE POPULATION 5 YEARS AND OVER IN HOUSEHOLDS IN WHICH NO ONE 14 AND OVER SPEAKS ENGLISH ONLY OR SPEAKS A LANGUAGE OTHER THAN ENGLISH AT HOME AND SPEAKS ENGLISH "VER */
/*Universe:  Population 5 years and over in households in which no one 14 and over speaks English only or speaks a language other than English at home and speaks English "very well" */
 
B16003m1='Total:'
B16003m2='5 to 17 years:'
B16003m3='Speak only English'
B16003m4='Speak Spanish'
B16003m5='Speak other Indo-European languages'
B16003m6='Speak Asian and Pacific Island languages'
B16003m7='Speak other languages'
B16003m8='18 years and over:'
B16003m9='Speak Spanish'
B16003m10='Speak other Indo-European languages'
B16003m11='Speak Asian and Pacific Island languages'
B16003m12='Speak other languages'
/*AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER */
/*Universe:  Population 5 years and over */
 
B16004m1='Total:'
B16004m2='5 to 17 years:'
B16004m3='Speak only English'
B16004m4='Speak Spanish:'
B16004m5='Speak English "very well"'
B16004m6='Speak English "well"'
B16004m7='Speak English "not well"'
B16004m8='Speak English "not at all"'
B16004m9='Speak other Indo-European languages:'
B16004m10='Speak English "very well"'
B16004m11='Speak English "well"'
B16004m12='Speak English "not well"'
B16004m13='Speak English "not at all"'
B16004m14='Speak Asian and Pacific Island languages:'
B16004m15='Speak English "very well"'
B16004m16='Speak English "well"'
B16004m17='Speak English "not well"'
B16004m18='Speak English "not at all"'
B16004m19='Speak other languages:'
B16004m20='Speak English "very well"'
B16004m21='Speak English "well"'
B16004m22='Speak English "not well"'
B16004m23='Speak English "not at all"'
B16004m24='18 to 64 years:'
B16004m25='Speak only English'
B16004m26='Speak Spanish:'
B16004m27='Speak English "very well"'
B16004m28='Speak English "well"'
B16004m29='Speak English "not well"'
B16004m30='Speak English "not at all"'
B16004m31='Speak other Indo-European languages:'
B16004m32='Speak English "very well"'
B16004m33='Speak English "well"'
B16004m34='Speak English "not well"'
B16004m35='Speak English "not at all"'
B16004m36='Speak Asian and Pacific Island languages:'
B16004m37='Speak English "very well"'
B16004m38='Speak English "well"'
B16004m39='Speak English "not well"'
B16004m40='Speak English "not at all"'
B16004m41='Speak other languages:'
B16004m42='Speak English "very well"'
B16004m43='Speak English "well"'
B16004m44='Speak English "not well"'
B16004m45='Speak English "not at all"'
B16004m46='65 years and over:'
B16004m47='Speak only English'
B16004m48='Speak Spanish:'
B16004m49='Speak English "very well"'
B16004m50='Speak English "well"'
B16004m51='Speak English "not well"'
B16004m52='Speak English "not at all"'
B16004m53='Speak other Indo-European languages:'
B16004m54='Speak English "very well"'
B16004m55='Speak English "well"'
B16004m56='Speak English "not well"'
B16004m57='Speak English "not at all"'
B16004m58='Speak Asian and Pacific Island languages:'
B16004m59='Speak English "very well"'
B16004m60='Speak English "well"'
B16004m61='Speak English "not well"'
B16004m62='Speak English "not at all"'
B16004m63='Speak other languages:'
B16004m64='Speak English "very well"'
B16004m65='Speak English "well"'
B16004m66='Speak English "not well"'
B16004m67='Speak English "not at all"'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B16001m1
B16001m2
B16001m3
B16001m4
B16001m5
B16001m6
B16001m7
B16001m8
B16001m9
B16001m10
B16001m11
B16001m12
B16001m13
B16001m14
B16001m15
B16001m16
B16001m17
B16001m18
B16001m19
B16001m20
B16001m21
B16001m22
B16001m23
B16001m24
B16001m25
B16001m26
B16001m27
B16001m28
B16001m29
B16001m30
B16001m31
B16001m32
B16001m33
B16001m34
B16001m35
B16001m36
B16001m37
B16001m38
B16001m39
B16001m40
B16001m41
B16001m42
B16001m43
B16001m44
B16001m45
B16001m46
B16001m47
B16001m48
B16001m49
B16001m50
B16001m51
B16001m52
B16001m53
B16001m54
B16001m55
B16001m56
B16001m57
B16001m58
B16001m59
B16001m60
B16001m61
B16001m62
B16001m63
B16001m64
B16001m65
B16001m66
B16001m67
B16001m68
B16001m69
B16001m70
B16001m71
B16001m72
B16001m73
B16001m74
B16001m75
B16001m76
B16001m77
B16001m78
B16001m79
B16001m80
B16001m81
B16001m82
B16001m83
B16001m84
B16001m85
B16001m86
B16001m87
B16001m88
B16001m89
B16001m90
B16001m91
B16001m92
B16001m93
B16001m94
B16001m95
B16001m96
B16001m97
B16001m98
B16001m99
B16001m100
B16001m101
B16001m102
B16001m103
B16001m104
B16001m105
B16001m106
B16001m107
B16001m108
B16001m109
B16001m110
B16001m111
B16001m112
B16001m113
B16001m114
B16001m115
B16001m116
B16001m117
B16001m118
B16001m119
 
B16002m1
B16002m2
B16002m3
B16002m4
B16002m5
B16002m6
B16002m7
B16002m8
B16002m9
B16002m10
B16002m11
B16002m12
B16002m13
B16002m14
 
B16003m1
B16003m2
B16003m3
B16003m4
B16003m5
B16003m6
B16003m7
B16003m8
B16003m9
B16003m10
B16003m11
B16003m12
 
B16004m1
B16004m2
B16004m3
B16004m4
B16004m5
B16004m6
B16004m7
B16004m8
B16004m9
B16004m10
B16004m11
B16004m12
B16004m13
B16004m14
B16004m15
B16004m16
B16004m17
B16004m18
B16004m19
B16004m20
B16004m21
B16004m22
B16004m23
B16004m24
B16004m25
B16004m26
B16004m27
B16004m28
B16004m29
B16004m30
B16004m31
B16004m32
B16004m33
B16004m34
B16004m35
B16004m36
B16004m37
B16004m38
B16004m39
B16004m40
B16004m41
B16004m42
B16004m43
B16004m44
B16004m45
B16004m46
B16004m47
B16004m48
B16004m49
B16004m50
B16004m51
B16004m52
B16004m53
B16004m54
B16004m55
B16004m56
B16004m57
B16004m58
B16004m59
B16004m60
B16004m61
B16004m62
B16004m63
B16004m64
B16004m65
B16004m66
B16004m67
;
RUN;
TITLE2;
