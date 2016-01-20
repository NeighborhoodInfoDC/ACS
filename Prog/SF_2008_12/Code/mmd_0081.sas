TITLE2 "m20125md0081000";
DATA work.SFm0081md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0081000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SEX BY OCCUPATION AND MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over with earnings */
 
B24022m1='Total:'
B24022m2='Male:'
B24022m3='Management, business, science, and arts occupations:'
B24022m4='Management, business, and financial occupations:'
B24022m5='Management occupations'
B24022m6='Business and financial operations occupations'
B24022m7='Computer, engineering, and science occupations:'
B24022m8='Computer and mathematical occupations'
B24022m9='Architecture and engineering occupations'
B24022m10='Life, physical, and social science occupations'
B24022m11='Education, legal, community service, arts, and media occupations:'
B24022m12='Community and social service occupations'
B24022m13='Legal occupations'
B24022m14='Education, training, and library occupations'
B24022m15='Arts, design, entertainment, sports, and media occupations'
B24022m16='Healthcare practitioners and technical occupations:'
B24022m17='Health diagnosing and treating practitioners and other technical occupations'
B24022m18='Health technologists and technicians'
B24022m19='Service occupations:'
B24022m20='Healthcare support occupations'
B24022m21='Protective service occupations:'
B24022m22='Fire fighting and prevention, and other protective service workers including supervisors'
B24022m23='Law enforcement workers including supervisors'
B24022m24='Food preparation and serving related occupations'
B24022m25='Building and grounds cleaning and maintenance occupations'
B24022m26='Personal care and service occupations'
B24022m27='Sales and office occupations:'
B24022m28='Sales and related occupations'
B24022m29='Office and administrative support occupations'
B24022m30='Natural resources, construction, and maintenance occupations:'
B24022m31='Farming, fishing, and forestry occupations'
B24022m32='Construction and extraction occupations'
B24022m33='Installation, maintenance, and repair occupations'
B24022m34='Production, transportation, and material moving occupations:'
B24022m35='Production occupations'
B24022m36='Transportation occupations'
B24022m37='Material moving occupations'
B24022m38='Female:'
B24022m39='Management, business, science, and arts occupations:'
B24022m40='Management, business, and financial occupations:'
B24022m41='Management occupations'
B24022m42='Business and financial operations occupations'
B24022m43='Computer, engineering, and science occupations:'
B24022m44='Computer and mathematical occupations'
B24022m45='Architecture and engineering occupations'
B24022m46='Life, physical, and social science occupations'
B24022m47='Education, legal, community service, arts, and media occupations:'
B24022m48='Community and social service occupations'
B24022m49='Legal occupations'
B24022m50='Education, training, and library occupations'
B24022m51='Arts, design, entertainment, sports, and media occupations'
B24022m52='Healthcare practitioners and technical occupations:'
B24022m53='Health diagnosing and treating practitioners and other technical occupations'
B24022m54='Health technologists and technicians'
B24022m55='Service occupations:'
B24022m56='Healthcare support occupations'
B24022m57='Protective service occupations:'
B24022m58='Fire fighting and prevention, and other protective service workers including supervisors'
B24022m59='Law enforcement workers including supervisors'
B24022m60='Food preparation and serving related occupations'
B24022m61='Building and grounds cleaning and maintenance occupations'
B24022m62='Personal care and service occupations'
B24022m63='Sales and office occupations:'
B24022m64='Sales and related occupations'
B24022m65='Office and administrative support occupations'
B24022m66='Natural resources, construction, and maintenance occupations:'
B24022m67='Farming, fishing, and forestry occupations'
B24022m68='Construction and extraction occupations'
B24022m69='Installation, maintenance, and repair occupations'
B24022m70='Production, transportation, and material moving occupations:'
B24022m71='Production occupations'
B24022m72='Transportation occupations'
B24022m73='Material moving occupations'
/*INDUSTRY BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over with earnings */
 
B24031m1='Total:'
B24031m2='Agriculture, forestry, fishing and hunting, and mining:'
B24031m3='Agriculture, forestry, fishing and hunting'
B24031m4='Mining, quarrying, and oil and gas extraction'
B24031m5='Construction'
B24031m6='Manufacturing'
B24031m7='Wholesale trade'
B24031m8='Retail trade'
B24031m9='Transportation and warehousing, and utilities:'
B24031m10='Transportation and warehousing'
B24031m11='Utilities'
B24031m12='Information'
B24031m13='Finance and insurance, and real estate and rental and leasing:'
B24031m14='Finance and insurance'
B24031m15='Real estate and rental and leasing'
B24031m16='Professional, scientific, and management, and administrative and waste management services:'
B24031m17='Professional, scientific, and technical services'
B24031m18='Management of companies and enterprises'
B24031m19='Administrative and support and waste management services'
B24031m20='Educational services, and health care and social assistance:'
B24031m21='Educational services'
B24031m22='Health care and social assistance'
B24031m23='Arts, entertainment, and recreation, and accommodations and food services'
B24031m24='Arts, entertainment, and recreation'
B24031m25='Accommodation and food services'
B24031m26='Other services except public administration'
B24031m27='Public administration'
/*SEX BY INDUSTRY AND MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over with earnings */
 
B24032m1='Male:'
B24032m2='Agriculture, forestry, fishing and hunting, and mining:'
B24032m3='Agriculture, forestry, fishing and hunting'
B24032m4='Mining, quarrying, and oil and gas extraction'
B24032m5='Construction'
B24032m6='Manufacturing'
B24032m7='Wholesale trade'
B24032m8='Retail trade'
B24032m9='Transportation and warehousing, and utilities:'
B24032m10='Transportation and warehousing'
B24032m11='Utilities'
B24032m12='Information'
B24032m13='Finance and insurance, and real estate and rental and leasing:'
B24032m14='Finance and insurance'
B24032m15='Real estate and rental and leasing'
B24032m16='Professional, scientific, and management, and administrative and waste management services:'
B24032m17='Professional, scientific, and technical services'
B24032m18='Management of companies and enterprises'
B24032m19='Administrative and support and waste management services'
B24032m20='Educational services, and health care and social assistance:'
B24032m21='Educational services'
B24032m22='Health care and social assistance'
B24032m23='Arts, entertainment, and recreation, and accommodations and food services'
B24032m24='Arts, entertainment, and recreation'
B24032m25='Accommodation and food services'
B24032m26='Other services except public administration'
B24032m27='Public administration'
B24032m28='Female:'
B24032m29='Agriculture, forestry, fishing and hunting, and mining:'
B24032m30='Agriculture, forestry, fishing and hunting'
B24032m31='Mining, quarrying, and oil and gas extraction'
B24032m32='Construction'
B24032m33='Manufacturing'
B24032m34='Wholesale trade'
B24032m35='Retail trade'
B24032m36='Transportation and warehousing, and utilities:'
B24032m37='Transportation and warehousing'
B24032m38='Utilities'
B24032m39='Information'
B24032m40='Finance and insurance, and real estate and rental and leasing:'
B24032m41='Finance and insurance'
B24032m42='Real estate and rental and leasing'
B24032m43='Professional, scientific, and management, and administrative and waste management services:'
B24032m44='Professional, scientific, and technical services'
B24032m45='Management of companies and enterprises'
B24032m46='Administrative and support and waste management services'
B24032m47='Educational services, and health care and social assistance:'
B24032m48='Educational services'
B24032m49='Health care and social assistance'
B24032m50='Arts, entertainment, and recreation, and accommodations and food services'
B24032m51='Arts, entertainment, and recreation'
B24032m52='Accommodation and food services'
B24032m53='Other services except public administration'
B24032m54='Public administration'
/*SEX BY INDUSTRY FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over */
 
C24030m1='Total:'
C24030m2='Male:'
C24030m3='Agriculture, forestry, fishing and hunting, and mining:'
C24030m4='Agriculture, forestry, fishing and hunting'
C24030m5='Mining, quarrying, and oil and gas extraction'
C24030m6='Construction'
C24030m7='Manufacturing'
C24030m8='Wholesale trade'
C24030m9='Retail trade'
C24030m10='Transportation and warehousing, and utilities:'
C24030m11='Transportation and warehousing'
C24030m12='Utilities'
C24030m13='Information'
C24030m14='Finance and insurance, and real estate and rental and leasing:'
C24030m15='Finance and insurance'
C24030m16='Real estate and rental and leasing'
C24030m17='Professional, scientific, and management, and administrative and waste management services:'
C24030m18='Professional, scientific, and technical services'
C24030m19='Management of companies and enterprises'
C24030m20='Administrative and support and waste management services'
C24030m21='Educational services, and health care and social assistance:'
C24030m22='Educational services'
C24030m23='Health care and social assistance'
C24030m24='Arts, entertainment, and recreation, and accommodation and food services:'
C24030m25='Arts, entertainment, and recreation'
C24030m26='Accommodation and food services'
C24030m27='Other services, except public administration'
C24030m28='Public administration'
C24030m29='Female:'
C24030m30='Agriculture, forestry, fishing and hunting, and mining:'
C24030m31='Agriculture, forestry, fishing and hunting'
C24030m32='Mining, quarrying, and oil and gas extraction'
C24030m33='Construction'
C24030m34='Manufacturing'
C24030m35='Wholesale trade'
C24030m36='Retail trade'
C24030m37='Transportation and warehousing, and utilities:'
C24030m38='Transportation and warehousing'
C24030m39='Utilities'
C24030m40='Information'
C24030m41='Finance and insurance, and real estate and rental and leasing:'
C24030m42='Finance and insurance'
C24030m43='Real estate and rental and leasing'
C24030m44='Professional, scientific, and management, and administrative and waste management services:'
C24030m45='Professional, scientific, and technical services'
C24030m46='Management of companies and enterprises'
C24030m47='Administrative and support and waste management services'
C24030m48='Educational services, and health care and social assistance:'
C24030m49='Educational services'
C24030m50='Health care and social assistance'
C24030m51='Arts, entertainment, and recreation, and accommodation and food services:'
C24030m52='Arts, entertainment, and recreation'
C24030m53='Accommodation and food services'
C24030m54='Other services, except public administration'
C24030m55='Public administration'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B24022m1
B24022m2
B24022m3
B24022m4
B24022m5
B24022m6
B24022m7
B24022m8
B24022m9
B24022m10
B24022m11
B24022m12
B24022m13
B24022m14
B24022m15
B24022m16
B24022m17
B24022m18
B24022m19
B24022m20
B24022m21
B24022m22
B24022m23
B24022m24
B24022m25
B24022m26
B24022m27
B24022m28
B24022m29
B24022m30
B24022m31
B24022m32
B24022m33
B24022m34
B24022m35
B24022m36
B24022m37
B24022m38
B24022m39
B24022m40
B24022m41
B24022m42
B24022m43
B24022m44
B24022m45
B24022m46
B24022m47
B24022m48
B24022m49
B24022m50
B24022m51
B24022m52
B24022m53
B24022m54
B24022m55
B24022m56
B24022m57
B24022m58
B24022m59
B24022m60
B24022m61
B24022m62
B24022m63
B24022m64
B24022m65
B24022m66
B24022m67
B24022m68
B24022m69
B24022m70
B24022m71
B24022m72
B24022m73
 
B24031m1
B24031m2
B24031m3
B24031m4
B24031m5
B24031m6
B24031m7
B24031m8
B24031m9
B24031m10
B24031m11
B24031m12
B24031m13
B24031m14
B24031m15
B24031m16
B24031m17
B24031m18
B24031m19
B24031m20
B24031m21
B24031m22
B24031m23
B24031m24
B24031m25
B24031m26
B24031m27
 
B24032m1
B24032m2
B24032m3
B24032m4
B24032m5
B24032m6
B24032m7
B24032m8
B24032m9
B24032m10
B24032m11
B24032m12
B24032m13
B24032m14
B24032m15
B24032m16
B24032m17
B24032m18
B24032m19
B24032m20
B24032m21
B24032m22
B24032m23
B24032m24
B24032m25
B24032m26
B24032m27
B24032m28
B24032m29
B24032m30
B24032m31
B24032m32
B24032m33
B24032m34
B24032m35
B24032m36
B24032m37
B24032m38
B24032m39
B24032m40
B24032m41
B24032m42
B24032m43
B24032m44
B24032m45
B24032m46
B24032m47
B24032m48
B24032m49
B24032m50
B24032m51
B24032m52
B24032m53
B24032m54
 
C24030m1
C24030m2
C24030m3
C24030m4
C24030m5
C24030m6
C24030m7
C24030m8
C24030m9
C24030m10
C24030m11
C24030m12
C24030m13
C24030m14
C24030m15
C24030m16
C24030m17
C24030m18
C24030m19
C24030m20
C24030m21
C24030m22
C24030m23
C24030m24
C24030m25
C24030m26
C24030m27
C24030m28
C24030m29
C24030m30
C24030m31
C24030m32
C24030m33
C24030m34
C24030m35
C24030m36
C24030m37
C24030m38
C24030m39
C24030m40
C24030m41
C24030m42
C24030m43
C24030m44
C24030m45
C24030m46
C24030m47
C24030m48
C24030m49
C24030m50
C24030m51
C24030m52
C24030m53
C24030m54
C24030m55
;
RUN;
TITLE2;
