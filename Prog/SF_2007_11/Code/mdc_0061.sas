TITLE2 "m20115dc0061000";
DATA work.SFm0061dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0061000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (SOME OTHER RACE ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is Some other race alone */
 
B19101Fm1='Total:'
B19101Fm2='Less than $10,000'
B19101Fm3='$10,000 to $14,999'
B19101Fm4='$15,000 to $19,999'
B19101Fm5='$20,000 to $24,999'
B19101Fm6='$25,000 to $29,999'
B19101Fm7='$30,000 to $34,999'
B19101Fm8='$35,000 to $39,999'
B19101Fm9='$40,000 to $44,999'
B19101Fm10='$45,000 to $49,999'
B19101Fm11='$50,000 to $59,999'
B19101Fm12='$60,000 to $74,999'
B19101Fm13='$75,000 to $99,999'
B19101Fm14='$100,000 to $124,999'
B19101Fm15='$125,000 to $149,999'
B19101Fm16='$150,000 to $199,999'
B19101Fm17='$200,000 or more'
 
/*FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (TWO OR MORE RACES HOUSEHOLDER) */
/*Universe:  Families with a householder who is Two or more races */
 
B19101Gm1='Total:'
B19101Gm2='Less than $10,000'
B19101Gm3='$10,000 to $14,999'
B19101Gm4='$15,000 to $19,999'
B19101Gm5='$20,000 to $24,999'
B19101Gm6='$25,000 to $29,999'
B19101Gm7='$30,000 to $34,999'
B19101Gm8='$35,000 to $39,999'
B19101Gm9='$40,000 to $44,999'
B19101Gm10='$45,000 to $49,999'
B19101Gm11='$50,000 to $59,999'
B19101Gm12='$60,000 to $74,999'
B19101Gm13='$75,000 to $99,999'
B19101Gm14='$100,000 to $124,999'
B19101Gm15='$125,000 to $149,999'
B19101Gm16='$150,000 to $199,999'
B19101Gm17='$200,000 or more'
 
/*FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (WHITE ALONE, NOT HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Families with a householder who is White alone, not Hispanic or Latino */
 
B19101Hm1='Total:'
B19101Hm2='Less than $10,000'
B19101Hm3='$10,000 to $14,999'
B19101Hm4='$15,000 to $19,999'
B19101Hm5='$20,000 to $24,999'
B19101Hm6='$25,000 to $29,999'
B19101Hm7='$30,000 to $34,999'
B19101Hm8='$35,000 to $39,999'
B19101Hm9='$40,000 to $44,999'
B19101Hm10='$45,000 to $49,999'
B19101Hm11='$50,000 to $59,999'
B19101Hm12='$60,000 to $74,999'
B19101Hm13='$75,000 to $99,999'
B19101Hm14='$100,000 to $124,999'
B19101Hm15='$125,000 to $149,999'
B19101Hm16='$150,000 to $199,999'
B19101Hm17='$200,000 or more'
 
/*FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Families with a householder who is Hispanic or Latino */
 
B19101Im1='Total:'
B19101Im2='Less than $10,000'
B19101Im3='$10,000 to $14,999'
B19101Im4='$15,000 to $19,999'
B19101Im5='$20,000 to $24,999'
B19101Im6='$25,000 to $29,999'
B19101Im7='$30,000 to $34,999'
B19101Im8='$35,000 to $39,999'
B19101Im9='$40,000 to $44,999'
B19101Im10='$45,000 to $49,999'
B19101Im11='$50,000 to $59,999'
B19101Im12='$60,000 to $74,999'
B19101Im13='$75,000 to $99,999'
B19101Im14='$100,000 to $124,999'
B19101Im15='$125,000 to $149,999'
B19101Im16='$150,000 to $199,999'
B19101Im17='$200,000 or more'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Families */
 
B19113m1='Median family income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (WHITE ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is White alone */
 
B19113Am1='Median family income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (BLACK OR AFRICAN AMERICAN ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is Black or African American alone */
 
B19113Bm1='Median family income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (AMERICAN INDIAN AND ALASKA NATIVE ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is American Indian and Alaska Native alone */
 
B19113Cm1='Median family income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (ASIAN ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is Asian alone */
 
B19113Dm1='Median family income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is Native Hawaiian and Other Pacific Islander alone */
 
B19113Em1='Median family income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (SOME OTHER RACE ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is Some other race alone */
 
B19113Fm1='Median family income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (TWO OR MORE RACES) */
/*Universe:  Families with a householder who is Two or more races */
 
B19113Gm1='Median family income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (WHITE ALONE, NOT HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Families with a householder who is White alone, not Hispanic or Latino */
 
B19113Hm1='Median family income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Families with a householder who is Hispanic or Latino */
 
B19113Im1='Median family income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY FAMILY SIZE */
/*Universe:  Families */
 
B19119m1='Total:'
B19119m2='2-person families'
B19119m3='3-person families'
B19119m4='4-person families'
B19119m5='5-person families'
B19119m6='6-person families'
B19119m7='7-or-more-person families'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY NUMBER OF EARNERS IN FAMILY */
/*Universe:  Families */
 
B19121m1='Total:'
B19121m2='No earners (dollars)'
B19121m3='1 earner (dollars)'
B19121m4='2 earners (dollars)'
B19121m5='3 or more earners (dollars)'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY PRESENCE OF OWN CHILDREN UNDER 18 YEARS */
/*Universe:  Families */
/*Median family income in the past 12 months (in 2011 inflation-adjusted dollars) -- */
 
B19125m1='Total:'
B19125m2='With own children under 18 years'
B19125m3='No own children under 18 years'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY FAMILY TYPE BY PRESENCE OF OWN CHILDREN UNDER 18 YEARS */
/*Universe:  Families */
/*Median family income in the past 12 months (in 2011 inflation-adjusted dollars) -- */
 
B19126m1='Total:'
/*Married-couple family -- */
B19126m2='Total'
B19126m3='With own children under 18 years'
B19126m4='No own children under 18 years'
/*Other family -- */
B19126m5='Total'
/*Male householder, no wife present -- */
B19126m6='Total'
B19126m7='With own children under 18 years'
B19126m8='No own children under 18 years'
/*Female householder, no husband present -- */
B19126m9='Total'
B19126m10='With own children under 18 years'
B19126m11='No own children under 18 years'
 
/*AGGREGATE FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Families */
 
B19127m1='Aggregate family income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*AGGREGATE FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY FAMILY TYPE BY PRESENCE OF OWN CHILDREN UNDER 18 YEARS */
/*Universe:  Families */
 
B19128m1='Aggregate family income in the past 12 months (in 2011 inflation-adjusted dollars):'
B19128m2='Married-couple family:'
B19128m3='With own children under 18 years'
B19128m4='No own children under 18 years'
B19128m5='Other family:'
B19128m6='Male householder, no wife present:'
B19128m7='With own children under 18 years'
B19128m8='No own children under 18 years'
B19128m9='Female householder, no husband present:'
B19128m10='With own children under 18 years'
B19128m11='No own children under 18 years'
 
/*AGGREGATE FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY NUMBER OF WORKERS IN FAMILY */
/*Universe:  Families */
 
B19129m1='Aggregate family income in the past 12 months (in 2011 inflation-adjusted dollars):'
B19129m2='No workers (dollars)'
B19129m3='1 worker (dollars)'
B19129m4='2 workers, husband and wife worked (dollars)'
B19129m5='2 workers, other (dollars)'
B19129m6='3 or more workers, husband and wife worked (dollars)'
B19129m7='3 or more workers, other (dollars)'
 
/*AGGREGATE FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY FAMILY TYPE BY AGE OF HOUSEHOLDER */
/*Universe:  Families */
 
B19130m1='Aggregate family income in the past 12 months (in 2011 inflation-adjusted dollars):'
B19130m2='Married couple family (dollars):'
B19130m3='Householder 15 to 24 years (dollars)'
B19130m4='Householder 25 to 34 years (dollars)'
B19130m5='Householder 35 to 44 years (dollars)'
B19130m6='Householder 45 to 54 years (dollars)'
B19130m7='Householder 55 to 59 years (dollars)'
B19130m8='Householder 60 to 64 years (dollars)'
B19130m9='Householder 65 to 74 years (dollars)'
B19130m10='Householder 75 years and over (dollars)'
B19130m11='Other family (dollars):'
B19130m12='Male householder, no wife present (dollars):'
B19130m13='Householder 15 to 24 years (dollars)'
B19130m14='Householder 25 to 34 years (dollars)'
B19130m15='Householder 35 to 44 years (dollars)'
B19130m16='Householder 45 to 54 years (dollars)'
B19130m17='Householder 55 to 59 years (dollars)'
B19130m18='Householder 60 to 64 years (dollars)'
B19130m19='Householder 65 to 74 years (dollars)'
B19130m20='Householder 75 years and over (dollars)'
B19130m21='Female householder, no husband present (dollars):'
B19130m22='Householder 15 to 24 years (dollars)'
B19130m23='Householder 25 to 34 years (dollars)'
B19130m24='Householder 35 to 44 years (dollars)'
B19130m25='Householder 45 to 54 years (dollars)'
B19130m26='Householder 55 to 59 years (dollars)'
B19130m27='Householder 60 to 64 years (dollars)'
B19130m28='Householder 65 to 74 years (dollars)'
B19130m29='Householder 75 years and over (dollars)'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B19101Fm1
B19101Fm2
B19101Fm3
B19101Fm4
B19101Fm5
B19101Fm6
B19101Fm7
B19101Fm8
B19101Fm9
B19101Fm10
B19101Fm11
B19101Fm12
B19101Fm13
B19101Fm14
B19101Fm15
B19101Fm16
B19101Fm17
 
B19101Gm1
B19101Gm2
B19101Gm3
B19101Gm4
B19101Gm5
B19101Gm6
B19101Gm7
B19101Gm8
B19101Gm9
B19101Gm10
B19101Gm11
B19101Gm12
B19101Gm13
B19101Gm14
B19101Gm15
B19101Gm16
B19101Gm17
 
B19101Hm1
B19101Hm2
B19101Hm3
B19101Hm4
B19101Hm5
B19101Hm6
B19101Hm7
B19101Hm8
B19101Hm9
B19101Hm10
B19101Hm11
B19101Hm12
B19101Hm13
B19101Hm14
B19101Hm15
B19101Hm16
B19101Hm17
 
B19101Im1
B19101Im2
B19101Im3
B19101Im4
B19101Im5
B19101Im6
B19101Im7
B19101Im8
B19101Im9
B19101Im10
B19101Im11
B19101Im12
B19101Im13
B19101Im14
B19101Im15
B19101Im16
B19101Im17
 
B19113m1
 
B19113Am1
 
B19113Bm1
 
B19113Cm1
 
B19113Dm1
 
B19113Em1
 
B19113Fm1
 
B19113Gm1
 
B19113Hm1
 
B19113Im1
 
B19119m1
B19119m2
B19119m3
B19119m4
B19119m5
B19119m6
B19119m7
 
B19121m1
B19121m2
B19121m3
B19121m4
B19121m5
 
B19125m1
B19125m2
B19125m3
 
B19126m1
B19126m2
B19126m3
B19126m4
B19126m5
B19126m6
B19126m7
B19126m8
B19126m9
B19126m10
B19126m11
 
B19127m1
 
B19128m1
B19128m2
B19128m3
B19128m4
B19128m5
B19128m6
B19128m7
B19128m8
B19128m9
B19128m10
B19128m11
 
B19129m1
B19129m2
B19129m3
B19129m4
B19129m5
B19129m6
B19129m7
 
B19130m1
B19130m2
B19130m3
B19130m4
B19130m5
B19130m6
B19130m7
B19130m8
B19130m9
B19130m10
B19130m11
B19130m12
B19130m13
B19130m14
B19130m15
B19130m16
B19130m17
B19130m18
B19130m19
B19130m20
B19130m21
B19130m22
B19130m23
B19130m24
B19130m25
B19130m26
B19130m27
B19130m28
B19130m29
;
RUN;
TITLE2;
