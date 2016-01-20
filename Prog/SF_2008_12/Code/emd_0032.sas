TITLE2 "e20125md0032000";
DATA work.SFe0032md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0032000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*MEANS OF TRANSPORTATION TO WORK BY TIME ARRIVING AT WORK FROM HOME FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08532e1='Total:'
B08532e2='12:00 a.m. to 4:59 a.m.'
B08532e3='5:00 a.m. to 5:29 a.m.'
B08532e4='5:30 a.m. to 5:59 a.m.'
B08532e5='6:00 a.m. to 6:29 a.m.'
B08532e6='6:30 a.m. to 6:59 a.m.'
B08532e7='7:00 a.m. to 7:29 a.m.'
B08532e8='7:30 a.m. to 7:59 a.m.'
B08532e9='8:00 a.m. to 8:29 a.m.'
B08532e10='8:30 a.m. to 8:59 a.m.'
B08532e11='9:00 a.m. to 9:59 a.m.'
B08532e12='10:00 a.m. to 10:59 a.m.'
B08532e13='11:00 a.m. to 11:59 a.m.'
B08532e14='12:00 p.m. to 3:59 p.m.'
B08532e15='4:00 p.m. to 11:59 p.m.'
B08532e16='Car, truck, or van - drove alone:'
B08532e17='12:00 a.m. to 4:59 a.m.'
B08532e18='5:00 a.m. to 5:29 a.m.'
B08532e19='5:30 a.m. to 5:59 a.m.'
B08532e20='6:00 a.m. to 6:29 a.m.'
B08532e21='6:30 a.m. to 6:59 a.m.'
B08532e22='7:00 a.m. to 7:29 a.m.'
B08532e23='7:30 a.m. to 7:59 a.m.'
B08532e24='8:00 a.m. to 8:29 a.m.'
B08532e25='8:30 a.m. to 8:59 a.m.'
B08532e26='9:00 a.m. to 9:59 a.m.'
B08532e27='10:00 a.m. to 10:59 a.m.'
B08532e28='11:00 a.m. to 11:59 a.m.'
B08532e29='12:00 p.m. to 3:59 p.m.'
B08532e30='4:00 p.m. to 11:59 p.m.'
B08532e31='Car, truck, or van - carpooled:'
B08532e32='12:00 a.m. to 4:59 a.m.'
B08532e33='5:00 a.m. to 5:29 a.m.'
B08532e34='5:30 a.m. to 5:59 a.m.'
B08532e35='6:00 a.m. to 6:29 a.m.'
B08532e36='6:30 a.m. to 6:59 a.m.'
B08532e37='7:00 a.m. to 7:29 a.m.'
B08532e38='7:30 a.m. to 7:59 a.m.'
B08532e39='8:00 a.m. to 8:29 a.m.'
B08532e40='8:30 a.m. to 8:59 a.m.'
B08532e41='9:00 a.m. to 9:59 a.m.'
B08532e42='10:00 a.m. to 10:59 a.m.'
B08532e43='11:00 a.m. to 11:59 a.m.'
B08532e44='12:00 p.m. to 3:59 p.m.'
B08532e45='4:00 p.m. to 11:59 p.m.'
B08532e46='Public transportation (excluding taxicab):'
B08532e47='12:00 a.m. to 4:59 a.m.'
B08532e48='5:00 a.m. to 5:29 a.m.'
B08532e49='5:30 a.m. to 5:59 a.m.'
B08532e50='6:00 a.m. to 6:29 a.m.'
B08532e51='6:30 a.m. to 6:59 a.m.'
B08532e52='7:00 a.m. to 7:29 a.m.'
B08532e53='7:30 a.m. to 7:59 a.m.'
B08532e54='8:00 a.m. to 8:29 a.m.'
B08532e55='8:30 a.m. to 8:59 a.m.'
B08532e56='9:00 a.m. to 9:59 a.m.'
B08532e57='10:00 a.m. to 10:59 a.m.'
B08532e58='11:00 a.m. to 11:59 a.m.'
B08532e59='12:00 p.m. to 3:59 p.m.'
B08532e60='4:00 p.m. to 11:59 p.m.'
B08532e61='Walked:'
B08532e62='12:00 a.m. to 4:59 a.m.'
B08532e63='5:00 a.m. to 5:29 a.m.'
B08532e64='5:30 a.m. to 5:59 a.m.'
B08532e65='6:00 a.m. to 6:29 a.m.'
B08532e66='6:30 a.m. to 6:59 a.m.'
B08532e67='7:00 a.m. to 7:29 a.m.'
B08532e68='7:30 a.m. to 7:59 a.m.'
B08532e69='8:00 a.m. to 8:29 a.m.'
B08532e70='8:30 a.m. to 8:59 a.m.'
B08532e71='9:00 a.m. to 9:59 a.m.'
B08532e72='10:00 a.m. to 10:59 a.m.'
B08532e73='11:00 a.m. to 11:59 a.m.'
B08532e74='12:00 p.m. to 3:59 p.m.'
B08532e75='4:00 p.m. to 11:59 p.m.'
B08532e76='Taxicab, motorcycle, bicycle, or other means:'
B08532e77='12:00 a.m. to 4:59 a.m.'
B08532e78='5:00 a.m. to 5:29 a.m.'
B08532e79='5:30 a.m. to 5:59 a.m.'
B08532e80='6:00 a.m. to 6:29 a.m.'
B08532e81='6:30 a.m. to 6:59 a.m.'
B08532e82='7:00 a.m. to 7:29 a.m.'
B08532e83='7:30 a.m. to 7:59 a.m.'
B08532e84='8:00 a.m. to 8:29 a.m.'
B08532e85='8:30 a.m. to 8:59 a.m.'
B08532e86='9:00 a.m. to 9:59 a.m.'
B08532e87='10:00 a.m. to 10:59 a.m.'
B08532e88='11:00 a.m. to 11:59 a.m.'
B08532e89='12:00 p.m. to 3:59 p.m.'
B08532e90='4:00 p.m. to 11:59 p.m.'
/*MEANS OF TRANSPORTATION TO WORK BY TRAVEL TIME TO WORK FOR WORKPLACE GEOGRAPHY */
/*Universe: Workers 16 years and over who did not work at home */
 
B08534e1='Total:'
B08534e2='Less than 10 minutes'
B08534e3='10 to 14 minutes'
B08534e4='15 to 19 minutes'
B08534e5='20 to 24 minutes'
B08534e6='25 to 29 minutes'
B08534e7='30 to 34 minutes'
B08534e8='35 to 44 minutes'
B08534e9='45 to 59 minutes'
B08534e10='60 or more minutes'
B08534e11='Car, truck, or van:'
B08534e12='Less than 10 minutes'
B08534e13='10 to 14 minutes'
B08534e14='15 to 19 minutes'
B08534e15='20 to 24 minutes'
B08534e16='25 to 29 minutes'
B08534e17='30 to 34 minutes'
B08534e18='35 to 44 minutes'
B08534e19='45 to 59 minutes'
B08534e20='60 or more minutes'
B08534e21='Drove alone:'
B08534e22='Less than 10 minutes'
B08534e23='10 to 14 minutes'
B08534e24='15 to 19 minutes'
B08534e25='20 to 24 minutes'
B08534e26='25 to 29 minutes'
B08534e27='30 to 34 minutes'
B08534e28='35 to 44 minutes'
B08534e29='45 to 59 minutes'
B08534e30='60 or more minutes'
B08534e31='Carpooled:'
B08534e32='Less than 10 minutes'
B08534e33='10 to 14 minutes'
B08534e34='15 to 19 minutes'
B08534e35='20 to 24 minutes'
B08534e36='25 to 29 minutes'
B08534e37='30 to 34 minutes'
B08534e38='35 to 44 minutes'
B08534e39='45 to 59 minutes'
B08534e40='60 or more minutes'
B08534e41='In 2-person carpool:'
B08534e42='Less than 10 minutes'
B08534e43='10 to 14 minutes'
B08534e44='15 to 19 minutes'
B08534e45='20 to 24 minutes'
B08534e46='25 to 29 minutes'
B08534e47='30 to 34 minutes'
B08534e48='35 to 44 minutes'
B08534e49='45 to 59 minutes'
B08534e50='60 or more minutes'
B08534e51='In 3-or-more-person carpool:'
B08534e52='Less than 10 minutes'
B08534e53='10 to 14 minutes'
B08534e54='15 to 19 minutes'
B08534e55='20 to 24 minutes'
B08534e56='25 to 29 minutes'
B08534e57='30 to 34 minutes'
B08534e58='35 to 44 minutes'
B08534e59='45 to 59 minutes'
B08534e60='60 or more minutes'
B08534e61='Public transportation (excluding taxicab):'
B08534e62='Less than 10 minutes'
B08534e63='10 to 14 minutes'
B08534e64='15 to 19 minutes'
B08534e65='20 to 24 minutes'
B08534e66='25 to 29 minutes'
B08534e67='30 to 34 minutes'
B08534e68='35 to 44 minutes'
B08534e69='45 to 59 minutes'
B08534e70='60 or more minutes'
B08534e71='Bus or trolley bus:'
B08534e72='Less than 10 minutes'
B08534e73='10 to 14 minutes'
B08534e74='15 to 19 minutes'
B08534e75='20 to 24 minutes'
B08534e76='25 to 29 minutes'
B08534e77='30 to 34 minutes'
B08534e78='35 to 44 minutes'
B08534e79='45 to 59 minutes'
B08534e80='60 or more minutes'
B08534e81='Streetcar or trolley car (carro publico in Puerto Rico), subway or elevated:'
B08534e82='Less than 10 minutes'
B08534e83='10 to 14 minutes'
B08534e84='15 to 19 minutes'
B08534e85='20 to 24 minutes'
B08534e86='25 to 29 minutes'
B08534e87='30 to 34 minutes'
B08534e88='35 to 44 minutes'
B08534e89='45 to 59 minutes'
B08534e90='60 or more minutes'
B08534e91='Railroad or ferryboat:'
B08534e92='Less than 10 minutes'
B08534e93='10 to 14 minutes'
B08534e94='15 to 19 minutes'
B08534e95='20 to 24 minutes'
B08534e96='25 to 29 minutes'
B08534e97='30 to 34 minutes'
B08534e98='35 to 44 minutes'
B08534e99='45 to 59 minutes'
B08534e100='60 or more minutes'
B08534e101='Walked:'
B08534e102='Less than 10 minutes'
B08534e103='10 to 14 minutes'
B08534e104='15 to 19 minutes'
B08534e105='20 to 24 minutes'
B08534e106='25 to 29 minutes'
B08534e107='30 to 34 minutes'
B08534e108='35 to 44 minutes'
B08534e109='45 to 59 minutes'
B08534e110='60 or more minutes'
B08534e111='Taxicab, motorcycle, bicycle, or other means:'
B08534e112='Less than 10 minutes'
B08534e113='10 to 14 minutes'
B08534e114='15 to 19 minutes'
B08534e115='20 to 24 minutes'
B08534e116='25 to 29 minutes'
B08534e117='30 to 34 minutes'
B08534e118='35 to 44 minutes'
B08534e119='45 to 59 minutes'
B08534e120='60 or more minutes'
/*AGGREGATE TRAVEL TIME TO WORK (IN MINUTES) OF WORKERS BY MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08536e1='Aggregate travel time to work (in minutes):'
B08536e2='Car, truck, or van:'
B08536e3='Drove alone'
B08536e4='Carpooled:'
B08536e5='In 2-person carpool'
B08536e6='In 3-or-more-person carpool'
B08536e7='Public transportation (excluding taxicab):'
B08536e8='Bus or trolley bus'
B08536e9='Streetcar or trolley car (carro publico in Puerto Rico), subway or elevated'
B08536e10='Railroad or ferryboat'
B08536e11='Walked'
B08536e12='Taxicab, motorcycle, bicycle, or other means'
/*MEANS OF TRANSPORTATION TO WORK BY TENURE FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over in households */
 
B08537e1='Total:'
B08537e2='Householder lived in owner-occupied housing units'
B08537e3='Householder lived in renter-occupied housing units'
B08537e4='Car, truck, or van - drove alone:'
B08537e5='Householder lived in owner-occupied housing units'
B08537e6='Householder lived in renter-occupied housing units'
B08537e7='Car, truck, or van - carpooled:'
B08537e8='Householder lived in owner-occupied housing units'
B08537e9='Householder lived in renter-occupied housing units'
B08537e10='Public transportation (excluding taxicab):'
B08537e11='Householder lived in owner-occupied housing units'
B08537e12='Householder lived in renter-occupied housing units'
B08537e13='Walked:'
B08537e14='Householder lived in owner-occupied housing units'
B08537e15='Householder lived in renter-occupied housing units'
B08537e16='Taxicab, motorcycle, bicycle, or other means:'
B08537e17='Householder lived in owner-occupied housing units'
B08537e18='Householder lived in renter-occupied housing units'
B08537e19='Worked at home:'
B08537e20='Householder lived in owner-occupied housing units'
B08537e21='Householder lived in renter-occupied housing units'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B08532e1
B08532e2
B08532e3
B08532e4
B08532e5
B08532e6
B08532e7
B08532e8
B08532e9
B08532e10
B08532e11
B08532e12
B08532e13
B08532e14
B08532e15
B08532e16
B08532e17
B08532e18
B08532e19
B08532e20
B08532e21
B08532e22
B08532e23
B08532e24
B08532e25
B08532e26
B08532e27
B08532e28
B08532e29
B08532e30
B08532e31
B08532e32
B08532e33
B08532e34
B08532e35
B08532e36
B08532e37
B08532e38
B08532e39
B08532e40
B08532e41
B08532e42
B08532e43
B08532e44
B08532e45
B08532e46
B08532e47
B08532e48
B08532e49
B08532e50
B08532e51
B08532e52
B08532e53
B08532e54
B08532e55
B08532e56
B08532e57
B08532e58
B08532e59
B08532e60
B08532e61
B08532e62
B08532e63
B08532e64
B08532e65
B08532e66
B08532e67
B08532e68
B08532e69
B08532e70
B08532e71
B08532e72
B08532e73
B08532e74
B08532e75
B08532e76
B08532e77
B08532e78
B08532e79
B08532e80
B08532e81
B08532e82
B08532e83
B08532e84
B08532e85
B08532e86
B08532e87
B08532e88
B08532e89
B08532e90
 
B08534e1
B08534e2
B08534e3
B08534e4
B08534e5
B08534e6
B08534e7
B08534e8
B08534e9
B08534e10
B08534e11
B08534e12
B08534e13
B08534e14
B08534e15
B08534e16
B08534e17
B08534e18
B08534e19
B08534e20
B08534e21
B08534e22
B08534e23
B08534e24
B08534e25
B08534e26
B08534e27
B08534e28
B08534e29
B08534e30
B08534e31
B08534e32
B08534e33
B08534e34
B08534e35
B08534e36
B08534e37
B08534e38
B08534e39
B08534e40
B08534e41
B08534e42
B08534e43
B08534e44
B08534e45
B08534e46
B08534e47
B08534e48
B08534e49
B08534e50
B08534e51
B08534e52
B08534e53
B08534e54
B08534e55
B08534e56
B08534e57
B08534e58
B08534e59
B08534e60
B08534e61
B08534e62
B08534e63
B08534e64
B08534e65
B08534e66
B08534e67
B08534e68
B08534e69
B08534e70
B08534e71
B08534e72
B08534e73
B08534e74
B08534e75
B08534e76
B08534e77
B08534e78
B08534e79
B08534e80
B08534e81
B08534e82
B08534e83
B08534e84
B08534e85
B08534e86
B08534e87
B08534e88
B08534e89
B08534e90
B08534e91
B08534e92
B08534e93
B08534e94
B08534e95
B08534e96
B08534e97
B08534e98
B08534e99
B08534e100
B08534e101
B08534e102
B08534e103
B08534e104
B08534e105
B08534e106
B08534e107
B08534e108
B08534e109
B08534e110
B08534e111
B08534e112
B08534e113
B08534e114
B08534e115
B08534e116
B08534e117
B08534e118
B08534e119
B08534e120
 
B08536e1
B08536e2
B08536e3
B08536e4
B08536e5
B08536e6
B08536e7
B08536e8
B08536e9
B08536e10
B08536e11
B08536e12
 
B08537e1
B08537e2
B08537e3
B08537e4
B08537e5
B08537e6
B08537e7
B08537e8
B08537e9
B08537e10
B08537e11
B08537e12
B08537e13
B08537e14
B08537e15
B08537e16
B08537e17
B08537e18
B08537e19
B08537e20
B08537e21
;
RUN;
TITLE2;
