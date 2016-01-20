TITLE2 "e20125md0035000";
DATA work.SFe0035md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0035000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*GRANDCHILDREN UNDER 18 YEARS LIVING WITH A GRANDPARENT HOUSEHOLDER BY AGE OF GRANDCHILD */
/*Universe:  Grandchildren under 18 living with grandparent householder */
 
B10001e1='Total:'
B10001e2='Under 6 years'
B10001e3='6 to 11 years'
B10001e4='12 to 17 years'
/*GRANDCHILDREN UNDER 18 YEARS LIVING WITH A GRANDPARENT HOUSEHOLDER BY GRANDPARENT RESPONSIBILITY AND PRESENCE OF PARENT */
/*Universe:  Grandchildren under 18 living with grandparent householder */
 
B10002e1='Total:'
B10002e2='Grandparent householder responsible for own grandchildren under 18 years:'
B10002e3='Parent present'
B10002e4='No parent present'
B10002e5='Grandparent householder not responsible for own grandchildren under 18 years'
/*MEDIAN FAMILY INCOME FOR FAMILIES WITH GRANDPARENT HOUSEHOLDERS AND/OR SPOUSES LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND PRESENCE OF PARENT OF GRANDCHILD */
/*Universe: Families with grandparent householders and/or spouses living with grandchildren */
/*Median family income in the past 12 months-- */
 
B10010e1='Total:'
B10010e2='Grandparent householder and/or spouse responsible for grandchildren under 18 years (dollars)'
B10010e3='Grandparent householder and/or spouse responsible for grandchildren under 18 years and no parent present (dollars)'
/*GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN BY LENGTH OF TIME RESPONSIBLE FOR OWN GRANDCHILDREN FOR THE POPULATION 30 YEARS AND OVER */
/*Universe:  Population 30 years and over */
 
B10050e1='Total:'
B10050e2='Living with own grandchildren under 18 years:'
B10050e3='Grandparent responsible for own grandchildren under 18 years:'
B10050e4='Grandparent responsible less than 6 months'
B10050e5='Grandparent responsible 6 to 11 months'
B10050e6='Grandparent responsible 1 or 2 years'
B10050e7='Grandparent responsible 3 or 4 years'
B10050e8='Grandparent responsible 5 years or more'
B10050e9='Grandparent not responsible for own grandchildren under 18 years'
B10050e10='Not living with own grandchildren under 18 years'
/*GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN BY PRESENCE OF PARENT OF GRANDCHILDREN AND AGE OF GRANDPARENT */
/*Universe:  Grandparents living with own grandchildren under 18 years */
 
B10051e1='Total:'
B10051e2='Grandparent responsible for own grandchildren under 18 years:'
B10051e3='Householder or spouse with no parent of grandchildren present:'
B10051e4='30 to 59 years'
B10051e5='60 years and over'
B10051e6='Other grandparents:'
B10051e7='30 to 59 years'
B10051e8='60 years and over'
B10051e9='Grandparent not responsible for own grandchildren under 18 years:'
B10051e10='30 to 59 years'
B10051e11='60 years and over'
/*GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT (WHITE ALONE) */
/*Universe:  Grandparents (White alone) living with own grandchildren under 18 years */
 
B10051Ae1='Total:'
B10051Ae2='Grandparent responsible for own grandchildren under 18 years:'
B10051Ae3='30 to 59 years'
B10051Ae4='60 years and over'
B10051Ae5='Grandparent not responsible for own grandchildren under 18 years:'
B10051Ae6='30 to 59 years'
B10051Ae7='60 years and over'
/*GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Grandparents (Black or African American alone) living with own grandchildren under 18 years */
 
B10051Be1='Total:'
B10051Be2='Grandparent responsible for own grandchildren under 18 years:'
B10051Be3='30 to 59 years'
B10051Be4='60 years and over'
B10051Be5='Grandparent not responsible for own grandchildren under 18 years:'
B10051Be6='30 to 59 years'
B10051Be7='60 years and over'
/*GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  Grandparents (American Indian and Alaska Native alone) living with own grandchildren under 18 years */
 
B10051Ce1='Total:'
B10051Ce2='Grandparent responsible for own grandchildren under 18 years:'
B10051Ce3='30 to 59 years'
B10051Ce4='60 years and over'
B10051Ce5='Grandparent not responsible for own grandchildren under 18 years:'
B10051Ce6='30 to 59 years'
B10051Ce7='60 years and over'
/*GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT (ASIAN ALONE) */
/*Universe:  Grandparents (Asian alone) living with own grandchildren under 18 years */
 
B10051De1='Total:'
B10051De2='Grandparent responsible for own grandchildren under 18 years:'
B10051De3='30 to 59 years'
B10051De4='60 years and over'
B10051De5='Grandparent not responsible for own grandchildren under 18 years:'
B10051De6='30 to 59 years'
B10051De7='60 years and over'
/*GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Grandparents (Native Hawaiian and Other Pacific Islander alone) living with own grandchildren under 18 years */
 
B10051Ee1='Total:'
B10051Ee2='Grandparent responsible for own grandchildren under 18 years:'
B10051Ee3='30 to 59 years'
B10051Ee4='60 years and over'
B10051Ee5='Grandparent not responsible for own grandchildren under 18 years:'
B10051Ee6='30 to 59 years'
B10051Ee7='60 years and over'
/*GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT (SOME OTHER RACE ALONE) */
/*Universe:  Grandparents (Some other race alone) living with own grandchildren under 18 years */
 
B10051Fe1='Total:'
B10051Fe2='Grandparent responsible for own grandchildren under 18 years:'
B10051Fe3='30 to 59 years'
B10051Fe4='60 years and over'
B10051Fe5='Grandparent not responsible for own grandchildren under 18 years:'
B10051Fe6='30 to 59 years'
B10051Fe7='60 years and over'
/*GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT (TWO OR MORE RACES) */
/*Universe:  Grandparents (Two or more races) living with own grandchildren under 18 years */
 
B10051Ge1='Total:'
B10051Ge2='Grandparent responsible for own grandchildren under 18 years:'
B10051Ge3='30 to 59 years'
B10051Ge4='60 years and over'
B10051Ge5='Grandparent not responsible for own grandchildren under 18 years:'
B10051Ge6='30 to 59 years'
B10051Ge7='60 years and over'
/*GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  Grandparents (White alone, not Hispanic or Latino) living with own grandchildren under 18 years */
 
B10051He1='Total:'
B10051He2='Grandparent responsible for own grandchildren under 18 years:'
B10051He3='30 to 59 years'
B10051He4='60 years and over'
B10051He5='Grandparent not responsible for own grandchildren under 18 years:'
B10051He6='30 to 59 years'
B10051He7='60 years and over'
/*GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT (HISPANIC OR LATINO) */
/*Universe:  Grandparents (Hispanic or Latino) living with own grandchildren under 18 years */
 
B10051Ie1='Total:'
B10051Ie2='Grandparent responsible for own grandchildren under 18 years:'
B10051Ie3='30 to 59 years'
B10051Ie4='60 years and over'
B10051Ie5='Grandparent not responsible for own grandchildren under 18 years:'
B10051Ie6='30 to 59 years'
B10051Ie7='60 years and over'
/*DISABILITY STATUS OF GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT */
/*Universe:  Civilian grandparents living with own grandchildren under 18 years */
 
B10052e1='Total:'
B10052e2='With any disability:'
B10052e3='Grandparent responsible for own grandchildren under 18 years:'
B10052e4='30 to 59 years'
B10052e5='60 years and over'
B10052e6='Grandparent not responsible for own grandchildren under 18 years'
B10052e7='No disability:'
B10052e8='Grandparent responsible for own grandchildren under 18 years:'
B10052e9='30 to 59 years'
B10052e10='60 years and over'
B10052e11='Grandparent not responsible for own grandchildren under 18 years'
/*NATIVITY BY GRANDPARENTS RESPONSIBLE FOR OWN GRANDCHILDREN UNDER 18 YEARS BY AGE OF GRANDPARENT */
/*Universe:  Grandparents living with own grandchildren under 18 years */
 
B10053e1='Total:'
B10053e2='Native:'
B10053e3='Grandparent responsible for own grandchildren under 18 years:'
B10053e4='30 to 59 years'
B10053e5='60 years and over'
B10053e6='Grandparent not responsible for own grandchildren under 18 years'
B10053e7='Foreign-born:'
B10053e8='Grandparent responsible for own grandchildren under 18 years:'
B10053e9='30 to 59 years'
B10053e10='60 years and over'
B10053e11='Grandparent not responsible for own grandchildren under 18 years'
/*LANGUAGE AND ABILITY TO SPEAK ENGLISH OF GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT */
/*Universe:  Grandparents living with own grandchildren under 18 years */
 
B10054e1='Total:'
B10054e2='Speak only English:'
B10054e3='Grandparent responsible for own grandchildren under 18 years:'
B10054e4='30 to 59 years'
B10054e5='60 years and over'
B10054e6='Grandparent not responsible for own grandchildren under 18 years'
B10054e7='Speak other language:'
B10054e8='Speak English  “very well” :'
B10054e9='Grandparent responsible for own grandchildren under 18 years:'
B10054e10='30 to 59 years'
B10054e11='60 years and over'
B10054e12='Grandparent not responsible for own grandchildren under 18 years'
B10054e13='Speak English less than “very well”:'
B10054e14='Grandparent responsible for own grandchildren under 18 years:'
B10054e15='30 to 59 years'
B10054e16='60 years and over'
B10054e17='Grandparent not responsible for own grandchildren under 18 years'
/*SEX OF GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT */
/*Universe:  Grandparents living with own grandchildren under 18 years */
 
B10056e1='Total:'
B10056e2='Male:'
B10056e3='Grandparent responsible for own grandchildren under 18 years:'
B10056e4='30 to 59 years'
B10056e5='60 years and over'
B10056e6='Grandparent not responsible for own grandchildren under 18 years'
B10056e7='Female:'
B10056e8='Grandparent responsible for own grandchildren under 18 years:'
B10056e9='30 to 59 years'
B10056e10='60 years and over'
B10056e11='Grandparent not responsible for own grandchildren under 18 years'
/*MARITAL STATUS BY GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT */
/*Universe:  Grandparents living with own grandchildren under 18 years */
 
B10057e1='Total:'
B10057e2='Now married (including separated and spouse absent):'
B10057e3='Grandparent responsible for own grandchildren under 18 years:'
B10057e4='30 to 59 years'
B10057e5='60 years and over'
B10057e6='Grandparent not responsible for own grandchildren under 18 years'
B10057e7='Unmarried (never married, widowed, and divorced):'
B10057e8='Grandparent responsible for own grandchildren under 18 years:'
B10057e9='30 to 59 years'
B10057e10='60 years and over'
B10057e11='Grandparent not responsible for own grandchildren under 18 years'
/*EMPLOYMENT STATUS OF GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT */
/*Universe:  Grandparents living with own grandchildren under 18 years */
 
B10058e1='Total:'
B10058e2='In labor force:'
B10058e3='Grandparent responsible for own grandchildren under 18 years:'
B10058e4='30 to 59 years'
B10058e5='60 years and over'
B10058e6='Grandparent not responsible for own grandchildren under 18 years'
B10058e7='Not in labor force:'
B10058e8='Grandparent responsible for own grandchildren under 18 years:'
B10058e9='30 to 59 years'
B10058e10='60 years and over'
B10058e11='Grandparent not responsible for own grandchildren under 18 years'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT */
/*Universe:  Grandparents living with own grandchildren under 18 years for whom poverty status is determined */
 
B10059e1='Total:'
B10059e2='Income in the past 12 months below poverty level:'
B10059e3='Grandparent responsible for own grandchildren under 18 years:'
B10059e4='30 to 59 years'
B10059e5='60 years and over'
B10059e6='Grandparent not responsible for own grandchildren under 18 years'
B10059e7='Income in the past 12 months at or above poverty level:'
B10059e8='Grandparent responsible for own grandchildren under 18 years:'
B10059e9='30 to 59 years'
B10059e10='60 years and over'
B10059e11='Grandparent not responsible for own grandchildren under 18 years'
/*UNITS IN STRUCTURE OF GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT */
/*Universe:  Grandparents living with own grandchildren under 18 years in households */
 
B10060e1='Total:'
B10060e2='In 1-unit structures:'
B10060e3='Grandparent responsible for own grandchildren under 18 years:'
B10060e4='30 to 59 years'
B10060e5='60 years and over'
B10060e6='Grandparent not responsible for own grandchildren under 18 years'
B10060e7='In 2-or-more-unit structures:'
B10060e8='Grandparent responsible for own grandchildren under 18 years:'
B10060e9='30 to 59 years'
B10060e10='60 years and over'
B10060e11='Grandparent not responsible for own grandchildren under 18 years'
B10060e12='In mobile homes and all other types of units:'
B10060e13='Grandparent responsible for own grandchildren under 18 years:'
B10060e14='30 to 59 years'
B10060e15='60 years and over'
B10060e16='Grandparent not responsible for own grandchildren under 18 years'
/*TENURE OF GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND AGE OF GRANDPARENT */
/*Universe:  Grandparents living with own grandchildren under 18 years in households */
 
B10061e1='Total:'
B10061e2='Living in owner-occupied housing unit:'
B10061e3='Grandparent responsible for own grandchildren under 18 years:'
B10061e4='30 to 59 years'
B10061e5='60 years and over'
B10061e6='Grandparent not responsible for own grandchildren under 18 years'
B10061e7='Living in renter-occupied housing unit:'
B10061e8='Grandparent responsible for own grandchildren under 18 years:'
B10061e9='30 to 59 years'
B10061e10='60 years and over'
B10061e11='Grandparent not responsible for own grandchildren under 18 years'
/*HOUSEHOLDS WITH GRANDPARENTS LIVING WITH OWN GRANDCHILDREN UNDER 18 YEARS BY RESPONSIBILITY FOR OWN GRANDCHILDREN AND PRESENCE OF PARENT OF GRANDCHILDREN */
/*Universe:  Households */
 
B10063e1='Total:'
B10063e2='Household with grandparents living with grandchildren:'
B10063e3='Household with grandparent responsible for own grandchildren under 18 years:'
B10063e4='Householder or spouse with no parent of grandchildren present'
B10063e5='Other grandparents'
B10063e6='Household with grandparent not responsible for own grandchildren under 18 years'
B10063e7='Household without grandparents living with grandchildren'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B10001e1
B10001e2
B10001e3
B10001e4
 
B10002e1
B10002e2
B10002e3
B10002e4
B10002e5
 
B10010e1
B10010e2
B10010e3
 
B10050e1
B10050e2
B10050e3
B10050e4
B10050e5
B10050e6
B10050e7
B10050e8
B10050e9
B10050e10
 
B10051e1
B10051e2
B10051e3
B10051e4
B10051e5
B10051e6
B10051e7
B10051e8
B10051e9
B10051e10
B10051e11
 
B10051Ae1
B10051Ae2
B10051Ae3
B10051Ae4
B10051Ae5
B10051Ae6
B10051Ae7
 
B10051Be1
B10051Be2
B10051Be3
B10051Be4
B10051Be5
B10051Be6
B10051Be7
 
B10051Ce1
B10051Ce2
B10051Ce3
B10051Ce4
B10051Ce5
B10051Ce6
B10051Ce7
 
B10051De1
B10051De2
B10051De3
B10051De4
B10051De5
B10051De6
B10051De7
 
B10051Ee1
B10051Ee2
B10051Ee3
B10051Ee4
B10051Ee5
B10051Ee6
B10051Ee7
 
B10051Fe1
B10051Fe2
B10051Fe3
B10051Fe4
B10051Fe5
B10051Fe6
B10051Fe7
 
B10051Ge1
B10051Ge2
B10051Ge3
B10051Ge4
B10051Ge5
B10051Ge6
B10051Ge7
 
B10051He1
B10051He2
B10051He3
B10051He4
B10051He5
B10051He6
B10051He7
 
B10051Ie1
B10051Ie2
B10051Ie3
B10051Ie4
B10051Ie5
B10051Ie6
B10051Ie7
 
B10052e1
B10052e2
B10052e3
B10052e4
B10052e5
B10052e6
B10052e7
B10052e8
B10052e9
B10052e10
B10052e11
 
B10053e1
B10053e2
B10053e3
B10053e4
B10053e5
B10053e6
B10053e7
B10053e8
B10053e9
B10053e10
B10053e11
 
B10054e1
B10054e2
B10054e3
B10054e4
B10054e5
B10054e6
B10054e7
B10054e8
B10054e9
B10054e10
B10054e11
B10054e12
B10054e13
B10054e14
B10054e15
B10054e16
B10054e17
 
B10056e1
B10056e2
B10056e3
B10056e4
B10056e5
B10056e6
B10056e7
B10056e8
B10056e9
B10056e10
B10056e11
 
B10057e1
B10057e2
B10057e3
B10057e4
B10057e5
B10057e6
B10057e7
B10057e8
B10057e9
B10057e10
B10057e11
 
B10058e1
B10058e2
B10058e3
B10058e4
B10058e5
B10058e6
B10058e7
B10058e8
B10058e9
B10058e10
B10058e11
 
B10059e1
B10059e2
B10059e3
B10059e4
B10059e5
B10059e6
B10059e7
B10059e8
B10059e9
B10059e10
B10059e11
 
B10060e1
B10060e2
B10060e3
B10060e4
B10060e5
B10060e6
B10060e7
B10060e8
B10060e9
B10060e10
B10060e11
B10060e12
B10060e13
B10060e14
B10060e15
B10060e16
 
B10061e1
B10061e2
B10061e3
B10061e4
B10061e5
B10061e6
B10061e7
B10061e8
B10061e9
B10061e10
B10061e11
 
B10063e1
B10063e2
B10063e3
B10063e4
B10063e5
B10063e6
B10063e7
;
RUN;
TITLE2;
