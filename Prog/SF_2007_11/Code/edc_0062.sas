TITLE2 "e20115dc0062000";
DATA work.SFe0062dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0062000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*FAMILY TYPE BY PRESENCE OF OWN CHILDREN UNDER 18 YEARS BY FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Families */
 
B19131e1='Total:'
B19131e2='Married-couple family:'
B19131e3='With own children under 18 years:'
B19131e4='Less than $10,000'
B19131e5='$10,000 to $14,999'
B19131e6='$15,000 to $19,999'
B19131e7='$20,000 to $24,999'
B19131e8='$25,000 to $29,999'
B19131e9='$30,000 to $34,999'
B19131e10='$35,000 to $39,999'
B19131e11='$40,000 to $44,999'
B19131e12='$45,000 to $49,999'
B19131e13='$50,000 to $59,999'
B19131e14='$60,000 to $74,999'
B19131e15='$75,000 to $99,999'
B19131e16='$100,000 to $124,999'
B19131e17='$125,000 to $149,999'
B19131e18='$150,000 to $199,999'
B19131e19='$200,000 or more'
B19131e20='No own children under 18 years:'
B19131e21='Less than $10,000'
B19131e22='$10,000 to $14,999'
B19131e23='$15,000 to $19,999'
B19131e24='$20,000 to $24,999'
B19131e25='$25,000 to $29,999'
B19131e26='$30,000 to $34,999'
B19131e27='$35,000 to $39,999'
B19131e28='$40,000 to $44,999'
B19131e29='$45,000 to $49,999'
B19131e30='$50,000 to $59,999'
B19131e31='$60,000 to $74,999'
B19131e32='$75,000 to $99,999'
B19131e33='$100,000 to $124,999'
B19131e34='$125,000 to $149,999'
B19131e35='$150,000 to $199,999'
B19131e36='$200,000 or more'
B19131e37='Other family:'
B19131e38='Male householder, no wife present:'
B19131e39='With own children under 18 years:'
B19131e40='Less than $10,000'
B19131e41='$10,000 to $14,999'
B19131e42='$15,000 to $19,999'
B19131e43='$20,000 to $24,999'
B19131e44='$25,000 to $29,999'
B19131e45='$30,000 to $34,999'
B19131e46='$35,000 to $39,999'
B19131e47='$40,000 to $44,999'
B19131e48='$45,000 to $49,999'
B19131e49='$50,000 to $59,999'
B19131e50='$60,000 to $74,999'
B19131e51='$75,000 to $99,999'
B19131e52='$100,000 to $124,999'
B19131e53='$125,000 to $149,999'
B19131e54='$150,000 to $199,999'
B19131e55='$200,000 or more'
B19131e56='No own children under 18 years:'
B19131e57='Less than $10,000'
B19131e58='$10,000 to $14,999'
B19131e59='$15,000 to $19,999'
B19131e60='$20,000 to $24,999'
B19131e61='$25,000 to $29,999'
B19131e62='$30,000 to $34,999'
B19131e63='$35,000 to $39,999'
B19131e64='$40,000 to $44,999'
B19131e65='$45,000 to $49,999'
B19131e66='$50,000 to $59,999'
B19131e67='$60,000 to $74,999'
B19131e68='$75,000 to $99,999'
B19131e69='$100,000 to $124,999'
B19131e70='$125,000 to $149,999'
B19131e71='$150,000 to $199,999'
B19131e72='$200,000 or more'
B19131e73='Female householder, no husband present:'
B19131e74='With own children under 18 years:'
B19131e75='Less than $10,000'
B19131e76='$10,000 to $14,999'
B19131e77='$15,000 to $19,999'
B19131e78='$20,000 to $24,999'
B19131e79='$25,000 to $29,999'
B19131e80='$30,000 to $34,999'
B19131e81='$35,000 to $39,999'
B19131e82='$40,000 to $44,999'
B19131e83='$45,000 to $49,999'
B19131e84='$50,000 to $59,999'
B19131e85='$60,000 to $74,999'
B19131e86='$75,000 to $99,999'
B19131e87='$100,000 to $124,999'
B19131e88='$125,000 to $149,999'
B19131e89='$150,000 to $199,999'
B19131e90='$200,000 or more'
B19131e91='No own children under 18 years:'
B19131e92='Less than $10,000'
B19131e93='$10,000 to $14,999'
B19131e94='$15,000 to $19,999'
B19131e95='$20,000 to $24,999'
B19131e96='$25,000 to $29,999'
B19131e97='$30,000 to $34,999'
B19131e98='$35,000 to $39,999'
B19131e99='$40,000 to $44,999'
B19131e100='$45,000 to $49,999'
B19131e101='$50,000 to $59,999'
B19131e102='$60,000 to $74,999'
B19131e103='$75,000 to $99,999'
B19131e104='$100,000 to $124,999'
B19131e105='$125,000 to $149,999'
B19131e106='$150,000 to $199,999'
B19131e107='$200,000 or more'
 
/*NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Nonfamily households */
 
B19201e1='Total:'
B19201e2='Less than $10,000'
B19201e3='$10,000 to $14,999'
B19201e4='$15,000 to $19,999'
B19201e5='$20,000 to $24,999'
B19201e6='$25,000 to $29,999'
B19201e7='$30,000 to $34,999'
B19201e8='$35,000 to $39,999'
B19201e9='$40,000 to $44,999'
B19201e10='$45,000 to $49,999'
B19201e11='$50,000 to $59,999'
B19201e12='$60,000 to $74,999'
B19201e13='$75,000 to $99,999'
B19201e14='$100,000 to $124,999'
B19201e15='$125,000 to $149,999'
B19201e16='$150,000 to $199,999'
B19201e17='$200,000 or more'
 
/*MEDIAN NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Nonfamily households */
 
B19202e1='Median nonfamily household income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (WHITE ALONE HOUSEHOLDER) */
/*Universe:  Nonfamily households with a householder who is White alone */
 
B19202Ae1='Median nonfamily household income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (BLACK OR AFRICAN AMERICAN ALONE HOUSEHOLDER) */
/*Universe:  Nonfamily households with a householder who is Black or African American alone */
 
B19202Be1='Median nonfamily household income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (AMERICAN INDIAN AND ALASKA NATIVE ALONE HOUSEHOLDER) */
/*Universe:  Nonfamily households with householder who is American Indian and Alaska Native alone */
 
B19202Ce1='Median nonfamily household income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (ASIAN ALONE HOUSEHOLDER) */
/*Universe:  Nonfamily households with a householder who is Asian alone */
 
B19202De1='Median nonfamily household income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE HOUSEHOLDER) */
/*Universe:  Nonfamily households with a householder who is Native Hawaiian and Other Pacific Islander alone */
 
B19202Ee1='Median nonfamily household income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (SOME OTHER RACE ALONE HOUSEHOLDER) */
/*Universe:  Nonfamily households with a householder who is Some other race alone */
 
B19202Fe1='Median nonfamily household income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (TWO OR MORE RACES HOUSEHOLDER) */
/*Universe:  Nonfamily households with a householder who is Two or more races */
 
B19202Ge1='Median nonfamily household income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (WHITE ALONE, NOT HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Nonfamily households with a householder who is White alone, Not Hispanic or Latino */
 
B19202He1='Median nonfamily household income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Nonfamily households with a householder who is Hispanic or Latino */
 
B19202Ie1='Median nonfamily household income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*AGGREGATE NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Nonfamily households */
 
B19214e1='Aggregate nonfamily household income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY SEX OF HOUSEHOLDER BY LIVING ALONE BY AGE OF HOUSEHOLDER */
/*Universe:  Nonfamily households */
/*Median nonfamily household income in the past 12 months (in 2011 inflation-adjusted dollars) -- */
 
B19215e1='Total (dollars):'
/*Male householder -- */
B19215e2='Total (dollars)'
/*Living alone -- */
B19215e3='Total (dollars)'
B19215e4='Householder 15 to 64 years (dollars)'
B19215e5='Householder 65 years and over (dollars)'
/*Not living alone -- */
B19215e6='Total (dollars)'
B19215e7='Householder 15 to 64 years (dollars)'
B19215e8='Householder 65 years and over (dollars)'
/*Female householder -- */
B19215e9='Total (dollars)'
/*Living alone -- */
B19215e10='Total (dollars)'
B19215e11='Householder 15 to 64 years (dollars)'
B19215e12='Householder 65 years and over (dollars)'
/*Not living alone -- */
B19215e13='Total (dollars)'
B19215e14='Householder 15 to 64 years (dollars)'
B19215e15='Householder 65 years and over (dollars)'
 
/*AGGREGATE NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY SEX OF HOUSEHOLDER BY LIVING ALONE BY AGE OF HOUSEHOLDER */
/*Universe:  Nonfamily households */
 
B19216e1='Aggregate nonfamily household income in the past 12 months (in 2011 inflation-adjusted dollars):'
B19216e2='Male householder (dollars):'
B19216e3='Living alone (dollars):'
B19216e4='Householder 15 to 64 years (dollars)'
B19216e5='Householder 65 years and over (dollars)'
B19216e6='Not living alone (dollars):'
B19216e7='Householder 15 to 64 years (dollars)'
B19216e8='Householder 65 years and over (dollars)'
B19216e9='Female householder (dollars):'
B19216e10='Living alone (dollars):'
B19216e11='Householder 15 to 64 years (dollars)'
B19216e12='Householder 65 years and over (dollars)'
B19216e13='Not living alone (dollars):'
B19216e14='Householder 15 to 64 years (dollars)'
B19216e15='Householder 65 years and over (dollars)'
 
/*PER CAPITA INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Total population */
 
B19301e1='Per capita income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*PER CAPITA INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (WHITE ALONE) */
/*Universe:  People who are White alone */
 
B19301Ae1='Per capita income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*PER CAPITA INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  People who are Black or African American alone */
 
B19301Be1='Per capita income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*PER CAPITA INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  People who are American Indian and Alaska Native alone */
 
B19301Ce1='Per capita income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*PER CAPITA INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (ASIAN ALONE) */
/*Universe:  People who are Asian alone */
 
B19301De1='Per capita income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*PER CAPITA INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  People who are Native Hawaiian and Other Pacific Islander alone */
 
B19301Ee1='Per capita income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*PER CAPITA INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (SOME OTHER RACE ALONE) */
/*Universe:  People who are Some Other Race alone */
 
B19301Fe1='Per capita income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*PER CAPITA INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (TWO OR MORE RACES) */
/*Universe:  Two or more races population */
 
B19301Ge1='Per capita income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*PER CAPITA INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population */
 
B19301He1='Per capita income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*PER CAPITA INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (HISPANIC OR LATINO) */
/*Universe:  People who are Hispanic or Latino */
 
B19301Ie1='Per capita income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*AGGREGATE INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Population 15 years and over */
 
B19313e1='Aggregate income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*AGGREGATE INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 15 YEARS AND OVER (WHITE ALONE) */
/*Universe:  White alone population 15 years and over */
 
B19313Ae1='Aggregate income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*AGGREGATE INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 15 YEARS AND OVER (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone population 15 years and over */
 
B19313Be1='Aggregate income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*AGGREGATE INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 15 YEARS AND OVER (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone population 15 years and over */
 
B19313Ce1='Aggregate income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*AGGREGATE INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 15 YEARS AND OVER (ASIAN ALONE) */
/*Universe:  Asian alone population 15 years and over */
 
B19313De1='Aggregate income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*AGGREGATE INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 15 YEARS AND OVER (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 15 years and over */
 
B19313Ee1='Aggregate income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*AGGREGATE INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 15 YEARS AND OVER (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone population 15 years and over */
 
B19313Fe1='Aggregate income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*AGGREGATE INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 15 YEARS AND OVER (TWO OR MORE RACES) */
/*Universe:  Two or more races population 15 years and over */
 
B19313Ge1='Aggregate income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*AGGREGATE INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 15 YEARS AND OVER (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population 15 years and over */
 
B19313He1='Aggregate income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*AGGREGATE INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 15 YEARS AND OVER (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population 15 years and over */
 
B19313Ie1='Aggregate income in the past 12 months (in 2011 inflation-adjusted dollars)'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B19131e1
B19131e2
B19131e3
B19131e4
B19131e5
B19131e6
B19131e7
B19131e8
B19131e9
B19131e10
B19131e11
B19131e12
B19131e13
B19131e14
B19131e15
B19131e16
B19131e17
B19131e18
B19131e19
B19131e20
B19131e21
B19131e22
B19131e23
B19131e24
B19131e25
B19131e26
B19131e27
B19131e28
B19131e29
B19131e30
B19131e31
B19131e32
B19131e33
B19131e34
B19131e35
B19131e36
B19131e37
B19131e38
B19131e39
B19131e40
B19131e41
B19131e42
B19131e43
B19131e44
B19131e45
B19131e46
B19131e47
B19131e48
B19131e49
B19131e50
B19131e51
B19131e52
B19131e53
B19131e54
B19131e55
B19131e56
B19131e57
B19131e58
B19131e59
B19131e60
B19131e61
B19131e62
B19131e63
B19131e64
B19131e65
B19131e66
B19131e67
B19131e68
B19131e69
B19131e70
B19131e71
B19131e72
B19131e73
B19131e74
B19131e75
B19131e76
B19131e77
B19131e78
B19131e79
B19131e80
B19131e81
B19131e82
B19131e83
B19131e84
B19131e85
B19131e86
B19131e87
B19131e88
B19131e89
B19131e90
B19131e91
B19131e92
B19131e93
B19131e94
B19131e95
B19131e96
B19131e97
B19131e98
B19131e99
B19131e100
B19131e101
B19131e102
B19131e103
B19131e104
B19131e105
B19131e106
B19131e107
 
B19201e1
B19201e2
B19201e3
B19201e4
B19201e5
B19201e6
B19201e7
B19201e8
B19201e9
B19201e10
B19201e11
B19201e12
B19201e13
B19201e14
B19201e15
B19201e16
B19201e17
 
B19202e1
 
B19202Ae1
 
B19202Be1
 
B19202Ce1
 
B19202De1
 
B19202Ee1
 
B19202Fe1
 
B19202Ge1
 
B19202He1
 
B19202Ie1
 
B19214e1
 
B19215e1
B19215e2
B19215e3
B19215e4
B19215e5
B19215e6
B19215e7
B19215e8
B19215e9
B19215e10
B19215e11
B19215e12
B19215e13
B19215e14
B19215e15
 
B19216e1
B19216e2
B19216e3
B19216e4
B19216e5
B19216e6
B19216e7
B19216e8
B19216e9
B19216e10
B19216e11
B19216e12
B19216e13
B19216e14
B19216e15
 
B19301e1
 
B19301Ae1
 
B19301Be1
 
B19301Ce1
 
B19301De1
 
B19301Ee1
 
B19301Fe1
 
B19301Ge1
 
B19301He1
 
B19301Ie1
 
B19313e1
 
B19313Ae1
 
B19313Be1
 
B19313Ce1
 
B19313De1
 
B19313Ee1
 
B19313Fe1
 
B19313Ge1
 
B19313He1
 
B19313Ie1
;
RUN;
TITLE2;
