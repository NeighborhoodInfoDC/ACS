TITLE2 "m20115dc0072000";
DATA work.SFm0072dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0072000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*SEX BY AGE BY EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER */
/*Universe:  Population 16 years and over */
 
B23001m1='Total:'
B23001m2='Male:'
B23001m3='16 to 19 years:'
B23001m4='In labor force:'
B23001m5='In Armed Forces'
B23001m6='Civilian:'
B23001m7='Employed'
B23001m8='Unemployed'
B23001m9='Not in labor force'
B23001m10='20 and 21 years:'
B23001m11='In labor force:'
B23001m12='In Armed Forces'
B23001m13='Civilian:'
B23001m14='Employed'
B23001m15='Unemployed'
B23001m16='Not in labor force'
B23001m17='22 to 24 years:'
B23001m18='In labor force:'
B23001m19='In Armed Forces'
B23001m20='Civilian:'
B23001m21='Employed'
B23001m22='Unemployed'
B23001m23='Not in labor force'
B23001m24='25 to 29 years:'
B23001m25='In labor force:'
B23001m26='In Armed Forces'
B23001m27='Civilian:'
B23001m28='Employed'
B23001m29='Unemployed'
B23001m30='Not in labor force'
B23001m31='30 to 34 years:'
B23001m32='In labor force:'
B23001m33='In Armed Forces'
B23001m34='Civilian:'
B23001m35='Employed'
B23001m36='Unemployed'
B23001m37='Not in labor force'
B23001m38='35 to 44 years:'
B23001m39='In labor force:'
B23001m40='In Armed Forces'
B23001m41='Civilian:'
B23001m42='Employed'
B23001m43='Unemployed'
B23001m44='Not in labor force'
B23001m45='45 to 54 years:'
B23001m46='In labor force:'
B23001m47='In Armed Forces'
B23001m48='Civilian:'
B23001m49='Employed'
B23001m50='Unemployed'
B23001m51='Not in labor force'
B23001m52='55 to 59 years:'
B23001m53='In labor force:'
B23001m54='In Armed Forces'
B23001m55='Civilian:'
B23001m56='Employed'
B23001m57='Unemployed'
B23001m58='Not in labor force'
B23001m59='60 and 61 years:'
B23001m60='In labor force:'
B23001m61='In Armed Forces'
B23001m62='Civilian:'
B23001m63='Employed'
B23001m64='Unemployed'
B23001m65='Not in labor force'
B23001m66='62 to 64 years:'
B23001m67='In labor force:'
B23001m68='In Armed Forces'
B23001m69='Civilian:'
B23001m70='Employed'
B23001m71='Unemployed'
B23001m72='Not in labor force'
B23001m73='65 to 69 years:'
B23001m74='In labor force:'
B23001m75='Employed'
B23001m76='Unemployed'
B23001m77='Not in labor force'
B23001m78='70 to 74 years:'
B23001m79='In labor force:'
B23001m80='Employed'
B23001m81='Unemployed'
B23001m82='Not in labor force'
B23001m83='75 years and over:'
B23001m84='In labor force:'
B23001m85='Employed'
B23001m86='Unemployed'
B23001m87='Not in labor force'
B23001m88='Female:'
B23001m89='16 to 19 years:'
B23001m90='In labor force:'
B23001m91='In Armed Forces'
B23001m92='Civilian:'
B23001m93='Employed'
B23001m94='Unemployed'
B23001m95='Not in labor force'
B23001m96='20 and 21 years:'
B23001m97='In labor force:'
B23001m98='In Armed Forces'
B23001m99='Civilian:'
B23001m100='Employed'
B23001m101='Unemployed'
B23001m102='Not in labor force'
B23001m103='22 to 24 years:'
B23001m104='In labor force:'
B23001m105='In Armed Forces'
B23001m106='Civilian:'
B23001m107='Employed'
B23001m108='Unemployed'
B23001m109='Not in labor force'
B23001m110='25 to 29 years:'
B23001m111='In labor force:'
B23001m112='In Armed Forces'
B23001m113='Civilian:'
B23001m114='Employed'
B23001m115='Unemployed'
B23001m116='Not in labor force'
B23001m117='30 to 34 years:'
B23001m118='In labor force:'
B23001m119='In Armed Forces'
B23001m120='Civilian:'
B23001m121='Employed'
B23001m122='Unemployed'
B23001m123='Not in labor force'
B23001m124='35 to 44 years:'
B23001m125='In labor force:'
B23001m126='In Armed Forces'
B23001m127='Civilian:'
B23001m128='Employed'
B23001m129='Unemployed'
B23001m130='Not in labor force'
B23001m131='45 to 54 years:'
B23001m132='In labor force:'
B23001m133='In Armed Forces'
B23001m134='Civilian:'
B23001m135='Employed'
B23001m136='Unemployed'
B23001m137='Not in labor force'
B23001m138='55 to 59 years:'
B23001m139='In labor force:'
B23001m140='In Armed Forces'
B23001m141='Civilian:'
B23001m142='Employed'
B23001m143='Unemployed'
B23001m144='Not in labor force'
B23001m145='60 and 61 years:'
B23001m146='In labor force:'
B23001m147='In Armed Forces'
B23001m148='Civilian:'
B23001m149='Employed'
B23001m150='Unemployed'
B23001m151='Not in labor force'
B23001m152='62 to 64 years:'
B23001m153='In labor force:'
B23001m154='In Armed Forces'
B23001m155='Civilian:'
B23001m156='Employed'
B23001m157='Unemployed'
B23001m158='Not in labor force'
B23001m159='65 to 69 years:'
B23001m160='In labor force:'
B23001m161='Employed'
B23001m162='Unemployed'
B23001m163='Not in labor force'
B23001m164='70 to 74 years:'
B23001m165='In labor force:'
B23001m166='Employed'
B23001m167='Unemployed'
B23001m168='Not in labor force'
B23001m169='75 years and over:'
B23001m170='In labor force:'
B23001m171='Employed'
B23001m172='Unemployed'
B23001m173='Not in labor force'
 
/*SEX BY AGE BY EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER (WHITE ALONE) */
/*Universe:  White alone population 16 years and over */
 
C23002Am1='Total:'
C23002Am2='Male:'
C23002Am3='16 to 64 years:'
C23002Am4='In labor force:'
C23002Am5='In Armed Forces'
C23002Am6='Civilian:'
C23002Am7='Employed'
C23002Am8='Unemployed'
C23002Am9='Not in labor force'
C23002Am10='65 years and over:'
C23002Am11='In labor force:'
C23002Am12='Employed'
C23002Am13='Unemployed'
C23002Am14='Not in labor force'
C23002Am15='Female:'
C23002Am16='16 to 64 years:'
C23002Am17='In labor force:'
C23002Am18='In Armed Forces'
C23002Am19='Civilian:'
C23002Am20='Employed'
C23002Am21='Unemployed'
C23002Am22='Not in labor force'
C23002Am23='65 years and over:'
C23002Am24='In labor force:'
C23002Am25='Employed'
C23002Am26='Unemployed'
C23002Am27='Not in labor force'
 
/*SEX BY AGE BY EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone population 16 years and over */
 
C23002Bm1='Total:'
C23002Bm2='Male:'
C23002Bm3='16 to 64 years:'
C23002Bm4='In labor force:'
C23002Bm5='In Armed Forces'
C23002Bm6='Civilian:'
C23002Bm7='Employed'
C23002Bm8='Unemployed'
C23002Bm9='Not in labor force'
C23002Bm10='65 years and over:'
C23002Bm11='In labor force:'
C23002Bm12='Employed'
C23002Bm13='Unemployed'
C23002Bm14='Not in labor force'
C23002Bm15='Female:'
C23002Bm16='16 to 64 years:'
C23002Bm17='In labor force:'
C23002Bm18='In Armed Forces'
C23002Bm19='Civilian:'
C23002Bm20='Employed'
C23002Bm21='Unemployed'
C23002Bm22='Not in labor force'
C23002Bm23='65 years and over:'
C23002Bm24='In labor force:'
C23002Bm25='Employed'
C23002Bm26='Unemployed'
C23002Bm27='Not in labor force'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B23001m1
B23001m2
B23001m3
B23001m4
B23001m5
B23001m6
B23001m7
B23001m8
B23001m9
B23001m10
B23001m11
B23001m12
B23001m13
B23001m14
B23001m15
B23001m16
B23001m17
B23001m18
B23001m19
B23001m20
B23001m21
B23001m22
B23001m23
B23001m24
B23001m25
B23001m26
B23001m27
B23001m28
B23001m29
B23001m30
B23001m31
B23001m32
B23001m33
B23001m34
B23001m35
B23001m36
B23001m37
B23001m38
B23001m39
B23001m40
B23001m41
B23001m42
B23001m43
B23001m44
B23001m45
B23001m46
B23001m47
B23001m48
B23001m49
B23001m50
B23001m51
B23001m52
B23001m53
B23001m54
B23001m55
B23001m56
B23001m57
B23001m58
B23001m59
B23001m60
B23001m61
B23001m62
B23001m63
B23001m64
B23001m65
B23001m66
B23001m67
B23001m68
B23001m69
B23001m70
B23001m71
B23001m72
B23001m73
B23001m74
B23001m75
B23001m76
B23001m77
B23001m78
B23001m79
B23001m80
B23001m81
B23001m82
B23001m83
B23001m84
B23001m85
B23001m86
B23001m87
B23001m88
B23001m89
B23001m90
B23001m91
B23001m92
B23001m93
B23001m94
B23001m95
B23001m96
B23001m97
B23001m98
B23001m99
B23001m100
B23001m101
B23001m102
B23001m103
B23001m104
B23001m105
B23001m106
B23001m107
B23001m108
B23001m109
B23001m110
B23001m111
B23001m112
B23001m113
B23001m114
B23001m115
B23001m116
B23001m117
B23001m118
B23001m119
B23001m120
B23001m121
B23001m122
B23001m123
B23001m124
B23001m125
B23001m126
B23001m127
B23001m128
B23001m129
B23001m130
B23001m131
B23001m132
B23001m133
B23001m134
B23001m135
B23001m136
B23001m137
B23001m138
B23001m139
B23001m140
B23001m141
B23001m142
B23001m143
B23001m144
B23001m145
B23001m146
B23001m147
B23001m148
B23001m149
B23001m150
B23001m151
B23001m152
B23001m153
B23001m154
B23001m155
B23001m156
B23001m157
B23001m158
B23001m159
B23001m160
B23001m161
B23001m162
B23001m163
B23001m164
B23001m165
B23001m166
B23001m167
B23001m168
B23001m169
B23001m170
B23001m171
B23001m172
B23001m173
 
C23002Am1
C23002Am2
C23002Am3
C23002Am4
C23002Am5
C23002Am6
C23002Am7
C23002Am8
C23002Am9
C23002Am10
C23002Am11
C23002Am12
C23002Am13
C23002Am14
C23002Am15
C23002Am16
C23002Am17
C23002Am18
C23002Am19
C23002Am20
C23002Am21
C23002Am22
C23002Am23
C23002Am24
C23002Am25
C23002Am26
C23002Am27
 
C23002Bm1
C23002Bm2
C23002Bm3
C23002Bm4
C23002Bm5
C23002Bm6
C23002Bm7
C23002Bm8
C23002Bm9
C23002Bm10
C23002Bm11
C23002Bm12
C23002Bm13
C23002Bm14
C23002Bm15
C23002Bm16
C23002Bm17
C23002Bm18
C23002Bm19
C23002Bm20
C23002Bm21
C23002Bm22
C23002Bm23
C23002Bm24
C23002Bm25
C23002Bm26
C23002Bm27
;
RUN;
TITLE2;
