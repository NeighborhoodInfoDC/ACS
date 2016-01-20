TITLE2 "e20125dc0077000";
DATA work.SFe0077dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0077000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*EDUCATIONAL ATTAINMENT BY EMPLOYMENT STATUS FOR THE POPULATION 25 TO 64 YEARS */
/*Universe:  Population 25 to 64 years */
 
B23006e1='Total:'
B23006e2='Less than high school graduate:'
B23006e3='In labor force:'
B23006e4='In Armed Forces'
B23006e5='Civilian:'
B23006e6='Employed'
B23006e7='Unemployed'
B23006e8='Not in labor force'
B23006e9='High school graduate:'
B23006e10='In labor force:'
B23006e11='In Armed Forces'
B23006e12='Civilian:'
B23006e13='Employed'
B23006e14='Unemployed'
B23006e15='Not in labor force'
B23006e16='Some college or associate''s degree:'
B23006e17='In labor force:'
B23006e18='In Armed Forces'
B23006e19='Civilian:'
B23006e20='Employed'
B23006e21='Unemployed'
B23006e22='Not in labor force'
B23006e23='Bachelor''s degree or higher:'
B23006e24='In labor force:'
B23006e25='In Armed Forces'
B23006e26='Civilian:'
B23006e27='Employed'
B23006e28='Unemployed'
B23006e29='Not in labor force'
/*PRESENCE OF OWN CHILDREN UNDER 18 YEARS BY FAMILY TYPE BY EMPLOYMENT STATUS */
/*Universe:  Families */
 
B23007e1='Total:'
B23007e2='With own children under 18 years:'
B23007e3='Married-couple family:'
B23007e4='Husband in labor force:'
B23007e5='Employed or in Armed Forces:'
B23007e6='Wife in labor force:'
B23007e7='Employed or in Armed Forces'
B23007e8='Unemployed'
B23007e9='Wife not in labor force'
B23007e10='Unemployed:'
B23007e11='Wife in labor force:'
B23007e12='Employed or in Armed Forces'
B23007e13='Unemployed'
B23007e14='Wife not in labor force'
B23007e15='Husband not in labor force:'
B23007e16='Wife in labor force:'
B23007e17='Employed or in Armed Forces'
B23007e18='Unemployed'
B23007e19='Wife not in labor force'
B23007e20='Other family:'
B23007e21='Male householder, no wife present:'
B23007e22='In labor force:'
B23007e23='Employed or in Armed Forces'
B23007e24='Unemployed'
B23007e25='Not in labor force'
B23007e26='Female householder, no husband present:'
B23007e27='In labor force:'
B23007e28='Employed or in Armed Forces'
B23007e29='Unemployed'
B23007e30='Not in labor force'
B23007e31='No children under 18 years:'
B23007e32='Married-couple family:'
B23007e33='Husband in labor force:'
B23007e34='Employed or in Armed Forces:'
B23007e35='Wife in labor force:'
B23007e36='Employed or in Armed Forces'
B23007e37='Unemployed'
B23007e38='Wife not in labor force'
B23007e39='Unemployed:'
B23007e40='Wife in labor force:'
B23007e41='Employed or in Armed Forces'
B23007e42='Unemployed'
B23007e43='Wife not in labor force'
B23007e44='Husband not in labor force:'
B23007e45='Wife in labor force:'
B23007e46='Employed or in Armed Forces'
B23007e47='Unemployed'
B23007e48='Wife not in labor force'
B23007e49='Other family:'
B23007e50='Male householder, no wife present:'
B23007e51='In labor force:'
B23007e52='Employed or in Armed Forces'
B23007e53='Unemployed'
B23007e54='Not in labor force'
B23007e55='Female householder, no husband present:'
B23007e56='In labor force:'
B23007e57='Employed or in Armed Forces'
B23007e58='Unemployed'
B23007e59='Not in labor force'
/*AGE OF OWN CHILDREN UNDER 18 YEARS IN FAMILIES AND SUBFAMILIES BY LIVING ARRANGEMENTS BY EMPLOYMENT STATUS OF PARENTS */
/*Universe:  Own children under 18 years in families and subfamilies */
 
B23008e1='Total:'
B23008e2='Under 6 years:'
B23008e3='Living with two parents:'
B23008e4='Both parents in labor force'
B23008e5='Father only in labor force'
B23008e6='Mother only in labor force'
B23008e7='Neither parent in labor force'
B23008e8='Living with one parent:'
B23008e9='Living with father:'
B23008e10='In labor force'
B23008e11='Not in labor force'
B23008e12='Living with mother:'
B23008e13='In labor force'
B23008e14='Not in labor force'
B23008e15='6 to 17 years:'
B23008e16='Living with two parents:'
B23008e17='Both parents in labor force'
B23008e18='Father only in labor force'
B23008e19='Mother only in labor force'
B23008e20='Neither parent in labor force'
B23008e21='Living with one parent:'
B23008e22='Living with father:'
B23008e23='In labor force'
B23008e24='Not in labor force'
B23008e25='Living with mother:'
B23008e26='In labor force'
B23008e27='Not in labor force'
/*PRESENCE OF OWN CHILDREN UNDER 18 YEARS BY FAMILY TYPE BY NUMBER OF WORKERS IN FAMILY IN THE PAST 12 MONTHS */
/*Universe:  Families */
 
B23009e1='Total:'
B23009e2='With own children under 18 years:'
B23009e3='Married-couple family:'
B23009e4='No workers'
B23009e5='1 worker'
B23009e6='2 workers:'
B23009e7='Husband and wife worked'
B23009e8='Other'
B23009e9='3 or more workers:'
B23009e10='Husband and wife worked'
B23009e11='Other'
B23009e12='Other family:'
B23009e13='Male householder, no wife present:'
B23009e14='No workers'
B23009e15='1 worker'
B23009e16='2 workers'
B23009e17='3 or more workers'
B23009e18='Female householder, no husband present:'
B23009e19='No workers'
B23009e20='1 worker'
B23009e21='2 workers'
B23009e22='3 or more workers'
B23009e23='No children under 18 years:'
B23009e24='Married-couple family:'
B23009e25='No workers'
B23009e26='1 worker'
B23009e27='2 workers:'
B23009e28='Husband and wife worked'
B23009e29='Other'
B23009e30='3 or more workers:'
B23009e31='Husband and wife worked'
B23009e32='Other'
B23009e33='Other family:'
B23009e34='Male householder, no wife present:'
B23009e35='No workers'
B23009e36='1 worker'
B23009e37='2 workers'
B23009e38='3 or more workers'
B23009e39='Female householder, no husband present:'
B23009e40='No workers'
B23009e41='1 worker'
B23009e42='2 workers'
B23009e43='3 or more workers'
/*PRESENCE OF OWN CHILDREN UNDER 18 YEARS IN MARRIED-COUPLE FAMILIES BY WORK EXPERIENCE OF HOUSEHOLDER AND SPOUSE */
/*Universe:  Married-couple families */
 
B23010e1='Total:'
B23010e2='With own children under 18 years:'
B23010e3='Householder worked full-time, year-round in the past 12 months:'
B23010e4='Spouse worked full-time, year-round in the past 12 months'
B23010e5='Spouse worked less than full-time, year-round in the past 12 months'
B23010e6='Spouse did not work in the past 12 months'
B23010e7='Householder worked less than full-time, year-round in the past 12 months:'
B23010e8='Spouse worked full-time, year-round in the past 12 months'
B23010e9='Spouse worked less than full-time, year-round in the past 12 months'
B23010e10='Spouse did not work in the past 12 months'
B23010e11='Householder did not work in the past 12 months:'
B23010e12='Spouse worked full-time, year-round in the past 12 months'
B23010e13='Spouse worked less than full-time, year-round in the past 12 months'
B23010e14='Spouse did not work in the past 12 months'
B23010e15='No own children under 18 years:'
B23010e16='Householder worked full-time, year-round in the past 12 months:'
B23010e17='Spouse worked full-time, year-round in the past 12 months'
B23010e18='Spouse worked less than full-time, year-round in the past 12 months'
B23010e19='Spouse did not work in the past 12 months'
B23010e20='Householder worked less than full-time, year-round in the past 12 months:'
B23010e21='Spouse worked full-time, year-round in the past 12 months'
B23010e22='Spouse worked less than full-time, year-round in the past 12 months'
B23010e23='Spouse did not work in the past 12 months'
B23010e24='Householder did not work in the past 12 months:'
B23010e25='Spouse worked full-time, year-round in the past 12 months'
B23010e26='Spouse worked less than full-time, year-round in the past 12 months'
B23010e27='Spouse did not work in the past 12 months'
/*MEDIAN AGE BY SEX FOR WORKERS 16 TO 64 YEARS */
/*Universe:  Population 16 to 64 years who have worked in the past 12 months */
/*Median age-- */
 
B23013e1='Total:'
B23013e2='Male'
B23013e3='Female'
/*AGGREGATE USUAL HOURS WORKED IN THE PAST 12 MONTHS BY SEX FOR WORKERS 16 TO 64 YEARS */
/*Universe:  Population 16 to 64 years who have worked in the past 12 months */
 
B23018e1='Aggregate usual hours:'
B23018e2='Male'
B23018e3='Female'
/*MEAN USUAL HOURS WORKED IN THE PAST 12 MONTHS FOR WORKERS 16 TO 64 YEARS */
/*Universe:  Population 16 to 64 years who have worked in the past 12 months */
/*Mean usual hours-- */
 
B23020e1='Total:'
B23020e2='Male'
B23020e3='Female'
/*SEX BY WORK STATUS IN THE PAST 12 MONTHS BY USUAL HOURS WORKED PER WEEK IN THE PAST 12 MONTHS BY WEEKS WORKED IN THE PAST 12 MONTHS FOR THE POPULATION 16 TO 64 YEARS */
/*Universe:  Population 16 to 64 years */
 
B23022e1='Total:'
B23022e2='Male:'
B23022e3='Worked in the past 12 months:'
B23022e4='Usually worked 35 or more hours per week:'
B23022e5='50 to 52 weeks'
B23022e6='48 and 49 weeks'
B23022e7='40 to 47 weeks'
B23022e8='27 to 39 weeks'
B23022e9='14 to 26 weeks'
B23022e10='1 to 13 weeks'
B23022e11='Usually worked 15 to 34 hours per week:'
B23022e12='50 to 52 weeks'
B23022e13='48 and 49 weeks'
B23022e14='40 to 47 weeks'
B23022e15='27 to 39 weeks'
B23022e16='14 to 26 weeks'
B23022e17='1 to 13 weeks'
B23022e18='Usually worked 1 to 14 hours per week:'
B23022e19='50 to 52 weeks'
B23022e20='48 and 49 weeks'
B23022e21='40 to 47 weeks'
B23022e22='27 to 39 weeks'
B23022e23='14 to 26 weeks'
B23022e24='1 to 13 weeks'
B23022e25='Did not work in the past 12 months'
B23022e26='Female:'
B23022e27='Worked in the past 12 months:'
B23022e28='Usually worked 35 or more hours per week:'
B23022e29='50 to 52 weeks'
B23022e30='48 and 49 weeks'
B23022e31='40 to 47 weeks'
B23022e32='27 to 39 weeks'
B23022e33='14 to 26 weeks'
B23022e34='1 to 13 weeks'
B23022e35='Usually worked 15 to 34 hours per week:'
B23022e36='50 to 52 weeks'
B23022e37='48 and 49 weeks'
B23022e38='40 to 47 weeks'
B23022e39='27 to 39 weeks'
B23022e40='14 to 26 weeks'
B23022e41='1 to 13 weeks'
B23022e42='Usually worked 1 to 14 hours per week:'
B23022e43='50 to 52 weeks'
B23022e44='48 and 49 weeks'
B23022e45='40 to 47 weeks'
B23022e46='27 to 39 weeks'
B23022e47='14 to 26 weeks'
B23022e48='1 to 13 weeks'
B23022e49='Did not work in the past 12 months'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B23006e1
B23006e2
B23006e3
B23006e4
B23006e5
B23006e6
B23006e7
B23006e8
B23006e9
B23006e10
B23006e11
B23006e12
B23006e13
B23006e14
B23006e15
B23006e16
B23006e17
B23006e18
B23006e19
B23006e20
B23006e21
B23006e22
B23006e23
B23006e24
B23006e25
B23006e26
B23006e27
B23006e28
B23006e29
 
B23007e1
B23007e2
B23007e3
B23007e4
B23007e5
B23007e6
B23007e7
B23007e8
B23007e9
B23007e10
B23007e11
B23007e12
B23007e13
B23007e14
B23007e15
B23007e16
B23007e17
B23007e18
B23007e19
B23007e20
B23007e21
B23007e22
B23007e23
B23007e24
B23007e25
B23007e26
B23007e27
B23007e28
B23007e29
B23007e30
B23007e31
B23007e32
B23007e33
B23007e34
B23007e35
B23007e36
B23007e37
B23007e38
B23007e39
B23007e40
B23007e41
B23007e42
B23007e43
B23007e44
B23007e45
B23007e46
B23007e47
B23007e48
B23007e49
B23007e50
B23007e51
B23007e52
B23007e53
B23007e54
B23007e55
B23007e56
B23007e57
B23007e58
B23007e59
 
B23008e1
B23008e2
B23008e3
B23008e4
B23008e5
B23008e6
B23008e7
B23008e8
B23008e9
B23008e10
B23008e11
B23008e12
B23008e13
B23008e14
B23008e15
B23008e16
B23008e17
B23008e18
B23008e19
B23008e20
B23008e21
B23008e22
B23008e23
B23008e24
B23008e25
B23008e26
B23008e27
 
B23009e1
B23009e2
B23009e3
B23009e4
B23009e5
B23009e6
B23009e7
B23009e8
B23009e9
B23009e10
B23009e11
B23009e12
B23009e13
B23009e14
B23009e15
B23009e16
B23009e17
B23009e18
B23009e19
B23009e20
B23009e21
B23009e22
B23009e23
B23009e24
B23009e25
B23009e26
B23009e27
B23009e28
B23009e29
B23009e30
B23009e31
B23009e32
B23009e33
B23009e34
B23009e35
B23009e36
B23009e37
B23009e38
B23009e39
B23009e40
B23009e41
B23009e42
B23009e43
 
B23010e1
B23010e2
B23010e3
B23010e4
B23010e5
B23010e6
B23010e7
B23010e8
B23010e9
B23010e10
B23010e11
B23010e12
B23010e13
B23010e14
B23010e15
B23010e16
B23010e17
B23010e18
B23010e19
B23010e20
B23010e21
B23010e22
B23010e23
B23010e24
B23010e25
B23010e26
B23010e27
 
B23013e1
B23013e2
B23013e3
 
B23018e1
B23018e2
B23018e3
 
B23020e1
B23020e2
B23020e3
 
B23022e1
B23022e2
B23022e3
B23022e4
B23022e5
B23022e6
B23022e7
B23022e8
B23022e9
B23022e10
B23022e11
B23022e12
B23022e13
B23022e14
B23022e15
B23022e16
B23022e17
B23022e18
B23022e19
B23022e20
B23022e21
B23022e22
B23022e23
B23022e24
B23022e25
B23022e26
B23022e27
B23022e28
B23022e29
B23022e30
B23022e31
B23022e32
B23022e33
B23022e34
B23022e35
B23022e36
B23022e37
B23022e38
B23022e39
B23022e40
B23022e41
B23022e42
B23022e43
B23022e44
B23022e45
B23022e46
B23022e47
B23022e48
B23022e49
;
RUN;
TITLE2;
