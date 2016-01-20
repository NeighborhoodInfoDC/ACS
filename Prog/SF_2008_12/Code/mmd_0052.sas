TITLE2 "m20125md0052000";
DATA work.SFm0052md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0052000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY PRESENCE OF RELATED CHILDREN UNDER 18 YEARS BY AGE OF RELATED CHILDREN (HISPANIC OR LATINO) */
/*Universe:  Families with a householder who is Hispanic or Latino */
 
B17010Im1='Total:'
B17010Im2='Income in the past 12 months below poverty level:'
B17010Im3='Married-couple family:'
B17010Im4='With related children under 18 years:'
B17010Im5='Under 5 years only'
B17010Im6='Under 5 years and 5 to 17 years'
B17010Im7='5 to 17 years only'
B17010Im8='No related children under 18 years'
B17010Im9='Other family:'
B17010Im10='Male householder, no wife present:'
B17010Im11='With related children under 18 years:'
B17010Im12='Under 5 years only'
B17010Im13='Under 5 years and 5 to 17 years'
B17010Im14='5 to 17 years only'
B17010Im15='No related children under 18 years'
B17010Im16='Female householder, no husband present:'
B17010Im17='With related children under 18 years:'
B17010Im18='Under 5 years only'
B17010Im19='Under 5 years and 5 to 17 years'
B17010Im20='5 to 17 years only'
B17010Im21='No related children under 18 years'
B17010Im22='Income in the past 12 months at or above poverty level:'
B17010Im23='Married-couple family:'
B17010Im24='With related children under 18 years:'
B17010Im25='Under 5 years only'
B17010Im26='Under 5 years and 5 to 17 years'
B17010Im27='5 to 17 years only'
B17010Im28='No related children under 18 years'
B17010Im29='Other family:'
B17010Im30='Male householder, no wife present:'
B17010Im31='With related children under 18 years:'
B17010Im32='Under 5 years only'
B17010Im33='Under 5 years and 5 to 17 years'
B17010Im34='5 to 17 years only'
B17010Im35='No related children under 18 years'
B17010Im36='Female householder, no husband present:'
B17010Im37='With related children under 18 years:'
B17010Im38='Under 5 years only'
B17010Im39='Under 5 years and 5 to 17 years'
B17010Im40='5 to 17 years only'
B17010Im41='No related children under 18 years'
/*AGGREGATE INCOME DEFICIT (DOLLARS) IN THE PAST 12 MONTHS FOR FAMILIES BY FAMILY TYPE */
/*Universe:  Families with income in the past 12 months below the poverty level */
 
B17011m1='Aggregate income deficit in the past 12 months:'
B17011m2='Married-couple family'
B17011m3='Other family:'
B17011m4='Male householder, no wife present'
B17011m5='Female householder, no husband present'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY HOUSEHOLD TYPE BY NUMBER OF RELATED CHILDREN UNDER 18 YEARS */
/*Universe:  Families */
 
B17012m1='Total:'
B17012m2='Income in the past 12 months below poverty level:'
B17012m3='Married-couple family:'
B17012m4='No child'
B17012m5='1 or 2 children'
B17012m6='3 or 4 children'
B17012m7='5 or more children'
B17012m8='Other families:'
B17012m9='Male householder, no wife present:'
B17012m10='No child'
B17012m11='1 or 2 children'
B17012m12='3 or 4 children'
B17012m13='5 or more children'
B17012m14='Female householder, no husband present:'
B17012m15='No child'
B17012m16='1 or 2 children'
B17012m17='3 or 4 children'
B17012m18='5 or more children'
B17012m19='Income in the past 12 months at or above poverty level:'
B17012m20='Married-couple family:'
B17012m21='No child'
B17012m22='1 or 2 children'
B17012m23='3 or 4 children'
B17012m24='5 or more children'
B17012m25='Other families:'
B17012m26='Male householder, no wife present:'
B17012m27='No child'
B17012m28='1 or 2 children'
B17012m29='3 or 4 children'
B17012m30='5 or more children'
B17012m31='Female householder, no husband present:'
B17012m32='No child'
B17012m33='1 or 2 children'
B17012m34='3 or 4 children'
B17012m35='5 or more children'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY HOUSEHOLD TYPE BY NUMBER OF PERSONS IN FAMILY */
/*Universe:  Families */
 
B17013m1='Total:'
B17013m2='Income in the past 12 months below poverty level:'
B17013m3='Married-couple family:'
B17013m4='2 people'
B17013m5='3 to 4 people'
B17013m6='5 to 6 people'
B17013m7='7 or more people'
B17013m8='Other families:'
B17013m9='Male householder, no wife present:'
B17013m10='2 people'
B17013m11='3 to 4 people'
B17013m12='5 to 6 people'
B17013m13='7 or more people'
B17013m14='Female householder, no husband present:'
B17013m15='2 people'
B17013m16='3 to 4 people'
B17013m17='5 to 6 people'
B17013m18='7 or more people'
B17013m19='Income in the past 12 months at or above poverty level:'
B17013m20='Married-couple family:'
B17013m21='2 people'
B17013m22='3 to 4 people'
B17013m23='5 to 6 people'
B17013m24='7 or more people'
B17013m25='Other families:'
B17013m26='Male householder, no wife present:'
B17013m27='2 people'
B17013m28='3 to 4 people'
B17013m29='5 to 6 people'
B17013m30='7 or more people'
B17013m31='Female householder, no husband present:'
B17013m32='2 people'
B17013m33='3 to 4 people'
B17013m34='5 to 6 people'
B17013m35='7 or more people'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY HOUSEHOLD TYPE BY NUMBER OF WORKERS IN FAMILY */
/*Universe:  Families */
 
B17014m1='Total:'
B17014m2='Income in the past 12 months below poverty level:'
B17014m3='Married-couple family:'
B17014m4='No workers'
B17014m5='1 worker'
B17014m6='2 workers'
B17014m7='3 or more workers'
B17014m8='Other families:'
B17014m9='Male householder, no wife present:'
B17014m10='No workers'
B17014m11='1 worker'
B17014m12='2 workers'
B17014m13='3 or more workers'
B17014m14='Female householder, no husband present:'
B17014m15='No workers'
B17014m16='1 worker'
B17014m17='2 workers'
B17014m18='3 or more workers'
B17014m19='Income in the past 12 months at or above poverty level:'
B17014m20='Married-couple family:'
B17014m21='No workers'
B17014m22='1 worker'
B17014m23='2 workers'
B17014m24='3 or more workers'
B17014m25='Other families:'
B17014m26='Male householder, no wife present:'
B17014m27='No workers'
B17014m28='1 worker'
B17014m29='2 workers'
B17014m30='3 or more workers'
B17014m31='Female householder, no husband present:'
B17014m32='No workers'
B17014m33='1 worker'
B17014m34='2 workers'
B17014m35='3 or more workers'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY SOCIAL SECURITY INCOME BY SUPPLEMENTAL SECURITY INCOME (SSI) AND CASH PUBLIC ASSISTANCE INCOME */
/*Universe:  Families */
 
B17015m1='Total:'
B17015m2='Income in the past 12 months below poverty level:'
B17015m3='Married-couple family:'
B17015m4='With Social Security income in the past 12 months:'
B17015m5='With SSI and/or cash public assistance income in the past 12 months'
B17015m6='Without SSI or cash public assistance income in the past 12 months'
B17015m7='Without Social Security income in the past 12 months:'
B17015m8='With SSI and/or cash public assistance income in the past 12 months'
B17015m9='Without SSI or cash public assistance income in the past 12 months'
B17015m10='Other family:'
B17015m11='Male householder, no wife present:'
B17015m12='With Social Security income in the past 12 months:'
B17015m13='With SSI and/or cash public assistance income in the past 12 months'
B17015m14='Without SSI or cash public assistance income in the past 12 months'
B17015m15='Without Social Security income in the past 12 months:'
B17015m16='With SSI and/or cash public assistance income in the past 12 months'
B17015m17='Without SSI or cash public assistance income in the past 12 months'
B17015m18='Female householder, no husband present:'
B17015m19='With Social Security income in the past 12 months:'
B17015m20='With SSI and/or cash public assistance income in the past 12 months'
B17015m21='Without SSI or cash public assistance income in the past 12 months'
B17015m22='Without Social Security income in the past 12 months:'
B17015m23='With SSI and/or cash public assistance income in the past 12 months'
B17015m24='Without SSI or cash public assistance income in the past 12 months'
B17015m25='Income in the past 12 months at or above poverty level:'
B17015m26='Married-couple family:'
B17015m27='With Social Security income in the past 12 months:'
B17015m28='With SSI and/or cash public assistance income in the past 12 months'
B17015m29='Without SSI or cash public assistance income in the past 12 months'
B17015m30='Without Social Security income in the past 12 months:'
B17015m31='With SSI and/or cash public assistance income in the past 12 months'
B17015m32='Without SSI or cash public assistance income in the past 12 months'
B17015m33='Other family:'
B17015m34='Male householder, no wife present:'
B17015m35='With Social Security income in the past 12 months:'
B17015m36='With SSI and/or cash public assistance income in the past 12 months'
B17015m37='Without SSI or cash public assistance income in the past 12 months'
B17015m38='Without Social Security income in the past 12 months:'
B17015m39='With SSI and/or cash public assistance income in the past 12 months'
B17015m40='Without SSI or cash public assistance income in the past 12 months'
B17015m41='Female householder, no husband present:'
B17015m42='With Social Security income in the past 12 months:'
B17015m43='With SSI and/or cash public assistance income in the past 12 months'
B17015m44='Without SSI or cash public assistance income in the past 12 months'
B17015m45='Without Social Security income in the past 12 months:'
B17015m46='With SSI and/or cash public assistance income in the past 12 months'
B17015m47='Without SSI or cash public assistance income in the past 12 months'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY WORK EXPERIENCE OF HOUSEHOLDER AND SPOUSE */
/*Universe:  Families */
 
B17016m1='Total:'
B17016m2='Income in the past 12 months below poverty level:'
B17016m3='Married-couple family:'
B17016m4='Householder worked full-time, year-round in the past 12 months:'
B17016m5='Spouse worked full-time, year-round in the past 12 months'
B17016m6='Spouse worked part-time or part-year in the past 12 months'
B17016m7='Spouse did not work in the past 12 months'
B17016m8='Householder worked part-time or part-year in the past 12 months:'
B17016m9='Spouse worked full-time, year-round in the past 12 months'
B17016m10='Spouse worked part-time or part-year in the past 12 months'
B17016m11='Spouse did not work in the past 12 months'
B17016m12='Householder did not work in the past 12 months:'
B17016m13='Spouse worked full-time, year-round in the past 12 months'
B17016m14='Spouse worked part-time or part-year in the past 12 months'
B17016m15='Spouse did not work in the past 12 months'
B17016m16='Other family:'
B17016m17='Male householder, no wife present:'
B17016m18='Householder worked full-time, year-round in the past 12 months'
B17016m19='Householder worked part-time or part-year in the past 12 months'
B17016m20='Householder did not work in the past 12 months'
B17016m21='Female householder, no husband present:'
B17016m22='Householder worked full-time, year-round in the past 12 months'
B17016m23='Householder worked part-time or part-year in the past 12 months'
B17016m24='Householder did not work in the past 12 months'
B17016m25='Income in the past 12 months at or above poverty level:'
B17016m26='Married-couple family:'
B17016m27='Householder worked full-time, year-round in the past 12 months:'
B17016m28='Spouse worked full-time, year-round in the past 12 months'
B17016m29='Spouse worked part-time or part-year in the past 12 months'
B17016m30='Spouse did not work in the past 12 months'
B17016m31='Householder worked part-time or part-year in the past 12 months:'
B17016m32='Spouse worked full-time, year-round in the past 12 months'
B17016m33='Spouse worked part-time or part-year in the past 12 months'
B17016m34='Spouse did not work in the past 12 months'
B17016m35='Householder did not work in the past 12 months:'
B17016m36='Spouse worked full-time, year-round in the past 12 months'
B17016m37='Spouse worked part-time or part-year in the past 12 months'
B17016m38='Spouse did not work in the past 12 months'
B17016m39='Other family:'
B17016m40='Male householder, no wife present:'
B17016m41='Householder worked full-time, year-round in the past 12 months'
B17016m42='Householder worked part-time or part-year in the past 12 months'
B17016m43='Householder did not work in the past 12 months'
B17016m44='Female householder, no husband present:'
B17016m45='Householder worked full-time, year-round in the past 12 months'
B17016m46='Householder worked part-time or part-year in the past 12 months'
B17016m47='Householder did not work in the past 12 months'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B17010Im1
B17010Im2
B17010Im3
B17010Im4
B17010Im5
B17010Im6
B17010Im7
B17010Im8
B17010Im9
B17010Im10
B17010Im11
B17010Im12
B17010Im13
B17010Im14
B17010Im15
B17010Im16
B17010Im17
B17010Im18
B17010Im19
B17010Im20
B17010Im21
B17010Im22
B17010Im23
B17010Im24
B17010Im25
B17010Im26
B17010Im27
B17010Im28
B17010Im29
B17010Im30
B17010Im31
B17010Im32
B17010Im33
B17010Im34
B17010Im35
B17010Im36
B17010Im37
B17010Im38
B17010Im39
B17010Im40
B17010Im41
 
B17011m1
B17011m2
B17011m3
B17011m4
B17011m5
 
B17012m1
B17012m2
B17012m3
B17012m4
B17012m5
B17012m6
B17012m7
B17012m8
B17012m9
B17012m10
B17012m11
B17012m12
B17012m13
B17012m14
B17012m15
B17012m16
B17012m17
B17012m18
B17012m19
B17012m20
B17012m21
B17012m22
B17012m23
B17012m24
B17012m25
B17012m26
B17012m27
B17012m28
B17012m29
B17012m30
B17012m31
B17012m32
B17012m33
B17012m34
B17012m35
 
B17013m1
B17013m2
B17013m3
B17013m4
B17013m5
B17013m6
B17013m7
B17013m8
B17013m9
B17013m10
B17013m11
B17013m12
B17013m13
B17013m14
B17013m15
B17013m16
B17013m17
B17013m18
B17013m19
B17013m20
B17013m21
B17013m22
B17013m23
B17013m24
B17013m25
B17013m26
B17013m27
B17013m28
B17013m29
B17013m30
B17013m31
B17013m32
B17013m33
B17013m34
B17013m35
 
B17014m1
B17014m2
B17014m3
B17014m4
B17014m5
B17014m6
B17014m7
B17014m8
B17014m9
B17014m10
B17014m11
B17014m12
B17014m13
B17014m14
B17014m15
B17014m16
B17014m17
B17014m18
B17014m19
B17014m20
B17014m21
B17014m22
B17014m23
B17014m24
B17014m25
B17014m26
B17014m27
B17014m28
B17014m29
B17014m30
B17014m31
B17014m32
B17014m33
B17014m34
B17014m35
 
B17015m1
B17015m2
B17015m3
B17015m4
B17015m5
B17015m6
B17015m7
B17015m8
B17015m9
B17015m10
B17015m11
B17015m12
B17015m13
B17015m14
B17015m15
B17015m16
B17015m17
B17015m18
B17015m19
B17015m20
B17015m21
B17015m22
B17015m23
B17015m24
B17015m25
B17015m26
B17015m27
B17015m28
B17015m29
B17015m30
B17015m31
B17015m32
B17015m33
B17015m34
B17015m35
B17015m36
B17015m37
B17015m38
B17015m39
B17015m40
B17015m41
B17015m42
B17015m43
B17015m44
B17015m45
B17015m46
B17015m47
 
B17016m1
B17016m2
B17016m3
B17016m4
B17016m5
B17016m6
B17016m7
B17016m8
B17016m9
B17016m10
B17016m11
B17016m12
B17016m13
B17016m14
B17016m15
B17016m16
B17016m17
B17016m18
B17016m19
B17016m20
B17016m21
B17016m22
B17016m23
B17016m24
B17016m25
B17016m26
B17016m27
B17016m28
B17016m29
B17016m30
B17016m31
B17016m32
B17016m33
B17016m34
B17016m35
B17016m36
B17016m37
B17016m38
B17016m39
B17016m40
B17016m41
B17016m42
B17016m43
B17016m44
B17016m45
B17016m46
B17016m47
;
RUN;
TITLE2;
