TITLE2 "e20115dc0027000";
DATA work.SFe0027dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0027000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*MEANS OF TRANSPORTATION TO WORK BY TIME LEAVING HOME TO GO TO WORK */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08132e1='Total:'
B08132e2='12:00 a.m. to 4:59 a.m.'
B08132e3='5:00 a.m. to 5:29 a.m.'
B08132e4='5:30 a.m. to 5:59 a.m.'
B08132e5='6:00 a.m. to 6:29 a.m.'
B08132e6='6:30 a.m. to 6:59 a.m.'
B08132e7='7:00 a.m. to 7:29 a.m.'
B08132e8='7:30 a.m. to 7:59 a.m.'
B08132e9='8:00 a.m. to 8:29 a.m.'
B08132e10='8:30 a.m. to 8:59 a.m.'
B08132e11='9:00 a.m. to 9:59 a.m.'
B08132e12='10:00 a.m. to 10:59 a.m.'
B08132e13='11:00 a.m. to 11:59 a.m.'
B08132e14='12:00 p.m. to 3:59 p.m.'
B08132e15='4:00 p.m. to 11:59 p.m.'
B08132e16='Car, truck, or van - drove alone:'
B08132e17='12:00 a.m. to 4:59 a.m.'
B08132e18='5:00 a.m. to 5:29 a.m.'
B08132e19='5:30 a.m. to 5:59 a.m.'
B08132e20='6:00 a.m. to 6:29 a.m.'
B08132e21='6:30 a.m. to 6:59 a.m.'
B08132e22='7:00 a.m. to 7:29 a.m.'
B08132e23='7:30 a.m. to 7:59 a.m.'
B08132e24='8:00 a.m. to 8:29 a.m.'
B08132e25='8:30 a.m. to 8:59 a.m.'
B08132e26='9:00 a.m. to 9:59 a.m.'
B08132e27='10:00 a.m. to 10:59 a.m.'
B08132e28='11:00 a.m. to 11:59 a.m.'
B08132e29='12:00 p.m. to 3:59 p.m.'
B08132e30='4:00 p.m. to 11:59 p.m.'
B08132e31='Car, truck, or van - carpooled:'
B08132e32='12:00 a.m. to 4:59 a.m.'
B08132e33='5:00 a.m. to 5:29 a.m.'
B08132e34='5:30 a.m. to 5:59 a.m.'
B08132e35='6:00 a.m. to 6:29 a.m.'
B08132e36='6:30 a.m. to 6:59 a.m.'
B08132e37='7:00 a.m. to 7:29 a.m.'
B08132e38='7:30 a.m. to 7:59 a.m.'
B08132e39='8:00 a.m. to 8:29 a.m.'
B08132e40='8:30 a.m. to 8:59 a.m.'
B08132e41='9:00 a.m. to 9:59 a.m.'
B08132e42='10:00 a.m. to 10:59 a.m.'
B08132e43='11:00 a.m. to 11:59 a.m.'
B08132e44='12:00 p.m. to 3:59 p.m.'
B08132e45='4:00 p.m. to 11:59 p.m.'
B08132e46='Public transportation (excluding taxicab):'
B08132e47='12:00 a.m. to 4:59 a.m.'
B08132e48='5:00 a.m. to 5:29 a.m.'
B08132e49='5:30 a.m. to 5:59 a.m.'
B08132e50='6:00 a.m. to 6:29 a.m.'
B08132e51='6:30 a.m. to 6:59 a.m.'
B08132e52='7:00 a.m. to 7:29 a.m.'
B08132e53='7:30 a.m. to 7:59 a.m.'
B08132e54='8:00 a.m. to 8:29 a.m.'
B08132e55='8:30 a.m. to 8:59 a.m.'
B08132e56='9:00 a.m. to 9:59 a.m.'
B08132e57='10:00 a.m. to 10:59 a.m.'
B08132e58='11:00 a.m. to 11:59 a.m.'
B08132e59='12:00 p.m. to 3:59 p.m.'
B08132e60='4:00 p.m. to 11:59 p.m.'
B08132e61='Walked:'
B08132e62='12:00 a.m. to 4:59 a.m.'
B08132e63='5:00 a.m. to 5:29 a.m.'
B08132e64='5:30 a.m. to 5:59 a.m.'
B08132e65='6:00 a.m. to 6:29 a.m.'
B08132e66='6:30 a.m. to 6:59 a.m.'
B08132e67='7:00 a.m. to 7:29 a.m.'
B08132e68='7:30 a.m. to 7:59 a.m.'
B08132e69='8:00 a.m. to 8:29 a.m.'
B08132e70='8:30 a.m. to 8:59 a.m.'
B08132e71='9:00 a.m. to 9:59 a.m.'
B08132e72='10:00 a.m. to 10:59 a.m.'
B08132e73='11:00 a.m. to 11:59 a.m.'
B08132e74='12:00 p.m. to 3:59 p.m.'
B08132e75='4:00 p.m. to 11:59 p.m.'
B08132e76='Taxicab, motorcycle, bicycle, or other means:'
B08132e77='12:00 a.m. to 4:59 a.m.'
B08132e78='5:00 a.m. to 5:29 a.m.'
B08132e79='5:30 a.m. to 5:59 a.m.'
B08132e80='6:00 a.m. to 6:29 a.m.'
B08132e81='6:30 a.m. to 6:59 a.m.'
B08132e82='7:00 a.m. to 7:29 a.m.'
B08132e83='7:30 a.m. to 7:59 a.m.'
B08132e84='8:00 a.m. to 8:29 a.m.'
B08132e85='8:30 a.m. to 8:59 a.m.'
B08132e86='9:00 a.m. to 9:59 a.m.'
B08132e87='10:00 a.m. to 10:59 a.m.'
B08132e88='11:00 a.m. to 11:59 a.m.'
B08132e89='12:00 p.m. to 3:59 p.m.'
B08132e90='4:00 p.m. to 11:59 p.m.'
 
/*AGGREGATE TRAVEL TIME TO WORK (IN MINUTES) OF WORKERS BY TIME LEAVING HOME TO GO TO WORK */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08133e1='Aggregate travel time to work (in minutes):'
B08133e2='12:00 a.m. to 4:59 a.m.'
B08133e3='5:00 a.m. to 5:29 a.m.'
B08133e4='5:30 a.m. to 5:59 a.m.'
B08133e5='6:00 a.m. to 6:29 a.m.'
B08133e6='6:30 a.m. to 6:59 a.m.'
B08133e7='7:00 a.m. to 7:29 a.m.'
B08133e8='7:30 a.m. to 7:59 a.m.'
B08133e9='8:00 a.m. to 8:29 a.m.'
B08133e10='8:30 a.m. to 8:59 a.m.'
B08133e11='9:00 a.m. to 9:59 a.m.'
B08133e12='10:00 a.m. to 10:59 a.m.'
B08133e13='11:00 a.m. to 11:59 a.m.'
B08133e14='12:00 p.m. to 3:59 p.m.'
B08133e15='4:00 p.m. to 11:59 p.m.'
 
/*MEANS OF TRANSPORTATION TO WORK BY TRAVEL TIME TO WORK */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08134e1='Total:'
B08134e2='Less than 10 minutes'
B08134e3='10 to 14 minutes'
B08134e4='15 to 19 minutes'
B08134e5='20 to 24 minutes'
B08134e6='25 to 29 minutes'
B08134e7='30 to 34 minutes'
B08134e8='35 to 44 minutes'
B08134e9='45 to 59 minutes'
B08134e10='60 or more minutes'
B08134e11='Car, truck, or van:'
B08134e12='Less than 10 minutes'
B08134e13='10 to 14 minutes'
B08134e14='15 to 19 minutes'
B08134e15='20 to 24 minutes'
B08134e16='25 to 29 minutes'
B08134e17='30 to 34 minutes'
B08134e18='35 to 44 minutes'
B08134e19='45 to 59 minutes'
B08134e20='60 or more minutes'
B08134e21='Drove alone:'
B08134e22='Less than 10 minutes'
B08134e23='10 to 14 minutes'
B08134e24='15 to 19 minutes'
B08134e25='20 to 24 minutes'
B08134e26='25 to 29 minutes'
B08134e27='30 to 34 minutes'
B08134e28='35 to 44 minutes'
B08134e29='45 to 59 minutes'
B08134e30='60 or more minutes'
B08134e31='Carpooled:'
B08134e32='Less than 10 minutes'
B08134e33='10 to 14 minutes'
B08134e34='15 to 19 minutes'
B08134e35='20 to 24 minutes'
B08134e36='25 to 29 minutes'
B08134e37='30 to 34 minutes'
B08134e38='35 to 44 minutes'
B08134e39='45 to 59 minutes'
B08134e40='60 or more minutes'
B08134e41='In 2-person carpool:'
B08134e42='Less than 10 minutes'
B08134e43='10 to 14 minutes'
B08134e44='15 to 19 minutes'
B08134e45='20 to 24 minutes'
B08134e46='25 to 29 minutes'
B08134e47='30 to 34 minutes'
B08134e48='35 to 44 minutes'
B08134e49='45 to 59 minutes'
B08134e50='60 or more minutes'
B08134e51='In 3-or-more-person carpool:'
B08134e52='Less than 10 minutes'
B08134e53='10 to 14 minutes'
B08134e54='15 to 19 minutes'
B08134e55='20 to 24 minutes'
B08134e56='25 to 29 minutes'
B08134e57='30 to 34 minutes'
B08134e58='35 to 44 minutes'
B08134e59='45 to 59 minutes'
B08134e60='60 or more minutes'
B08134e61='Public transportation (excluding taxicab):'
B08134e62='Less than 10 minutes'
B08134e63='10 to 14 minutes'
B08134e64='15 to 19 minutes'
B08134e65='20 to 24 minutes'
B08134e66='25 to 29 minutes'
B08134e67='30 to 34 minutes'
B08134e68='35 to 44 minutes'
B08134e69='45 to 59 minutes'
B08134e70='60 or more minutes'
B08134e71='Bus or trolley bus:'
B08134e72='Less than 10 minutes'
B08134e73='10 to 14 minutes'
B08134e74='15 to 19 minutes'
B08134e75='20 to 24 minutes'
B08134e76='25 to 29 minutes'
B08134e77='30 to 34 minutes'
B08134e78='35 to 44 minutes'
B08134e79='45 to 59 minutes'
B08134e80='60 or more minutes'
B08134e81='Streetcar or trolley car (carro publico in Puerto Rico), subway or elevated:'
B08134e82='Less than 10 minutes'
B08134e83='10 to 14 minutes'
B08134e84='15 to 19 minutes'
B08134e85='20 to 24 minutes'
B08134e86='25 to 29 minutes'
B08134e87='30 to 34 minutes'
B08134e88='35 to 44 minutes'
B08134e89='45 to 59 minutes'
B08134e90='60 or more minutes'
B08134e91='Railroad or ferryboat:'
B08134e92='Less than 10 minutes'
B08134e93='10 to 14 minutes'
B08134e94='15 to 19 minutes'
B08134e95='20 to 24 minutes'
B08134e96='25 to 29 minutes'
B08134e97='30 to 34 minutes'
B08134e98='35 to 44 minutes'
B08134e99='45 to 59 minutes'
B08134e100='60 or more minutes'
B08134e101='Walked:'
B08134e102='Less than 10 minutes'
B08134e103='10 to 14 minutes'
B08134e104='15 to 19 minutes'
B08134e105='20 to 24 minutes'
B08134e106='25 to 29 minutes'
B08134e107='30 to 34 minutes'
B08134e108='35 to 44 minutes'
B08134e109='45 to 59 minutes'
B08134e110='60 or more minutes'
B08134e111='Taxicab, motorcycle, bicycle, or other means:'
B08134e112='Less than 10 minutes'
B08134e113='10 to 14 minutes'
B08134e114='15 to 19 minutes'
B08134e115='20 to 24 minutes'
B08134e116='25 to 29 minutes'
B08134e117='30 to 34 minutes'
B08134e118='35 to 44 minutes'
B08134e119='45 to 59 minutes'
B08134e120='60 or more minutes'
 
/*AGGREGATE TRAVEL TIME TO WORK (IN MINUTES) OF WORKERS BY TRAVEL TIME TO WORK */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08135e1='Aggregate travel time to work (in minutes):'
B08135e2='Less than 10 minutes'
B08135e3='10 to 14 minutes'
B08135e4='15 to 19 minutes'
B08135e5='20 to 24 minutes'
B08135e6='25 to 29 minutes'
B08135e7='30 to 34 minutes'
B08135e8='35 to 44 minutes'
B08135e9='45 to 59 minutes'
B08135e10='60 or more minutes'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B08132e1
B08132e2
B08132e3
B08132e4
B08132e5
B08132e6
B08132e7
B08132e8
B08132e9
B08132e10
B08132e11
B08132e12
B08132e13
B08132e14
B08132e15
B08132e16
B08132e17
B08132e18
B08132e19
B08132e20
B08132e21
B08132e22
B08132e23
B08132e24
B08132e25
B08132e26
B08132e27
B08132e28
B08132e29
B08132e30
B08132e31
B08132e32
B08132e33
B08132e34
B08132e35
B08132e36
B08132e37
B08132e38
B08132e39
B08132e40
B08132e41
B08132e42
B08132e43
B08132e44
B08132e45
B08132e46
B08132e47
B08132e48
B08132e49
B08132e50
B08132e51
B08132e52
B08132e53
B08132e54
B08132e55
B08132e56
B08132e57
B08132e58
B08132e59
B08132e60
B08132e61
B08132e62
B08132e63
B08132e64
B08132e65
B08132e66
B08132e67
B08132e68
B08132e69
B08132e70
B08132e71
B08132e72
B08132e73
B08132e74
B08132e75
B08132e76
B08132e77
B08132e78
B08132e79
B08132e80
B08132e81
B08132e82
B08132e83
B08132e84
B08132e85
B08132e86
B08132e87
B08132e88
B08132e89
B08132e90
 
B08133e1
B08133e2
B08133e3
B08133e4
B08133e5
B08133e6
B08133e7
B08133e8
B08133e9
B08133e10
B08133e11
B08133e12
B08133e13
B08133e14
B08133e15
 
B08134e1
B08134e2
B08134e3
B08134e4
B08134e5
B08134e6
B08134e7
B08134e8
B08134e9
B08134e10
B08134e11
B08134e12
B08134e13
B08134e14
B08134e15
B08134e16
B08134e17
B08134e18
B08134e19
B08134e20
B08134e21
B08134e22
B08134e23
B08134e24
B08134e25
B08134e26
B08134e27
B08134e28
B08134e29
B08134e30
B08134e31
B08134e32
B08134e33
B08134e34
B08134e35
B08134e36
B08134e37
B08134e38
B08134e39
B08134e40
B08134e41
B08134e42
B08134e43
B08134e44
B08134e45
B08134e46
B08134e47
B08134e48
B08134e49
B08134e50
B08134e51
B08134e52
B08134e53
B08134e54
B08134e55
B08134e56
B08134e57
B08134e58
B08134e59
B08134e60
B08134e61
B08134e62
B08134e63
B08134e64
B08134e65
B08134e66
B08134e67
B08134e68
B08134e69
B08134e70
B08134e71
B08134e72
B08134e73
B08134e74
B08134e75
B08134e76
B08134e77
B08134e78
B08134e79
B08134e80
B08134e81
B08134e82
B08134e83
B08134e84
B08134e85
B08134e86
B08134e87
B08134e88
B08134e89
B08134e90
B08134e91
B08134e92
B08134e93
B08134e94
B08134e95
B08134e96
B08134e97
B08134e98
B08134e99
B08134e100
B08134e101
B08134e102
B08134e103
B08134e104
B08134e105
B08134e106
B08134e107
B08134e108
B08134e109
B08134e110
B08134e111
B08134e112
B08134e113
B08134e114
B08134e115
B08134e116
B08134e117
B08134e118
B08134e119
B08134e120
 
B08135e1
B08135e2
B08135e3
B08135e4
B08135e5
B08135e6
B08135e7
B08135e8
B08135e9
B08135e10
;
RUN;
TITLE2;
