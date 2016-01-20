TITLE2 "m20125dc0027000";
DATA work.SFm0027dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0027000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*MEANS OF TRANSPORTATION TO WORK BY TIME LEAVING HOME TO GO TO WORK */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08132m1='Total:'
B08132m2='12:00 a.m. to 4:59 a.m.'
B08132m3='5:00 a.m. to 5:29 a.m.'
B08132m4='5:30 a.m. to 5:59 a.m.'
B08132m5='6:00 a.m. to 6:29 a.m.'
B08132m6='6:30 a.m. to 6:59 a.m.'
B08132m7='7:00 a.m. to 7:29 a.m.'
B08132m8='7:30 a.m. to 7:59 a.m.'
B08132m9='8:00 a.m. to 8:29 a.m.'
B08132m10='8:30 a.m. to 8:59 a.m.'
B08132m11='9:00 a.m. to 9:59 a.m.'
B08132m12='10:00 a.m. to 10:59 a.m.'
B08132m13='11:00 a.m. to 11:59 a.m.'
B08132m14='12:00 p.m. to 3:59 p.m.'
B08132m15='4:00 p.m. to 11:59 p.m.'
B08132m16='Car, truck, or van - drove alone:'
B08132m17='12:00 a.m. to 4:59 a.m.'
B08132m18='5:00 a.m. to 5:29 a.m.'
B08132m19='5:30 a.m. to 5:59 a.m.'
B08132m20='6:00 a.m. to 6:29 a.m.'
B08132m21='6:30 a.m. to 6:59 a.m.'
B08132m22='7:00 a.m. to 7:29 a.m.'
B08132m23='7:30 a.m. to 7:59 a.m.'
B08132m24='8:00 a.m. to 8:29 a.m.'
B08132m25='8:30 a.m. to 8:59 a.m.'
B08132m26='9:00 a.m. to 9:59 a.m.'
B08132m27='10:00 a.m. to 10:59 a.m.'
B08132m28='11:00 a.m. to 11:59 a.m.'
B08132m29='12:00 p.m. to 3:59 p.m.'
B08132m30='4:00 p.m. to 11:59 p.m.'
B08132m31='Car, truck, or van - carpooled:'
B08132m32='12:00 a.m. to 4:59 a.m.'
B08132m33='5:00 a.m. to 5:29 a.m.'
B08132m34='5:30 a.m. to 5:59 a.m.'
B08132m35='6:00 a.m. to 6:29 a.m.'
B08132m36='6:30 a.m. to 6:59 a.m.'
B08132m37='7:00 a.m. to 7:29 a.m.'
B08132m38='7:30 a.m. to 7:59 a.m.'
B08132m39='8:00 a.m. to 8:29 a.m.'
B08132m40='8:30 a.m. to 8:59 a.m.'
B08132m41='9:00 a.m. to 9:59 a.m.'
B08132m42='10:00 a.m. to 10:59 a.m.'
B08132m43='11:00 a.m. to 11:59 a.m.'
B08132m44='12:00 p.m. to 3:59 p.m.'
B08132m45='4:00 p.m. to 11:59 p.m.'
B08132m46='Public transportation (excluding taxicab):'
B08132m47='12:00 a.m. to 4:59 a.m.'
B08132m48='5:00 a.m. to 5:29 a.m.'
B08132m49='5:30 a.m. to 5:59 a.m.'
B08132m50='6:00 a.m. to 6:29 a.m.'
B08132m51='6:30 a.m. to 6:59 a.m.'
B08132m52='7:00 a.m. to 7:29 a.m.'
B08132m53='7:30 a.m. to 7:59 a.m.'
B08132m54='8:00 a.m. to 8:29 a.m.'
B08132m55='8:30 a.m. to 8:59 a.m.'
B08132m56='9:00 a.m. to 9:59 a.m.'
B08132m57='10:00 a.m. to 10:59 a.m.'
B08132m58='11:00 a.m. to 11:59 a.m.'
B08132m59='12:00 p.m. to 3:59 p.m.'
B08132m60='4:00 p.m. to 11:59 p.m.'
B08132m61='Walked:'
B08132m62='12:00 a.m. to 4:59 a.m.'
B08132m63='5:00 a.m. to 5:29 a.m.'
B08132m64='5:30 a.m. to 5:59 a.m.'
B08132m65='6:00 a.m. to 6:29 a.m.'
B08132m66='6:30 a.m. to 6:59 a.m.'
B08132m67='7:00 a.m. to 7:29 a.m.'
B08132m68='7:30 a.m. to 7:59 a.m.'
B08132m69='8:00 a.m. to 8:29 a.m.'
B08132m70='8:30 a.m. to 8:59 a.m.'
B08132m71='9:00 a.m. to 9:59 a.m.'
B08132m72='10:00 a.m. to 10:59 a.m.'
B08132m73='11:00 a.m. to 11:59 a.m.'
B08132m74='12:00 p.m. to 3:59 p.m.'
B08132m75='4:00 p.m. to 11:59 p.m.'
B08132m76='Taxicab, motorcycle, bicycle, or other means:'
B08132m77='12:00 a.m. to 4:59 a.m.'
B08132m78='5:00 a.m. to 5:29 a.m.'
B08132m79='5:30 a.m. to 5:59 a.m.'
B08132m80='6:00 a.m. to 6:29 a.m.'
B08132m81='6:30 a.m. to 6:59 a.m.'
B08132m82='7:00 a.m. to 7:29 a.m.'
B08132m83='7:30 a.m. to 7:59 a.m.'
B08132m84='8:00 a.m. to 8:29 a.m.'
B08132m85='8:30 a.m. to 8:59 a.m.'
B08132m86='9:00 a.m. to 9:59 a.m.'
B08132m87='10:00 a.m. to 10:59 a.m.'
B08132m88='11:00 a.m. to 11:59 a.m.'
B08132m89='12:00 p.m. to 3:59 p.m.'
B08132m90='4:00 p.m. to 11:59 p.m.'
/*AGGREGATE TRAVEL TIME TO WORK (IN MINUTES) OF WORKERS BY TIME LEAVING HOME TO GO TO WORK */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08133m1='Aggregate travel time to work (in minutes):'
B08133m2='12:00 a.m. to 4:59 a.m.'
B08133m3='5:00 a.m. to 5:29 a.m.'
B08133m4='5:30 a.m. to 5:59 a.m.'
B08133m5='6:00 a.m. to 6:29 a.m.'
B08133m6='6:30 a.m. to 6:59 a.m.'
B08133m7='7:00 a.m. to 7:29 a.m.'
B08133m8='7:30 a.m. to 7:59 a.m.'
B08133m9='8:00 a.m. to 8:29 a.m.'
B08133m10='8:30 a.m. to 8:59 a.m.'
B08133m11='9:00 a.m. to 9:59 a.m.'
B08133m12='10:00 a.m. to 10:59 a.m.'
B08133m13='11:00 a.m. to 11:59 a.m.'
B08133m14='12:00 p.m. to 3:59 p.m.'
B08133m15='4:00 p.m. to 11:59 p.m.'
/*MEANS OF TRANSPORTATION TO WORK BY TRAVEL TIME TO WORK */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08134m1='Total:'
B08134m2='Less than 10 minutes'
B08134m3='10 to 14 minutes'
B08134m4='15 to 19 minutes'
B08134m5='20 to 24 minutes'
B08134m6='25 to 29 minutes'
B08134m7='30 to 34 minutes'
B08134m8='35 to 44 minutes'
B08134m9='45 to 59 minutes'
B08134m10='60 or more minutes'
B08134m11='Car, truck, or van:'
B08134m12='Less than 10 minutes'
B08134m13='10 to 14 minutes'
B08134m14='15 to 19 minutes'
B08134m15='20 to 24 minutes'
B08134m16='25 to 29 minutes'
B08134m17='30 to 34 minutes'
B08134m18='35 to 44 minutes'
B08134m19='45 to 59 minutes'
B08134m20='60 or more minutes'
B08134m21='Drove alone:'
B08134m22='Less than 10 minutes'
B08134m23='10 to 14 minutes'
B08134m24='15 to 19 minutes'
B08134m25='20 to 24 minutes'
B08134m26='25 to 29 minutes'
B08134m27='30 to 34 minutes'
B08134m28='35 to 44 minutes'
B08134m29='45 to 59 minutes'
B08134m30='60 or more minutes'
B08134m31='Carpooled:'
B08134m32='Less than 10 minutes'
B08134m33='10 to 14 minutes'
B08134m34='15 to 19 minutes'
B08134m35='20 to 24 minutes'
B08134m36='25 to 29 minutes'
B08134m37='30 to 34 minutes'
B08134m38='35 to 44 minutes'
B08134m39='45 to 59 minutes'
B08134m40='60 or more minutes'
B08134m41='In 2-person carpool:'
B08134m42='Less than 10 minutes'
B08134m43='10 to 14 minutes'
B08134m44='15 to 19 minutes'
B08134m45='20 to 24 minutes'
B08134m46='25 to 29 minutes'
B08134m47='30 to 34 minutes'
B08134m48='35 to 44 minutes'
B08134m49='45 to 59 minutes'
B08134m50='60 or more minutes'
B08134m51='In 3-or-more-person carpool:'
B08134m52='Less than 10 minutes'
B08134m53='10 to 14 minutes'
B08134m54='15 to 19 minutes'
B08134m55='20 to 24 minutes'
B08134m56='25 to 29 minutes'
B08134m57='30 to 34 minutes'
B08134m58='35 to 44 minutes'
B08134m59='45 to 59 minutes'
B08134m60='60 or more minutes'
B08134m61='Public transportation (excluding taxicab):'
B08134m62='Less than 10 minutes'
B08134m63='10 to 14 minutes'
B08134m64='15 to 19 minutes'
B08134m65='20 to 24 minutes'
B08134m66='25 to 29 minutes'
B08134m67='30 to 34 minutes'
B08134m68='35 to 44 minutes'
B08134m69='45 to 59 minutes'
B08134m70='60 or more minutes'
B08134m71='Bus or trolley bus:'
B08134m72='Less than 10 minutes'
B08134m73='10 to 14 minutes'
B08134m74='15 to 19 minutes'
B08134m75='20 to 24 minutes'
B08134m76='25 to 29 minutes'
B08134m77='30 to 34 minutes'
B08134m78='35 to 44 minutes'
B08134m79='45 to 59 minutes'
B08134m80='60 or more minutes'
B08134m81='Streetcar or trolley car (carro publico in Puerto Rico), subway or elevated:'
B08134m82='Less than 10 minutes'
B08134m83='10 to 14 minutes'
B08134m84='15 to 19 minutes'
B08134m85='20 to 24 minutes'
B08134m86='25 to 29 minutes'
B08134m87='30 to 34 minutes'
B08134m88='35 to 44 minutes'
B08134m89='45 to 59 minutes'
B08134m90='60 or more minutes'
B08134m91='Railroad or ferryboat:'
B08134m92='Less than 10 minutes'
B08134m93='10 to 14 minutes'
B08134m94='15 to 19 minutes'
B08134m95='20 to 24 minutes'
B08134m96='25 to 29 minutes'
B08134m97='30 to 34 minutes'
B08134m98='35 to 44 minutes'
B08134m99='45 to 59 minutes'
B08134m100='60 or more minutes'
B08134m101='Walked:'
B08134m102='Less than 10 minutes'
B08134m103='10 to 14 minutes'
B08134m104='15 to 19 minutes'
B08134m105='20 to 24 minutes'
B08134m106='25 to 29 minutes'
B08134m107='30 to 34 minutes'
B08134m108='35 to 44 minutes'
B08134m109='45 to 59 minutes'
B08134m110='60 or more minutes'
B08134m111='Taxicab, motorcycle, bicycle, or other means:'
B08134m112='Less than 10 minutes'
B08134m113='10 to 14 minutes'
B08134m114='15 to 19 minutes'
B08134m115='20 to 24 minutes'
B08134m116='25 to 29 minutes'
B08134m117='30 to 34 minutes'
B08134m118='35 to 44 minutes'
B08134m119='45 to 59 minutes'
B08134m120='60 or more minutes'
/*AGGREGATE TRAVEL TIME TO WORK (IN MINUTES) OF WORKERS BY TRAVEL TIME TO WORK */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08135m1='Aggregate travel time to work (in minutes):'
B08135m2='Less than 10 minutes'
B08135m3='10 to 14 minutes'
B08135m4='15 to 19 minutes'
B08135m5='20 to 24 minutes'
B08135m6='25 to 29 minutes'
B08135m7='30 to 34 minutes'
B08135m8='35 to 44 minutes'
B08135m9='45 to 59 minutes'
B08135m10='60 or more minutes'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B08132m1
B08132m2
B08132m3
B08132m4
B08132m5
B08132m6
B08132m7
B08132m8
B08132m9
B08132m10
B08132m11
B08132m12
B08132m13
B08132m14
B08132m15
B08132m16
B08132m17
B08132m18
B08132m19
B08132m20
B08132m21
B08132m22
B08132m23
B08132m24
B08132m25
B08132m26
B08132m27
B08132m28
B08132m29
B08132m30
B08132m31
B08132m32
B08132m33
B08132m34
B08132m35
B08132m36
B08132m37
B08132m38
B08132m39
B08132m40
B08132m41
B08132m42
B08132m43
B08132m44
B08132m45
B08132m46
B08132m47
B08132m48
B08132m49
B08132m50
B08132m51
B08132m52
B08132m53
B08132m54
B08132m55
B08132m56
B08132m57
B08132m58
B08132m59
B08132m60
B08132m61
B08132m62
B08132m63
B08132m64
B08132m65
B08132m66
B08132m67
B08132m68
B08132m69
B08132m70
B08132m71
B08132m72
B08132m73
B08132m74
B08132m75
B08132m76
B08132m77
B08132m78
B08132m79
B08132m80
B08132m81
B08132m82
B08132m83
B08132m84
B08132m85
B08132m86
B08132m87
B08132m88
B08132m89
B08132m90
 
B08133m1
B08133m2
B08133m3
B08133m4
B08133m5
B08133m6
B08133m7
B08133m8
B08133m9
B08133m10
B08133m11
B08133m12
B08133m13
B08133m14
B08133m15
 
B08134m1
B08134m2
B08134m3
B08134m4
B08134m5
B08134m6
B08134m7
B08134m8
B08134m9
B08134m10
B08134m11
B08134m12
B08134m13
B08134m14
B08134m15
B08134m16
B08134m17
B08134m18
B08134m19
B08134m20
B08134m21
B08134m22
B08134m23
B08134m24
B08134m25
B08134m26
B08134m27
B08134m28
B08134m29
B08134m30
B08134m31
B08134m32
B08134m33
B08134m34
B08134m35
B08134m36
B08134m37
B08134m38
B08134m39
B08134m40
B08134m41
B08134m42
B08134m43
B08134m44
B08134m45
B08134m46
B08134m47
B08134m48
B08134m49
B08134m50
B08134m51
B08134m52
B08134m53
B08134m54
B08134m55
B08134m56
B08134m57
B08134m58
B08134m59
B08134m60
B08134m61
B08134m62
B08134m63
B08134m64
B08134m65
B08134m66
B08134m67
B08134m68
B08134m69
B08134m70
B08134m71
B08134m72
B08134m73
B08134m74
B08134m75
B08134m76
B08134m77
B08134m78
B08134m79
B08134m80
B08134m81
B08134m82
B08134m83
B08134m84
B08134m85
B08134m86
B08134m87
B08134m88
B08134m89
B08134m90
B08134m91
B08134m92
B08134m93
B08134m94
B08134m95
B08134m96
B08134m97
B08134m98
B08134m99
B08134m100
B08134m101
B08134m102
B08134m103
B08134m104
B08134m105
B08134m106
B08134m107
B08134m108
B08134m109
B08134m110
B08134m111
B08134m112
B08134m113
B08134m114
B08134m115
B08134m116
B08134m117
B08134m118
B08134m119
B08134m120
 
B08135m1
B08135m2
B08135m3
B08135m4
B08135m5
B08135m6
B08135m7
B08135m8
B08135m9
B08135m10
;
RUN;
TITLE2;
