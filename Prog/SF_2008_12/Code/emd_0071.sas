TITLE2 "e20125md0071000";
DATA work.SFe0071md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0071000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS BY EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 16 YEARS AND OVER (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population 16 years and over */
 
B20005Ie1='Total:'
B20005Ie2='Male:'
B20005Ie3='Worked full-time, year-round in the past 12 months:'
B20005Ie4='No earnings'
B20005Ie5='With earnings:'
B20005Ie6='$1 to $2,499 or loss'
B20005Ie7='$2,500 to $4,999'
B20005Ie8='$5,000 to $7,499'
B20005Ie9='$7,500 to $9,999'
B20005Ie10='$10,000 to $12,499'
B20005Ie11='$12,500 to $14,999'
B20005Ie12='$15,000 to $17,499'
B20005Ie13='$17,500 to $19,999'
B20005Ie14='$20,000 to $22,499'
B20005Ie15='$22,500 to $24,999'
B20005Ie16='$25,000 to $29,999'
B20005Ie17='$30,000 to $34,999'
B20005Ie18='$35,000 to $39,999'
B20005Ie19='$40,000 to $44,999'
B20005Ie20='$45,000 to $49,999'
B20005Ie21='$50,000 to $54,999'
B20005Ie22='$55,000 to $64,999'
B20005Ie23='$65,000 to $74,999'
B20005Ie24='$75,000 to $99,999'
B20005Ie25='$100,000 or more'
B20005Ie26='Other:'
B20005Ie27='No earnings'
B20005Ie28='With earnings:'
B20005Ie29='$1 to $2,499 or loss'
B20005Ie30='$2,500 to $4,999'
B20005Ie31='$5,000 to $7,499'
B20005Ie32='$7,500 to $9,999'
B20005Ie33='$10,000 to $12,499'
B20005Ie34='$12,500 to $14,999'
B20005Ie35='$15,000 to $17,499'
B20005Ie36='$17,500 to $19,999'
B20005Ie37='$20,000 to $22,499'
B20005Ie38='$22,500 to $24,999'
B20005Ie39='$25,000 to $29,999'
B20005Ie40='$30,000 to $34,999'
B20005Ie41='$35,000 to $39,999'
B20005Ie42='$40,000 to $44,999'
B20005Ie43='$45,000 to $49,999'
B20005Ie44='$50,000 to $54,999'
B20005Ie45='$55,000 to $64,999'
B20005Ie46='$65,000 to $74,999'
B20005Ie47='$75,000 to $99,999'
B20005Ie48='$100,000 or more'
B20005Ie49='Female:'
B20005Ie50='Worked full-time, year-round in the past 12 months:'
B20005Ie51='No earnings'
B20005Ie52='With earnings:'
B20005Ie53='$1 to $2,499 or loss'
B20005Ie54='$2,500 to $4,999'
B20005Ie55='$5,000 to $7,499'
B20005Ie56='$7,500 to $9,999'
B20005Ie57='$10,000 to $12,499'
B20005Ie58='$12,500 to $14,999'
B20005Ie59='$15,000 to $17,499'
B20005Ie60='$17,500 to $19,999'
B20005Ie61='$20,000 to $22,499'
B20005Ie62='$22,500 to $24,999'
B20005Ie63='$25,000 to $29,999'
B20005Ie64='$30,000 to $34,999'
B20005Ie65='$35,000 to $39,999'
B20005Ie66='$40,000 to $44,999'
B20005Ie67='$45,000 to $49,999'
B20005Ie68='$50,000 to $54,999'
B20005Ie69='$55,000 to $64,999'
B20005Ie70='$65,000 to $74,999'
B20005Ie71='$75,000 to $99,999'
B20005Ie72='$100,000 or more'
B20005Ie73='Other:'
B20005Ie74='No earnings'
B20005Ie75='With earnings:'
B20005Ie76='$1 to $2,499 or loss'
B20005Ie77='$2,500 to $4,999'
B20005Ie78='$5,000 to $7,499'
B20005Ie79='$7,500 to $9,999'
B20005Ie80='$10,000 to $12,499'
B20005Ie81='$12,500 to $14,999'
B20005Ie82='$15,000 to $17,499'
B20005Ie83='$17,500 to $19,999'
B20005Ie84='$20,000 to $22,499'
B20005Ie85='$22,500 to $24,999'
B20005Ie86='$25,000 to $29,999'
B20005Ie87='$30,000 to $34,999'
B20005Ie88='$35,000 to $39,999'
B20005Ie89='$40,000 to $44,999'
B20005Ie90='$45,000 to $49,999'
B20005Ie91='$50,000 to $54,999'
B20005Ie92='$55,000 to $64,999'
B20005Ie93='$65,000 to $74,999'
B20005Ie94='$75,000 to $99,999'
B20005Ie95='$100,000 or more'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS IN THE PAST 12 MONTHS */
/*Universe:  Population 16 years and over with earnings */
/*Median earnings in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B20017e1='Total (dollars):'
/*Male -- */
B20017e2='Total (dollars)'
B20017e3='Worked full-time, year-round in the past 12 months (dollars)'
B20017e4='Other (dollars)'
/*Female -- */
B20017e5='Total (dollars)'
B20017e6='Worked full-time, year-round in the past 12 months (dollars)'
B20017e7='Other (dollars)'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS IN THE PAST 12 MONTHS (WHI */
/*Universe:  White alone population 16 years and over with earnings in the past 12 months */
/*Median earnings in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B20017Ae1='Total:'
/*Male -- */
B20017Ae2='Total'
B20017Ae3='Worked full-time, year-round in the past 12 months'
B20017Ae4='Other'
/*Female -- */
B20017Ae5='Total'
B20017Ae6='Worked full-time, year-round in the past 12 months'
B20017Ae7='Other'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS IN THE PAST 12 MONTHS (BLA */
/*Universe:  Black or African American alone population 16 years and over with earnings in the past 12 months */
/*Median earnings in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B20017Be1='Total:'
/*Male -- */
B20017Be2='Total'
B20017Be3='Worked full-time, year-round in the past 12 months'
B20017Be4='Other'
/*Female -- */
B20017Be5='Total'
B20017Be6='Worked full-time, year-round in the past 12 months'
B20017Be7='Other'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS IN THE PAST 12 MONTHS (AME */
/*Universe:  American Indian and Alaska Native alone population 16 years and over with earnings in the past 12 months */
/*Median earnings in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B20017Ce1='Total:'
/*Male -- */
B20017Ce2='Total'
B20017Ce3='Worked full-time, year-round in the past 12 months'
B20017Ce4='Other'
/*Female -- */
B20017Ce5='Total'
B20017Ce6='Worked full-time, year-round in the past 12 months'
B20017Ce7='Other'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS IN THE PAST 12 MONTHS (ASI */
/*Universe:  Asian alone population 16 years and over with earnings in the past 12 months */
/*Median earnings in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B20017De1='Total:'
/*Male -- */
B20017De2='Total'
B20017De3='Worked full-time, year-round in the past 12 months'
B20017De4='Other'
/*Female -- */
B20017De5='Total'
B20017De6='Worked full-time, year-round in the past 12 months'
B20017De7='Other'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS IN THE PAST 12 MONTHS (NAT */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 16 years and over with earnings in the past 12 months */
/*Median earnings in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B20017Ee1='Total:'
/*Male -- */
B20017Ee2='Total'
B20017Ee3='Worked full-time, year-round in the past 12 months'
B20017Ee4='Other'
/*Female -- */
B20017Ee5='Total'
B20017Ee6='Worked full-time, year-round in the past 12 months'
B20017Ee7='Other'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS IN THE PAST 12 MONTHS (SOM */
/*Universe:  Some other race alone population 16 years and over with earnings in the past 12 months */
/*Median earnings in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B20017Fe1='Total:'
/*Male -- */
B20017Fe2='Total'
B20017Fe3='Worked full-time, year-round in the past 12 months'
B20017Fe4='Other'
/*Female -- */
B20017Fe5='Total'
B20017Fe6='Worked full-time, year-round in the past 12 months'
B20017Fe7='Other'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS IN THE PAST 12 MONTHS (TWO */
/*Universe:  Two or more races population 16 years and over with earnings in the past 12 months */
/*Median earnings in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B20017Ge1='Total:'
/*Male -- */
B20017Ge2='Total'
B20017Ge3='Worked full-time, year-round in the past 12 months'
B20017Ge4='Other'
/*Female -- */
B20017Ge5='Total'
B20017Ge6='Worked full-time, year-round in the past 12 months'
B20017Ge7='Other'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS IN THE PAST 12 MONTHS (WHI */
/*Universe:  White alone, not Hispanic or Latino population 16 years and over with earnings in the past 12 months */
/*Median earnings in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B20017He1='Total:'
/*Male -- */
B20017He2='Total'
B20017He3='Worked full-time, year-round in the past 12 months'
B20017He4='Other'
/*Female -- */
B20017He5='Total'
B20017He6='Worked full-time, year-round in the past 12 months'
B20017He7='Other'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER WITH EARNINGS (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population 16 years and over with earnings in the past 12 months */
/*Median earnings in the past 12 months (in 2012 inflation-adjusted dollars) -- */
 
B20017Ie1='Total:'
/*Male -- */
B20017Ie2='Total'
B20017Ie3='Worked full-time, year-round in the past 12 months'
B20017Ie4='Other'
/*Female -- */
B20017Ie5='Total'
B20017Ie6='Worked full-time, year-round in the past 12 months'
B20017Ie7='Other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B20005Ie1
B20005Ie2
B20005Ie3
B20005Ie4
B20005Ie5
B20005Ie6
B20005Ie7
B20005Ie8
B20005Ie9
B20005Ie10
B20005Ie11
B20005Ie12
B20005Ie13
B20005Ie14
B20005Ie15
B20005Ie16
B20005Ie17
B20005Ie18
B20005Ie19
B20005Ie20
B20005Ie21
B20005Ie22
B20005Ie23
B20005Ie24
B20005Ie25
B20005Ie26
B20005Ie27
B20005Ie28
B20005Ie29
B20005Ie30
B20005Ie31
B20005Ie32
B20005Ie33
B20005Ie34
B20005Ie35
B20005Ie36
B20005Ie37
B20005Ie38
B20005Ie39
B20005Ie40
B20005Ie41
B20005Ie42
B20005Ie43
B20005Ie44
B20005Ie45
B20005Ie46
B20005Ie47
B20005Ie48
B20005Ie49
B20005Ie50
B20005Ie51
B20005Ie52
B20005Ie53
B20005Ie54
B20005Ie55
B20005Ie56
B20005Ie57
B20005Ie58
B20005Ie59
B20005Ie60
B20005Ie61
B20005Ie62
B20005Ie63
B20005Ie64
B20005Ie65
B20005Ie66
B20005Ie67
B20005Ie68
B20005Ie69
B20005Ie70
B20005Ie71
B20005Ie72
B20005Ie73
B20005Ie74
B20005Ie75
B20005Ie76
B20005Ie77
B20005Ie78
B20005Ie79
B20005Ie80
B20005Ie81
B20005Ie82
B20005Ie83
B20005Ie84
B20005Ie85
B20005Ie86
B20005Ie87
B20005Ie88
B20005Ie89
B20005Ie90
B20005Ie91
B20005Ie92
B20005Ie93
B20005Ie94
B20005Ie95
 
B20017e1
B20017e2
B20017e3
B20017e4
B20017e5
B20017e6
B20017e7
 
B20017Ae1
B20017Ae2
B20017Ae3
B20017Ae4
B20017Ae5
B20017Ae6
B20017Ae7
 
B20017Be1
B20017Be2
B20017Be3
B20017Be4
B20017Be5
B20017Be6
B20017Be7
 
B20017Ce1
B20017Ce2
B20017Ce3
B20017Ce4
B20017Ce5
B20017Ce6
B20017Ce7
 
B20017De1
B20017De2
B20017De3
B20017De4
B20017De5
B20017De6
B20017De7
 
B20017Ee1
B20017Ee2
B20017Ee3
B20017Ee4
B20017Ee5
B20017Ee6
B20017Ee7
 
B20017Fe1
B20017Fe2
B20017Fe3
B20017Fe4
B20017Fe5
B20017Fe6
B20017Fe7
 
B20017Ge1
B20017Ge2
B20017Ge3
B20017Ge4
B20017Ge5
B20017Ge6
B20017Ge7
 
B20017He1
B20017He2
B20017He3
B20017He4
B20017He5
B20017He6
B20017He7
 
B20017Ie1
B20017Ie2
B20017Ie3
B20017Ie4
B20017Ie5
B20017Ie6
B20017Ie7
;
RUN;
TITLE2;
