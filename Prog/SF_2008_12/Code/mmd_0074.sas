TITLE2 "m20125md0074000";
DATA work.SFm0074md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0074000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*RECEIPT OF FOOD STAMPS/SNAP IN THE PAST 12 MONTHS BY PRESENCE OF PEOPLE 60 YEARS AND OVER FOR HOUSEHOLDS */
/*Universe:  Households */
 
B22001m1='Total:'
B22001m2='Household received Food Stamps/SNAP in the past 12 months:'
B22001m3='At least one person in household 60 years or over'
B22001m4='No people in household 60 years or over'
B22001m5='Household did not receive Food Stamps/SNAP in the past 12 months:'
B22001m6='At least one person in household 60 years or over'
B22001m7='No people in household 60 years or over'
/*RECEIPT OF FOOD STAMPS/SNAP IN THE PAST 12 MONTHS BY PRESENCE OF CHILDREN UNDER 18 YEARS BY HOUSEHOLD TYPE FOR HOUSEHOLDS */
/*Universe:  Households */
 
B22002m1='Total:'
B22002m2='Household received Food Stamps/SNAP in the past 12 months:'
B22002m3='With children under 18 years:'
B22002m4='Married-couple family'
B22002m5='Other family:'
B22002m6='Male householder, no wife present'
B22002m7='Female householder, no husband present'
B22002m8='Nonfamily households'
B22002m9='No children under 18 years:'
B22002m10='Married-couple family'
B22002m11='Other family:'
B22002m12='Male householder, no wife present'
B22002m13='Female householder, no husband present'
B22002m14='Nonfamily households'
B22002m15='Household did not receive Food Stamps/SNAP in the past 12 months:'
B22002m16='With children under 18 years:'
B22002m17='Married-couple family'
B22002m18='Other family:'
B22002m19='Male householder, no wife present'
B22002m20='Female householder, no husband present'
B22002m21='Nonfamily households'
B22002m22='No children under 18 years:'
B22002m23='Married-couple family'
B22002m24='Other family:'
B22002m25='Male householder, no wife present'
B22002m26='Female householder, no husband present'
B22002m27='Nonfamily households'
/*RECEIPT OF FOOD STAMPS/SNAP IN THE PAST 12 MONTHS BY POVERTY STATUS IN THE PAST 12 MONTHS FOR HOUSEHOLDS */
/*Universe:  Households */
 
B22003m1='Total:'
B22003m2='Household received Food Stamps/SNAP in the past 12 months:'
B22003m3='Income in the past 12 months below poverty level'
B22003m4='Income in the past 12 months at or above poverty level'
B22003m5='Household did not receive Food Stamps/SNAP in the past 12 months:'
B22003m6='Income in the past 12 months below poverty level'
B22003m7='Income in the past 12 months at or above poverty level'
/*RECEIPT OF FOOD STAMPS/SNAP IN THE PAST 12 MONTHS BY RACE OF HOUSEHOLDER (WHITE ALONE) */
/*Universe:  Households with a householder who is White alone */
 
B22005Am1='Total:'
B22005Am2='Household received Food Stamps/SNAP in the past 12 months'
B22005Am3='Household did not receive Food Stamps/SNAP in the past 12 months'
/*RECEIPT OF FOOD STAMPS/SNAP IN THE PAST 12 MONTHS BY RACE OF HOUSEHOLDER (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Households with a householder who is Black or African American alone */
 
B22005Bm1='Total:'
B22005Bm2='Household received Food Stamps/SNAP in the past 12 months'
B22005Bm3='Household did not receive Food Stamps/SNAP in the past 12 months'
/*RECEIPT OF FOOD STAMPS/SNAP IN THE PAST 12 MONTHS BY RACE OF HOUSEHOLDER (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  Households with a householder who is American Indian and Alaska Native alone */
 
B22005Cm1='Total:'
B22005Cm2='Household received Food Stamps/SNAP in the past 12 months'
B22005Cm3='Household did not receive Food Stamps/SNAP in the past 12 months'
/*RECEIPT OF FOOD STAMPS/SNAP IN THE PAST 12 MONTHS BY RACE OF HOUSEHOLDER (ASIAN ALONE) */
/*Universe:  Households with a householder who is Asian alone */
 
B22005Dm1='Total:'
B22005Dm2='Household received Food Stamps/SNAP in the past 12 months'
B22005Dm3='Household did not receive Food Stamps/SNAP in the past 12 months'
/*RECEIPT OF FOOD STAMPS/SNAP IN THE PAST 12 MONTHS BY RACE OF HOUSEHOLDER (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Households with a householder who is Native Hawaiian and Other Pacific Islander alone */
 
B22005Em1='Total:'
B22005Em2='Household received Food Stamps/SNAP in the past 12 months'
B22005Em3='Household did not receive Food Stamps/SNAP in the past 12 months'
/*RECEIPT OF FOOD STAMPS/SNAP IN THE PAST 12 MONTHS BY RACE OF HOUSEHOLDER (SOME OTHER RACE ALONE) */
/*Universe:  Households with a householder who is Some other race alone */
 
B22005Fm1='Total:'
B22005Fm2='Household received Food Stamps/SNAP in the past 12 months'
B22005Fm3='Household did not receive Food Stamps/SNAP in the past 12 months'
/*RECEIPT OF FOOD STAMPS/SNAP IN THE PAST 12 MONTHS BY RACE OF HOUSEHOLDER (TWO OR MORE RACES) */
/*Universe:  Households with a householder who is Two or more races */
 
B22005Gm1='Total:'
B22005Gm2='Household received Food Stamps/SNAP in the past 12 months'
B22005Gm3='Household did not receive Food Stamps/SNAP in the past 12 months'
/*RECEIPT OF FOOD STAMPS/SNAP IN THE PAST 12 MONTHS BY RACE OF HOUSEHOLDER (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  Households with a householder who is White alone, not Hispanic or Latino */
 
B22005Hm1='Total:'
B22005Hm2='Household received Food Stamps/SNAP in the past 12 months'
B22005Hm3='Household did not receive Food Stamps/SNAP in the past 12 months'
/*RECEIPT OF FOOD STAMPS/SNAP IN THE PAST 12 MONTHS BY RACE OF HOUSEHOLDER (HISPANIC OR LATINO) */
/*Universe:  Households with a householder who is Hispanic or Latino */
 
B22005Im1='Total:'
B22005Im2='Household received Food Stamps/SNAP in the past 12 months'
B22005Im3='Household did not receive Food Stamps/SNAP in the past 12 months'
/*RECEIPT OF FOOD STAMPS/SNAP IN THE PAST 12 MONTHS BY FAMILY TYPE BY NUMBER OF WORKERS IN FAMILY IN THE PAST 12 MONTHS */
/*Universe:  Families */
 
B22007m1='Total:'
B22007m2='Household received Food Stamps/SNAP in the past 12 months:'
B22007m3='Married-couple family:'
B22007m4='No workers'
B22007m5='1 worker'
B22007m6='2 workers:'
B22007m7='Husband and wife worked'
B22007m8='Other'
B22007m9='3 or more workers:'
B22007m10='Husband and wife worked'
B22007m11='Other'
B22007m12='Other family:'
B22007m13='Male householder, no wife present:'
B22007m14='No workers'
B22007m15='1 worker'
B22007m16='2 workers'
B22007m17='3 or more workers'
B22007m18='Female householder, no husband present:'
B22007m19='No workers'
B22007m20='1 worker'
B22007m21='2 workers'
B22007m22='3 or more workers'
B22007m23='Household did not receive Food Stamps/SNAP in the past 12 months:'
B22007m24='Married-couple family:'
B22007m25='No workers'
B22007m26='1 worker'
B22007m27='2 workers:'
B22007m28='Husband and wife worked'
B22007m29='Other'
B22007m30='3 or more workers:'
B22007m31='Husband and wife worked'
B22007m32='Other'
B22007m33='Other family:'
B22007m34='Male householder, no wife present:'
B22007m35='No workers'
B22007m36='1 worker'
B22007m37='2 workers'
B22007m38='3 or more workers'
B22007m39='Female householder, no husband present:'
B22007m40='No workers'
B22007m41='1 worker'
B22007m42='2 workers'
B22007m43='3 or more workers'
/*MEDIAN HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY RECEIPT OF FOOD STAMPS/SNAP IN THE PAST 12 MONTHS */
/*Universe:  Households */
/*Median household income in the past 12 months (in 2012 inflation-adjusted dollars)-- */
 
B22008m1='Total:'
B22008m2='Household received Food Stamps/SNAP in the past 12 months'
B22008m3='Household did not receive Food Stamps/SNAP in the past 12 months'
/*RECEIPT OF FOOD STAMPS/SNAP IN THE PAST 12 MONTHS BY DISABILITY STATUS FOR HOUSEHOLDS */
/*Universe:  Households */
 
B22010m1='Total:'
B22010m2='Household received Food Stamps/SNAP in the past 12 months:'
B22010m3='Households with 1 or more persons with a disability'
B22010m4='Households with no persons with a disability'
B22010m5='Household did not receive Food Stamps/SNAP in the past 12 months:'
B22010m6='Households with 1 or more persons with a disability'
B22010m7='Households with no persons with a disability'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B22001m1
B22001m2
B22001m3
B22001m4
B22001m5
B22001m6
B22001m7
 
B22002m1
B22002m2
B22002m3
B22002m4
B22002m5
B22002m6
B22002m7
B22002m8
B22002m9
B22002m10
B22002m11
B22002m12
B22002m13
B22002m14
B22002m15
B22002m16
B22002m17
B22002m18
B22002m19
B22002m20
B22002m21
B22002m22
B22002m23
B22002m24
B22002m25
B22002m26
B22002m27
 
B22003m1
B22003m2
B22003m3
B22003m4
B22003m5
B22003m6
B22003m7
 
B22005Am1
B22005Am2
B22005Am3
 
B22005Bm1
B22005Bm2
B22005Bm3
 
B22005Cm1
B22005Cm2
B22005Cm3
 
B22005Dm1
B22005Dm2
B22005Dm3
 
B22005Em1
B22005Em2
B22005Em3
 
B22005Fm1
B22005Fm2
B22005Fm3
 
B22005Gm1
B22005Gm2
B22005Gm3
 
B22005Hm1
B22005Hm2
B22005Hm3
 
B22005Im1
B22005Im2
B22005Im3
 
B22007m1
B22007m2
B22007m3
B22007m4
B22007m5
B22007m6
B22007m7
B22007m8
B22007m9
B22007m10
B22007m11
B22007m12
B22007m13
B22007m14
B22007m15
B22007m16
B22007m17
B22007m18
B22007m19
B22007m20
B22007m21
B22007m22
B22007m23
B22007m24
B22007m25
B22007m26
B22007m27
B22007m28
B22007m29
B22007m30
B22007m31
B22007m32
B22007m33
B22007m34
B22007m35
B22007m36
B22007m37
B22007m38
B22007m39
B22007m40
B22007m41
B22007m42
B22007m43
 
B22008m1
B22008m2
B22008m3
 
B22010m1
B22010m2
B22010m3
B22010m4
B22010m5
B22010m6
B22010m7
;
RUN;
TITLE2;
