TITLE2 "e20125md0037000";
DATA work.SFe0037md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0037000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*FAMILY TYPE BY PRESENCE AND AGE OF RELATED CHILDREN UNDER 18 YEARS */
/*Universe:  Families */
 
B11004e1='Total:'
B11004e2='Married-couple family:'
B11004e3='With related children under 18 years:'
B11004e4='Under 6 years only'
B11004e5='Under 6 years and 6 to 17 years'
B11004e6='6 to 17 years only'
B11004e7='No related children under 18 years'
B11004e8='Other family:'
B11004e9='Male householder, no wife present:'
B11004e10='With related children under 18 years:'
B11004e11='Under 6 years only'
B11004e12='Under 6 years and 6 to 17 years'
B11004e13='6 to 17 years only'
B11004e14='No related children under 18 years'
B11004e15='Female householder, no husband present:'
B11004e16='With related children under 18 years:'
B11004e17='Under 6 years only'
B11004e18='Under 6 years and 6 to 17 years'
B11004e19='6 to 17 years only'
B11004e20='No related children under 18 years'
/*HOUSEHOLDS BY PRESENCE OF PEOPLE UNDER 18 YEARS BY HOUSEHOLD TYPE */
/*Universe:  Households */
 
B11005e1='Total:'
B11005e2='Households with one or more people under 18 years:'
B11005e3='Family households:'
B11005e4='Married-couple family'
B11005e5='Other family:'
B11005e6='Male householder, no wife present'
B11005e7='Female householder, no husband present'
B11005e8='Nonfamily households:'
B11005e9='Male householder'
B11005e10='Female householder'
B11005e11='Households with no people under 18 years:'
B11005e12='Family households:'
B11005e13='Married-couple family'
B11005e14='Other family:'
B11005e15='Male householder, no wife present'
B11005e16='Female householder, no husband present'
B11005e17='Nonfamily households:'
B11005e18='Male householder'
B11005e19='Female householder'
/*HOUSEHOLDS BY PRESENCE OF PEOPLE 60 YEARS AND OVER BY HOUSEHOLD TYPE */
/*Universe:  Households */
 
B11006e1='Total:'
B11006e2='Households with one or more people 60 years and over:'
B11006e3='Family households:'
B11006e4='Married-couple family'
B11006e5='Other family:'
B11006e6='Male householder, no wife present'
B11006e7='Female householder, no husband present'
B11006e8='Nonfamily households'
B11006e9='Households with no people 60 years and over:'
B11006e10='Family households:'
B11006e11='Married-couple family'
B11006e12='Other family:'
B11006e13='Male householder, no wife present'
B11006e14='Female householder, no husband present'
B11006e15='Nonfamily households'
/*HOUSEHOLDS BY PRESENCE OF PEOPLE 65 YEARS AND OVER, HOUSEHOLD SIZE AND HOUSEHOLD TYPE */
/*Universe:  Households */
 
B11007e1='Total:'
B11007e2='Households with one or more people 65 years and over:'
B11007e3='1-person household'
B11007e4='2-or-more-person household:'
B11007e5='Family households'
B11007e6='Nonfamily households'
B11007e7='Households with no people 65 years and over:'
B11007e8='1-person households'
B11007e9='2-or-more-person household:'
B11007e10='Family households'
B11007e11='Nonfamily households'
/*UNMARRIED-PARTNER HOUSEHOLDS BY SEX OF PARTNER */
/*Universe:  Households */
 
B11009e1='Total:'
B11009e2='Unmarried-partner households:'
B11009e3='Male householder and male partner'
B11009e4='Male householder and female partner'
B11009e5='Female householder and female partner'
B11009e6='Female householder and male partner'
B11009e7='All other households'
/*NONFAMILY HOUSEHOLDS BY SEX OF HOUSEHOLDER BY LIVING ALONE BY AGE OF HOUSEHOLDER */
/*Universe:  Nonfamily households */
 
B11010e1='Total:'
B11010e2='Male householder:'
B11010e3='Living alone:'
B11010e4='Householder 15 to 64 years'
B11010e5='Householder 65 years and over'
B11010e6='Not living alone:'
B11010e7='Householder 15 to 64 years'
B11010e8='Householder 65 years and over'
B11010e9='Female householder:'
B11010e10='Living alone:'
B11010e11='Householder 15 to 64 years'
B11010e12='Householder 65 years and over'
B11010e13='Not living alone:'
B11010e14='Householder 15 to 64 years'
B11010e15='Householder 65 years and over'
/*HOUSEHOLD TYPE BY UNITS IN STRUCTURE */
/*Universe:  Households */
 
B11011e1='Total:'
B11011e2='Family households:'
B11011e3='Married-couple family:'
B11011e4='1-unit structures'
B11011e5='2-or-more-unit structures'
B11011e6='Mobile homes and all other types of units'
B11011e7='Other family:'
B11011e8='Male householder, no wife present:'
B11011e9='1-unit structures'
B11011e10='2-or-more-unit structures'
B11011e11='Mobile homes and all other types of units'
B11011e12='Female householder, no husband present:'
B11011e13='1-unit structures'
B11011e14='2-or-more-unit structures'
B11011e15='Mobile homes and all other types of units'
B11011e16='Nonfamily households:'
B11011e17='1-unit structures'
B11011e18='2-or-more-unit structures'
B11011e19='Mobile homes and all other types of units'
/*HOUSEHOLD TYPE BY TENURE */
/*Universe:  Households */
 
B11012e1='Total:'
B11012e2='Family households:'
B11012e3='Married-couple family:'
B11012e4='Owner-occupied housing units'
B11012e5='Renter-occupied housing units'
B11012e6='Other family:'
B11012e7='Male householder, no wife present:'
B11012e8='Owner-occupied housing units'
B11012e9='Renter-occupied housing units'
B11012e10='Female householder, no husband present:'
B11012e11='Owner-occupied housing units'
B11012e12='Renter-occupied housing units'
B11012e13='Nonfamily households:'
B11012e14='Owner-occupied housing units'
B11012e15='Renter-occupied housing units'
/*SUBFAMILY TYPE BY PRESENCE OF OWN CHILDREN UNDER 18 YEARS */
/*Universe:  Subfamilies */
 
B11013e1='Total:'
B11013e2='Married-couple subfamily:'
B11013e3='With own children under 18 years'
B11013e4='No own children under 18 years'
B11013e5='Mother-child subfamily'
B11013e6='Father-child subfamily'
/*POPULATION IN SUBFAMILIES BY SUBFAMILY TYPE BY RELATIONSHIP */
/*Universe:  Population in subfamilies */
 
B11014e1='Total:'
B11014e2='In married-couple subfamilies:'
B11014e3='Husband/wife in a childless subfamily'
B11014e4='Husband/wife in a subfamily with children'
B11014e5='Child'
B11014e6='In mother-child subfamilies:'
B11014e7='Parent'
B11014e8='Child'
B11014e9='In father-child subfamilies:'
B11014e10='Parent'
B11014e11='Child'
/*HOUSEHOLDS BY PRESENCE OF NONRELATIVES */
/*Universe:  Households */
 
B11015e1='Total:'
B11015e2='Households with one or more nonrelatives'
B11015e3='Households with no nonrelatives'
/*HOUSEHOLD TYPE BY HOUSEHOLD SIZE */
/*Universe:  Households */
 
B11016e1='Total:'
B11016e2='Family households:'
B11016e3='2-person household'
B11016e4='3-person household'
B11016e5='4-person household'
B11016e6='5-person household'
B11016e7='6-person household'
B11016e8='7-or-more person household'
B11016e9='Nonfamily households:'
B11016e10='1-person household'
B11016e11='2-person household'
B11016e12='3-person household'
B11016e13='4-person household'
B11016e14='5-person household'
B11016e15='6-person household'
B11016e16='7-or-more person household'
/*MULTIGENERATIONAL HOUSEHOLDS */
/*Universe:  Total households */
 
B11017e1='Total:'
B11017e2='Multigenerational households'
B11017e3='All other households'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B11004e1
B11004e2
B11004e3
B11004e4
B11004e5
B11004e6
B11004e7
B11004e8
B11004e9
B11004e10
B11004e11
B11004e12
B11004e13
B11004e14
B11004e15
B11004e16
B11004e17
B11004e18
B11004e19
B11004e20
 
B11005e1
B11005e2
B11005e3
B11005e4
B11005e5
B11005e6
B11005e7
B11005e8
B11005e9
B11005e10
B11005e11
B11005e12
B11005e13
B11005e14
B11005e15
B11005e16
B11005e17
B11005e18
B11005e19
 
B11006e1
B11006e2
B11006e3
B11006e4
B11006e5
B11006e6
B11006e7
B11006e8
B11006e9
B11006e10
B11006e11
B11006e12
B11006e13
B11006e14
B11006e15
 
B11007e1
B11007e2
B11007e3
B11007e4
B11007e5
B11007e6
B11007e7
B11007e8
B11007e9
B11007e10
B11007e11
 
B11009e1
B11009e2
B11009e3
B11009e4
B11009e5
B11009e6
B11009e7
 
B11010e1
B11010e2
B11010e3
B11010e4
B11010e5
B11010e6
B11010e7
B11010e8
B11010e9
B11010e10
B11010e11
B11010e12
B11010e13
B11010e14
B11010e15
 
B11011e1
B11011e2
B11011e3
B11011e4
B11011e5
B11011e6
B11011e7
B11011e8
B11011e9
B11011e10
B11011e11
B11011e12
B11011e13
B11011e14
B11011e15
B11011e16
B11011e17
B11011e18
B11011e19
 
B11012e1
B11012e2
B11012e3
B11012e4
B11012e5
B11012e6
B11012e7
B11012e8
B11012e9
B11012e10
B11012e11
B11012e12
B11012e13
B11012e14
B11012e15
 
B11013e1
B11013e2
B11013e3
B11013e4
B11013e5
B11013e6
 
B11014e1
B11014e2
B11014e3
B11014e4
B11014e5
B11014e6
B11014e7
B11014e8
B11014e9
B11014e10
B11014e11
 
B11015e1
B11015e2
B11015e3
 
B11016e1
B11016e2
B11016e3
B11016e4
B11016e5
B11016e6
B11016e7
B11016e8
B11016e9
B11016e10
B11016e11
B11016e12
B11016e13
B11016e14
B11016e15
B11016e16
 
B11017e1
B11017e2
B11017e3
;
RUN;
TITLE2;
