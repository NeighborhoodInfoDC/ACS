TITLE2 "e20115dc0061000";
DATA work.SFe0061dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0061000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (SOME OTHER RACE ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is Some other race alone */
 
B19101Fe1='Total:'
B19101Fe2='Less than $10,000'
B19101Fe3='$10,000 to $14,999'
B19101Fe4='$15,000 to $19,999'
B19101Fe5='$20,000 to $24,999'
B19101Fe6='$25,000 to $29,999'
B19101Fe7='$30,000 to $34,999'
B19101Fe8='$35,000 to $39,999'
B19101Fe9='$40,000 to $44,999'
B19101Fe10='$45,000 to $49,999'
B19101Fe11='$50,000 to $59,999'
B19101Fe12='$60,000 to $74,999'
B19101Fe13='$75,000 to $99,999'
B19101Fe14='$100,000 to $124,999'
B19101Fe15='$125,000 to $149,999'
B19101Fe16='$150,000 to $199,999'
B19101Fe17='$200,000 or more'
 
/*FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (TWO OR MORE RACES HOUSEHOLDER) */
/*Universe:  Families with a householder who is Two or more races */
 
B19101Ge1='Total:'
B19101Ge2='Less than $10,000'
B19101Ge3='$10,000 to $14,999'
B19101Ge4='$15,000 to $19,999'
B19101Ge5='$20,000 to $24,999'
B19101Ge6='$25,000 to $29,999'
B19101Ge7='$30,000 to $34,999'
B19101Ge8='$35,000 to $39,999'
B19101Ge9='$40,000 to $44,999'
B19101Ge10='$45,000 to $49,999'
B19101Ge11='$50,000 to $59,999'
B19101Ge12='$60,000 to $74,999'
B19101Ge13='$75,000 to $99,999'
B19101Ge14='$100,000 to $124,999'
B19101Ge15='$125,000 to $149,999'
B19101Ge16='$150,000 to $199,999'
B19101Ge17='$200,000 or more'
 
/*FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (WHITE ALONE, NOT HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Families with a householder who is White alone, not Hispanic or Latino */
 
B19101He1='Total:'
B19101He2='Less than $10,000'
B19101He3='$10,000 to $14,999'
B19101He4='$15,000 to $19,999'
B19101He5='$20,000 to $24,999'
B19101He6='$25,000 to $29,999'
B19101He7='$30,000 to $34,999'
B19101He8='$35,000 to $39,999'
B19101He9='$40,000 to $44,999'
B19101He10='$45,000 to $49,999'
B19101He11='$50,000 to $59,999'
B19101He12='$60,000 to $74,999'
B19101He13='$75,000 to $99,999'
B19101He14='$100,000 to $124,999'
B19101He15='$125,000 to $149,999'
B19101He16='$150,000 to $199,999'
B19101He17='$200,000 or more'
 
/*FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Families with a householder who is Hispanic or Latino */
 
B19101Ie1='Total:'
B19101Ie2='Less than $10,000'
B19101Ie3='$10,000 to $14,999'
B19101Ie4='$15,000 to $19,999'
B19101Ie5='$20,000 to $24,999'
B19101Ie6='$25,000 to $29,999'
B19101Ie7='$30,000 to $34,999'
B19101Ie8='$35,000 to $39,999'
B19101Ie9='$40,000 to $44,999'
B19101Ie10='$45,000 to $49,999'
B19101Ie11='$50,000 to $59,999'
B19101Ie12='$60,000 to $74,999'
B19101Ie13='$75,000 to $99,999'
B19101Ie14='$100,000 to $124,999'
B19101Ie15='$125,000 to $149,999'
B19101Ie16='$150,000 to $199,999'
B19101Ie17='$200,000 or more'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Families */
 
B19113e1='Median family income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (WHITE ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is White alone */
 
B19113Ae1='Median family income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (BLACK OR AFRICAN AMERICAN ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is Black or African American alone */
 
B19113Be1='Median family income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (AMERICAN INDIAN AND ALASKA NATIVE ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is American Indian and Alaska Native alone */
 
B19113Ce1='Median family income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (ASIAN ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is Asian alone */
 
B19113De1='Median family income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is Native Hawaiian and Other Pacific Islander alone */
 
B19113Ee1='Median family income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (SOME OTHER RACE ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is Some other race alone */
 
B19113Fe1='Median family income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (TWO OR MORE RACES) */
/*Universe:  Families with a householder who is Two or more races */
 
B19113Ge1='Median family income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (WHITE ALONE, NOT HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Families with a householder who is White alone, not Hispanic or Latino */
 
B19113He1='Median family income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) (HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Families with a householder who is Hispanic or Latino */
 
B19113Ie1='Median family income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY FAMILY SIZE */
/*Universe:  Families */
 
B19119e1='Total:'
B19119e2='2-person families'
B19119e3='3-person families'
B19119e4='4-person families'
B19119e5='5-person families'
B19119e6='6-person families'
B19119e7='7-or-more-person families'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY NUMBER OF EARNERS IN FAMILY */
/*Universe:  Families */
 
B19121e1='Total:'
B19121e2='No earners (dollars)'
B19121e3='1 earner (dollars)'
B19121e4='2 earners (dollars)'
B19121e5='3 or more earners (dollars)'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY PRESENCE OF OWN CHILDREN UNDER 18 YEARS */
/*Universe:  Families */
/*Median family income in the past 12 months (in 2011 inflation-adjusted dollars) -- */
 
B19125e1='Total:'
B19125e2='With own children under 18 years'
B19125e3='No own children under 18 years'
 
/*MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY FAMILY TYPE BY PRESENCE OF OWN CHILDREN UNDER 18 YEARS */
/*Universe:  Families */
/*Median family income in the past 12 months (in 2011 inflation-adjusted dollars) -- */
 
B19126e1='Total:'
/*Married-couple family -- */
B19126e2='Total'
B19126e3='With own children under 18 years'
B19126e4='No own children under 18 years'
/*Other family -- */
B19126e5='Total'
/*Male householder, no wife present -- */
B19126e6='Total'
B19126e7='With own children under 18 years'
B19126e8='No own children under 18 years'
/*Female householder, no husband present -- */
B19126e9='Total'
B19126e10='With own children under 18 years'
B19126e11='No own children under 18 years'
 
/*AGGREGATE FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Families */
 
B19127e1='Aggregate family income in the past 12 months (in 2011 inflation-adjusted dollars)'
 
/*AGGREGATE FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY FAMILY TYPE BY PRESENCE OF OWN CHILDREN UNDER 18 YEARS */
/*Universe:  Families */
 
B19128e1='Aggregate family income in the past 12 months (in 2011 inflation-adjusted dollars):'
B19128e2='Married-couple family:'
B19128e3='With own children under 18 years'
B19128e4='No own children under 18 years'
B19128e5='Other family:'
B19128e6='Male householder, no wife present:'
B19128e7='With own children under 18 years'
B19128e8='No own children under 18 years'
B19128e9='Female householder, no husband present:'
B19128e10='With own children under 18 years'
B19128e11='No own children under 18 years'
 
/*AGGREGATE FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY NUMBER OF WORKERS IN FAMILY */
/*Universe:  Families */
 
B19129e1='Aggregate family income in the past 12 months (in 2011 inflation-adjusted dollars):'
B19129e2='No workers (dollars)'
B19129e3='1 worker (dollars)'
B19129e4='2 workers, husband and wife worked (dollars)'
B19129e5='2 workers, other (dollars)'
B19129e6='3 or more workers, husband and wife worked (dollars)'
B19129e7='3 or more workers, other (dollars)'
 
/*AGGREGATE FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY FAMILY TYPE BY AGE OF HOUSEHOLDER */
/*Universe:  Families */
 
B19130e1='Aggregate family income in the past 12 months (in 2011 inflation-adjusted dollars):'
B19130e2='Married couple family (dollars):'
B19130e3='Householder 15 to 24 years (dollars)'
B19130e4='Householder 25 to 34 years (dollars)'
B19130e5='Householder 35 to 44 years (dollars)'
B19130e6='Householder 45 to 54 years (dollars)'
B19130e7='Householder 55 to 59 years (dollars)'
B19130e8='Householder 60 to 64 years (dollars)'
B19130e9='Householder 65 to 74 years (dollars)'
B19130e10='Householder 75 years and over (dollars)'
B19130e11='Other family (dollars):'
B19130e12='Male householder, no wife present (dollars):'
B19130e13='Householder 15 to 24 years (dollars)'
B19130e14='Householder 25 to 34 years (dollars)'
B19130e15='Householder 35 to 44 years (dollars)'
B19130e16='Householder 45 to 54 years (dollars)'
B19130e17='Householder 55 to 59 years (dollars)'
B19130e18='Householder 60 to 64 years (dollars)'
B19130e19='Householder 65 to 74 years (dollars)'
B19130e20='Householder 75 years and over (dollars)'
B19130e21='Female householder, no husband present (dollars):'
B19130e22='Householder 15 to 24 years (dollars)'
B19130e23='Householder 25 to 34 years (dollars)'
B19130e24='Householder 35 to 44 years (dollars)'
B19130e25='Householder 45 to 54 years (dollars)'
B19130e26='Householder 55 to 59 years (dollars)'
B19130e27='Householder 60 to 64 years (dollars)'
B19130e28='Householder 65 to 74 years (dollars)'
B19130e29='Householder 75 years and over (dollars)'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B19101Fe1
B19101Fe2
B19101Fe3
B19101Fe4
B19101Fe5
B19101Fe6
B19101Fe7
B19101Fe8
B19101Fe9
B19101Fe10
B19101Fe11
B19101Fe12
B19101Fe13
B19101Fe14
B19101Fe15
B19101Fe16
B19101Fe17
 
B19101Ge1
B19101Ge2
B19101Ge3
B19101Ge4
B19101Ge5
B19101Ge6
B19101Ge7
B19101Ge8
B19101Ge9
B19101Ge10
B19101Ge11
B19101Ge12
B19101Ge13
B19101Ge14
B19101Ge15
B19101Ge16
B19101Ge17
 
B19101He1
B19101He2
B19101He3
B19101He4
B19101He5
B19101He6
B19101He7
B19101He8
B19101He9
B19101He10
B19101He11
B19101He12
B19101He13
B19101He14
B19101He15
B19101He16
B19101He17
 
B19101Ie1
B19101Ie2
B19101Ie3
B19101Ie4
B19101Ie5
B19101Ie6
B19101Ie7
B19101Ie8
B19101Ie9
B19101Ie10
B19101Ie11
B19101Ie12
B19101Ie13
B19101Ie14
B19101Ie15
B19101Ie16
B19101Ie17
 
B19113e1
 
B19113Ae1
 
B19113Be1
 
B19113Ce1
 
B19113De1
 
B19113Ee1
 
B19113Fe1
 
B19113Ge1
 
B19113He1
 
B19113Ie1
 
B19119e1
B19119e2
B19119e3
B19119e4
B19119e5
B19119e6
B19119e7
 
B19121e1
B19121e2
B19121e3
B19121e4
B19121e5
 
B19125e1
B19125e2
B19125e3
 
B19126e1
B19126e2
B19126e3
B19126e4
B19126e5
B19126e6
B19126e7
B19126e8
B19126e9
B19126e10
B19126e11
 
B19127e1
 
B19128e1
B19128e2
B19128e3
B19128e4
B19128e5
B19128e6
B19128e7
B19128e8
B19128e9
B19128e10
B19128e11
 
B19129e1
B19129e2
B19129e3
B19129e4
B19129e5
B19129e6
B19129e7
 
B19130e1
B19130e2
B19130e3
B19130e4
B19130e5
B19130e6
B19130e7
B19130e8
B19130e9
B19130e10
B19130e11
B19130e12
B19130e13
B19130e14
B19130e15
B19130e16
B19130e17
B19130e18
B19130e19
B19130e20
B19130e21
B19130e22
B19130e23
B19130e24
B19130e25
B19130e26
B19130e27
B19130e28
B19130e29
;
RUN;
TITLE2;
