TITLE2 "e20125dc0080000";
DATA work.SFe0080dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0080000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SEX BY OCCUPATION AND MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over with earnings */
 
B24012e1='Total:'
B24012e2='Male:'
B24012e3='Management, business, science, and arts occupations:'
B24012e4='Management, business, and financial occupations:'
B24012e5='Management occupations'
B24012e6='Business and financial operations occupations'
B24012e7='Computer, engineering, and science occupations:'
B24012e8='Computer and mathematical occupations'
B24012e9='Architecture and engineering occupations'
B24012e10='Life, physical, and social science occupations'
B24012e11='Education, legal, community service, arts, and media occupations:'
B24012e12='Community and social service occupations'
B24012e13='Legal occupations'
B24012e14='Education, training, and library occupations'
B24012e15='Arts, design, entertainment, sports, and media occupations'
B24012e16='Healthcare practitioners and technical occupations:'
B24012e17='Health diagnosing and treating practitioners and other technical occupations'
B24012e18='Health technologists and technicians'
B24012e19='Service occupations:'
B24012e20='Healthcare support occupations'
B24012e21='Protective service occupations:'
B24012e22='Fire fighting and prevention, and other protective service workers including supervisors'
B24012e23='Law enforcement workers including supervisors'
B24012e24='Food preparation and serving related occupations'
B24012e25='Building and grounds cleaning and maintenance occupations'
B24012e26='Personal care and service occupations'
B24012e27='Sales and office occupations:'
B24012e28='Sales and related occupations'
B24012e29='Office and administrative support occupations'
B24012e30='Natural resources, construction, and maintenance occupations:'
B24012e31='Farming, fishing, and forestry occupations'
B24012e32='Construction and extraction occupations'
B24012e33='Installation, maintenance, and repair occupations'
B24012e34='Production, transportation, and material moving occupations:'
B24012e35='Production occupations'
B24012e36='Transportation occupations'
B24012e37='Material moving occupations'
B24012e38='Female:'
B24012e39='Management, business, science, and arts occupations:'
B24012e40='Management, business, and financial occupations:'
B24012e41='Management occupations'
B24012e42='Business and financial operations occupations'
B24012e43='Computer, engineering, and science occupations:'
B24012e44='Computer and mathematical occupations'
B24012e45='Architecture and engineering occupations'
B24012e46='Life, physical, and social science occupations'
B24012e47='Education, legal, community service, arts, and media occupations:'
B24012e48='Community and social service occupations'
B24012e49='Legal occupations'
B24012e50='Education, training, and library occupations'
B24012e51='Arts, design, entertainment, sports, and media occupations'
B24012e52='Healthcare practitioners and technical occupations:'
B24012e53='Health diagnosing and treating practitioners and other technical occupations'
B24012e54='Health technologists and technicians'
B24012e55='Service occupations:'
B24012e56='Healthcare support occupations'
B24012e57='Protective service occupations:'
B24012e58='Fire fighting and prevention, and other protective service workers including supervisors'
B24012e59='Law enforcement workers including supervisors'
B24012e60='Food preparation and serving related occupations'
B24012e61='Building and grounds cleaning and maintenance occupations'
B24012e62='Personal care and service occupations'
B24012e63='Sales and office occupations:'
B24012e64='Sales and related occupations'
B24012e65='Office and administrative support occupations'
B24012e66='Natural resources, construction, and maintenance occupations:'
B24012e67='Farming, fishing, and forestry occupations'
B24012e68='Construction and extraction occupations'
B24012e69='Installation, maintenance, and repair occupations'
B24012e70='Production, transportation, and material moving occupations:'
B24012e71='Production occupations'
B24012e72='Transportation occupations'
B24012e73='Material moving occupations'
/*OCCUPATION BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over with earnings */
 
B24021e1='Total:'
B24021e2='Management, business, science, and arts occupations:'
B24021e3='Management, business, and financial occupations:'
B24021e4='Management occupations'
B24021e5='Business and financial operations occupations'
B24021e6='Computer, engineering, and science occupations:'
B24021e7='Computer and mathematical occupations'
B24021e8='Architecture and engineering occupations'
B24021e9='Life, physical, and social science occupations'
B24021e10='Education, legal, community service, arts, and media occupations:'
B24021e11='Community and social service occupations'
B24021e12='Legal occupations'
B24021e13='Education, training, and library occupations'
B24021e14='Arts, design, entertainment, sports, and media occupations'
B24021e15='Healthcare practitioners and technical occupations:'
B24021e16='Health diagnosing and treating practitioners and other technical occupations'
B24021e17='Health technologists and technicians'
B24021e18='Service occupations:'
B24021e19='Healthcare support occupations'
B24021e20='Protective service occupations:'
B24021e21='Fire fighting and prevention, and other protective service workers including supervisors'
B24021e22='Law enforcement workers including supervisors'
B24021e23='Food preparation and serving related occupations'
B24021e24='Building and grounds cleaning and maintenance occupations'
B24021e25='Personal care and service occupations'
B24021e26='Sales and office occupations:'
B24021e27='Sales and related occupations'
B24021e28='Office and administrative support occupations'
B24021e29='Natural resources, construction, and maintenance occupations:'
B24021e30='Farming, fishing, and forestry occupations'
B24021e31='Construction and extraction occupations'
B24021e32='Installation, maintenance, and repair occupations'
B24021e33='Production, transportation, and material moving occupations:'
B24021e34='Production occupations'
B24021e35='Transportation occupations'
B24021e36='Material moving occupations'
/*SEX BY OCCUPATION FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over */
 
C24020e1='Total:'
C24020e2='Male:'
C24020e3='Management, business, science, and arts occupations:'
C24020e4='Management, business, and financial occupations:'
C24020e5='Management occupations'
C24020e6='Business and financial operations occupations'
C24020e7='Computer, engineering, and science occupations:'
C24020e8='Computer and mathematical occupations'
C24020e9='Architecture and engineering occupations'
C24020e10='Life, physical, and social science occupations'
C24020e11='Education, legal, community service, arts, and media occupations:'
C24020e12='Community and social service occupations'
C24020e13='Legal occupations'
C24020e14='Education, training, and library occupations'
C24020e15='Arts, design, entertainment, sports, and media occupations'
C24020e16='Healthcare practitioners and technical occupations:'
C24020e17='Health diagnosing and treating practitioners and other technical occupations'
C24020e18='Health technologists and technicians'
C24020e19='Service occupations:'
C24020e20='Healthcare support occupations'
C24020e21='Protective service occupations:'
C24020e22='Fire fighting and prevention, and other protective service workers including supervisors'
C24020e23='Law enforcement workers including supervisors'
C24020e24='Food preparation and serving related occupations'
C24020e25='Building and grounds cleaning and maintenance occupations'
C24020e26='Personal care and service occupations'
C24020e27='Sales and office occupations:'
C24020e28='Sales and related occupations'
C24020e29='Office and administrative support occupations'
C24020e30='Natural resources, construction, and maintenance occupations:'
C24020e31='Farming, fishing, and forestry occupations'
C24020e32='Construction and extraction occupations'
C24020e33='Installation, maintenance, and repair occupations'
C24020e34='Production, transportation, and material moving occupations:'
C24020e35='Production occupations'
C24020e36='Transportation occupations'
C24020e37='Material moving occupations'
C24020e38='Female:'
C24020e39='Management, business, science, and arts occupations:'
C24020e40='Management, business, and financial occupations:'
C24020e41='Management occupations'
C24020e42='Business and financial operations occupations'
C24020e43='Computer, engineering, and science occupations:'
C24020e44='Computer and mathematical occupations'
C24020e45='Architecture and engineering occupations'
C24020e46='Life, physical, and social science occupations'
C24020e47='Education, legal, community service, arts, and media occupations:'
C24020e48='Community and social service occupations'
C24020e49='Legal occupations'
C24020e50='Education, training, and library occupations'
C24020e51='Arts, design, entertainment, sports, and media occupations'
C24020e52='Healthcare practitioners and technical occupations:'
C24020e53='Health diagnosing and treating practitioners and other technical occupations'
C24020e54='Health technologists and technicians'
C24020e55='Service occupations:'
C24020e56='Healthcare support occupations'
C24020e57='Protective service occupations:'
C24020e58='Fire fighting and prevention, and other protective service workers including supervisors'
C24020e59='Law enforcement workers including supervisors'
C24020e60='Food preparation and serving related occupations'
C24020e61='Building and grounds cleaning and maintenance occupations'
C24020e62='Personal care and service occupations'
C24020e63='Sales and office occupations:'
C24020e64='Sales and related occupations'
C24020e65='Office and administrative support occupations'
C24020e66='Natural resources, construction, and maintenance occupations:'
C24020e67='Farming, fishing, and forestry occupations'
C24020e68='Construction and extraction occupations'
C24020e69='Installation, maintenance, and repair occupations'
C24020e70='Production, transportation, and material moving occupations:'
C24020e71='Production occupations'
C24020e72='Transportation occupations'
C24020e73='Material moving occupations'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B24012e1
B24012e2
B24012e3
B24012e4
B24012e5
B24012e6
B24012e7
B24012e8
B24012e9
B24012e10
B24012e11
B24012e12
B24012e13
B24012e14
B24012e15
B24012e16
B24012e17
B24012e18
B24012e19
B24012e20
B24012e21
B24012e22
B24012e23
B24012e24
B24012e25
B24012e26
B24012e27
B24012e28
B24012e29
B24012e30
B24012e31
B24012e32
B24012e33
B24012e34
B24012e35
B24012e36
B24012e37
B24012e38
B24012e39
B24012e40
B24012e41
B24012e42
B24012e43
B24012e44
B24012e45
B24012e46
B24012e47
B24012e48
B24012e49
B24012e50
B24012e51
B24012e52
B24012e53
B24012e54
B24012e55
B24012e56
B24012e57
B24012e58
B24012e59
B24012e60
B24012e61
B24012e62
B24012e63
B24012e64
B24012e65
B24012e66
B24012e67
B24012e68
B24012e69
B24012e70
B24012e71
B24012e72
B24012e73
 
B24021e1
B24021e2
B24021e3
B24021e4
B24021e5
B24021e6
B24021e7
B24021e8
B24021e9
B24021e10
B24021e11
B24021e12
B24021e13
B24021e14
B24021e15
B24021e16
B24021e17
B24021e18
B24021e19
B24021e20
B24021e21
B24021e22
B24021e23
B24021e24
B24021e25
B24021e26
B24021e27
B24021e28
B24021e29
B24021e30
B24021e31
B24021e32
B24021e33
B24021e34
B24021e35
B24021e36
 
C24020e1
C24020e2
C24020e3
C24020e4
C24020e5
C24020e6
C24020e7
C24020e8
C24020e9
C24020e10
C24020e11
C24020e12
C24020e13
C24020e14
C24020e15
C24020e16
C24020e17
C24020e18
C24020e19
C24020e20
C24020e21
C24020e22
C24020e23
C24020e24
C24020e25
C24020e26
C24020e27
C24020e28
C24020e29
C24020e30
C24020e31
C24020e32
C24020e33
C24020e34
C24020e35
C24020e36
C24020e37
C24020e38
C24020e39
C24020e40
C24020e41
C24020e42
C24020e43
C24020e44
C24020e45
C24020e46
C24020e47
C24020e48
C24020e49
C24020e50
C24020e51
C24020e52
C24020e53
C24020e54
C24020e55
C24020e56
C24020e57
C24020e58
C24020e59
C24020e60
C24020e61
C24020e62
C24020e63
C24020e64
C24020e65
C24020e66
C24020e67
C24020e68
C24020e69
C24020e70
C24020e71
C24020e72
C24020e73
;
RUN;
TITLE2;
