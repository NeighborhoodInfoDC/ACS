TITLE2 "e20125md0031000";
DATA work.SFe0031md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0031000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*MEANS OF TRANSPORTATION TO WORK BY INDUSTRY FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B08526e1='Total:'
B08526e2='Agriculture, forestry, fishing and hunting, and mining'
B08526e3='Construction'
B08526e4='Manufacturing'
B08526e5='Wholesale trade'
B08526e6='Retail trade'
B08526e7='Transportation and warehousing, and utilities'
B08526e8='Information'
B08526e9='Finance and insurance, and real estate and rental and leasing'
B08526e10='Professional, scientific, and management, and administrative and waste management services'
B08526e11='Educational services, and health care and social assistance'
B08526e12='Arts, entertainment, and recreation, and accommodation and food services'
B08526e13='Other services (except public administration)'
B08526e14='Public administration'
B08526e15='Armed forces'
B08526e16='Car, truck, or van - drove alone:'
B08526e17='Agriculture, forestry, fishing and hunting, and mining'
B08526e18='Construction'
B08526e19='Manufacturing'
B08526e20='Wholesale trade'
B08526e21='Retail trade'
B08526e22='Transportation and warehousing, and utilities'
B08526e23='Information'
B08526e24='Finance and insurance, and real estate and rental and leasing'
B08526e25='Professional, scientific, and management, and administrative and waste management services'
B08526e26='Educational services, and health care and social assistance'
B08526e27='Arts, entertainment, and recreation, and accommodation and food services'
B08526e28='Other services (except public administration)'
B08526e29='Public administration'
B08526e30='Armed forces'
B08526e31='Car, truck, or van - carpooled:'
B08526e32='Agriculture, forestry, fishing and hunting, and mining'
B08526e33='Construction'
B08526e34='Manufacturing'
B08526e35='Wholesale trade'
B08526e36='Retail trade'
B08526e37='Transportation and warehousing, and utilities'
B08526e38='Information'
B08526e39='Finance and insurance, and real estate and rental and leasing'
B08526e40='Professional, scientific, and management, and administrative and waste management services'
B08526e41='Educational services, and health care and social assistance'
B08526e42='Arts, entertainment, and recreation, and accommodation and food services'
B08526e43='Other services (except public administration)'
B08526e44='Public administration'
B08526e45='Armed forces'
B08526e46='Public transportation (excluding taxicab):'
B08526e47='Agriculture, forestry, fishing and hunting, and mining'
B08526e48='Construction'
B08526e49='Manufacturing'
B08526e50='Wholesale trade'
B08526e51='Retail trade'
B08526e52='Transportation and warehousing, and utilities'
B08526e53='Information'
B08526e54='Finance and insurance, and real estate and rental and leasing'
B08526e55='Professional, scientific, and management, and administrative and waste management services'
B08526e56='Educational services, and health care and social assistance'
B08526e57='Arts, entertainment, and recreation, and accommodation and food services'
B08526e58='Other services (except public administration)'
B08526e59='Public administration'
B08526e60='Armed forces'
B08526e61='Walked:'
B08526e62='Agriculture, forestry, fishing and hunting, and mining'
B08526e63='Construction'
B08526e64='Manufacturing'
B08526e65='Wholesale trade'
B08526e66='Retail trade'
B08526e67='Transportation and warehousing, and utilities'
B08526e68='Information'
B08526e69='Finance and insurance, and real estate and rental and leasing'
B08526e70='Professional, scientific, and management, and administrative and waste management services'
B08526e71='Educational services, and health care and social assistance'
B08526e72='Arts, entertainment, and recreation, and accommodation and food services'
B08526e73='Other services (except public administration)'
B08526e74='Public administration'
B08526e75='Armed forces'
B08526e76='Taxicab, motorcycle, bicycle, or other means:'
B08526e77='Agriculture, forestry, fishing and hunting, and mining'
B08526e78='Construction'
B08526e79='Manufacturing'
B08526e80='Wholesale trade'
B08526e81='Retail trade'
B08526e82='Transportation and warehousing, and utilities'
B08526e83='Information'
B08526e84='Finance and insurance, and real estate and rental and leasing'
B08526e85='Professional, scientific, and management, and administrative and waste management services'
B08526e86='Educational services, and health care and social assistance'
B08526e87='Arts, entertainment, and recreation, and accommodation and food services'
B08526e88='Other services (except public administration)'
B08526e89='Public administration'
B08526e90='Armed forces'
B08526e91='Worked at home:'
B08526e92='Agriculture, forestry, fishing and hunting, and mining'
B08526e93='Construction'
B08526e94='Manufacturing'
B08526e95='Wholesale trade'
B08526e96='Retail trade'
B08526e97='Transportation and warehousing, and utilities'
B08526e98='Information'
B08526e99='Finance and insurance, and real estate and rental and leasing'
B08526e100='Professional, scientific, and management, and administrative and waste management services'
B08526e101='Educational services, and health care and social assistance'
B08526e102='Arts, entertainment, and recreation, and accommodation and food services'
B08526e103='Other services (except public administration)'
B08526e104='Public administration'
B08526e105='Armed forces'
/*MEANS OF TRANSPORTATION TO WORK BY CLASS OF WORKER FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B08528e1='Total:'
B08528e2='Private for-profit wage and salary workers:'
B08528e3='Employee of private company workers'
B08528e4='Self-employed in own incorporated business workers'
B08528e5='Private not-for-profit wage and salary workers'
B08528e6='Local government workers'
B08528e7='State government workers'
B08528e8='Federal government workers'
B08528e9='Self-employed in own not incorporated business workers'
B08528e10='Unpaid family workers'
B08528e11='Car, truck, or van - drove alone:'
B08528e12='Private for-profit wage and salary workers:'
B08528e13='Employee of private company workers'
B08528e14='Self-employed in own incorporated business workers'
B08528e15='Private not-for-profit wage and salary workers'
B08528e16='Local government workers'
B08528e17='State government workers'
B08528e18='Federal government workers'
B08528e19='Self-employed in own not incorporated business workers'
B08528e20='Unpaid family workers'
B08528e21='Car, truck, or van - carpooled:'
B08528e22='Private for-profit wage and salary workers:'
B08528e23='Employee of private company workers'
B08528e24='Self-employed in own incorporated business workers'
B08528e25='Private not-for-profit wage and salary workers'
B08528e26='Local government workers'
B08528e27='State government workers'
B08528e28='Federal government workers'
B08528e29='Self-employed in own not incorporated business workers'
B08528e30='Unpaid family workers'
B08528e31='Public transportation (excluding taxicab):'
B08528e32='Private for-profit wage and salary workers:'
B08528e33='Employee of private company workers'
B08528e34='Self-employed in own incorporated business workers'
B08528e35='Private not-for-profit wage and salary workers'
B08528e36='Local government workers'
B08528e37='State government workers'
B08528e38='Federal government workers'
B08528e39='Self-employed in own not incorporated business workers'
B08528e40='Unpaid family workers'
B08528e41='Walked:'
B08528e42='Private for-profit wage and salary workers:'
B08528e43='Employee of private company workers'
B08528e44='Self-employed in own incorporated business workers'
B08528e45='Private not-for-profit wage and salary workers'
B08528e46='Local government workers'
B08528e47='State government workers'
B08528e48='Federal government workers'
B08528e49='Self-employed in own not incorporated business workers'
B08528e50='Unpaid family workers'
B08528e51='Taxicab, motorcycle, bicycle, or other means:'
B08528e52='Private for-profit wage and salary workers:'
B08528e53='Employee of private company workers'
B08528e54='Self-employed in own incorporated business workers'
B08528e55='Private not-for-profit wage and salary workers'
B08528e56='Local government workers'
B08528e57='State government workers'
B08528e58='Federal government workers'
B08528e59='Self-employed in own not incorporated business workers'
B08528e60='Unpaid family workers'
B08528e61='Worked at home:'
B08528e62='Private for-profit wage and salary workers:'
B08528e63='Employee of private company workers'
B08528e64='Self-employed in own incorporated business workers'
B08528e65='Private not-for-profit wage and salary workers'
B08528e66='Local government workers'
B08528e67='State government workers'
B08528e68='Federal government workers'
B08528e69='Self-employed in own not incorporated business workers'
B08528e70='Unpaid family workers'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B08526e1
B08526e2
B08526e3
B08526e4
B08526e5
B08526e6
B08526e7
B08526e8
B08526e9
B08526e10
B08526e11
B08526e12
B08526e13
B08526e14
B08526e15
B08526e16
B08526e17
B08526e18
B08526e19
B08526e20
B08526e21
B08526e22
B08526e23
B08526e24
B08526e25
B08526e26
B08526e27
B08526e28
B08526e29
B08526e30
B08526e31
B08526e32
B08526e33
B08526e34
B08526e35
B08526e36
B08526e37
B08526e38
B08526e39
B08526e40
B08526e41
B08526e42
B08526e43
B08526e44
B08526e45
B08526e46
B08526e47
B08526e48
B08526e49
B08526e50
B08526e51
B08526e52
B08526e53
B08526e54
B08526e55
B08526e56
B08526e57
B08526e58
B08526e59
B08526e60
B08526e61
B08526e62
B08526e63
B08526e64
B08526e65
B08526e66
B08526e67
B08526e68
B08526e69
B08526e70
B08526e71
B08526e72
B08526e73
B08526e74
B08526e75
B08526e76
B08526e77
B08526e78
B08526e79
B08526e80
B08526e81
B08526e82
B08526e83
B08526e84
B08526e85
B08526e86
B08526e87
B08526e88
B08526e89
B08526e90
B08526e91
B08526e92
B08526e93
B08526e94
B08526e95
B08526e96
B08526e97
B08526e98
B08526e99
B08526e100
B08526e101
B08526e102
B08526e103
B08526e104
B08526e105
 
B08528e1
B08528e2
B08528e3
B08528e4
B08528e5
B08528e6
B08528e7
B08528e8
B08528e9
B08528e10
B08528e11
B08528e12
B08528e13
B08528e14
B08528e15
B08528e16
B08528e17
B08528e18
B08528e19
B08528e20
B08528e21
B08528e22
B08528e23
B08528e24
B08528e25
B08528e26
B08528e27
B08528e28
B08528e29
B08528e30
B08528e31
B08528e32
B08528e33
B08528e34
B08528e35
B08528e36
B08528e37
B08528e38
B08528e39
B08528e40
B08528e41
B08528e42
B08528e43
B08528e44
B08528e45
B08528e46
B08528e47
B08528e48
B08528e49
B08528e50
B08528e51
B08528e52
B08528e53
B08528e54
B08528e55
B08528e56
B08528e57
B08528e58
B08528e59
B08528e60
B08528e61
B08528e62
B08528e63
B08528e64
B08528e65
B08528e66
B08528e67
B08528e68
B08528e69
B08528e70
;
RUN;
TITLE2;
