TITLE2 "e20125md0054000";
DATA work.SFe0054md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0054000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*POVERTY STATUS IN THE PAST 12 MONTHS BY AGE (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population for whom poverty status is determined */
 
B17020He1='Total:'
B17020He2='Income in the past 12 months below poverty level:'
B17020He3='Under 5 years'
B17020He4='5 years'
B17020He5='6 to 11 years'
B17020He6='12 to 17 years'
B17020He7='18 to 64 years'
B17020He8='65 to 74 years'
B17020He9='75 years and over'
B17020He10='Income in the past 12 months at or above poverty level:'
B17020He11='Under 5 years'
B17020He12='5 years'
B17020He13='6 to 11 years'
B17020He14='12 to 17 years'
B17020He15='18 to 64 years'
B17020He16='65 to 74 years'
B17020He17='75 years and over'
/*POVERTY STATUS IN THE PAST 12 MONTHS BY AGE (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population for whom poverty status is determined */
 
B17020Ie1='Total:'
B17020Ie2='Income in the past 12 months below poverty level:'
B17020Ie3='Under 5 years'
B17020Ie4='5 years'
B17020Ie5='6 to 11 years'
B17020Ie6='12 to 17 years'
B17020Ie7='18 to 64 years'
B17020Ie8='65 to 74 years'
B17020Ie9='75 years and over'
B17020Ie10='Income in the past 12 months at or above poverty level:'
B17020Ie11='Under 5 years'
B17020Ie12='5 years'
B17020Ie13='6 to 11 years'
B17020Ie14='12 to 17 years'
B17020Ie15='18 to 64 years'
B17020Ie16='65 to 74 years'
B17020Ie17='75 years and over'
/*POVERTY STATUS OF INDIVIDUALS IN THE PAST 12 MONTHS BY LIVING ARRANGEMENT */
/*Universe:  Population for whom poverty status is determined */
 
B17021e1='Total:'
B17021e2='Income in the past 12 months below poverty level:'
B17021e3='In family households:'
B17021e4='In married couple families:'
B17021e5='All relatives'
B17021e6='Non-relatives'
B17021e7='In other families:'
B17021e8='Male householder, no wife present:'
B17021e9='All relatives'
B17021e10='Non-relatives'
B17021e11='Female householder, no husband present:'
B17021e12='All relatives'
B17021e13='Non-relatives'
B17021e14='In non-family households and other living arrangement:'
B17021e15='Householder:'
B17021e16='Living alone'
B17021e17='Not living alone'
B17021e18='Other living arrangement'
B17021e19='Income in the past 12 months at or above poverty level:'
B17021e20='In family households:'
B17021e21='In married couple families:'
B17021e22='All relatives'
B17021e23='Non-relatives'
B17021e24='In other families:'
B17021e25='Male householder, no wife present:'
B17021e26='All relatives'
B17021e27='Non-relatives'
B17021e28='Female householder, no husband present:'
B17021e29='All relatives'
B17021e30='Non-relatives'
B17021e31='In non-family households and other living arrangement:'
B17021e32='Householder:'
B17021e33='Living alone'
B17021e34='Not living alone'
B17021e35='Other living arrangement'
/*RATIO OF INCOME TO POVERTY LEVEL IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY PRESENCE OF RELATED CHILDREN UNDER 18 YEARS BY AGE OF RELATED CHILDREN */
/*Universe:  Families */
 
B17022e1='Total:'
B17022e2='Under 1.30:'
B17022e3='Married-couple family:'
B17022e4='With related children under 18 years:'
B17022e5='Under 5 years only'
B17022e6='Under 5 years and 5 to 17 years'
B17022e7='5 to 17 years only'
B17022e8='No related children under 18 years'
B17022e9='Other family:'
B17022e10='Male householder, no wife present:'
B17022e11='With related children under 18 years:'
B17022e12='Under 5 years only'
B17022e13='Under 5 years and 5 to 17 years'
B17022e14='5 to 17 years only'
B17022e15='No related children under 18 years'
B17022e16='Female householder, no husband present:'
B17022e17='With related children under 18 years:'
B17022e18='Under 5 years only'
B17022e19='Under 5 years and 5 to 17 years'
B17022e20='5 to 17 years only'
B17022e21='No related children under 18 years'
B17022e22='1.30 to 1.49:'
B17022e23='Married-couple family:'
B17022e24='With related children under 18 years:'
B17022e25='Under 5 years only'
B17022e26='Under 5 years and 5 to 17 years'
B17022e27='5 to 17 years only'
B17022e28='No related children under 18 years'
B17022e29='Other family:'
B17022e30='Male householder, no wife present:'
B17022e31='With related children under 18 years:'
B17022e32='Under 5 years only'
B17022e33='Under 5 years and 5 to 17 years'
B17022e34='5 to 17 years only'
B17022e35='No related children under 18 years'
B17022e36='Female householder, no husband present:'
B17022e37='With related children under 18 years:'
B17022e38='Under 5 years only'
B17022e39='Under 5 years and 5 to 17 years'
B17022e40='5 to 17 years only'
B17022e41='No related children under 18 years'
B17022e42='1.50 to 1.84:'
B17022e43='Married-couple family:'
B17022e44='With related children under 18 years:'
B17022e45='Under 5 years only'
B17022e46='Under 5 years and 5 to 17 years'
B17022e47='5 to 17 years only'
B17022e48='No related children under 18 years'
B17022e49='Other family:'
B17022e50='Male householder, no wife present:'
B17022e51='With related children under 18 years:'
B17022e52='Under 5 years only'
B17022e53='Under 5 years and 5 to 17 years'
B17022e54='5 to 17 years only'
B17022e55='No related children under 18 years'
B17022e56='Female householder, no husband present:'
B17022e57='With related children under 18 years:'
B17022e58='Under 5 years only'
B17022e59='Under 5 years and 5 to 17 years'
B17022e60='5 to 17 years only'
B17022e61='No related children under 18 years'
B17022e62='1.85 and above:'
B17022e63='Married-couple family:'
B17022e64='With related children under 18 years:'
B17022e65='Under 5 years only'
B17022e66='Under 5 years and 5 to 17 years'
B17022e67='5 to 17 years only'
B17022e68='No related children under 18 years'
B17022e69='Other family:'
B17022e70='Male householder, no wife present:'
B17022e71='With related children under 18 years:'
B17022e72='Under 5 years only'
B17022e73='Under 5 years and 5 to 17 years'
B17022e74='5 to 17 years only'
B17022e75='No related children under 18 years'
B17022e76='Female householder, no husband present:'
B17022e77='With related children under 18 years:'
B17022e78='Under 5 years only'
B17022e79='Under 5 years and 5 to 17 years'
B17022e80='5 to 17 years only'
B17022e81='No related children under 18 years'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY HOUSEHOLD TYPE BY NUMBER OF OWN CHILDREN UNDER 18 YEARS */
/*Universe:  Families */
 
B17023e1='Total:'
B17023e2='Income in the past 12 months below poverty level:'
B17023e3='Married-couple family:'
B17023e4='No own child'
B17023e5='1 or 2 own children'
B17023e6='3 or 4 own children'
B17023e7='5 or more own children'
B17023e8='Other families:'
B17023e9='Male householder, no wife present:'
B17023e10='No own child'
B17023e11='1 or 2 own children'
B17023e12='3 or 4 own children'
B17023e13='5 or more own children'
B17023e14='Female householder, no husband present:'
B17023e15='No own child'
B17023e16='1 or 2 own children'
B17023e17='3 or 4 own children'
B17023e18='5 or more own children'
B17023e19='Income in the past 12 months at or above poverty level:'
B17023e20='Married-couple family:'
B17023e21='No own child'
B17023e22='1 or 2 own children'
B17023e23='3 or 4 own children'
B17023e24='5 or more own children'
B17023e25='Other families:'
B17023e26='Male householder, no wife present:'
B17023e27='No own child'
B17023e28='1 or 2 own children'
B17023e29='3 or 4 own children'
B17023e30='5 or more own children'
B17023e31='Female householder, no husband present:'
B17023e32='No own child'
B17023e33='1 or 2 own children'
B17023e34='3 or 4 own children'
B17023e35='5 or more own children'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B17020He1
B17020He2
B17020He3
B17020He4
B17020He5
B17020He6
B17020He7
B17020He8
B17020He9
B17020He10
B17020He11
B17020He12
B17020He13
B17020He14
B17020He15
B17020He16
B17020He17
 
B17020Ie1
B17020Ie2
B17020Ie3
B17020Ie4
B17020Ie5
B17020Ie6
B17020Ie7
B17020Ie8
B17020Ie9
B17020Ie10
B17020Ie11
B17020Ie12
B17020Ie13
B17020Ie14
B17020Ie15
B17020Ie16
B17020Ie17
 
B17021e1
B17021e2
B17021e3
B17021e4
B17021e5
B17021e6
B17021e7
B17021e8
B17021e9
B17021e10
B17021e11
B17021e12
B17021e13
B17021e14
B17021e15
B17021e16
B17021e17
B17021e18
B17021e19
B17021e20
B17021e21
B17021e22
B17021e23
B17021e24
B17021e25
B17021e26
B17021e27
B17021e28
B17021e29
B17021e30
B17021e31
B17021e32
B17021e33
B17021e34
B17021e35
 
B17022e1
B17022e2
B17022e3
B17022e4
B17022e5
B17022e6
B17022e7
B17022e8
B17022e9
B17022e10
B17022e11
B17022e12
B17022e13
B17022e14
B17022e15
B17022e16
B17022e17
B17022e18
B17022e19
B17022e20
B17022e21
B17022e22
B17022e23
B17022e24
B17022e25
B17022e26
B17022e27
B17022e28
B17022e29
B17022e30
B17022e31
B17022e32
B17022e33
B17022e34
B17022e35
B17022e36
B17022e37
B17022e38
B17022e39
B17022e40
B17022e41
B17022e42
B17022e43
B17022e44
B17022e45
B17022e46
B17022e47
B17022e48
B17022e49
B17022e50
B17022e51
B17022e52
B17022e53
B17022e54
B17022e55
B17022e56
B17022e57
B17022e58
B17022e59
B17022e60
B17022e61
B17022e62
B17022e63
B17022e64
B17022e65
B17022e66
B17022e67
B17022e68
B17022e69
B17022e70
B17022e71
B17022e72
B17022e73
B17022e74
B17022e75
B17022e76
B17022e77
B17022e78
B17022e79
B17022e80
B17022e81
 
B17023e1
B17023e2
B17023e3
B17023e4
B17023e5
B17023e6
B17023e7
B17023e8
B17023e9
B17023e10
B17023e11
B17023e12
B17023e13
B17023e14
B17023e15
B17023e16
B17023e17
B17023e18
B17023e19
B17023e20
B17023e21
B17023e22
B17023e23
B17023e24
B17023e25
B17023e26
B17023e27
B17023e28
B17023e29
B17023e30
B17023e31
B17023e32
B17023e33
B17023e34
B17023e35
;
RUN;
TITLE2;
