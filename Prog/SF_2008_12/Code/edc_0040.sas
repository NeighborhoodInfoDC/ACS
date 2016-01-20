TITLE2 "e20125dc0040000";
DATA work.SFe0040dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0040000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*MARITAL STATUS BY AGE FOR WOMEN 15 TO 50 YEARS */
/*Universe:  Women 15 to 50 years */
 
B13001e1='Total:'
B13001e2='Now married (including spouse absent):'
B13001e3='15 to 19 years'
B13001e4='20 to 34 years'
B13001e5='35 to 50 years'
B13001e6='Unmarried (never married, widowed, and divorced):'
B13001e7='15 to 19 years'
B13001e8='20 to 34 years'
B13001e9='35 to 50 years'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS AND AGE */
/*Universe:  Women 15 to 50 years */
 
B13002e1='Total:'
B13002e2='Women who had a birth in the past 12 months:'
B13002e3='Now married (including separated and spouse absent):'
B13002e4='15 to 19 years old'
B13002e5='20 to 34 years old'
B13002e6='35 to 50 years old'
B13002e7='Unmarried (never married, widowed, and divorced):'
B13002e8='15 to 19 years old'
B13002e9='20 to 34 years old'
B13002e10='35 to 50 years old'
B13002e11='Women who did not have a birth in the past 12 months:'
B13002e12='Now married (including separated and spouse absent):'
B13002e13='15 to 19 years old'
B13002e14='20 to 34 years old'
B13002e15='35 to 50 years old'
B13002e16='Unmarried (never married, widowed, and divorced):'
B13002e17='15 to 19 years old'
B13002e18='20 to 34 years old'
B13002e19='35 to 50 years old'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS (WHITE ALONE) */
/*Universe:  White alone women 15 to 50 years */
 
B13002Ae1='Total:'
B13002Ae2='Women who had a birth in the past 12 months:'
B13002Ae3='Now married (including separated and spouse absent)'
B13002Ae4='Unmarried (never married, widowed and divorced)'
B13002Ae5='Women who did not have a birth in the past 12 months:'
B13002Ae6='Now married (including separated and spouse absent)'
B13002Ae7='Unmarried (never married, widowed and divorced)'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone women 15 to 50 years */
 
B13002Be1='Total:'
B13002Be2='Women who had a birth in the past 12 months:'
B13002Be3='Now married (including separated and spouse absent)'
B13002Be4='Unmarried (never married, widowed and divorced)'
B13002Be5='Women who did not have a birth in the past 12 months:'
B13002Be6='Now married (including separated and spouse absent)'
B13002Be7='Unmarried (never married, widowed and divorced)'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone women 15 to 50 years */
 
B13002Ce1='Total:'
B13002Ce2='Women who had a birth in the past 12 months:'
B13002Ce3='Now married (including separated and spouse absent)'
B13002Ce4='Unmarried (never married, widowed and divorced)'
B13002Ce5='Women who did not have a birth in the past 12 months:'
B13002Ce6='Now married (including separated and spouse absent)'
B13002Ce7='Unmarried (never married, widowed and divorced)'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS (ASIAN ALONE) */
/*Universe:  Asian alone women 15 to 50 years */
 
B13002De1='Total:'
B13002De2='Women who had a birth in the past 12 months:'
B13002De3='Now married (including separated and spouse absent)'
B13002De4='Unmarried (never married, widowed and divorced)'
B13002De5='Women who did not have a birth in the past 12 months:'
B13002De6='Now married (including separated and spouse absent)'
B13002De7='Unmarried (never married, widowed and divorced)'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone women 15 to 50 years */
 
B13002Ee1='Total:'
B13002Ee2='Women who had a birth in the past 12 months:'
B13002Ee3='Now married (including separated and spouse absent)'
B13002Ee4='Unmarried (never married, widowed and divorced)'
B13002Ee5='Women who did not have a birth in the past 12 months:'
B13002Ee6='Now married (including separated and spouse absent)'
B13002Ee7='Unmarried (never married, widowed and divorced)'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone women 15 to 50 years */
 
B13002Fe1='Total:'
B13002Fe2='Women who had a birth in the past 12 months:'
B13002Fe3='Now married (including separated and spouse absent)'
B13002Fe4='Unmarried (never married, widowed and divorced)'
B13002Fe5='Women who did not have a birth in the past 12 months:'
B13002Fe6='Now married (including separated and spouse absent)'
B13002Fe7='Unmarried (never married, widowed and divorced)'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS (TWO OR MORE RACES) */
/*Universe:  Two or more races women 15 to 50 years */
 
B13002Ge1='Total:'
B13002Ge2='Women who had a birth in the past 12 months:'
B13002Ge3='Now married (including separated and spouse absent)'
B13002Ge4='Unmarried (never married, widowed and divorced)'
B13002Ge5='Women who did not have a birth in the past 12 months:'
B13002Ge6='Now married (including separated and spouse absent)'
B13002Ge7='Unmarried (never married, widowed and divorced)'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino women 15 to 50 years */
 
B13002He1='Total:'
B13002He2='Women who had a birth in the past 12 months:'
B13002He3='Now married (including separated and spouse absent)'
B13002He4='Unmarried (never married, widowed and divorced)'
B13002He5='Women who did not have a birth in the past 12 months:'
B13002He6='Now married (including separated and spouse absent)'
B13002He7='Unmarried (never married, widowed and divorced)'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino women 15 to 50 years */
 
B13002Ie1='Total:'
B13002Ie2='Women who had a birth in the past 12 months:'
B13002Ie3='Now married (including separated and spouse absent)'
B13002Ie4='Unmarried (never married, widowed and divorced)'
B13002Ie5='Women who did not have a birth in the past 12 months:'
B13002Ie6='Now married (including separated and spouse absent)'
B13002Ie7='Unmarried (never married, widowed and divorced)'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS AND PRESENCE OF UNMARRIED PARTNER */
/*Universe:  Women 15 to 50 years in households */
 
B13004e1='Total:'
B13004e2='Women who had a birth in the past 12 months:'
B13004e3='Now married (including separated and spouse absent)'
B13004e4='Unmarried (never married, widowed and divorced):'
B13004e5='Partner in an unmarried partner household'
B13004e6='Not an unmarried partner'
B13004e7='Women who did not have a birth in the past 12 months:'
B13004e8='Now married (including separated and spouse absent)'
B13004e9='Unmarried (never married, widowed and divorced):'
B13004e10='Partner in an unmarried partner household'
B13004e11='Not an unmarried partner'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS AND NATIVITY */
/*Universe:  Women 15 to 50 years */
 
B13008e1='Total:'
B13008e2='Women who had a birth in the past 12 months:'
B13008e3='Now married (including separated and spouse absent):'
B13008e4='Native'
B13008e5='Foreign born'
B13008e6='Unmarried (never married, widowed and divorced):'
B13008e7='Native'
B13008e8='Foreign born'
B13008e9='Women who did not have a birth in the past 12 months:'
B13008e10='Now married (including separated and spouse absent):'
B13008e11='Native'
B13008e12='Foreign born'
B13008e13='Unmarried (never married, widowed and divorced):'
B13008e14='Native'
B13008e15='Foreign born'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS AND POVERTY STATUS IN THE PAST 12 MONTHS */
/*Universe:  Women 15 to 50 years for whom poverty status is determined */
 
B13010e1='Total:'
B13010e2='Women who had a birth in the past 12 months:'
B13010e3='Now married (including separated and spouse absent):'
B13010e4='Below 100 percent of poverty level in the past 12 months'
B13010e5='100 to 199 percent of poverty level in the past 12 months'
B13010e6='200 percent or more of poverty level in the past 12 months'
B13010e7='Unmarried (never married, widowed and divorced):'
B13010e8='Below 100 percent of poverty level in the past 12 months'
B13010e9='100 to 199 percent of poverty level in the past 12 months'
B13010e10='200 percent or more of poverty level in the past 12 months'
B13010e11='Women who did not have a birth in the past 12 months:'
B13010e12='Now married (including separated and spouse absent):'
B13010e13='Below 100 percent of poverty level in the past 12 months'
B13010e14='100 to 199 percent of poverty level in the past 12 months'
B13010e15='200 percent or more of poverty level in the past 12 months'
B13010e16='Unmarried (never married, widowed and divorced):'
B13010e17='Below 100 percent of poverty level in the past 12 months'
B13010e18='100 to 199 percent of poverty level in the past 12 months'
B13010e19='200 percent or more of poverty level in the past 12 months'
/*WOMEN 16 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS AND LABOR FORCE STATUS */
/*Universe:  Women 16 to 50 years */
 
B13012e1='Total:'
B13012e2='Women who had a birth in the past 12 months:'
B13012e3='Now married (including separated and spouse absent):'
B13012e4='In labor force'
B13012e5='Not in labor force'
B13012e6='Unmarried (never married, widowed and divorced):'
B13012e7='In labor force'
B13012e8='Not in labor force'
B13012e9='Women who did not have a birth in the past 12 months:'
B13012e10='Now married (including separated and spouse absent):'
B13012e11='In labor force'
B13012e12='Not in labor force'
B13012e13='Unmarried (never married, widowed and divorced):'
B13012e14='In labor force'
B13012e15='Not in labor force'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS AND EDUCATIONAL ATTAINMENT */
/*Universe:  Women 15 to 50 years */
 
B13014e1='Total:'
B13014e2='Women who had a birth in the past 12 months:'
B13014e3='Now married (including separated and spouse absent):'
B13014e4='Less than high school graduate'
B13014e5='High school graduate (includes equivalency)'
B13014e6='Some college or associate''s degree'
B13014e7='Bachelor''s degree'
B13014e8='Graduate or professional degree'
B13014e9='Unmarried (never married, widowed and divorced):'
B13014e10='Less than high school graduate'
B13014e11='High school graduate (includes equivalency)'
B13014e12='Some college or associate''s degree'
B13014e13='Bachelor''s degree'
B13014e14='Graduate or professional degree'
B13014e15='Women who did not have a birth in the past 12 months:'
B13014e16='Now married (including separated and spouse absent):'
B13014e17='Less than high school graduate'
B13014e18='High school graduate (includes equivalency)'
B13014e19='Some college or associate''s degree'
B13014e20='Bachelor''s degree'
B13014e21='Graduate or professional degree'
B13014e22='Unmarried (never married, widowed and divorced):'
B13014e23='Less than high school graduate'
B13014e24='High school graduate (includes equivalency)'
B13014e25='Some college or associate''s degree'
B13014e26='Bachelor''s degree'
B13014e27='Graduate or professional degree'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS AND RECEIPT OF PUBLIC ASSISTANCE INCOME IN THE PAST 12 MONTHS */
/*Universe:  Women 15 to 50 years */
 
B13015e1='Total:'
B13015e2='Women who had a birth in the past 12 months:'
B13015e3='Now married (including separated and spouse absent):'
B13015e4='Received public assistance income'
B13015e5='Did not receive public assistance income'
B13015e6='Unmarried (never married, widowed and divorced):'
B13015e7='Received public assistance income'
B13015e8='Did not receive public assistance income'
B13015e9='Women who did not have a birth in the past 12 months:'
B13015e10='Now married (including separated and spouse absent):'
B13015e11='Received public assistance income'
B13015e12='Did not receive public assistance income'
B13015e13='Unmarried (never married, widowed and divorced):'
B13015e14='Received public assistance income'
B13015e15='Did not receive public assistance income'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY AGE */
/*Universe:  Women 15 to 50 years */
 
B13016e1='Total:'
B13016e2='Women who had a birth in the past 12 months:'
B13016e3='15 to 19 years old'
B13016e4='20 to 24 years old'
B13016e5='25 to 29 years old'
B13016e6='30 to 34 years old'
B13016e7='35 to 39 years old'
B13016e8='40 to 44 years old'
B13016e9='45 to 50 years old'
B13016e10='Women who did not have a birth in the past 12 months:'
B13016e11='15 to 19 years old'
B13016e12='20 to 24 years old'
B13016e13='25 to 29 years old'
B13016e14='30 to 34 years old'
B13016e15='35 to 39 years old'
B13016e16='40 to 44 years old'
B13016e17='45 to 50 years old'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B13001e1
B13001e2
B13001e3
B13001e4
B13001e5
B13001e6
B13001e7
B13001e8
B13001e9
 
B13002e1
B13002e2
B13002e3
B13002e4
B13002e5
B13002e6
B13002e7
B13002e8
B13002e9
B13002e10
B13002e11
B13002e12
B13002e13
B13002e14
B13002e15
B13002e16
B13002e17
B13002e18
B13002e19
 
B13002Ae1
B13002Ae2
B13002Ae3
B13002Ae4
B13002Ae5
B13002Ae6
B13002Ae7
 
B13002Be1
B13002Be2
B13002Be3
B13002Be4
B13002Be5
B13002Be6
B13002Be7
 
B13002Ce1
B13002Ce2
B13002Ce3
B13002Ce4
B13002Ce5
B13002Ce6
B13002Ce7
 
B13002De1
B13002De2
B13002De3
B13002De4
B13002De5
B13002De6
B13002De7
 
B13002Ee1
B13002Ee2
B13002Ee3
B13002Ee4
B13002Ee5
B13002Ee6
B13002Ee7
 
B13002Fe1
B13002Fe2
B13002Fe3
B13002Fe4
B13002Fe5
B13002Fe6
B13002Fe7
 
B13002Ge1
B13002Ge2
B13002Ge3
B13002Ge4
B13002Ge5
B13002Ge6
B13002Ge7
 
B13002He1
B13002He2
B13002He3
B13002He4
B13002He5
B13002He6
B13002He7
 
B13002Ie1
B13002Ie2
B13002Ie3
B13002Ie4
B13002Ie5
B13002Ie6
B13002Ie7
 
B13004e1
B13004e2
B13004e3
B13004e4
B13004e5
B13004e6
B13004e7
B13004e8
B13004e9
B13004e10
B13004e11
 
B13008e1
B13008e2
B13008e3
B13008e4
B13008e5
B13008e6
B13008e7
B13008e8
B13008e9
B13008e10
B13008e11
B13008e12
B13008e13
B13008e14
B13008e15
 
B13010e1
B13010e2
B13010e3
B13010e4
B13010e5
B13010e6
B13010e7
B13010e8
B13010e9
B13010e10
B13010e11
B13010e12
B13010e13
B13010e14
B13010e15
B13010e16
B13010e17
B13010e18
B13010e19
 
B13012e1
B13012e2
B13012e3
B13012e4
B13012e5
B13012e6
B13012e7
B13012e8
B13012e9
B13012e10
B13012e11
B13012e12
B13012e13
B13012e14
B13012e15
 
B13014e1
B13014e2
B13014e3
B13014e4
B13014e5
B13014e6
B13014e7
B13014e8
B13014e9
B13014e10
B13014e11
B13014e12
B13014e13
B13014e14
B13014e15
B13014e16
B13014e17
B13014e18
B13014e19
B13014e20
B13014e21
B13014e22
B13014e23
B13014e24
B13014e25
B13014e26
B13014e27
 
B13015e1
B13015e2
B13015e3
B13015e4
B13015e5
B13015e6
B13015e7
B13015e8
B13015e9
B13015e10
B13015e11
B13015e12
B13015e13
B13015e14
B13015e15
 
B13016e1
B13016e2
B13016e3
B13016e4
B13016e5
B13016e6
B13016e7
B13016e8
B13016e9
B13016e10
B13016e11
B13016e12
B13016e13
B13016e14
B13016e15
B13016e16
B13016e17
;
RUN;
TITLE2;
