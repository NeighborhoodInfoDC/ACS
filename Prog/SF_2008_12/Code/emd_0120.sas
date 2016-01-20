TITLE2 "e20125md0120000";
DATA work.SFe0120md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0120000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*IMPUTATION OF SELECTED MONTHLY OWNER COSTS FOR OWNER-OCCUPIED HOUSING UNITS */
/*Universe:  Owner-occupied housing units */
 
B992523e1='Total:'
B992523e2='1 or more items imputed'
B992523e3='Not imputed'
/*IMPUTATION OF VACANCY STATUS */
/*Universe:  Vacant housing units */
 
B99253e1='Total:'
B99253e2='Imputed'
B99253e3='Not imputed'
/*IMPUTATION OF ROOMS */
/*Universe:  Housing units */
 
B99254e1='Total:'
B99254e2='Imputed'
B99254e3='Not imputed'
/*IMPUTATION OF UNITS IN STRUCTURE */
/*Universe:  Housing units */
 
B99255e1='Total:'
B99255e2='Imputed'
B99255e3='Not imputed'
/*IMPUTATION OF YEAR STRUCTURE BUILT */
/*Universe:  Housing units */
 
B99256e1='Total:'
B99256e2='Imputed'
B99256e3='Not imputed'
/*IMPUTATION OF YEAR HOUSEHOLDER MOVED INTO UNIT */
/*Universe:  Occupied housing units */
 
B99257e1='Total:'
B99257e2='Imputed'
B99257e3='Not imputed'
/*IMPUTATION OF BEDROOMS */
/*Universe:  Housing units */
 
B99258e1='Total:'
B99258e2='Imputed'
B99258e3='Not imputed'
/*IMPUTATION OF PLUMBING FACILITIES */
/*Universe:  Housing units */
 
B99259e1='Total:'
B99259e2='Imputed'
B99259e3='Not imputed'
/*IMPUTATION OF HEALTH INSURANCE COVERAGE */
/*Universe: Civilian noninstitutionalized population */
 
B992701e1='Total:'
B992701e2='One or more health insurance items imputed'
B992701e3='No health insurance items imputed'
/*IMPUTATION OF PRIVATE HEALTH INSURANCE */
/*Universe: Civilian noninstitutionalized population */
 
B992702e1='Total:'
B992702e2='One or more private health insurance items imputed'
B992702e3='No private health insurance items imputed'
/*IMPUTATION OF PUBLIC HEALTH INSURANCE */
/*Universe: Civilian noninstitutionalized population */
 
B992703e1='Total:'
B992703e2='One or more public coverage items imputed'
B992703e3='No public coverage items imputed'
/*IMPUTATION OF EMPLOYER-BASED HEALTH INSURANCE */
/*Universe:  Civilian noninstitutionalized population */
 
B992704e1='Total:'
B992704e2='Imputed'
B992704e3='Not imputed'
/*IMPUTATION OF DIRECT-PURCHASE HEALTH INSURANCE */
/*Universe:  Civilian noninstitutionalized population */
 
B992705e1='Total:'
B992705e2='Imputed'
B992705e3='Not imputed'
/*IMPUTATION OF MEDICARE COVERAGE */
/*Universe:  Civilian noninstitutionalized population */
 
B992706e1='Total:'
B992706e2='Imputed'
B992706e3='Not imputed'
/*IMPUTATION OF MEDICAID/MEANS-TESTED PUBLIC COVERAGE */
/*Universe:  Civilian noninstitutionalized population */
 
B992707e1='Total:'
B992707e2='Imputed'
B992707e3='Not imputed'
/*IMPUTATION OF TRICARE/MILITARY HEALTH COVERAGE */
/*Universe:  Civilian noninstitutionalized population */
 
B992708e1='Total:'
B992708e2='Imputed'
B992708e3='Not imputed'
/*IMPUTATION OF VA HEALTH CARE */
/*Universe:  Civilian noninstitutionalized population */
 
B992709e1='Total:'
B992709e2='Imputed'
B992709e3='Not imputed'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B992523e1
B992523e2
B992523e3
 
B99253e1
B99253e2
B99253e3
 
B99254e1
B99254e2
B99254e3
 
B99255e1
B99255e2
B99255e3
 
B99256e1
B99256e2
B99256e3
 
B99257e1
B99257e2
B99257e3
 
B99258e1
B99258e2
B99258e3
 
B99259e1
B99259e2
B99259e3
 
B992701e1
B992701e2
B992701e3
 
B992702e1
B992702e2
B992702e3
 
B992703e1
B992703e2
B992703e3
 
B992704e1
B992704e2
B992704e3
 
B992705e1
B992705e2
B992705e3
 
B992706e1
B992706e2
B992706e3
 
B992707e1
B992707e2
B992707e3
 
B992708e1
B992708e2
B992708e3
 
B992709e1
B992709e2
B992709e3
;
RUN;
TITLE2;
