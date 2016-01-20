TITLE2 "m20115dc0037000";
DATA work.SFm0037dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0037000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*FAMILY TYPE BY PRESENCE AND AGE OF RELATED CHILDREN UNDER 18 YEARS */
/*Universe:  Families */
 
B11004m1='Total:'
B11004m2='Married-couple family:'
B11004m3='With related children under 18 years:'
B11004m4='Under 6 years only'
B11004m5='Under 6 years and 6 to 17 years'
B11004m6='6 to 17 years only'
B11004m7='No related children under 18 years'
B11004m8='Other family:'
B11004m9='Male householder, no wife present:'
B11004m10='With related children under 18 years:'
B11004m11='Under 6 years only'
B11004m12='Under 6 years and 6 to 17 years'
B11004m13='6 to 17 years only'
B11004m14='No related children under 18 years'
B11004m15='Female householder, no husband present:'
B11004m16='With related children under 18 years:'
B11004m17='Under 6 years only'
B11004m18='Under 6 years and 6 to 17 years'
B11004m19='6 to 17 years only'
B11004m20='No related children under 18 years'
 
/*HOUSEHOLDS BY PRESENCE OF PEOPLE UNDER 18 YEARS BY HOUSEHOLD TYPE */
/*Universe:  Households */
 
B11005m1='Total:'
B11005m2='Households with one or more people under 18 years:'
B11005m3='Family households:'
B11005m4='Married-couple family'
B11005m5='Other family:'
B11005m6='Male householder, no wife present'
B11005m7='Female householder, no husband present'
B11005m8='Nonfamily households:'
B11005m9='Male householder'
B11005m10='Female householder'
B11005m11='Households with no people under 18 years:'
B11005m12='Family households:'
B11005m13='Married-couple family'
B11005m14='Other family:'
B11005m15='Male householder, no wife present'
B11005m16='Female householder, no husband present'
B11005m17='Nonfamily households:'
B11005m18='Male householder'
B11005m19='Female householder'
 
/*HOUSEHOLDS BY PRESENCE OF PEOPLE 60 YEARS AND OVER BY HOUSEHOLD TYPE */
/*Universe:  Households */
 
B11006m1='Total:'
B11006m2='Households with one or more people 60 years and over:'
B11006m3='Family households:'
B11006m4='Married-couple family'
B11006m5='Other family:'
B11006m6='Male householder, no wife present'
B11006m7='Female householder, no husband present'
B11006m8='Nonfamily households'
B11006m9='Households with no people 60 years and over:'
B11006m10='Family households:'
B11006m11='Married-couple family'
B11006m12='Other family:'
B11006m13='Male householder, no wife present'
B11006m14='Female householder, no husband present'
B11006m15='Nonfamily households'
 
/*HOUSEHOLDS BY PRESENCE OF PEOPLE 65 YEARS AND OVER, HOUSEHOLD SIZE AND HOUSEHOLD TYPE */
/*Universe:  Households */
 
B11007m1='Total:'
B11007m2='Households with one or more people 65 years and over:'
B11007m3='1-person household'
B11007m4='2-or-more-person household:'
B11007m5='Family households'
B11007m6='Nonfamily households'
B11007m7='Households with no people 65 years and over:'
B11007m8='1-person households'
B11007m9='2-or-more-person household:'
B11007m10='Family households'
B11007m11='Nonfamily households'
 
/*UNMARRIED-PARTNER HOUSEHOLDS BY SEX OF PARTNER */
/*Universe:  Households */
 
B11009m1='Total:'
B11009m2='Unmarried-partner households:'
B11009m3='Male householder and male partner'
B11009m4='Male householder and female partner'
B11009m5='Female householder and female partner'
B11009m6='Female householder and male partner'
B11009m7='All other households'
 
/*NONFAMILY HOUSEHOLDS BY SEX OF HOUSEHOLDER BY LIVING ALONE BY AGE OF HOUSEHOLDER */
/*Universe:  Nonfamily households */
 
B11010m1='Total:'
B11010m2='Male householder:'
B11010m3='Living alone:'
B11010m4='Householder 15 to 64 years'
B11010m5='Householder 65 years and over'
B11010m6='Not living alone:'
B11010m7='Householder 15 to 64 years'
B11010m8='Householder 65 years and over'
B11010m9='Female householder:'
B11010m10='Living alone:'
B11010m11='Householder 15 to 64 years'
B11010m12='Householder 65 years and over'
B11010m13='Not living alone:'
B11010m14='Householder 15 to 64 years'
B11010m15='Householder 65 years and over'
 
/*HOUSEHOLD TYPE BY UNITS IN STRUCTURE */
/*Universe:  Households */
 
B11011m1='Total:'
B11011m2='Family households:'
B11011m3='Married-couple family:'
B11011m4='1-unit structures'
B11011m5='2-or-more-unit structures'
B11011m6='Mobile homes and all other types of units'
B11011m7='Other family:'
B11011m8='Male householder, no wife present:'
B11011m9='1-unit structures'
B11011m10='2-or-more-unit structures'
B11011m11='Mobile homes and all other types of units'
B11011m12='Female householder, no husband present:'
B11011m13='1-unit structures'
B11011m14='2-or-more-unit structures'
B11011m15='Mobile homes and all other types of units'
B11011m16='Nonfamily households:'
B11011m17='1-unit structures'
B11011m18='2-or-more-unit structures'
B11011m19='Mobile homes and all other types of units'
 
/*HOUSEHOLD TYPE BY TENURE */
/*Universe:  Households */
 
B11012m1='Total:'
B11012m2='Family households:'
B11012m3='Married-couple family:'
B11012m4='Owner-occupied housing units'
B11012m5='Renter-occupied housing units'
B11012m6='Other family:'
B11012m7='Male householder, no wife present:'
B11012m8='Owner-occupied housing units'
B11012m9='Renter-occupied housing units'
B11012m10='Female householder, no husband present:'
B11012m11='Owner-occupied housing units'
B11012m12='Renter-occupied housing units'
B11012m13='Nonfamily households:'
B11012m14='Owner-occupied housing units'
B11012m15='Renter-occupied housing units'
 
/*SUBFAMILY TYPE BY PRESENCE OF OWN CHILDREN UNDER 18 YEARS */
/*Universe:  Subfamilies */
 
B11013m1='Total:'
B11013m2='Married-couple subfamily:'
B11013m3='With own children under 18 years'
B11013m4='No own children under 18 years'
B11013m5='Mother-child subfamily'
B11013m6='Father-child subfamily'
 
/*POPULATION IN SUBFAMILIES BY SUBFAMILY TYPE BY RELATIONSHIP */
/*Universe:  Population in subfamilies */
 
B11014m1='Total:'
B11014m2='In married-couple subfamilies:'
B11014m3='Husband/wife in a childless subfamily'
B11014m4='Husband/wife in a subfamily with children'
B11014m5='Child'
B11014m6='In mother-child subfamilies:'
B11014m7='Parent'
B11014m8='Child'
B11014m9='In father-child subfamilies:'
B11014m10='Parent'
B11014m11='Child'
 
/*HOUSEHOLDS BY PRESENCE OF NONRELATIVES */
/*Universe:  Households */
 
B11015m1='Total:'
B11015m2='Households with one or more nonrelatives'
B11015m3='Households with no nonrelatives'
 
/*HOUSEHOLD TYPE BY HOUSEHOLD SIZE */
/*Universe:  Households */
 
B11016m1='Total:'
B11016m2='Family households:'
B11016m3='2-person household'
B11016m4='3-person household'
B11016m5='4-person household'
B11016m6='5-person household'
B11016m7='6-person household'
B11016m8='7-or-more person household'
B11016m9='Nonfamily households:'
B11016m10='1-person household'
B11016m11='2-person household'
B11016m12='3-person household'
B11016m13='4-person household'
B11016m14='5-person household'
B11016m15='6-person household'
B11016m16='7-or-more person household'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B11004m1
B11004m2
B11004m3
B11004m4
B11004m5
B11004m6
B11004m7
B11004m8
B11004m9
B11004m10
B11004m11
B11004m12
B11004m13
B11004m14
B11004m15
B11004m16
B11004m17
B11004m18
B11004m19
B11004m20
 
B11005m1
B11005m2
B11005m3
B11005m4
B11005m5
B11005m6
B11005m7
B11005m8
B11005m9
B11005m10
B11005m11
B11005m12
B11005m13
B11005m14
B11005m15
B11005m16
B11005m17
B11005m18
B11005m19
 
B11006m1
B11006m2
B11006m3
B11006m4
B11006m5
B11006m6
B11006m7
B11006m8
B11006m9
B11006m10
B11006m11
B11006m12
B11006m13
B11006m14
B11006m15
 
B11007m1
B11007m2
B11007m3
B11007m4
B11007m5
B11007m6
B11007m7
B11007m8
B11007m9
B11007m10
B11007m11
 
B11009m1
B11009m2
B11009m3
B11009m4
B11009m5
B11009m6
B11009m7
 
B11010m1
B11010m2
B11010m3
B11010m4
B11010m5
B11010m6
B11010m7
B11010m8
B11010m9
B11010m10
B11010m11
B11010m12
B11010m13
B11010m14
B11010m15
 
B11011m1
B11011m2
B11011m3
B11011m4
B11011m5
B11011m6
B11011m7
B11011m8
B11011m9
B11011m10
B11011m11
B11011m12
B11011m13
B11011m14
B11011m15
B11011m16
B11011m17
B11011m18
B11011m19
 
B11012m1
B11012m2
B11012m3
B11012m4
B11012m5
B11012m6
B11012m7
B11012m8
B11012m9
B11012m10
B11012m11
B11012m12
B11012m13
B11012m14
B11012m15
 
B11013m1
B11013m2
B11013m3
B11013m4
B11013m5
B11013m6
 
B11014m1
B11014m2
B11014m3
B11014m4
B11014m5
B11014m6
B11014m7
B11014m8
B11014m9
B11014m10
B11014m11
 
B11015m1
B11015m2
B11015m3
 
B11016m1
B11016m2
B11016m3
B11016m4
B11016m5
B11016m6
B11016m7
B11016m8
B11016m9
B11016m10
B11016m11
B11016m12
B11016m13
B11016m14
B11016m15
B11016m16
;
RUN;
TITLE2;
