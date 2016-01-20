TITLE2 "m20125md0077000";
DATA work.SFm0077md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0077000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*EDUCATIONAL ATTAINMENT BY EMPLOYMENT STATUS FOR THE POPULATION 25 TO 64 YEARS */
/*Universe:  Population 25 to 64 years */
 
B23006m1='Total:'
B23006m2='Less than high school graduate:'
B23006m3='In labor force:'
B23006m4='In Armed Forces'
B23006m5='Civilian:'
B23006m6='Employed'
B23006m7='Unemployed'
B23006m8='Not in labor force'
B23006m9='High school graduate:'
B23006m10='In labor force:'
B23006m11='In Armed Forces'
B23006m12='Civilian:'
B23006m13='Employed'
B23006m14='Unemployed'
B23006m15='Not in labor force'
B23006m16='Some college or associate''s degree:'
B23006m17='In labor force:'
B23006m18='In Armed Forces'
B23006m19='Civilian:'
B23006m20='Employed'
B23006m21='Unemployed'
B23006m22='Not in labor force'
B23006m23='Bachelor''s degree or higher:'
B23006m24='In labor force:'
B23006m25='In Armed Forces'
B23006m26='Civilian:'
B23006m27='Employed'
B23006m28='Unemployed'
B23006m29='Not in labor force'
/*PRESENCE OF OWN CHILDREN UNDER 18 YEARS BY FAMILY TYPE BY EMPLOYMENT STATUS */
/*Universe:  Families */
 
B23007m1='Total:'
B23007m2='With own children under 18 years:'
B23007m3='Married-couple family:'
B23007m4='Husband in labor force:'
B23007m5='Employed or in Armed Forces:'
B23007m6='Wife in labor force:'
B23007m7='Employed or in Armed Forces'
B23007m8='Unemployed'
B23007m9='Wife not in labor force'
B23007m10='Unemployed:'
B23007m11='Wife in labor force:'
B23007m12='Employed or in Armed Forces'
B23007m13='Unemployed'
B23007m14='Wife not in labor force'
B23007m15='Husband not in labor force:'
B23007m16='Wife in labor force:'
B23007m17='Employed or in Armed Forces'
B23007m18='Unemployed'
B23007m19='Wife not in labor force'
B23007m20='Other family:'
B23007m21='Male householder, no wife present:'
B23007m22='In labor force:'
B23007m23='Employed or in Armed Forces'
B23007m24='Unemployed'
B23007m25='Not in labor force'
B23007m26='Female householder, no husband present:'
B23007m27='In labor force:'
B23007m28='Employed or in Armed Forces'
B23007m29='Unemployed'
B23007m30='Not in labor force'
B23007m31='No children under 18 years:'
B23007m32='Married-couple family:'
B23007m33='Husband in labor force:'
B23007m34='Employed or in Armed Forces:'
B23007m35='Wife in labor force:'
B23007m36='Employed or in Armed Forces'
B23007m37='Unemployed'
B23007m38='Wife not in labor force'
B23007m39='Unemployed:'
B23007m40='Wife in labor force:'
B23007m41='Employed or in Armed Forces'
B23007m42='Unemployed'
B23007m43='Wife not in labor force'
B23007m44='Husband not in labor force:'
B23007m45='Wife in labor force:'
B23007m46='Employed or in Armed Forces'
B23007m47='Unemployed'
B23007m48='Wife not in labor force'
B23007m49='Other family:'
B23007m50='Male householder, no wife present:'
B23007m51='In labor force:'
B23007m52='Employed or in Armed Forces'
B23007m53='Unemployed'
B23007m54='Not in labor force'
B23007m55='Female householder, no husband present:'
B23007m56='In labor force:'
B23007m57='Employed or in Armed Forces'
B23007m58='Unemployed'
B23007m59='Not in labor force'
/*AGE OF OWN CHILDREN UNDER 18 YEARS IN FAMILIES AND SUBFAMILIES BY LIVING ARRANGEMENTS BY EMPLOYMENT STATUS OF PARENTS */
/*Universe:  Own children under 18 years in families and subfamilies */
 
B23008m1='Total:'
B23008m2='Under 6 years:'
B23008m3='Living with two parents:'
B23008m4='Both parents in labor force'
B23008m5='Father only in labor force'
B23008m6='Mother only in labor force'
B23008m7='Neither parent in labor force'
B23008m8='Living with one parent:'
B23008m9='Living with father:'
B23008m10='In labor force'
B23008m11='Not in labor force'
B23008m12='Living with mother:'
B23008m13='In labor force'
B23008m14='Not in labor force'
B23008m15='6 to 17 years:'
B23008m16='Living with two parents:'
B23008m17='Both parents in labor force'
B23008m18='Father only in labor force'
B23008m19='Mother only in labor force'
B23008m20='Neither parent in labor force'
B23008m21='Living with one parent:'
B23008m22='Living with father:'
B23008m23='In labor force'
B23008m24='Not in labor force'
B23008m25='Living with mother:'
B23008m26='In labor force'
B23008m27='Not in labor force'
/*PRESENCE OF OWN CHILDREN UNDER 18 YEARS BY FAMILY TYPE BY NUMBER OF WORKERS IN FAMILY IN THE PAST 12 MONTHS */
/*Universe:  Families */
 
B23009m1='Total:'
B23009m2='With own children under 18 years:'
B23009m3='Married-couple family:'
B23009m4='No workers'
B23009m5='1 worker'
B23009m6='2 workers:'
B23009m7='Husband and wife worked'
B23009m8='Other'
B23009m9='3 or more workers:'
B23009m10='Husband and wife worked'
B23009m11='Other'
B23009m12='Other family:'
B23009m13='Male householder, no wife present:'
B23009m14='No workers'
B23009m15='1 worker'
B23009m16='2 workers'
B23009m17='3 or more workers'
B23009m18='Female householder, no husband present:'
B23009m19='No workers'
B23009m20='1 worker'
B23009m21='2 workers'
B23009m22='3 or more workers'
B23009m23='No children under 18 years:'
B23009m24='Married-couple family:'
B23009m25='No workers'
B23009m26='1 worker'
B23009m27='2 workers:'
B23009m28='Husband and wife worked'
B23009m29='Other'
B23009m30='3 or more workers:'
B23009m31='Husband and wife worked'
B23009m32='Other'
B23009m33='Other family:'
B23009m34='Male householder, no wife present:'
B23009m35='No workers'
B23009m36='1 worker'
B23009m37='2 workers'
B23009m38='3 or more workers'
B23009m39='Female householder, no husband present:'
B23009m40='No workers'
B23009m41='1 worker'
B23009m42='2 workers'
B23009m43='3 or more workers'
/*PRESENCE OF OWN CHILDREN UNDER 18 YEARS IN MARRIED-COUPLE FAMILIES BY WORK EXPERIENCE OF HOUSEHOLDER AND SPOUSE */
/*Universe:  Married-couple families */
 
B23010m1='Total:'
B23010m2='With own children under 18 years:'
B23010m3='Householder worked full-time, year-round in the past 12 months:'
B23010m4='Spouse worked full-time, year-round in the past 12 months'
B23010m5='Spouse worked less than full-time, year-round in the past 12 months'
B23010m6='Spouse did not work in the past 12 months'
B23010m7='Householder worked less than full-time, year-round in the past 12 months:'
B23010m8='Spouse worked full-time, year-round in the past 12 months'
B23010m9='Spouse worked less than full-time, year-round in the past 12 months'
B23010m10='Spouse did not work in the past 12 months'
B23010m11='Householder did not work in the past 12 months:'
B23010m12='Spouse worked full-time, year-round in the past 12 months'
B23010m13='Spouse worked less than full-time, year-round in the past 12 months'
B23010m14='Spouse did not work in the past 12 months'
B23010m15='No own children under 18 years:'
B23010m16='Householder worked full-time, year-round in the past 12 months:'
B23010m17='Spouse worked full-time, year-round in the past 12 months'
B23010m18='Spouse worked less than full-time, year-round in the past 12 months'
B23010m19='Spouse did not work in the past 12 months'
B23010m20='Householder worked less than full-time, year-round in the past 12 months:'
B23010m21='Spouse worked full-time, year-round in the past 12 months'
B23010m22='Spouse worked less than full-time, year-round in the past 12 months'
B23010m23='Spouse did not work in the past 12 months'
B23010m24='Householder did not work in the past 12 months:'
B23010m25='Spouse worked full-time, year-round in the past 12 months'
B23010m26='Spouse worked less than full-time, year-round in the past 12 months'
B23010m27='Spouse did not work in the past 12 months'
/*MEDIAN AGE BY SEX FOR WORKERS 16 TO 64 YEARS */
/*Universe:  Population 16 to 64 years who have worked in the past 12 months */
/*Median age-- */
 
B23013m1='Total:'
B23013m2='Male'
B23013m3='Female'
/*AGGREGATE USUAL HOURS WORKED IN THE PAST 12 MONTHS BY SEX FOR WORKERS 16 TO 64 YEARS */
/*Universe:  Population 16 to 64 years who have worked in the past 12 months */
 
B23018m1='Aggregate usual hours:'
B23018m2='Male'
B23018m3='Female'
/*MEAN USUAL HOURS WORKED IN THE PAST 12 MONTHS FOR WORKERS 16 TO 64 YEARS */
/*Universe:  Population 16 to 64 years who have worked in the past 12 months */
/*Mean usual hours-- */
 
B23020m1='Total:'
B23020m2='Male'
B23020m3='Female'
/*SEX BY WORK STATUS IN THE PAST 12 MONTHS BY USUAL HOURS WORKED PER WEEK IN THE PAST 12 MONTHS BY WEEKS WORKED IN THE PAST 12 MONTHS FOR THE POPULATION 16 TO 64 YEARS */
/*Universe:  Population 16 to 64 years */
 
B23022m1='Total:'
B23022m2='Male:'
B23022m3='Worked in the past 12 months:'
B23022m4='Usually worked 35 or more hours per week:'
B23022m5='50 to 52 weeks'
B23022m6='48 and 49 weeks'
B23022m7='40 to 47 weeks'
B23022m8='27 to 39 weeks'
B23022m9='14 to 26 weeks'
B23022m10='1 to 13 weeks'
B23022m11='Usually worked 15 to 34 hours per week:'
B23022m12='50 to 52 weeks'
B23022m13='48 and 49 weeks'
B23022m14='40 to 47 weeks'
B23022m15='27 to 39 weeks'
B23022m16='14 to 26 weeks'
B23022m17='1 to 13 weeks'
B23022m18='Usually worked 1 to 14 hours per week:'
B23022m19='50 to 52 weeks'
B23022m20='48 and 49 weeks'
B23022m21='40 to 47 weeks'
B23022m22='27 to 39 weeks'
B23022m23='14 to 26 weeks'
B23022m24='1 to 13 weeks'
B23022m25='Did not work in the past 12 months'
B23022m26='Female:'
B23022m27='Worked in the past 12 months:'
B23022m28='Usually worked 35 or more hours per week:'
B23022m29='50 to 52 weeks'
B23022m30='48 and 49 weeks'
B23022m31='40 to 47 weeks'
B23022m32='27 to 39 weeks'
B23022m33='14 to 26 weeks'
B23022m34='1 to 13 weeks'
B23022m35='Usually worked 15 to 34 hours per week:'
B23022m36='50 to 52 weeks'
B23022m37='48 and 49 weeks'
B23022m38='40 to 47 weeks'
B23022m39='27 to 39 weeks'
B23022m40='14 to 26 weeks'
B23022m41='1 to 13 weeks'
B23022m42='Usually worked 1 to 14 hours per week:'
B23022m43='50 to 52 weeks'
B23022m44='48 and 49 weeks'
B23022m45='40 to 47 weeks'
B23022m46='27 to 39 weeks'
B23022m47='14 to 26 weeks'
B23022m48='1 to 13 weeks'
B23022m49='Did not work in the past 12 months'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B23006m1
B23006m2
B23006m3
B23006m4
B23006m5
B23006m6
B23006m7
B23006m8
B23006m9
B23006m10
B23006m11
B23006m12
B23006m13
B23006m14
B23006m15
B23006m16
B23006m17
B23006m18
B23006m19
B23006m20
B23006m21
B23006m22
B23006m23
B23006m24
B23006m25
B23006m26
B23006m27
B23006m28
B23006m29
 
B23007m1
B23007m2
B23007m3
B23007m4
B23007m5
B23007m6
B23007m7
B23007m8
B23007m9
B23007m10
B23007m11
B23007m12
B23007m13
B23007m14
B23007m15
B23007m16
B23007m17
B23007m18
B23007m19
B23007m20
B23007m21
B23007m22
B23007m23
B23007m24
B23007m25
B23007m26
B23007m27
B23007m28
B23007m29
B23007m30
B23007m31
B23007m32
B23007m33
B23007m34
B23007m35
B23007m36
B23007m37
B23007m38
B23007m39
B23007m40
B23007m41
B23007m42
B23007m43
B23007m44
B23007m45
B23007m46
B23007m47
B23007m48
B23007m49
B23007m50
B23007m51
B23007m52
B23007m53
B23007m54
B23007m55
B23007m56
B23007m57
B23007m58
B23007m59
 
B23008m1
B23008m2
B23008m3
B23008m4
B23008m5
B23008m6
B23008m7
B23008m8
B23008m9
B23008m10
B23008m11
B23008m12
B23008m13
B23008m14
B23008m15
B23008m16
B23008m17
B23008m18
B23008m19
B23008m20
B23008m21
B23008m22
B23008m23
B23008m24
B23008m25
B23008m26
B23008m27
 
B23009m1
B23009m2
B23009m3
B23009m4
B23009m5
B23009m6
B23009m7
B23009m8
B23009m9
B23009m10
B23009m11
B23009m12
B23009m13
B23009m14
B23009m15
B23009m16
B23009m17
B23009m18
B23009m19
B23009m20
B23009m21
B23009m22
B23009m23
B23009m24
B23009m25
B23009m26
B23009m27
B23009m28
B23009m29
B23009m30
B23009m31
B23009m32
B23009m33
B23009m34
B23009m35
B23009m36
B23009m37
B23009m38
B23009m39
B23009m40
B23009m41
B23009m42
B23009m43
 
B23010m1
B23010m2
B23010m3
B23010m4
B23010m5
B23010m6
B23010m7
B23010m8
B23010m9
B23010m10
B23010m11
B23010m12
B23010m13
B23010m14
B23010m15
B23010m16
B23010m17
B23010m18
B23010m19
B23010m20
B23010m21
B23010m22
B23010m23
B23010m24
B23010m25
B23010m26
B23010m27
 
B23013m1
B23013m2
B23013m3
 
B23018m1
B23018m2
B23018m3
 
B23020m1
B23020m2
B23020m3
 
B23022m1
B23022m2
B23022m3
B23022m4
B23022m5
B23022m6
B23022m7
B23022m8
B23022m9
B23022m10
B23022m11
B23022m12
B23022m13
B23022m14
B23022m15
B23022m16
B23022m17
B23022m18
B23022m19
B23022m20
B23022m21
B23022m22
B23022m23
B23022m24
B23022m25
B23022m26
B23022m27
B23022m28
B23022m29
B23022m30
B23022m31
B23022m32
B23022m33
B23022m34
B23022m35
B23022m36
B23022m37
B23022m38
B23022m39
B23022m40
B23022m41
B23022m42
B23022m43
B23022m44
B23022m45
B23022m46
B23022m47
B23022m48
B23022m49
;
RUN;
TITLE2;
