TITLE2 "m20125dc0026000";
DATA work.SFm0026dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0026000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*MEANS OF TRANSPORTATION TO WORK BY INDUSTRY */
/*Universe:  Workers 16 years and over */
 
B08126m1='Total:'
B08126m2='Agriculture, forestry, fishing and hunting, and mining'
B08126m3='Construction'
B08126m4='Manufacturing'
B08126m5='Wholesale trade'
B08126m6='Retail trade'
B08126m7='Transportation and warehousing, and utilities'
B08126m8='Information'
B08126m9='Finance and insurance, and real estate and rental and leasing'
B08126m10='Professional, scientific, and management, and administrative and waste management services'
B08126m11='Educational services, and health care and social assistance'
B08126m12='Arts, entertainment, and recreation, and accommodation and food services'
B08126m13='Other services (except public administration)'
B08126m14='Public administration'
B08126m15='Armed forces'
B08126m16='Car, truck, or van - drove alone:'
B08126m17='Agriculture, forestry, fishing and hunting, and mining'
B08126m18='Construction'
B08126m19='Manufacturing'
B08126m20='Wholesale trade'
B08126m21='Retail trade'
B08126m22='Transportation and warehousing, and utilities'
B08126m23='Information'
B08126m24='Finance and insurance, and real estate and rental and leasing'
B08126m25='Professional, scientific, and management, and administrative and waste management services'
B08126m26='Educational services, and health care and social assistance'
B08126m27='Arts, entertainment, and recreation, and accommodation and food services'
B08126m28='Other services (except public administration)'
B08126m29='Public administration'
B08126m30='Armed forces'
B08126m31='Car, truck, or van - carpooled:'
B08126m32='Agriculture, forestry, fishing and hunting, and mining'
B08126m33='Construction'
B08126m34='Manufacturing'
B08126m35='Wholesale trade'
B08126m36='Retail trade'
B08126m37='Transportation and warehousing, and utilities'
B08126m38='Information'
B08126m39='Finance and insurance, and real estate and rental and leasing'
B08126m40='Professional, scientific, and management, and administrative and waste management services'
B08126m41='Educational services, and health care and social assistance'
B08126m42='Arts, entertainment, and recreation, and accommodation and food services'
B08126m43='Other services (except public administration)'
B08126m44='Public administration'
B08126m45='Armed forces'
B08126m46='Public transportation (excluding taxicab):'
B08126m47='Agriculture, forestry, fishing and hunting, and mining'
B08126m48='Construction'
B08126m49='Manufacturing'
B08126m50='Wholesale trade'
B08126m51='Retail trade'
B08126m52='Transportation and warehousing, and utilities'
B08126m53='Information'
B08126m54='Finance and insurance, and real estate and rental and leasing'
B08126m55='Professional, scientific, and management, and administrative and waste management services'
B08126m56='Educational services, and health care and social assistance'
B08126m57='Arts, entertainment, and recreation, and accommodation and food services'
B08126m58='Other services (except public administration)'
B08126m59='Public administration'
B08126m60='Armed forces'
B08126m61='Walked:'
B08126m62='Agriculture, forestry, fishing and hunting, and mining'
B08126m63='Construction'
B08126m64='Manufacturing'
B08126m65='Wholesale trade'
B08126m66='Retail trade'
B08126m67='Transportation and warehousing, and utilities'
B08126m68='Information'
B08126m69='Finance and insurance, and real estate and rental and leasing'
B08126m70='Professional, scientific, and management, and administrative and waste management services'
B08126m71='Educational services, and health care and social assistance'
B08126m72='Arts, entertainment, and recreation, and accommodation and food services'
B08126m73='Other services (except public administration)'
B08126m74='Public administration'
B08126m75='Armed forces'
B08126m76='Taxicab, motorcycle, bicycle, or other means:'
B08126m77='Agriculture, forestry, fishing and hunting, and mining'
B08126m78='Construction'
B08126m79='Manufacturing'
B08126m80='Wholesale trade'
B08126m81='Retail trade'
B08126m82='Transportation and warehousing, and utilities'
B08126m83='Information'
B08126m84='Finance and insurance, and real estate and rental and leasing'
B08126m85='Professional, scientific, and management, and administrative and waste management services'
B08126m86='Educational services, and health care and social assistance'
B08126m87='Arts, entertainment, and recreation, and accommodation and food services'
B08126m88='Other services (except public administration)'
B08126m89='Public administration'
B08126m90='Armed forces'
B08126m91='Worked at home:'
B08126m92='Agriculture, forestry, fishing and hunting, and mining'
B08126m93='Construction'
B08126m94='Manufacturing'
B08126m95='Wholesale trade'
B08126m96='Retail trade'
B08126m97='Transportation and warehousing, and utilities'
B08126m98='Information'
B08126m99='Finance and insurance, and real estate and rental and leasing'
B08126m100='Professional, scientific, and management, and administrative and waste management services'
B08126m101='Educational services, and health care and social assistance'
B08126m102='Arts, entertainment, and recreation, and accommodation and food services'
B08126m103='Other services (except public administration)'
B08126m104='Public administration'
B08126m105='Armed forces'
/*MEANS OF TRANSPORTATION TO WORK BY CLASS OF WORKER */
/*Universe:  Workers 16 years and over */
 
B08128m1='Total:'
B08128m2='Private for-profit wage and salary workers:'
B08128m3='Employee of private company workers'
B08128m4='Self-employed in own incorporated business workers'
B08128m5='Private not-for-profit wage and salary workers'
B08128m6='Local government workers'
B08128m7='State government workers'
B08128m8='Federal government workers'
B08128m9='Self-employed in own not incorporated business workers'
B08128m10='Unpaid family workers'
B08128m11='Car, truck, or van - drove alone:'
B08128m12='Private for-profit wage and salary workers:'
B08128m13='Employee of private company workers'
B08128m14='Self-employed in own incorporated business workers'
B08128m15='Private not-for-profit wage and salary workers'
B08128m16='Local government workers'
B08128m17='State government workers'
B08128m18='Federal government workers'
B08128m19='Self-employed in own not incorporated business workers'
B08128m20='Unpaid family workers'
B08128m21='Car, truck, or van - carpooled:'
B08128m22='Private for-profit wage and salary workers:'
B08128m23='Employee of private company workers'
B08128m24='Self-employed in own incorporated business workers'
B08128m25='Private not-for-profit wage and salary workers'
B08128m26='Local government workers'
B08128m27='State government workers'
B08128m28='Federal government workers'
B08128m29='Self-employed in own not incorporated business workers'
B08128m30='Unpaid family workers'
B08128m31='Public transportation (excluding taxicab):'
B08128m32='Private for-profit wage and salary workers:'
B08128m33='Employee of private company workers'
B08128m34='Self-employed in own incorporated business workers'
B08128m35='Private not-for-profit wage and salary workers'
B08128m36='Local government workers'
B08128m37='State government workers'
B08128m38='Federal government workers'
B08128m39='Self-employed in own not incorporated business workers'
B08128m40='Unpaid family workers'
B08128m41='Walked:'
B08128m42='Private for-profit wage and salary workers:'
B08128m43='Employee of private company workers'
B08128m44='Self-employed in own incorporated business workers'
B08128m45='Private not-for-profit wage and salary workers'
B08128m46='Local government workers'
B08128m47='State government workers'
B08128m48='Federal government workers'
B08128m49='Self-employed in own not incorporated business workers'
B08128m50='Unpaid family workers'
B08128m51='Taxicab, motorcycle, bicycle, or other means:'
B08128m52='Private for-profit wage and salary workers:'
B08128m53='Employee of private company workers'
B08128m54='Self-employed in own incorporated business workers'
B08128m55='Private not-for-profit wage and salary workers'
B08128m56='Local government workers'
B08128m57='State government workers'
B08128m58='Federal government workers'
B08128m59='Self-employed in own not incorporated business workers'
B08128m60='Unpaid family workers'
B08128m61='Worked at home:'
B08128m62='Private for-profit wage and salary workers:'
B08128m63='Employee of private company workers'
B08128m64='Self-employed in own incorporated business workers'
B08128m65='Private not-for-profit wage and salary workers'
B08128m66='Local government workers'
B08128m67='State government workers'
B08128m68='Federal government workers'
B08128m69='Self-employed in own not incorporated business workers'
B08128m70='Unpaid family workers'
/*MEANS OF TRANSPORTATION TO WORK BY PLACE OF WORK--STATE AND COUNTY LEVEL */
/*Universe:  Workers 16 years and over */
 
B08130m1='Total:'
B08130m2='Worked in state of residence:'
B08130m3='Worked in county of residence'
B08130m4='Worked outside county of residence'
B08130m5='Worked outside state of residence'
B08130m6='Car, truck, or van - drove alone:'
B08130m7='Worked in state of residence:'
B08130m8='Worked in county of residence'
B08130m9='Worked outside county of residence'
B08130m10='Worked outside state of residence'
B08130m11='Car, truck, or van - carpooled:'
B08130m12='Worked in state of residence:'
B08130m13='Worked in county of residence'
B08130m14='Worked outside county of residence'
B08130m15='Worked outside state of residence'
B08130m16='Public transportation (excluding taxicab):'
B08130m17='Worked in state of residence:'
B08130m18='Worked in county of residence'
B08130m19='Worked outside county of residence'
B08130m20='Worked outside state of residence'
B08130m21='Walked:'
B08130m22='Worked in state of residence:'
B08130m23='Worked in county of residence'
B08130m24='Worked outside county of residence'
B08130m25='Worked outside state of residence'
B08130m26='Taxicab, motorcycle, bicycle, or other means:'
B08130m27='Worked in state of residence:'
B08130m28='Worked in county of residence'
B08130m29='Worked outside county of residence'
B08130m30='Worked outside state of residence'
B08130m31='Worked at home'
/*AGGREGATE TRAVEL TIME TO WORK (IN MINUTES) OF WORKERS BY PLACE OF WORK--STATE AND COUNTY LEVEL */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08131m1='Aggregate travel time to work (in minutes):'
B08131m2='Worked in State of residence:'
B08131m3='Worked in county of residence'
B08131m4='Worked outside county of residence'
B08131m5='Worked outside State of residence'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B08126m1
B08126m2
B08126m3
B08126m4
B08126m5
B08126m6
B08126m7
B08126m8
B08126m9
B08126m10
B08126m11
B08126m12
B08126m13
B08126m14
B08126m15
B08126m16
B08126m17
B08126m18
B08126m19
B08126m20
B08126m21
B08126m22
B08126m23
B08126m24
B08126m25
B08126m26
B08126m27
B08126m28
B08126m29
B08126m30
B08126m31
B08126m32
B08126m33
B08126m34
B08126m35
B08126m36
B08126m37
B08126m38
B08126m39
B08126m40
B08126m41
B08126m42
B08126m43
B08126m44
B08126m45
B08126m46
B08126m47
B08126m48
B08126m49
B08126m50
B08126m51
B08126m52
B08126m53
B08126m54
B08126m55
B08126m56
B08126m57
B08126m58
B08126m59
B08126m60
B08126m61
B08126m62
B08126m63
B08126m64
B08126m65
B08126m66
B08126m67
B08126m68
B08126m69
B08126m70
B08126m71
B08126m72
B08126m73
B08126m74
B08126m75
B08126m76
B08126m77
B08126m78
B08126m79
B08126m80
B08126m81
B08126m82
B08126m83
B08126m84
B08126m85
B08126m86
B08126m87
B08126m88
B08126m89
B08126m90
B08126m91
B08126m92
B08126m93
B08126m94
B08126m95
B08126m96
B08126m97
B08126m98
B08126m99
B08126m100
B08126m101
B08126m102
B08126m103
B08126m104
B08126m105
 
B08128m1
B08128m2
B08128m3
B08128m4
B08128m5
B08128m6
B08128m7
B08128m8
B08128m9
B08128m10
B08128m11
B08128m12
B08128m13
B08128m14
B08128m15
B08128m16
B08128m17
B08128m18
B08128m19
B08128m20
B08128m21
B08128m22
B08128m23
B08128m24
B08128m25
B08128m26
B08128m27
B08128m28
B08128m29
B08128m30
B08128m31
B08128m32
B08128m33
B08128m34
B08128m35
B08128m36
B08128m37
B08128m38
B08128m39
B08128m40
B08128m41
B08128m42
B08128m43
B08128m44
B08128m45
B08128m46
B08128m47
B08128m48
B08128m49
B08128m50
B08128m51
B08128m52
B08128m53
B08128m54
B08128m55
B08128m56
B08128m57
B08128m58
B08128m59
B08128m60
B08128m61
B08128m62
B08128m63
B08128m64
B08128m65
B08128m66
B08128m67
B08128m68
B08128m69
B08128m70
 
B08130m1
B08130m2
B08130m3
B08130m4
B08130m5
B08130m6
B08130m7
B08130m8
B08130m9
B08130m10
B08130m11
B08130m12
B08130m13
B08130m14
B08130m15
B08130m16
B08130m17
B08130m18
B08130m19
B08130m20
B08130m21
B08130m22
B08130m23
B08130m24
B08130m25
B08130m26
B08130m27
B08130m28
B08130m29
B08130m30
B08130m31
 
B08131m1
B08131m2
B08131m3
B08131m4
B08131m5
;
RUN;
TITLE2;
