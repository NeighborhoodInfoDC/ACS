TITLE2 "e20125dc0115000";
DATA work.SFe0115dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0115000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*HEALTH INSURANCE COVERAGE STATUS AND TYPE BY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Civilian population living in households */
 
B27015e1='Total:'
B27015e2='Under $25,000:'
B27015e3='With health insurance coverage'
B27015e4='With private health insurance'
B27015e5='With public coverage'
B27015e6='No health insurance coverage'
B27015e7='$25,000 to $49,999:'
B27015e8='With health insurance coverage'
B27015e9='With private health insurance'
B27015e10='With public coverage'
B27015e11='No health insurance coverage'
B27015e12='$50,000 to $74,999:'
B27015e13='With health insurance coverage'
B27015e14='With private health insurance'
B27015e15='With public coverage'
B27015e16='No health insurance coverage'
B27015e17='$75,000 to $99,999:'
B27015e18='With health insurance coverage'
B27015e19='With private health insurance'
B27015e20='With public coverage'
B27015e21='No health insurance coverage'
B27015e22='$100,000 or more:'
B27015e23='With health insurance coverage'
B27015e24='With private health insurance'
B27015e25='With public coverage'
B27015e26='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS AND TYPE BY AGE BY EDUCATIONAL ATTAINMENT */
/*Universe:  Civilian noninstitutionalized population 25 years and over */
 
B27019e1='Total:'
B27019e2='25 to 64 years:'
B27019e3='Less than high school graduate:'
B27019e4='With health insurance coverage'
B27019e5='With private health insurance'
B27019e6='With public coverage'
B27019e7='No health insurance coverage'
B27019e8='High school graduate (includes equivalency):'
B27019e9='With health insurance coverage'
B27019e10='With private health insurance'
B27019e11='With public coverage'
B27019e12='No health insurance coverage'
B27019e13='Some college or associate''s degree:'
B27019e14='With health insurance coverage'
B27019e15='With private health insurance'
B27019e16='With public coverage'
B27019e17='No health insurance coverage'
B27019e18='Bachelor''s degree or higher:'
B27019e19='With health insurance coverage'
B27019e20='With private health insurance'
B27019e21='With public coverage'
B27019e22='No health insurance coverage'
B27019e23='65 years and over:'
B27019e24='Less than high school graduate:'
B27019e25='With health insurance coverage'
B27019e26='With private health insurance'
B27019e27='With public coverage'
B27019e28='No health insurance coverage'
B27019e29='High school graduate (includes equivalency):'
B27019e30='With health insurance coverage'
B27019e31='With private health insurance'
B27019e32='With public coverage'
B27019e33='No health insurance coverage'
B27019e34='Some college or associate''s degree:'
B27019e35='With health insurance coverage'
B27019e36='With private health insurance'
B27019e37='With public coverage'
B27019e38='No health insurance coverage'
B27019e39='Bachelor''s degree or higher:'
B27019e40='With health insurance coverage'
B27019e41='With private health insurance'
B27019e42='With public coverage'
B27019e43='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS AND TYPE BY CITIZENSHIP STATUS */
/*Universe:  Civilian noninstitutionalized population */
 
B27020e1='Total:'
B27020e2='Native Born:'
B27020e3='With health insurance coverage'
B27020e4='With private health insurance'
B27020e5='With public coverage'
B27020e6='No health insurance coverage'
B27020e7='Foreign Born:'
B27020e8='Naturalized:'
B27020e9='With health insurance coverage'
B27020e10='With private health insurance'
B27020e11='With public coverage'
B27020e12='No health insurance coverage'
B27020e13='Noncitizen:'
B27020e14='With health insurance coverage'
B27020e15='With private health insurance'
B27020e16='With public coverage'
B27020e17='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS BY SEX BY ENROLLMENT STATUS FOR YOUNG ADULTS AGED 19 TO 25 */
/*Universe:  Civilian noninstitutionalized population 19 to 25 years */
 
B27022e1='Total:'
B27022e2='Male:'
B27022e3='Enrolled in school:'
B27022e4='With health insurance coverage'
B27022e5='No health insurance coverage'
B27022e6='Not enrolled in school:'
B27022e7='With health insurance coverage'
B27022e8='No health insurance coverage'
B27022e9='Female:'
B27022e10='Enrolled in school:'
B27022e11='With health insurance coverage'
B27022e12='No health insurance coverage'
B27022e13='Not enrolled in school:'
B27022e14='With health insurance coverage'
B27022e15='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS AND TYPE BY WORK EXPERIENCE BY AGE */
/*Universe:  Civilian noninstitutionalized population 18 years and over */
 
C27012e1='Total:'
C27012e2='Worked full-time, year-round:'
C27012e3='18 to 64 years:'
C27012e4='With health insurance coverage'
C27012e5='With employer-based health insurance'
C27012e6='With direct-purchase health insurance'
C27012e7='With Medicare coverage'
C27012e8='With Medicaid/means-tested public coverage'
C27012e9='No health insurance coverage'
C27012e10='65 years and over:'
C27012e11='With health insurance coverage'
C27012e12='With employer-based health insurance'
C27012e13='With direct-purchase health insurance'
C27012e14='With Medicare coverage'
C27012e15='With Medicaid/means-tested public coverage'
C27012e16='No health insurance coverage'
C27012e17='Worked less than full-time, year-round:'
C27012e18='18 to 64 years:'
C27012e19='With health insurance coverage'
C27012e20='With employer-based health insurance'
C27012e21='With direct-purchase health insurance'
C27012e22='With Medicare coverage'
C27012e23='With Medicaid/means-tested public coverage'
C27012e24='No health insurance coverage'
C27012e25='65 years and over:'
C27012e26='With health insurance coverage'
C27012e27='With employer-based health insurance'
C27012e28='With direct-purchase health insurance'
C27012e29='With Medicare coverage'
C27012e30='With Medicaid/means-tested public coverage'
C27012e31='No health insurance coverage'
C27012e32='Did not work:'
C27012e33='18 to 64 years:'
C27012e34='With health insurance coverage'
C27012e35='With employer-based health insurance'
C27012e36='With direct-purchase health insurance'
C27012e37='With Medicare coverage'
C27012e38='With Medicaid/means-tested public coverage'
C27012e39='No health insurance coverage'
C27012e40='65 years and over:'
C27012e41='With health insurance coverage'
C27012e42='With employer-based health insurance'
C27012e43='With direct-purchase health insurance'
C27012e44='With Medicare coverage'
C27012e45='With Medicaid/means-tested public coverage'
C27012e46='No health insurance coverage'
/*HEALTH INSURANCE COVERAGE STATUS BY RATIO OF INCOME TO POVERTY LEVEL IN THE PAST 12 MONTHS BY AGE */
/*Universe:  Civilian noninstitutionalized population for whom poverty status is determined */
 
C27016e1='Total:'
C27016e2='Under 1.38 of poverty threshold:'
C27016e3='Under 18 years:'
C27016e4='With health insurance coverage'
C27016e5='No health insurance coverage'
C27016e6='18 to 64 years:'
C27016e7='With health insurance coverage'
C27016e8='No health insurance coverage'
C27016e9='65 years and over:'
C27016e10='With health insurance coverage'
C27016e11='No health insurance coverage'
C27016e12='1.38 to 1.99 of poverty threshold:'
C27016e13='Under 18 years:'
C27016e14='With health insurance coverage'
C27016e15='No health insurance coverage'
C27016e16='18 to 64 years:'
C27016e17='With health insurance coverage'
C27016e18='No health insurance coverage'
C27016e19='65 years and over:'
C27016e20='With health insurance coverage'
C27016e21='No health insurance coverage'
C27016e22='2.00 to 3.99 of poverty threshold:'
C27016e23='Under 18 years:'
C27016e24='With health insurance coverage'
C27016e25='No health insurance coverage'
C27016e26='18 to 64 years:'
C27016e27='With health insurance coverage'
C27016e28='No health insurance coverage'
C27016e29='65 years and over:'
C27016e30='With health insurance coverage'
C27016e31='No health insurance coverage'
C27016e32='4.00 of poverty threshold and over:'
C27016e33='Under 18 years:'
C27016e34='With health insurance coverage'
C27016e35='No health insurance coverage'
C27016e36='18 to 64 years:'
C27016e37='With health insurance coverage'
C27016e38='No health insurance coverage'
C27016e39='65 years and over:'
C27016e40='With health insurance coverage'
C27016e41='No health insurance coverage'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B27015e1
B27015e2
B27015e3
B27015e4
B27015e5
B27015e6
B27015e7
B27015e8
B27015e9
B27015e10
B27015e11
B27015e12
B27015e13
B27015e14
B27015e15
B27015e16
B27015e17
B27015e18
B27015e19
B27015e20
B27015e21
B27015e22
B27015e23
B27015e24
B27015e25
B27015e26
 
B27019e1
B27019e2
B27019e3
B27019e4
B27019e5
B27019e6
B27019e7
B27019e8
B27019e9
B27019e10
B27019e11
B27019e12
B27019e13
B27019e14
B27019e15
B27019e16
B27019e17
B27019e18
B27019e19
B27019e20
B27019e21
B27019e22
B27019e23
B27019e24
B27019e25
B27019e26
B27019e27
B27019e28
B27019e29
B27019e30
B27019e31
B27019e32
B27019e33
B27019e34
B27019e35
B27019e36
B27019e37
B27019e38
B27019e39
B27019e40
B27019e41
B27019e42
B27019e43
 
B27020e1
B27020e2
B27020e3
B27020e4
B27020e5
B27020e6
B27020e7
B27020e8
B27020e9
B27020e10
B27020e11
B27020e12
B27020e13
B27020e14
B27020e15
B27020e16
B27020e17
 
B27022e1
B27022e2
B27022e3
B27022e4
B27022e5
B27022e6
B27022e7
B27022e8
B27022e9
B27022e10
B27022e11
B27022e12
B27022e13
B27022e14
B27022e15
 
C27012e1
C27012e2
C27012e3
C27012e4
C27012e5
C27012e6
C27012e7
C27012e8
C27012e9
C27012e10
C27012e11
C27012e12
C27012e13
C27012e14
C27012e15
C27012e16
C27012e17
C27012e18
C27012e19
C27012e20
C27012e21
C27012e22
C27012e23
C27012e24
C27012e25
C27012e26
C27012e27
C27012e28
C27012e29
C27012e30
C27012e31
C27012e32
C27012e33
C27012e34
C27012e35
C27012e36
C27012e37
C27012e38
C27012e39
C27012e40
C27012e41
C27012e42
C27012e43
C27012e44
C27012e45
C27012e46
 
C27016e1
C27016e2
C27016e3
C27016e4
C27016e5
C27016e6
C27016e7
C27016e8
C27016e9
C27016e10
C27016e11
C27016e12
C27016e13
C27016e14
C27016e15
C27016e16
C27016e17
C27016e18
C27016e19
C27016e20
C27016e21
C27016e22
C27016e23
C27016e24
C27016e25
C27016e26
C27016e27
C27016e28
C27016e29
C27016e30
C27016e31
C27016e32
C27016e33
C27016e34
C27016e35
C27016e36
C27016e37
C27016e38
C27016e39
C27016e40
C27016e41
;
RUN;
TITLE2;
