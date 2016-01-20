TITLE2 "e20115dc0079000";
DATA work.SFe0079dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0079000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*INDUSTRY BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over with earnings */
 
B24041e1='Total:'
B24041e2='Agriculture, forestry, fishing and hunting, and mining:'
B24041e3='Agriculture, forestry, fishing and hunting'
B24041e4='Mining, quarrying, and oil and gas extraction'
B24041e5='Construction'
B24041e6='Manufacturing'
B24041e7='Wholesale trade'
B24041e8='Retail trade'
B24041e9='Transportation and warehousing, and utilities:'
B24041e10='Transportation and warehousing'
B24041e11='Utilities'
B24041e12='Information'
B24041e13='Finance and insurance, and real estate and rental and leasing:'
B24041e14='Finance and insurance'
B24041e15='Real estate and rental and leasing'
B24041e16='Professional, scientific, and management, and administrative and waste management services:'
B24041e17='Professional, scientific, and technical services'
B24041e18='Management of companies and enterprises'
B24041e19='Administrative and support and waste management services'
B24041e20='Educational services, and health care and social assistance:'
B24041e21='Educational services'
B24041e22='Health care and social assistance'
B24041e23='Arts, entertainment, and recreation, and accommodation and food services:'
B24041e24='Arts, entertainment, and recreation'
B24041e25='Accommodation and food services'
B24041e26='Other services except public administration'
B24041e27='Public administration'
 
/*SEX BY INDUSTRY AND MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over with earnings */
 
B24042e1='Male:'
B24042e2='Agriculture, forestry, fishing and hunting, and mining:'
B24042e3='Agriculture, forestry, fishing and hunting'
B24042e4='Mining, quarrying, and oil and gas extraction'
B24042e5='Construction'
B24042e6='Manufacturing'
B24042e7='Wholesale trade'
B24042e8='Retail trade'
B24042e9='Transportation and warehousing, and utilities:'
B24042e10='Transportation and warehousing'
B24042e11='Utilities'
B24042e12='Information'
B24042e13='Finance and insurance, and real estate and rental and leasing:'
B24042e14='Finance and insurance'
B24042e15='Real estate and rental and leasing'
B24042e16='Professional, scientific, and management, and administrative and waste management services:'
B24042e17='Professional, scientific, and technical services'
B24042e18='Management of companies and enterprises'
B24042e19='Administrative and support and waste management services'
B24042e20='Educational services, and health care and social assistance:'
B24042e21='Educational services'
B24042e22='Health care and social assistance'
B24042e23='Arts, entertainment, and recreation, and accommodation and food services:'
B24042e24='Arts, entertainment, and recreation'
B24042e25='Accommodation and food services'
B24042e26='Other services, except public administration'
B24042e27='Public administration'
B24042e28='Female:'
B24042e29='Agriculture, forestry, fishing and hunting, and mining:'
B24042e30='Agriculture, forestry, fishing and hunting'
B24042e31='Mining, quarrying, and oil and gas extraction'
B24042e32='Construction'
B24042e33='Manufacturing'
B24042e34='Wholesale trade'
B24042e35='Retail trade'
B24042e36='Transportation and warehousing, and utilities:'
B24042e37='Transportation and warehousing'
B24042e38='Utilities'
B24042e39='Information'
B24042e40='Finance and insurance, and real estate and rental and leasing:'
B24042e41='Finance and insurance'
B24042e42='Real estate and rental and leasing'
B24042e43='Professional, scientific, and management, and administrative and waste management services:'
B24042e44='Professional, scientific, and technical services'
B24042e45='Management of companies and enterprises'
B24042e46='Administrative and support and waste management services'
B24042e47='Educational services, and health care and social assistance:'
B24042e48='Educational services'
B24042e49='Health care and social assistance'
B24042e50='Arts, entertainment, and recreation, and accommodation and food services:'
B24042e51='Arts, entertainment, and recreation'
B24042e52='Accommodation and food services'
B24042e53='Other services, except public administration'
B24042e54='Public administration'
 
/*SEX BY INDUSTRY FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over */
 
C24040e1='Total:'
C24040e2='Male:'
C24040e3='Agriculture, forestry, fishing and hunting, and mining:'
C24040e4='Agriculture, forestry, fishing and hunting'
C24040e5='Mining, quarrying, and oil and gas extraction'
C24040e6='Construction'
C24040e7='Manufacturing'
C24040e8='Wholesale trade'
C24040e9='Retail trade'
C24040e10='Transportation and warehousing, and utilities:'
C24040e11='Transportation and warehousing'
C24040e12='Utilities'
C24040e13='Information'
C24040e14='Finance and insurance, and real estate and rental and leasing:'
C24040e15='Finance and insurance'
C24040e16='Real estate and rental and leasing'
C24040e17='Professional, scientific, and management, and administrative and waste management services:'
C24040e18='Professional, scientific, and technical services'
C24040e19='Management of companies and enterprises'
C24040e20='Administrative and support and waste management services'
C24040e21='Educational services, and health care and social assistance:'
C24040e22='Educational services'
C24040e23='Health care and social assistance'
C24040e24='Arts, entertainment, and recreation, and accommodation and food services:'
C24040e25='Arts, entertainment, and recreation'
C24040e26='Accommodation and food services'
C24040e27='Other services, except public administration'
C24040e28='Public administration'
C24040e29='Female:'
C24040e30='Agriculture, forestry, fishing and hunting, and mining:'
C24040e31='Agriculture, forestry, fishing and hunting'
C24040e32='Mining, quarrying, and oil and gas extraction'
C24040e33='Construction'
C24040e34='Manufacturing'
C24040e35='Wholesale trade'
C24040e36='Retail trade'
C24040e37='Transportation and warehousing, and utilities:'
C24040e38='Transportation and warehousing'
C24040e39='Utilities'
C24040e40='Information'
C24040e41='Finance and insurance, and real estate and rental and leasing:'
C24040e42='Finance and insurance'
C24040e43='Real estate and rental and leasing'
C24040e44='Professional, scientific, and management, and administrative and waste management services:'
C24040e45='Professional, scientific, and technical services'
C24040e46='Management of companies and enterprises'
C24040e47='Administrative and support and waste management services'
C24040e48='Educational services, and health care and social assistance:'
C24040e49='Educational services'
C24040e50='Health care and social assistance'
C24040e51='Arts, entertainment, and recreation, and accommodation and food services:'
C24040e52='Arts, entertainment, and recreation'
C24040e53='Accommodation and food services'
C24040e54='Other services, except public administration'
C24040e55='Public administration'
 
/*INDUSTRY BY OCCUPATION FOR THE CIVILIAN  EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over */
 
C24050e1='Total:'
C24050e2='Agriculture, forestry, fishing and hunting, and mining'
C24050e3='Construction'
C24050e4='Manufacturing'
C24050e5='Wholesale trade'
C24050e6='Retail trade'
C24050e7='Transportation and warehousing, and utilities'
C24050e8='Information'
C24050e9='Finance and insurance, and real estate and rental and leasing'
C24050e10='Professional, scientific, and management, and administrative and waste management services'
C24050e11='Educational services, and health care and social assistance'
C24050e12='Arts, entertainment, and recreation, and accommodation and food services'
C24050e13='Other services, except public administration'
C24050e14='Public administration'
C24050e15='Management, business, science, and arts occupations:'
C24050e16='Agriculture, forestry, fishing and hunting, and mining'
C24050e17='Construction'
C24050e18='Manufacturing'
C24050e19='Wholesale trade'
C24050e20='Retail trade'
C24050e21='Transportation and warehousing, and utilities'
C24050e22='Information'
C24050e23='Finance and insurance, and real estate and rental and leasing'
C24050e24='Professional, scientific, and management, and administrative and waste management services'
C24050e25='Educational services, and health care and social assistance'
C24050e26='Arts, entertainment, and recreation, and accommodation and food services'
C24050e27='Other services, except public administration'
C24050e28='Public administration'
C24050e29='Service occupations:'
C24050e30='Agriculture, forestry, fishing and hunting, and mining'
C24050e31='Construction'
C24050e32='Manufacturing'
C24050e33='Wholesale trade'
C24050e34='Retail trade'
C24050e35='Transportation and warehousing, and utilities'
C24050e36='Information'
C24050e37='Finance and insurance, and real estate and rental and leasing'
C24050e38='Professional, scientific, and management, and administrative and waste management services'
C24050e39='Educational services, and health care and social assistance'
C24050e40='Arts, entertainment, and recreation, and accommodation and food services'
C24050e41='Other services, except public administration'
C24050e42='Public administration'
C24050e43='Sales and office occupations:'
C24050e44='Agriculture, forestry, fishing and hunting, and mining'
C24050e45='Construction'
C24050e46='Manufacturing'
C24050e47='Wholesale trade'
C24050e48='Retail trade'
C24050e49='Transportation and warehousing, and utilities'
C24050e50='Information'
C24050e51='Finance and insurance, and real estate and rental and leasing'
C24050e52='Professional, scientific, and management, and administrative and waste management services'
C24050e53='Educational services, and health care and social assistance'
C24050e54='Arts, entertainment, and recreation, and accommodation and food services'
C24050e55='Other services, except public administration'
C24050e56='Public administration'
C24050e57='Natural resources, construction, and maintenance occupations:'
C24050e58='Agriculture, forestry, fishing and hunting, and mining'
C24050e59='Construction'
C24050e60='Manufacturing'
C24050e61='Wholesale trade'
C24050e62='Retail trade'
C24050e63='Transportation and warehousing, and utilities'
C24050e64='Information'
C24050e65='Finance and insurance, and real estate and rental and leasing'
C24050e66='Professional, scientific, and management, and administrative and waste management services'
C24050e67='Educational services, and health care and social assistance'
C24050e68='Arts, entertainment, and recreation, and accommodation and food services'
C24050e69='Other services, except public administration'
C24050e70='Public administration'
C24050e71='Production, transportation, and material moving occupations:'
C24050e72='Agriculture, forestry, fishing and hunting, and mining'
C24050e73='Construction'
C24050e74='Manufacturing'
C24050e75='Wholesale trade'
C24050e76='Retail trade'
C24050e77='Transportation and warehousing, and utilities'
C24050e78='Information'
C24050e79='Finance and insurance, and real estate and rental and leasing'
C24050e80='Professional, scientific, and management, and administrative and waste management services'
C24050e81='Educational services, and health care and social assistance'
C24050e82='Arts, entertainment, and recreation, and accommodation and food services'
C24050e83='Other services, except public administration'
C24050e84='Public administration'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B24041e1
B24041e2
B24041e3
B24041e4
B24041e5
B24041e6
B24041e7
B24041e8
B24041e9
B24041e10
B24041e11
B24041e12
B24041e13
B24041e14
B24041e15
B24041e16
B24041e17
B24041e18
B24041e19
B24041e20
B24041e21
B24041e22
B24041e23
B24041e24
B24041e25
B24041e26
B24041e27
 
B24042e1
B24042e2
B24042e3
B24042e4
B24042e5
B24042e6
B24042e7
B24042e8
B24042e9
B24042e10
B24042e11
B24042e12
B24042e13
B24042e14
B24042e15
B24042e16
B24042e17
B24042e18
B24042e19
B24042e20
B24042e21
B24042e22
B24042e23
B24042e24
B24042e25
B24042e26
B24042e27
B24042e28
B24042e29
B24042e30
B24042e31
B24042e32
B24042e33
B24042e34
B24042e35
B24042e36
B24042e37
B24042e38
B24042e39
B24042e40
B24042e41
B24042e42
B24042e43
B24042e44
B24042e45
B24042e46
B24042e47
B24042e48
B24042e49
B24042e50
B24042e51
B24042e52
B24042e53
B24042e54
 
C24040e1
C24040e2
C24040e3
C24040e4
C24040e5
C24040e6
C24040e7
C24040e8
C24040e9
C24040e10
C24040e11
C24040e12
C24040e13
C24040e14
C24040e15
C24040e16
C24040e17
C24040e18
C24040e19
C24040e20
C24040e21
C24040e22
C24040e23
C24040e24
C24040e25
C24040e26
C24040e27
C24040e28
C24040e29
C24040e30
C24040e31
C24040e32
C24040e33
C24040e34
C24040e35
C24040e36
C24040e37
C24040e38
C24040e39
C24040e40
C24040e41
C24040e42
C24040e43
C24040e44
C24040e45
C24040e46
C24040e47
C24040e48
C24040e49
C24040e50
C24040e51
C24040e52
C24040e53
C24040e54
C24040e55
 
C24050e1
C24050e2
C24050e3
C24050e4
C24050e5
C24050e6
C24050e7
C24050e8
C24050e9
C24050e10
C24050e11
C24050e12
C24050e13
C24050e14
C24050e15
C24050e16
C24050e17
C24050e18
C24050e19
C24050e20
C24050e21
C24050e22
C24050e23
C24050e24
C24050e25
C24050e26
C24050e27
C24050e28
C24050e29
C24050e30
C24050e31
C24050e32
C24050e33
C24050e34
C24050e35
C24050e36
C24050e37
C24050e38
C24050e39
C24050e40
C24050e41
C24050e42
C24050e43
C24050e44
C24050e45
C24050e46
C24050e47
C24050e48
C24050e49
C24050e50
C24050e51
C24050e52
C24050e53
C24050e54
C24050e55
C24050e56
C24050e57
C24050e58
C24050e59
C24050e60
C24050e61
C24050e62
C24050e63
C24050e64
C24050e65
C24050e66
C24050e67
C24050e68
C24050e69
C24050e70
C24050e71
C24050e72
C24050e73
C24050e74
C24050e75
C24050e76
C24050e77
C24050e78
C24050e79
C24050e80
C24050e81
C24050e82
C24050e83
C24050e84
;
RUN;
TITLE2;
