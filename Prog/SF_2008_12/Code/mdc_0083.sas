TITLE2 "m20125dc0083000";
DATA work.SFm0083dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0083000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SEX BY CLASS OF WORKER FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over */
 
B24080m1='Total:'
B24080m2='Male:'
B24080m3='Private for-profit wage and salary workers:'
B24080m4='Employee of private company workers'
B24080m5='Self-employed in own incorporated business workers'
B24080m6='Private not-for-profit wage and salary workers'
B24080m7='Local government workers'
B24080m8='State government workers'
B24080m9='Federal government workers'
B24080m10='Self-employed in own not incorporated business workers'
B24080m11='Unpaid family workers'
B24080m12='Female:'
B24080m13='Private for-profit wage and salary workers:'
B24080m14='Employee of private company workers'
B24080m15='Self-employed in own incorporated business workers'
B24080m16='Private not-for-profit wage and salary workers'
B24080m17='Local government workers'
B24080m18='State government workers'
B24080m19='Federal government workers'
B24080m20='Self-employed in own not incorporated business workers'
B24080m21='Unpaid family workers'
/*CLASS OF WORKER  BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over with earnings */
 
B24081m1='Total:'
B24081m2='Private for-profit wage and salary workers:'
B24081m3='Employee of private company workers'
B24081m4='Self-employed in own incorporated business workers'
B24081m5='Private not-for-profit wage and salary workers'
B24081m6='Local government workers'
B24081m7='State government workers'
B24081m8='Federal government workers'
B24081m9='Self-employed in own not incorporated business workers and unpaid family workers'
/*SEX BY CLASS OF WORKER AND MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE  CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over with earnings */
 
B24082m1='Male:'
B24082m2='Private for-profit wage and salary workers:'
B24082m3='Employee of private company workers'
B24082m4='Self-employed in own incorporated business workers'
B24082m5='Private not-for-profit wage and salary workers'
B24082m6='Local government workers'
B24082m7='State government workers'
B24082m8='Federal government workers'
B24082m9='Self-employed in own not incorporated business workers and unpaid family workers'
B24082m10='Female:'
B24082m11='Private for-profit wage and salary workers:'
B24082m12='Employee of private company workers'
B24082m13='Self-employed in own incorporated business workers'
B24082m14='Private not-for-profit wage and salary workers'
B24082m15='Local government workers'
B24082m16='State government workers'
B24082m17='Federal government workers'
B24082m18='Self-employed in own not incorporated business workers and unpaid family workers'
/*SEX BY CLASS OF WORKER FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over */
 
B24090m1='Total:'
B24090m2='Male:'
B24090m3='Private for-profit wage and salary workers:'
B24090m4='Employee of private company workers'
B24090m5='Self-employed in own incorporated business workers'
B24090m6='Private not-for-profit wage and salary workers'
B24090m7='Local government workers'
B24090m8='State government workers'
B24090m9='Federal government workers'
B24090m10='Self-employed in own not incorporated business workers'
B24090m11='Unpaid family workers'
B24090m12='Female:'
B24090m13='Private for-profit wage and salary workers:'
B24090m14='Employee of private company workers'
B24090m15='Self-employed in own incorporated business workers'
B24090m16='Private not-for-profit wage and salary workers'
B24090m17='Local government workers'
B24090m18='State government workers'
B24090m19='Federal government workers'
B24090m20='Self-employed in own not incorporated business workers'
B24090m21='Unpaid family workers'
/*CLASS OF WORKER BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over with earnings */
 
B24091m1='Total:'
B24091m2='Private for-profit wage and salary workers:'
B24091m3='Employee of private company workers'
B24091m4='Self-employed in own incorporated business workers'
B24091m5='Private not-for-profit wage and salary workers'
B24091m6='Local government workers'
B24091m7='State government workers'
B24091m8='Federal government workers'
B24091m9='Self-employed in own not incorporated business workers and unpaid family workers'
/*SEX BY CLASS OF WORKER AND MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over with earnings */
 
B24092m1='Male:'
B24092m2='Private for-profit wage and salary workers:'
B24092m3='Employee of private company workers'
B24092m4='Self-employed in own incorporated business workers'
B24092m5='Private not-for-profit wage and salary workers'
B24092m6='Local government workers'
B24092m7='State government workers'
B24092m8='Federal government workers'
B24092m9='Self-employed in own not incorporated business workers and unpaid family workers'
B24092m10='Female:'
B24092m11='Private for-profit wage and salary workers:'
B24092m12='Employee of private company workers'
B24092m13='Self-employed in own incorporated business workers'
B24092m14='Private not-for-profit wage and salary workers'
B24092m15='Local government workers'
B24092m16='State government workers'
B24092m17='Federal government workers'
B24092m18='Self-employed in own not incorporated business workers and unpaid family workers'
/*OCCUPATION BY CLASS OF WORKER FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over */
 
C24060m1='Total:'
C24060m2='Management, business, science, and arts occupations'
C24060m3='Service occupations'
C24060m4='Sales and office occupations'
C24060m5='Natural resources, construction, and maintenance occupations'
C24060m6='Production, transportation, and material moving occupations'
C24060m7='Employee of private company workers:'
C24060m8='Management, business, science, and arts occupations'
C24060m9='Service occupations'
C24060m10='Sales and office occupations'
C24060m11='Natural resources, construction, and maintenance occupations'
C24060m12='Production, transportation, and material moving occupations'
C24060m13='Self-employed in own incorporated business workers:'
C24060m14='Management, business, science, and arts occupations'
C24060m15='Service occupations'
C24060m16='Sales and office occupations'
C24060m17='Natural resources, construction, and maintenance occupations'
C24060m18='Production, transportation, and material moving occupations'
C24060m19='Private not-for-profit wage and salary workers:'
C24060m20='Management, business, science, and arts occupations'
C24060m21='Service occupations'
C24060m22='Sales and office occupations'
C24060m23='Natural resources, construction, and maintenance occupations'
C24060m24='Production, transportation, and material moving occupations'
C24060m25='Local, state, and federal government workers:'
C24060m26='Management, business, science, and arts occupations'
C24060m27='Service occupations'
C24060m28='Sales and office occupations'
C24060m29='Natural resources, construction, and maintenance occupations'
C24060m30='Production, transportation, and material moving occupations'
C24060m31='Self-employed in own not incorporated business workers and unpaid family workers:'
C24060m32='Management, business, science, and arts occupations'
C24060m33='Service occupations'
C24060m34='Sales and office occupations'
C24060m35='Natural resources, construction, and maintenance occupations'
C24060m36='Production, transportation, and material moving occupations'
/*INDUSTRY BY CLASS OF WORKER FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over */
 
C24070m1='Total:'
C24070m2='Agriculture, forestry, fishing and hunting, and mining:'
C24070m3='Construction'
C24070m4='Manufacturing'
C24070m5='Wholesale trade'
C24070m6='Retail trade'
C24070m7='Transportation and warehousing, and utilities:'
C24070m8='Information'
C24070m9='Finance and insurance, and real estate and rental and leasing:'
C24070m10='Professional, scientific, and management, and administrative and waste management services:'
C24070m11='Educational services, and  health care and social assistance:'
C24070m12='Arts, entertainment, and recreation, and accommodation and food services:'
C24070m13='Other services, except public administration'
C24070m14='Public administration'
C24070m15='Employee of private company workers:'
C24070m16='Agriculture, forestry, fishing and hunting, and mining'
C24070m17='Construction'
C24070m18='Manufacturing'
C24070m19='Wholesale trade'
C24070m20='Retail trade'
C24070m21='Transportation and warehousing, and utilities'
C24070m22='Information'
C24070m23='Finance and insurance, and real estate and rental and leasing'
C24070m24='Professional, scientific, and management, and administrative and waste management services'
C24070m25='Educational services, and  health care and social assistance'
C24070m26='Arts, entertainment, and recreation, and accommodation and food services'
C24070m27='Other services, except public administration'
C24070m28='Public administration'
C24070m29='Self-employed in own incorporated business workers:'
C24070m30='Agriculture, forestry, fishing and hunting, and mining'
C24070m31='Construction'
C24070m32='Manufacturing'
C24070m33='Wholesale trade'
C24070m34='Retail trade'
C24070m35='Transportation and warehousing, and utilities'
C24070m36='Information'
C24070m37='Finance and insurance, and real estate and rental and leasing'
C24070m38='Professional, scientific, and management, and administrative and waste management services'
C24070m39='Educational services, and  health care and social assistance'
C24070m40='Arts, entertainment, and recreation, and accommodation and food services'
C24070m41='Other services, except public administration'
C24070m42='Public administration'
C24070m43='Private not-for-profit wage and salary workers:'
C24070m44='Agriculture, forestry, fishing and hunting, and mining'
C24070m45='Construction'
C24070m46='Manufacturing'
C24070m47='Wholesale trade'
C24070m48='Retail trade'
C24070m49='Transportation and warehousing, and utilities'
C24070m50='Information'
C24070m51='Finance and insurance, and real estate and rental and leasing'
C24070m52='Professional, scientific, and management, and administrative and waste management services'
C24070m53='Educational services, and  health care and social assistance'
C24070m54='Arts, entertainment, and recreation, and accommodation and food services'
C24070m55='Other services, except public administration'
C24070m56='Public administration'
C24070m57='Local, state, and federal government workers:'
C24070m58='Agriculture, forestry, fishing and hunting, and mining'
C24070m59='Construction'
C24070m60='Manufacturing'
C24070m61='Wholesale trade'
C24070m62='Retail trade'
C24070m63='Transportation and warehousing, and utilities'
C24070m64='Information'
C24070m65='Finance and insurance, and real estate and rental and leasing'
C24070m66='Professional, scientific, and management, and administrative and waste management services'
C24070m67='Educational services, and  health care and social assistance'
C24070m68='Arts, entertainment, and recreation, and accommodation and food services'
C24070m69='Other services, except public administration'
C24070m70='Public administration'
C24070m71='Self-employed in own not incorporated business workers and unpaid family workers:'
C24070m72='Agriculture, forestry, fishing and hunting, and mining'
C24070m73='Construction'
C24070m74='Manufacturing'
C24070m75='Wholesale trade'
C24070m76='Retail trade'
C24070m77='Transportation and warehousing, and utilities'
C24070m78='Information'
C24070m79='Finance and insurance, and real estate and rental and leasing'
C24070m80='Professional, scientific, and management, and administrative and waste management services'
C24070m81='Educational services, and  health care and social assistance'
C24070m82='Arts, entertainment, and recreation, and accommodation and food services'
C24070m83='Other services, except public administration'
C24070m84='Public administration'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B24080m1
B24080m2
B24080m3
B24080m4
B24080m5
B24080m6
B24080m7
B24080m8
B24080m9
B24080m10
B24080m11
B24080m12
B24080m13
B24080m14
B24080m15
B24080m16
B24080m17
B24080m18
B24080m19
B24080m20
B24080m21
 
B24081m1
B24081m2
B24081m3
B24081m4
B24081m5
B24081m6
B24081m7
B24081m8
B24081m9
 
B24082m1
B24082m2
B24082m3
B24082m4
B24082m5
B24082m6
B24082m7
B24082m8
B24082m9
B24082m10
B24082m11
B24082m12
B24082m13
B24082m14
B24082m15
B24082m16
B24082m17
B24082m18
 
B24090m1
B24090m2
B24090m3
B24090m4
B24090m5
B24090m6
B24090m7
B24090m8
B24090m9
B24090m10
B24090m11
B24090m12
B24090m13
B24090m14
B24090m15
B24090m16
B24090m17
B24090m18
B24090m19
B24090m20
B24090m21
 
B24091m1
B24091m2
B24091m3
B24091m4
B24091m5
B24091m6
B24091m7
B24091m8
B24091m9
 
B24092m1
B24092m2
B24092m3
B24092m4
B24092m5
B24092m6
B24092m7
B24092m8
B24092m9
B24092m10
B24092m11
B24092m12
B24092m13
B24092m14
B24092m15
B24092m16
B24092m17
B24092m18
 
C24060m1
C24060m2
C24060m3
C24060m4
C24060m5
C24060m6
C24060m7
C24060m8
C24060m9
C24060m10
C24060m11
C24060m12
C24060m13
C24060m14
C24060m15
C24060m16
C24060m17
C24060m18
C24060m19
C24060m20
C24060m21
C24060m22
C24060m23
C24060m24
C24060m25
C24060m26
C24060m27
C24060m28
C24060m29
C24060m30
C24060m31
C24060m32
C24060m33
C24060m34
C24060m35
C24060m36
 
C24070m1
C24070m2
C24070m3
C24070m4
C24070m5
C24070m6
C24070m7
C24070m8
C24070m9
C24070m10
C24070m11
C24070m12
C24070m13
C24070m14
C24070m15
C24070m16
C24070m17
C24070m18
C24070m19
C24070m20
C24070m21
C24070m22
C24070m23
C24070m24
C24070m25
C24070m26
C24070m27
C24070m28
C24070m29
C24070m30
C24070m31
C24070m32
C24070m33
C24070m34
C24070m35
C24070m36
C24070m37
C24070m38
C24070m39
C24070m40
C24070m41
C24070m42
C24070m43
C24070m44
C24070m45
C24070m46
C24070m47
C24070m48
C24070m49
C24070m50
C24070m51
C24070m52
C24070m53
C24070m54
C24070m55
C24070m56
C24070m57
C24070m58
C24070m59
C24070m60
C24070m61
C24070m62
C24070m63
C24070m64
C24070m65
C24070m66
C24070m67
C24070m68
C24070m69
C24070m70
C24070m71
C24070m72
C24070m73
C24070m74
C24070m75
C24070m76
C24070m77
C24070m78
C24070m79
C24070m80
C24070m81
C24070m82
C24070m83
C24070m84
;
RUN;
TITLE2;
