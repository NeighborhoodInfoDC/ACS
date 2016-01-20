TITLE2 "e20125dc0079000";
DATA work.SFe0079dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0079000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*OCCUPATION BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over with earnings */
 
B24011e1='Total:'
B24011e2='Management, business, science, and arts occupations:'
B24011e3='Management, business, and financial occupations:'
B24011e4='Management occupations'
B24011e5='Business and financial operations occupations'
B24011e6='Computer, engineering, and science occupations:'
B24011e7='Computer and mathematical occupations'
B24011e8='Architecture and engineering occupations'
B24011e9='Life, physical, and social science occupations'
B24011e10='Education, legal, community service, arts, and media occupations:'
B24011e11='Community and social service occupations'
B24011e12='Legal occupations'
B24011e13='Education, training, and library occupations'
B24011e14='Arts, design, entertainment, sports, and media occupations'
B24011e15='Healthcare practitioners and technical occupations:'
B24011e16='Health diagnosing and treating practitioners and other technical occupations'
B24011e17='Health technologists and technicians'
B24011e18='Service occupations:'
B24011e19='Healthcare support occupations'
B24011e20='Protective service occupations:'
B24011e21='Fire fighting and prevention, and other protective service workers including supervisors'
B24011e22='Law enforcement workers including supervisors'
B24011e23='Food preparation and serving related occupations'
B24011e24='Building and grounds cleaning and maintenance occupations'
B24011e25='Personal care and service occupations'
B24011e26='Sales and office occupations:'
B24011e27='Sales and related occupations'
B24011e28='Office and administrative support occupations'
B24011e29='Natural resources, construction, and maintenance occupations:'
B24011e30='Farming, fishing, and forestry occupations'
B24011e31='Construction and extraction occupations'
B24011e32='Installation, maintenance, and repair occupations'
B24011e33='Production, transportation, and material moving occupations:'
B24011e34='Production occupations'
B24011e35='Transportation occupations'
B24011e36='Material moving occupations'
/*SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over */
 
C24010e1='Total:'
C24010e2='Male:'
C24010e3='Management, business, science, and arts occupations:'
C24010e4='Management, business, and financial occupations:'
C24010e5='Management occupations'
C24010e6='Business and financial operations occupations'
C24010e7='Computer, engineering, and science occupations:'
C24010e8='Computer and mathematical occupations'
C24010e9='Architecture and engineering occupations'
C24010e10='Life, physical, and social science occupations'
C24010e11='Education, legal, community service, arts, and media occupations:'
C24010e12='Community and social service occupations'
C24010e13='Legal occupations'
C24010e14='Education, training, and library occupations'
C24010e15='Arts, design, entertainment, sports, and media occupations'
C24010e16='Healthcare practitioners and technical occupations:'
C24010e17='Health diagnosing and treating practitioners and other technical occupations'
C24010e18='Health technologists and technicians'
C24010e19='Service occupations:'
C24010e20='Healthcare support occupations'
C24010e21='Protective service occupations:'
C24010e22='Fire fighting and prevention, and other protective service workers including supervisors'
C24010e23='Law enforcement workers including supervisors'
C24010e24='Food preparation and serving related occupations'
C24010e25='Building and grounds cleaning and maintenance occupations'
C24010e26='Personal care and service occupations'
C24010e27='Sales and office occupations:'
C24010e28='Sales and related occupations'
C24010e29='Office and administrative support occupations'
C24010e30='Natural resources, construction, and maintenance occupations:'
C24010e31='Farming, fishing, and forestry occupations'
C24010e32='Construction and extraction occupations'
C24010e33='Installation, maintenance, and repair occupations'
C24010e34='Production, transportation, and material moving occupations:'
C24010e35='Production occupations'
C24010e36='Transportation occupations'
C24010e37='Material moving occupations'
C24010e38='Female:'
C24010e39='Management, business, science, and arts occupations:'
C24010e40='Management, business, and financial occupations:'
C24010e41='Management occupations'
C24010e42='Business and financial operations occupations'
C24010e43='Computer, engineering, and science occupations:'
C24010e44='Computer and mathematical occupations'
C24010e45='Architecture and engineering occupations'
C24010e46='Life, physical, and social science occupations'
C24010e47='Education, legal, community service, arts, and media occupations:'
C24010e48='Community and social service occupations'
C24010e49='Legal occupations'
C24010e50='Education, training, and library occupations'
C24010e51='Arts, design, entertainment, sports, and media occupations'
C24010e52='Healthcare practitioners and technical occupations:'
C24010e53='Health diagnosing and treating practitioners and other technical occupations'
C24010e54='Health technologists and technicians'
C24010e55='Service occupations:'
C24010e56='Healthcare support occupations'
C24010e57='Protective service occupations:'
C24010e58='Fire fighting and prevention, and other protective service workers including supervisors'
C24010e59='Law enforcement workers including supervisors'
C24010e60='Food preparation and serving related occupations'
C24010e61='Building and grounds cleaning and maintenance occupations'
C24010e62='Personal care and service occupations'
C24010e63='Sales and office occupations:'
C24010e64='Sales and related occupations'
C24010e65='Office and administrative support occupations'
C24010e66='Natural resources, construction, and maintenance occupations:'
C24010e67='Farming, fishing, and forestry occupations'
C24010e68='Construction and extraction occupations'
C24010e69='Installation, maintenance, and repair occupations'
C24010e70='Production, transportation, and material moving occupations:'
C24010e71='Production occupations'
C24010e72='Transportation occupations'
C24010e73='Material moving occupations'
/*SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER (WHITE ALONE) */
/*Universe:  Civilian employed White alone population 16 years and over */
 
C24010Ae1='Total:'
C24010Ae2='Male:'
C24010Ae3='Management, business, science, and arts occupations:'
C24010Ae4='Service occupations:'
C24010Ae5='Sales and office occupations:'
C24010Ae6='Natural resources, construction, and maintenance occupations:'
C24010Ae7='Production, transportation, and material moving occupations:'
C24010Ae8='Female:'
C24010Ae9='Management, business, science, and arts occupations:'
C24010Ae10='Service occupations:'
C24010Ae11='Sales and office occupations:'
C24010Ae12='Natural resources, construction, and maintenance occupations:'
C24010Ae13='Production, transportation, and material moving occupations:'
/*SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Civilian employed Black or African American alone population 16 years and over */
 
C24010Be1='Total:'
C24010Be2='Male:'
C24010Be3='Management, business, science, and arts occupations:'
C24010Be4='Service occupations:'
C24010Be5='Sales and office occupations:'
C24010Be6='Natural resources, construction, and maintenance occupations:'
C24010Be7='Production, transportation, and material moving occupations:'
C24010Be8='Female:'
C24010Be9='Management, business, science, and arts occupations:'
C24010Be10='Service occupations:'
C24010Be11='Sales and office occupations:'
C24010Be12='Natural resources, construction, and maintenance occupations:'
C24010Be13='Production, transportation, and material moving occupations:'
/*SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  Civilian employed American Indian and Alaska Native alone population 16 years and over */
 
C24010Ce1='Total:'
C24010Ce2='Male:'
C24010Ce3='Management, business, science, and arts occupations:'
C24010Ce4='Service occupations:'
C24010Ce5='Sales and office occupations:'
C24010Ce6='Natural resources, construction, and maintenance occupations:'
C24010Ce7='Production, transportation, and material moving occupations:'
C24010Ce8='Female:'
C24010Ce9='Management, business, science, and arts occupations:'
C24010Ce10='Service occupations:'
C24010Ce11='Sales and office occupations:'
C24010Ce12='Natural resources, construction, and maintenance occupations:'
C24010Ce13='Production, transportation, and material moving occupations:'
/*SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER (ASIAN ALONE) */
/*Universe:  Civilian employed Asian alone population 16 years and over */
 
C24010De1='Total:'
C24010De2='Male:'
C24010De3='Management, business, science, and arts occupations:'
C24010De4='Service occupations:'
C24010De5='Sales and office occupations:'
C24010De6='Natural resources, construction, and maintenance occupations:'
C24010De7='Production, transportation, and material moving occupations:'
C24010De8='Female:'
C24010De9='Management, business, science, and arts occupations:'
C24010De10='Service occupations:'
C24010De11='Sales and office occupations:'
C24010De12='Natural resources, construction, and maintenance occupations:'
C24010De13='Production, transportation, and material moving occupations:'
/*SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Civilian employed Native Hawaiian and Other Pacific Islander alone population 16 years and over */
 
C24010Ee1='Total:'
C24010Ee2='Male:'
C24010Ee3='Management, business, science, and arts occupations:'
C24010Ee4='Service occupations:'
C24010Ee5='Sales and office occupations:'
C24010Ee6='Natural resources, construction, and maintenance occupations:'
C24010Ee7='Production, transportation, and material moving occupations:'
C24010Ee8='Female:'
C24010Ee9='Management, business, science, and arts occupations:'
C24010Ee10='Service occupations:'
C24010Ee11='Sales and office occupations:'
C24010Ee12='Natural resources, construction, and maintenance occupations:'
C24010Ee13='Production, transportation, and material moving occupations:'
/*SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER (SOME OTHER RACE ALONE) */
/*Universe:  Civilian employed Some other race alone population 16 years and over */
 
C24010Fe1='Total:'
C24010Fe2='Male:'
C24010Fe3='Management, business, science, and arts occupations:'
C24010Fe4='Service occupations:'
C24010Fe5='Sales and office occupations:'
C24010Fe6='Natural resources, construction, and maintenance occupations:'
C24010Fe7='Production, transportation, and material moving occupations:'
C24010Fe8='Female:'
C24010Fe9='Management, business, science, and arts occupations:'
C24010Fe10='Service occupations:'
C24010Fe11='Sales and office occupations:'
C24010Fe12='Natural resources, construction, and maintenance occupations:'
C24010Fe13='Production, transportation, and material moving occupations:'
/*SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER (TWO OR MORE RACES) */
/*Universe:  Civilian employed Two or more races population 16 years and over */
 
C24010Ge1='Total:'
C24010Ge2='Male:'
C24010Ge3='Management, business, science, and arts occupations:'
C24010Ge4='Service occupations:'
C24010Ge5='Sales and office occupations:'
C24010Ge6='Natural resources, construction, and maintenance occupations:'
C24010Ge7='Production, transportation, and material moving occupations:'
C24010Ge8='Female:'
C24010Ge9='Management, business, science, and arts occupations:'
C24010Ge10='Service occupations:'
C24010Ge11='Sales and office occupations:'
C24010Ge12='Natural resources, construction, and maintenance occupations:'
C24010Ge13='Production, transportation, and material moving occupations:'
/*SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  Civilian employed White alone, not Hispanic or Latino population 16 years and over */
 
C24010He1='Total:'
C24010He2='Male:'
C24010He3='Management, business, science, and arts occupations:'
C24010He4='Service occupations:'
C24010He5='Sales and office occupations:'
C24010He6='Natural resources, construction, and maintenance occupations:'
C24010He7='Production, transportation, and material moving occupations:'
C24010He8='Female:'
C24010He9='Management, business, science, and arts occupations:'
C24010He10='Service occupations:'
C24010He11='Sales and office occupations:'
C24010He12='Natural resources, construction, and maintenance occupations:'
C24010He13='Production, transportation, and material moving occupations:'
/*SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER (HISPANIC OR LATINO) */
/*Universe:  Civilian employed Hispanic or Latino population 16 years and over */
 
C24010Ie1='Total:'
C24010Ie2='Male:'
C24010Ie3='Management, business, science, and arts occupations:'
C24010Ie4='Service occupations:'
C24010Ie5='Sales and office occupations:'
C24010Ie6='Natural resources, construction, and maintenance occupations:'
C24010Ie7='Production, transportation, and material moving occupations:'
C24010Ie8='Female:'
C24010Ie9='Management, business, science, and arts occupations:'
C24010Ie10='Service occupations:'
C24010Ie11='Sales and office occupations:'
C24010Ie12='Natural resources, construction, and maintenance occupations:'
C24010Ie13='Production, transportation, and material moving occupations:'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B24011e1
B24011e2
B24011e3
B24011e4
B24011e5
B24011e6
B24011e7
B24011e8
B24011e9
B24011e10
B24011e11
B24011e12
B24011e13
B24011e14
B24011e15
B24011e16
B24011e17
B24011e18
B24011e19
B24011e20
B24011e21
B24011e22
B24011e23
B24011e24
B24011e25
B24011e26
B24011e27
B24011e28
B24011e29
B24011e30
B24011e31
B24011e32
B24011e33
B24011e34
B24011e35
B24011e36
 
C24010e1
C24010e2
C24010e3
C24010e4
C24010e5
C24010e6
C24010e7
C24010e8
C24010e9
C24010e10
C24010e11
C24010e12
C24010e13
C24010e14
C24010e15
C24010e16
C24010e17
C24010e18
C24010e19
C24010e20
C24010e21
C24010e22
C24010e23
C24010e24
C24010e25
C24010e26
C24010e27
C24010e28
C24010e29
C24010e30
C24010e31
C24010e32
C24010e33
C24010e34
C24010e35
C24010e36
C24010e37
C24010e38
C24010e39
C24010e40
C24010e41
C24010e42
C24010e43
C24010e44
C24010e45
C24010e46
C24010e47
C24010e48
C24010e49
C24010e50
C24010e51
C24010e52
C24010e53
C24010e54
C24010e55
C24010e56
C24010e57
C24010e58
C24010e59
C24010e60
C24010e61
C24010e62
C24010e63
C24010e64
C24010e65
C24010e66
C24010e67
C24010e68
C24010e69
C24010e70
C24010e71
C24010e72
C24010e73
 
C24010Ae1
C24010Ae2
C24010Ae3
C24010Ae4
C24010Ae5
C24010Ae6
C24010Ae7
C24010Ae8
C24010Ae9
C24010Ae10
C24010Ae11
C24010Ae12
C24010Ae13
 
C24010Be1
C24010Be2
C24010Be3
C24010Be4
C24010Be5
C24010Be6
C24010Be7
C24010Be8
C24010Be9
C24010Be10
C24010Be11
C24010Be12
C24010Be13
 
C24010Ce1
C24010Ce2
C24010Ce3
C24010Ce4
C24010Ce5
C24010Ce6
C24010Ce7
C24010Ce8
C24010Ce9
C24010Ce10
C24010Ce11
C24010Ce12
C24010Ce13
 
C24010De1
C24010De2
C24010De3
C24010De4
C24010De5
C24010De6
C24010De7
C24010De8
C24010De9
C24010De10
C24010De11
C24010De12
C24010De13
 
C24010Ee1
C24010Ee2
C24010Ee3
C24010Ee4
C24010Ee5
C24010Ee6
C24010Ee7
C24010Ee8
C24010Ee9
C24010Ee10
C24010Ee11
C24010Ee12
C24010Ee13
 
C24010Fe1
C24010Fe2
C24010Fe3
C24010Fe4
C24010Fe5
C24010Fe6
C24010Fe7
C24010Fe8
C24010Fe9
C24010Fe10
C24010Fe11
C24010Fe12
C24010Fe13
 
C24010Ge1
C24010Ge2
C24010Ge3
C24010Ge4
C24010Ge5
C24010Ge6
C24010Ge7
C24010Ge8
C24010Ge9
C24010Ge10
C24010Ge11
C24010Ge12
C24010Ge13
 
C24010He1
C24010He2
C24010He3
C24010He4
C24010He5
C24010He6
C24010He7
C24010He8
C24010He9
C24010He10
C24010He11
C24010He12
C24010He13
 
C24010Ie1
C24010Ie2
C24010Ie3
C24010Ie4
C24010Ie5
C24010Ie6
C24010Ie7
C24010Ie8
C24010Ie9
C24010Ie10
C24010Ie11
C24010Ie12
C24010Ie13
;
RUN;
TITLE2;
