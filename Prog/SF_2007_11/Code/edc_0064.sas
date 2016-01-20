TITLE2 "e20115dc0064000";
DATA work.SFe0064dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0064000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*SEX BY EARNINGS IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS IN THE PAST 12 MONTHS */
/*Universe:  Population 16 years and over with earnings */
 
B20001e1='Total:'
B20001e2='Male:'
B20001e3='$1 to $2,499 or loss'
B20001e4='$2,500 to $4,999'
B20001e5='$5,000 to $7,499'
B20001e6='$7,500 to $9,999'
B20001e7='$10,000 to $12,499'
B20001e8='$12,500 to $14,999'
B20001e9='$15,000 to $17,499'
B20001e10='$17,500 to $19,999'
B20001e11='$20,000 to $22,499'
B20001e12='$22,500 to $24,999'
B20001e13='$25,000 to $29,999'
B20001e14='$30,000 to $34,999'
B20001e15='$35,000 to $39,999'
B20001e16='$40,000 to $44,999'
B20001e17='$45,000 to $49,999'
B20001e18='$50,000 to $54,999'
B20001e19='$55,000 to $64,999'
B20001e20='$65,000 to $74,999'
B20001e21='$75,000 to $99,999'
B20001e22='$100,000 or more'
B20001e23='Female:'
B20001e24='$1 to $2,499 or loss'
B20001e25='$2,500 to $4,999'
B20001e26='$5,000 to $7,499'
B20001e27='$7,500 to $9,999'
B20001e28='$10,000 to $12,499'
B20001e29='$12,500 to $14,999'
B20001e30='$15,000 to $17,499'
B20001e31='$17,500 to $19,999'
B20001e32='$20,000 to $22,499'
B20001e33='$22,500 to $24,999'
B20001e34='$25,000 to $29,999'
B20001e35='$30,000 to $34,999'
B20001e36='$35,000 to $39,999'
B20001e37='$40,000 to $44,999'
B20001e38='$45,000 to $49,999'
B20001e39='$50,000 to $54,999'
B20001e40='$55,000 to $64,999'
B20001e41='$65,000 to $74,999'
B20001e42='$75,000 to $99,999'
B20001e43='$100,000 or more'
 
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY SEX FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS IN THE PAST 12 MONTHS */
/*Universe:  Population 16 years and over with earnings */
/*Median earnings in the past 12 months (in 2011 inflation-adjusted dollars) -- */
 
B20002e1='Total:'
B20002e2='Male'
B20002e3='Female'
 
/*AGGREGATE EARNINGS IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY SEX BY WORK EXPERIENCE FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS */
/*Universe:  Population 16 years and over with earnings */
 
B20003e1='Aggregate earnings in the past 12 months (in 2011 inflation-adjusted dollars):'
B20003e2='Male:'
B20003e3='Worked full-time, year-round in the past 12 months'
B20003e4='Other'
B20003e5='Female:'
B20003e6='Worked full-time, year-round in the past 12 months'
B20003e7='Other'
 
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER */
/*Universe:  Population 25 years and over with earnings */
 
B20004e1='Total:'
B20004e2='Less than high school graduate'
B20004e3='High school graduate (includes equivalency)'
B20004e4='Some college or associate''s degree'
B20004e5='Bachelor''s degree'
B20004e6='Graduate or professional degree'
B20004e7='Male:'
B20004e8='Less than high school graduate'
B20004e9='High school graduate (includes equivalency)'
B20004e10='Some college or associate''s degree'
B20004e11='Bachelor''s degree'
B20004e12='Graduate or professional degree'
B20004e13='Female:'
B20004e14='Less than high school graduate'
B20004e15='High school graduate (includes equivalency)'
B20004e16='Some college or associate''s degree'
B20004e17='Bachelor''s degree'
B20004e18='Graduate or professional degree'
 
/*SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS BY EARNINGS IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 16 YEARS AND OVER */
/*Universe:  Population 16 years and over */
 
B20005e1='Total:'
B20005e2='Male:'
B20005e3='Worked full-time, year-round in the past 12 months:'
B20005e4='No earnings'
B20005e5='With earnings:'
B20005e6='$1 to $2,499 or loss'
B20005e7='$2,500 to $4,999'
B20005e8='$5,000 to $7,499'
B20005e9='$7,500 to $9,999'
B20005e10='$10,000 to $12,499'
B20005e11='$12,500 to $14,999'
B20005e12='$15,000 to $17,499'
B20005e13='$17,500 to $19,999'
B20005e14='$20,000 to $22,499'
B20005e15='$22,500 to $24,999'
B20005e16='$25,000 to $29,999'
B20005e17='$30,000 to $34,999'
B20005e18='$35,000 to $39,999'
B20005e19='$40,000 to $44,999'
B20005e20='$45,000 to $49,999'
B20005e21='$50,000 to $54,999'
B20005e22='$55,000 to $64,999'
B20005e23='$65,000 to $74,999'
B20005e24='$75,000 to $99,999'
B20005e25='$100,000 or more'
B20005e26='Other:'
B20005e27='No earnings'
B20005e28='With earnings:'
B20005e29='$1 to $2,499 or loss'
B20005e30='$2,500 to $4,999'
B20005e31='$5,000 to $7,499'
B20005e32='$7,500 to $9,999'
B20005e33='$10,000 to $12,499'
B20005e34='$12,500 to $14,999'
B20005e35='$15,000 to $17,499'
B20005e36='$17,500 to $19,999'
B20005e37='$20,000 to $22,499'
B20005e38='$22,500 to $24,999'
B20005e39='$25,000 to $29,999'
B20005e40='$30,000 to $34,999'
B20005e41='$35,000 to $39,999'
B20005e42='$40,000 to $44,999'
B20005e43='$45,000 to $49,999'
B20005e44='$50,000 to $54,999'
B20005e45='$55,000 to $64,999'
B20005e46='$65,000 to $74,999'
B20005e47='$75,000 to $99,999'
B20005e48='$100,000 or more'
B20005e49='Female:'
B20005e50='Worked full-time, year-round in the past 12 months:'
B20005e51='No earnings'
B20005e52='With earnings:'
B20005e53='$1 to $2,499 or loss'
B20005e54='$2,500 to $4,999'
B20005e55='$5,000 to $7,499'
B20005e56='$7,500 to $9,999'
B20005e57='$10,000 to $12,499'
B20005e58='$12,500 to $14,999'
B20005e59='$15,000 to $17,499'
B20005e60='$17,500 to $19,999'
B20005e61='$20,000 to $22,499'
B20005e62='$22,500 to $24,999'
B20005e63='$25,000 to $29,999'
B20005e64='$30,000 to $34,999'
B20005e65='$35,000 to $39,999'
B20005e66='$40,000 to $44,999'
B20005e67='$45,000 to $49,999'
B20005e68='$50,000 to $54,999'
B20005e69='$55,000 to $64,999'
B20005e70='$65,000 to $74,999'
B20005e71='$75,000 to $99,999'
B20005e72='$100,000 or more'
B20005e73='Other:'
B20005e74='No earnings'
B20005e75='With earnings:'
B20005e76='$1 to $2,499 or loss'
B20005e77='$2,500 to $4,999'
B20005e78='$5,000 to $7,499'
B20005e79='$7,500 to $9,999'
B20005e80='$10,000 to $12,499'
B20005e81='$12,500 to $14,999'
B20005e82='$15,000 to $17,499'
B20005e83='$17,500 to $19,999'
B20005e84='$20,000 to $22,499'
B20005e85='$22,500 to $24,999'
B20005e86='$25,000 to $29,999'
B20005e87='$30,000 to $34,999'
B20005e88='$35,000 to $39,999'
B20005e89='$40,000 to $44,999'
B20005e90='$45,000 to $49,999'
B20005e91='$50,000 to $54,999'
B20005e92='$55,000 to $64,999'
B20005e93='$65,000 to $74,999'
B20005e94='$75,000 to $99,999'
B20005e95='$100,000 or more'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B20001e1
B20001e2
B20001e3
B20001e4
B20001e5
B20001e6
B20001e7
B20001e8
B20001e9
B20001e10
B20001e11
B20001e12
B20001e13
B20001e14
B20001e15
B20001e16
B20001e17
B20001e18
B20001e19
B20001e20
B20001e21
B20001e22
B20001e23
B20001e24
B20001e25
B20001e26
B20001e27
B20001e28
B20001e29
B20001e30
B20001e31
B20001e32
B20001e33
B20001e34
B20001e35
B20001e36
B20001e37
B20001e38
B20001e39
B20001e40
B20001e41
B20001e42
B20001e43
 
B20002e1
B20002e2
B20002e3
 
B20003e1
B20003e2
B20003e3
B20003e4
B20003e5
B20003e6
B20003e7
 
B20004e1
B20004e2
B20004e3
B20004e4
B20004e5
B20004e6
B20004e7
B20004e8
B20004e9
B20004e10
B20004e11
B20004e12
B20004e13
B20004e14
B20004e15
B20004e16
B20004e17
B20004e18
 
B20005e1
B20005e2
B20005e3
B20005e4
B20005e5
B20005e6
B20005e7
B20005e8
B20005e9
B20005e10
B20005e11
B20005e12
B20005e13
B20005e14
B20005e15
B20005e16
B20005e17
B20005e18
B20005e19
B20005e20
B20005e21
B20005e22
B20005e23
B20005e24
B20005e25
B20005e26
B20005e27
B20005e28
B20005e29
B20005e30
B20005e31
B20005e32
B20005e33
B20005e34
B20005e35
B20005e36
B20005e37
B20005e38
B20005e39
B20005e40
B20005e41
B20005e42
B20005e43
B20005e44
B20005e45
B20005e46
B20005e47
B20005e48
B20005e49
B20005e50
B20005e51
B20005e52
B20005e53
B20005e54
B20005e55
B20005e56
B20005e57
B20005e58
B20005e59
B20005e60
B20005e61
B20005e62
B20005e63
B20005e64
B20005e65
B20005e66
B20005e67
B20005e68
B20005e69
B20005e70
B20005e71
B20005e72
B20005e73
B20005e74
B20005e75
B20005e76
B20005e77
B20005e78
B20005e79
B20005e80
B20005e81
B20005e82
B20005e83
B20005e84
B20005e85
B20005e86
B20005e87
B20005e88
B20005e89
B20005e90
B20005e91
B20005e92
B20005e93
B20005e94
B20005e95
;
RUN;
TITLE2;
