TITLE2 "e20125md0052000";
DATA work.SFe0052md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0052000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY PRESENCE OF RELATED CHILDREN UNDER 18 YEARS BY AGE OF RELATED CHILDREN (HISPANIC OR LATINO) */
/*Universe:  Families with a householder who is Hispanic or Latino */
 
B17010Ie1='Total:'
B17010Ie2='Income in the past 12 months below poverty level:'
B17010Ie3='Married-couple family:'
B17010Ie4='With related children under 18 years:'
B17010Ie5='Under 5 years only'
B17010Ie6='Under 5 years and 5 to 17 years'
B17010Ie7='5 to 17 years only'
B17010Ie8='No related children under 18 years'
B17010Ie9='Other family:'
B17010Ie10='Male householder, no wife present:'
B17010Ie11='With related children under 18 years:'
B17010Ie12='Under 5 years only'
B17010Ie13='Under 5 years and 5 to 17 years'
B17010Ie14='5 to 17 years only'
B17010Ie15='No related children under 18 years'
B17010Ie16='Female householder, no husband present:'
B17010Ie17='With related children under 18 years:'
B17010Ie18='Under 5 years only'
B17010Ie19='Under 5 years and 5 to 17 years'
B17010Ie20='5 to 17 years only'
B17010Ie21='No related children under 18 years'
B17010Ie22='Income in the past 12 months at or above poverty level:'
B17010Ie23='Married-couple family:'
B17010Ie24='With related children under 18 years:'
B17010Ie25='Under 5 years only'
B17010Ie26='Under 5 years and 5 to 17 years'
B17010Ie27='5 to 17 years only'
B17010Ie28='No related children under 18 years'
B17010Ie29='Other family:'
B17010Ie30='Male householder, no wife present:'
B17010Ie31='With related children under 18 years:'
B17010Ie32='Under 5 years only'
B17010Ie33='Under 5 years and 5 to 17 years'
B17010Ie34='5 to 17 years only'
B17010Ie35='No related children under 18 years'
B17010Ie36='Female householder, no husband present:'
B17010Ie37='With related children under 18 years:'
B17010Ie38='Under 5 years only'
B17010Ie39='Under 5 years and 5 to 17 years'
B17010Ie40='5 to 17 years only'
B17010Ie41='No related children under 18 years'
/*AGGREGATE INCOME DEFICIT (DOLLARS) IN THE PAST 12 MONTHS FOR FAMILIES BY FAMILY TYPE */
/*Universe:  Families with income in the past 12 months below the poverty level */
 
B17011e1='Aggregate income deficit in the past 12 months:'
B17011e2='Married-couple family'
B17011e3='Other family:'
B17011e4='Male householder, no wife present'
B17011e5='Female householder, no husband present'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY HOUSEHOLD TYPE BY NUMBER OF RELATED CHILDREN UNDER 18 YEARS */
/*Universe:  Families */
 
B17012e1='Total:'
B17012e2='Income in the past 12 months below poverty level:'
B17012e3='Married-couple family:'
B17012e4='No child'
B17012e5='1 or 2 children'
B17012e6='3 or 4 children'
B17012e7='5 or more children'
B17012e8='Other families:'
B17012e9='Male householder, no wife present:'
B17012e10='No child'
B17012e11='1 or 2 children'
B17012e12='3 or 4 children'
B17012e13='5 or more children'
B17012e14='Female householder, no husband present:'
B17012e15='No child'
B17012e16='1 or 2 children'
B17012e17='3 or 4 children'
B17012e18='5 or more children'
B17012e19='Income in the past 12 months at or above poverty level:'
B17012e20='Married-couple family:'
B17012e21='No child'
B17012e22='1 or 2 children'
B17012e23='3 or 4 children'
B17012e24='5 or more children'
B17012e25='Other families:'
B17012e26='Male householder, no wife present:'
B17012e27='No child'
B17012e28='1 or 2 children'
B17012e29='3 or 4 children'
B17012e30='5 or more children'
B17012e31='Female householder, no husband present:'
B17012e32='No child'
B17012e33='1 or 2 children'
B17012e34='3 or 4 children'
B17012e35='5 or more children'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY HOUSEHOLD TYPE BY NUMBER OF PERSONS IN FAMILY */
/*Universe:  Families */
 
B17013e1='Total:'
B17013e2='Income in the past 12 months below poverty level:'
B17013e3='Married-couple family:'
B17013e4='2 people'
B17013e5='3 to 4 people'
B17013e6='5 to 6 people'
B17013e7='7 or more people'
B17013e8='Other families:'
B17013e9='Male householder, no wife present:'
B17013e10='2 people'
B17013e11='3 to 4 people'
B17013e12='5 to 6 people'
B17013e13='7 or more people'
B17013e14='Female householder, no husband present:'
B17013e15='2 people'
B17013e16='3 to 4 people'
B17013e17='5 to 6 people'
B17013e18='7 or more people'
B17013e19='Income in the past 12 months at or above poverty level:'
B17013e20='Married-couple family:'
B17013e21='2 people'
B17013e22='3 to 4 people'
B17013e23='5 to 6 people'
B17013e24='7 or more people'
B17013e25='Other families:'
B17013e26='Male householder, no wife present:'
B17013e27='2 people'
B17013e28='3 to 4 people'
B17013e29='5 to 6 people'
B17013e30='7 or more people'
B17013e31='Female householder, no husband present:'
B17013e32='2 people'
B17013e33='3 to 4 people'
B17013e34='5 to 6 people'
B17013e35='7 or more people'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY HOUSEHOLD TYPE BY NUMBER OF WORKERS IN FAMILY */
/*Universe:  Families */
 
B17014e1='Total:'
B17014e2='Income in the past 12 months below poverty level:'
B17014e3='Married-couple family:'
B17014e4='No workers'
B17014e5='1 worker'
B17014e6='2 workers'
B17014e7='3 or more workers'
B17014e8='Other families:'
B17014e9='Male householder, no wife present:'
B17014e10='No workers'
B17014e11='1 worker'
B17014e12='2 workers'
B17014e13='3 or more workers'
B17014e14='Female householder, no husband present:'
B17014e15='No workers'
B17014e16='1 worker'
B17014e17='2 workers'
B17014e18='3 or more workers'
B17014e19='Income in the past 12 months at or above poverty level:'
B17014e20='Married-couple family:'
B17014e21='No workers'
B17014e22='1 worker'
B17014e23='2 workers'
B17014e24='3 or more workers'
B17014e25='Other families:'
B17014e26='Male householder, no wife present:'
B17014e27='No workers'
B17014e28='1 worker'
B17014e29='2 workers'
B17014e30='3 or more workers'
B17014e31='Female householder, no husband present:'
B17014e32='No workers'
B17014e33='1 worker'
B17014e34='2 workers'
B17014e35='3 or more workers'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY SOCIAL SECURITY INCOME BY SUPPLEMENTAL SECURITY INCOME (SSI) AND CASH PUBLIC ASSISTANCE INCOME */
/*Universe:  Families */
 
B17015e1='Total:'
B17015e2='Income in the past 12 months below poverty level:'
B17015e3='Married-couple family:'
B17015e4='With Social Security income in the past 12 months:'
B17015e5='With SSI and/or cash public assistance income in the past 12 months'
B17015e6='Without SSI or cash public assistance income in the past 12 months'
B17015e7='Without Social Security income in the past 12 months:'
B17015e8='With SSI and/or cash public assistance income in the past 12 months'
B17015e9='Without SSI or cash public assistance income in the past 12 months'
B17015e10='Other family:'
B17015e11='Male householder, no wife present:'
B17015e12='With Social Security income in the past 12 months:'
B17015e13='With SSI and/or cash public assistance income in the past 12 months'
B17015e14='Without SSI or cash public assistance income in the past 12 months'
B17015e15='Without Social Security income in the past 12 months:'
B17015e16='With SSI and/or cash public assistance income in the past 12 months'
B17015e17='Without SSI or cash public assistance income in the past 12 months'
B17015e18='Female householder, no husband present:'
B17015e19='With Social Security income in the past 12 months:'
B17015e20='With SSI and/or cash public assistance income in the past 12 months'
B17015e21='Without SSI or cash public assistance income in the past 12 months'
B17015e22='Without Social Security income in the past 12 months:'
B17015e23='With SSI and/or cash public assistance income in the past 12 months'
B17015e24='Without SSI or cash public assistance income in the past 12 months'
B17015e25='Income in the past 12 months at or above poverty level:'
B17015e26='Married-couple family:'
B17015e27='With Social Security income in the past 12 months:'
B17015e28='With SSI and/or cash public assistance income in the past 12 months'
B17015e29='Without SSI or cash public assistance income in the past 12 months'
B17015e30='Without Social Security income in the past 12 months:'
B17015e31='With SSI and/or cash public assistance income in the past 12 months'
B17015e32='Without SSI or cash public assistance income in the past 12 months'
B17015e33='Other family:'
B17015e34='Male householder, no wife present:'
B17015e35='With Social Security income in the past 12 months:'
B17015e36='With SSI and/or cash public assistance income in the past 12 months'
B17015e37='Without SSI or cash public assistance income in the past 12 months'
B17015e38='Without Social Security income in the past 12 months:'
B17015e39='With SSI and/or cash public assistance income in the past 12 months'
B17015e40='Without SSI or cash public assistance income in the past 12 months'
B17015e41='Female householder, no husband present:'
B17015e42='With Social Security income in the past 12 months:'
B17015e43='With SSI and/or cash public assistance income in the past 12 months'
B17015e44='Without SSI or cash public assistance income in the past 12 months'
B17015e45='Without Social Security income in the past 12 months:'
B17015e46='With SSI and/or cash public assistance income in the past 12 months'
B17015e47='Without SSI or cash public assistance income in the past 12 months'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY WORK EXPERIENCE OF HOUSEHOLDER AND SPOUSE */
/*Universe:  Families */
 
B17016e1='Total:'
B17016e2='Income in the past 12 months below poverty level:'
B17016e3='Married-couple family:'
B17016e4='Householder worked full-time, year-round in the past 12 months:'
B17016e5='Spouse worked full-time, year-round in the past 12 months'
B17016e6='Spouse worked part-time or part-year in the past 12 months'
B17016e7='Spouse did not work in the past 12 months'
B17016e8='Householder worked part-time or part-year in the past 12 months:'
B17016e9='Spouse worked full-time, year-round in the past 12 months'
B17016e10='Spouse worked part-time or part-year in the past 12 months'
B17016e11='Spouse did not work in the past 12 months'
B17016e12='Householder did not work in the past 12 months:'
B17016e13='Spouse worked full-time, year-round in the past 12 months'
B17016e14='Spouse worked part-time or part-year in the past 12 months'
B17016e15='Spouse did not work in the past 12 months'
B17016e16='Other family:'
B17016e17='Male householder, no wife present:'
B17016e18='Householder worked full-time, year-round in the past 12 months'
B17016e19='Householder worked part-time or part-year in the past 12 months'
B17016e20='Householder did not work in the past 12 months'
B17016e21='Female householder, no husband present:'
B17016e22='Householder worked full-time, year-round in the past 12 months'
B17016e23='Householder worked part-time or part-year in the past 12 months'
B17016e24='Householder did not work in the past 12 months'
B17016e25='Income in the past 12 months at or above poverty level:'
B17016e26='Married-couple family:'
B17016e27='Householder worked full-time, year-round in the past 12 months:'
B17016e28='Spouse worked full-time, year-round in the past 12 months'
B17016e29='Spouse worked part-time or part-year in the past 12 months'
B17016e30='Spouse did not work in the past 12 months'
B17016e31='Householder worked part-time or part-year in the past 12 months:'
B17016e32='Spouse worked full-time, year-round in the past 12 months'
B17016e33='Spouse worked part-time or part-year in the past 12 months'
B17016e34='Spouse did not work in the past 12 months'
B17016e35='Householder did not work in the past 12 months:'
B17016e36='Spouse worked full-time, year-round in the past 12 months'
B17016e37='Spouse worked part-time or part-year in the past 12 months'
B17016e38='Spouse did not work in the past 12 months'
B17016e39='Other family:'
B17016e40='Male householder, no wife present:'
B17016e41='Householder worked full-time, year-round in the past 12 months'
B17016e42='Householder worked part-time or part-year in the past 12 months'
B17016e43='Householder did not work in the past 12 months'
B17016e44='Female householder, no husband present:'
B17016e45='Householder worked full-time, year-round in the past 12 months'
B17016e46='Householder worked part-time or part-year in the past 12 months'
B17016e47='Householder did not work in the past 12 months'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B17010Ie1
B17010Ie2
B17010Ie3
B17010Ie4
B17010Ie5
B17010Ie6
B17010Ie7
B17010Ie8
B17010Ie9
B17010Ie10
B17010Ie11
B17010Ie12
B17010Ie13
B17010Ie14
B17010Ie15
B17010Ie16
B17010Ie17
B17010Ie18
B17010Ie19
B17010Ie20
B17010Ie21
B17010Ie22
B17010Ie23
B17010Ie24
B17010Ie25
B17010Ie26
B17010Ie27
B17010Ie28
B17010Ie29
B17010Ie30
B17010Ie31
B17010Ie32
B17010Ie33
B17010Ie34
B17010Ie35
B17010Ie36
B17010Ie37
B17010Ie38
B17010Ie39
B17010Ie40
B17010Ie41
 
B17011e1
B17011e2
B17011e3
B17011e4
B17011e5
 
B17012e1
B17012e2
B17012e3
B17012e4
B17012e5
B17012e6
B17012e7
B17012e8
B17012e9
B17012e10
B17012e11
B17012e12
B17012e13
B17012e14
B17012e15
B17012e16
B17012e17
B17012e18
B17012e19
B17012e20
B17012e21
B17012e22
B17012e23
B17012e24
B17012e25
B17012e26
B17012e27
B17012e28
B17012e29
B17012e30
B17012e31
B17012e32
B17012e33
B17012e34
B17012e35
 
B17013e1
B17013e2
B17013e3
B17013e4
B17013e5
B17013e6
B17013e7
B17013e8
B17013e9
B17013e10
B17013e11
B17013e12
B17013e13
B17013e14
B17013e15
B17013e16
B17013e17
B17013e18
B17013e19
B17013e20
B17013e21
B17013e22
B17013e23
B17013e24
B17013e25
B17013e26
B17013e27
B17013e28
B17013e29
B17013e30
B17013e31
B17013e32
B17013e33
B17013e34
B17013e35
 
B17014e1
B17014e2
B17014e3
B17014e4
B17014e5
B17014e6
B17014e7
B17014e8
B17014e9
B17014e10
B17014e11
B17014e12
B17014e13
B17014e14
B17014e15
B17014e16
B17014e17
B17014e18
B17014e19
B17014e20
B17014e21
B17014e22
B17014e23
B17014e24
B17014e25
B17014e26
B17014e27
B17014e28
B17014e29
B17014e30
B17014e31
B17014e32
B17014e33
B17014e34
B17014e35
 
B17015e1
B17015e2
B17015e3
B17015e4
B17015e5
B17015e6
B17015e7
B17015e8
B17015e9
B17015e10
B17015e11
B17015e12
B17015e13
B17015e14
B17015e15
B17015e16
B17015e17
B17015e18
B17015e19
B17015e20
B17015e21
B17015e22
B17015e23
B17015e24
B17015e25
B17015e26
B17015e27
B17015e28
B17015e29
B17015e30
B17015e31
B17015e32
B17015e33
B17015e34
B17015e35
B17015e36
B17015e37
B17015e38
B17015e39
B17015e40
B17015e41
B17015e42
B17015e43
B17015e44
B17015e45
B17015e46
B17015e47
 
B17016e1
B17016e2
B17016e3
B17016e4
B17016e5
B17016e6
B17016e7
B17016e8
B17016e9
B17016e10
B17016e11
B17016e12
B17016e13
B17016e14
B17016e15
B17016e16
B17016e17
B17016e18
B17016e19
B17016e20
B17016e21
B17016e22
B17016e23
B17016e24
B17016e25
B17016e26
B17016e27
B17016e28
B17016e29
B17016e30
B17016e31
B17016e32
B17016e33
B17016e34
B17016e35
B17016e36
B17016e37
B17016e38
B17016e39
B17016e40
B17016e41
B17016e42
B17016e43
B17016e44
B17016e45
B17016e46
B17016e47
;
RUN;
TITLE2;
