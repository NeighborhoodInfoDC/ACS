TITLE2 "e20125dc0119000";
DATA work.SFe0119dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0119000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*IMPUTATION OF RELATIONSHIP */
/*Universe:  Population in households */
 
B99092e1='Total:'
B99092e2='Imputed'
B99092e3='Not imputed'
/*IMPUTATION OF GRANDPARENTS LIVING WITH GRANDCHILDREN UNDER 18 YEARS */
/*Universe:  Population 30 years and over */
 
B99102e1='Total:'
B99102e2='Imputed'
B99102e3='Not imputed'
/*IMPUTATION OF GRANDPARENTS RESPONSIBLE FOR GRANDCHILDREN UNDER 18 YEARS */
/*Universe:  Grandparents living with own grandchildren under 18 years */
 
B99103e1='Total:'
B99103e2='Imputed'
B99103e3='Not imputed'
/*IMPUTATION OF LENGTH OF TIME GRANDPARENT RESPONSIBLE FOR OWN GRANDCHILDREN UNDER 18 YEARS FOR THE POPULATION 30 YEARS AND OVER */
/*Universe:  Population 30 years and over */
 
B99104e1='Total:'
B99104e2='Living with own grandchildren under 18 years:'
B99104e3='Grandparent responsible for own grandchildren under 18 years:'
/*Length of time -- */
B99104e4='Imputed'
B99104e5='Not imputed'
B99104e6='Grandparent not responsible for own grandchildren under 18 years'
B99104e7='Not living with own grandchildren under 18 years'
/*IMPUTATION OF MARITAL STATUS FOR THE POPULATION 15 YEARS AND OVER */
/*Universe:  Population 15 years and over */
 
B99121e1='Total:'
B99121e2='Imputed'
B99121e3='Not imputed'
/*IMPUTATION OF DIVORCED IN THE PAST 12 MONTHS FOR THE POPULATION 15 YEARS AND OVER */
/*Universe:  Population 15 years and over */
 
B99122e1='Total:'
B99122e2='Imputed'
B99122e3='Not imputed'
/*IMPUTATION OF MARRIED IN THE PAST 12 MONTHS FOR THE POPULATION 15 YEARS AND OVER */
/*Universe:  Population 15 years and over */
 
B99123e1='Total:'
B99123e2='Imputed'
B99123e3='Not imputed'
/*IMPUTATION OF WIDOWED IN THE PAST 12 MONTHS FOR THE POPULATION 15 YEARS AND OVER */
/*Universe:  Population 15 years and over */
 
B99124e1='Total:'
B99124e2='Imputed'
B99124e3='Not imputed'
/*IMPUTATION OF TIMES MARRIED FOR THE POPULATION 15 YEARS AND OVER */
/*Universe:  Population 15 years and over */
 
B99125e1='Total:'
B99125e2='Imputed'
B99125e3='Not imputed'
/*IMPUTATION OF YEAR LAST MARRIED FOR THE POPULATION 15 YEARS AND OVER */
/*Universe:  Population 15 years and over */
 
B99126e1='Total:'
B99126e2='Imputed'
B99126e3='Not imputed'
/*IMPUTATION OF MARITAL STATUS FOR FEMALES 15 TO 50 YEARS */
/*Universe:  Women 15 to 50 years */
 
B99131e1='Total:'
B99131e2='Imputed'
B99131e3='Not imputed'
/*IMPUTATION OF FERTILITY OF WOMEN 15 TO 50 YEARS */
/*Universe:  Women 15 to 50 years */
 
B99132e1='Total:'
B99132e2='Imputed'
B99132e3='Not imputed'
/*IMPUTATION OF SCHOOL ENROLLMENT FOR THE POPULATION 3 YEARS AND OVER */
/*Universe:  Population 3 years and over */
 
B99141e1='Total:'
B99141e2='Imputed'
B99141e3='Not imputed'
/*IMPUTATION OF GRADE ENROLLED FOR THE POPULATION 3 YEARS AND OVER ENROLLED IN SCHOOL */
/*Universe:  Population 3 years and over enrolled in school */
 
B99142e1='Total:'
B99142e2='Imputed'
B99142e3='Not imputed'
/*IMPUTATION OF EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER */
/*Universe:  Population 25 years and over */
 
B99151e1='Total:'
B99151e2='Imputed'
B99151e3='Not imputed'
/*IMPUTATION OF LANGUAGE STATUS FOR THE POPULATION 5 YEARS AND OVER */
/*Universe:  Population 5 years and over */
 
B99161e1='Total:'
B99161e2='Imputed'
B99161e3='Not imputed'
/*IMPUTATION OF LANGUAGE SPOKEN AT HOME FOR THE POPULATION 5 YEARS AND OVER */
/*Universe:  Population 5 years and over */
 
B99162e1='Total:'
B99162e2='Speak only English'
B99162e3='Speak other languages:'
/*Specific languages spoken -- */
B99162e4='Imputed:'
B99162e5='Language status imputed'
B99162e6='Language status not imputed'
B99162e7='Not imputed'
/*IMPUTATION OF ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER */
/*Universe:  Population 5 years and over */
 
B99163e1='Total:'
B99163e2='Speak only English'
B99163e3='Speak other languages:'
/*Ability to speak English -- */
B99163e4='Imputed'
B99163e5='Not imputed'
/*IMPUTATION OF POVERTY STATUS IN THE PAST 12 MONTHS FOR UNRELATED INDIVIDUALS */
/*Universe:  Unrelated individuals 15 years and over for whom poverty status is determined */
 
B99171e1='Total:'
/*Percent of income imputed for individuals with income in the past 12 months below poverty level -- */
B99171e2='No income imputed'
B99171e3='Dollar value of zero imputed'
B99171e4='More than 0 to less than 10 percent of total income for individual imputed'
B99171e5='10 to less than 25 percent of total income for individual imputed'
B99171e6='25 to less than 50 percent of total income for individual imputed'
B99171e7='50 to less than 100 percent of total income for individual imputed'
B99171e8='100 percent of total income for individual imputed'
/*Percent of income imputed for individuals with income in the past 12 months at or above poverty level -- */
B99171e9='No income imputed'
B99171e10='Dollar value of zero imputed'
B99171e11='More than 0 to less than 10 percent of total income for individual imputed'
B99171e12='10 to less than 25 percent of total income for individual imputed'
B99171e13='25 to less than 50 percent of total income for individual imputed'
B99171e14='50 to less than 100 percent of total income for individual imputed'
B99171e15='100 percent of total income for individual imputed'
/*IMPUTATION OF POVERTY STATUS IN THE PAST 12 MONTHS FOR FAMILIES */
/*Universe:  Families */
 
B99172e1='Total:'
/*Percent of family income imputed for families with income in the past 12 months below poverty level -- */
B99172e2='No income imputed'
B99172e3='Dollar value of zero imputed'
B99172e4='More than 0 to less than 10 percent of total income for family imputed'
B99172e5='10 to less than 25 percent of total income for family imputed'
B99172e6='25 to less than 50 percent of total income for family imputed'
B99172e7='50 to less than 100 percent of total income for family imputed'
B99172e8='100 percent of total income for family imputed'
/*Percent of family income imputed for families with income in the past 12 months at or above poverty level -- */
B99172e9='No income imputed'
B99172e10='Dollar value of zero imputed'
B99172e11='More than 0 to less than 10 percent of total income for family imputed'
B99172e12='10 to less than 25 percent of total income for family imputed'
B99172e13='25 to less than 50 percent of total income for family imputed'
B99172e14='50 to less than 100 percent of total income for family imputed'
B99172e15='100 percent of total income for family imputed'
/*IMPUTATION OF DISABILITY ITEMS FOR THE CIVILIAN NONINSTITUTIONALIZED POPULATION */
/*Universe: Civilian noninstitutionalized population */
 
B99181e1='Total:'
B99181e2='One or more disability items imputed'
B99181e3='No disability items imputed'
/*IMPUTATION OF HEARING DIFFICULTY FOR THE CIVILIAN NONINSTITUTIONALIZED POPULATION */
/*Universe: Civilian noninstitutionalized population */
 
B99182e1='Total:'
B99182e2='Imputed'
B99182e3='Not imputed'
/*IMPUTATION OF VISION DIFFICULTY FOR THE CIVILIAN NONINSTITUTIONALIZED POPULATION */
/*Universe: Civilian noninstitutionalized population */
 
B99183e1='Total:'
B99183e2='Imputed'
B99183e3='Not imputed'
/*IMPUTATION OF COGNITIVE DIFFICULTY FOR THE CIVILIAN NONINSTITUTIONALIZED POPULATION 5 YEARS AND OVER */
/*Universe: Civilian noninstitutionalized population 5 years and over */
 
B99184e1='Total:'
B99184e2='Imputed'
B99184e3='Not imputed'
/*IMPUTATION OF AMBULATORY DIFFICULTY FOR THE CIVILIAN NONINSTITUTIONALIZED POPULATION 5 YEARS AND OVER */
/*Universe: Civilian noninstitutionalized population 5 years and over */
 
B99185e1='Total:'
B99185e2='Imputed'
B99185e3='Not imputed'
/*IMPUTATION OF SELF-CARE DIFFICULTY FOR THE CIVILIAN NONINSTITUTIONALIZED POPULATION 5 YEARS AND OVER */
/*Universe: Civilian noninstitutionalized population 5 years and over */
 
B99186e1='Total:'
B99186e2='Imputed'
B99186e3='Not imputed'
/*AGE BY IMPUTATION OF INDEPENDENT LIVING DIFFICULTY FOR THE CIVILIAN NONINSTITUTIONALIZED POPULATION 15 YEARS AND OVER */
/*Universe: Civilian noninstitutionalized population 15 years and over */
 
B99187e1='Total:'
B99187e2='15 to 17 years:'
B99187e3='Imputed'
B99187e4='Not imputed'
B99187e5='18 years and over:'
B99187e6='Imputed'
B99187e7='Not imputed'
/*IMPUTATION OF INDIVIDUALS'' INCOME IN THE PAST 12 MONTHS FOR THE POPULATION 15 YEARS AND OVER - PERCENT OF INCOME IMPUTED */
/*Universe:  Population 15 years and over */
 
B99191e1='Total:'
/*Percent of income imputed -- */
B99191e2='No income imputed'
B99191e3='Dollar value of zero imputed'
B99191e4='More than 0 to less than 10 percent of total income for individual imputed'
B99191e5='10 to less than 25 percent of total income for individual imputed'
B99191e6='25 to less than 50 percent of total income for individual imputed'
B99191e7='50 to less than 100 percent of total income for individual imputed'
B99191e8='100 percent of total income for individual imputed'
/*IMPUTATION OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS - PERCENT OF INCOME IMPUTED */
/*Universe:  Households */
 
B99192e1='Total:'
/*Percent of income imputed -- */
B99192e2='No income imputed'
B99192e3='Dollar value of zero imputed'
B99192e4='More than 0 to less than 10 percent of total income for household imputed'
B99192e5='10 to less than 25 percent of total income for household imputed'
B99192e6='25 to less than 50 percent of total income for household imputed'
B99192e7='50 to less than 100 percent of total income for household imputed'
B99192e8='100 percent of total income for household imputed'
/*IMPUTATION OF FAMILY INCOME IN THE PAST 12 MONTHS -- PERCENT OF INCOME IMPUTED */
/*Universe:  Families */
 
B99193e1='Total:'
/*Percent of income imputed -- */
B99193e2='No income imputed'
B99193e3='Dollar value of zero imputed'
B99193e4='More than 0 to less than 10 percent of total income for family imputed'
B99193e5='10 to less than 25 percent of total income for family imputed'
B99193e6='25 to less than 50 percent of total income for family imputed'
B99193e7='50 to less than 100 percent of total income for family imputed'
B99193e8='100 percent of total income for family imputed'
/*IMPUTATION OF NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS -- PERCENT OF INCOME IMPUTED */
/*Universe:  Nonfamily households */
 
B99194e1='Total:'
/*Percent of income imputed -- */
B99194e2='No income imputed'
B99194e3='Dollar value of zero imputed'
B99194e4='More than 0 to less than 10 percent of total income for household imputed'
B99194e5='10 to less than 25 percent of total income for household imputed'
B99194e6='25 to less than 50 percent of total income for household imputed'
B99194e7='50 to less than 100 percent of total income for household imputed'
B99194e8='100 percent of total income for household imputed'
/*IMPUTATION OF EARNINGS IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER - PERCENT OF EARNINGS IMPUTED */
/*Universe:  Population 16 years and over */
 
B99201e1='Total:'
/*Percent of earnings imputed -- */
B99201e2='No earnings imputed'
B99201e3='Dollar value of zero imputed'
B99201e4='More than 0 to less than 10 percent of total earnings for individual imputed'
B99201e5='10 to less than 25 percent of total earnings for individual imputed'
B99201e6='25 to less than 50 percent of total earnings for individual imputed'
B99201e7='50 to less than 100 percent of total earnings for individual imputed'
B99201e8='100 percent of total earnings for individual imputed'
/*IMPUTATION OF VETERAN STATUS FOR THE POPULATION 18 YEARS AND OVER */
/*Universe:  Population 18 years and over */
 
B99211e1='Total:'
B99211e2='Imputed'
B99211e3='Not imputed'
/*IMPUTATION OF PERIOD OF MILITARY SERVICE FOR CIVILIAN VETERANS 18 YEARS AND OVER */
/*Universe:  Civilian veterans 18 years and over */
 
B99212e1='Total:'
B99212e2='Imputed'
B99212e3='Not imputed'
/*IMPUTATION OF FOOD STAMPS/SNAP RECEIPT */
/*Universe:  Households */
 
B99221e1='Total:'
B99221e2='Imputed'
B99221e3='Not imputed'
/*IMPUTATION OF EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER */
/*Universe:  Population 16 years and over */
 
B99231e1='Total:'
B99231e2='Imputed'
B99231e3='Not imputed'
/*IMPUTATION OF WORK STATUS IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER */
/*Universe:  Population 16 years and over */
 
B99232e1='Total:'
B99232e2='Imputed'
B99232e3='Not imputed'
/*IMPUTATION OF USUAL HOURS WORKED PER WEEK IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER */
/*Universe:  Population 16 years and over */
 
B99233e1='Total:'
B99233e2='Worked in the past 12 months:'
/*Usual hours worked per week in the past 12 months -- */
B99233e3='Imputed'
B99233e4='Not imputed'
B99233e5='Did not work in the past 12 months'
/*IMPUTATION OF WEEKS WORKED IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER */
/*Universe:  Population 16 years and over */
 
B99234e1='Total:'
B99234e2='Worked in the past 12 months:'
/*Weeks worked in the past 12 months -- */
B99234e3='Imputed'
B99234e4='Not imputed'
B99234e5='Did not work in the past 12 months'
/*IMPUTATION OF INDUSTRY FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over */
 
B99241e1='Total:'
B99241e2='Imputed'
B99241e3='Not Imputed'
/*IMPUTATION OF OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over */
 
B99242e1='Total:'
B99242e2='Imputed'
B99242e3='Not Imputed'
/*IMPUTATION OF CLASS OF WORKER FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over */
 
B99243e1='Total:'
B99243e2='Imputed'
B99243e3='Not Imputed'
/*IMPUTATION OF INDUSTRY FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over */
 
B99244e1='Total:'
B99244e2='Imputed'
B99244e3='Not imputed'
/*IMPUTATION OF OCCUPATION FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over */
 
B99245e1='Total:'
B99245e2='Imputed'
B99245e3='Not imputed'
/*IMPUTATION OF CLASS OF WORKER FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over */
 
B99246e1='Total:'
B99246e2='Imputed'
B99246e3='Not imputed'
/*IMPUTATION OF KITCHEN FACILITIES */
/*Universe:  Housing units */
 
B992510e1='Total:'
B992510e2='Imputed'
B992510e3='Not imputed'
/*IMPUTATION OF HOUSE HEATING FUEL */
/*Universe:  Occupied housing units */
 
B992511e1='Total:'
B992511e2='Imputed'
B992511e3='Not imputed'
/*IMPUTATION OF VEHICLES AVAILABLE */
/*Universe:  Occupied housing units */
 
B992512e1='Total:'
B992512e2='Imputed'
B992512e3='Not imputed'
/*IMPUTATION OF TELEPHONE SERVICE AVAILABLE */
/*Universe:  Occupied housing units */
 
B992513e1='Total:'
B992513e2='Imputed'
B992513e3='Not imputed'
/*IMPUTATION OF MEALS INCLUDED IN RENT */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B992514e1='Total:'
B992514e2='Imputed'
B992514e3='Not imputed'
/*IMPUTATION OF CONTRACT RENT */
/*Universe:  Renter-occupied housing units */
 
B992515e1='Total:'
B992515e2='Imputed'
B992515e3='Not imputed'
/*IMPUTATION OF RENT ASKED */
/*Universe:  Vacant-for-rent and rented, not occupied housing units */
 
B992516e1='Total:'
B992516e2='Imputed'
B992516e3='Not imputed'
/*IMPUTATION OF GROSS RENT */
/*Universe:  Renter-occupied housing units */
 
B992518e1='Total:'
B992518e2='Imputed'
B992518e3='Not imputed'
/*IMPUTATION OF VALUE */
/*Universe:  Owner-occupied housing units */
 
B992519e1='Total:'
B992519e2='Imputed'
B992519e3='Not imputed'
/*IMPUTATION OF TENURE */
/*Universe:  Occupied housing units */
 
B99252e1='Total:'
B99252e2='Imputed'
B99252e3='Not imputed'
/*IMPUTATION OF PRICE ASKED */
/*Universe:  Vacant-for-sale-only and sold, not occupied housing units */
 
B992520e1='Total:'
B992520e2='Imputed'
B992520e3='Not imputed'
/*IMPUTATION OF MORTGAGE STATUS */
/*Universe:  Owner-occupied housing units */
 
B992521e1='Total:'
B992521e2='Imputed'
B992521e3='Not imputed'
/*IMPUTATION OF MORTGAGE STATUS AND SELECTED MONTHLY OWNER COSTS */
/*Universe:  Owner-occupied housing units */
 
B992522e1='Total:'
B992522e2='Housing units with a mortgage:'
/*Selected monthly owner costs -- */
B992522e3='One or more items imputed'
B992522e4='No items imputed'
B992522e5='Housing units without a mortgage:'
/*Selected monthly owner costs -- */
B992522e6='One or more items imputed'
B992522e7='No items imputed'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B99092e1
B99092e2
B99092e3
 
B99102e1
B99102e2
B99102e3
 
B99103e1
B99103e2
B99103e3
 
B99104e1
B99104e2
B99104e3
B99104e4
B99104e5
B99104e6
B99104e7
 
B99121e1
B99121e2
B99121e3
 
B99122e1
B99122e2
B99122e3
 
B99123e1
B99123e2
B99123e3
 
B99124e1
B99124e2
B99124e3
 
B99125e1
B99125e2
B99125e3
 
B99126e1
B99126e2
B99126e3
 
B99131e1
B99131e2
B99131e3
 
B99132e1
B99132e2
B99132e3
 
B99141e1
B99141e2
B99141e3
 
B99142e1
B99142e2
B99142e3
 
B99151e1
B99151e2
B99151e3
 
B99161e1
B99161e2
B99161e3
 
B99162e1
B99162e2
B99162e3
B99162e4
B99162e5
B99162e6
B99162e7
 
B99163e1
B99163e2
B99163e3
B99163e4
B99163e5
 
B99171e1
B99171e2
B99171e3
B99171e4
B99171e5
B99171e6
B99171e7
B99171e8
B99171e9
B99171e10
B99171e11
B99171e12
B99171e13
B99171e14
B99171e15
 
B99172e1
B99172e2
B99172e3
B99172e4
B99172e5
B99172e6
B99172e7
B99172e8
B99172e9
B99172e10
B99172e11
B99172e12
B99172e13
B99172e14
B99172e15
 
B99181e1
B99181e2
B99181e3
 
B99182e1
B99182e2
B99182e3
 
B99183e1
B99183e2
B99183e3
 
B99184e1
B99184e2
B99184e3
 
B99185e1
B99185e2
B99185e3
 
B99186e1
B99186e2
B99186e3
 
B99187e1
B99187e2
B99187e3
B99187e4
B99187e5
B99187e6
B99187e7
 
B99191e1
B99191e2
B99191e3
B99191e4
B99191e5
B99191e6
B99191e7
B99191e8
 
B99192e1
B99192e2
B99192e3
B99192e4
B99192e5
B99192e6
B99192e7
B99192e8
 
B99193e1
B99193e2
B99193e3
B99193e4
B99193e5
B99193e6
B99193e7
B99193e8
 
B99194e1
B99194e2
B99194e3
B99194e4
B99194e5
B99194e6
B99194e7
B99194e8
 
B99201e1
B99201e2
B99201e3
B99201e4
B99201e5
B99201e6
B99201e7
B99201e8
 
B99211e1
B99211e2
B99211e3
 
B99212e1
B99212e2
B99212e3
 
B99221e1
B99221e2
B99221e3
 
B99231e1
B99231e2
B99231e3
 
B99232e1
B99232e2
B99232e3
 
B99233e1
B99233e2
B99233e3
B99233e4
B99233e5
 
B99234e1
B99234e2
B99234e3
B99234e4
B99234e5
 
B99241e1
B99241e2
B99241e3
 
B99242e1
B99242e2
B99242e3
 
B99243e1
B99243e2
B99243e3
 
B99244e1
B99244e2
B99244e3
 
B99245e1
B99245e2
B99245e3
 
B99246e1
B99246e2
B99246e3
 
B992510e1
B992510e2
B992510e3
 
B992511e1
B992511e2
B992511e3
 
B992512e1
B992512e2
B992512e3
 
B992513e1
B992513e2
B992513e3
 
B992514e1
B992514e2
B992514e3
 
B992515e1
B992515e2
B992515e3
 
B992516e1
B992516e2
B992516e3
 
B992518e1
B992518e2
B992518e3
 
B992519e1
B992519e2
B992519e3
 
B99252e1
B99252e2
B99252e3
 
B992520e1
B992520e2
B992520e3
 
B992521e1
B992521e2
B992521e3
 
B992522e1
B992522e2
B992522e3
B992522e4
B992522e5
B992522e6
B992522e7
;
RUN;
TITLE2;
