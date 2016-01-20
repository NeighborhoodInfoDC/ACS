TITLE2 "m20125md0031000";
DATA work.SFm0031md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0031000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*MEANS OF TRANSPORTATION TO WORK BY INDUSTRY FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B08526m1='Total:'
B08526m2='Agriculture, forestry, fishing and hunting, and mining'
B08526m3='Construction'
B08526m4='Manufacturing'
B08526m5='Wholesale trade'
B08526m6='Retail trade'
B08526m7='Transportation and warehousing, and utilities'
B08526m8='Information'
B08526m9='Finance and insurance, and real estate and rental and leasing'
B08526m10='Professional, scientific, and management, and administrative and waste management services'
B08526m11='Educational services, and health care and social assistance'
B08526m12='Arts, entertainment, and recreation, and accommodation and food services'
B08526m13='Other services (except public administration)'
B08526m14='Public administration'
B08526m15='Armed forces'
B08526m16='Car, truck, or van - drove alone:'
B08526m17='Agriculture, forestry, fishing and hunting, and mining'
B08526m18='Construction'
B08526m19='Manufacturing'
B08526m20='Wholesale trade'
B08526m21='Retail trade'
B08526m22='Transportation and warehousing, and utilities'
B08526m23='Information'
B08526m24='Finance and insurance, and real estate and rental and leasing'
B08526m25='Professional, scientific, and management, and administrative and waste management services'
B08526m26='Educational services, and health care and social assistance'
B08526m27='Arts, entertainment, and recreation, and accommodation and food services'
B08526m28='Other services (except public administration)'
B08526m29='Public administration'
B08526m30='Armed forces'
B08526m31='Car, truck, or van - carpooled:'
B08526m32='Agriculture, forestry, fishing and hunting, and mining'
B08526m33='Construction'
B08526m34='Manufacturing'
B08526m35='Wholesale trade'
B08526m36='Retail trade'
B08526m37='Transportation and warehousing, and utilities'
B08526m38='Information'
B08526m39='Finance and insurance, and real estate and rental and leasing'
B08526m40='Professional, scientific, and management, and administrative and waste management services'
B08526m41='Educational services, and health care and social assistance'
B08526m42='Arts, entertainment, and recreation, and accommodation and food services'
B08526m43='Other services (except public administration)'
B08526m44='Public administration'
B08526m45='Armed forces'
B08526m46='Public transportation (excluding taxicab):'
B08526m47='Agriculture, forestry, fishing and hunting, and mining'
B08526m48='Construction'
B08526m49='Manufacturing'
B08526m50='Wholesale trade'
B08526m51='Retail trade'
B08526m52='Transportation and warehousing, and utilities'
B08526m53='Information'
B08526m54='Finance and insurance, and real estate and rental and leasing'
B08526m55='Professional, scientific, and management, and administrative and waste management services'
B08526m56='Educational services, and health care and social assistance'
B08526m57='Arts, entertainment, and recreation, and accommodation and food services'
B08526m58='Other services (except public administration)'
B08526m59='Public administration'
B08526m60='Armed forces'
B08526m61='Walked:'
B08526m62='Agriculture, forestry, fishing and hunting, and mining'
B08526m63='Construction'
B08526m64='Manufacturing'
B08526m65='Wholesale trade'
B08526m66='Retail trade'
B08526m67='Transportation and warehousing, and utilities'
B08526m68='Information'
B08526m69='Finance and insurance, and real estate and rental and leasing'
B08526m70='Professional, scientific, and management, and administrative and waste management services'
B08526m71='Educational services, and health care and social assistance'
B08526m72='Arts, entertainment, and recreation, and accommodation and food services'
B08526m73='Other services (except public administration)'
B08526m74='Public administration'
B08526m75='Armed forces'
B08526m76='Taxicab, motorcycle, bicycle, or other means:'
B08526m77='Agriculture, forestry, fishing and hunting, and mining'
B08526m78='Construction'
B08526m79='Manufacturing'
B08526m80='Wholesale trade'
B08526m81='Retail trade'
B08526m82='Transportation and warehousing, and utilities'
B08526m83='Information'
B08526m84='Finance and insurance, and real estate and rental and leasing'
B08526m85='Professional, scientific, and management, and administrative and waste management services'
B08526m86='Educational services, and health care and social assistance'
B08526m87='Arts, entertainment, and recreation, and accommodation and food services'
B08526m88='Other services (except public administration)'
B08526m89='Public administration'
B08526m90='Armed forces'
B08526m91='Worked at home:'
B08526m92='Agriculture, forestry, fishing and hunting, and mining'
B08526m93='Construction'
B08526m94='Manufacturing'
B08526m95='Wholesale trade'
B08526m96='Retail trade'
B08526m97='Transportation and warehousing, and utilities'
B08526m98='Information'
B08526m99='Finance and insurance, and real estate and rental and leasing'
B08526m100='Professional, scientific, and management, and administrative and waste management services'
B08526m101='Educational services, and health care and social assistance'
B08526m102='Arts, entertainment, and recreation, and accommodation and food services'
B08526m103='Other services (except public administration)'
B08526m104='Public administration'
B08526m105='Armed forces'
/*MEANS OF TRANSPORTATION TO WORK BY CLASS OF WORKER FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B08528m1='Total:'
B08528m2='Private for-profit wage and salary workers:'
B08528m3='Employee of private company workers'
B08528m4='Self-employed in own incorporated business workers'
B08528m5='Private not-for-profit wage and salary workers'
B08528m6='Local government workers'
B08528m7='State government workers'
B08528m8='Federal government workers'
B08528m9='Self-employed in own not incorporated business workers'
B08528m10='Unpaid family workers'
B08528m11='Car, truck, or van - drove alone:'
B08528m12='Private for-profit wage and salary workers:'
B08528m13='Employee of private company workers'
B08528m14='Self-employed in own incorporated business workers'
B08528m15='Private not-for-profit wage and salary workers'
B08528m16='Local government workers'
B08528m17='State government workers'
B08528m18='Federal government workers'
B08528m19='Self-employed in own not incorporated business workers'
B08528m20='Unpaid family workers'
B08528m21='Car, truck, or van - carpooled:'
B08528m22='Private for-profit wage and salary workers:'
B08528m23='Employee of private company workers'
B08528m24='Self-employed in own incorporated business workers'
B08528m25='Private not-for-profit wage and salary workers'
B08528m26='Local government workers'
B08528m27='State government workers'
B08528m28='Federal government workers'
B08528m29='Self-employed in own not incorporated business workers'
B08528m30='Unpaid family workers'
B08528m31='Public transportation (excluding taxicab):'
B08528m32='Private for-profit wage and salary workers:'
B08528m33='Employee of private company workers'
B08528m34='Self-employed in own incorporated business workers'
B08528m35='Private not-for-profit wage and salary workers'
B08528m36='Local government workers'
B08528m37='State government workers'
B08528m38='Federal government workers'
B08528m39='Self-employed in own not incorporated business workers'
B08528m40='Unpaid family workers'
B08528m41='Walked:'
B08528m42='Private for-profit wage and salary workers:'
B08528m43='Employee of private company workers'
B08528m44='Self-employed in own incorporated business workers'
B08528m45='Private not-for-profit wage and salary workers'
B08528m46='Local government workers'
B08528m47='State government workers'
B08528m48='Federal government workers'
B08528m49='Self-employed in own not incorporated business workers'
B08528m50='Unpaid family workers'
B08528m51='Taxicab, motorcycle, bicycle, or other means:'
B08528m52='Private for-profit wage and salary workers:'
B08528m53='Employee of private company workers'
B08528m54='Self-employed in own incorporated business workers'
B08528m55='Private not-for-profit wage and salary workers'
B08528m56='Local government workers'
B08528m57='State government workers'
B08528m58='Federal government workers'
B08528m59='Self-employed in own not incorporated business workers'
B08528m60='Unpaid family workers'
B08528m61='Worked at home:'
B08528m62='Private for-profit wage and salary workers:'
B08528m63='Employee of private company workers'
B08528m64='Self-employed in own incorporated business workers'
B08528m65='Private not-for-profit wage and salary workers'
B08528m66='Local government workers'
B08528m67='State government workers'
B08528m68='Federal government workers'
B08528m69='Self-employed in own not incorporated business workers'
B08528m70='Unpaid family workers'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B08526m1
B08526m2
B08526m3
B08526m4
B08526m5
B08526m6
B08526m7
B08526m8
B08526m9
B08526m10
B08526m11
B08526m12
B08526m13
B08526m14
B08526m15
B08526m16
B08526m17
B08526m18
B08526m19
B08526m20
B08526m21
B08526m22
B08526m23
B08526m24
B08526m25
B08526m26
B08526m27
B08526m28
B08526m29
B08526m30
B08526m31
B08526m32
B08526m33
B08526m34
B08526m35
B08526m36
B08526m37
B08526m38
B08526m39
B08526m40
B08526m41
B08526m42
B08526m43
B08526m44
B08526m45
B08526m46
B08526m47
B08526m48
B08526m49
B08526m50
B08526m51
B08526m52
B08526m53
B08526m54
B08526m55
B08526m56
B08526m57
B08526m58
B08526m59
B08526m60
B08526m61
B08526m62
B08526m63
B08526m64
B08526m65
B08526m66
B08526m67
B08526m68
B08526m69
B08526m70
B08526m71
B08526m72
B08526m73
B08526m74
B08526m75
B08526m76
B08526m77
B08526m78
B08526m79
B08526m80
B08526m81
B08526m82
B08526m83
B08526m84
B08526m85
B08526m86
B08526m87
B08526m88
B08526m89
B08526m90
B08526m91
B08526m92
B08526m93
B08526m94
B08526m95
B08526m96
B08526m97
B08526m98
B08526m99
B08526m100
B08526m101
B08526m102
B08526m103
B08526m104
B08526m105
 
B08528m1
B08528m2
B08528m3
B08528m4
B08528m5
B08528m6
B08528m7
B08528m8
B08528m9
B08528m10
B08528m11
B08528m12
B08528m13
B08528m14
B08528m15
B08528m16
B08528m17
B08528m18
B08528m19
B08528m20
B08528m21
B08528m22
B08528m23
B08528m24
B08528m25
B08528m26
B08528m27
B08528m28
B08528m29
B08528m30
B08528m31
B08528m32
B08528m33
B08528m34
B08528m35
B08528m36
B08528m37
B08528m38
B08528m39
B08528m40
B08528m41
B08528m42
B08528m43
B08528m44
B08528m45
B08528m46
B08528m47
B08528m48
B08528m49
B08528m50
B08528m51
B08528m52
B08528m53
B08528m54
B08528m55
B08528m56
B08528m57
B08528m58
B08528m59
B08528m60
B08528m61
B08528m62
B08528m63
B08528m64
B08528m65
B08528m66
B08528m67
B08528m68
B08528m69
B08528m70
;
RUN;
TITLE2;
