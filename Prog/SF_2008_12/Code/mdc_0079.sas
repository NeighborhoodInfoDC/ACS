TITLE2 "m20125dc0079000";
DATA work.SFm0079dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0079000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*OCCUPATION BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over with earnings */
 
B24011m1='Total:'
B24011m2='Management, business, science, and arts occupations:'
B24011m3='Management, business, and financial occupations:'
B24011m4='Management occupations'
B24011m5='Business and financial operations occupations'
B24011m6='Computer, engineering, and science occupations:'
B24011m7='Computer and mathematical occupations'
B24011m8='Architecture and engineering occupations'
B24011m9='Life, physical, and social science occupations'
B24011m10='Education, legal, community service, arts, and media occupations:'
B24011m11='Community and social service occupations'
B24011m12='Legal occupations'
B24011m13='Education, training, and library occupations'
B24011m14='Arts, design, entertainment, sports, and media occupations'
B24011m15='Healthcare practitioners and technical occupations:'
B24011m16='Health diagnosing and treating practitioners and other technical occupations'
B24011m17='Health technologists and technicians'
B24011m18='Service occupations:'
B24011m19='Healthcare support occupations'
B24011m20='Protective service occupations:'
B24011m21='Fire fighting and prevention, and other protective service workers including supervisors'
B24011m22='Law enforcement workers including supervisors'
B24011m23='Food preparation and serving related occupations'
B24011m24='Building and grounds cleaning and maintenance occupations'
B24011m25='Personal care and service occupations'
B24011m26='Sales and office occupations:'
B24011m27='Sales and related occupations'
B24011m28='Office and administrative support occupations'
B24011m29='Natural resources, construction, and maintenance occupations:'
B24011m30='Farming, fishing, and forestry occupations'
B24011m31='Construction and extraction occupations'
B24011m32='Installation, maintenance, and repair occupations'
B24011m33='Production, transportation, and material moving occupations:'
B24011m34='Production occupations'
B24011m35='Transportation occupations'
B24011m36='Material moving occupations'
/*SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over */
 
C24010m1='Total:'
C24010m2='Male:'
C24010m3='Management, business, science, and arts occupations:'
C24010m4='Management, business, and financial occupations:'
C24010m5='Management occupations'
C24010m6='Business and financial operations occupations'
C24010m7='Computer, engineering, and science occupations:'
C24010m8='Computer and mathematical occupations'
C24010m9='Architecture and engineering occupations'
C24010m10='Life, physical, and social science occupations'
C24010m11='Education, legal, community service, arts, and media occupations:'
C24010m12='Community and social service occupations'
C24010m13='Legal occupations'
C24010m14='Education, training, and library occupations'
C24010m15='Arts, design, entertainment, sports, and media occupations'
C24010m16='Healthcare practitioners and technical occupations:'
C24010m17='Health diagnosing and treating practitioners and other technical occupations'
C24010m18='Health technologists and technicians'
C24010m19='Service occupations:'
C24010m20='Healthcare support occupations'
C24010m21='Protective service occupations:'
C24010m22='Fire fighting and prevention, and other protective service workers including supervisors'
C24010m23='Law enforcement workers including supervisors'
C24010m24='Food preparation and serving related occupations'
C24010m25='Building and grounds cleaning and maintenance occupations'
C24010m26='Personal care and service occupations'
C24010m27='Sales and office occupations:'
C24010m28='Sales and related occupations'
C24010m29='Office and administrative support occupations'
C24010m30='Natural resources, construction, and maintenance occupations:'
C24010m31='Farming, fishing, and forestry occupations'
C24010m32='Construction and extraction occupations'
C24010m33='Installation, maintenance, and repair occupations'
C24010m34='Production, transportation, and material moving occupations:'
C24010m35='Production occupations'
C24010m36='Transportation occupations'
C24010m37='Material moving occupations'
C24010m38='Female:'
C24010m39='Management, business, science, and arts occupations:'
C24010m40='Management, business, and financial occupations:'
C24010m41='Management occupations'
C24010m42='Business and financial operations occupations'
C24010m43='Computer, engineering, and science occupations:'
C24010m44='Computer and mathematical occupations'
C24010m45='Architecture and engineering occupations'
C24010m46='Life, physical, and social science occupations'
C24010m47='Education, legal, community service, arts, and media occupations:'
C24010m48='Community and social service occupations'
C24010m49='Legal occupations'
C24010m50='Education, training, and library occupations'
C24010m51='Arts, design, entertainment, sports, and media occupations'
C24010m52='Healthcare practitioners and technical occupations:'
C24010m53='Health diagnosing and treating practitioners and other technical occupations'
C24010m54='Health technologists and technicians'
C24010m55='Service occupations:'
C24010m56='Healthcare support occupations'
C24010m57='Protective service occupations:'
C24010m58='Fire fighting and prevention, and other protective service workers including supervisors'
C24010m59='Law enforcement workers including supervisors'
C24010m60='Food preparation and serving related occupations'
C24010m61='Building and grounds cleaning and maintenance occupations'
C24010m62='Personal care and service occupations'
C24010m63='Sales and office occupations:'
C24010m64='Sales and related occupations'
C24010m65='Office and administrative support occupations'
C24010m66='Natural resources, construction, and maintenance occupations:'
C24010m67='Farming, fishing, and forestry occupations'
C24010m68='Construction and extraction occupations'
C24010m69='Installation, maintenance, and repair occupations'
C24010m70='Production, transportation, and material moving occupations:'
C24010m71='Production occupations'
C24010m72='Transportation occupations'
C24010m73='Material moving occupations'
/*SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER (WHITE ALONE) */
/*Universe:  Civilian employed White alone population 16 years and over */
 
C24010Am1='Total:'
C24010Am2='Male:'
C24010Am3='Management, business, science, and arts occupations:'
C24010Am4='Service occupations:'
C24010Am5='Sales and office occupations:'
C24010Am6='Natural resources, construction, and maintenance occupations:'
C24010Am7='Production, transportation, and material moving occupations:'
C24010Am8='Female:'
C24010Am9='Management, business, science, and arts occupations:'
C24010Am10='Service occupations:'
C24010Am11='Sales and office occupations:'
C24010Am12='Natural resources, construction, and maintenance occupations:'
C24010Am13='Production, transportation, and material moving occupations:'
/*SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Civilian employed Black or African American alone population 16 years and over */
 
C24010Bm1='Total:'
C24010Bm2='Male:'
C24010Bm3='Management, business, science, and arts occupations:'
C24010Bm4='Service occupations:'
C24010Bm5='Sales and office occupations:'
C24010Bm6='Natural resources, construction, and maintenance occupations:'
C24010Bm7='Production, transportation, and material moving occupations:'
C24010Bm8='Female:'
C24010Bm9='Management, business, science, and arts occupations:'
C24010Bm10='Service occupations:'
C24010Bm11='Sales and office occupations:'
C24010Bm12='Natural resources, construction, and maintenance occupations:'
C24010Bm13='Production, transportation, and material moving occupations:'
/*SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  Civilian employed American Indian and Alaska Native alone population 16 years and over */
 
C24010Cm1='Total:'
C24010Cm2='Male:'
C24010Cm3='Management, business, science, and arts occupations:'
C24010Cm4='Service occupations:'
C24010Cm5='Sales and office occupations:'
C24010Cm6='Natural resources, construction, and maintenance occupations:'
C24010Cm7='Production, transportation, and material moving occupations:'
C24010Cm8='Female:'
C24010Cm9='Management, business, science, and arts occupations:'
C24010Cm10='Service occupations:'
C24010Cm11='Sales and office occupations:'
C24010Cm12='Natural resources, construction, and maintenance occupations:'
C24010Cm13='Production, transportation, and material moving occupations:'
/*SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER (ASIAN ALONE) */
/*Universe:  Civilian employed Asian alone population 16 years and over */
 
C24010Dm1='Total:'
C24010Dm2='Male:'
C24010Dm3='Management, business, science, and arts occupations:'
C24010Dm4='Service occupations:'
C24010Dm5='Sales and office occupations:'
C24010Dm6='Natural resources, construction, and maintenance occupations:'
C24010Dm7='Production, transportation, and material moving occupations:'
C24010Dm8='Female:'
C24010Dm9='Management, business, science, and arts occupations:'
C24010Dm10='Service occupations:'
C24010Dm11='Sales and office occupations:'
C24010Dm12='Natural resources, construction, and maintenance occupations:'
C24010Dm13='Production, transportation, and material moving occupations:'
/*SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Civilian employed Native Hawaiian and Other Pacific Islander alone population 16 years and over */
 
C24010Em1='Total:'
C24010Em2='Male:'
C24010Em3='Management, business, science, and arts occupations:'
C24010Em4='Service occupations:'
C24010Em5='Sales and office occupations:'
C24010Em6='Natural resources, construction, and maintenance occupations:'
C24010Em7='Production, transportation, and material moving occupations:'
C24010Em8='Female:'
C24010Em9='Management, business, science, and arts occupations:'
C24010Em10='Service occupations:'
C24010Em11='Sales and office occupations:'
C24010Em12='Natural resources, construction, and maintenance occupations:'
C24010Em13='Production, transportation, and material moving occupations:'
/*SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER (SOME OTHER RACE ALONE) */
/*Universe:  Civilian employed Some other race alone population 16 years and over */
 
C24010Fm1='Total:'
C24010Fm2='Male:'
C24010Fm3='Management, business, science, and arts occupations:'
C24010Fm4='Service occupations:'
C24010Fm5='Sales and office occupations:'
C24010Fm6='Natural resources, construction, and maintenance occupations:'
C24010Fm7='Production, transportation, and material moving occupations:'
C24010Fm8='Female:'
C24010Fm9='Management, business, science, and arts occupations:'
C24010Fm10='Service occupations:'
C24010Fm11='Sales and office occupations:'
C24010Fm12='Natural resources, construction, and maintenance occupations:'
C24010Fm13='Production, transportation, and material moving occupations:'
/*SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER (TWO OR MORE RACES) */
/*Universe:  Civilian employed Two or more races population 16 years and over */
 
C24010Gm1='Total:'
C24010Gm2='Male:'
C24010Gm3='Management, business, science, and arts occupations:'
C24010Gm4='Service occupations:'
C24010Gm5='Sales and office occupations:'
C24010Gm6='Natural resources, construction, and maintenance occupations:'
C24010Gm7='Production, transportation, and material moving occupations:'
C24010Gm8='Female:'
C24010Gm9='Management, business, science, and arts occupations:'
C24010Gm10='Service occupations:'
C24010Gm11='Sales and office occupations:'
C24010Gm12='Natural resources, construction, and maintenance occupations:'
C24010Gm13='Production, transportation, and material moving occupations:'
/*SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  Civilian employed White alone, not Hispanic or Latino population 16 years and over */
 
C24010Hm1='Total:'
C24010Hm2='Male:'
C24010Hm3='Management, business, science, and arts occupations:'
C24010Hm4='Service occupations:'
C24010Hm5='Sales and office occupations:'
C24010Hm6='Natural resources, construction, and maintenance occupations:'
C24010Hm7='Production, transportation, and material moving occupations:'
C24010Hm8='Female:'
C24010Hm9='Management, business, science, and arts occupations:'
C24010Hm10='Service occupations:'
C24010Hm11='Sales and office occupations:'
C24010Hm12='Natural resources, construction, and maintenance occupations:'
C24010Hm13='Production, transportation, and material moving occupations:'
/*SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER (HISPANIC OR LATINO) */
/*Universe:  Civilian employed Hispanic or Latino population 16 years and over */
 
C24010Im1='Total:'
C24010Im2='Male:'
C24010Im3='Management, business, science, and arts occupations:'
C24010Im4='Service occupations:'
C24010Im5='Sales and office occupations:'
C24010Im6='Natural resources, construction, and maintenance occupations:'
C24010Im7='Production, transportation, and material moving occupations:'
C24010Im8='Female:'
C24010Im9='Management, business, science, and arts occupations:'
C24010Im10='Service occupations:'
C24010Im11='Sales and office occupations:'
C24010Im12='Natural resources, construction, and maintenance occupations:'
C24010Im13='Production, transportation, and material moving occupations:'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B24011m1
B24011m2
B24011m3
B24011m4
B24011m5
B24011m6
B24011m7
B24011m8
B24011m9
B24011m10
B24011m11
B24011m12
B24011m13
B24011m14
B24011m15
B24011m16
B24011m17
B24011m18
B24011m19
B24011m20
B24011m21
B24011m22
B24011m23
B24011m24
B24011m25
B24011m26
B24011m27
B24011m28
B24011m29
B24011m30
B24011m31
B24011m32
B24011m33
B24011m34
B24011m35
B24011m36
 
C24010m1
C24010m2
C24010m3
C24010m4
C24010m5
C24010m6
C24010m7
C24010m8
C24010m9
C24010m10
C24010m11
C24010m12
C24010m13
C24010m14
C24010m15
C24010m16
C24010m17
C24010m18
C24010m19
C24010m20
C24010m21
C24010m22
C24010m23
C24010m24
C24010m25
C24010m26
C24010m27
C24010m28
C24010m29
C24010m30
C24010m31
C24010m32
C24010m33
C24010m34
C24010m35
C24010m36
C24010m37
C24010m38
C24010m39
C24010m40
C24010m41
C24010m42
C24010m43
C24010m44
C24010m45
C24010m46
C24010m47
C24010m48
C24010m49
C24010m50
C24010m51
C24010m52
C24010m53
C24010m54
C24010m55
C24010m56
C24010m57
C24010m58
C24010m59
C24010m60
C24010m61
C24010m62
C24010m63
C24010m64
C24010m65
C24010m66
C24010m67
C24010m68
C24010m69
C24010m70
C24010m71
C24010m72
C24010m73
 
C24010Am1
C24010Am2
C24010Am3
C24010Am4
C24010Am5
C24010Am6
C24010Am7
C24010Am8
C24010Am9
C24010Am10
C24010Am11
C24010Am12
C24010Am13
 
C24010Bm1
C24010Bm2
C24010Bm3
C24010Bm4
C24010Bm5
C24010Bm6
C24010Bm7
C24010Bm8
C24010Bm9
C24010Bm10
C24010Bm11
C24010Bm12
C24010Bm13
 
C24010Cm1
C24010Cm2
C24010Cm3
C24010Cm4
C24010Cm5
C24010Cm6
C24010Cm7
C24010Cm8
C24010Cm9
C24010Cm10
C24010Cm11
C24010Cm12
C24010Cm13
 
C24010Dm1
C24010Dm2
C24010Dm3
C24010Dm4
C24010Dm5
C24010Dm6
C24010Dm7
C24010Dm8
C24010Dm9
C24010Dm10
C24010Dm11
C24010Dm12
C24010Dm13
 
C24010Em1
C24010Em2
C24010Em3
C24010Em4
C24010Em5
C24010Em6
C24010Em7
C24010Em8
C24010Em9
C24010Em10
C24010Em11
C24010Em12
C24010Em13
 
C24010Fm1
C24010Fm2
C24010Fm3
C24010Fm4
C24010Fm5
C24010Fm6
C24010Fm7
C24010Fm8
C24010Fm9
C24010Fm10
C24010Fm11
C24010Fm12
C24010Fm13
 
C24010Gm1
C24010Gm2
C24010Gm3
C24010Gm4
C24010Gm5
C24010Gm6
C24010Gm7
C24010Gm8
C24010Gm9
C24010Gm10
C24010Gm11
C24010Gm12
C24010Gm13
 
C24010Hm1
C24010Hm2
C24010Hm3
C24010Hm4
C24010Hm5
C24010Hm6
C24010Hm7
C24010Hm8
C24010Hm9
C24010Hm10
C24010Hm11
C24010Hm12
C24010Hm13
 
C24010Im1
C24010Im2
C24010Im3
C24010Im4
C24010Im5
C24010Im6
C24010Im7
C24010Im8
C24010Im9
C24010Im10
C24010Im11
C24010Im12
C24010Im13
;
RUN;
TITLE2;
