TITLE2 "m20125dc0032000";
DATA work.SFm0032dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0032000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*MEANS OF TRANSPORTATION TO WORK BY TIME ARRIVING AT WORK FROM HOME FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08532m1='Total:'
B08532m2='12:00 a.m. to 4:59 a.m.'
B08532m3='5:00 a.m. to 5:29 a.m.'
B08532m4='5:30 a.m. to 5:59 a.m.'
B08532m5='6:00 a.m. to 6:29 a.m.'
B08532m6='6:30 a.m. to 6:59 a.m.'
B08532m7='7:00 a.m. to 7:29 a.m.'
B08532m8='7:30 a.m. to 7:59 a.m.'
B08532m9='8:00 a.m. to 8:29 a.m.'
B08532m10='8:30 a.m. to 8:59 a.m.'
B08532m11='9:00 a.m. to 9:59 a.m.'
B08532m12='10:00 a.m. to 10:59 a.m.'
B08532m13='11:00 a.m. to 11:59 a.m.'
B08532m14='12:00 p.m. to 3:59 p.m.'
B08532m15='4:00 p.m. to 11:59 p.m.'
B08532m16='Car, truck, or van - drove alone:'
B08532m17='12:00 a.m. to 4:59 a.m.'
B08532m18='5:00 a.m. to 5:29 a.m.'
B08532m19='5:30 a.m. to 5:59 a.m.'
B08532m20='6:00 a.m. to 6:29 a.m.'
B08532m21='6:30 a.m. to 6:59 a.m.'
B08532m22='7:00 a.m. to 7:29 a.m.'
B08532m23='7:30 a.m. to 7:59 a.m.'
B08532m24='8:00 a.m. to 8:29 a.m.'
B08532m25='8:30 a.m. to 8:59 a.m.'
B08532m26='9:00 a.m. to 9:59 a.m.'
B08532m27='10:00 a.m. to 10:59 a.m.'
B08532m28='11:00 a.m. to 11:59 a.m.'
B08532m29='12:00 p.m. to 3:59 p.m.'
B08532m30='4:00 p.m. to 11:59 p.m.'
B08532m31='Car, truck, or van - carpooled:'
B08532m32='12:00 a.m. to 4:59 a.m.'
B08532m33='5:00 a.m. to 5:29 a.m.'
B08532m34='5:30 a.m. to 5:59 a.m.'
B08532m35='6:00 a.m. to 6:29 a.m.'
B08532m36='6:30 a.m. to 6:59 a.m.'
B08532m37='7:00 a.m. to 7:29 a.m.'
B08532m38='7:30 a.m. to 7:59 a.m.'
B08532m39='8:00 a.m. to 8:29 a.m.'
B08532m40='8:30 a.m. to 8:59 a.m.'
B08532m41='9:00 a.m. to 9:59 a.m.'
B08532m42='10:00 a.m. to 10:59 a.m.'
B08532m43='11:00 a.m. to 11:59 a.m.'
B08532m44='12:00 p.m. to 3:59 p.m.'
B08532m45='4:00 p.m. to 11:59 p.m.'
B08532m46='Public transportation (excluding taxicab):'
B08532m47='12:00 a.m. to 4:59 a.m.'
B08532m48='5:00 a.m. to 5:29 a.m.'
B08532m49='5:30 a.m. to 5:59 a.m.'
B08532m50='6:00 a.m. to 6:29 a.m.'
B08532m51='6:30 a.m. to 6:59 a.m.'
B08532m52='7:00 a.m. to 7:29 a.m.'
B08532m53='7:30 a.m. to 7:59 a.m.'
B08532m54='8:00 a.m. to 8:29 a.m.'
B08532m55='8:30 a.m. to 8:59 a.m.'
B08532m56='9:00 a.m. to 9:59 a.m.'
B08532m57='10:00 a.m. to 10:59 a.m.'
B08532m58='11:00 a.m. to 11:59 a.m.'
B08532m59='12:00 p.m. to 3:59 p.m.'
B08532m60='4:00 p.m. to 11:59 p.m.'
B08532m61='Walked:'
B08532m62='12:00 a.m. to 4:59 a.m.'
B08532m63='5:00 a.m. to 5:29 a.m.'
B08532m64='5:30 a.m. to 5:59 a.m.'
B08532m65='6:00 a.m. to 6:29 a.m.'
B08532m66='6:30 a.m. to 6:59 a.m.'
B08532m67='7:00 a.m. to 7:29 a.m.'
B08532m68='7:30 a.m. to 7:59 a.m.'
B08532m69='8:00 a.m. to 8:29 a.m.'
B08532m70='8:30 a.m. to 8:59 a.m.'
B08532m71='9:00 a.m. to 9:59 a.m.'
B08532m72='10:00 a.m. to 10:59 a.m.'
B08532m73='11:00 a.m. to 11:59 a.m.'
B08532m74='12:00 p.m. to 3:59 p.m.'
B08532m75='4:00 p.m. to 11:59 p.m.'
B08532m76='Taxicab, motorcycle, bicycle, or other means:'
B08532m77='12:00 a.m. to 4:59 a.m.'
B08532m78='5:00 a.m. to 5:29 a.m.'
B08532m79='5:30 a.m. to 5:59 a.m.'
B08532m80='6:00 a.m. to 6:29 a.m.'
B08532m81='6:30 a.m. to 6:59 a.m.'
B08532m82='7:00 a.m. to 7:29 a.m.'
B08532m83='7:30 a.m. to 7:59 a.m.'
B08532m84='8:00 a.m. to 8:29 a.m.'
B08532m85='8:30 a.m. to 8:59 a.m.'
B08532m86='9:00 a.m. to 9:59 a.m.'
B08532m87='10:00 a.m. to 10:59 a.m.'
B08532m88='11:00 a.m. to 11:59 a.m.'
B08532m89='12:00 p.m. to 3:59 p.m.'
B08532m90='4:00 p.m. to 11:59 p.m.'
/*MEANS OF TRANSPORTATION TO WORK BY TRAVEL TIME TO WORK FOR WORKPLACE GEOGRAPHY */
/*Universe: Workers 16 years and over who did not work at home */
 
B08534m1='Total:'
B08534m2='Less than 10 minutes'
B08534m3='10 to 14 minutes'
B08534m4='15 to 19 minutes'
B08534m5='20 to 24 minutes'
B08534m6='25 to 29 minutes'
B08534m7='30 to 34 minutes'
B08534m8='35 to 44 minutes'
B08534m9='45 to 59 minutes'
B08534m10='60 or more minutes'
B08534m11='Car, truck, or van:'
B08534m12='Less than 10 minutes'
B08534m13='10 to 14 minutes'
B08534m14='15 to 19 minutes'
B08534m15='20 to 24 minutes'
B08534m16='25 to 29 minutes'
B08534m17='30 to 34 minutes'
B08534m18='35 to 44 minutes'
B08534m19='45 to 59 minutes'
B08534m20='60 or more minutes'
B08534m21='Drove alone:'
B08534m22='Less than 10 minutes'
B08534m23='10 to 14 minutes'
B08534m24='15 to 19 minutes'
B08534m25='20 to 24 minutes'
B08534m26='25 to 29 minutes'
B08534m27='30 to 34 minutes'
B08534m28='35 to 44 minutes'
B08534m29='45 to 59 minutes'
B08534m30='60 or more minutes'
B08534m31='Carpooled:'
B08534m32='Less than 10 minutes'
B08534m33='10 to 14 minutes'
B08534m34='15 to 19 minutes'
B08534m35='20 to 24 minutes'
B08534m36='25 to 29 minutes'
B08534m37='30 to 34 minutes'
B08534m38='35 to 44 minutes'
B08534m39='45 to 59 minutes'
B08534m40='60 or more minutes'
B08534m41='In 2-person carpool:'
B08534m42='Less than 10 minutes'
B08534m43='10 to 14 minutes'
B08534m44='15 to 19 minutes'
B08534m45='20 to 24 minutes'
B08534m46='25 to 29 minutes'
B08534m47='30 to 34 minutes'
B08534m48='35 to 44 minutes'
B08534m49='45 to 59 minutes'
B08534m50='60 or more minutes'
B08534m51='In 3-or-more-person carpool:'
B08534m52='Less than 10 minutes'
B08534m53='10 to 14 minutes'
B08534m54='15 to 19 minutes'
B08534m55='20 to 24 minutes'
B08534m56='25 to 29 minutes'
B08534m57='30 to 34 minutes'
B08534m58='35 to 44 minutes'
B08534m59='45 to 59 minutes'
B08534m60='60 or more minutes'
B08534m61='Public transportation (excluding taxicab):'
B08534m62='Less than 10 minutes'
B08534m63='10 to 14 minutes'
B08534m64='15 to 19 minutes'
B08534m65='20 to 24 minutes'
B08534m66='25 to 29 minutes'
B08534m67='30 to 34 minutes'
B08534m68='35 to 44 minutes'
B08534m69='45 to 59 minutes'
B08534m70='60 or more minutes'
B08534m71='Bus or trolley bus:'
B08534m72='Less than 10 minutes'
B08534m73='10 to 14 minutes'
B08534m74='15 to 19 minutes'
B08534m75='20 to 24 minutes'
B08534m76='25 to 29 minutes'
B08534m77='30 to 34 minutes'
B08534m78='35 to 44 minutes'
B08534m79='45 to 59 minutes'
B08534m80='60 or more minutes'
B08534m81='Streetcar or trolley car (carro publico in Puerto Rico), subway or elevated:'
B08534m82='Less than 10 minutes'
B08534m83='10 to 14 minutes'
B08534m84='15 to 19 minutes'
B08534m85='20 to 24 minutes'
B08534m86='25 to 29 minutes'
B08534m87='30 to 34 minutes'
B08534m88='35 to 44 minutes'
B08534m89='45 to 59 minutes'
B08534m90='60 or more minutes'
B08534m91='Railroad or ferryboat:'
B08534m92='Less than 10 minutes'
B08534m93='10 to 14 minutes'
B08534m94='15 to 19 minutes'
B08534m95='20 to 24 minutes'
B08534m96='25 to 29 minutes'
B08534m97='30 to 34 minutes'
B08534m98='35 to 44 minutes'
B08534m99='45 to 59 minutes'
B08534m100='60 or more minutes'
B08534m101='Walked:'
B08534m102='Less than 10 minutes'
B08534m103='10 to 14 minutes'
B08534m104='15 to 19 minutes'
B08534m105='20 to 24 minutes'
B08534m106='25 to 29 minutes'
B08534m107='30 to 34 minutes'
B08534m108='35 to 44 minutes'
B08534m109='45 to 59 minutes'
B08534m110='60 or more minutes'
B08534m111='Taxicab, motorcycle, bicycle, or other means:'
B08534m112='Less than 10 minutes'
B08534m113='10 to 14 minutes'
B08534m114='15 to 19 minutes'
B08534m115='20 to 24 minutes'
B08534m116='25 to 29 minutes'
B08534m117='30 to 34 minutes'
B08534m118='35 to 44 minutes'
B08534m119='45 to 59 minutes'
B08534m120='60 or more minutes'
/*AGGREGATE TRAVEL TIME TO WORK (IN MINUTES) OF WORKERS BY MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08536m1='Aggregate travel time to work (in minutes):'
B08536m2='Car, truck, or van:'
B08536m3='Drove alone'
B08536m4='Carpooled:'
B08536m5='In 2-person carpool'
B08536m6='In 3-or-more-person carpool'
B08536m7='Public transportation (excluding taxicab):'
B08536m8='Bus or trolley bus'
B08536m9='Streetcar or trolley car (carro publico in Puerto Rico), subway or elevated'
B08536m10='Railroad or ferryboat'
B08536m11='Walked'
B08536m12='Taxicab, motorcycle, bicycle, or other means'
/*MEANS OF TRANSPORTATION TO WORK BY TENURE FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over in households */
 
B08537m1='Total:'
B08537m2='Householder lived in owner-occupied housing units'
B08537m3='Householder lived in renter-occupied housing units'
B08537m4='Car, truck, or van - drove alone:'
B08537m5='Householder lived in owner-occupied housing units'
B08537m6='Householder lived in renter-occupied housing units'
B08537m7='Car, truck, or van - carpooled:'
B08537m8='Householder lived in owner-occupied housing units'
B08537m9='Householder lived in renter-occupied housing units'
B08537m10='Public transportation (excluding taxicab):'
B08537m11='Householder lived in owner-occupied housing units'
B08537m12='Householder lived in renter-occupied housing units'
B08537m13='Walked:'
B08537m14='Householder lived in owner-occupied housing units'
B08537m15='Householder lived in renter-occupied housing units'
B08537m16='Taxicab, motorcycle, bicycle, or other means:'
B08537m17='Householder lived in owner-occupied housing units'
B08537m18='Householder lived in renter-occupied housing units'
B08537m19='Worked at home:'
B08537m20='Householder lived in owner-occupied housing units'
B08537m21='Householder lived in renter-occupied housing units'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B08532m1
B08532m2
B08532m3
B08532m4
B08532m5
B08532m6
B08532m7
B08532m8
B08532m9
B08532m10
B08532m11
B08532m12
B08532m13
B08532m14
B08532m15
B08532m16
B08532m17
B08532m18
B08532m19
B08532m20
B08532m21
B08532m22
B08532m23
B08532m24
B08532m25
B08532m26
B08532m27
B08532m28
B08532m29
B08532m30
B08532m31
B08532m32
B08532m33
B08532m34
B08532m35
B08532m36
B08532m37
B08532m38
B08532m39
B08532m40
B08532m41
B08532m42
B08532m43
B08532m44
B08532m45
B08532m46
B08532m47
B08532m48
B08532m49
B08532m50
B08532m51
B08532m52
B08532m53
B08532m54
B08532m55
B08532m56
B08532m57
B08532m58
B08532m59
B08532m60
B08532m61
B08532m62
B08532m63
B08532m64
B08532m65
B08532m66
B08532m67
B08532m68
B08532m69
B08532m70
B08532m71
B08532m72
B08532m73
B08532m74
B08532m75
B08532m76
B08532m77
B08532m78
B08532m79
B08532m80
B08532m81
B08532m82
B08532m83
B08532m84
B08532m85
B08532m86
B08532m87
B08532m88
B08532m89
B08532m90
 
B08534m1
B08534m2
B08534m3
B08534m4
B08534m5
B08534m6
B08534m7
B08534m8
B08534m9
B08534m10
B08534m11
B08534m12
B08534m13
B08534m14
B08534m15
B08534m16
B08534m17
B08534m18
B08534m19
B08534m20
B08534m21
B08534m22
B08534m23
B08534m24
B08534m25
B08534m26
B08534m27
B08534m28
B08534m29
B08534m30
B08534m31
B08534m32
B08534m33
B08534m34
B08534m35
B08534m36
B08534m37
B08534m38
B08534m39
B08534m40
B08534m41
B08534m42
B08534m43
B08534m44
B08534m45
B08534m46
B08534m47
B08534m48
B08534m49
B08534m50
B08534m51
B08534m52
B08534m53
B08534m54
B08534m55
B08534m56
B08534m57
B08534m58
B08534m59
B08534m60
B08534m61
B08534m62
B08534m63
B08534m64
B08534m65
B08534m66
B08534m67
B08534m68
B08534m69
B08534m70
B08534m71
B08534m72
B08534m73
B08534m74
B08534m75
B08534m76
B08534m77
B08534m78
B08534m79
B08534m80
B08534m81
B08534m82
B08534m83
B08534m84
B08534m85
B08534m86
B08534m87
B08534m88
B08534m89
B08534m90
B08534m91
B08534m92
B08534m93
B08534m94
B08534m95
B08534m96
B08534m97
B08534m98
B08534m99
B08534m100
B08534m101
B08534m102
B08534m103
B08534m104
B08534m105
B08534m106
B08534m107
B08534m108
B08534m109
B08534m110
B08534m111
B08534m112
B08534m113
B08534m114
B08534m115
B08534m116
B08534m117
B08534m118
B08534m119
B08534m120
 
B08536m1
B08536m2
B08536m3
B08536m4
B08536m5
B08536m6
B08536m7
B08536m8
B08536m9
B08536m10
B08536m11
B08536m12
 
B08537m1
B08537m2
B08537m3
B08537m4
B08537m5
B08537m6
B08537m7
B08537m8
B08537m9
B08537m10
B08537m11
B08537m12
B08537m13
B08537m14
B08537m15
B08537m16
B08537m17
B08537m18
B08537m19
B08537m20
B08537m21
;
RUN;
TITLE2;
