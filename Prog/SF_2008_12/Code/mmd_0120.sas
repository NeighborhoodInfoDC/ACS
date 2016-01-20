TITLE2 "m20125md0120000";
DATA work.SFm0120md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0120000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*IMPUTATION OF SELECTED MONTHLY OWNER COSTS FOR OWNER-OCCUPIED HOUSING UNITS */
/*Universe:  Owner-occupied housing units */
 
B992523m1='Total:'
B992523m2='1 or more items imputed'
B992523m3='Not imputed'
/*IMPUTATION OF VACANCY STATUS */
/*Universe:  Vacant housing units */
 
B99253m1='Total:'
B99253m2='Imputed'
B99253m3='Not imputed'
/*IMPUTATION OF ROOMS */
/*Universe:  Housing units */
 
B99254m1='Total:'
B99254m2='Imputed'
B99254m3='Not imputed'
/*IMPUTATION OF UNITS IN STRUCTURE */
/*Universe:  Housing units */
 
B99255m1='Total:'
B99255m2='Imputed'
B99255m3='Not imputed'
/*IMPUTATION OF YEAR STRUCTURE BUILT */
/*Universe:  Housing units */
 
B99256m1='Total:'
B99256m2='Imputed'
B99256m3='Not imputed'
/*IMPUTATION OF YEAR HOUSEHOLDER MOVED INTO UNIT */
/*Universe:  Occupied housing units */
 
B99257m1='Total:'
B99257m2='Imputed'
B99257m3='Not imputed'
/*IMPUTATION OF BEDROOMS */
/*Universe:  Housing units */
 
B99258m1='Total:'
B99258m2='Imputed'
B99258m3='Not imputed'
/*IMPUTATION OF PLUMBING FACILITIES */
/*Universe:  Housing units */
 
B99259m1='Total:'
B99259m2='Imputed'
B99259m3='Not imputed'
/*IMPUTATION OF HEALTH INSURANCE COVERAGE */
/*Universe: Civilian noninstitutionalized population */
 
B992701m1='Total:'
B992701m2='One or more health insurance items imputed'
B992701m3='No health insurance items imputed'
/*IMPUTATION OF PRIVATE HEALTH INSURANCE */
/*Universe: Civilian noninstitutionalized population */
 
B992702m1='Total:'
B992702m2='One or more private health insurance items imputed'
B992702m3='No private health insurance items imputed'
/*IMPUTATION OF PUBLIC HEALTH INSURANCE */
/*Universe: Civilian noninstitutionalized population */
 
B992703m1='Total:'
B992703m2='One or more public coverage items imputed'
B992703m3='No public coverage items imputed'
/*IMPUTATION OF EMPLOYER-BASED HEALTH INSURANCE */
/*Universe:  Civilian noninstitutionalized population */
 
B992704m1='Total:'
B992704m2='Imputed'
B992704m3='Not imputed'
/*IMPUTATION OF DIRECT-PURCHASE HEALTH INSURANCE */
/*Universe:  Civilian noninstitutionalized population */
 
B992705m1='Total:'
B992705m2='Imputed'
B992705m3='Not imputed'
/*IMPUTATION OF MEDICARE COVERAGE */
/*Universe:  Civilian noninstitutionalized population */
 
B992706m1='Total:'
B992706m2='Imputed'
B992706m3='Not imputed'
/*IMPUTATION OF MEDICAID/MEANS-TESTED PUBLIC COVERAGE */
/*Universe:  Civilian noninstitutionalized population */
 
B992707m1='Total:'
B992707m2='Imputed'
B992707m3='Not imputed'
/*IMPUTATION OF TRICARE/MILITARY HEALTH COVERAGE */
/*Universe:  Civilian noninstitutionalized population */
 
B992708m1='Total:'
B992708m2='Imputed'
B992708m3='Not imputed'
/*IMPUTATION OF VA HEALTH CARE */
/*Universe:  Civilian noninstitutionalized population */
 
B992709m1='Total:'
B992709m2='Imputed'
B992709m3='Not imputed'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B992523m1
B992523m2
B992523m3
 
B99253m1
B99253m2
B99253m3
 
B99254m1
B99254m2
B99254m3
 
B99255m1
B99255m2
B99255m3
 
B99256m1
B99256m2
B99256m3
 
B99257m1
B99257m2
B99257m3
 
B99258m1
B99258m2
B99258m3
 
B99259m1
B99259m2
B99259m3
 
B992701m1
B992701m2
B992701m3
 
B992702m1
B992702m2
B992702m3
 
B992703m1
B992703m2
B992703m3
 
B992704m1
B992704m2
B992704m3
 
B992705m1
B992705m2
B992705m3
 
B992706m1
B992706m2
B992706m3
 
B992707m1
B992707m2
B992707m3
 
B992708m1
B992708m2
B992708m3
 
B992709m1
B992709m2
B992709m3
;
RUN;
TITLE2;
