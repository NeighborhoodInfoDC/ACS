TITLE2 "m20125md0040000";
DATA work.SFm0040md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0040000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*MARITAL STATUS BY AGE FOR WOMEN 15 TO 50 YEARS */
/*Universe:  Women 15 to 50 years */
 
B13001m1='Total:'
B13001m2='Now married (including spouse absent):'
B13001m3='15 to 19 years'
B13001m4='20 to 34 years'
B13001m5='35 to 50 years'
B13001m6='Unmarried (never married, widowed, and divorced):'
B13001m7='15 to 19 years'
B13001m8='20 to 34 years'
B13001m9='35 to 50 years'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS AND AGE */
/*Universe:  Women 15 to 50 years */
 
B13002m1='Total:'
B13002m2='Women who had a birth in the past 12 months:'
B13002m3='Now married (including separated and spouse absent):'
B13002m4='15 to 19 years old'
B13002m5='20 to 34 years old'
B13002m6='35 to 50 years old'
B13002m7='Unmarried (never married, widowed, and divorced):'
B13002m8='15 to 19 years old'
B13002m9='20 to 34 years old'
B13002m10='35 to 50 years old'
B13002m11='Women who did not have a birth in the past 12 months:'
B13002m12='Now married (including separated and spouse absent):'
B13002m13='15 to 19 years old'
B13002m14='20 to 34 years old'
B13002m15='35 to 50 years old'
B13002m16='Unmarried (never married, widowed, and divorced):'
B13002m17='15 to 19 years old'
B13002m18='20 to 34 years old'
B13002m19='35 to 50 years old'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS (WHITE ALONE) */
/*Universe:  White alone women 15 to 50 years */
 
B13002Am1='Total:'
B13002Am2='Women who had a birth in the past 12 months:'
B13002Am3='Now married (including separated and spouse absent)'
B13002Am4='Unmarried (never married, widowed and divorced)'
B13002Am5='Women who did not have a birth in the past 12 months:'
B13002Am6='Now married (including separated and spouse absent)'
B13002Am7='Unmarried (never married, widowed and divorced)'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone women 15 to 50 years */
 
B13002Bm1='Total:'
B13002Bm2='Women who had a birth in the past 12 months:'
B13002Bm3='Now married (including separated and spouse absent)'
B13002Bm4='Unmarried (never married, widowed and divorced)'
B13002Bm5='Women who did not have a birth in the past 12 months:'
B13002Bm6='Now married (including separated and spouse absent)'
B13002Bm7='Unmarried (never married, widowed and divorced)'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone women 15 to 50 years */
 
B13002Cm1='Total:'
B13002Cm2='Women who had a birth in the past 12 months:'
B13002Cm3='Now married (including separated and spouse absent)'
B13002Cm4='Unmarried (never married, widowed and divorced)'
B13002Cm5='Women who did not have a birth in the past 12 months:'
B13002Cm6='Now married (including separated and spouse absent)'
B13002Cm7='Unmarried (never married, widowed and divorced)'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS (ASIAN ALONE) */
/*Universe:  Asian alone women 15 to 50 years */
 
B13002Dm1='Total:'
B13002Dm2='Women who had a birth in the past 12 months:'
B13002Dm3='Now married (including separated and spouse absent)'
B13002Dm4='Unmarried (never married, widowed and divorced)'
B13002Dm5='Women who did not have a birth in the past 12 months:'
B13002Dm6='Now married (including separated and spouse absent)'
B13002Dm7='Unmarried (never married, widowed and divorced)'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone women 15 to 50 years */
 
B13002Em1='Total:'
B13002Em2='Women who had a birth in the past 12 months:'
B13002Em3='Now married (including separated and spouse absent)'
B13002Em4='Unmarried (never married, widowed and divorced)'
B13002Em5='Women who did not have a birth in the past 12 months:'
B13002Em6='Now married (including separated and spouse absent)'
B13002Em7='Unmarried (never married, widowed and divorced)'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone women 15 to 50 years */
 
B13002Fm1='Total:'
B13002Fm2='Women who had a birth in the past 12 months:'
B13002Fm3='Now married (including separated and spouse absent)'
B13002Fm4='Unmarried (never married, widowed and divorced)'
B13002Fm5='Women who did not have a birth in the past 12 months:'
B13002Fm6='Now married (including separated and spouse absent)'
B13002Fm7='Unmarried (never married, widowed and divorced)'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS (TWO OR MORE RACES) */
/*Universe:  Two or more races women 15 to 50 years */
 
B13002Gm1='Total:'
B13002Gm2='Women who had a birth in the past 12 months:'
B13002Gm3='Now married (including separated and spouse absent)'
B13002Gm4='Unmarried (never married, widowed and divorced)'
B13002Gm5='Women who did not have a birth in the past 12 months:'
B13002Gm6='Now married (including separated and spouse absent)'
B13002Gm7='Unmarried (never married, widowed and divorced)'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino women 15 to 50 years */
 
B13002Hm1='Total:'
B13002Hm2='Women who had a birth in the past 12 months:'
B13002Hm3='Now married (including separated and spouse absent)'
B13002Hm4='Unmarried (never married, widowed and divorced)'
B13002Hm5='Women who did not have a birth in the past 12 months:'
B13002Hm6='Now married (including separated and spouse absent)'
B13002Hm7='Unmarried (never married, widowed and divorced)'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino women 15 to 50 years */
 
B13002Im1='Total:'
B13002Im2='Women who had a birth in the past 12 months:'
B13002Im3='Now married (including separated and spouse absent)'
B13002Im4='Unmarried (never married, widowed and divorced)'
B13002Im5='Women who did not have a birth in the past 12 months:'
B13002Im6='Now married (including separated and spouse absent)'
B13002Im7='Unmarried (never married, widowed and divorced)'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS AND PRESENCE OF UNMARRIED PARTNER */
/*Universe:  Women 15 to 50 years in households */
 
B13004m1='Total:'
B13004m2='Women who had a birth in the past 12 months:'
B13004m3='Now married (including separated and spouse absent)'
B13004m4='Unmarried (never married, widowed and divorced):'
B13004m5='Partner in an unmarried partner household'
B13004m6='Not an unmarried partner'
B13004m7='Women who did not have a birth in the past 12 months:'
B13004m8='Now married (including separated and spouse absent)'
B13004m9='Unmarried (never married, widowed and divorced):'
B13004m10='Partner in an unmarried partner household'
B13004m11='Not an unmarried partner'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS AND NATIVITY */
/*Universe:  Women 15 to 50 years */
 
B13008m1='Total:'
B13008m2='Women who had a birth in the past 12 months:'
B13008m3='Now married (including separated and spouse absent):'
B13008m4='Native'
B13008m5='Foreign born'
B13008m6='Unmarried (never married, widowed and divorced):'
B13008m7='Native'
B13008m8='Foreign born'
B13008m9='Women who did not have a birth in the past 12 months:'
B13008m10='Now married (including separated and spouse absent):'
B13008m11='Native'
B13008m12='Foreign born'
B13008m13='Unmarried (never married, widowed and divorced):'
B13008m14='Native'
B13008m15='Foreign born'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS AND POVERTY STATUS IN THE PAST 12 MONTHS */
/*Universe:  Women 15 to 50 years for whom poverty status is determined */
 
B13010m1='Total:'
B13010m2='Women who had a birth in the past 12 months:'
B13010m3='Now married (including separated and spouse absent):'
B13010m4='Below 100 percent of poverty level in the past 12 months'
B13010m5='100 to 199 percent of poverty level in the past 12 months'
B13010m6='200 percent or more of poverty level in the past 12 months'
B13010m7='Unmarried (never married, widowed and divorced):'
B13010m8='Below 100 percent of poverty level in the past 12 months'
B13010m9='100 to 199 percent of poverty level in the past 12 months'
B13010m10='200 percent or more of poverty level in the past 12 months'
B13010m11='Women who did not have a birth in the past 12 months:'
B13010m12='Now married (including separated and spouse absent):'
B13010m13='Below 100 percent of poverty level in the past 12 months'
B13010m14='100 to 199 percent of poverty level in the past 12 months'
B13010m15='200 percent or more of poverty level in the past 12 months'
B13010m16='Unmarried (never married, widowed and divorced):'
B13010m17='Below 100 percent of poverty level in the past 12 months'
B13010m18='100 to 199 percent of poverty level in the past 12 months'
B13010m19='200 percent or more of poverty level in the past 12 months'
/*WOMEN 16 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS AND LABOR FORCE STATUS */
/*Universe:  Women 16 to 50 years */
 
B13012m1='Total:'
B13012m2='Women who had a birth in the past 12 months:'
B13012m3='Now married (including separated and spouse absent):'
B13012m4='In labor force'
B13012m5='Not in labor force'
B13012m6='Unmarried (never married, widowed and divorced):'
B13012m7='In labor force'
B13012m8='Not in labor force'
B13012m9='Women who did not have a birth in the past 12 months:'
B13012m10='Now married (including separated and spouse absent):'
B13012m11='In labor force'
B13012m12='Not in labor force'
B13012m13='Unmarried (never married, widowed and divorced):'
B13012m14='In labor force'
B13012m15='Not in labor force'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS AND EDUCATIONAL ATTAINMENT */
/*Universe:  Women 15 to 50 years */
 
B13014m1='Total:'
B13014m2='Women who had a birth in the past 12 months:'
B13014m3='Now married (including separated and spouse absent):'
B13014m4='Less than high school graduate'
B13014m5='High school graduate (includes equivalency)'
B13014m6='Some college or associate''s degree'
B13014m7='Bachelor''s degree'
B13014m8='Graduate or professional degree'
B13014m9='Unmarried (never married, widowed and divorced):'
B13014m10='Less than high school graduate'
B13014m11='High school graduate (includes equivalency)'
B13014m12='Some college or associate''s degree'
B13014m13='Bachelor''s degree'
B13014m14='Graduate or professional degree'
B13014m15='Women who did not have a birth in the past 12 months:'
B13014m16='Now married (including separated and spouse absent):'
B13014m17='Less than high school graduate'
B13014m18='High school graduate (includes equivalency)'
B13014m19='Some college or associate''s degree'
B13014m20='Bachelor''s degree'
B13014m21='Graduate or professional degree'
B13014m22='Unmarried (never married, widowed and divorced):'
B13014m23='Less than high school graduate'
B13014m24='High school graduate (includes equivalency)'
B13014m25='Some college or associate''s degree'
B13014m26='Bachelor''s degree'
B13014m27='Graduate or professional degree'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY MARITAL STATUS AND RECEIPT OF PUBLIC ASSISTANCE INCOME IN THE PAST 12 MONTHS */
/*Universe:  Women 15 to 50 years */
 
B13015m1='Total:'
B13015m2='Women who had a birth in the past 12 months:'
B13015m3='Now married (including separated and spouse absent):'
B13015m4='Received public assistance income'
B13015m5='Did not receive public assistance income'
B13015m6='Unmarried (never married, widowed and divorced):'
B13015m7='Received public assistance income'
B13015m8='Did not receive public assistance income'
B13015m9='Women who did not have a birth in the past 12 months:'
B13015m10='Now married (including separated and spouse absent):'
B13015m11='Received public assistance income'
B13015m12='Did not receive public assistance income'
B13015m13='Unmarried (never married, widowed and divorced):'
B13015m14='Received public assistance income'
B13015m15='Did not receive public assistance income'
/*WOMEN 15 TO 50 YEARS WHO HAD A BIRTH IN THE PAST 12 MONTHS BY AGE */
/*Universe:  Women 15 to 50 years */
 
B13016m1='Total:'
B13016m2='Women who had a birth in the past 12 months:'
B13016m3='15 to 19 years old'
B13016m4='20 to 24 years old'
B13016m5='25 to 29 years old'
B13016m6='30 to 34 years old'
B13016m7='35 to 39 years old'
B13016m8='40 to 44 years old'
B13016m9='45 to 50 years old'
B13016m10='Women who did not have a birth in the past 12 months:'
B13016m11='15 to 19 years old'
B13016m12='20 to 24 years old'
B13016m13='25 to 29 years old'
B13016m14='30 to 34 years old'
B13016m15='35 to 39 years old'
B13016m16='40 to 44 years old'
B13016m17='45 to 50 years old'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B13001m1
B13001m2
B13001m3
B13001m4
B13001m5
B13001m6
B13001m7
B13001m8
B13001m9
 
B13002m1
B13002m2
B13002m3
B13002m4
B13002m5
B13002m6
B13002m7
B13002m8
B13002m9
B13002m10
B13002m11
B13002m12
B13002m13
B13002m14
B13002m15
B13002m16
B13002m17
B13002m18
B13002m19
 
B13002Am1
B13002Am2
B13002Am3
B13002Am4
B13002Am5
B13002Am6
B13002Am7
 
B13002Bm1
B13002Bm2
B13002Bm3
B13002Bm4
B13002Bm5
B13002Bm6
B13002Bm7
 
B13002Cm1
B13002Cm2
B13002Cm3
B13002Cm4
B13002Cm5
B13002Cm6
B13002Cm7
 
B13002Dm1
B13002Dm2
B13002Dm3
B13002Dm4
B13002Dm5
B13002Dm6
B13002Dm7
 
B13002Em1
B13002Em2
B13002Em3
B13002Em4
B13002Em5
B13002Em6
B13002Em7
 
B13002Fm1
B13002Fm2
B13002Fm3
B13002Fm4
B13002Fm5
B13002Fm6
B13002Fm7
 
B13002Gm1
B13002Gm2
B13002Gm3
B13002Gm4
B13002Gm5
B13002Gm6
B13002Gm7
 
B13002Hm1
B13002Hm2
B13002Hm3
B13002Hm4
B13002Hm5
B13002Hm6
B13002Hm7
 
B13002Im1
B13002Im2
B13002Im3
B13002Im4
B13002Im5
B13002Im6
B13002Im7
 
B13004m1
B13004m2
B13004m3
B13004m4
B13004m5
B13004m6
B13004m7
B13004m8
B13004m9
B13004m10
B13004m11
 
B13008m1
B13008m2
B13008m3
B13008m4
B13008m5
B13008m6
B13008m7
B13008m8
B13008m9
B13008m10
B13008m11
B13008m12
B13008m13
B13008m14
B13008m15
 
B13010m1
B13010m2
B13010m3
B13010m4
B13010m5
B13010m6
B13010m7
B13010m8
B13010m9
B13010m10
B13010m11
B13010m12
B13010m13
B13010m14
B13010m15
B13010m16
B13010m17
B13010m18
B13010m19
 
B13012m1
B13012m2
B13012m3
B13012m4
B13012m5
B13012m6
B13012m7
B13012m8
B13012m9
B13012m10
B13012m11
B13012m12
B13012m13
B13012m14
B13012m15
 
B13014m1
B13014m2
B13014m3
B13014m4
B13014m5
B13014m6
B13014m7
B13014m8
B13014m9
B13014m10
B13014m11
B13014m12
B13014m13
B13014m14
B13014m15
B13014m16
B13014m17
B13014m18
B13014m19
B13014m20
B13014m21
B13014m22
B13014m23
B13014m24
B13014m25
B13014m26
B13014m27
 
B13015m1
B13015m2
B13015m3
B13015m4
B13015m5
B13015m6
B13015m7
B13015m8
B13015m9
B13015m10
B13015m11
B13015m12
B13015m13
B13015m14
B13015m15
 
B13016m1
B13016m2
B13016m3
B13016m4
B13016m5
B13016m6
B13016m7
B13016m8
B13016m9
B13016m10
B13016m11
B13016m12
B13016m13
B13016m14
B13016m15
B13016m16
B13016m17
;
RUN;
TITLE2;
