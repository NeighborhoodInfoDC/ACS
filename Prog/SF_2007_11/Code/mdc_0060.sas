TITLE2 "m20115dc0060000";
DATA work.SFm0060dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0060000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*AGE OF HOUSEHOLDER BY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Households with a householder who is Hispanic or Latino */
 
B19037Im1='Total:'
B19037Im2='Householder under 25 years:'
B19037Im3='Less than $10,000'
B19037Im4='$10,000 to $14,999'
B19037Im5='$15,000 to $19,999'
B19037Im6='$20,000 to $24,999'
B19037Im7='$25,000 to $29,999'
B19037Im8='$30,000 to $34,999'
B19037Im9='$35,000 to $39,999'
B19037Im10='$40,000 to $44,999'
B19037Im11='$45,000 to $49,999'
B19037Im12='$50,000 to $59,999'
B19037Im13='$60,000 to $74,999'
B19037Im14='$75,000 to $99,999'
B19037Im15='$100,000 to $124,999'
B19037Im16='$125,000 to $149,999'
B19037Im17='$150,000 to $199,999'
B19037Im18='$200,000 or more'
B19037Im19='Householder 25 to 44 years:'
B19037Im20='Less than $10,000'
B19037Im21='$10,000 to $14,999'
B19037Im22='$15,000 to $19,999'
B19037Im23='$20,000 to $24,999'
B19037Im24='$25,000 to $29,999'
B19037Im25='$30,000 to $34,999'
B19037Im26='$35,000 to $39,999'
B19037Im27='$40,000 to $44,999'
B19037Im28='$45,000 to $49,999'
B19037Im29='$50,000 to $59,999'
B19037Im30='$60,000 to $74,999'
B19037Im31='$75,000 to $99,999'
B19037Im32='$100,000 to $124,999'
B19037Im33='$125,000 to $149,999'
B19037Im34='$150,000 to $199,999'
B19037Im35='$200,000 or more'
B19037Im36='Householder 45 to 64 years:'
B19037Im37='Less than $10,000'
B19037Im38='$10,000 to $14,999'
B19037Im39='$15,000 to $19,999'
B19037Im40='$20,000 to $24,999'
B19037Im41='$25,000 to $29,999'
B19037Im42='$30,000 to $34,999'
B19037Im43='$35,000 to $39,999'
B19037Im44='$40,000 to $44,999'
B19037Im45='$45,000 to $49,999'
B19037Im46='$50,000 to $59,999'
B19037Im47='$60,000 to $74,999'
B19037Im48='$75,000 to $99,999'
B19037Im49='$100,000 to $124,999'
B19037Im50='$125,000 to $149,999'
B19037Im51='$150,000 to $199,999'
B19037Im52='$200,000 or more'
B19037Im53='Householder 65 years and over:'
B19037Im54='Less than $10,000'
B19037Im55='$10,000 to $14,999'
B19037Im56='$15,000 to $19,999'
B19037Im57='$20,000 to $24,999'
B19037Im58='$25,000 to $29,999'
B19037Im59='$30,000 to $34,999'
B19037Im60='$35,000 to $39,999'
B19037Im61='$40,000 to $44,999'
B19037Im62='$45,000 to $49,999'
B19037Im63='$50,000 to $59,999'
B19037Im64='$60,000 to $74,999'
B19037Im65='$75,000 to $99,999'
B19037Im66='$100,000 to $124,999'
B19037Im67='$125,000 to $149,999'
B19037Im68='$150,000 to $199,999'
B19037Im69='$200,000 or more'
 
/*MEDIAN HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY AGE OF HOUSEHOLDER */
/*Universe:  Households */
/*Median household income in the past 12 months (in 2011 inflation-adjusted dollars) -- */
 
B19049m1='Total:'
B19049m2='Householder under 25 years'
B19049m3='Householder 25 to 44 years'
B19049m4='Householder 45 to 64 years'
B19049m5='Householder 65 years and over'
 
/*AGGREGATE HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY AGE OF HOUSEHOLDER */
/*Universe:  Households */
 
B19050m1='Aggregate household income in the past 12 months (in 2011 inflation-adjusted dollars):'
B19050m2='Householder under 25 years'
B19050m3='Householder 25 to 44 years'
B19050m4='Householder 45 to 64 years'
B19050m5='Householder 65 years and over'
 
/*EARNINGS IN THE PAST 12 MONTHS FOR HOUSEHOLDS */
/*Universe:  Households */
 
B19051m1='Total:'
B19051m2='With earnings'
B19051m3='No earnings'
 
/*WAGE OR SALARY INCOME IN THE PAST 12 MONTHS FOR HOUSEHOLDS */
/*Universe:  Households */
 
B19052m1='Total:'
B19052m2='With wage or salary income'
B19052m3='No wage or salary income'
 
/*SELF-EMPLOYMENT INCOME IN THE PAST 12 MONTHS FOR HOUSEHOLDS */
/*Universe:  Households */
 
B19053m1='Total:'
B19053m2='With self-employment income'
B19053m3='No self-employment income'
 
/*INTEREST, DIVIDENDS, OR NET RENTAL INCOME IN THE PAST 12 MONTHS FOR HOUSEHOLDS */
/*Universe:  Households */
 
B19054m1='Total:'
B19054m2='With interest, dividends, or net rental income'
B19054m3='No interest, dividends, or net rental income'
 
/*SOCIAL SECURITY INCOME IN THE PAST 12 MONTHS FOR HOUSEHOLDS */
/*Universe:  Households */
 
B19055m1='Total:'
B19055m2='With Social Security income'
B19055m3='No Social Security income'
 
/*SUPPLEMENTAL SECURITY INCOME (SSI) IN THE PAST 12 MONTHS FOR HOUSEHOLDS */
/*Universe:  Households */
 
B19056m1='Total:'
B19056m2='With Supplemental Security Income (SSI)'
B19056m3='No Supplemental Security Income (SSI)'
 
/*PUBLIC ASSISTANCE INCOME IN THE PAST 12 MONTHS FOR HOUSEHOLDS */
/*Universe:  Households */
 
B19057m1='Total:'
B19057m2='With public assistance income'
B19057m3='No public assistance income'
 
/*PUBLIC ASSISTANCE INCOME OR FOOD STAMPS/SNAP IN THE PAST 12 MONTHS FOR HOUSEHOLDS */
/*Universe:  Households */
 
B19058m1='Total:'
B19058m2='With cash public assistance or Food Stamps/SNAP'
B19058m3='No cash public assistance or Food Stamps/SNAP'
 
/*RETIREMENT INCOME IN THE PAST 12 MONTHS FOR HOUSEHOLDS */
/*Universe:  Households */
 
B19059m1='Total:'
B19059m2='With retirement income'
B19059m3='No retirement income'
 
/*OTHER TYPES OF INCOME IN THE PAST 12 MONTHS FOR HOUSEHOLDS */
/*Universe:  Households */
 
B19060m1='Total:'
B19060m2='With other types of income'
B19060m3='No other types of income'
 
/*AGGREGATE EARNINGS IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR HOUSEHOLDS */
/*Universe:  Households */
 
B19061m1='Aggregate earnings in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*AGGREGATE WAGE OR SALARY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR HOUSEHOLDS */
/*Universe:  Households */
 
B19062m1='Aggregate wage or salary income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*AGGREGATE SELF-EMPLOYMENT INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR HOUSEHOLDS */
/*Universe:  Households */
 
B19063m1='Aggregate self-employment income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*AGGREGATE INTEREST, DIVIDENDS, OR NET RENTAL INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR HOUSEHOLDS */
/*Universe:  Households */
 
B19064m1='Aggregate interest, dividends, or net rental income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*AGGREGATE SOCIAL SECURITY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR HOUSEHOLDS */
/*Universe:  Households */
 
B19065m1='Aggregate Social Security income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*AGGREGATE SUPPLEMENTAL SECURITY INCOME (SSI) IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR HOUSEHOLDS */
/*Universe:  Households */
 
B19066m1='Aggregate Supplemental Security Income (SSI) in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*AGGREGATE PUBLIC ASSISTANCE INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR HOUSEHOLDS */
/*Universe:  Households */
 
B19067m1='Aggregate public assistance income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*AGGREGATE RETIREMENT INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR HOUSEHOLDS */
/*Universe:  Households */
 
B19069m1='Aggregate retirement income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*AGGREGATE OTHER TYPES OF INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR HOUSEHOLDS */
/*Universe:  Households */
 
B19070m1='Aggregate other types of income in the past 12 months (in 2011 inflation-adjusted dollars):'
 
/*HOUSEHOLD INCOME QUINTILE UPPER LIMITS */
/*Universe: Households */
/*Quintile Upper Limits: */
 
B19080m1='Lowest Quintile'
B19080m2='Second Quintile'
B19080m3='Third Quintile'
B19080m4='Fourth Quintile'
B19080m5='Lower Limit of Top 5 Percent'
 
/*MEAN HOUSEHOLD INCOME OF QUINTILES */
/*Universe: Households */
/*Quintile Means: */
 
B19081m1='Lowest Quintile'
B19081m2='Second Quintile'
B19081m3='Third Quintile'
B19081m4='Fourth Quintile'
B19081m5='Highest Quintile'
B19081m6='Top 5 Percent'
 
/*SHARES OF AGGREGATE HOUSEHOLD INCOME BY QUINTILE */
/*Universe: Households */
/*Quintile Share of Aggregate Income: */
 
B19082m1='Lowest Quintile'
B19082m2='Second Quintile'
B19082m3='Third Quintile'
B19082m4='Fourth Quintile'
B19082m5='Highest Quintile'
B19082m6='Top 5 Percent'
 
/*GINI INDEX OF INCOME INEQUALITY */
/*Universe: Households */
 
B19083m1='Gini Index'
 
/*FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Families */
 
B19101m1='Total:'
B19101m2='Less than $10,000'
B19101m3='$10,000 to $14,999'
B19101m4='$15,000 to $19,999'
B19101m5='$20,000 to $24,999'
B19101m6='$25,000 to $29,999'
B19101m7='$30,000 to $34,999'
B19101m8='$35,000 to $39,999'
B19101m9='$40,000 to $44,999'
B19101m10='$45,000 to $49,999'
B19101m11='$50,000 to $59,999'
B19101m12='$60,000 to $74,999'
B19101m13='$75,000 to $99,999'
B19101m14='$100,000 to $124,999'
B19101m15='$125,000 to $149,999'
B19101m16='$150,000 to $199,999'
B19101m17='$200,000 or more'
 
/*FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (WHITE ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is White alone */
 
B19101Am1='Total:'
B19101Am2='Less than $10,000'
B19101Am3='$10,000 to $14,999'
B19101Am4='$15,000 to $19,999'
B19101Am5='$20,000 to $24,999'
B19101Am6='$25,000 to $29,999'
B19101Am7='$30,000 to $34,999'
B19101Am8='$35,000 to $39,999'
B19101Am9='$40,000 to $44,999'
B19101Am10='$45,000 to $49,999'
B19101Am11='$50,000 to $59,999'
B19101Am12='$60,000 to $74,999'
B19101Am13='$75,000 to $99,999'
B19101Am14='$100,000 to $124,999'
B19101Am15='$125,000 to $149,999'
B19101Am16='$150,000 to $199,999'
B19101Am17='$200,000 or more'
 
/*FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (BLACK OR AFRICAN AMERICAN ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is Black or African American alone */
 
B19101Bm1='Total:'
B19101Bm2='Less than $10,000'
B19101Bm3='$10,000 to $14,999'
B19101Bm4='$15,000 to $19,999'
B19101Bm5='$20,000 to $24,999'
B19101Bm6='$25,000 to $29,999'
B19101Bm7='$30,000 to $34,999'
B19101Bm8='$35,000 to $39,999'
B19101Bm9='$40,000 to $44,999'
B19101Bm10='$45,000 to $49,999'
B19101Bm11='$50,000 to $59,999'
B19101Bm12='$60,000 to $74,999'
B19101Bm13='$75,000 to $99,999'
B19101Bm14='$100,000 to $124,999'
B19101Bm15='$125,000 to $149,999'
B19101Bm16='$150,000 to $199,999'
B19101Bm17='$200,000 or more'
 
/*FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (AMERICAN INDIAN AND ALASKA NATIVE ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is American Indian and Alaska Native alone */
 
B19101Cm1='Total:'
B19101Cm2='Less than $10,000'
B19101Cm3='$10,000 to $14,999'
B19101Cm4='$15,000 to $19,999'
B19101Cm5='$20,000 to $24,999'
B19101Cm6='$25,000 to $29,999'
B19101Cm7='$30,000 to $34,999'
B19101Cm8='$35,000 to $39,999'
B19101Cm9='$40,000 to $44,999'
B19101Cm10='$45,000 to $49,999'
B19101Cm11='$50,000 to $59,999'
B19101Cm12='$60,000 to $74,999'
B19101Cm13='$75,000 to $99,999'
B19101Cm14='$100,000 to $124,999'
B19101Cm15='$125,000 to $149,999'
B19101Cm16='$150,000 to $199,999'
B19101Cm17='$200,000 or more'
 
/*FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (ASIAN ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is Asian alone */
 
B19101Dm1='Total:'
B19101Dm2='Less than $10,000'
B19101Dm3='$10,000 to $14,999'
B19101Dm4='$15,000 to $19,999'
B19101Dm5='$20,000 to $24,999'
B19101Dm6='$25,000 to $29,999'
B19101Dm7='$30,000 to $34,999'
B19101Dm8='$35,000 to $39,999'
B19101Dm9='$40,000 to $44,999'
B19101Dm10='$45,000 to $49,999'
B19101Dm11='$50,000 to $59,999'
B19101Dm12='$60,000 to $74,999'
B19101Dm13='$75,000 to $99,999'
B19101Dm14='$100,000 to $124,999'
B19101Dm15='$125,000 to $149,999'
B19101Dm16='$150,000 to $199,999'
B19101Dm17='$200,000 or more'
 
/*FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is Native Hawaiian and Other Pacific Islander alone */
 
B19101Em1='Total:'
B19101Em2='Less than $10,000'
B19101Em3='$10,000 to $14,999'
B19101Em4='$15,000 to $19,999'
B19101Em5='$20,000 to $24,999'
B19101Em6='$25,000 to $29,999'
B19101Em7='$30,000 to $34,999'
B19101Em8='$35,000 to $39,999'
B19101Em9='$40,000 to $44,999'
B19101Em10='$45,000 to $49,999'
B19101Em11='$50,000 to $59,999'
B19101Em12='$60,000 to $74,999'
B19101Em13='$75,000 to $99,999'
B19101Em14='$100,000 to $124,999'
B19101Em15='$125,000 to $149,999'
B19101Em16='$150,000 to $199,999'
B19101Em17='$200,000 or more'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B19037Im1
B19037Im2
B19037Im3
B19037Im4
B19037Im5
B19037Im6
B19037Im7
B19037Im8
B19037Im9
B19037Im10
B19037Im11
B19037Im12
B19037Im13
B19037Im14
B19037Im15
B19037Im16
B19037Im17
B19037Im18
B19037Im19
B19037Im20
B19037Im21
B19037Im22
B19037Im23
B19037Im24
B19037Im25
B19037Im26
B19037Im27
B19037Im28
B19037Im29
B19037Im30
B19037Im31
B19037Im32
B19037Im33
B19037Im34
B19037Im35
B19037Im36
B19037Im37
B19037Im38
B19037Im39
B19037Im40
B19037Im41
B19037Im42
B19037Im43
B19037Im44
B19037Im45
B19037Im46
B19037Im47
B19037Im48
B19037Im49
B19037Im50
B19037Im51
B19037Im52
B19037Im53
B19037Im54
B19037Im55
B19037Im56
B19037Im57
B19037Im58
B19037Im59
B19037Im60
B19037Im61
B19037Im62
B19037Im63
B19037Im64
B19037Im65
B19037Im66
B19037Im67
B19037Im68
B19037Im69
 
B19049m1
B19049m2
B19049m3
B19049m4
B19049m5
 
B19050m1
B19050m2
B19050m3
B19050m4
B19050m5
 
B19051m1
B19051m2
B19051m3
 
B19052m1
B19052m2
B19052m3
 
B19053m1
B19053m2
B19053m3
 
B19054m1
B19054m2
B19054m3
 
B19055m1
B19055m2
B19055m3
 
B19056m1
B19056m2
B19056m3
 
B19057m1
B19057m2
B19057m3
 
B19058m1
B19058m2
B19058m3
 
B19059m1
B19059m2
B19059m3
 
B19060m1
B19060m2
B19060m3
 
B19061m1
 
B19062m1
 
B19063m1
 
B19064m1
 
B19065m1
 
B19066m1
 
B19067m1
 
B19069m1
 
B19070m1
 
B19080m1
B19080m2
B19080m3
B19080m4
B19080m5
 
B19081m1
B19081m2
B19081m3
B19081m4
B19081m5
B19081m6
 
B19082m1
B19082m2
B19082m3
B19082m4
B19082m5
B19082m6
 
B19083m1
 
B19101m1
B19101m2
B19101m3
B19101m4
B19101m5
B19101m6
B19101m7
B19101m8
B19101m9
B19101m10
B19101m11
B19101m12
B19101m13
B19101m14
B19101m15
B19101m16
B19101m17
 
B19101Am1
B19101Am2
B19101Am3
B19101Am4
B19101Am5
B19101Am6
B19101Am7
B19101Am8
B19101Am9
B19101Am10
B19101Am11
B19101Am12
B19101Am13
B19101Am14
B19101Am15
B19101Am16
B19101Am17
 
B19101Bm1
B19101Bm2
B19101Bm3
B19101Bm4
B19101Bm5
B19101Bm6
B19101Bm7
B19101Bm8
B19101Bm9
B19101Bm10
B19101Bm11
B19101Bm12
B19101Bm13
B19101Bm14
B19101Bm15
B19101Bm16
B19101Bm17
 
B19101Cm1
B19101Cm2
B19101Cm3
B19101Cm4
B19101Cm5
B19101Cm6
B19101Cm7
B19101Cm8
B19101Cm9
B19101Cm10
B19101Cm11
B19101Cm12
B19101Cm13
B19101Cm14
B19101Cm15
B19101Cm16
B19101Cm17
 
B19101Dm1
B19101Dm2
B19101Dm3
B19101Dm4
B19101Dm5
B19101Dm6
B19101Dm7
B19101Dm8
B19101Dm9
B19101Dm10
B19101Dm11
B19101Dm12
B19101Dm13
B19101Dm14
B19101Dm15
B19101Dm16
B19101Dm17
 
B19101Em1
B19101Em2
B19101Em3
B19101Em4
B19101Em5
B19101Em6
B19101Em7
B19101Em8
B19101Em9
B19101Em10
B19101Em11
B19101Em12
B19101Em13
B19101Em14
B19101Em15
B19101Em16
B19101Em17
;
RUN;
TITLE2;
