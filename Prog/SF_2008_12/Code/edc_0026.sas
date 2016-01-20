TITLE2 "e20125dc0026000";
DATA work.SFe0026dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0026000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*MEANS OF TRANSPORTATION TO WORK BY INDUSTRY */
/*Universe:  Workers 16 years and over */
 
B08126e1='Total:'
B08126e2='Agriculture, forestry, fishing and hunting, and mining'
B08126e3='Construction'
B08126e4='Manufacturing'
B08126e5='Wholesale trade'
B08126e6='Retail trade'
B08126e7='Transportation and warehousing, and utilities'
B08126e8='Information'
B08126e9='Finance and insurance, and real estate and rental and leasing'
B08126e10='Professional, scientific, and management, and administrative and waste management services'
B08126e11='Educational services, and health care and social assistance'
B08126e12='Arts, entertainment, and recreation, and accommodation and food services'
B08126e13='Other services (except public administration)'
B08126e14='Public administration'
B08126e15='Armed forces'
B08126e16='Car, truck, or van - drove alone:'
B08126e17='Agriculture, forestry, fishing and hunting, and mining'
B08126e18='Construction'
B08126e19='Manufacturing'
B08126e20='Wholesale trade'
B08126e21='Retail trade'
B08126e22='Transportation and warehousing, and utilities'
B08126e23='Information'
B08126e24='Finance and insurance, and real estate and rental and leasing'
B08126e25='Professional, scientific, and management, and administrative and waste management services'
B08126e26='Educational services, and health care and social assistance'
B08126e27='Arts, entertainment, and recreation, and accommodation and food services'
B08126e28='Other services (except public administration)'
B08126e29='Public administration'
B08126e30='Armed forces'
B08126e31='Car, truck, or van - carpooled:'
B08126e32='Agriculture, forestry, fishing and hunting, and mining'
B08126e33='Construction'
B08126e34='Manufacturing'
B08126e35='Wholesale trade'
B08126e36='Retail trade'
B08126e37='Transportation and warehousing, and utilities'
B08126e38='Information'
B08126e39='Finance and insurance, and real estate and rental and leasing'
B08126e40='Professional, scientific, and management, and administrative and waste management services'
B08126e41='Educational services, and health care and social assistance'
B08126e42='Arts, entertainment, and recreation, and accommodation and food services'
B08126e43='Other services (except public administration)'
B08126e44='Public administration'
B08126e45='Armed forces'
B08126e46='Public transportation (excluding taxicab):'
B08126e47='Agriculture, forestry, fishing and hunting, and mining'
B08126e48='Construction'
B08126e49='Manufacturing'
B08126e50='Wholesale trade'
B08126e51='Retail trade'
B08126e52='Transportation and warehousing, and utilities'
B08126e53='Information'
B08126e54='Finance and insurance, and real estate and rental and leasing'
B08126e55='Professional, scientific, and management, and administrative and waste management services'
B08126e56='Educational services, and health care and social assistance'
B08126e57='Arts, entertainment, and recreation, and accommodation and food services'
B08126e58='Other services (except public administration)'
B08126e59='Public administration'
B08126e60='Armed forces'
B08126e61='Walked:'
B08126e62='Agriculture, forestry, fishing and hunting, and mining'
B08126e63='Construction'
B08126e64='Manufacturing'
B08126e65='Wholesale trade'
B08126e66='Retail trade'
B08126e67='Transportation and warehousing, and utilities'
B08126e68='Information'
B08126e69='Finance and insurance, and real estate and rental and leasing'
B08126e70='Professional, scientific, and management, and administrative and waste management services'
B08126e71='Educational services, and health care and social assistance'
B08126e72='Arts, entertainment, and recreation, and accommodation and food services'
B08126e73='Other services (except public administration)'
B08126e74='Public administration'
B08126e75='Armed forces'
B08126e76='Taxicab, motorcycle, bicycle, or other means:'
B08126e77='Agriculture, forestry, fishing and hunting, and mining'
B08126e78='Construction'
B08126e79='Manufacturing'
B08126e80='Wholesale trade'
B08126e81='Retail trade'
B08126e82='Transportation and warehousing, and utilities'
B08126e83='Information'
B08126e84='Finance and insurance, and real estate and rental and leasing'
B08126e85='Professional, scientific, and management, and administrative and waste management services'
B08126e86='Educational services, and health care and social assistance'
B08126e87='Arts, entertainment, and recreation, and accommodation and food services'
B08126e88='Other services (except public administration)'
B08126e89='Public administration'
B08126e90='Armed forces'
B08126e91='Worked at home:'
B08126e92='Agriculture, forestry, fishing and hunting, and mining'
B08126e93='Construction'
B08126e94='Manufacturing'
B08126e95='Wholesale trade'
B08126e96='Retail trade'
B08126e97='Transportation and warehousing, and utilities'
B08126e98='Information'
B08126e99='Finance and insurance, and real estate and rental and leasing'
B08126e100='Professional, scientific, and management, and administrative and waste management services'
B08126e101='Educational services, and health care and social assistance'
B08126e102='Arts, entertainment, and recreation, and accommodation and food services'
B08126e103='Other services (except public administration)'
B08126e104='Public administration'
B08126e105='Armed forces'
/*MEANS OF TRANSPORTATION TO WORK BY CLASS OF WORKER */
/*Universe:  Workers 16 years and over */
 
B08128e1='Total:'
B08128e2='Private for-profit wage and salary workers:'
B08128e3='Employee of private company workers'
B08128e4='Self-employed in own incorporated business workers'
B08128e5='Private not-for-profit wage and salary workers'
B08128e6='Local government workers'
B08128e7='State government workers'
B08128e8='Federal government workers'
B08128e9='Self-employed in own not incorporated business workers'
B08128e10='Unpaid family workers'
B08128e11='Car, truck, or van - drove alone:'
B08128e12='Private for-profit wage and salary workers:'
B08128e13='Employee of private company workers'
B08128e14='Self-employed in own incorporated business workers'
B08128e15='Private not-for-profit wage and salary workers'
B08128e16='Local government workers'
B08128e17='State government workers'
B08128e18='Federal government workers'
B08128e19='Self-employed in own not incorporated business workers'
B08128e20='Unpaid family workers'
B08128e21='Car, truck, or van - carpooled:'
B08128e22='Private for-profit wage and salary workers:'
B08128e23='Employee of private company workers'
B08128e24='Self-employed in own incorporated business workers'
B08128e25='Private not-for-profit wage and salary workers'
B08128e26='Local government workers'
B08128e27='State government workers'
B08128e28='Federal government workers'
B08128e29='Self-employed in own not incorporated business workers'
B08128e30='Unpaid family workers'
B08128e31='Public transportation (excluding taxicab):'
B08128e32='Private for-profit wage and salary workers:'
B08128e33='Employee of private company workers'
B08128e34='Self-employed in own incorporated business workers'
B08128e35='Private not-for-profit wage and salary workers'
B08128e36='Local government workers'
B08128e37='State government workers'
B08128e38='Federal government workers'
B08128e39='Self-employed in own not incorporated business workers'
B08128e40='Unpaid family workers'
B08128e41='Walked:'
B08128e42='Private for-profit wage and salary workers:'
B08128e43='Employee of private company workers'
B08128e44='Self-employed in own incorporated business workers'
B08128e45='Private not-for-profit wage and salary workers'
B08128e46='Local government workers'
B08128e47='State government workers'
B08128e48='Federal government workers'
B08128e49='Self-employed in own not incorporated business workers'
B08128e50='Unpaid family workers'
B08128e51='Taxicab, motorcycle, bicycle, or other means:'
B08128e52='Private for-profit wage and salary workers:'
B08128e53='Employee of private company workers'
B08128e54='Self-employed in own incorporated business workers'
B08128e55='Private not-for-profit wage and salary workers'
B08128e56='Local government workers'
B08128e57='State government workers'
B08128e58='Federal government workers'
B08128e59='Self-employed in own not incorporated business workers'
B08128e60='Unpaid family workers'
B08128e61='Worked at home:'
B08128e62='Private for-profit wage and salary workers:'
B08128e63='Employee of private company workers'
B08128e64='Self-employed in own incorporated business workers'
B08128e65='Private not-for-profit wage and salary workers'
B08128e66='Local government workers'
B08128e67='State government workers'
B08128e68='Federal government workers'
B08128e69='Self-employed in own not incorporated business workers'
B08128e70='Unpaid family workers'
/*MEANS OF TRANSPORTATION TO WORK BY PLACE OF WORK--STATE AND COUNTY LEVEL */
/*Universe:  Workers 16 years and over */
 
B08130e1='Total:'
B08130e2='Worked in state of residence:'
B08130e3='Worked in county of residence'
B08130e4='Worked outside county of residence'
B08130e5='Worked outside state of residence'
B08130e6='Car, truck, or van - drove alone:'
B08130e7='Worked in state of residence:'
B08130e8='Worked in county of residence'
B08130e9='Worked outside county of residence'
B08130e10='Worked outside state of residence'
B08130e11='Car, truck, or van - carpooled:'
B08130e12='Worked in state of residence:'
B08130e13='Worked in county of residence'
B08130e14='Worked outside county of residence'
B08130e15='Worked outside state of residence'
B08130e16='Public transportation (excluding taxicab):'
B08130e17='Worked in state of residence:'
B08130e18='Worked in county of residence'
B08130e19='Worked outside county of residence'
B08130e20='Worked outside state of residence'
B08130e21='Walked:'
B08130e22='Worked in state of residence:'
B08130e23='Worked in county of residence'
B08130e24='Worked outside county of residence'
B08130e25='Worked outside state of residence'
B08130e26='Taxicab, motorcycle, bicycle, or other means:'
B08130e27='Worked in state of residence:'
B08130e28='Worked in county of residence'
B08130e29='Worked outside county of residence'
B08130e30='Worked outside state of residence'
B08130e31='Worked at home'
/*AGGREGATE TRAVEL TIME TO WORK (IN MINUTES) OF WORKERS BY PLACE OF WORK--STATE AND COUNTY LEVEL */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08131e1='Aggregate travel time to work (in minutes):'
B08131e2='Worked in State of residence:'
B08131e3='Worked in county of residence'
B08131e4='Worked outside county of residence'
B08131e5='Worked outside State of residence'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B08126e1
B08126e2
B08126e3
B08126e4
B08126e5
B08126e6
B08126e7
B08126e8
B08126e9
B08126e10
B08126e11
B08126e12
B08126e13
B08126e14
B08126e15
B08126e16
B08126e17
B08126e18
B08126e19
B08126e20
B08126e21
B08126e22
B08126e23
B08126e24
B08126e25
B08126e26
B08126e27
B08126e28
B08126e29
B08126e30
B08126e31
B08126e32
B08126e33
B08126e34
B08126e35
B08126e36
B08126e37
B08126e38
B08126e39
B08126e40
B08126e41
B08126e42
B08126e43
B08126e44
B08126e45
B08126e46
B08126e47
B08126e48
B08126e49
B08126e50
B08126e51
B08126e52
B08126e53
B08126e54
B08126e55
B08126e56
B08126e57
B08126e58
B08126e59
B08126e60
B08126e61
B08126e62
B08126e63
B08126e64
B08126e65
B08126e66
B08126e67
B08126e68
B08126e69
B08126e70
B08126e71
B08126e72
B08126e73
B08126e74
B08126e75
B08126e76
B08126e77
B08126e78
B08126e79
B08126e80
B08126e81
B08126e82
B08126e83
B08126e84
B08126e85
B08126e86
B08126e87
B08126e88
B08126e89
B08126e90
B08126e91
B08126e92
B08126e93
B08126e94
B08126e95
B08126e96
B08126e97
B08126e98
B08126e99
B08126e100
B08126e101
B08126e102
B08126e103
B08126e104
B08126e105
 
B08128e1
B08128e2
B08128e3
B08128e4
B08128e5
B08128e6
B08128e7
B08128e8
B08128e9
B08128e10
B08128e11
B08128e12
B08128e13
B08128e14
B08128e15
B08128e16
B08128e17
B08128e18
B08128e19
B08128e20
B08128e21
B08128e22
B08128e23
B08128e24
B08128e25
B08128e26
B08128e27
B08128e28
B08128e29
B08128e30
B08128e31
B08128e32
B08128e33
B08128e34
B08128e35
B08128e36
B08128e37
B08128e38
B08128e39
B08128e40
B08128e41
B08128e42
B08128e43
B08128e44
B08128e45
B08128e46
B08128e47
B08128e48
B08128e49
B08128e50
B08128e51
B08128e52
B08128e53
B08128e54
B08128e55
B08128e56
B08128e57
B08128e58
B08128e59
B08128e60
B08128e61
B08128e62
B08128e63
B08128e64
B08128e65
B08128e66
B08128e67
B08128e68
B08128e69
B08128e70
 
B08130e1
B08130e2
B08130e3
B08130e4
B08130e5
B08130e6
B08130e7
B08130e8
B08130e9
B08130e10
B08130e11
B08130e12
B08130e13
B08130e14
B08130e15
B08130e16
B08130e17
B08130e18
B08130e19
B08130e20
B08130e21
B08130e22
B08130e23
B08130e24
B08130e25
B08130e26
B08130e27
B08130e28
B08130e29
B08130e30
B08130e31
 
B08131e1
B08131e2
B08131e3
B08131e4
B08131e5
;
RUN;
TITLE2;
