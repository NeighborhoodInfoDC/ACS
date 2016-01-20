TITLE2 "e20115dc0044000";
DATA work.SFe0044dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0044000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER */
/*Universe:  Population 5 years and over */
 
B16001e1='Total:'
B16001e2='Speak only English'
B16001e3='Spanish or Spanish Creole:'
B16001e4='Speak English "very well"'
B16001e5='Speak English less than "very well"'
B16001e6='French (incl. Patois, Cajun):'
B16001e7='Speak English "very well"'
B16001e8='Speak English less than "very well"'
B16001e9='French Creole:'
B16001e10='Speak English "very well"'
B16001e11='Speak English less than "very well"'
B16001e12='Italian:'
B16001e13='Speak English "very well"'
B16001e14='Speak English less than "very well"'
B16001e15='Portuguese or Portuguese Creole:'
B16001e16='Speak English "very well"'
B16001e17='Speak English less than "very well"'
B16001e18='German:'
B16001e19='Speak English "very well"'
B16001e20='Speak English less than "very well"'
B16001e21='Yiddish:'
B16001e22='Speak English "very well"'
B16001e23='Speak English less than "very well"'
B16001e24='Other West Germanic languages:'
B16001e25='Speak English "very well"'
B16001e26='Speak English less than "very well"'
B16001e27='Scandinavian languages:'
B16001e28='Speak English "very well"'
B16001e29='Speak English less than "very well"'
B16001e30='Greek:'
B16001e31='Speak English "very well"'
B16001e32='Speak English less than "very well"'
B16001e33='Russian:'
B16001e34='Speak English "very well"'
B16001e35='Speak English less than "very well"'
B16001e36='Polish:'
B16001e37='Speak English "very well"'
B16001e38='Speak English less than "very well"'
B16001e39='Serbo-Croatian:'
B16001e40='Speak English "very well"'
B16001e41='Speak English less than "very well"'
B16001e42='Other Slavic languages:'
B16001e43='Speak English "very well"'
B16001e44='Speak English less than "very well"'
B16001e45='Armenian:'
B16001e46='Speak English "very well"'
B16001e47='Speak English less than "very well"'
B16001e48='Persian:'
B16001e49='Speak English "very well"'
B16001e50='Speak English less than "very well"'
B16001e51='Gujarati:'
B16001e52='Speak English "very well"'
B16001e53='Speak English less than "very well"'
B16001e54='Hindi:'
B16001e55='Speak English "very well"'
B16001e56='Speak English less than "very well"'
B16001e57='Urdu:'
B16001e58='Speak English "very well"'
B16001e59='Speak English less than "very well"'
B16001e60='Other Indic languages:'
B16001e61='Speak English "very well"'
B16001e62='Speak English less than "very well"'
B16001e63='Other Indo-European languages:'
B16001e64='Speak English "very well"'
B16001e65='Speak English less than "very well"'
B16001e66='Chinese:'
B16001e67='Speak English "very well"'
B16001e68='Speak English less than "very well"'
B16001e69='Japanese:'
B16001e70='Speak English "very well"'
B16001e71='Speak English less than "very well"'
B16001e72='Korean:'
B16001e73='Speak English "very well"'
B16001e74='Speak English less than "very well"'
B16001e75='Mon-Khmer, Cambodian:'
B16001e76='Speak English "very well"'
B16001e77='Speak English less than "very well"'
B16001e78='Hmong:'
B16001e79='Speak English "very well"'
B16001e80='Speak English less than "very well"'
B16001e81='Thai:'
B16001e82='Speak English "very well"'
B16001e83='Speak English less than "very well"'
B16001e84='Laotian:'
B16001e85='Speak English "very well"'
B16001e86='Speak English less than "very well"'
B16001e87='Vietnamese:'
B16001e88='Speak English "very well"'
B16001e89='Speak English less than "very well"'
B16001e90='Other Asian languages:'
B16001e91='Speak English "very well"'
B16001e92='Speak English less than "very well"'
B16001e93='Tagalog:'
B16001e94='Speak English "very well"'
B16001e95='Speak English less than "very well"'
B16001e96='Other Pacific Island languages:'
B16001e97='Speak English "very well"'
B16001e98='Speak English less than "very well"'
B16001e99='Navajo:'
B16001e100='Speak English "very well"'
B16001e101='Speak English less than "very well"'
B16001e102='Other Native North American languages:'
B16001e103='Speak English "very well"'
B16001e104='Speak English less than "very well"'
B16001e105='Hungarian:'
B16001e106='Speak English "very well"'
B16001e107='Speak English less than "very well"'
B16001e108='Arabic:'
B16001e109='Speak English "very well"'
B16001e110='Speak English less than "very well"'
B16001e111='Hebrew:'
B16001e112='Speak English "very well"'
B16001e113='Speak English less than "very well"'
B16001e114='African languages:'
B16001e115='Speak English "very well"'
B16001e116='Speak English less than "very well"'
B16001e117='Other and unspecified languages:'
B16001e118='Speak English "very well"'
B16001e119='Speak English less than "very well"'
 
/*HOUSEHOLD LANGUAGE BY HOUSEHOLDS IN WHICH NO ONE 14 AND OVER SPEAKS ENGLISH ONLY OR SPEAKS A LANGUAGE OTHER THAN ENGLISH AT HOME AND SPEAKS ENGLISH "VERY WELL" */
/*Universe:  Households */
 
B16002e1='Total:'
B16002e2='English only'
B16002e3='Spanish:'
B16002e4='No one 14 and over speaks English only or speaks English "very well"'
B16002e5='At least one person 14 and over speaks English only or speaks English "very well"'
B16002e6='Other Indo-European languages:'
B16002e7='No one 14 and over speaks English only or speaks English "very well"'
B16002e8='At least one person 14 and over speaks English only or speaks English "very well"'
B16002e9='Asian and Pacific Island languages:'
B16002e10='No one 14 and over speaks English only or speaks English "very well"'
B16002e11='At least one person 14 and over speaks English only or speaks English "very well"'
B16002e12='Other languages:'
B16002e13='No one 14 and over speaks English only or speaks English "very well"'
B16002e14='At least one person 14 and over speaks English only or speaks English "very well"'
 
/*AGE BY LANGUAGE SPOKEN AT HOME FOR THE POPULATION 5 YEARS AND OVER IN HOUSEHOLDS IN WHICH NO ONE 14 AND OVER SPEAKS ENGLISH ONLY OR SPEAKS A LANGUAGE OTHER THAN ENGLISH AT HOME AND SPEAKS ENGLISH "VER */
/*Universe:  Population 5 years and over in households in which no one 14 and over speaks English only or speaks a language other than English at home and speaks English "very well" */
 
B16003e1='Total:'
B16003e2='5 to 17 years:'
B16003e3='Speak only English'
B16003e4='Speak Spanish'
B16003e5='Speak other Indo-European languages'
B16003e6='Speak Asian and Pacific Island languages'
B16003e7='Speak other languages'
B16003e8='18 years and over:'
B16003e9='Speak Spanish'
B16003e10='Speak other Indo-European languages'
B16003e11='Speak Asian and Pacific Island languages'
B16003e12='Speak other languages'
 
/*AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER */
/*Universe:  Population 5 years and over */
 
B16004e1='Total:'
B16004e2='5 to 17 years:'
B16004e3='Speak only English'
B16004e4='Speak Spanish:'
B16004e5='Speak English "very well"'
B16004e6='Speak English "well"'
B16004e7='Speak English "not well"'
B16004e8='Speak English "not at all"'
B16004e9='Speak other Indo-European languages:'
B16004e10='Speak English "very well"'
B16004e11='Speak English "well"'
B16004e12='Speak English "not well"'
B16004e13='Speak English "not at all"'
B16004e14='Speak Asian and Pacific Island languages:'
B16004e15='Speak English "very well"'
B16004e16='Speak English "well"'
B16004e17='Speak English "not well"'
B16004e18='Speak English "not at all"'
B16004e19='Speak other languages:'
B16004e20='Speak English "very well"'
B16004e21='Speak English "well"'
B16004e22='Speak English "not well"'
B16004e23='Speak English "not at all"'
B16004e24='18 to 64 years:'
B16004e25='Speak only English'
B16004e26='Speak Spanish:'
B16004e27='Speak English "very well"'
B16004e28='Speak English "well"'
B16004e29='Speak English "not well"'
B16004e30='Speak English "not at all"'
B16004e31='Speak other Indo-European languages:'
B16004e32='Speak English "very well"'
B16004e33='Speak English "well"'
B16004e34='Speak English "not well"'
B16004e35='Speak English "not at all"'
B16004e36='Speak Asian and Pacific Island languages:'
B16004e37='Speak English "very well"'
B16004e38='Speak English "well"'
B16004e39='Speak English "not well"'
B16004e40='Speak English "not at all"'
B16004e41='Speak other languages:'
B16004e42='Speak English "very well"'
B16004e43='Speak English "well"'
B16004e44='Speak English "not well"'
B16004e45='Speak English "not at all"'
B16004e46='65 years and over:'
B16004e47='Speak only English'
B16004e48='Speak Spanish:'
B16004e49='Speak English "very well"'
B16004e50='Speak English "well"'
B16004e51='Speak English "not well"'
B16004e52='Speak English "not at all"'
B16004e53='Speak other Indo-European languages:'
B16004e54='Speak English "very well"'
B16004e55='Speak English "well"'
B16004e56='Speak English "not well"'
B16004e57='Speak English "not at all"'
B16004e58='Speak Asian and Pacific Island languages:'
B16004e59='Speak English "very well"'
B16004e60='Speak English "well"'
B16004e61='Speak English "not well"'
B16004e62='Speak English "not at all"'
B16004e63='Speak other languages:'
B16004e64='Speak English "very well"'
B16004e65='Speak English "well"'
B16004e66='Speak English "not well"'
B16004e67='Speak English "not at all"'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B16001e1
B16001e2
B16001e3
B16001e4
B16001e5
B16001e6
B16001e7
B16001e8
B16001e9
B16001e10
B16001e11
B16001e12
B16001e13
B16001e14
B16001e15
B16001e16
B16001e17
B16001e18
B16001e19
B16001e20
B16001e21
B16001e22
B16001e23
B16001e24
B16001e25
B16001e26
B16001e27
B16001e28
B16001e29
B16001e30
B16001e31
B16001e32
B16001e33
B16001e34
B16001e35
B16001e36
B16001e37
B16001e38
B16001e39
B16001e40
B16001e41
B16001e42
B16001e43
B16001e44
B16001e45
B16001e46
B16001e47
B16001e48
B16001e49
B16001e50
B16001e51
B16001e52
B16001e53
B16001e54
B16001e55
B16001e56
B16001e57
B16001e58
B16001e59
B16001e60
B16001e61
B16001e62
B16001e63
B16001e64
B16001e65
B16001e66
B16001e67
B16001e68
B16001e69
B16001e70
B16001e71
B16001e72
B16001e73
B16001e74
B16001e75
B16001e76
B16001e77
B16001e78
B16001e79
B16001e80
B16001e81
B16001e82
B16001e83
B16001e84
B16001e85
B16001e86
B16001e87
B16001e88
B16001e89
B16001e90
B16001e91
B16001e92
B16001e93
B16001e94
B16001e95
B16001e96
B16001e97
B16001e98
B16001e99
B16001e100
B16001e101
B16001e102
B16001e103
B16001e104
B16001e105
B16001e106
B16001e107
B16001e108
B16001e109
B16001e110
B16001e111
B16001e112
B16001e113
B16001e114
B16001e115
B16001e116
B16001e117
B16001e118
B16001e119
 
B16002e1
B16002e2
B16002e3
B16002e4
B16002e5
B16002e6
B16002e7
B16002e8
B16002e9
B16002e10
B16002e11
B16002e12
B16002e13
B16002e14
 
B16003e1
B16003e2
B16003e3
B16003e4
B16003e5
B16003e6
B16003e7
B16003e8
B16003e9
B16003e10
B16003e11
B16003e12
 
B16004e1
B16004e2
B16004e3
B16004e4
B16004e5
B16004e6
B16004e7
B16004e8
B16004e9
B16004e10
B16004e11
B16004e12
B16004e13
B16004e14
B16004e15
B16004e16
B16004e17
B16004e18
B16004e19
B16004e20
B16004e21
B16004e22
B16004e23
B16004e24
B16004e25
B16004e26
B16004e27
B16004e28
B16004e29
B16004e30
B16004e31
B16004e32
B16004e33
B16004e34
B16004e35
B16004e36
B16004e37
B16004e38
B16004e39
B16004e40
B16004e41
B16004e42
B16004e43
B16004e44
B16004e45
B16004e46
B16004e47
B16004e48
B16004e49
B16004e50
B16004e51
B16004e52
B16004e53
B16004e54
B16004e55
B16004e56
B16004e57
B16004e58
B16004e59
B16004e60
B16004e61
B16004e62
B16004e63
B16004e64
B16004e65
B16004e66
B16004e67
;
RUN;
TITLE2;
