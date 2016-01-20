TITLE2 "m20125md0108000";
DATA work.SFm0108md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0108000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*TENURE BY HOUSEHOLD TYPE AND PRESENCE AND AGE OF OWN CHILDREN */
/*Universe:  Occupied housing units */
 
B25115m1='Total:'
B25115m2='Owner occupied:'
B25115m3='Family households:'
B25115m4='Married-couple family:'
B25115m5='With own children under 18 years'
B25115m6='No own children under 18 years'
B25115m7='Other family:'
B25115m8='Male householder, no wife present:'
B25115m9='With own children under 18 years'
B25115m10='No own children under 18 years'
B25115m11='Female householder, no husband present:'
B25115m12='With own children under 18 years'
B25115m13='No own children under 18 years'
B25115m14='Nonfamily households'
B25115m15='Renter occupied:'
B25115m16='Family households:'
B25115m17='Married-couple family:'
B25115m18='With own children under 18 years'
B25115m19='No own children under 18 years'
B25115m20='Other family:'
B25115m21='Male householder, no wife present:'
B25115m22='With own children under 18 years'
B25115m23='No own children under 18 years'
B25115m24='Female householder, no husband present:'
B25115m25='With own children under 18 years'
B25115m26='No own children under 18 years'
B25115m27='Nonfamily households'
/*TENURE BY HOUSEHOLD SIZE BY AGE OF HOUSEHOLDER */
/*Universe:  Occupied housing units */
 
B25116m1='Total:'
B25116m2='Owner occupied:'
B25116m3='1-person household:'
B25116m4='Householder 15 to 54 years'
B25116m5='Householder 55 to 64 years'
B25116m6='Householder 65 to 74 years'
B25116m7='Householder 75 years and over'
B25116m8='2-or-more person household:'
B25116m9='Householder 15 to 54 years'
B25116m10='Householder 55 to 64 years'
B25116m11='Householder 65 to 74 years'
B25116m12='Householder 75 years and over'
B25116m13='Renter occupied:'
B25116m14='1-person household:'
B25116m15='Householder 15 to 54 years'
B25116m16='Householder 55 to 64 years'
B25116m17='Householder 65 to 74 years'
B25116m18='Householder 75 years and over'
B25116m19='2-or-more person household:'
B25116m20='Householder 15 to 54 years'
B25116m21='Householder 55 to 64 years'
B25116m22='Householder 65 to 74 years'
B25116m23='Householder 75 years and over'
/*TENURE BY HOUSE HEATING FUEL */
/*Universe:  Occupied housing units */
 
B25117m1='Total:'
B25117m2='Owner occupied:'
B25117m3='Utility gas'
B25117m4='Bottled, tank, or LP gas'
B25117m5='Electricity'
B25117m6='Fuel oil, kerosene, etc.'
B25117m7='Coal or coke'
B25117m8='Wood'
B25117m9='Solar energy'
B25117m10='Other fuel'
B25117m11='No fuel used'
B25117m12='Renter occupied:'
B25117m13='Utility gas'
B25117m14='Bottled, tank, or LP gas'
B25117m15='Electricity'
B25117m16='Fuel oil, kerosene, etc.'
B25117m17='Coal or coke'
B25117m18='Wood'
B25117m19='Solar energy'
B25117m20='Other fuel'
B25117m21='No fuel used'
/*TENURE BY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Occupied housing units */
 
B25118m1='Total:'
B25118m2='Owner occupied:'
B25118m3='Less than $5,000'
B25118m4='$5,000 to $9,999'
B25118m5='$10,000 to $14,999'
B25118m6='$15,000 to $19,999'
B25118m7='$20,000 to $24,999'
B25118m8='$25,000 to $34,999'
B25118m9='$35,000 to $49,999'
B25118m10='$50,000 to $74,999'
B25118m11='$75,000 to $99,999'
B25118m12='$100,000 to $149,999'
B25118m13='$150,000 or more'
B25118m14='Renter occupied:'
B25118m15='Less than $5,000'
B25118m16='$5,000 to $9,999'
B25118m17='$10,000 to $14,999'
B25118m18='$15,000 to $19,999'
B25118m19='$20,000 to $24,999'
B25118m20='$25,000 to $34,999'
B25118m21='$35,000 to $49,999'
B25118m22='$50,000 to $74,999'
B25118m23='$75,000 to $99,999'
B25118m24='$100,000 to $149,999'
B25118m25='$150,000 or more'
/*MEDIAN HOUSEHOLD INCOME THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY TENURE */
/*Universe:  Occupied housing units */
/*Median household income in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B25119m1='Total:'
B25119m2='Owner occupied (dollars)'
B25119m3='Renter occupied (dollars)'
/*AGGREGATE HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY TENURE AND MORTGAGE STATUS */
/*Universe:  Occupied housing units */
 
B25120m1='Aggregate household income in the past 12 months (in 2012 inflation-adjusted dollars):'
B25120m2='Owner occupied :'
B25120m3='Housing units with a mortgage'
B25120m4='Housing units without a mortgage'
B25120m5='Renter occupied'
/*HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY VALUE */
/*Universe:  Owner-occupied housing units */
 
B25121m1='Total:'
/*Household income the past 12 months (in 2012 inflation-adjusted dollars) -- */
B25121m2='Less than $10,000:'
B25121m3='Value less than $10,000'
B25121m4='Value $10,000 to $19,999'
B25121m5='Value $20,000 to $29,999'
B25121m6='Value $30,000 to $39,999'
B25121m7='Value $40,000 to $49,999'
B25121m8='Value $50,000 to $59,999'
B25121m9='Value $60,000 to $69,999'
B25121m10='Value $70,000 to $79,999'
B25121m11='Value $80,000 to $89,999'
B25121m12='Value $90,000 to $99,999'
B25121m13='Value $100,000 to $199,999'
B25121m14='Value $200,000 to $249,999'
B25121m15='Value $250,000 to $499,999'
B25121m16='Value $500,000 or more'
B25121m17='$10,000 to $19,999:'
B25121m18='Value less than $10,000'
B25121m19='Value $10,000 to $19,999'
B25121m20='Value $20,000 to $29,999'
B25121m21='Value $30,000 to $39,999'
B25121m22='Value $40,000 to $49,999'
B25121m23='Value $50,000 to $59,999'
B25121m24='Value $60,000 to $69,999'
B25121m25='Value $70,000 to $79,999'
B25121m26='Value $80,000 to $89,999'
B25121m27='Value $90,000 to $99,999'
B25121m28='Value $100,000 to $199,999'
B25121m29='Value $200,000 to $249,999'
B25121m30='Value $250,000 to $499,999'
B25121m31='Value $500,000 or more'
B25121m32='$20,000 to $34,999:'
B25121m33='Value less than $10,000'
B25121m34='Value $10,000 to $19,999'
B25121m35='Value $20,000 to $29,999'
B25121m36='Value $30,000 to $39,999'
B25121m37='Value $40,000 to $49,999'
B25121m38='Value $50,000 to $59,999'
B25121m39='Value $60,000 to $69,999'
B25121m40='Value $70,000 to $79,999'
B25121m41='Value $80,000 to $89,999'
B25121m42='Value $90,000 to $99,999'
B25121m43='Value $100,000 to $199,999'
B25121m44='Value $200,000 to $249,999'
B25121m45='Value $250,000 to $499,999'
B25121m46='Value $500,000 or more'
B25121m47='$35,000 to $49,999:'
B25121m48='Value less than $10,000'
B25121m49='Value $10,000 to $19,999'
B25121m50='Value $20,000 to $29,999'
B25121m51='Value $30,000 to $39,999'
B25121m52='Value $40,000 to $49,999'
B25121m53='Value $50,000 to $59,999'
B25121m54='Value $60,000 to $69,999'
B25121m55='Value $70,000 to $79,999'
B25121m56='Value $80,000 to $89,999'
B25121m57='Value $90,000 to $99,999'
B25121m58='Value $100,000 to $199,999'
B25121m59='Value $200,000 to $249,999'
B25121m60='Value $250,000 to $499,999'
B25121m61='Value $500,000 or more'
B25121m62='$50,000 to $74,999:'
B25121m63='Value less than $10,000'
B25121m64='Value $10,000 to $19,999'
B25121m65='Value $20,000 to $29,999'
B25121m66='Value $30,000 to $39,999'
B25121m67='Value $40,000 to $49,999'
B25121m68='Value $50,000 to $59,999'
B25121m69='Value $60,000 to $69,999'
B25121m70='Value $70,000 to $79,999'
B25121m71='Value $80,000 to $89,999'
B25121m72='Value $90,000 to $99,999'
B25121m73='Value $100,000 to $199,999'
B25121m74='Value $200,000 to $249,999'
B25121m75='Value $250,000 to $499,999'
B25121m76='Value $500,000 or more'
B25121m77='$75,000 to $99,999:'
B25121m78='Value less than $10,000'
B25121m79='Value $10,000 to $19,999'
B25121m80='Value $20,000 to $29,999'
B25121m81='Value $30,000 to $39,999'
B25121m82='Value $40,000 to $49,999'
B25121m83='Value $50,000 to $59,999'
B25121m84='Value $60,000 to $69,999'
B25121m85='Value $70,000 to $79,999'
B25121m86='Value $80,000 to $89,999'
B25121m87='Value $90,000 to $99,999'
B25121m88='Value $100,000 to $199,999'
B25121m89='Value $200,000 to $249,999'
B25121m90='Value $250,000 to $499,999'
B25121m91='Value $500,000 or more'
B25121m92='$100,000 or more:'
B25121m93='Value less than $10,000'
B25121m94='Value $10,000 to $19,999'
B25121m95='Value $20,000 to $29,999'
B25121m96='Value $30,000 to $39,999'
B25121m97='Value $40,000 to $49,999'
B25121m98='Value $50,000 to $59,999'
B25121m99='Value $60,000 to $69,999'
B25121m100='Value $70,000 to $79,999'
B25121m101='Value $80,000 to $89,999'
B25121m102='Value $90,000 to $99,999'
B25121m103='Value $100,000 to $199,999'
B25121m104='Value $200,000 to $249,999'
B25121m105='Value $250,000 to $499,999'
B25121m106='Value $500,000 or more'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B25115m1
B25115m2
B25115m3
B25115m4
B25115m5
B25115m6
B25115m7
B25115m8
B25115m9
B25115m10
B25115m11
B25115m12
B25115m13
B25115m14
B25115m15
B25115m16
B25115m17
B25115m18
B25115m19
B25115m20
B25115m21
B25115m22
B25115m23
B25115m24
B25115m25
B25115m26
B25115m27
 
B25116m1
B25116m2
B25116m3
B25116m4
B25116m5
B25116m6
B25116m7
B25116m8
B25116m9
B25116m10
B25116m11
B25116m12
B25116m13
B25116m14
B25116m15
B25116m16
B25116m17
B25116m18
B25116m19
B25116m20
B25116m21
B25116m22
B25116m23
 
B25117m1
B25117m2
B25117m3
B25117m4
B25117m5
B25117m6
B25117m7
B25117m8
B25117m9
B25117m10
B25117m11
B25117m12
B25117m13
B25117m14
B25117m15
B25117m16
B25117m17
B25117m18
B25117m19
B25117m20
B25117m21
 
B25118m1
B25118m2
B25118m3
B25118m4
B25118m5
B25118m6
B25118m7
B25118m8
B25118m9
B25118m10
B25118m11
B25118m12
B25118m13
B25118m14
B25118m15
B25118m16
B25118m17
B25118m18
B25118m19
B25118m20
B25118m21
B25118m22
B25118m23
B25118m24
B25118m25
 
B25119m1
B25119m2
B25119m3
 
B25120m1
B25120m2
B25120m3
B25120m4
B25120m5
 
B25121m1
B25121m2
B25121m3
B25121m4
B25121m5
B25121m6
B25121m7
B25121m8
B25121m9
B25121m10
B25121m11
B25121m12
B25121m13
B25121m14
B25121m15
B25121m16
B25121m17
B25121m18
B25121m19
B25121m20
B25121m21
B25121m22
B25121m23
B25121m24
B25121m25
B25121m26
B25121m27
B25121m28
B25121m29
B25121m30
B25121m31
B25121m32
B25121m33
B25121m34
B25121m35
B25121m36
B25121m37
B25121m38
B25121m39
B25121m40
B25121m41
B25121m42
B25121m43
B25121m44
B25121m45
B25121m46
B25121m47
B25121m48
B25121m49
B25121m50
B25121m51
B25121m52
B25121m53
B25121m54
B25121m55
B25121m56
B25121m57
B25121m58
B25121m59
B25121m60
B25121m61
B25121m62
B25121m63
B25121m64
B25121m65
B25121m66
B25121m67
B25121m68
B25121m69
B25121m70
B25121m71
B25121m72
B25121m73
B25121m74
B25121m75
B25121m76
B25121m77
B25121m78
B25121m79
B25121m80
B25121m81
B25121m82
B25121m83
B25121m84
B25121m85
B25121m86
B25121m87
B25121m88
B25121m89
B25121m90
B25121m91
B25121m92
B25121m93
B25121m94
B25121m95
B25121m96
B25121m97
B25121m98
B25121m99
B25121m100
B25121m101
B25121m102
B25121m103
B25121m104
B25121m105
B25121m106
;
RUN;
TITLE2;
