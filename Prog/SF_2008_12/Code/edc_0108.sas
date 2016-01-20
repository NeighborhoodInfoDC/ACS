TITLE2 "e20125dc0108000";
DATA work.SFe0108dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0108000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*TENURE BY HOUSEHOLD TYPE AND PRESENCE AND AGE OF OWN CHILDREN */
/*Universe:  Occupied housing units */
 
B25115e1='Total:'
B25115e2='Owner occupied:'
B25115e3='Family households:'
B25115e4='Married-couple family:'
B25115e5='With own children under 18 years'
B25115e6='No own children under 18 years'
B25115e7='Other family:'
B25115e8='Male householder, no wife present:'
B25115e9='With own children under 18 years'
B25115e10='No own children under 18 years'
B25115e11='Female householder, no husband present:'
B25115e12='With own children under 18 years'
B25115e13='No own children under 18 years'
B25115e14='Nonfamily households'
B25115e15='Renter occupied:'
B25115e16='Family households:'
B25115e17='Married-couple family:'
B25115e18='With own children under 18 years'
B25115e19='No own children under 18 years'
B25115e20='Other family:'
B25115e21='Male householder, no wife present:'
B25115e22='With own children under 18 years'
B25115e23='No own children under 18 years'
B25115e24='Female householder, no husband present:'
B25115e25='With own children under 18 years'
B25115e26='No own children under 18 years'
B25115e27='Nonfamily households'
/*TENURE BY HOUSEHOLD SIZE BY AGE OF HOUSEHOLDER */
/*Universe:  Occupied housing units */
 
B25116e1='Total:'
B25116e2='Owner occupied:'
B25116e3='1-person household:'
B25116e4='Householder 15 to 54 years'
B25116e5='Householder 55 to 64 years'
B25116e6='Householder 65 to 74 years'
B25116e7='Householder 75 years and over'
B25116e8='2-or-more person household:'
B25116e9='Householder 15 to 54 years'
B25116e10='Householder 55 to 64 years'
B25116e11='Householder 65 to 74 years'
B25116e12='Householder 75 years and over'
B25116e13='Renter occupied:'
B25116e14='1-person household:'
B25116e15='Householder 15 to 54 years'
B25116e16='Householder 55 to 64 years'
B25116e17='Householder 65 to 74 years'
B25116e18='Householder 75 years and over'
B25116e19='2-or-more person household:'
B25116e20='Householder 15 to 54 years'
B25116e21='Householder 55 to 64 years'
B25116e22='Householder 65 to 74 years'
B25116e23='Householder 75 years and over'
/*TENURE BY HOUSE HEATING FUEL */
/*Universe:  Occupied housing units */
 
B25117e1='Total:'
B25117e2='Owner occupied:'
B25117e3='Utility gas'
B25117e4='Bottled, tank, or LP gas'
B25117e5='Electricity'
B25117e6='Fuel oil, kerosene, etc.'
B25117e7='Coal or coke'
B25117e8='Wood'
B25117e9='Solar energy'
B25117e10='Other fuel'
B25117e11='No fuel used'
B25117e12='Renter occupied:'
B25117e13='Utility gas'
B25117e14='Bottled, tank, or LP gas'
B25117e15='Electricity'
B25117e16='Fuel oil, kerosene, etc.'
B25117e17='Coal or coke'
B25117e18='Wood'
B25117e19='Solar energy'
B25117e20='Other fuel'
B25117e21='No fuel used'
/*TENURE BY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Occupied housing units */
 
B25118e1='Total:'
B25118e2='Owner occupied:'
B25118e3='Less than $5,000'
B25118e4='$5,000 to $9,999'
B25118e5='$10,000 to $14,999'
B25118e6='$15,000 to $19,999'
B25118e7='$20,000 to $24,999'
B25118e8='$25,000 to $34,999'
B25118e9='$35,000 to $49,999'
B25118e10='$50,000 to $74,999'
B25118e11='$75,000 to $99,999'
B25118e12='$100,000 to $149,999'
B25118e13='$150,000 or more'
B25118e14='Renter occupied:'
B25118e15='Less than $5,000'
B25118e16='$5,000 to $9,999'
B25118e17='$10,000 to $14,999'
B25118e18='$15,000 to $19,999'
B25118e19='$20,000 to $24,999'
B25118e20='$25,000 to $34,999'
B25118e21='$35,000 to $49,999'
B25118e22='$50,000 to $74,999'
B25118e23='$75,000 to $99,999'
B25118e24='$100,000 to $149,999'
B25118e25='$150,000 or more'
/*MEDIAN HOUSEHOLD INCOME THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY TENURE */
/*Universe:  Occupied housing units */
/*Median household income in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B25119e1='Total:'
B25119e2='Owner occupied (dollars)'
B25119e3='Renter occupied (dollars)'
/*AGGREGATE HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY TENURE AND MORTGAGE STATUS */
/*Universe:  Occupied housing units */
 
B25120e1='Aggregate household income in the past 12 months (in 2012 inflation-adjusted dollars):'
B25120e2='Owner occupied :'
B25120e3='Housing units with a mortgage'
B25120e4='Housing units without a mortgage'
B25120e5='Renter occupied'
/*HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY VALUE */
/*Universe:  Owner-occupied housing units */
 
B25121e1='Total:'
/*Household income the past 12 months (in 2012 inflation-adjusted dollars) -- */
B25121e2='Less than $10,000:'
B25121e3='Value less than $10,000'
B25121e4='Value $10,000 to $19,999'
B25121e5='Value $20,000 to $29,999'
B25121e6='Value $30,000 to $39,999'
B25121e7='Value $40,000 to $49,999'
B25121e8='Value $50,000 to $59,999'
B25121e9='Value $60,000 to $69,999'
B25121e10='Value $70,000 to $79,999'
B25121e11='Value $80,000 to $89,999'
B25121e12='Value $90,000 to $99,999'
B25121e13='Value $100,000 to $199,999'
B25121e14='Value $200,000 to $249,999'
B25121e15='Value $250,000 to $499,999'
B25121e16='Value $500,000 or more'
B25121e17='$10,000 to $19,999:'
B25121e18='Value less than $10,000'
B25121e19='Value $10,000 to $19,999'
B25121e20='Value $20,000 to $29,999'
B25121e21='Value $30,000 to $39,999'
B25121e22='Value $40,000 to $49,999'
B25121e23='Value $50,000 to $59,999'
B25121e24='Value $60,000 to $69,999'
B25121e25='Value $70,000 to $79,999'
B25121e26='Value $80,000 to $89,999'
B25121e27='Value $90,000 to $99,999'
B25121e28='Value $100,000 to $199,999'
B25121e29='Value $200,000 to $249,999'
B25121e30='Value $250,000 to $499,999'
B25121e31='Value $500,000 or more'
B25121e32='$20,000 to $34,999:'
B25121e33='Value less than $10,000'
B25121e34='Value $10,000 to $19,999'
B25121e35='Value $20,000 to $29,999'
B25121e36='Value $30,000 to $39,999'
B25121e37='Value $40,000 to $49,999'
B25121e38='Value $50,000 to $59,999'
B25121e39='Value $60,000 to $69,999'
B25121e40='Value $70,000 to $79,999'
B25121e41='Value $80,000 to $89,999'
B25121e42='Value $90,000 to $99,999'
B25121e43='Value $100,000 to $199,999'
B25121e44='Value $200,000 to $249,999'
B25121e45='Value $250,000 to $499,999'
B25121e46='Value $500,000 or more'
B25121e47='$35,000 to $49,999:'
B25121e48='Value less than $10,000'
B25121e49='Value $10,000 to $19,999'
B25121e50='Value $20,000 to $29,999'
B25121e51='Value $30,000 to $39,999'
B25121e52='Value $40,000 to $49,999'
B25121e53='Value $50,000 to $59,999'
B25121e54='Value $60,000 to $69,999'
B25121e55='Value $70,000 to $79,999'
B25121e56='Value $80,000 to $89,999'
B25121e57='Value $90,000 to $99,999'
B25121e58='Value $100,000 to $199,999'
B25121e59='Value $200,000 to $249,999'
B25121e60='Value $250,000 to $499,999'
B25121e61='Value $500,000 or more'
B25121e62='$50,000 to $74,999:'
B25121e63='Value less than $10,000'
B25121e64='Value $10,000 to $19,999'
B25121e65='Value $20,000 to $29,999'
B25121e66='Value $30,000 to $39,999'
B25121e67='Value $40,000 to $49,999'
B25121e68='Value $50,000 to $59,999'
B25121e69='Value $60,000 to $69,999'
B25121e70='Value $70,000 to $79,999'
B25121e71='Value $80,000 to $89,999'
B25121e72='Value $90,000 to $99,999'
B25121e73='Value $100,000 to $199,999'
B25121e74='Value $200,000 to $249,999'
B25121e75='Value $250,000 to $499,999'
B25121e76='Value $500,000 or more'
B25121e77='$75,000 to $99,999:'
B25121e78='Value less than $10,000'
B25121e79='Value $10,000 to $19,999'
B25121e80='Value $20,000 to $29,999'
B25121e81='Value $30,000 to $39,999'
B25121e82='Value $40,000 to $49,999'
B25121e83='Value $50,000 to $59,999'
B25121e84='Value $60,000 to $69,999'
B25121e85='Value $70,000 to $79,999'
B25121e86='Value $80,000 to $89,999'
B25121e87='Value $90,000 to $99,999'
B25121e88='Value $100,000 to $199,999'
B25121e89='Value $200,000 to $249,999'
B25121e90='Value $250,000 to $499,999'
B25121e91='Value $500,000 or more'
B25121e92='$100,000 or more:'
B25121e93='Value less than $10,000'
B25121e94='Value $10,000 to $19,999'
B25121e95='Value $20,000 to $29,999'
B25121e96='Value $30,000 to $39,999'
B25121e97='Value $40,000 to $49,999'
B25121e98='Value $50,000 to $59,999'
B25121e99='Value $60,000 to $69,999'
B25121e100='Value $70,000 to $79,999'
B25121e101='Value $80,000 to $89,999'
B25121e102='Value $90,000 to $99,999'
B25121e103='Value $100,000 to $199,999'
B25121e104='Value $200,000 to $249,999'
B25121e105='Value $250,000 to $499,999'
B25121e106='Value $500,000 or more'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B25115e1
B25115e2
B25115e3
B25115e4
B25115e5
B25115e6
B25115e7
B25115e8
B25115e9
B25115e10
B25115e11
B25115e12
B25115e13
B25115e14
B25115e15
B25115e16
B25115e17
B25115e18
B25115e19
B25115e20
B25115e21
B25115e22
B25115e23
B25115e24
B25115e25
B25115e26
B25115e27
 
B25116e1
B25116e2
B25116e3
B25116e4
B25116e5
B25116e6
B25116e7
B25116e8
B25116e9
B25116e10
B25116e11
B25116e12
B25116e13
B25116e14
B25116e15
B25116e16
B25116e17
B25116e18
B25116e19
B25116e20
B25116e21
B25116e22
B25116e23
 
B25117e1
B25117e2
B25117e3
B25117e4
B25117e5
B25117e6
B25117e7
B25117e8
B25117e9
B25117e10
B25117e11
B25117e12
B25117e13
B25117e14
B25117e15
B25117e16
B25117e17
B25117e18
B25117e19
B25117e20
B25117e21
 
B25118e1
B25118e2
B25118e3
B25118e4
B25118e5
B25118e6
B25118e7
B25118e8
B25118e9
B25118e10
B25118e11
B25118e12
B25118e13
B25118e14
B25118e15
B25118e16
B25118e17
B25118e18
B25118e19
B25118e20
B25118e21
B25118e22
B25118e23
B25118e24
B25118e25
 
B25119e1
B25119e2
B25119e3
 
B25120e1
B25120e2
B25120e3
B25120e4
B25120e5
 
B25121e1
B25121e2
B25121e3
B25121e4
B25121e5
B25121e6
B25121e7
B25121e8
B25121e9
B25121e10
B25121e11
B25121e12
B25121e13
B25121e14
B25121e15
B25121e16
B25121e17
B25121e18
B25121e19
B25121e20
B25121e21
B25121e22
B25121e23
B25121e24
B25121e25
B25121e26
B25121e27
B25121e28
B25121e29
B25121e30
B25121e31
B25121e32
B25121e33
B25121e34
B25121e35
B25121e36
B25121e37
B25121e38
B25121e39
B25121e40
B25121e41
B25121e42
B25121e43
B25121e44
B25121e45
B25121e46
B25121e47
B25121e48
B25121e49
B25121e50
B25121e51
B25121e52
B25121e53
B25121e54
B25121e55
B25121e56
B25121e57
B25121e58
B25121e59
B25121e60
B25121e61
B25121e62
B25121e63
B25121e64
B25121e65
B25121e66
B25121e67
B25121e68
B25121e69
B25121e70
B25121e71
B25121e72
B25121e73
B25121e74
B25121e75
B25121e76
B25121e77
B25121e78
B25121e79
B25121e80
B25121e81
B25121e82
B25121e83
B25121e84
B25121e85
B25121e86
B25121e87
B25121e88
B25121e89
B25121e90
B25121e91
B25121e92
B25121e93
B25121e94
B25121e95
B25121e96
B25121e97
B25121e98
B25121e99
B25121e100
B25121e101
B25121e102
B25121e103
B25121e104
B25121e105
B25121e106
;
RUN;
TITLE2;
