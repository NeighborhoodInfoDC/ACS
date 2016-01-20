TITLE2 "m20125dc0119000";
DATA work.SFm0119dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0119000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*IMPUTATION OF RELATIONSHIP */
/*Universe:  Population in households */
 
B99092m1='Total:'
B99092m2='Imputed'
B99092m3='Not imputed'
/*IMPUTATION OF GRANDPARENTS LIVING WITH GRANDCHILDREN UNDER 18 YEARS */
/*Universe:  Population 30 years and over */
 
B99102m1='Total:'
B99102m2='Imputed'
B99102m3='Not imputed'
/*IMPUTATION OF GRANDPARENTS RESPONSIBLE FOR GRANDCHILDREN UNDER 18 YEARS */
/*Universe:  Grandparents living with own grandchildren under 18 years */
 
B99103m1='Total:'
B99103m2='Imputed'
B99103m3='Not imputed'
/*IMPUTATION OF LENGTH OF TIME GRANDPARENT RESPONSIBLE FOR OWN GRANDCHILDREN UNDER 18 YEARS FOR THE POPULATION 30 YEARS AND OVER */
/*Universe:  Population 30 years and over */
 
B99104m1='Total:'
B99104m2='Living with own grandchildren under 18 years:'
B99104m3='Grandparent responsible for own grandchildren under 18 years:'
/*Length of time -- */
B99104m4='Imputed'
B99104m5='Not imputed'
B99104m6='Grandparent not responsible for own grandchildren under 18 years'
B99104m7='Not living with own grandchildren under 18 years'
/*IMPUTATION OF MARITAL STATUS FOR THE POPULATION 15 YEARS AND OVER */
/*Universe:  Population 15 years and over */
 
B99121m1='Total:'
B99121m2='Imputed'
B99121m3='Not imputed'
/*IMPUTATION OF DIVORCED IN THE PAST 12 MONTHS FOR THE POPULATION 15 YEARS AND OVER */
/*Universe:  Population 15 years and over */
 
B99122m1='Total:'
B99122m2='Imputed'
B99122m3='Not imputed'
/*IMPUTATION OF MARRIED IN THE PAST 12 MONTHS FOR THE POPULATION 15 YEARS AND OVER */
/*Universe:  Population 15 years and over */
 
B99123m1='Total:'
B99123m2='Imputed'
B99123m3='Not imputed'
/*IMPUTATION OF WIDOWED IN THE PAST 12 MONTHS FOR THE POPULATION 15 YEARS AND OVER */
/*Universe:  Population 15 years and over */
 
B99124m1='Total:'
B99124m2='Imputed'
B99124m3='Not imputed'
/*IMPUTATION OF TIMES MARRIED FOR THE POPULATION 15 YEARS AND OVER */
/*Universe:  Population 15 years and over */
 
B99125m1='Total:'
B99125m2='Imputed'
B99125m3='Not imputed'
/*IMPUTATION OF YEAR LAST MARRIED FOR THE POPULATION 15 YEARS AND OVER */
/*Universe:  Population 15 years and over */
 
B99126m1='Total:'
B99126m2='Imputed'
B99126m3='Not imputed'
/*IMPUTATION OF MARITAL STATUS FOR FEMALES 15 TO 50 YEARS */
/*Universe:  Women 15 to 50 years */
 
B99131m1='Total:'
B99131m2='Imputed'
B99131m3='Not imputed'
/*IMPUTATION OF FERTILITY OF WOMEN 15 TO 50 YEARS */
/*Universe:  Women 15 to 50 years */
 
B99132m1='Total:'
B99132m2='Imputed'
B99132m3='Not imputed'
/*IMPUTATION OF SCHOOL ENROLLMENT FOR THE POPULATION 3 YEARS AND OVER */
/*Universe:  Population 3 years and over */
 
B99141m1='Total:'
B99141m2='Imputed'
B99141m3='Not imputed'
/*IMPUTATION OF GRADE ENROLLED FOR THE POPULATION 3 YEARS AND OVER ENROLLED IN SCHOOL */
/*Universe:  Population 3 years and over enrolled in school */
 
B99142m1='Total:'
B99142m2='Imputed'
B99142m3='Not imputed'
/*IMPUTATION OF EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER */
/*Universe:  Population 25 years and over */
 
B99151m1='Total:'
B99151m2='Imputed'
B99151m3='Not imputed'
/*IMPUTATION OF LANGUAGE STATUS FOR THE POPULATION 5 YEARS AND OVER */
/*Universe:  Population 5 years and over */
 
B99161m1='Total:'
B99161m2='Imputed'
B99161m3='Not imputed'
/*IMPUTATION OF LANGUAGE SPOKEN AT HOME FOR THE POPULATION 5 YEARS AND OVER */
/*Universe:  Population 5 years and over */
 
B99162m1='Total:'
B99162m2='Speak only English'
B99162m3='Speak other languages:'
/*Specific languages spoken -- */
B99162m4='Imputed:'
B99162m5='Language status imputed'
B99162m6='Language status not imputed'
B99162m7='Not imputed'
/*IMPUTATION OF ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER */
/*Universe:  Population 5 years and over */
 
B99163m1='Total:'
B99163m2='Speak only English'
B99163m3='Speak other languages:'
/*Ability to speak English -- */
B99163m4='Imputed'
B99163m5='Not imputed'
/*IMPUTATION OF POVERTY STATUS IN THE PAST 12 MONTHS FOR UNRELATED INDIVIDUALS */
/*Universe:  Unrelated individuals 15 years and over for whom poverty status is determined */
 
B99171m1='Total:'
/*Percent of income imputed for individuals with income in the past 12 months below poverty level -- */
B99171m2='No income imputed'
B99171m3='Dollar value of zero imputed'
B99171m4='More than 0 to less than 10 percent of total income for individual imputed'
B99171m5='10 to less than 25 percent of total income for individual imputed'
B99171m6='25 to less than 50 percent of total income for individual imputed'
B99171m7='50 to less than 100 percent of total income for individual imputed'
B99171m8='100 percent of total income for individual imputed'
/*Percent of income imputed for individuals with income in the past 12 months at or above poverty level -- */
B99171m9='No income imputed'
B99171m10='Dollar value of zero imputed'
B99171m11='More than 0 to less than 10 percent of total income for individual imputed'
B99171m12='10 to less than 25 percent of total income for individual imputed'
B99171m13='25 to less than 50 percent of total income for individual imputed'
B99171m14='50 to less than 100 percent of total income for individual imputed'
B99171m15='100 percent of total income for individual imputed'
/*IMPUTATION OF POVERTY STATUS IN THE PAST 12 MONTHS FOR FAMILIES */
/*Universe:  Families */
 
B99172m1='Total:'
/*Percent of family income imputed for families with income in the past 12 months below poverty level -- */
B99172m2='No income imputed'
B99172m3='Dollar value of zero imputed'
B99172m4='More than 0 to less than 10 percent of total income for family imputed'
B99172m5='10 to less than 25 percent of total income for family imputed'
B99172m6='25 to less than 50 percent of total income for family imputed'
B99172m7='50 to less than 100 percent of total income for family imputed'
B99172m8='100 percent of total income for family imputed'
/*Percent of family income imputed for families with income in the past 12 months at or above poverty level -- */
B99172m9='No income imputed'
B99172m10='Dollar value of zero imputed'
B99172m11='More than 0 to less than 10 percent of total income for family imputed'
B99172m12='10 to less than 25 percent of total income for family imputed'
B99172m13='25 to less than 50 percent of total income for family imputed'
B99172m14='50 to less than 100 percent of total income for family imputed'
B99172m15='100 percent of total income for family imputed'
/*IMPUTATION OF DISABILITY ITEMS FOR THE CIVILIAN NONINSTITUTIONALIZED POPULATION */
/*Universe: Civilian noninstitutionalized population */
 
B99181m1='Total:'
B99181m2='One or more disability items imputed'
B99181m3='No disability items imputed'
/*IMPUTATION OF HEARING DIFFICULTY FOR THE CIVILIAN NONINSTITUTIONALIZED POPULATION */
/*Universe: Civilian noninstitutionalized population */
 
B99182m1='Total:'
B99182m2='Imputed'
B99182m3='Not imputed'
/*IMPUTATION OF VISION DIFFICULTY FOR THE CIVILIAN NONINSTITUTIONALIZED POPULATION */
/*Universe: Civilian noninstitutionalized population */
 
B99183m1='Total:'
B99183m2='Imputed'
B99183m3='Not imputed'
/*IMPUTATION OF COGNITIVE DIFFICULTY FOR THE CIVILIAN NONINSTITUTIONALIZED POPULATION 5 YEARS AND OVER */
/*Universe: Civilian noninstitutionalized population 5 years and over */
 
B99184m1='Total:'
B99184m2='Imputed'
B99184m3='Not imputed'
/*IMPUTATION OF AMBULATORY DIFFICULTY FOR THE CIVILIAN NONINSTITUTIONALIZED POPULATION 5 YEARS AND OVER */
/*Universe: Civilian noninstitutionalized population 5 years and over */
 
B99185m1='Total:'
B99185m2='Imputed'
B99185m3='Not imputed'
/*IMPUTATION OF SELF-CARE DIFFICULTY FOR THE CIVILIAN NONINSTITUTIONALIZED POPULATION 5 YEARS AND OVER */
/*Universe: Civilian noninstitutionalized population 5 years and over */
 
B99186m1='Total:'
B99186m2='Imputed'
B99186m3='Not imputed'
/*AGE BY IMPUTATION OF INDEPENDENT LIVING DIFFICULTY FOR THE CIVILIAN NONINSTITUTIONALIZED POPULATION 15 YEARS AND OVER */
/*Universe: Civilian noninstitutionalized population 15 years and over */
 
B99187m1='Total:'
B99187m2='15 to 17 years:'
B99187m3='Imputed'
B99187m4='Not imputed'
B99187m5='18 years and over:'
B99187m6='Imputed'
B99187m7='Not imputed'
/*IMPUTATION OF INDIVIDUALS'' INCOME IN THE PAST 12 MONTHS FOR THE POPULATION 15 YEARS AND OVER - PERCENT OF INCOME IMPUTED */
/*Universe:  Population 15 years and over */
 
B99191m1='Total:'
/*Percent of income imputed -- */
B99191m2='No income imputed'
B99191m3='Dollar value of zero imputed'
B99191m4='More than 0 to less than 10 percent of total income for individual imputed'
B99191m5='10 to less than 25 percent of total income for individual imputed'
B99191m6='25 to less than 50 percent of total income for individual imputed'
B99191m7='50 to less than 100 percent of total income for individual imputed'
B99191m8='100 percent of total income for individual imputed'
/*IMPUTATION OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS - PERCENT OF INCOME IMPUTED */
/*Universe:  Households */
 
B99192m1='Total:'
/*Percent of income imputed -- */
B99192m2='No income imputed'
B99192m3='Dollar value of zero imputed'
B99192m4='More than 0 to less than 10 percent of total income for household imputed'
B99192m5='10 to less than 25 percent of total income for household imputed'
B99192m6='25 to less than 50 percent of total income for household imputed'
B99192m7='50 to less than 100 percent of total income for household imputed'
B99192m8='100 percent of total income for household imputed'
/*IMPUTATION OF FAMILY INCOME IN THE PAST 12 MONTHS -- PERCENT OF INCOME IMPUTED */
/*Universe:  Families */
 
B99193m1='Total:'
/*Percent of income imputed -- */
B99193m2='No income imputed'
B99193m3='Dollar value of zero imputed'
B99193m4='More than 0 to less than 10 percent of total income for family imputed'
B99193m5='10 to less than 25 percent of total income for family imputed'
B99193m6='25 to less than 50 percent of total income for family imputed'
B99193m7='50 to less than 100 percent of total income for family imputed'
B99193m8='100 percent of total income for family imputed'
/*IMPUTATION OF NONFAMILY HOUSEHOLD INCOME IN THE PAST 12 MONTHS -- PERCENT OF INCOME IMPUTED */
/*Universe:  Nonfamily households */
 
B99194m1='Total:'
/*Percent of income imputed -- */
B99194m2='No income imputed'
B99194m3='Dollar value of zero imputed'
B99194m4='More than 0 to less than 10 percent of total income for household imputed'
B99194m5='10 to less than 25 percent of total income for household imputed'
B99194m6='25 to less than 50 percent of total income for household imputed'
B99194m7='50 to less than 100 percent of total income for household imputed'
B99194m8='100 percent of total income for household imputed'
/*IMPUTATION OF EARNINGS IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER - PERCENT OF EARNINGS IMPUTED */
/*Universe:  Population 16 years and over */
 
B99201m1='Total:'
/*Percent of earnings imputed -- */
B99201m2='No earnings imputed'
B99201m3='Dollar value of zero imputed'
B99201m4='More than 0 to less than 10 percent of total earnings for individual imputed'
B99201m5='10 to less than 25 percent of total earnings for individual imputed'
B99201m6='25 to less than 50 percent of total earnings for individual imputed'
B99201m7='50 to less than 100 percent of total earnings for individual imputed'
B99201m8='100 percent of total earnings for individual imputed'
/*IMPUTATION OF VETERAN STATUS FOR THE POPULATION 18 YEARS AND OVER */
/*Universe:  Population 18 years and over */
 
B99211m1='Total:'
B99211m2='Imputed'
B99211m3='Not imputed'
/*IMPUTATION OF PERIOD OF MILITARY SERVICE FOR CIVILIAN VETERANS 18 YEARS AND OVER */
/*Universe:  Civilian veterans 18 years and over */
 
B99212m1='Total:'
B99212m2='Imputed'
B99212m3='Not imputed'
/*IMPUTATION OF FOOD STAMPS/SNAP RECEIPT */
/*Universe:  Households */
 
B99221m1='Total:'
B99221m2='Imputed'
B99221m3='Not imputed'
/*IMPUTATION OF EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER */
/*Universe:  Population 16 years and over */
 
B99231m1='Total:'
B99231m2='Imputed'
B99231m3='Not imputed'
/*IMPUTATION OF WORK STATUS IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER */
/*Universe:  Population 16 years and over */
 
B99232m1='Total:'
B99232m2='Imputed'
B99232m3='Not imputed'
/*IMPUTATION OF USUAL HOURS WORKED PER WEEK IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER */
/*Universe:  Population 16 years and over */
 
B99233m1='Total:'
B99233m2='Worked in the past 12 months:'
/*Usual hours worked per week in the past 12 months -- */
B99233m3='Imputed'
B99233m4='Not imputed'
B99233m5='Did not work in the past 12 months'
/*IMPUTATION OF WEEKS WORKED IN THE PAST 12 MONTHS FOR THE POPULATION 16 YEARS AND OVER */
/*Universe:  Population 16 years and over */
 
B99234m1='Total:'
B99234m2='Worked in the past 12 months:'
/*Weeks worked in the past 12 months -- */
B99234m3='Imputed'
B99234m4='Not imputed'
B99234m5='Did not work in the past 12 months'
/*IMPUTATION OF INDUSTRY FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over */
 
B99241m1='Total:'
B99241m2='Imputed'
B99241m3='Not Imputed'
/*IMPUTATION OF OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over */
 
B99242m1='Total:'
B99242m2='Imputed'
B99242m3='Not Imputed'
/*IMPUTATION OF CLASS OF WORKER FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Civilian employed population 16 years and over */
 
B99243m1='Total:'
B99243m2='Imputed'
B99243m3='Not Imputed'
/*IMPUTATION OF INDUSTRY FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over */
 
B99244m1='Total:'
B99244m2='Imputed'
B99244m3='Not imputed'
/*IMPUTATION OF OCCUPATION FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over */
 
B99245m1='Total:'
B99245m2='Imputed'
B99245m3='Not imputed'
/*IMPUTATION OF CLASS OF WORKER FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over */
 
B99246m1='Total:'
B99246m2='Imputed'
B99246m3='Not imputed'
/*IMPUTATION OF KITCHEN FACILITIES */
/*Universe:  Housing units */
 
B992510m1='Total:'
B992510m2='Imputed'
B992510m3='Not imputed'
/*IMPUTATION OF HOUSE HEATING FUEL */
/*Universe:  Occupied housing units */
 
B992511m1='Total:'
B992511m2='Imputed'
B992511m3='Not imputed'
/*IMPUTATION OF VEHICLES AVAILABLE */
/*Universe:  Occupied housing units */
 
B992512m1='Total:'
B992512m2='Imputed'
B992512m3='Not imputed'
/*IMPUTATION OF TELEPHONE SERVICE AVAILABLE */
/*Universe:  Occupied housing units */
 
B992513m1='Total:'
B992513m2='Imputed'
B992513m3='Not imputed'
/*IMPUTATION OF MEALS INCLUDED IN RENT */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B992514m1='Total:'
B992514m2='Imputed'
B992514m3='Not imputed'
/*IMPUTATION OF CONTRACT RENT */
/*Universe:  Renter-occupied housing units */
 
B992515m1='Total:'
B992515m2='Imputed'
B992515m3='Not imputed'
/*IMPUTATION OF RENT ASKED */
/*Universe:  Vacant-for-rent and rented, not occupied housing units */
 
B992516m1='Total:'
B992516m2='Imputed'
B992516m3='Not imputed'
/*IMPUTATION OF GROSS RENT */
/*Universe:  Renter-occupied housing units */
 
B992518m1='Total:'
B992518m2='Imputed'
B992518m3='Not imputed'
/*IMPUTATION OF VALUE */
/*Universe:  Owner-occupied housing units */
 
B992519m1='Total:'
B992519m2='Imputed'
B992519m3='Not imputed'
/*IMPUTATION OF TENURE */
/*Universe:  Occupied housing units */
 
B99252m1='Total:'
B99252m2='Imputed'
B99252m3='Not imputed'
/*IMPUTATION OF PRICE ASKED */
/*Universe:  Vacant-for-sale-only and sold, not occupied housing units */
 
B992520m1='Total:'
B992520m2='Imputed'
B992520m3='Not imputed'
/*IMPUTATION OF MORTGAGE STATUS */
/*Universe:  Owner-occupied housing units */
 
B992521m1='Total:'
B992521m2='Imputed'
B992521m3='Not imputed'
/*IMPUTATION OF MORTGAGE STATUS AND SELECTED MONTHLY OWNER COSTS */
/*Universe:  Owner-occupied housing units */
 
B992522m1='Total:'
B992522m2='Housing units with a mortgage:'
/*Selected monthly owner costs -- */
B992522m3='One or more items imputed'
B992522m4='No items imputed'
B992522m5='Housing units without a mortgage:'
/*Selected monthly owner costs -- */
B992522m6='One or more items imputed'
B992522m7='No items imputed'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B99092m1
B99092m2
B99092m3
 
B99102m1
B99102m2
B99102m3
 
B99103m1
B99103m2
B99103m3
 
B99104m1
B99104m2
B99104m3
B99104m4
B99104m5
B99104m6
B99104m7
 
B99121m1
B99121m2
B99121m3
 
B99122m1
B99122m2
B99122m3
 
B99123m1
B99123m2
B99123m3
 
B99124m1
B99124m2
B99124m3
 
B99125m1
B99125m2
B99125m3
 
B99126m1
B99126m2
B99126m3
 
B99131m1
B99131m2
B99131m3
 
B99132m1
B99132m2
B99132m3
 
B99141m1
B99141m2
B99141m3
 
B99142m1
B99142m2
B99142m3
 
B99151m1
B99151m2
B99151m3
 
B99161m1
B99161m2
B99161m3
 
B99162m1
B99162m2
B99162m3
B99162m4
B99162m5
B99162m6
B99162m7
 
B99163m1
B99163m2
B99163m3
B99163m4
B99163m5
 
B99171m1
B99171m2
B99171m3
B99171m4
B99171m5
B99171m6
B99171m7
B99171m8
B99171m9
B99171m10
B99171m11
B99171m12
B99171m13
B99171m14
B99171m15
 
B99172m1
B99172m2
B99172m3
B99172m4
B99172m5
B99172m6
B99172m7
B99172m8
B99172m9
B99172m10
B99172m11
B99172m12
B99172m13
B99172m14
B99172m15
 
B99181m1
B99181m2
B99181m3
 
B99182m1
B99182m2
B99182m3
 
B99183m1
B99183m2
B99183m3
 
B99184m1
B99184m2
B99184m3
 
B99185m1
B99185m2
B99185m3
 
B99186m1
B99186m2
B99186m3
 
B99187m1
B99187m2
B99187m3
B99187m4
B99187m5
B99187m6
B99187m7
 
B99191m1
B99191m2
B99191m3
B99191m4
B99191m5
B99191m6
B99191m7
B99191m8
 
B99192m1
B99192m2
B99192m3
B99192m4
B99192m5
B99192m6
B99192m7
B99192m8
 
B99193m1
B99193m2
B99193m3
B99193m4
B99193m5
B99193m6
B99193m7
B99193m8
 
B99194m1
B99194m2
B99194m3
B99194m4
B99194m5
B99194m6
B99194m7
B99194m8
 
B99201m1
B99201m2
B99201m3
B99201m4
B99201m5
B99201m6
B99201m7
B99201m8
 
B99211m1
B99211m2
B99211m3
 
B99212m1
B99212m2
B99212m3
 
B99221m1
B99221m2
B99221m3
 
B99231m1
B99231m2
B99231m3
 
B99232m1
B99232m2
B99232m3
 
B99233m1
B99233m2
B99233m3
B99233m4
B99233m5
 
B99234m1
B99234m2
B99234m3
B99234m4
B99234m5
 
B99241m1
B99241m2
B99241m3
 
B99242m1
B99242m2
B99242m3
 
B99243m1
B99243m2
B99243m3
 
B99244m1
B99244m2
B99244m3
 
B99245m1
B99245m2
B99245m3
 
B99246m1
B99246m2
B99246m3
 
B992510m1
B992510m2
B992510m3
 
B992511m1
B992511m2
B992511m3
 
B992512m1
B992512m2
B992512m3
 
B992513m1
B992513m2
B992513m3
 
B992514m1
B992514m2
B992514m3
 
B992515m1
B992515m2
B992515m3
 
B992516m1
B992516m2
B992516m3
 
B992518m1
B992518m2
B992518m3
 
B992519m1
B992519m2
B992519m3
 
B99252m1
B99252m2
B99252m3
 
B992520m1
B992520m2
B992520m3
 
B992521m1
B992521m2
B992521m3
 
B992522m1
B992522m2
B992522m3
B992522m4
B992522m5
B992522m6
B992522m7
;
RUN;
TITLE2;
