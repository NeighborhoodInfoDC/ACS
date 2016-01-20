TITLE2 "e20125dc0083000";
DATA work.SFe0083dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0083000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SEX BY CLASS OF WORKER FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over */
 
B24080e1='Total:'
B24080e2='Male:'
B24080e3='Private for-profit wage and salary workers:'
B24080e4='Employee of private company workers'
B24080e5='Self-employed in own incorporated business workers'
B24080e6='Private not-for-profit wage and salary workers'
B24080e7='Local government workers'
B24080e8='State government workers'
B24080e9='Federal government workers'
B24080e10='Self-employed in own not incorporated business workers'
B24080e11='Unpaid family workers'
B24080e12='Female:'
B24080e13='Private for-profit wage and salary workers:'
B24080e14='Employee of private company workers'
B24080e15='Self-employed in own incorporated business workers'
B24080e16='Private not-for-profit wage and salary workers'
B24080e17='Local government workers'
B24080e18='State government workers'
B24080e19='Federal government workers'
B24080e20='Self-employed in own not incorporated business workers'
B24080e21='Unpaid family workers'
/*CLASS OF WORKER  BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over with earnings */
 
B24081e1='Total:'
B24081e2='Private for-profit wage and salary workers:'
B24081e3='Employee of private company workers'
B24081e4='Self-employed in own incorporated business workers'
B24081e5='Private not-for-profit wage and salary workers'
B24081e6='Local government workers'
B24081e7='State government workers'
B24081e8='Federal government workers'
B24081e9='Self-employed in own not incorporated business workers and unpaid family workers'
/*SEX BY CLASS OF WORKER AND MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE  CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over with earnings */
 
B24082e1='Male:'
B24082e2='Private for-profit wage and salary workers:'
B24082e3='Employee of private company workers'
B24082e4='Self-employed in own incorporated business workers'
B24082e5='Private not-for-profit wage and salary workers'
B24082e6='Local government workers'
B24082e7='State government workers'
B24082e8='Federal government workers'
B24082e9='Self-employed in own not incorporated business workers and unpaid family workers'
B24082e10='Female:'
B24082e11='Private for-profit wage and salary workers:'
B24082e12='Employee of private company workers'
B24082e13='Self-employed in own incorporated business workers'
B24082e14='Private not-for-profit wage and salary workers'
B24082e15='Local government workers'
B24082e16='State government workers'
B24082e17='Federal government workers'
B24082e18='Self-employed in own not incorporated business workers and unpaid family workers'
/*SEX BY CLASS OF WORKER FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over */
 
B24090e1='Total:'
B24090e2='Male:'
B24090e3='Private for-profit wage and salary workers:'
B24090e4='Employee of private company workers'
B24090e5='Self-employed in own incorporated business workers'
B24090e6='Private not-for-profit wage and salary workers'
B24090e7='Local government workers'
B24090e8='State government workers'
B24090e9='Federal government workers'
B24090e10='Self-employed in own not incorporated business workers'
B24090e11='Unpaid family workers'
B24090e12='Female:'
B24090e13='Private for-profit wage and salary workers:'
B24090e14='Employee of private company workers'
B24090e15='Self-employed in own incorporated business workers'
B24090e16='Private not-for-profit wage and salary workers'
B24090e17='Local government workers'
B24090e18='State government workers'
B24090e19='Federal government workers'
B24090e20='Self-employed in own not incorporated business workers'
B24090e21='Unpaid family workers'
/*CLASS OF WORKER BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over with earnings */
 
B24091e1='Total:'
B24091e2='Private for-profit wage and salary workers:'
B24091e3='Employee of private company workers'
B24091e4='Self-employed in own incorporated business workers'
B24091e5='Private not-for-profit wage and salary workers'
B24091e6='Local government workers'
B24091e7='State government workers'
B24091e8='Federal government workers'
B24091e9='Self-employed in own not incorporated business workers and unpaid family workers'
/*SEX BY CLASS OF WORKER AND MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over with earnings */
 
B24092e1='Male:'
B24092e2='Private for-profit wage and salary workers:'
B24092e3='Employee of private company workers'
B24092e4='Self-employed in own incorporated business workers'
B24092e5='Private not-for-profit wage and salary workers'
B24092e6='Local government workers'
B24092e7='State government workers'
B24092e8='Federal government workers'
B24092e9='Self-employed in own not incorporated business workers and unpaid family workers'
B24092e10='Female:'
B24092e11='Private for-profit wage and salary workers:'
B24092e12='Employee of private company workers'
B24092e13='Self-employed in own incorporated business workers'
B24092e14='Private not-for-profit wage and salary workers'
B24092e15='Local government workers'
B24092e16='State government workers'
B24092e17='Federal government workers'
B24092e18='Self-employed in own not incorporated business workers and unpaid family workers'
/*OCCUPATION BY CLASS OF WORKER FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over */
 
C24060e1='Total:'
C24060e2='Management, business, science, and arts occupations'
C24060e3='Service occupations'
C24060e4='Sales and office occupations'
C24060e5='Natural resources, construction, and maintenance occupations'
C24060e6='Production, transportation, and material moving occupations'
C24060e7='Employee of private company workers:'
C24060e8='Management, business, science, and arts occupations'
C24060e9='Service occupations'
C24060e10='Sales and office occupations'
C24060e11='Natural resources, construction, and maintenance occupations'
C24060e12='Production, transportation, and material moving occupations'
C24060e13='Self-employed in own incorporated business workers:'
C24060e14='Management, business, science, and arts occupations'
C24060e15='Service occupations'
C24060e16='Sales and office occupations'
C24060e17='Natural resources, construction, and maintenance occupations'
C24060e18='Production, transportation, and material moving occupations'
C24060e19='Private not-for-profit wage and salary workers:'
C24060e20='Management, business, science, and arts occupations'
C24060e21='Service occupations'
C24060e22='Sales and office occupations'
C24060e23='Natural resources, construction, and maintenance occupations'
C24060e24='Production, transportation, and material moving occupations'
C24060e25='Local, state, and federal government workers:'
C24060e26='Management, business, science, and arts occupations'
C24060e27='Service occupations'
C24060e28='Sales and office occupations'
C24060e29='Natural resources, construction, and maintenance occupations'
C24060e30='Production, transportation, and material moving occupations'
C24060e31='Self-employed in own not incorporated business workers and unpaid family workers:'
C24060e32='Management, business, science, and arts occupations'
C24060e33='Service occupations'
C24060e34='Sales and office occupations'
C24060e35='Natural resources, construction, and maintenance occupations'
C24060e36='Production, transportation, and material moving occupations'
/*INDUSTRY BY CLASS OF WORKER FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over */
 
C24070e1='Total:'
C24070e2='Agriculture, forestry, fishing and hunting, and mining:'
C24070e3='Construction'
C24070e4='Manufacturing'
C24070e5='Wholesale trade'
C24070e6='Retail trade'
C24070e7='Transportation and warehousing, and utilities:'
C24070e8='Information'
C24070e9='Finance and insurance, and real estate and rental and leasing:'
C24070e10='Professional, scientific, and management, and administrative and waste management services:'
C24070e11='Educational services, and  health care and social assistance:'
C24070e12='Arts, entertainment, and recreation, and accommodation and food services:'
C24070e13='Other services, except public administration'
C24070e14='Public administration'
C24070e15='Employee of private company workers:'
C24070e16='Agriculture, forestry, fishing and hunting, and mining'
C24070e17='Construction'
C24070e18='Manufacturing'
C24070e19='Wholesale trade'
C24070e20='Retail trade'
C24070e21='Transportation and warehousing, and utilities'
C24070e22='Information'
C24070e23='Finance and insurance, and real estate and rental and leasing'
C24070e24='Professional, scientific, and management, and administrative and waste management services'
C24070e25='Educational services, and  health care and social assistance'
C24070e26='Arts, entertainment, and recreation, and accommodation and food services'
C24070e27='Other services, except public administration'
C24070e28='Public administration'
C24070e29='Self-employed in own incorporated business workers:'
C24070e30='Agriculture, forestry, fishing and hunting, and mining'
C24070e31='Construction'
C24070e32='Manufacturing'
C24070e33='Wholesale trade'
C24070e34='Retail trade'
C24070e35='Transportation and warehousing, and utilities'
C24070e36='Information'
C24070e37='Finance and insurance, and real estate and rental and leasing'
C24070e38='Professional, scientific, and management, and administrative and waste management services'
C24070e39='Educational services, and  health care and social assistance'
C24070e40='Arts, entertainment, and recreation, and accommodation and food services'
C24070e41='Other services, except public administration'
C24070e42='Public administration'
C24070e43='Private not-for-profit wage and salary workers:'
C24070e44='Agriculture, forestry, fishing and hunting, and mining'
C24070e45='Construction'
C24070e46='Manufacturing'
C24070e47='Wholesale trade'
C24070e48='Retail trade'
C24070e49='Transportation and warehousing, and utilities'
C24070e50='Information'
C24070e51='Finance and insurance, and real estate and rental and leasing'
C24070e52='Professional, scientific, and management, and administrative and waste management services'
C24070e53='Educational services, and  health care and social assistance'
C24070e54='Arts, entertainment, and recreation, and accommodation and food services'
C24070e55='Other services, except public administration'
C24070e56='Public administration'
C24070e57='Local, state, and federal government workers:'
C24070e58='Agriculture, forestry, fishing and hunting, and mining'
C24070e59='Construction'
C24070e60='Manufacturing'
C24070e61='Wholesale trade'
C24070e62='Retail trade'
C24070e63='Transportation and warehousing, and utilities'
C24070e64='Information'
C24070e65='Finance and insurance, and real estate and rental and leasing'
C24070e66='Professional, scientific, and management, and administrative and waste management services'
C24070e67='Educational services, and  health care and social assistance'
C24070e68='Arts, entertainment, and recreation, and accommodation and food services'
C24070e69='Other services, except public administration'
C24070e70='Public administration'
C24070e71='Self-employed in own not incorporated business workers and unpaid family workers:'
C24070e72='Agriculture, forestry, fishing and hunting, and mining'
C24070e73='Construction'
C24070e74='Manufacturing'
C24070e75='Wholesale trade'
C24070e76='Retail trade'
C24070e77='Transportation and warehousing, and utilities'
C24070e78='Information'
C24070e79='Finance and insurance, and real estate and rental and leasing'
C24070e80='Professional, scientific, and management, and administrative and waste management services'
C24070e81='Educational services, and  health care and social assistance'
C24070e82='Arts, entertainment, and recreation, and accommodation and food services'
C24070e83='Other services, except public administration'
C24070e84='Public administration'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B24080e1
B24080e2
B24080e3
B24080e4
B24080e5
B24080e6
B24080e7
B24080e8
B24080e9
B24080e10
B24080e11
B24080e12
B24080e13
B24080e14
B24080e15
B24080e16
B24080e17
B24080e18
B24080e19
B24080e20
B24080e21
 
B24081e1
B24081e2
B24081e3
B24081e4
B24081e5
B24081e6
B24081e7
B24081e8
B24081e9
 
B24082e1
B24082e2
B24082e3
B24082e4
B24082e5
B24082e6
B24082e7
B24082e8
B24082e9
B24082e10
B24082e11
B24082e12
B24082e13
B24082e14
B24082e15
B24082e16
B24082e17
B24082e18
 
B24090e1
B24090e2
B24090e3
B24090e4
B24090e5
B24090e6
B24090e7
B24090e8
B24090e9
B24090e10
B24090e11
B24090e12
B24090e13
B24090e14
B24090e15
B24090e16
B24090e17
B24090e18
B24090e19
B24090e20
B24090e21
 
B24091e1
B24091e2
B24091e3
B24091e4
B24091e5
B24091e6
B24091e7
B24091e8
B24091e9
 
B24092e1
B24092e2
B24092e3
B24092e4
B24092e5
B24092e6
B24092e7
B24092e8
B24092e9
B24092e10
B24092e11
B24092e12
B24092e13
B24092e14
B24092e15
B24092e16
B24092e17
B24092e18
 
C24060e1
C24060e2
C24060e3
C24060e4
C24060e5
C24060e6
C24060e7
C24060e8
C24060e9
C24060e10
C24060e11
C24060e12
C24060e13
C24060e14
C24060e15
C24060e16
C24060e17
C24060e18
C24060e19
C24060e20
C24060e21
C24060e22
C24060e23
C24060e24
C24060e25
C24060e26
C24060e27
C24060e28
C24060e29
C24060e30
C24060e31
C24060e32
C24060e33
C24060e34
C24060e35
C24060e36
 
C24070e1
C24070e2
C24070e3
C24070e4
C24070e5
C24070e6
C24070e7
C24070e8
C24070e9
C24070e10
C24070e11
C24070e12
C24070e13
C24070e14
C24070e15
C24070e16
C24070e17
C24070e18
C24070e19
C24070e20
C24070e21
C24070e22
C24070e23
C24070e24
C24070e25
C24070e26
C24070e27
C24070e28
C24070e29
C24070e30
C24070e31
C24070e32
C24070e33
C24070e34
C24070e35
C24070e36
C24070e37
C24070e38
C24070e39
C24070e40
C24070e41
C24070e42
C24070e43
C24070e44
C24070e45
C24070e46
C24070e47
C24070e48
C24070e49
C24070e50
C24070e51
C24070e52
C24070e53
C24070e54
C24070e55
C24070e56
C24070e57
C24070e58
C24070e59
C24070e60
C24070e61
C24070e62
C24070e63
C24070e64
C24070e65
C24070e66
C24070e67
C24070e68
C24070e69
C24070e70
C24070e71
C24070e72
C24070e73
C24070e74
C24070e75
C24070e76
C24070e77
C24070e78
C24070e79
C24070e80
C24070e81
C24070e82
C24070e83
C24070e84
;
RUN;
TITLE2;
