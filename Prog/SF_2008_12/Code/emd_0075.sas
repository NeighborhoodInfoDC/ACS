TITLE2 "e20125md0075000";
DATA work.SFe0075md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0075000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SEX BY AGE BY EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER */
/*Universe:  Population 16 years and over */
 
B23001e1='Total:'
B23001e2='Male:'
B23001e3='16 to 19 years:'
B23001e4='In labor force:'
B23001e5='In Armed Forces'
B23001e6='Civilian:'
B23001e7='Employed'
B23001e8='Unemployed'
B23001e9='Not in labor force'
B23001e10='20 and 21 years:'
B23001e11='In labor force:'
B23001e12='In Armed Forces'
B23001e13='Civilian:'
B23001e14='Employed'
B23001e15='Unemployed'
B23001e16='Not in labor force'
B23001e17='22 to 24 years:'
B23001e18='In labor force:'
B23001e19='In Armed Forces'
B23001e20='Civilian:'
B23001e21='Employed'
B23001e22='Unemployed'
B23001e23='Not in labor force'
B23001e24='25 to 29 years:'
B23001e25='In labor force:'
B23001e26='In Armed Forces'
B23001e27='Civilian:'
B23001e28='Employed'
B23001e29='Unemployed'
B23001e30='Not in labor force'
B23001e31='30 to 34 years:'
B23001e32='In labor force:'
B23001e33='In Armed Forces'
B23001e34='Civilian:'
B23001e35='Employed'
B23001e36='Unemployed'
B23001e37='Not in labor force'
B23001e38='35 to 44 years:'
B23001e39='In labor force:'
B23001e40='In Armed Forces'
B23001e41='Civilian:'
B23001e42='Employed'
B23001e43='Unemployed'
B23001e44='Not in labor force'
B23001e45='45 to 54 years:'
B23001e46='In labor force:'
B23001e47='In Armed Forces'
B23001e48='Civilian:'
B23001e49='Employed'
B23001e50='Unemployed'
B23001e51='Not in labor force'
B23001e52='55 to 59 years:'
B23001e53='In labor force:'
B23001e54='In Armed Forces'
B23001e55='Civilian:'
B23001e56='Employed'
B23001e57='Unemployed'
B23001e58='Not in labor force'
B23001e59='60 and 61 years:'
B23001e60='In labor force:'
B23001e61='In Armed Forces'
B23001e62='Civilian:'
B23001e63='Employed'
B23001e64='Unemployed'
B23001e65='Not in labor force'
B23001e66='62 to 64 years:'
B23001e67='In labor force:'
B23001e68='In Armed Forces'
B23001e69='Civilian:'
B23001e70='Employed'
B23001e71='Unemployed'
B23001e72='Not in labor force'
B23001e73='65 to 69 years:'
B23001e74='In labor force:'
B23001e75='Employed'
B23001e76='Unemployed'
B23001e77='Not in labor force'
B23001e78='70 to 74 years:'
B23001e79='In labor force:'
B23001e80='Employed'
B23001e81='Unemployed'
B23001e82='Not in labor force'
B23001e83='75 years and over:'
B23001e84='In labor force:'
B23001e85='Employed'
B23001e86='Unemployed'
B23001e87='Not in labor force'
B23001e88='Female:'
B23001e89='16 to 19 years:'
B23001e90='In labor force:'
B23001e91='In Armed Forces'
B23001e92='Civilian:'
B23001e93='Employed'
B23001e94='Unemployed'
B23001e95='Not in labor force'
B23001e96='20 and 21 years:'
B23001e97='In labor force:'
B23001e98='In Armed Forces'
B23001e99='Civilian:'
B23001e100='Employed'
B23001e101='Unemployed'
B23001e102='Not in labor force'
B23001e103='22 to 24 years:'
B23001e104='In labor force:'
B23001e105='In Armed Forces'
B23001e106='Civilian:'
B23001e107='Employed'
B23001e108='Unemployed'
B23001e109='Not in labor force'
B23001e110='25 to 29 years:'
B23001e111='In labor force:'
B23001e112='In Armed Forces'
B23001e113='Civilian:'
B23001e114='Employed'
B23001e115='Unemployed'
B23001e116='Not in labor force'
B23001e117='30 to 34 years:'
B23001e118='In labor force:'
B23001e119='In Armed Forces'
B23001e120='Civilian:'
B23001e121='Employed'
B23001e122='Unemployed'
B23001e123='Not in labor force'
B23001e124='35 to 44 years:'
B23001e125='In labor force:'
B23001e126='In Armed Forces'
B23001e127='Civilian:'
B23001e128='Employed'
B23001e129='Unemployed'
B23001e130='Not in labor force'
B23001e131='45 to 54 years:'
B23001e132='In labor force:'
B23001e133='In Armed Forces'
B23001e134='Civilian:'
B23001e135='Employed'
B23001e136='Unemployed'
B23001e137='Not in labor force'
B23001e138='55 to 59 years:'
B23001e139='In labor force:'
B23001e140='In Armed Forces'
B23001e141='Civilian:'
B23001e142='Employed'
B23001e143='Unemployed'
B23001e144='Not in labor force'
B23001e145='60 and 61 years:'
B23001e146='In labor force:'
B23001e147='In Armed Forces'
B23001e148='Civilian:'
B23001e149='Employed'
B23001e150='Unemployed'
B23001e151='Not in labor force'
B23001e152='62 to 64 years:'
B23001e153='In labor force:'
B23001e154='In Armed Forces'
B23001e155='Civilian:'
B23001e156='Employed'
B23001e157='Unemployed'
B23001e158='Not in labor force'
B23001e159='65 to 69 years:'
B23001e160='In labor force:'
B23001e161='Employed'
B23001e162='Unemployed'
B23001e163='Not in labor force'
B23001e164='70 to 74 years:'
B23001e165='In labor force:'
B23001e166='Employed'
B23001e167='Unemployed'
B23001e168='Not in labor force'
B23001e169='75 years and over:'
B23001e170='In labor force:'
B23001e171='Employed'
B23001e172='Unemployed'
B23001e173='Not in labor force'
/*SEX BY AGE BY EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER (WHITE ALONE) */
/*Universe:  White alone population 16 years and over */
 
C23002Ae1='Total:'
C23002Ae2='Male:'
C23002Ae3='16 to 64 years:'
C23002Ae4='In labor force:'
C23002Ae5='In Armed Forces'
C23002Ae6='Civilian:'
C23002Ae7='Employed'
C23002Ae8='Unemployed'
C23002Ae9='Not in labor force'
C23002Ae10='65 years and over:'
C23002Ae11='In labor force:'
C23002Ae12='Employed'
C23002Ae13='Unemployed'
C23002Ae14='Not in labor force'
C23002Ae15='Female:'
C23002Ae16='16 to 64 years:'
C23002Ae17='In labor force:'
C23002Ae18='In Armed Forces'
C23002Ae19='Civilian:'
C23002Ae20='Employed'
C23002Ae21='Unemployed'
C23002Ae22='Not in labor force'
C23002Ae23='65 years and over:'
C23002Ae24='In labor force:'
C23002Ae25='Employed'
C23002Ae26='Unemployed'
C23002Ae27='Not in labor force'
/*SEX BY AGE BY EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone population 16 years and over */
 
C23002Be1='Total:'
C23002Be2='Male:'
C23002Be3='16 to 64 years:'
C23002Be4='In labor force:'
C23002Be5='In Armed Forces'
C23002Be6='Civilian:'
C23002Be7='Employed'
C23002Be8='Unemployed'
C23002Be9='Not in labor force'
C23002Be10='65 years and over:'
C23002Be11='In labor force:'
C23002Be12='Employed'
C23002Be13='Unemployed'
C23002Be14='Not in labor force'
C23002Be15='Female:'
C23002Be16='16 to 64 years:'
C23002Be17='In labor force:'
C23002Be18='In Armed Forces'
C23002Be19='Civilian:'
C23002Be20='Employed'
C23002Be21='Unemployed'
C23002Be22='Not in labor force'
C23002Be23='65 years and over:'
C23002Be24='In labor force:'
C23002Be25='Employed'
C23002Be26='Unemployed'
C23002Be27='Not in labor force'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B23001e1
B23001e2
B23001e3
B23001e4
B23001e5
B23001e6
B23001e7
B23001e8
B23001e9
B23001e10
B23001e11
B23001e12
B23001e13
B23001e14
B23001e15
B23001e16
B23001e17
B23001e18
B23001e19
B23001e20
B23001e21
B23001e22
B23001e23
B23001e24
B23001e25
B23001e26
B23001e27
B23001e28
B23001e29
B23001e30
B23001e31
B23001e32
B23001e33
B23001e34
B23001e35
B23001e36
B23001e37
B23001e38
B23001e39
B23001e40
B23001e41
B23001e42
B23001e43
B23001e44
B23001e45
B23001e46
B23001e47
B23001e48
B23001e49
B23001e50
B23001e51
B23001e52
B23001e53
B23001e54
B23001e55
B23001e56
B23001e57
B23001e58
B23001e59
B23001e60
B23001e61
B23001e62
B23001e63
B23001e64
B23001e65
B23001e66
B23001e67
B23001e68
B23001e69
B23001e70
B23001e71
B23001e72
B23001e73
B23001e74
B23001e75
B23001e76
B23001e77
B23001e78
B23001e79
B23001e80
B23001e81
B23001e82
B23001e83
B23001e84
B23001e85
B23001e86
B23001e87
B23001e88
B23001e89
B23001e90
B23001e91
B23001e92
B23001e93
B23001e94
B23001e95
B23001e96
B23001e97
B23001e98
B23001e99
B23001e100
B23001e101
B23001e102
B23001e103
B23001e104
B23001e105
B23001e106
B23001e107
B23001e108
B23001e109
B23001e110
B23001e111
B23001e112
B23001e113
B23001e114
B23001e115
B23001e116
B23001e117
B23001e118
B23001e119
B23001e120
B23001e121
B23001e122
B23001e123
B23001e124
B23001e125
B23001e126
B23001e127
B23001e128
B23001e129
B23001e130
B23001e131
B23001e132
B23001e133
B23001e134
B23001e135
B23001e136
B23001e137
B23001e138
B23001e139
B23001e140
B23001e141
B23001e142
B23001e143
B23001e144
B23001e145
B23001e146
B23001e147
B23001e148
B23001e149
B23001e150
B23001e151
B23001e152
B23001e153
B23001e154
B23001e155
B23001e156
B23001e157
B23001e158
B23001e159
B23001e160
B23001e161
B23001e162
B23001e163
B23001e164
B23001e165
B23001e166
B23001e167
B23001e168
B23001e169
B23001e170
B23001e171
B23001e172
B23001e173
 
C23002Ae1
C23002Ae2
C23002Ae3
C23002Ae4
C23002Ae5
C23002Ae6
C23002Ae7
C23002Ae8
C23002Ae9
C23002Ae10
C23002Ae11
C23002Ae12
C23002Ae13
C23002Ae14
C23002Ae15
C23002Ae16
C23002Ae17
C23002Ae18
C23002Ae19
C23002Ae20
C23002Ae21
C23002Ae22
C23002Ae23
C23002Ae24
C23002Ae25
C23002Ae26
C23002Ae27
 
C23002Be1
C23002Be2
C23002Be3
C23002Be4
C23002Be5
C23002Be6
C23002Be7
C23002Be8
C23002Be9
C23002Be10
C23002Be11
C23002Be12
C23002Be13
C23002Be14
C23002Be15
C23002Be16
C23002Be17
C23002Be18
C23002Be19
C23002Be20
C23002Be21
C23002Be22
C23002Be23
C23002Be24
C23002Be25
C23002Be26
C23002Be27
;
RUN;
TITLE2;
