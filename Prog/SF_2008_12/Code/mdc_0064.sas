TITLE2 "m20125dc0064000";
DATA work.SFm0064dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0064000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*FAMILY TYPE BY PRESENCE OF OWN CHILDREN UNDER 18 YEARS BY FAMILY INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Families */
 
B19131m1='Total:'
B19131m2='Married-couple family:'
B19131m3='With own children under 18 years:'
B19131m4='Less than $10,000'
B19131m5='$10,000 to $14,999'
B19131m6='$15,000 to $19,999'
B19131m7='$20,000 to $24,999'
B19131m8='$25,000 to $29,999'
B19131m9='$30,000 to $34,999'
B19131m10='$35,000 to $39,999'
B19131m11='$40,000 to $44,999'
B19131m12='$45,000 to $49,999'
B19131m13='$50,000 to $59,999'
B19131m14='$60,000 to $74,999'
B19131m15='$75,000 to $99,999'
B19131m16='$100,000 to $124,999'
B19131m17='$125,000 to $149,999'
B19131m18='$150,000 to $199,999'
B19131m19='$200,000 or more'
B19131m20='No own children under 18 years:'
B19131m21='Less than $10,000'
B19131m22='$10,000 to $14,999'
B19131m23='$15,000 to $19,999'
B19131m24='$20,000 to $24,999'
B19131m25='$25,000 to $29,999'
B19131m26='$30,000 to $34,999'
B19131m27='$35,000 to $39,999'
B19131m28='$40,000 to $44,999'
B19131m29='$45,000 to $49,999'
B19131m30='$50,000 to $59,999'
B19131m31='$60,000 to $74,999'
B19131m32='$75,000 to $99,999'
B19131m33='$100,000 to $124,999'
B19131m34='$125,000 to $149,999'
B19131m35='$150,000 to $199,999'
B19131m36='$200,000 or more'
B19131m37='Other family:'
B19131m38='Male householder, no wife present:'
B19131m39='With own children under 18 years:'
B19131m40='Less than $10,000'
B19131m41='$10,000 to $14,999'
B19131m42='$15,000 to $19,999'
B19131m43='$20,000 to $24,999'
B19131m44='$25,000 to $29,999'
B19131m45='$30,000 to $34,999'
B19131m46='$35,000 to $39,999'
B19131m47='$40,000 to $44,999'
B19131m48='$45,000 to $49,999'
B19131m49='$50,000 to $59,999'
B19131m50='$60,000 to $74,999'
B19131m51='$75,000 to $99,999'
B19131m52='$100,000 to $124,999'
B19131m53='$125,000 to $149,999'
B19131m54='$150,000 to $199,999'
B19131m55='$200,000 or more'
B19131m56='No own children under 18 years:'
B19131m57='Less than $10,000'
B19131m58='$10,000 to $14,999'
B19131m59='$15,000 to $19,999'
B19131m60='$20,000 to $24,999'
B19131m61='$25,000 to $29,999'
B19131m62='$30,000 to $34,999'
B19131m63='$35,000 to $39,999'
B19131m64='$40,000 to $44,999'
B19131m65='$45,000 to $49,999'
B19131m66='$50,000 to $59,999'
B19131m67='$60,000 to $74,999'
B19131m68='$75,000 to $99,999'
B19131m69='$100,000 to $124,999'
B19131m70='$125,000 to $149,999'
B19131m71='$150,000 to $199,999'
B19131m72='$200,000 or more'
B19131m73='Female householder, no husband present:'
B19131m74='With own children under 18 years:'
B19131m75='Less than $10,000'
B19131m76='$10,000 to $14,999'
B19131m77='$15,000 to $19,999'
B19131m78='$20,000 to $24,999'
B19131m79='$25,000 to $29,999'
B19131m80='$30,000 to $34,999'
B19131m81='$35,000 to $39,999'
B19131m82='$40,000 to $44,999'
B19131m83='$45,000 to $49,999'
B19131m84='$50,000 to $59,999'
B19131m85='$60,000 to $74,999'
B19131m86='$75,000 to $99,999'
B19131m87='$100,000 to $124,999'
B19131m88='$125,000 to $149,999'
B19131m89='$150,000 to $199,999'
B19131m90='$200,000 or more'
B19131m91='No own children under 18 years:'
B19131m92='Less than $10,000'
B19131m93='$10,000 to $14,999'
B19131m94='$15,000 to $19,999'
B19131m95='$20,000 to $24,999'
B19131m96='$25,000 to $29,999'
B19131m97='$30,000 to $34,999'
B19131m98='$35,000 to $39,999'
B19131m99='$40,000 to $44,999'
B19131m100='$45,000 to $49,999'
B19131m101='$50,000 to $59,999'
B19131m102='$60,000 to $74,999'
B19131m103='$75,000 to $99,999'
B19131m104='$100,000 to $124,999'
B19131m105='$125,000 to $149,999'
B19131m106='$150,000 to $199,999'
B19131m107='$200,000 or more'
/*NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Nonfamily households */
 
B19201m1='Total:'
B19201m2='Less than $10,000'
B19201m3='$10,000 to $14,999'
B19201m4='$15,000 to $19,999'
B19201m5='$20,000 to $24,999'
B19201m6='$25,000 to $29,999'
B19201m7='$30,000 to $34,999'
B19201m8='$35,000 to $39,999'
B19201m9='$40,000 to $44,999'
B19201m10='$45,000 to $49,999'
B19201m11='$50,000 to $59,999'
B19201m12='$60,000 to $74,999'
B19201m13='$75,000 to $99,999'
B19201m14='$100,000 to $124,999'
B19201m15='$125,000 to $149,999'
B19201m16='$150,000 to $199,999'
B19201m17='$200,000 or more'
/*MEDIAN NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Nonfamily households */
 
B19202m1='Median nonfamily household income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*MEDIAN NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) (WHITE ALONE HOUSEHOLDER) */
/*Universe:  Nonfamily households with a householder who is White alone */
 
B19202Am1='Median nonfamily household income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*MEDIAN NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) (BLACK OR AFRICAN AMERICAN ALONE HOUSEHOLDER) */
/*Universe:  Nonfamily households with a householder who is Black or African American alone */
 
B19202Bm1='Median nonfamily household income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*MEDIAN NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) (AMERICAN INDIAN AND ALASKA NATIVE ALONE HOUSEHOLDER) */
/*Universe:  Nonfamily households with householder who is American Indian and Alaska Native alone */
 
B19202Cm1='Median nonfamily household income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*MEDIAN NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) (ASIAN ALONE HOUSEHOLDER) */
/*Universe:  Nonfamily households with a householder who is Asian alone */
 
B19202Dm1='Median nonfamily household income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*MEDIAN NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE HOUSEHOLDER) */
/*Universe:  Nonfamily households with a householder who is Native Hawaiian and Other Pacific Islander alone */
 
B19202Em1='Median nonfamily household income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*MEDIAN NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) (SOME OTHER RACE ALONE HOUSEHOLDER) */
/*Universe:  Nonfamily households with a householder who is Some other race alone */
 
B19202Fm1='Median nonfamily household income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*MEDIAN NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) (TWO OR MORE RACES HOUSEHOLDER) */
/*Universe:  Nonfamily households with a householder who is Two or more races */
 
B19202Gm1='Median nonfamily household income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*MEDIAN NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) (WHITE ALONE, NOT HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Nonfamily households with a householder who is White alone, Not Hispanic or Latino */
 
B19202Hm1='Median nonfamily household income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*MEDIAN NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) (HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Nonfamily households with a householder who is Hispanic or Latino */
 
B19202Im1='Median nonfamily household income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*AGGREGATE NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Nonfamily households */
 
B19214m1='Aggregate nonfamily household income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*MEDIAN NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY SEX OF HOUSEHOLDER BY LIVING ALONE BY AGE OF HOUSEHOLDER */
/*Universe:  Nonfamily households */
/*Median nonfamily household income in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B19215m1='Total (dollars):'
/*Male householder -- */
B19215m2='Total (dollars)'
/*Living alone -- */
B19215m3='Total (dollars)'
B19215m4='Householder 15 to 64 years (dollars)'
B19215m5='Householder 65 years and over (dollars)'
/*Not living alone -- */
B19215m6='Total (dollars)'
B19215m7='Householder 15 to 64 years (dollars)'
B19215m8='Householder 65 years and over (dollars)'
/*Female householder -- */
B19215m9='Total (dollars)'
/*Living alone -- */
B19215m10='Total (dollars)'
B19215m11='Householder 15 to 64 years (dollars)'
B19215m12='Householder 65 years and over (dollars)'
/*Not living alone -- */
B19215m13='Total (dollars)'
B19215m14='Householder 15 to 64 years (dollars)'
B19215m15='Householder 65 years and over (dollars)'
/*AGGREGATE NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY SEX OF HOUSEHOLDER BY LIVING ALONE BY AGE OF HOUSEHOLDER */
/*Universe:  Nonfamily households */
 
B19216m1='Aggregate nonfamily household income in the past 12 months (in 2012 inflation-adjusted dollars):'
B19216m2='Male householder (dollars):'
B19216m3='Living alone (dollars):'
B19216m4='Householder 15 to 64 years (dollars)'
B19216m5='Householder 65 years and over (dollars)'
B19216m6='Not living alone (dollars):'
B19216m7='Householder 15 to 64 years (dollars)'
B19216m8='Householder 65 years and over (dollars)'
B19216m9='Female householder (dollars):'
B19216m10='Living alone (dollars):'
B19216m11='Householder 15 to 64 years (dollars)'
B19216m12='Householder 65 years and over (dollars)'
B19216m13='Not living alone (dollars):'
B19216m14='Householder 15 to 64 years (dollars)'
B19216m15='Householder 65 years and over (dollars)'
/*PER CAPITA INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Total population */
 
B19301m1='Per capita income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*PER CAPITA INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) (WHITE ALONE) */
/*Universe:  People who are White alone */
 
B19301Am1='Per capita income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*PER CAPITA INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  People who are Black or African American alone */
 
B19301Bm1='Per capita income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*PER CAPITA INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  People who are American Indian and Alaska Native alone */
 
B19301Cm1='Per capita income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*PER CAPITA INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) (ASIAN ALONE) */
/*Universe:  People who are Asian alone */
 
B19301Dm1='Per capita income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*PER CAPITA INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  People who are Native Hawaiian and Other Pacific Islander alone */
 
B19301Em1='Per capita income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*PER CAPITA INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) (SOME OTHER RACE ALONE) */
/*Universe:  People who are Some Other Race alone */
 
B19301Fm1='Per capita income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*PER CAPITA INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) (TWO OR MORE RACES) */
/*Universe:  Two or more races population */
 
B19301Gm1='Per capita income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*PER CAPITA INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population */
 
B19301Hm1='Per capita income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*PER CAPITA INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) (HISPANIC OR LATINO) */
/*Universe:  People who are Hispanic or Latino */
 
B19301Im1='Per capita income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*AGGREGATE INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Population 15 years and over */
 
B19313m1='Aggregate income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*AGGREGATE INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 15 YEARS AND OVER (WHITE ALONE) */
/*Universe:  White alone population 15 years and over */
 
B19313Am1='Aggregate income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*AGGREGATE INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 15 YEARS AND OVER (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone population 15 years and over */
 
B19313Bm1='Aggregate income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*AGGREGATE INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 15 YEARS AND OVER (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone population 15 years and over */
 
B19313Cm1='Aggregate income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*AGGREGATE INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 15 YEARS AND OVER (ASIAN ALONE) */
/*Universe:  Asian alone population 15 years and over */
 
B19313Dm1='Aggregate income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*AGGREGATE INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 15 YEARS AND OVER (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 15 years and over */
 
B19313Em1='Aggregate income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*AGGREGATE INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 15 YEARS AND OVER (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone population 15 years and over */
 
B19313Fm1='Aggregate income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*AGGREGATE INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 15 YEARS AND OVER (TWO OR MORE RACES) */
/*Universe:  Two or more races population 15 years and over */
 
B19313Gm1='Aggregate income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*AGGREGATE INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 15 YEARS AND OVER (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population 15 years and over */
 
B19313Hm1='Aggregate income in the past 12 months (in 2012 inflation-adjusted dollars)'
/*AGGREGATE INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 15 YEARS AND OVER (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population 15 years and over */
 
B19313Im1='Aggregate income in the past 12 months (in 2012 inflation-adjusted dollars)'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B19131m1
B19131m2
B19131m3
B19131m4
B19131m5
B19131m6
B19131m7
B19131m8
B19131m9
B19131m10
B19131m11
B19131m12
B19131m13
B19131m14
B19131m15
B19131m16
B19131m17
B19131m18
B19131m19
B19131m20
B19131m21
B19131m22
B19131m23
B19131m24
B19131m25
B19131m26
B19131m27
B19131m28
B19131m29
B19131m30
B19131m31
B19131m32
B19131m33
B19131m34
B19131m35
B19131m36
B19131m37
B19131m38
B19131m39
B19131m40
B19131m41
B19131m42
B19131m43
B19131m44
B19131m45
B19131m46
B19131m47
B19131m48
B19131m49
B19131m50
B19131m51
B19131m52
B19131m53
B19131m54
B19131m55
B19131m56
B19131m57
B19131m58
B19131m59
B19131m60
B19131m61
B19131m62
B19131m63
B19131m64
B19131m65
B19131m66
B19131m67
B19131m68
B19131m69
B19131m70
B19131m71
B19131m72
B19131m73
B19131m74
B19131m75
B19131m76
B19131m77
B19131m78
B19131m79
B19131m80
B19131m81
B19131m82
B19131m83
B19131m84
B19131m85
B19131m86
B19131m87
B19131m88
B19131m89
B19131m90
B19131m91
B19131m92
B19131m93
B19131m94
B19131m95
B19131m96
B19131m97
B19131m98
B19131m99
B19131m100
B19131m101
B19131m102
B19131m103
B19131m104
B19131m105
B19131m106
B19131m107
 
B19201m1
B19201m2
B19201m3
B19201m4
B19201m5
B19201m6
B19201m7
B19201m8
B19201m9
B19201m10
B19201m11
B19201m12
B19201m13
B19201m14
B19201m15
B19201m16
B19201m17
 
B19202m1
 
B19202Am1
 
B19202Bm1
 
B19202Cm1
 
B19202Dm1
 
B19202Em1
 
B19202Fm1
 
B19202Gm1
 
B19202Hm1
 
B19202Im1
 
B19214m1
 
B19215m1
B19215m2
B19215m3
B19215m4
B19215m5
B19215m6
B19215m7
B19215m8
B19215m9
B19215m10
B19215m11
B19215m12
B19215m13
B19215m14
B19215m15
 
B19216m1
B19216m2
B19216m3
B19216m4
B19216m5
B19216m6
B19216m7
B19216m8
B19216m9
B19216m10
B19216m11
B19216m12
B19216m13
B19216m14
B19216m15
 
B19301m1
 
B19301Am1
 
B19301Bm1
 
B19301Cm1
 
B19301Dm1
 
B19301Em1
 
B19301Fm1
 
B19301Gm1
 
B19301Hm1
 
B19301Im1
 
B19313m1
 
B19313Am1
 
B19313Bm1
 
B19313Cm1
 
B19313Dm1
 
B19313Em1
 
B19313Fm1
 
B19313Gm1
 
B19313Hm1
 
B19313Im1
;
RUN;
TITLE2;
