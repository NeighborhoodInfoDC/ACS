TITLE2 "m20125dc0080000";
DATA work.SFm0080dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0080000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SEX BY OCCUPATION AND MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over with earnings */
 
B24012m1='Total:'
B24012m2='Male:'
B24012m3='Management, business, science, and arts occupations:'
B24012m4='Management, business, and financial occupations:'
B24012m5='Management occupations'
B24012m6='Business and financial operations occupations'
B24012m7='Computer, engineering, and science occupations:'
B24012m8='Computer and mathematical occupations'
B24012m9='Architecture and engineering occupations'
B24012m10='Life, physical, and social science occupations'
B24012m11='Education, legal, community service, arts, and media occupations:'
B24012m12='Community and social service occupations'
B24012m13='Legal occupations'
B24012m14='Education, training, and library occupations'
B24012m15='Arts, design, entertainment, sports, and media occupations'
B24012m16='Healthcare practitioners and technical occupations:'
B24012m17='Health diagnosing and treating practitioners and other technical occupations'
B24012m18='Health technologists and technicians'
B24012m19='Service occupations:'
B24012m20='Healthcare support occupations'
B24012m21='Protective service occupations:'
B24012m22='Fire fighting and prevention, and other protective service workers including supervisors'
B24012m23='Law enforcement workers including supervisors'
B24012m24='Food preparation and serving related occupations'
B24012m25='Building and grounds cleaning and maintenance occupations'
B24012m26='Personal care and service occupations'
B24012m27='Sales and office occupations:'
B24012m28='Sales and related occupations'
B24012m29='Office and administrative support occupations'
B24012m30='Natural resources, construction, and maintenance occupations:'
B24012m31='Farming, fishing, and forestry occupations'
B24012m32='Construction and extraction occupations'
B24012m33='Installation, maintenance, and repair occupations'
B24012m34='Production, transportation, and material moving occupations:'
B24012m35='Production occupations'
B24012m36='Transportation occupations'
B24012m37='Material moving occupations'
B24012m38='Female:'
B24012m39='Management, business, science, and arts occupations:'
B24012m40='Management, business, and financial occupations:'
B24012m41='Management occupations'
B24012m42='Business and financial operations occupations'
B24012m43='Computer, engineering, and science occupations:'
B24012m44='Computer and mathematical occupations'
B24012m45='Architecture and engineering occupations'
B24012m46='Life, physical, and social science occupations'
B24012m47='Education, legal, community service, arts, and media occupations:'
B24012m48='Community and social service occupations'
B24012m49='Legal occupations'
B24012m50='Education, training, and library occupations'
B24012m51='Arts, design, entertainment, sports, and media occupations'
B24012m52='Healthcare practitioners and technical occupations:'
B24012m53='Health diagnosing and treating practitioners and other technical occupations'
B24012m54='Health technologists and technicians'
B24012m55='Service occupations:'
B24012m56='Healthcare support occupations'
B24012m57='Protective service occupations:'
B24012m58='Fire fighting and prevention, and other protective service workers including supervisors'
B24012m59='Law enforcement workers including supervisors'
B24012m60='Food preparation and serving related occupations'
B24012m61='Building and grounds cleaning and maintenance occupations'
B24012m62='Personal care and service occupations'
B24012m63='Sales and office occupations:'
B24012m64='Sales and related occupations'
B24012m65='Office and administrative support occupations'
B24012m66='Natural resources, construction, and maintenance occupations:'
B24012m67='Farming, fishing, and forestry occupations'
B24012m68='Construction and extraction occupations'
B24012m69='Installation, maintenance, and repair occupations'
B24012m70='Production, transportation, and material moving occupations:'
B24012m71='Production occupations'
B24012m72='Transportation occupations'
B24012m73='Material moving occupations'
/*OCCUPATION BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over with earnings */
 
B24021m1='Total:'
B24021m2='Management, business, science, and arts occupations:'
B24021m3='Management, business, and financial occupations:'
B24021m4='Management occupations'
B24021m5='Business and financial operations occupations'
B24021m6='Computer, engineering, and science occupations:'
B24021m7='Computer and mathematical occupations'
B24021m8='Architecture and engineering occupations'
B24021m9='Life, physical, and social science occupations'
B24021m10='Education, legal, community service, arts, and media occupations:'
B24021m11='Community and social service occupations'
B24021m12='Legal occupations'
B24021m13='Education, training, and library occupations'
B24021m14='Arts, design, entertainment, sports, and media occupations'
B24021m15='Healthcare practitioners and technical occupations:'
B24021m16='Health diagnosing and treating practitioners and other technical occupations'
B24021m17='Health technologists and technicians'
B24021m18='Service occupations:'
B24021m19='Healthcare support occupations'
B24021m20='Protective service occupations:'
B24021m21='Fire fighting and prevention, and other protective service workers including supervisors'
B24021m22='Law enforcement workers including supervisors'
B24021m23='Food preparation and serving related occupations'
B24021m24='Building and grounds cleaning and maintenance occupations'
B24021m25='Personal care and service occupations'
B24021m26='Sales and office occupations:'
B24021m27='Sales and related occupations'
B24021m28='Office and administrative support occupations'
B24021m29='Natural resources, construction, and maintenance occupations:'
B24021m30='Farming, fishing, and forestry occupations'
B24021m31='Construction and extraction occupations'
B24021m32='Installation, maintenance, and repair occupations'
B24021m33='Production, transportation, and material moving occupations:'
B24021m34='Production occupations'
B24021m35='Transportation occupations'
B24021m36='Material moving occupations'
/*SEX BY OCCUPATION FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over */
 
C24020m1='Total:'
C24020m2='Male:'
C24020m3='Management, business, science, and arts occupations:'
C24020m4='Management, business, and financial occupations:'
C24020m5='Management occupations'
C24020m6='Business and financial operations occupations'
C24020m7='Computer, engineering, and science occupations:'
C24020m8='Computer and mathematical occupations'
C24020m9='Architecture and engineering occupations'
C24020m10='Life, physical, and social science occupations'
C24020m11='Education, legal, community service, arts, and media occupations:'
C24020m12='Community and social service occupations'
C24020m13='Legal occupations'
C24020m14='Education, training, and library occupations'
C24020m15='Arts, design, entertainment, sports, and media occupations'
C24020m16='Healthcare practitioners and technical occupations:'
C24020m17='Health diagnosing and treating practitioners and other technical occupations'
C24020m18='Health technologists and technicians'
C24020m19='Service occupations:'
C24020m20='Healthcare support occupations'
C24020m21='Protective service occupations:'
C24020m22='Fire fighting and prevention, and other protective service workers including supervisors'
C24020m23='Law enforcement workers including supervisors'
C24020m24='Food preparation and serving related occupations'
C24020m25='Building and grounds cleaning and maintenance occupations'
C24020m26='Personal care and service occupations'
C24020m27='Sales and office occupations:'
C24020m28='Sales and related occupations'
C24020m29='Office and administrative support occupations'
C24020m30='Natural resources, construction, and maintenance occupations:'
C24020m31='Farming, fishing, and forestry occupations'
C24020m32='Construction and extraction occupations'
C24020m33='Installation, maintenance, and repair occupations'
C24020m34='Production, transportation, and material moving occupations:'
C24020m35='Production occupations'
C24020m36='Transportation occupations'
C24020m37='Material moving occupations'
C24020m38='Female:'
C24020m39='Management, business, science, and arts occupations:'
C24020m40='Management, business, and financial occupations:'
C24020m41='Management occupations'
C24020m42='Business and financial operations occupations'
C24020m43='Computer, engineering, and science occupations:'
C24020m44='Computer and mathematical occupations'
C24020m45='Architecture and engineering occupations'
C24020m46='Life, physical, and social science occupations'
C24020m47='Education, legal, community service, arts, and media occupations:'
C24020m48='Community and social service occupations'
C24020m49='Legal occupations'
C24020m50='Education, training, and library occupations'
C24020m51='Arts, design, entertainment, sports, and media occupations'
C24020m52='Healthcare practitioners and technical occupations:'
C24020m53='Health diagnosing and treating practitioners and other technical occupations'
C24020m54='Health technologists and technicians'
C24020m55='Service occupations:'
C24020m56='Healthcare support occupations'
C24020m57='Protective service occupations:'
C24020m58='Fire fighting and prevention, and other protective service workers including supervisors'
C24020m59='Law enforcement workers including supervisors'
C24020m60='Food preparation and serving related occupations'
C24020m61='Building and grounds cleaning and maintenance occupations'
C24020m62='Personal care and service occupations'
C24020m63='Sales and office occupations:'
C24020m64='Sales and related occupations'
C24020m65='Office and administrative support occupations'
C24020m66='Natural resources, construction, and maintenance occupations:'
C24020m67='Farming, fishing, and forestry occupations'
C24020m68='Construction and extraction occupations'
C24020m69='Installation, maintenance, and repair occupations'
C24020m70='Production, transportation, and material moving occupations:'
C24020m71='Production occupations'
C24020m72='Transportation occupations'
C24020m73='Material moving occupations'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B24012m1
B24012m2
B24012m3
B24012m4
B24012m5
B24012m6
B24012m7
B24012m8
B24012m9
B24012m10
B24012m11
B24012m12
B24012m13
B24012m14
B24012m15
B24012m16
B24012m17
B24012m18
B24012m19
B24012m20
B24012m21
B24012m22
B24012m23
B24012m24
B24012m25
B24012m26
B24012m27
B24012m28
B24012m29
B24012m30
B24012m31
B24012m32
B24012m33
B24012m34
B24012m35
B24012m36
B24012m37
B24012m38
B24012m39
B24012m40
B24012m41
B24012m42
B24012m43
B24012m44
B24012m45
B24012m46
B24012m47
B24012m48
B24012m49
B24012m50
B24012m51
B24012m52
B24012m53
B24012m54
B24012m55
B24012m56
B24012m57
B24012m58
B24012m59
B24012m60
B24012m61
B24012m62
B24012m63
B24012m64
B24012m65
B24012m66
B24012m67
B24012m68
B24012m69
B24012m70
B24012m71
B24012m72
B24012m73
 
B24021m1
B24021m2
B24021m3
B24021m4
B24021m5
B24021m6
B24021m7
B24021m8
B24021m9
B24021m10
B24021m11
B24021m12
B24021m13
B24021m14
B24021m15
B24021m16
B24021m17
B24021m18
B24021m19
B24021m20
B24021m21
B24021m22
B24021m23
B24021m24
B24021m25
B24021m26
B24021m27
B24021m28
B24021m29
B24021m30
B24021m31
B24021m32
B24021m33
B24021m34
B24021m35
B24021m36
 
C24020m1
C24020m2
C24020m3
C24020m4
C24020m5
C24020m6
C24020m7
C24020m8
C24020m9
C24020m10
C24020m11
C24020m12
C24020m13
C24020m14
C24020m15
C24020m16
C24020m17
C24020m18
C24020m19
C24020m20
C24020m21
C24020m22
C24020m23
C24020m24
C24020m25
C24020m26
C24020m27
C24020m28
C24020m29
C24020m30
C24020m31
C24020m32
C24020m33
C24020m34
C24020m35
C24020m36
C24020m37
C24020m38
C24020m39
C24020m40
C24020m41
C24020m42
C24020m43
C24020m44
C24020m45
C24020m46
C24020m47
C24020m48
C24020m49
C24020m50
C24020m51
C24020m52
C24020m53
C24020m54
C24020m55
C24020m56
C24020m57
C24020m58
C24020m59
C24020m60
C24020m61
C24020m62
C24020m63
C24020m64
C24020m65
C24020m66
C24020m67
C24020m68
C24020m69
C24020m70
C24020m71
C24020m72
C24020m73
;
RUN;
TITLE2;
