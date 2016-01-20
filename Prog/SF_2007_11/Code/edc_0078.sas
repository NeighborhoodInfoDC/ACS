TITLE2 "e20115dc0078000";
DATA work.SFe0078dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0078000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*SEX BY OCCUPATION AND MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over with earnings */
 
B24022e1='Total:'
B24022e2='Male:'
B24022e3='Management, business, science, and arts occupations:'
B24022e4='Management, business, and financial occupations:'
B24022e5='Management occupations'
B24022e6='Business and financial operations occupations'
B24022e7='Computer, engineering, and science occupations:'
B24022e8='Computer and mathematical occupations'
B24022e9='Architecture and engineering occupations'
B24022e10='Life, physical, and social science occupations'
B24022e11='Education, legal, community service, arts, and media occupations:'
B24022e12='Community and social service occupations'
B24022e13='Legal occupations'
B24022e14='Education, training, and library occupations'
B24022e15='Arts, design, entertainment, sports, and media occupations'
B24022e16='Healthcare practitioners and technical occupations:'
B24022e17='Health diagnosing and treating practitioners and other technical occupations'
B24022e18='Health technologists and technicians'
B24022e19='Service occupations:'
B24022e20='Healthcare support occupations'
B24022e21='Protective service occupations:'
B24022e22='Fire fighting and prevention, and other protective service workers including supervisors'
B24022e23='Law enforcement workers including supervisors'
B24022e24='Food preparation and serving related occupations'
B24022e25='Building and grounds cleaning and maintenance occupations'
B24022e26='Personal care and service occupations'
B24022e27='Sales and office occupations:'
B24022e28='Sales and related occupations'
B24022e29='Office and administrative support occupations'
B24022e30='Natural resources, construction, and maintenance occupations:'
B24022e31='Farming, fishing, and forestry occupations'
B24022e32='Construction and extraction occupations'
B24022e33='Installation, maintenance, and repair occupations'
B24022e34='Production, transportation, and material moving occupations:'
B24022e35='Production occupations'
B24022e36='Transportation occupations'
B24022e37='Material moving occupations'
B24022e38='Female:'
B24022e39='Management, business, science, and arts occupations:'
B24022e40='Management, business, and financial occupations:'
B24022e41='Management occupations'
B24022e42='Business and financial operations occupations'
B24022e43='Computer, engineering, and science occupations:'
B24022e44='Computer and mathematical occupations'
B24022e45='Architecture and engineering occupations'
B24022e46='Life, physical, and social science occupations'
B24022e47='Education, legal, community service, arts, and media occupations:'
B24022e48='Community and social service occupations'
B24022e49='Legal occupations'
B24022e50='Education, training, and library occupations'
B24022e51='Arts, design, entertainment, sports, and media occupations'
B24022e52='Healthcare practitioners and technical occupations:'
B24022e53='Health diagnosing and treating practitioners and other technical occupations'
B24022e54='Health technologists and technicians'
B24022e55='Service occupations:'
B24022e56='Healthcare support occupations'
B24022e57='Protective service occupations:'
B24022e58='Fire fighting and prevention, and other protective service workers including supervisors'
B24022e59='Law enforcement workers including supervisors'
B24022e60='Food preparation and serving related occupations'
B24022e61='Building and grounds cleaning and maintenance occupations'
B24022e62='Personal care and service occupations'
B24022e63='Sales and office occupations:'
B24022e64='Sales and related occupations'
B24022e65='Office and administrative support occupations'
B24022e66='Natural resources, construction, and maintenance occupations:'
B24022e67='Farming, fishing, and forestry occupations'
B24022e68='Construction and extraction occupations'
B24022e69='Installation, maintenance, and repair occupations'
B24022e70='Production, transportation, and material moving occupations:'
B24022e71='Production occupations'
B24022e72='Transportation occupations'
B24022e73='Material moving occupations'
 
/*INDUSTRY BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over with earnings */
 
B24031e1='Total:'
B24031e2='Agriculture, forestry, fishing and hunting, and mining:'
B24031e3='Agriculture, forestry, fishing and hunting'
B24031e4='Mining, quarrying, and oil and gas extraction'
B24031e5='Construction'
B24031e6='Manufacturing'
B24031e7='Wholesale trade'
B24031e8='Retail trade'
B24031e9='Transportation and warehousing, and utilities:'
B24031e10='Transportation and warehousing'
B24031e11='Utilities'
B24031e12='Information'
B24031e13='Finance and insurance, and real estate and rental and leasing:'
B24031e14='Finance and insurance'
B24031e15='Real estate and rental and leasing'
B24031e16='Professional, scientific, and management, and administrative and waste management services:'
B24031e17='Professional, scientific, and technical services'
B24031e18='Management of companies and enterprises'
B24031e19='Administrative and support and waste management services'
B24031e20='Educational services, and health care and social assistance:'
B24031e21='Educational services'
B24031e22='Health care and social assistance'
B24031e23='Arts, entertainment, and recreation, and accommodations and food services'
B24031e24='Arts, entertainment, and recreation'
B24031e25='Accommodation and food services'
B24031e26='Other services except public administration'
B24031e27='Public administration'
 
/*SEX BY INDUSTRY AND MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over with earnings */
 
B24032e1='Male:'
B24032e2='Agriculture, forestry, fishing and hunting, and mining:'
B24032e3='Agriculture, forestry, fishing and hunting'
B24032e4='Mining, quarrying, and oil and gas extraction'
B24032e5='Construction'
B24032e6='Manufacturing'
B24032e7='Wholesale trade'
B24032e8='Retail trade'
B24032e9='Transportation and warehousing, and utilities:'
B24032e10='Transportation and warehousing'
B24032e11='Utilities'
B24032e12='Information'
B24032e13='Finance and insurance, and real estate and rental and leasing:'
B24032e14='Finance and insurance'
B24032e15='Real estate and rental and leasing'
B24032e16='Professional, scientific, and management, and administrative and waste management services:'
B24032e17='Professional, scientific, and technical services'
B24032e18='Management of companies and enterprises'
B24032e19='Administrative and support and waste management services'
B24032e20='Educational services, and health care and social assistance:'
B24032e21='Educational services'
B24032e22='Health care and social assistance'
B24032e23='Arts, entertainment, and recreation, and accommodations and food services'
B24032e24='Arts, entertainment, and recreation'
B24032e25='Accommodation and food services'
B24032e26='Other services except public administration'
B24032e27='Public administration'
B24032e28='Female:'
B24032e29='Agriculture, forestry, fishing and hunting, and mining:'
B24032e30='Agriculture, forestry, fishing and hunting'
B24032e31='Mining, quarrying, and oil and gas extraction'
B24032e32='Construction'
B24032e33='Manufacturing'
B24032e34='Wholesale trade'
B24032e35='Retail trade'
B24032e36='Transportation and warehousing, and utilities:'
B24032e37='Transportation and warehousing'
B24032e38='Utilities'
B24032e39='Information'
B24032e40='Finance and insurance, and real estate and rental and leasing:'
B24032e41='Finance and insurance'
B24032e42='Real estate and rental and leasing'
B24032e43='Professional, scientific, and management, and administrative and waste management services:'
B24032e44='Professional, scientific, and technical services'
B24032e45='Management of companies and enterprises'
B24032e46='Administrative and support and waste management services'
B24032e47='Educational services, and health care and social assistance:'
B24032e48='Educational services'
B24032e49='Health care and social assistance'
B24032e50='Arts, entertainment, and recreation, and accommodations and food services'
B24032e51='Arts, entertainment, and recreation'
B24032e52='Accommodation and food services'
B24032e53='Other services except public administration'
B24032e54='Public administration'
 
/*SEX BY INDUSTRY FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over */
 
C24030e1='Total:'
C24030e2='Male:'
C24030e3='Agriculture, forestry, fishing and hunting, and mining:'
C24030e4='Agriculture, forestry, fishing and hunting'
C24030e5='Mining, quarrying, and oil and gas extraction'
C24030e6='Construction'
C24030e7='Manufacturing'
C24030e8='Wholesale trade'
C24030e9='Retail trade'
C24030e10='Transportation and warehousing, and utilities:'
C24030e11='Transportation and warehousing'
C24030e12='Utilities'
C24030e13='Information'
C24030e14='Finance and insurance, and real estate and rental and leasing:'
C24030e15='Finance and insurance'
C24030e16='Real estate and rental and leasing'
C24030e17='Professional, scientific, and management, and administrative and waste management services:'
C24030e18='Professional, scientific, and technical services'
C24030e19='Management of companies and enterprises'
C24030e20='Administrative and support and waste management services'
C24030e21='Educational services, and health care and social assistance:'
C24030e22='Educational services'
C24030e23='Health care and social assistance'
C24030e24='Arts, entertainment, and recreation, and accommodation and food services:'
C24030e25='Arts, entertainment, and recreation'
C24030e26='Accommodation and food services'
C24030e27='Other services, except public administration'
C24030e28='Public administration'
C24030e29='Female:'
C24030e30='Agriculture, forestry, fishing and hunting, and mining:'
C24030e31='Agriculture, forestry, fishing and hunting'
C24030e32='Mining, quarrying, and oil and gas extraction'
C24030e33='Construction'
C24030e34='Manufacturing'
C24030e35='Wholesale trade'
C24030e36='Retail trade'
C24030e37='Transportation and warehousing, and utilities:'
C24030e38='Transportation and warehousing'
C24030e39='Utilities'
C24030e40='Information'
C24030e41='Finance and insurance, and real estate and rental and leasing:'
C24030e42='Finance and insurance'
C24030e43='Real estate and rental and leasing'
C24030e44='Professional, scientific, and management, and administrative and waste management services:'
C24030e45='Professional, scientific, and technical services'
C24030e46='Management of companies and enterprises'
C24030e47='Administrative and support and waste management services'
C24030e48='Educational services, and health care and social assistance:'
C24030e49='Educational services'
C24030e50='Health care and social assistance'
C24030e51='Arts, entertainment, and recreation, and accommodation and food services:'
C24030e52='Arts, entertainment, and recreation'
C24030e53='Accommodation and food services'
C24030e54='Other services, except public administration'
C24030e55='Public administration'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B24022e1
B24022e2
B24022e3
B24022e4
B24022e5
B24022e6
B24022e7
B24022e8
B24022e9
B24022e10
B24022e11
B24022e12
B24022e13
B24022e14
B24022e15
B24022e16
B24022e17
B24022e18
B24022e19
B24022e20
B24022e21
B24022e22
B24022e23
B24022e24
B24022e25
B24022e26
B24022e27
B24022e28
B24022e29
B24022e30
B24022e31
B24022e32
B24022e33
B24022e34
B24022e35
B24022e36
B24022e37
B24022e38
B24022e39
B24022e40
B24022e41
B24022e42
B24022e43
B24022e44
B24022e45
B24022e46
B24022e47
B24022e48
B24022e49
B24022e50
B24022e51
B24022e52
B24022e53
B24022e54
B24022e55
B24022e56
B24022e57
B24022e58
B24022e59
B24022e60
B24022e61
B24022e62
B24022e63
B24022e64
B24022e65
B24022e66
B24022e67
B24022e68
B24022e69
B24022e70
B24022e71
B24022e72
B24022e73
 
B24031e1
B24031e2
B24031e3
B24031e4
B24031e5
B24031e6
B24031e7
B24031e8
B24031e9
B24031e10
B24031e11
B24031e12
B24031e13
B24031e14
B24031e15
B24031e16
B24031e17
B24031e18
B24031e19
B24031e20
B24031e21
B24031e22
B24031e23
B24031e24
B24031e25
B24031e26
B24031e27
 
B24032e1
B24032e2
B24032e3
B24032e4
B24032e5
B24032e6
B24032e7
B24032e8
B24032e9
B24032e10
B24032e11
B24032e12
B24032e13
B24032e14
B24032e15
B24032e16
B24032e17
B24032e18
B24032e19
B24032e20
B24032e21
B24032e22
B24032e23
B24032e24
B24032e25
B24032e26
B24032e27
B24032e28
B24032e29
B24032e30
B24032e31
B24032e32
B24032e33
B24032e34
B24032e35
B24032e36
B24032e37
B24032e38
B24032e39
B24032e40
B24032e41
B24032e42
B24032e43
B24032e44
B24032e45
B24032e46
B24032e47
B24032e48
B24032e49
B24032e50
B24032e51
B24032e52
B24032e53
B24032e54
 
C24030e1
C24030e2
C24030e3
C24030e4
C24030e5
C24030e6
C24030e7
C24030e8
C24030e9
C24030e10
C24030e11
C24030e12
C24030e13
C24030e14
C24030e15
C24030e16
C24030e17
C24030e18
C24030e19
C24030e20
C24030e21
C24030e22
C24030e23
C24030e24
C24030e25
C24030e26
C24030e27
C24030e28
C24030e29
C24030e30
C24030e31
C24030e32
C24030e33
C24030e34
C24030e35
C24030e36
C24030e37
C24030e38
C24030e39
C24030e40
C24030e41
C24030e42
C24030e43
C24030e44
C24030e45
C24030e46
C24030e47
C24030e48
C24030e49
C24030e50
C24030e51
C24030e52
C24030e53
C24030e54
C24030e55
;
RUN;
TITLE2;
