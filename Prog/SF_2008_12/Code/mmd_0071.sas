TITLE2 "m20125md0071000";
DATA work.SFm0071md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0071000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS BY EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 16 YEARS AND OVER (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population 16 years and over */
 
B20005Im1='Total:'
B20005Im2='Male:'
B20005Im3='Worked full-time, year-round in the past 12 months:'
B20005Im4='No earnings'
B20005Im5='With earnings:'
B20005Im6='$1 to $2,499 or loss'
B20005Im7='$2,500 to $4,999'
B20005Im8='$5,000 to $7,499'
B20005Im9='$7,500 to $9,999'
B20005Im10='$10,000 to $12,499'
B20005Im11='$12,500 to $14,999'
B20005Im12='$15,000 to $17,499'
B20005Im13='$17,500 to $19,999'
B20005Im14='$20,000 to $22,499'
B20005Im15='$22,500 to $24,999'
B20005Im16='$25,000 to $29,999'
B20005Im17='$30,000 to $34,999'
B20005Im18='$35,000 to $39,999'
B20005Im19='$40,000 to $44,999'
B20005Im20='$45,000 to $49,999'
B20005Im21='$50,000 to $54,999'
B20005Im22='$55,000 to $64,999'
B20005Im23='$65,000 to $74,999'
B20005Im24='$75,000 to $99,999'
B20005Im25='$100,000 or more'
B20005Im26='Other:'
B20005Im27='No earnings'
B20005Im28='With earnings:'
B20005Im29='$1 to $2,499 or loss'
B20005Im30='$2,500 to $4,999'
B20005Im31='$5,000 to $7,499'
B20005Im32='$7,500 to $9,999'
B20005Im33='$10,000 to $12,499'
B20005Im34='$12,500 to $14,999'
B20005Im35='$15,000 to $17,499'
B20005Im36='$17,500 to $19,999'
B20005Im37='$20,000 to $22,499'
B20005Im38='$22,500 to $24,999'
B20005Im39='$25,000 to $29,999'
B20005Im40='$30,000 to $34,999'
B20005Im41='$35,000 to $39,999'
B20005Im42='$40,000 to $44,999'
B20005Im43='$45,000 to $49,999'
B20005Im44='$50,000 to $54,999'
B20005Im45='$55,000 to $64,999'
B20005Im46='$65,000 to $74,999'
B20005Im47='$75,000 to $99,999'
B20005Im48='$100,000 or more'
B20005Im49='Female:'
B20005Im50='Worked full-time, year-round in the past 12 months:'
B20005Im51='No earnings'
B20005Im52='With earnings:'
B20005Im53='$1 to $2,499 or loss'
B20005Im54='$2,500 to $4,999'
B20005Im55='$5,000 to $7,499'
B20005Im56='$7,500 to $9,999'
B20005Im57='$10,000 to $12,499'
B20005Im58='$12,500 to $14,999'
B20005Im59='$15,000 to $17,499'
B20005Im60='$17,500 to $19,999'
B20005Im61='$20,000 to $22,499'
B20005Im62='$22,500 to $24,999'
B20005Im63='$25,000 to $29,999'
B20005Im64='$30,000 to $34,999'
B20005Im65='$35,000 to $39,999'
B20005Im66='$40,000 to $44,999'
B20005Im67='$45,000 to $49,999'
B20005Im68='$50,000 to $54,999'
B20005Im69='$55,000 to $64,999'
B20005Im70='$65,000 to $74,999'
B20005Im71='$75,000 to $99,999'
B20005Im72='$100,000 or more'
B20005Im73='Other:'
B20005Im74='No earnings'
B20005Im75='With earnings:'
B20005Im76='$1 to $2,499 or loss'
B20005Im77='$2,500 to $4,999'
B20005Im78='$5,000 to $7,499'
B20005Im79='$7,500 to $9,999'
B20005Im80='$10,000 to $12,499'
B20005Im81='$12,500 to $14,999'
B20005Im82='$15,000 to $17,499'
B20005Im83='$17,500 to $19,999'
B20005Im84='$20,000 to $22,499'
B20005Im85='$22,500 to $24,999'
B20005Im86='$25,000 to $29,999'
B20005Im87='$30,000 to $34,999'
B20005Im88='$35,000 to $39,999'
B20005Im89='$40,000 to $44,999'
B20005Im90='$45,000 to $49,999'
B20005Im91='$50,000 to $54,999'
B20005Im92='$55,000 to $64,999'
B20005Im93='$65,000 to $74,999'
B20005Im94='$75,000 to $99,999'
B20005Im95='$100,000 or more'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS IN THE PAST 12 MONTHS */
/*Universe:  Population 16 years and over with earnings */
/*Median earnings in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B20017m1='Total (dollars):'
/*Male -- */
B20017m2='Total (dollars)'
B20017m3='Worked full-time, year-round in the past 12 months (dollars)'
B20017m4='Other (dollars)'
/*Female -- */
B20017m5='Total (dollars)'
B20017m6='Worked full-time, year-round in the past 12 months (dollars)'
B20017m7='Other (dollars)'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS IN THE PAST 12 MONTHS (WHI */
/*Universe:  White alone population 16 years and over with earnings in the past 12 months */
/*Median earnings in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B20017Am1='Total:'
/*Male -- */
B20017Am2='Total'
B20017Am3='Worked full-time, year-round in the past 12 months'
B20017Am4='Other'
/*Female -- */
B20017Am5='Total'
B20017Am6='Worked full-time, year-round in the past 12 months'
B20017Am7='Other'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS IN THE PAST 12 MONTHS (BLA */
/*Universe:  Black or African American alone population 16 years and over with earnings in the past 12 months */
/*Median earnings in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B20017Bm1='Total:'
/*Male -- */
B20017Bm2='Total'
B20017Bm3='Worked full-time, year-round in the past 12 months'
B20017Bm4='Other'
/*Female -- */
B20017Bm5='Total'
B20017Bm6='Worked full-time, year-round in the past 12 months'
B20017Bm7='Other'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS IN THE PAST 12 MONTHS (AME */
/*Universe:  American Indian and Alaska Native alone population 16 years and over with earnings in the past 12 months */
/*Median earnings in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B20017Cm1='Total:'
/*Male -- */
B20017Cm2='Total'
B20017Cm3='Worked full-time, year-round in the past 12 months'
B20017Cm4='Other'
/*Female -- */
B20017Cm5='Total'
B20017Cm6='Worked full-time, year-round in the past 12 months'
B20017Cm7='Other'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS IN THE PAST 12 MONTHS (ASI */
/*Universe:  Asian alone population 16 years and over with earnings in the past 12 months */
/*Median earnings in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B20017Dm1='Total:'
/*Male -- */
B20017Dm2='Total'
B20017Dm3='Worked full-time, year-round in the past 12 months'
B20017Dm4='Other'
/*Female -- */
B20017Dm5='Total'
B20017Dm6='Worked full-time, year-round in the past 12 months'
B20017Dm7='Other'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS IN THE PAST 12 MONTHS (NAT */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 16 years and over with earnings in the past 12 months */
/*Median earnings in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B20017Em1='Total:'
/*Male -- */
B20017Em2='Total'
B20017Em3='Worked full-time, year-round in the past 12 months'
B20017Em4='Other'
/*Female -- */
B20017Em5='Total'
B20017Em6='Worked full-time, year-round in the past 12 months'
B20017Em7='Other'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS IN THE PAST 12 MONTHS (SOM */
/*Universe:  Some other race alone population 16 years and over with earnings in the past 12 months */
/*Median earnings in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B20017Fm1='Total:'
/*Male -- */
B20017Fm2='Total'
B20017Fm3='Worked full-time, year-round in the past 12 months'
B20017Fm4='Other'
/*Female -- */
B20017Fm5='Total'
B20017Fm6='Worked full-time, year-round in the past 12 months'
B20017Fm7='Other'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS IN THE PAST 12 MONTHS (TWO */
/*Universe:  Two or more races population 16 years and over with earnings in the past 12 months */
/*Median earnings in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B20017Gm1='Total:'
/*Male -- */
B20017Gm2='Total'
B20017Gm3='Worked full-time, year-round in the past 12 months'
B20017Gm4='Other'
/*Female -- */
B20017Gm5='Total'
B20017Gm6='Worked full-time, year-round in the past 12 months'
B20017Gm7='Other'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS IN THE PAST 12 MONTHS (WHI */
/*Universe:  White alone, not Hispanic or Latino population 16 years and over with earnings in the past 12 months */
/*Median earnings in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B20017Hm1='Total:'
/*Male -- */
B20017Hm2='Total'
B20017Hm3='Worked full-time, year-round in the past 12 months'
B20017Hm4='Other'
/*Female -- */
B20017Hm5='Total'
B20017Hm6='Worked full-time, year-round in the past 12 months'
B20017Hm7='Other'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population 16 years and over with earnings in the past 12 months */
/*Median earnings in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B20017Im1='Total:'
/*Male -- */
B20017Im2='Total'
B20017Im3='Worked full-time, year-round in the past 12 months'
B20017Im4='Other'
/*Female -- */
B20017Im5='Total'
B20017Im6='Worked full-time, year-round in the past 12 months'
B20017Im7='Other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B20005Im1
B20005Im2
B20005Im3
B20005Im4
B20005Im5
B20005Im6
B20005Im7
B20005Im8
B20005Im9
B20005Im10
B20005Im11
B20005Im12
B20005Im13
B20005Im14
B20005Im15
B20005Im16
B20005Im17
B20005Im18
B20005Im19
B20005Im20
B20005Im21
B20005Im22
B20005Im23
B20005Im24
B20005Im25
B20005Im26
B20005Im27
B20005Im28
B20005Im29
B20005Im30
B20005Im31
B20005Im32
B20005Im33
B20005Im34
B20005Im35
B20005Im36
B20005Im37
B20005Im38
B20005Im39
B20005Im40
B20005Im41
B20005Im42
B20005Im43
B20005Im44
B20005Im45
B20005Im46
B20005Im47
B20005Im48
B20005Im49
B20005Im50
B20005Im51
B20005Im52
B20005Im53
B20005Im54
B20005Im55
B20005Im56
B20005Im57
B20005Im58
B20005Im59
B20005Im60
B20005Im61
B20005Im62
B20005Im63
B20005Im64
B20005Im65
B20005Im66
B20005Im67
B20005Im68
B20005Im69
B20005Im70
B20005Im71
B20005Im72
B20005Im73
B20005Im74
B20005Im75
B20005Im76
B20005Im77
B20005Im78
B20005Im79
B20005Im80
B20005Im81
B20005Im82
B20005Im83
B20005Im84
B20005Im85
B20005Im86
B20005Im87
B20005Im88
B20005Im89
B20005Im90
B20005Im91
B20005Im92
B20005Im93
B20005Im94
B20005Im95
 
B20017m1
B20017m2
B20017m3
B20017m4
B20017m5
B20017m6
B20017m7
 
B20017Am1
B20017Am2
B20017Am3
B20017Am4
B20017Am5
B20017Am6
B20017Am7
 
B20017Bm1
B20017Bm2
B20017Bm3
B20017Bm4
B20017Bm5
B20017Bm6
B20017Bm7
 
B20017Cm1
B20017Cm2
B20017Cm3
B20017Cm4
B20017Cm5
B20017Cm6
B20017Cm7
 
B20017Dm1
B20017Dm2
B20017Dm3
B20017Dm4
B20017Dm5
B20017Dm6
B20017Dm7
 
B20017Em1
B20017Em2
B20017Em3
B20017Em4
B20017Em5
B20017Em6
B20017Em7
 
B20017Fm1
B20017Fm2
B20017Fm3
B20017Fm4
B20017Fm5
B20017Fm6
B20017Fm7
 
B20017Gm1
B20017Gm2
B20017Gm3
B20017Gm4
B20017Gm5
B20017Gm6
B20017Gm7
 
B20017Hm1
B20017Hm2
B20017Hm3
B20017Hm4
B20017Hm5
B20017Hm6
B20017Hm7
 
B20017Im1
B20017Im2
B20017Im3
B20017Im4
B20017Im5
B20017Im6
B20017Im7
;
RUN;
TITLE2;
