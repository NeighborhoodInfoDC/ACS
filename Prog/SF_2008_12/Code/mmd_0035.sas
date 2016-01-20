TITLE2 "m20125md0035000";
DATA work.SFm0035md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0035000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*GRANDCHILDREN UNDER 18 YEARS LIVING WITH A GRANDPARENT HOUSEHOLDER BY AGE OF GRANDCHILD */
/*Universe:  Grandchildren under 18 living with grandparent householder */
 
B10001m1='Total:'
B10001m2='Under 6 years'
B10001m3='6 to 11 years'
B10001m4='12 to 17 years'
/*GRANDCHILDREN UNDER 18 YEARS LIVING WITH A GRANDPARENT HOUSEHOLDER BY GRANDPARENT RESPONSIBILITY AND PRESENCE OF PARENT */
/*Universe:  Grandchildren under 18 living with grandparent householder */
 
B10002m1='Total:'
B10002m2='Grandparent householder responsible for own grandchildren under 18 years:'
B10002m3='Parent present'
B10002m4='No parent present'
B10002m5='Grandparent householder not responsible for own grandchildren under 18 years'
/*MEDIAN FAMILY INCOME FOR FAMILIES WITH GRANDPARENT HOUSEHOLDERS AND/OR SPOUSES LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND PRESENCE OF PARENT OF GRANDCHILD */
/*Universe: Families with grandparent householders and/or spouses living with grandchildren */
/*Median family income in the past 12 months-- */
 
B10010m1='Total:'
B10010m2='Grandparent householder and/or spouse responsible for grandchildren under 18 years (dollars)'
B10010m3='Grandparent householder and/or spouse responsible for grandchildren under 18 years and no parent present (dollars)'
/*GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN BY LENGTH OF TIME RESPONSIBLE FOR OWN GRANDCHILDREN FOR THE POPULATION 30 YEARS AND OVER */
/*Universe:  Population 30 years and over */
 
B10050m1='Total:'
B10050m2='Living with own grandchildren under 18 years:'
B10050m3='Grandparent responsible for own grandchildren under 18 years:'
B10050m4='Grandparent responsible less than 6 months'
B10050m5='Grandparent responsible 6 to 11 months'
B10050m6='Grandparent responsible 1 or 2 years'
B10050m7='Grandparent responsible 3 or 4 years'
B10050m8='Grandparent responsible 5 years or more'
B10050m9='Grandparent not responsible for own grandchildren under 18 years'
B10050m10='Not living with own grandchildren under 18 years'
/*GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN BY PRESENCE OF PARENT OF GRANDCHILDREN AND AGE OF GRANDPARENT */
/*Universe:  Grandparents living with own grandchildren under 18 years */
 
B10051m1='Total:'
B10051m2='Grandparent responsible for own grandchildren under 18 years:'
B10051m3='Householder or spouse with no parent of grandchildren present:'
B10051m4='30 to 59 years'
B10051m5='60 years and over'
B10051m6='Other grandparents:'
B10051m7='30 to 59 years'
B10051m8='60 years and over'
B10051m9='Grandparent not responsible for own grandchildren under 18 years:'
B10051m10='30 to 59 years'
B10051m11='60 years and over'
/*GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT (WHITE ALONE) */
/*Universe:  Grandparents (White alone) living with own grandchildren under 18 years */
 
B10051Am1='Total:'
B10051Am2='Grandparent responsible for own grandchildren under 18 years:'
B10051Am3='30 to 59 years'
B10051Am4='60 years and over'
B10051Am5='Grandparent not responsible for own grandchildren under 18 years:'
B10051Am6='30 to 59 years'
B10051Am7='60 years and over'
/*GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Grandparents (Black or African American alone) living with own grandchildren under 18 years */
 
B10051Bm1='Total:'
B10051Bm2='Grandparent responsible for own grandchildren under 18 years:'
B10051Bm3='30 to 59 years'
B10051Bm4='60 years and over'
B10051Bm5='Grandparent not responsible for own grandchildren under 18 years:'
B10051Bm6='30 to 59 years'
B10051Bm7='60 years and over'
/*GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  Grandparents (American Indian and Alaska Native alone) living with own grandchildren under 18 years */
 
B10051Cm1='Total:'
B10051Cm2='Grandparent responsible for own grandchildren under 18 years:'
B10051Cm3='30 to 59 years'
B10051Cm4='60 years and over'
B10051Cm5='Grandparent not responsible for own grandchildren under 18 years:'
B10051Cm6='30 to 59 years'
B10051Cm7='60 years and over'
/*GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT (ASIAN ALONE) */
/*Universe:  Grandparents (Asian alone) living with own grandchildren under 18 years */
 
B10051Dm1='Total:'
B10051Dm2='Grandparent responsible for own grandchildren under 18 years:'
B10051Dm3='30 to 59 years'
B10051Dm4='60 years and over'
B10051Dm5='Grandparent not responsible for own grandchildren under 18 years:'
B10051Dm6='30 to 59 years'
B10051Dm7='60 years and over'
/*GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Grandparents (Native Hawaiian and Other Pacific Islander alone) living with own grandchildren under 18 years */
 
B10051Em1='Total:'
B10051Em2='Grandparent responsible for own grandchildren under 18 years:'
B10051Em3='30 to 59 years'
B10051Em4='60 years and over'
B10051Em5='Grandparent not responsible for own grandchildren under 18 years:'
B10051Em6='30 to 59 years'
B10051Em7='60 years and over'
/*GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT (SOME OTHER RACE ALONE) */
/*Universe:  Grandparents (Some other race alone) living with own grandchildren under 18 years */
 
B10051Fm1='Total:'
B10051Fm2='Grandparent responsible for own grandchildren under 18 years:'
B10051Fm3='30 to 59 years'
B10051Fm4='60 years and over'
B10051Fm5='Grandparent not responsible for own grandchildren under 18 years:'
B10051Fm6='30 to 59 years'
B10051Fm7='60 years and over'
/*GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT (TWO OR MORE RACES) */
/*Universe:  Grandparents (Two or more races) living with own grandchildren under 18 years */
 
B10051Gm1='Total:'
B10051Gm2='Grandparent responsible for own grandchildren under 18 years:'
B10051Gm3='30 to 59 years'
B10051Gm4='60 years and over'
B10051Gm5='Grandparent not responsible for own grandchildren under 18 years:'
B10051Gm6='30 to 59 years'
B10051Gm7='60 years and over'
/*GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  Grandparents (White alone, not Hispanic or Latino) living with own grandchildren under 18 years */
 
B10051Hm1='Total:'
B10051Hm2='Grandparent responsible for own grandchildren under 18 years:'
B10051Hm3='30 to 59 years'
B10051Hm4='60 years and over'
B10051Hm5='Grandparent not responsible for own grandchildren under 18 years:'
B10051Hm6='30 to 59 years'
B10051Hm7='60 years and over'
/*GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT (HISPANIC OR LATINO) */
/*Universe:  Grandparents (Hispanic or Latino) living with own grandchildren under 18 years */
 
B10051Im1='Total:'
B10051Im2='Grandparent responsible for own grandchildren under 18 years:'
B10051Im3='30 to 59 years'
B10051Im4='60 years and over'
B10051Im5='Grandparent not responsible for own grandchildren under 18 years:'
B10051Im6='30 to 59 years'
B10051Im7='60 years and over'
/*DISABILITY STATUS OF GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT */
/*Universe:  Civilian grandparents living with own grandchildren under 18 years */
 
B10052m1='Total:'
B10052m2='With any disability:'
B10052m3='Grandparent responsible for own grandchildren under 18 years:'
B10052m4='30 to 59 years'
B10052m5='60 years and over'
B10052m6='Grandparent not responsible for own grandchildren under 18 years'
B10052m7='No disability:'
B10052m8='Grandparent responsible for own grandchildren under 18 years:'
B10052m9='30 to 59 years'
B10052m10='60 years and over'
B10052m11='Grandparent not responsible for own grandchildren under 18 years'
/*NATIVITY BY GRANDPARENTS RESPONSIBLE FOR OWN GRANDCHILDREN UNDER 18 YEARS BY AGE OF GRANDPARENT */
/*Universe:  Grandparents living with own grandchildren under 18 years */
 
B10053m1='Total:'
B10053m2='Native:'
B10053m3='Grandparent responsible for own grandchildren under 18 years:'
B10053m4='30 to 59 years'
B10053m5='60 years and over'
B10053m6='Grandparent not responsible for own grandchildren under 18 years'
B10053m7='Foreign-born:'
B10053m8='Grandparent responsible for own grandchildren under 18 years:'
B10053m9='30 to 59 years'
B10053m10='60 years and over'
B10053m11='Grandparent not responsible for own grandchildren under 18 years'
/*LANGUAGE AND ABILITY TO SPEAK ENGLISH OF GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT */
/*Universe:  Grandparents living with own grandchildren under 18 years */
 
B10054m1='Total:'
B10054m2='Speak only English:'
B10054m3='Grandparent responsible for own grandchildren under 18 years:'
B10054m4='30 to 59 years'
B10054m5='60 years and over'
B10054m6='Grandparent not responsible for own grandchildren under 18 years'
B10054m7='Speak other language:'
B10054m8='Speak English  “very well” :'
B10054m9='Grandparent responsible for own grandchildren under 18 years:'
B10054m10='30 to 59 years'
B10054m11='60 years and over'
B10054m12='Grandparent not responsible for own grandchildren under 18 years'
B10054m13='Speak English less than “very well”:'
B10054m14='Grandparent responsible for own grandchildren under 18 years:'
B10054m15='30 to 59 years'
B10054m16='60 years and over'
B10054m17='Grandparent not responsible for own grandchildren under 18 years'
/*SEX OF GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT */
/*Universe:  Grandparents living with own grandchildren under 18 years */
 
B10056m1='Total:'
B10056m2='Male:'
B10056m3='Grandparent responsible for own grandchildren under 18 years:'
B10056m4='30 to 59 years'
B10056m5='60 years and over'
B10056m6='Grandparent not responsible for own grandchildren under 18 years'
B10056m7='Female:'
B10056m8='Grandparent responsible for own grandchildren under 18 years:'
B10056m9='30 to 59 years'
B10056m10='60 years and over'
B10056m11='Grandparent not responsible for own grandchildren under 18 years'
/*MARITAL STATUS BY GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT */
/*Universe:  Grandparents living with own grandchildren under 18 years */
 
B10057m1='Total:'
B10057m2='Now married (including separated and spouse absent):'
B10057m3='Grandparent responsible for own grandchildren under 18 years:'
B10057m4='30 to 59 years'
B10057m5='60 years and over'
B10057m6='Grandparent not responsible for own grandchildren under 18 years'
B10057m7='Unmarried (never married, widowed, and divorced):'
B10057m8='Grandparent responsible for own grandchildren under 18 years:'
B10057m9='30 to 59 years'
B10057m10='60 years and over'
B10057m11='Grandparent not responsible for own grandchildren under 18 years'
/*EMPLOYMENT STATUS OF GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT */
/*Universe:  Grandparents living with own grandchildren under 18 years */
 
B10058m1='Total:'
B10058m2='In labor force:'
B10058m3='Grandparent responsible for own grandchildren under 18 years:'
B10058m4='30 to 59 years'
B10058m5='60 years and over'
B10058m6='Grandparent not responsible for own grandchildren under 18 years'
B10058m7='Not in labor force:'
B10058m8='Grandparent responsible for own grandchildren under 18 years:'
B10058m9='30 to 59 years'
B10058m10='60 years and over'
B10058m11='Grandparent not responsible for own grandchildren under 18 years'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT */
/*Universe:  Grandparents living with own grandchildren under 18 years for whom poverty status is determined */
 
B10059m1='Total:'
B10059m2='Income in the past 12 months below poverty level:'
B10059m3='Grandparent responsible for own grandchildren under 18 years:'
B10059m4='30 to 59 years'
B10059m5='60 years and over'
B10059m6='Grandparent not responsible for own grandchildren under 18 years'
B10059m7='Income in the past 12 months at or above poverty level:'
B10059m8='Grandparent responsible for own grandchildren under 18 years:'
B10059m9='30 to 59 years'
B10059m10='60 years and over'
B10059m11='Grandparent not responsible for own grandchildren under 18 years'
/*UNITS IN STRUCTURE OF GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT */
/*Universe:  Grandparents living with own grandchildren under 18 years in households */
 
B10060m1='Total:'
B10060m2='In 1-unit structures:'
B10060m3='Grandparent responsible for own grandchildren under 18 years:'
B10060m4='30 to 59 years'
B10060m5='60 years and over'
B10060m6='Grandparent not responsible for own grandchildren under 18 years'
B10060m7='In 2-or-more-unit structures:'
B10060m8='Grandparent responsible for own grandchildren under 18 years:'
B10060m9='30 to 59 years'
B10060m10='60 years and over'
B10060m11='Grandparent not responsible for own grandchildren under 18 years'
B10060m12='In mobile homes and all other types of units:'
B10060m13='Grandparent responsible for own grandchildren under 18 years:'
B10060m14='30 to 59 years'
B10060m15='60 years and over'
B10060m16='Grandparent not responsible for own grandchildren under 18 years'
/*TENURE OF GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT */
/*Universe:  Grandparents living with own grandchildren under 18 years in households */
 
B10061m1='Total:'
B10061m2='Living in owner-occupied housing unit:'
B10061m3='Grandparent responsible for own grandchildren under 18 years:'
B10061m4='30 to 59 years'
B10061m5='60 years and over'
B10061m6='Grandparent not responsible for own grandchildren under 18 years'
B10061m7='Living in renter-occupied housing unit:'
B10061m8='Grandparent responsible for own grandchildren under 18 years:'
B10061m9='30 to 59 years'
B10061m10='60 years and over'
B10061m11='Grandparent not responsible for own grandchildren under 18 years'
/*HOUSEHOLDS WITH GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND PRESENCE OF PARENT OF GRANDCHILDREN */
/*Universe:  Households */
 
B10063m1='Total:'
B10063m2='Household with grandparents living with grandchildren:'
B10063m3='Household with grandparent responsible for own grandchildren under 18 years:'
B10063m4='Householder or spouse with no parent of grandchildren present'
B10063m5='Other grandparents'
B10063m6='Household with grandparent not responsible for own grandchildren under 18 years'
B10063m7='Household without grandparents living with grandchildren'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B10001m1
B10001m2
B10001m3
B10001m4
 
B10002m1
B10002m2
B10002m3
B10002m4
B10002m5
 
B10010m1
B10010m2
B10010m3
 
B10050m1
B10050m2
B10050m3
B10050m4
B10050m5
B10050m6
B10050m7
B10050m8
B10050m9
B10050m10
 
B10051m1
B10051m2
B10051m3
B10051m4
B10051m5
B10051m6
B10051m7
B10051m8
B10051m9
B10051m10
B10051m11
 
B10051Am1
B10051Am2
B10051Am3
B10051Am4
B10051Am5
B10051Am6
B10051Am7
 
B10051Bm1
B10051Bm2
B10051Bm3
B10051Bm4
B10051Bm5
B10051Bm6
B10051Bm7
 
B10051Cm1
B10051Cm2
B10051Cm3
B10051Cm4
B10051Cm5
B10051Cm6
B10051Cm7
 
B10051Dm1
B10051Dm2
B10051Dm3
B10051Dm4
B10051Dm5
B10051Dm6
B10051Dm7
 
B10051Em1
B10051Em2
B10051Em3
B10051Em4
B10051Em5
B10051Em6
B10051Em7
 
B10051Fm1
B10051Fm2
B10051Fm3
B10051Fm4
B10051Fm5
B10051Fm6
B10051Fm7
 
B10051Gm1
B10051Gm2
B10051Gm3
B10051Gm4
B10051Gm5
B10051Gm6
B10051Gm7
 
B10051Hm1
B10051Hm2
B10051Hm3
B10051Hm4
B10051Hm5
B10051Hm6
B10051Hm7
 
B10051Im1
B10051Im2
B10051Im3
B10051Im4
B10051Im5
B10051Im6
B10051Im7
 
B10052m1
B10052m2
B10052m3
B10052m4
B10052m5
B10052m6
B10052m7
B10052m8
B10052m9
B10052m10
B10052m11
 
B10053m1
B10053m2
B10053m3
B10053m4
B10053m5
B10053m6
B10053m7
B10053m8
B10053m9
B10053m10
B10053m11
 
B10054m1
B10054m2
B10054m3
B10054m4
B10054m5
B10054m6
B10054m7
B10054m8
B10054m9
B10054m10
B10054m11
B10054m12
B10054m13
B10054m14
B10054m15
B10054m16
B10054m17
 
B10056m1
B10056m2
B10056m3
B10056m4
B10056m5
B10056m6
B10056m7
B10056m8
B10056m9
B10056m10
B10056m11
 
B10057m1
B10057m2
B10057m3
B10057m4
B10057m5
B10057m6
B10057m7
B10057m8
B10057m9
B10057m10
B10057m11
 
B10058m1
B10058m2
B10058m3
B10058m4
B10058m5
B10058m6
B10058m7
B10058m8
B10058m9
B10058m10
B10058m11
 
B10059m1
B10059m2
B10059m3
B10059m4
B10059m5
B10059m6
B10059m7
B10059m8
B10059m9
B10059m10
B10059m11
 
B10060m1
B10060m2
B10060m3
B10060m4
B10060m5
B10060m6
B10060m7
B10060m8
B10060m9
B10060m10
B10060m11
B10060m12
B10060m13
B10060m14
B10060m15
B10060m16
 
B10061m1
B10061m2
B10061m3
B10061m4
B10061m5
B10061m6
B10061m7
B10061m8
B10061m9
B10061m10
B10061m11
 
B10063m1
B10063m2
B10063m3
B10063m4
B10063m5
B10063m6
B10063m7
;
RUN;
TITLE2;
