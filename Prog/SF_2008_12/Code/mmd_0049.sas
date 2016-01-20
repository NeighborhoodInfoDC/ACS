TITLE2 "m20125md0049000";
DATA work.SFm0049md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0049000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*POVERTY STATUS IN THE PAST 12 MONTHS BY SEX BY AGE (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population for whom poverty status is determined */
 
B17001Hm1='Total:'
B17001Hm2='Income in the past 12 months below poverty level:'
B17001Hm3='Male:'
B17001Hm4='Under 5 years'
B17001Hm5='5 years'
B17001Hm6='6 to 11 years'
B17001Hm7='12 to 14 years'
B17001Hm8='15 years'
B17001Hm9='16 and 17 years'
B17001Hm10='18 to 24 years'
B17001Hm11='25 to 34 years'
B17001Hm12='35 to 44 years'
B17001Hm13='45 to 54 years'
B17001Hm14='55 to 64 years'
B17001Hm15='65 to 74 years'
B17001Hm16='75 years and over'
B17001Hm17='Female:'
B17001Hm18='Under 5 years'
B17001Hm19='5 years'
B17001Hm20='6 to 11 years'
B17001Hm21='12 to 14 years'
B17001Hm22='15 years'
B17001Hm23='16 and 17 years'
B17001Hm24='18 to 24 years'
B17001Hm25='25 to 34 years'
B17001Hm26='35 to 44 years'
B17001Hm27='45 to 54 years'
B17001Hm28='55 to 64 years'
B17001Hm29='65 to 74 years'
B17001Hm30='75 years and over'
B17001Hm31='Income in the past 12 months at or above poverty level:'
B17001Hm32='Male:'
B17001Hm33='Under 5 years'
B17001Hm34='5 years'
B17001Hm35='6 to 11 years'
B17001Hm36='12 to 14 years'
B17001Hm37='15 years'
B17001Hm38='16 and 17 years'
B17001Hm39='18 to 24 years'
B17001Hm40='25 to 34 years'
B17001Hm41='35 to 44 years'
B17001Hm42='45 to 54 years'
B17001Hm43='55 to 64 years'
B17001Hm44='65 to 74 years'
B17001Hm45='75 years and over'
B17001Hm46='Female:'
B17001Hm47='Under 5 years'
B17001Hm48='5 years'
B17001Hm49='6 to 11 years'
B17001Hm50='12 to 14 years'
B17001Hm51='15 years'
B17001Hm52='16 and 17 years'
B17001Hm53='18 to 24 years'
B17001Hm54='25 to 34 years'
B17001Hm55='35 to 44 years'
B17001Hm56='45 to 54 years'
B17001Hm57='55 to 64 years'
B17001Hm58='65 to 74 years'
B17001Hm59='75 years and over'
/*POVERTY STATUS IN THE PAST 12 MONTHS BY SEX BY AGE (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population for whom poverty status is determined */
 
B17001Im1='Total:'
B17001Im2='Income in the past 12 months below poverty level:'
B17001Im3='Male:'
B17001Im4='Under 5 years'
B17001Im5='5 years'
B17001Im6='6 to 11 years'
B17001Im7='12 to 14 years'
B17001Im8='15 years'
B17001Im9='16 and 17 years'
B17001Im10='18 to 24 years'
B17001Im11='25 to 34 years'
B17001Im12='35 to 44 years'
B17001Im13='45 to 54 years'
B17001Im14='55 to 64 years'
B17001Im15='65 to 74 years'
B17001Im16='75 years and over'
B17001Im17='Female:'
B17001Im18='Under 5 years'
B17001Im19='5 years'
B17001Im20='6 to 11 years'
B17001Im21='12 to 14 years'
B17001Im22='15 years'
B17001Im23='16 and 17 years'
B17001Im24='18 to 24 years'
B17001Im25='25 to 34 years'
B17001Im26='35 to 44 years'
B17001Im27='45 to 54 years'
B17001Im28='55 to 64 years'
B17001Im29='65 to 74 years'
B17001Im30='75 years and over'
B17001Im31='Income in the past 12 months at or above poverty level:'
B17001Im32='Male:'
B17001Im33='Under 5 years'
B17001Im34='5 years'
B17001Im35='6 to 11 years'
B17001Im36='12 to 14 years'
B17001Im37='15 years'
B17001Im38='16 and 17 years'
B17001Im39='18 to 24 years'
B17001Im40='25 to 34 years'
B17001Im41='35 to 44 years'
B17001Im42='45 to 54 years'
B17001Im43='55 to 64 years'
B17001Im44='65 to 74 years'
B17001Im45='75 years and over'
B17001Im46='Female:'
B17001Im47='Under 5 years'
B17001Im48='5 years'
B17001Im49='6 to 11 years'
B17001Im50='12 to 14 years'
B17001Im51='15 years'
B17001Im52='16 and 17 years'
B17001Im53='18 to 24 years'
B17001Im54='25 to 34 years'
B17001Im55='35 to 44 years'
B17001Im56='45 to 54 years'
B17001Im57='55 to 64 years'
B17001Im58='65 to 74 years'
B17001Im59='75 years and over'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF INDIVIDUALS BY SEX BY EDUCATIONAL ATTAINMENT */
/*Universe:  Population 25 years and over for whom poverty status is determined */
 
B17003m1='Total:'
B17003m2='Income in the past 12 months below poverty level:'
B17003m3='Male:'
B17003m4='Less than high school graduate'
B17003m5='High school graduate (includes equivalency)'
B17003m6='Some college, associate''s degree'
B17003m7='Bachelor''s degree or higher'
B17003m8='Female:'
B17003m9='Less than high school graduate'
B17003m10='High school graduate (includes equivalency)'
B17003m11='Some college, associate''s degree'
B17003m12='Bachelor''s degree or higher'
B17003m13='Income in the past 12 months at or above poverty level:'
B17003m14='Male:'
B17003m15='Less than high school graduate'
B17003m16='High school graduate (includes equivalency)'
B17003m17='Some college, associate''s degree'
B17003m18='Bachelor''s degree or higher'
B17003m19='Female:'
B17003m20='Less than high school graduate'
B17003m21='High school graduate (includes equivalency)'
B17003m22='Some college, associate''s degree'
B17003m23='Bachelor''s degree or higher'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF INDIVIDUALS BY SEX BY WORK EXPERIENCE */
/*Universe:  Population 16 years and over for whom poverty status is determined */
 
B17004m1='Total:'
B17004m2='Income in the past 12 months below poverty level:'
B17004m3='Male:'
B17004m4='Worked full time, year-round'
B17004m5='Worked part-time or part-year'
B17004m6='Did not work'
B17004m7='Female:'
B17004m8='Worked full time, year-round'
B17004m9='Worked part-time or part-year'
B17004m10='Did not work'
B17004m11='Income in the past 12 months at or above poverty level:'
B17004m12='Male:'
B17004m13='Worked full time, year-round'
B17004m14='Worked part-time or part-year'
B17004m15='Did not work'
B17004m16='Female:'
B17004m17='Worked full time, year-round'
B17004m18='Worked part-time or part-year'
B17004m19='Did not work'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF INDIVIDUALS BY SEX BY EMPLOYMENT STATUS */
/*Universe:  Civilian population 16 years and over for whom poverty status is determined */
 
B17005m1='Total:'
B17005m2='Income in the past 12 months below poverty level:'
B17005m3='Male:'
B17005m4='In labor force:'
B17005m5='Employed'
B17005m6='Unemployed'
B17005m7='Not in labor force'
B17005m8='Female:'
B17005m9='In labor force:'
B17005m10='Employed'
B17005m11='Unemployed'
B17005m12='Not in labor force'
B17005m13='Income in the past 12 months at or above poverty level:'
B17005m14='Male:'
B17005m15='In labor force:'
B17005m16='Employed'
B17005m17='Unemployed'
B17005m18='Not in labor force'
B17005m19='Female:'
B17005m20='In labor force:'
B17005m21='Employed'
B17005m22='Unemployed'
B17005m23='Not in labor force'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF RELATED CHILDREN UNDER 18 YEARS BY FAMILY TYPE BY AGE OF RELATED CHILDREN UNDER 18 YEARS */
/*Universe:  Related children under 18 years */
 
B17006m1='Total:'
B17006m2='Income in the past 12 months below poverty level:'
B17006m3='In married-couple family:'
B17006m4='Under 5 years'
B17006m5='5 years'
B17006m6='6 to 17 years'
B17006m7='In other family:'
B17006m8='Male householder, no wife present:'
B17006m9='Under 5 years'
B17006m10='5 years'
B17006m11='6 to 17 years'
B17006m12='Female householder, no husband present:'
B17006m13='Under 5 years'
B17006m14='5 years'
B17006m15='6 to 17 years'
B17006m16='Income in the past 12 months at or above poverty level:'
B17006m17='In married-couple family:'
B17006m18='Under 5 years'
B17006m19='5 years'
B17006m20='6 to 17 years'
B17006m21='In other family:'
B17006m22='Male householder, no wife present:'
B17006m23='Under 5 years'
B17006m24='5 years'
B17006m25='6 to 17 years'
B17006m26='Female householder, no husband present:'
B17006m27='Under 5 years'
B17006m28='5 years'
B17006m29='6 to 17 years'
/*RATIO OF INCOME TO POVERTY LEVEL IN THE PAST 12 MONTHS */
/*Universe:  Population for whom poverty status is determined */
 
C17002m1='Total:'
C17002m2='Under .50'
C17002m3='.50 to .99'
C17002m4='1.00 to 1.24'
C17002m5='1.25 to 1.49'
C17002m6='1.50 to 1.84'
C17002m7='1.85 to 1.99'
C17002m8='2.00 and over'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B17001Hm1
B17001Hm2
B17001Hm3
B17001Hm4
B17001Hm5
B17001Hm6
B17001Hm7
B17001Hm8
B17001Hm9
B17001Hm10
B17001Hm11
B17001Hm12
B17001Hm13
B17001Hm14
B17001Hm15
B17001Hm16
B17001Hm17
B17001Hm18
B17001Hm19
B17001Hm20
B17001Hm21
B17001Hm22
B17001Hm23
B17001Hm24
B17001Hm25
B17001Hm26
B17001Hm27
B17001Hm28
B17001Hm29
B17001Hm30
B17001Hm31
B17001Hm32
B17001Hm33
B17001Hm34
B17001Hm35
B17001Hm36
B17001Hm37
B17001Hm38
B17001Hm39
B17001Hm40
B17001Hm41
B17001Hm42
B17001Hm43
B17001Hm44
B17001Hm45
B17001Hm46
B17001Hm47
B17001Hm48
B17001Hm49
B17001Hm50
B17001Hm51
B17001Hm52
B17001Hm53
B17001Hm54
B17001Hm55
B17001Hm56
B17001Hm57
B17001Hm58
B17001Hm59
 
B17001Im1
B17001Im2
B17001Im3
B17001Im4
B17001Im5
B17001Im6
B17001Im7
B17001Im8
B17001Im9
B17001Im10
B17001Im11
B17001Im12
B17001Im13
B17001Im14
B17001Im15
B17001Im16
B17001Im17
B17001Im18
B17001Im19
B17001Im20
B17001Im21
B17001Im22
B17001Im23
B17001Im24
B17001Im25
B17001Im26
B17001Im27
B17001Im28
B17001Im29
B17001Im30
B17001Im31
B17001Im32
B17001Im33
B17001Im34
B17001Im35
B17001Im36
B17001Im37
B17001Im38
B17001Im39
B17001Im40
B17001Im41
B17001Im42
B17001Im43
B17001Im44
B17001Im45
B17001Im46
B17001Im47
B17001Im48
B17001Im49
B17001Im50
B17001Im51
B17001Im52
B17001Im53
B17001Im54
B17001Im55
B17001Im56
B17001Im57
B17001Im58
B17001Im59
 
B17003m1
B17003m2
B17003m3
B17003m4
B17003m5
B17003m6
B17003m7
B17003m8
B17003m9
B17003m10
B17003m11
B17003m12
B17003m13
B17003m14
B17003m15
B17003m16
B17003m17
B17003m18
B17003m19
B17003m20
B17003m21
B17003m22
B17003m23
 
B17004m1
B17004m2
B17004m3
B17004m4
B17004m5
B17004m6
B17004m7
B17004m8
B17004m9
B17004m10
B17004m11
B17004m12
B17004m13
B17004m14
B17004m15
B17004m16
B17004m17
B17004m18
B17004m19
 
B17005m1
B17005m2
B17005m3
B17005m4
B17005m5
B17005m6
B17005m7
B17005m8
B17005m9
B17005m10
B17005m11
B17005m12
B17005m13
B17005m14
B17005m15
B17005m16
B17005m17
B17005m18
B17005m19
B17005m20
B17005m21
B17005m22
B17005m23
 
B17006m1
B17006m2
B17006m3
B17006m4
B17006m5
B17006m6
B17006m7
B17006m8
B17006m9
B17006m10
B17006m11
B17006m12
B17006m13
B17006m14
B17006m15
B17006m16
B17006m17
B17006m18
B17006m19
B17006m20
B17006m21
B17006m22
B17006m23
B17006m24
B17006m25
B17006m26
B17006m27
B17006m28
B17006m29
 
C17002m1
C17002m2
C17002m3
C17002m4
C17002m5
C17002m6
C17002m7
C17002m8
;
RUN;
TITLE2;
