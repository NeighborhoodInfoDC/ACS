TITLE2 "m20125dc0115000";
DATA work.SFm0115dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0115000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*HEALTH INSURANCE COVERAGE STATUS AND TYPE BY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Civilian population living in households */
 
B27015m1='Total:'
B27015m2='Under $25,000:'
B27015m3='With health insurance coverage'
B27015m4='With private health insurance'
B27015m5='With public coverage'
B27015m6='No health insurance coverage'
B27015m7='$25,000 to $49,999:'
B27015m8='With health insurance coverage'
B27015m9='With private health insurance'
B27015m10='With public coverage'
B27015m11='No health insurance coverage'
B27015m12='$50,000 to $74,999:'
B27015m13='With health insurance coverage'
B27015m14='With private health insurance'
B27015m15='With public coverage'
B27015m16='No health insurance coverage'
B27015m17='$75,000 to $99,999:'
B27015m18='With health insurance coverage'
B27015m19='With private health insurance'
B27015m20='With public coverage'
B27015m21='No health insurance coverage'
B27015m22='$100,000 or more:'
B27015m23='With health insurance coverage'
B27015m24='With private health insurance'
B27015m25='With public coverage'
B27015m26='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS AND TYPE BY AGE BY EDUCATIONAL ATTAINMENT */
/*Universe:  Civilian noninstitutionalized population 25 years and over */
 
B27019m1='Total:'
B27019m2='25 to 64 years:'
B27019m3='Less than high school graduate:'
B27019m4='With health insurance coverage'
B27019m5='With private health insurance'
B27019m6='With public coverage'
B27019m7='No health insurance coverage'
B27019m8='High school graduate (includes equivalency):'
B27019m9='With health insurance coverage'
B27019m10='With private health insurance'
B27019m11='With public coverage'
B27019m12='No health insurance coverage'
B27019m13='Some college or associate''s degree:'
B27019m14='With health insurance coverage'
B27019m15='With private health insurance'
B27019m16='With public coverage'
B27019m17='No health insurance coverage'
B27019m18='Bachelor''s degree or higher:'
B27019m19='With health insurance coverage'
B27019m20='With private health insurance'
B27019m21='With public coverage'
B27019m22='No health insurance coverage'
B27019m23='65 years and over:'
B27019m24='Less than high school graduate:'
B27019m25='With health insurance coverage'
B27019m26='With private health insurance'
B27019m27='With public coverage'
B27019m28='No health insurance coverage'
B27019m29='High school graduate (includes equivalency):'
B27019m30='With health insurance coverage'
B27019m31='With private health insurance'
B27019m32='With public coverage'
B27019m33='No health insurance coverage'
B27019m34='Some college or associate''s degree:'
B27019m35='With health insurance coverage'
B27019m36='With private health insurance'
B27019m37='With public coverage'
B27019m38='No health insurance coverage'
B27019m39='Bachelor''s degree or higher:'
B27019m40='With health insurance coverage'
B27019m41='With private health insurance'
B27019m42='With public coverage'
B27019m43='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS AND TYPE BY CITIZENSHIP STATUS */
/*Universe:  Civilian noninstitutionalized population */
 
B27020m1='Total:'
B27020m2='Native Born:'
B27020m3='With health insurance coverage'
B27020m4='With private health insurance'
B27020m5='With public coverage'
B27020m6='No health insurance coverage'
B27020m7='Foreign Born:'
B27020m8='Naturalized:'
B27020m9='With health insurance coverage'
B27020m10='With private health insurance'
B27020m11='With public coverage'
B27020m12='No health insurance coverage'
B27020m13='Noncitizen:'
B27020m14='With health insurance coverage'
B27020m15='With private health insurance'
B27020m16='With public coverage'
B27020m17='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS BY SEX BY ENROLLMENT STATUS FOR YOUNG ADULTS AGED 19 TO 25 */
/*Universe:  Civilian noninstitutionalized population 19 to 25 years */
 
B27022m1='Total:'
B27022m2='Male:'
B27022m3='Enrolled in school:'
B27022m4='With health insurance coverage'
B27022m5='No health insurance coverage'
B27022m6='Not enrolled in school:'
B27022m7='With health insurance coverage'
B27022m8='No health insurance coverage'
B27022m9='Female:'
B27022m10='Enrolled in school:'
B27022m11='With health insurance coverage'
B27022m12='No health insurance coverage'
B27022m13='Not enrolled in school:'
B27022m14='With health insurance coverage'
B27022m15='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS AND TYPE BY WORK EXPERIENCE BY AGE */
/*Universe:  Civilian noninstitutionalized population 18 years and over */
 
C27012m1='Total:'
C27012m2='Worked full-time, year-round:'
C27012m3='18 to 64 years:'
C27012m4='With health insurance coverage'
C27012m5='With employer-based health insurance'
C27012m6='With direct-purchase health insurance'
C27012m7='With Medicare coverage'
C27012m8='With Medicaid/means-tested public coverage'
C27012m9='No health insurance coverage'
C27012m10='65 years and over:'
C27012m11='With health insurance coverage'
C27012m12='With employer-based health insurance'
C27012m13='With direct-purchase health insurance'
C27012m14='With Medicare coverage'
C27012m15='With Medicaid/means-tested public coverage'
C27012m16='No health insurance coverage'
C27012m17='Worked less than full-time, year-round:'
C27012m18='18 to 64 years:'
C27012m19='With health insurance coverage'
C27012m20='With employer-based health insurance'
C27012m21='With direct-purchase health insurance'
C27012m22='With Medicare coverage'
C27012m23='With Medicaid/means-tested public coverage'
C27012m24='No health insurance coverage'
C27012m25='65 years and over:'
C27012m26='With health insurance coverage'
C27012m27='With employer-based health insurance'
C27012m28='With direct-purchase health insurance'
C27012m29='With Medicare coverage'
C27012m30='With Medicaid/means-tested public coverage'
C27012m31='No health insurance coverage'
C27012m32='Did not work:'
C27012m33='18 to 64 years:'
C27012m34='With health insurance coverage'
C27012m35='With employer-based health insurance'
C27012m36='With direct-purchase health insurance'
C27012m37='With Medicare coverage'
C27012m38='With Medicaid/means-tested public coverage'
C27012m39='No health insurance coverage'
C27012m40='65 years and over:'
C27012m41='With health insurance coverage'
C27012m42='With employer-based health insurance'
C27012m43='With direct-purchase health insurance'
C27012m44='With Medicare coverage'
C27012m45='With Medicaid/means-tested public coverage'
C27012m46='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS BY RATIO OF INCOME TO POVERTY LEVEL IN THE PAST 12 MONTHS BY AGE */
/*Universe:  Civilian noninstitutionalized population for whom poverty status is determined */
 
C27016m1='Total:'
C27016m2='Under 1.38 of poverty threshold:'
C27016m3='Under 18 years:'
C27016m4='With health insurance coverage'
C27016m5='No health insurance coverage'
C27016m6='18 to 64 years:'
C27016m7='With health insurance coverage'
C27016m8='No health insurance coverage'
C27016m9='65 years and over:'
C27016m10='With health insurance coverage'
C27016m11='No health insurance coverage'
C27016m12='1.38 to 1.99 of poverty threshold:'
C27016m13='Under 18 years:'
C27016m14='With health insurance coverage'
C27016m15='No health insurance coverage'
C27016m16='18 to 64 years:'
C27016m17='With health insurance coverage'
C27016m18='No health insurance coverage'
C27016m19='65 years and over:'
C27016m20='With health insurance coverage'
C27016m21='No health insurance coverage'
C27016m22='2.00 to 3.99 of poverty threshold:'
C27016m23='Under 18 years:'
C27016m24='With health insurance coverage'
C27016m25='No health insurance coverage'
C27016m26='18 to 64 years:'
C27016m27='With health insurance coverage'
C27016m28='No health insurance coverage'
C27016m29='65 years and over:'
C27016m30='With health insurance coverage'
C27016m31='No health insurance coverage'
C27016m32='4.00 of poverty threshold and over:'
C27016m33='Under 18 years:'
C27016m34='With health insurance coverage'
C27016m35='No health insurance coverage'
C27016m36='18 to 64 years:'
C27016m37='With health insurance coverage'
C27016m38='No health insurance coverage'
C27016m39='65 years and over:'
C27016m40='With health insurance coverage'
C27016m41='No health insurance coverage'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B27015m1
B27015m2
B27015m3
B27015m4
B27015m5
B27015m6
B27015m7
B27015m8
B27015m9
B27015m10
B27015m11
B27015m12
B27015m13
B27015m14
B27015m15
B27015m16
B27015m17
B27015m18
B27015m19
B27015m20
B27015m21
B27015m22
B27015m23
B27015m24
B27015m25
B27015m26
 
B27019m1
B27019m2
B27019m3
B27019m4
B27019m5
B27019m6
B27019m7
B27019m8
B27019m9
B27019m10
B27019m11
B27019m12
B27019m13
B27019m14
B27019m15
B27019m16
B27019m17
B27019m18
B27019m19
B27019m20
B27019m21
B27019m22
B27019m23
B27019m24
B27019m25
B27019m26
B27019m27
B27019m28
B27019m29
B27019m30
B27019m31
B27019m32
B27019m33
B27019m34
B27019m35
B27019m36
B27019m37
B27019m38
B27019m39
B27019m40
B27019m41
B27019m42
B27019m43
 
B27020m1
B27020m2
B27020m3
B27020m4
B27020m5
B27020m6
B27020m7
B27020m8
B27020m9
B27020m10
B27020m11
B27020m12
B27020m13
B27020m14
B27020m15
B27020m16
B27020m17
 
B27022m1
B27022m2
B27022m3
B27022m4
B27022m5
B27022m6
B27022m7
B27022m8
B27022m9
B27022m10
B27022m11
B27022m12
B27022m13
B27022m14
B27022m15
 
C27012m1
C27012m2
C27012m3
C27012m4
C27012m5
C27012m6
C27012m7
C27012m8
C27012m9
C27012m10
C27012m11
C27012m12
C27012m13
C27012m14
C27012m15
C27012m16
C27012m17
C27012m18
C27012m19
C27012m20
C27012m21
C27012m22
C27012m23
C27012m24
C27012m25
C27012m26
C27012m27
C27012m28
C27012m29
C27012m30
C27012m31
C27012m32
C27012m33
C27012m34
C27012m35
C27012m36
C27012m37
C27012m38
C27012m39
C27012m40
C27012m41
C27012m42
C27012m43
C27012m44
C27012m45
C27012m46
 
C27016m1
C27016m2
C27016m3
C27016m4
C27016m5
C27016m6
C27016m7
C27016m8
C27016m9
C27016m10
C27016m11
C27016m12
C27016m13
C27016m14
C27016m15
C27016m16
C27016m17
C27016m18
C27016m19
C27016m20
C27016m21
C27016m22
C27016m23
C27016m24
C27016m25
C27016m26
C27016m27
C27016m28
C27016m29
C27016m30
C27016m31
C27016m32
C27016m33
C27016m34
C27016m35
C27016m36
C27016m37
C27016m38
C27016m39
C27016m40
C27016m41
;
RUN;
TITLE2;
