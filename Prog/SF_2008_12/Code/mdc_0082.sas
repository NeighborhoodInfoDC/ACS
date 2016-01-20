TITLE2 "m20125dc0082000";
DATA work.SFm0082dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0082000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*INDUSTRY BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over with earnings */
 
B24041m1='Total:'
B24041m2='Agriculture, forestry, fishing and hunting, and mining:'
B24041m3='Agriculture, forestry, fishing and hunting'
B24041m4='Mining, quarrying, and oil and gas extraction'
B24041m5='Construction'
B24041m6='Manufacturing'
B24041m7='Wholesale trade'
B24041m8='Retail trade'
B24041m9='Transportation and warehousing, and utilities:'
B24041m10='Transportation and warehousing'
B24041m11='Utilities'
B24041m12='Information'
B24041m13='Finance and insurance, and real estate and rental and leasing:'
B24041m14='Finance and insurance'
B24041m15='Real estate and rental and leasing'
B24041m16='Professional, scientific, and management, and administrative and waste management services:'
B24041m17='Professional, scientific, and technical services'
B24041m18='Management of companies and enterprises'
B24041m19='Administrative and support and waste management services'
B24041m20='Educational services, and health care and social assistance:'
B24041m21='Educational services'
B24041m22='Health care and social assistance'
B24041m23='Arts, entertainment, and recreation, and accommodation and food services:'
B24041m24='Arts, entertainment, and recreation'
B24041m25='Accommodation and food services'
B24041m26='Other services except public administration'
B24041m27='Public administration'
/*SEX BY INDUSTRY AND MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over with earnings */
 
B24042m1='Male:'
B24042m2='Agriculture, forestry, fishing and hunting, and mining:'
B24042m3='Agriculture, forestry, fishing and hunting'
B24042m4='Mining, quarrying, and oil and gas extraction'
B24042m5='Construction'
B24042m6='Manufacturing'
B24042m7='Wholesale trade'
B24042m8='Retail trade'
B24042m9='Transportation and warehousing, and utilities:'
B24042m10='Transportation and warehousing'
B24042m11='Utilities'
B24042m12='Information'
B24042m13='Finance and insurance, and real estate and rental and leasing:'
B24042m14='Finance and insurance'
B24042m15='Real estate and rental and leasing'
B24042m16='Professional, scientific, and management, and administrative and waste management services:'
B24042m17='Professional, scientific, and technical services'
B24042m18='Management of companies and enterprises'
B24042m19='Administrative and support and waste management services'
B24042m20='Educational services, and health care and social assistance:'
B24042m21='Educational services'
B24042m22='Health care and social assistance'
B24042m23='Arts, entertainment, and recreation, and accommodation and food services:'
B24042m24='Arts, entertainment, and recreation'
B24042m25='Accommodation and food services'
B24042m26='Other services, except public administration'
B24042m27='Public administration'
B24042m28='Female:'
B24042m29='Agriculture, forestry, fishing and hunting, and mining:'
B24042m30='Agriculture, forestry, fishing and hunting'
B24042m31='Mining, quarrying, and oil and gas extraction'
B24042m32='Construction'
B24042m33='Manufacturing'
B24042m34='Wholesale trade'
B24042m35='Retail trade'
B24042m36='Transportation and warehousing, and utilities:'
B24042m37='Transportation and warehousing'
B24042m38='Utilities'
B24042m39='Information'
B24042m40='Finance and insurance, and real estate and rental and leasing:'
B24042m41='Finance and insurance'
B24042m42='Real estate and rental and leasing'
B24042m43='Professional, scientific, and management, and administrative and waste management services:'
B24042m44='Professional, scientific, and technical services'
B24042m45='Management of companies and enterprises'
B24042m46='Administrative and support and waste management services'
B24042m47='Educational services, and health care and social assistance:'
B24042m48='Educational services'
B24042m49='Health care and social assistance'
B24042m50='Arts, entertainment, and recreation, and accommodation and food services:'
B24042m51='Arts, entertainment, and recreation'
B24042m52='Accommodation and food services'
B24042m53='Other services, except public administration'
B24042m54='Public administration'
/*SEX BY INDUSTRY FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over */
 
C24040m1='Total:'
C24040m2='Male:'
C24040m3='Agriculture, forestry, fishing and hunting, and mining:'
C24040m4='Agriculture, forestry, fishing and hunting'
C24040m5='Mining, quarrying, and oil and gas extraction'
C24040m6='Construction'
C24040m7='Manufacturing'
C24040m8='Wholesale trade'
C24040m9='Retail trade'
C24040m10='Transportation and warehousing, and utilities:'
C24040m11='Transportation and warehousing'
C24040m12='Utilities'
C24040m13='Information'
C24040m14='Finance and insurance, and real estate and rental and leasing:'
C24040m15='Finance and insurance'
C24040m16='Real estate and rental and leasing'
C24040m17='Professional, scientific, and management, and administrative and waste management services:'
C24040m18='Professional, scientific, and technical services'
C24040m19='Management of companies and enterprises'
C24040m20='Administrative and support and waste management services'
C24040m21='Educational services, and health care and social assistance:'
C24040m22='Educational services'
C24040m23='Health care and social assistance'
C24040m24='Arts, entertainment, and recreation, and accommodation and food services:'
C24040m25='Arts, entertainment, and recreation'
C24040m26='Accommodation and food services'
C24040m27='Other services, except public administration'
C24040m28='Public administration'
C24040m29='Female:'
C24040m30='Agriculture, forestry, fishing and hunting, and mining:'
C24040m31='Agriculture, forestry, fishing and hunting'
C24040m32='Mining, quarrying, and oil and gas extraction'
C24040m33='Construction'
C24040m34='Manufacturing'
C24040m35='Wholesale trade'
C24040m36='Retail trade'
C24040m37='Transportation and warehousing, and utilities:'
C24040m38='Transportation and warehousing'
C24040m39='Utilities'
C24040m40='Information'
C24040m41='Finance and insurance, and real estate and rental and leasing:'
C24040m42='Finance and insurance'
C24040m43='Real estate and rental and leasing'
C24040m44='Professional, scientific, and management, and administrative and waste management services:'
C24040m45='Professional, scientific, and technical services'
C24040m46='Management of companies and enterprises'
C24040m47='Administrative and support and waste management services'
C24040m48='Educational services, and health care and social assistance:'
C24040m49='Educational services'
C24040m50='Health care and social assistance'
C24040m51='Arts, entertainment, and recreation, and accommodation and food services:'
C24040m52='Arts, entertainment, and recreation'
C24040m53='Accommodation and food services'
C24040m54='Other services, except public administration'
C24040m55='Public administration'
/*INDUSTRY BY OCCUPATION FOR THE CIVILIAN  EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over */
 
C24050m1='Total:'
C24050m2='Agriculture, forestry, fishing and hunting, and mining'
C24050m3='Construction'
C24050m4='Manufacturing'
C24050m5='Wholesale trade'
C24050m6='Retail trade'
C24050m7='Transportation and warehousing, and utilities'
C24050m8='Information'
C24050m9='Finance and insurance, and real estate and rental and leasing'
C24050m10='Professional, scientific, and management, and administrative and waste management services'
C24050m11='Educational services, and health care and social assistance'
C24050m12='Arts, entertainment, and recreation, and accommodation and food services'
C24050m13='Other services, except public administration'
C24050m14='Public administration'
C24050m15='Management, business, science, and arts occupations:'
C24050m16='Agriculture, forestry, fishing and hunting, and mining'
C24050m17='Construction'
C24050m18='Manufacturing'
C24050m19='Wholesale trade'
C24050m20='Retail trade'
C24050m21='Transportation and warehousing, and utilities'
C24050m22='Information'
C24050m23='Finance and insurance, and real estate and rental and leasing'
C24050m24='Professional, scientific, and management, and administrative and waste management services'
C24050m25='Educational services, and health care and social assistance'
C24050m26='Arts, entertainment, and recreation, and accommodation and food services'
C24050m27='Other services, except public administration'
C24050m28='Public administration'
C24050m29='Service occupations:'
C24050m30='Agriculture, forestry, fishing and hunting, and mining'
C24050m31='Construction'
C24050m32='Manufacturing'
C24050m33='Wholesale trade'
C24050m34='Retail trade'
C24050m35='Transportation and warehousing, and utilities'
C24050m36='Information'
C24050m37='Finance and insurance, and real estate and rental and leasing'
C24050m38='Professional, scientific, and management, and administrative and waste management services'
C24050m39='Educational services, and health care and social assistance'
C24050m40='Arts, entertainment, and recreation, and accommodation and food services'
C24050m41='Other services, except public administration'
C24050m42='Public administration'
C24050m43='Sales and office occupations:'
C24050m44='Agriculture, forestry, fishing and hunting, and mining'
C24050m45='Construction'
C24050m46='Manufacturing'
C24050m47='Wholesale trade'
C24050m48='Retail trade'
C24050m49='Transportation and warehousing, and utilities'
C24050m50='Information'
C24050m51='Finance and insurance, and real estate and rental and leasing'
C24050m52='Professional, scientific, and management, and administrative and waste management services'
C24050m53='Educational services, and health care and social assistance'
C24050m54='Arts, entertainment, and recreation, and accommodation and food services'
C24050m55='Other services, except public administration'
C24050m56='Public administration'
C24050m57='Natural resources, construction, and maintenance occupations:'
C24050m58='Agriculture, forestry, fishing and hunting, and mining'
C24050m59='Construction'
C24050m60='Manufacturing'
C24050m61='Wholesale trade'
C24050m62='Retail trade'
C24050m63='Transportation and warehousing, and utilities'
C24050m64='Information'
C24050m65='Finance and insurance, and real estate and rental and leasing'
C24050m66='Professional, scientific, and management, and administrative and waste management services'
C24050m67='Educational services, and health care and social assistance'
C24050m68='Arts, entertainment, and recreation, and accommodation and food services'
C24050m69='Other services, except public administration'
C24050m70='Public administration'
C24050m71='Production, transportation, and material moving occupations:'
C24050m72='Agriculture, forestry, fishing and hunting, and mining'
C24050m73='Construction'
C24050m74='Manufacturing'
C24050m75='Wholesale trade'
C24050m76='Retail trade'
C24050m77='Transportation and warehousing, and utilities'
C24050m78='Information'
C24050m79='Finance and insurance, and real estate and rental and leasing'
C24050m80='Professional, scientific, and management, and administrative and waste management services'
C24050m81='Educational services, and health care and social assistance'
C24050m82='Arts, entertainment, and recreation, and accommodation and food services'
C24050m83='Other services, except public administration'
C24050m84='Public administration'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B24041m1
B24041m2
B24041m3
B24041m4
B24041m5
B24041m6
B24041m7
B24041m8
B24041m9
B24041m10
B24041m11
B24041m12
B24041m13
B24041m14
B24041m15
B24041m16
B24041m17
B24041m18
B24041m19
B24041m20
B24041m21
B24041m22
B24041m23
B24041m24
B24041m25
B24041m26
B24041m27
 
B24042m1
B24042m2
B24042m3
B24042m4
B24042m5
B24042m6
B24042m7
B24042m8
B24042m9
B24042m10
B24042m11
B24042m12
B24042m13
B24042m14
B24042m15
B24042m16
B24042m17
B24042m18
B24042m19
B24042m20
B24042m21
B24042m22
B24042m23
B24042m24
B24042m25
B24042m26
B24042m27
B24042m28
B24042m29
B24042m30
B24042m31
B24042m32
B24042m33
B24042m34
B24042m35
B24042m36
B24042m37
B24042m38
B24042m39
B24042m40
B24042m41
B24042m42
B24042m43
B24042m44
B24042m45
B24042m46
B24042m47
B24042m48
B24042m49
B24042m50
B24042m51
B24042m52
B24042m53
B24042m54
 
C24040m1
C24040m2
C24040m3
C24040m4
C24040m5
C24040m6
C24040m7
C24040m8
C24040m9
C24040m10
C24040m11
C24040m12
C24040m13
C24040m14
C24040m15
C24040m16
C24040m17
C24040m18
C24040m19
C24040m20
C24040m21
C24040m22
C24040m23
C24040m24
C24040m25
C24040m26
C24040m27
C24040m28
C24040m29
C24040m30
C24040m31
C24040m32
C24040m33
C24040m34
C24040m35
C24040m36
C24040m37
C24040m38
C24040m39
C24040m40
C24040m41
C24040m42
C24040m43
C24040m44
C24040m45
C24040m46
C24040m47
C24040m48
C24040m49
C24040m50
C24040m51
C24040m52
C24040m53
C24040m54
C24040m55
 
C24050m1
C24050m2
C24050m3
C24050m4
C24050m5
C24050m6
C24050m7
C24050m8
C24050m9
C24050m10
C24050m11
C24050m12
C24050m13
C24050m14
C24050m15
C24050m16
C24050m17
C24050m18
C24050m19
C24050m20
C24050m21
C24050m22
C24050m23
C24050m24
C24050m25
C24050m26
C24050m27
C24050m28
C24050m29
C24050m30
C24050m31
C24050m32
C24050m33
C24050m34
C24050m35
C24050m36
C24050m37
C24050m38
C24050m39
C24050m40
C24050m41
C24050m42
C24050m43
C24050m44
C24050m45
C24050m46
C24050m47
C24050m48
C24050m49
C24050m50
C24050m51
C24050m52
C24050m53
C24050m54
C24050m55
C24050m56
C24050m57
C24050m58
C24050m59
C24050m60
C24050m61
C24050m62
C24050m63
C24050m64
C24050m65
C24050m66
C24050m67
C24050m68
C24050m69
C24050m70
C24050m71
C24050m72
C24050m73
C24050m74
C24050m75
C24050m76
C24050m77
C24050m78
C24050m79
C24050m80
C24050m81
C24050m82
C24050m83
C24050m84
;
RUN;
TITLE2;
