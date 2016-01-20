TITLE2 "e20125dc0049000";
DATA work.SFe0049dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0049000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*POVERTY STATUS IN THE PAST 12 MONTHS BY SEX BY AGE (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population for whom poverty status is determined */
 
B17001He1='Total:'
B17001He2='Income in the past 12 months below poverty level:'
B17001He3='Male:'
B17001He4='Under 5 years'
B17001He5='5 years'
B17001He6='6 to 11 years'
B17001He7='12 to 14 years'
B17001He8='15 years'
B17001He9='16 and 17 years'
B17001He10='18 to 24 years'
B17001He11='25 to 34 years'
B17001He12='35 to 44 years'
B17001He13='45 to 54 years'
B17001He14='55 to 64 years'
B17001He15='65 to 74 years'
B17001He16='75 years and over'
B17001He17='Female:'
B17001He18='Under 5 years'
B17001He19='5 years'
B17001He20='6 to 11 years'
B17001He21='12 to 14 years'
B17001He22='15 years'
B17001He23='16 and 17 years'
B17001He24='18 to 24 years'
B17001He25='25 to 34 years'
B17001He26='35 to 44 years'
B17001He27='45 to 54 years'
B17001He28='55 to 64 years'
B17001He29='65 to 74 years'
B17001He30='75 years and over'
B17001He31='Income in the past 12 months at or above poverty level:'
B17001He32='Male:'
B17001He33='Under 5 years'
B17001He34='5 years'
B17001He35='6 to 11 years'
B17001He36='12 to 14 years'
B17001He37='15 years'
B17001He38='16 and 17 years'
B17001He39='18 to 24 years'
B17001He40='25 to 34 years'
B17001He41='35 to 44 years'
B17001He42='45 to 54 years'
B17001He43='55 to 64 years'
B17001He44='65 to 74 years'
B17001He45='75 years and over'
B17001He46='Female:'
B17001He47='Under 5 years'
B17001He48='5 years'
B17001He49='6 to 11 years'
B17001He50='12 to 14 years'
B17001He51='15 years'
B17001He52='16 and 17 years'
B17001He53='18 to 24 years'
B17001He54='25 to 34 years'
B17001He55='35 to 44 years'
B17001He56='45 to 54 years'
B17001He57='55 to 64 years'
B17001He58='65 to 74 years'
B17001He59='75 years and over'
/*POVERTY STATUS IN THE PAST 12 MONTHS BY SEX BY AGE (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population for whom poverty status is determined */
 
B17001Ie1='Total:'
B17001Ie2='Income in the past 12 months below poverty level:'
B17001Ie3='Male:'
B17001Ie4='Under 5 years'
B17001Ie5='5 years'
B17001Ie6='6 to 11 years'
B17001Ie7='12 to 14 years'
B17001Ie8='15 years'
B17001Ie9='16 and 17 years'
B17001Ie10='18 to 24 years'
B17001Ie11='25 to 34 years'
B17001Ie12='35 to 44 years'
B17001Ie13='45 to 54 years'
B17001Ie14='55 to 64 years'
B17001Ie15='65 to 74 years'
B17001Ie16='75 years and over'
B17001Ie17='Female:'
B17001Ie18='Under 5 years'
B17001Ie19='5 years'
B17001Ie20='6 to 11 years'
B17001Ie21='12 to 14 years'
B17001Ie22='15 years'
B17001Ie23='16 and 17 years'
B17001Ie24='18 to 24 years'
B17001Ie25='25 to 34 years'
B17001Ie26='35 to 44 years'
B17001Ie27='45 to 54 years'
B17001Ie28='55 to 64 years'
B17001Ie29='65 to 74 years'
B17001Ie30='75 years and over'
B17001Ie31='Income in the past 12 months at or above poverty level:'
B17001Ie32='Male:'
B17001Ie33='Under 5 years'
B17001Ie34='5 years'
B17001Ie35='6 to 11 years'
B17001Ie36='12 to 14 years'
B17001Ie37='15 years'
B17001Ie38='16 and 17 years'
B17001Ie39='18 to 24 years'
B17001Ie40='25 to 34 years'
B17001Ie41='35 to 44 years'
B17001Ie42='45 to 54 years'
B17001Ie43='55 to 64 years'
B17001Ie44='65 to 74 years'
B17001Ie45='75 years and over'
B17001Ie46='Female:'
B17001Ie47='Under 5 years'
B17001Ie48='5 years'
B17001Ie49='6 to 11 years'
B17001Ie50='12 to 14 years'
B17001Ie51='15 years'
B17001Ie52='16 and 17 years'
B17001Ie53='18 to 24 years'
B17001Ie54='25 to 34 years'
B17001Ie55='35 to 44 years'
B17001Ie56='45 to 54 years'
B17001Ie57='55 to 64 years'
B17001Ie58='65 to 74 years'
B17001Ie59='75 years and over'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF INDIVIDUALS BY SEX BY EDUCATIONAL ATTAINMENT */
/*Universe:  Population 25 years and over for whom poverty status is determined */
 
B17003e1='Total:'
B17003e2='Income in the past 12 months below poverty level:'
B17003e3='Male:'
B17003e4='Less than high school graduate'
B17003e5='High school graduate (includes equivalency)'
B17003e6='Some college, associate''s degree'
B17003e7='Bachelor''s degree or higher'
B17003e8='Female:'
B17003e9='Less than high school graduate'
B17003e10='High school graduate (includes equivalency)'
B17003e11='Some college, associate''s degree'
B17003e12='Bachelor''s degree or higher'
B17003e13='Income in the past 12 months at or above poverty level:'
B17003e14='Male:'
B17003e15='Less than high school graduate'
B17003e16='High school graduate (includes equivalency)'
B17003e17='Some college, associate''s degree'
B17003e18='Bachelor''s degree or higher'
B17003e19='Female:'
B17003e20='Less than high school graduate'
B17003e21='High school graduate (includes equivalency)'
B17003e22='Some college, associate''s degree'
B17003e23='Bachelor''s degree or higher'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF INDIVIDUALS BY SEX BY WORK EXPERIENCE */
/*Universe:  Population 16 years and over for whom poverty status is determined */
 
B17004e1='Total:'
B17004e2='Income in the past 12 months below poverty level:'
B17004e3='Male:'
B17004e4='Worked full time, year-round'
B17004e5='Worked part-time or part-year'
B17004e6='Did not work'
B17004e7='Female:'
B17004e8='Worked full time, year-round'
B17004e9='Worked part-time or part-year'
B17004e10='Did not work'
B17004e11='Income in the past 12 months at or above poverty level:'
B17004e12='Male:'
B17004e13='Worked full time, year-round'
B17004e14='Worked part-time or part-year'
B17004e15='Did not work'
B17004e16='Female:'
B17004e17='Worked full time, year-round'
B17004e18='Worked part-time or part-year'
B17004e19='Did not work'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF INDIVIDUALS BY SEX BY EMPLOYMENT STATUS */
/*Universe:  Civilian population 16 years and over for whom poverty status is determined */
 
B17005e1='Total:'
B17005e2='Income in the past 12 months below poverty level:'
B17005e3='Male:'
B17005e4='In labor force:'
B17005e5='Employed'
B17005e6='Unemployed'
B17005e7='Not in labor force'
B17005e8='Female:'
B17005e9='In labor force:'
B17005e10='Employed'
B17005e11='Unemployed'
B17005e12='Not in labor force'
B17005e13='Income in the past 12 months at or above poverty level:'
B17005e14='Male:'
B17005e15='In labor force:'
B17005e16='Employed'
B17005e17='Unemployed'
B17005e18='Not in labor force'
B17005e19='Female:'
B17005e20='In labor force:'
B17005e21='Employed'
B17005e22='Unemployed'
B17005e23='Not in labor force'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF RELATED CHILDREN UNDER 18 YEARS BY FAMILY TYPE BY AGE OF RELATED CHILDREN UNDER 18 YEARS */
/*Universe:  Related children under 18 years */
 
B17006e1='Total:'
B17006e2='Income in the past 12 months below poverty level:'
B17006e3='In married-couple family:'
B17006e4='Under 5 years'
B17006e5='5 years'
B17006e6='6 to 17 years'
B17006e7='In other family:'
B17006e8='Male householder, no wife present:'
B17006e9='Under 5 years'
B17006e10='5 years'
B17006e11='6 to 17 years'
B17006e12='Female householder, no husband present:'
B17006e13='Under 5 years'
B17006e14='5 years'
B17006e15='6 to 17 years'
B17006e16='Income in the past 12 months at or above poverty level:'
B17006e17='In married-couple family:'
B17006e18='Under 5 years'
B17006e19='5 years'
B17006e20='6 to 17 years'
B17006e21='In other family:'
B17006e22='Male householder, no wife present:'
B17006e23='Under 5 years'
B17006e24='5 years'
B17006e25='6 to 17 years'
B17006e26='Female householder, no husband present:'
B17006e27='Under 5 years'
B17006e28='5 years'
B17006e29='6 to 17 years'
/*RATIO OF INCOME TO POVERTY LEVEL IN THE PAST 12 MONTHS */
/*Universe:  Population for whom poverty status is determined */
 
C17002e1='Total:'
C17002e2='Under .50'
C17002e3='.50 to .99'
C17002e4='1.00 to 1.24'
C17002e5='1.25 to 1.49'
C17002e6='1.50 to 1.84'
C17002e7='1.85 to 1.99'
C17002e8='2.00 and over'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B17001He1
B17001He2
B17001He3
B17001He4
B17001He5
B17001He6
B17001He7
B17001He8
B17001He9
B17001He10
B17001He11
B17001He12
B17001He13
B17001He14
B17001He15
B17001He16
B17001He17
B17001He18
B17001He19
B17001He20
B17001He21
B17001He22
B17001He23
B17001He24
B17001He25
B17001He26
B17001He27
B17001He28
B17001He29
B17001He30
B17001He31
B17001He32
B17001He33
B17001He34
B17001He35
B17001He36
B17001He37
B17001He38
B17001He39
B17001He40
B17001He41
B17001He42
B17001He43
B17001He44
B17001He45
B17001He46
B17001He47
B17001He48
B17001He49
B17001He50
B17001He51
B17001He52
B17001He53
B17001He54
B17001He55
B17001He56
B17001He57
B17001He58
B17001He59
 
B17001Ie1
B17001Ie2
B17001Ie3
B17001Ie4
B17001Ie5
B17001Ie6
B17001Ie7
B17001Ie8
B17001Ie9
B17001Ie10
B17001Ie11
B17001Ie12
B17001Ie13
B17001Ie14
B17001Ie15
B17001Ie16
B17001Ie17
B17001Ie18
B17001Ie19
B17001Ie20
B17001Ie21
B17001Ie22
B17001Ie23
B17001Ie24
B17001Ie25
B17001Ie26
B17001Ie27
B17001Ie28
B17001Ie29
B17001Ie30
B17001Ie31
B17001Ie32
B17001Ie33
B17001Ie34
B17001Ie35
B17001Ie36
B17001Ie37
B17001Ie38
B17001Ie39
B17001Ie40
B17001Ie41
B17001Ie42
B17001Ie43
B17001Ie44
B17001Ie45
B17001Ie46
B17001Ie47
B17001Ie48
B17001Ie49
B17001Ie50
B17001Ie51
B17001Ie52
B17001Ie53
B17001Ie54
B17001Ie55
B17001Ie56
B17001Ie57
B17001Ie58
B17001Ie59
 
B17003e1
B17003e2
B17003e3
B17003e4
B17003e5
B17003e6
B17003e7
B17003e8
B17003e9
B17003e10
B17003e11
B17003e12
B17003e13
B17003e14
B17003e15
B17003e16
B17003e17
B17003e18
B17003e19
B17003e20
B17003e21
B17003e22
B17003e23
 
B17004e1
B17004e2
B17004e3
B17004e4
B17004e5
B17004e6
B17004e7
B17004e8
B17004e9
B17004e10
B17004e11
B17004e12
B17004e13
B17004e14
B17004e15
B17004e16
B17004e17
B17004e18
B17004e19
 
B17005e1
B17005e2
B17005e3
B17005e4
B17005e5
B17005e6
B17005e7
B17005e8
B17005e9
B17005e10
B17005e11
B17005e12
B17005e13
B17005e14
B17005e15
B17005e16
B17005e17
B17005e18
B17005e19
B17005e20
B17005e21
B17005e22
B17005e23
 
B17006e1
B17006e2
B17006e3
B17006e4
B17006e5
B17006e6
B17006e7
B17006e8
B17006e9
B17006e10
B17006e11
B17006e12
B17006e13
B17006e14
B17006e15
B17006e16
B17006e17
B17006e18
B17006e19
B17006e20
B17006e21
B17006e22
B17006e23
B17006e24
B17006e25
B17006e26
B17006e27
B17006e28
B17006e29
 
C17002e1
C17002e2
C17002e3
C17002e4
C17002e5
C17002e6
C17002e7
C17002e8
;
RUN;
TITLE2;
