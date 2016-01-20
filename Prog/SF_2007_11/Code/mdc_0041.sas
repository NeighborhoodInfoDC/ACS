TITLE2 "m20115dc0041000";
DATA work.SFm0041dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0041000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*SCHOOL ENROLLMENT BY LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER */
/*Universe:  Population 3 years and over */
 
B14001m1='Total:'
B14001m2='Enrolled in school:'
B14001m3='Enrolled in nursery school, preschool'
B14001m4='Enrolled in kindergarten'
B14001m5='Enrolled in grade 1 to grade 4'
B14001m6='Enrolled in grade 5 to grade 8'
B14001m7='Enrolled in grade 9 to grade 12'
B14001m8='Enrolled in college, undergraduate years'
B14001m9='Graduate or professional school'
B14001m10='Not enrolled in school'
 
/*SEX BY SCHOOL ENROLLMENT BY LEVEL OF SCHOOL BY TYPE OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER */
/*Universe:  Population 3 years and over */
 
B14002m1='Total:'
B14002m2='Male:'
B14002m3='Enrolled in school:'
B14002m4='Enrolled in nursery school, preschool:'
B14002m5='Public school'
B14002m6='Private school'
B14002m7='Enrolled in kindergarten:'
B14002m8='Public school'
B14002m9='Private school'
B14002m10='Enrolled in grade 1 to grade 4:'
B14002m11='Public school'
B14002m12='Private school'
B14002m13='Enrolled in grade 5 to grade 8:'
B14002m14='Public school'
B14002m15='Private school'
B14002m16='Enrolled in grade 9 to grade 12:'
B14002m17='Public school'
B14002m18='Private school'
B14002m19='Enrolled in college undergraduate years:'
B14002m20='Public school'
B14002m21='Private school'
B14002m22='Enrolled in graduate or professional school:'
B14002m23='Public school'
B14002m24='Private school'
B14002m25='Not enrolled in school'
B14002m26='Female:'
B14002m27='Enrolled in school:'
B14002m28='Enrolled in nursery school, preschool:'
B14002m29='Public school'
B14002m30='Private school'
B14002m31='Enrolled in kindergarten:'
B14002m32='Public school'
B14002m33='Private school'
B14002m34='Enrolled in grade 1 to grade 4:'
B14002m35='Public school'
B14002m36='Private school'
B14002m37='Enrolled in grade 5 to grade 8:'
B14002m38='Public school'
B14002m39='Private school'
B14002m40='Enrolled in grade 9 to grade 12:'
B14002m41='Public school'
B14002m42='Private school'
B14002m43='Enrolled in college undergraduate years:'
B14002m44='Public school'
B14002m45='Private school'
B14002m46='Enrolled in graduate or professional school:'
B14002m47='Public school'
B14002m48='Private school'
B14002m49='Not enrolled in school'
 
/*SEX BY SCHOOL ENROLLMENT BY TYPE OF SCHOOL BY AGE FOR THE POPULATION 3 YEARS AND OVER */
/*Universe:  Population 3 years and over */
 
B14003m1='Total:'
B14003m2='Male:'
B14003m3='Enrolled in public school:'
B14003m4='3 and 4 years'
B14003m5='5 to 9 years'
B14003m6='10 to 14 years'
B14003m7='15 to 17 years'
B14003m8='18 and 19 years'
B14003m9='20 to 24 years'
B14003m10='25 to 34 years'
B14003m11='35 years and over'
B14003m12='Enrolled in private school:'
B14003m13='3 and 4 years'
B14003m14='5 to 9 years'
B14003m15='10 to 14 years'
B14003m16='15 to 17 years'
B14003m17='18 and 19 years'
B14003m18='20 to 24 years'
B14003m19='25 to 34 years'
B14003m20='35 years and over'
B14003m21='Not enrolled in school:'
B14003m22='3 and 4 years'
B14003m23='5 to 9 years'
B14003m24='10 to 14 years'
B14003m25='15 to 17 years'
B14003m26='18 and 19 years'
B14003m27='20 to 24 years'
B14003m28='25 to 34 years'
B14003m29='35 years and over'
B14003m30='Female:'
B14003m31='Enrolled in public school:'
B14003m32='3 and 4 years'
B14003m33='5 to 9 years'
B14003m34='10 to 14 years'
B14003m35='15 to 17 years'
B14003m36='18 and 19 years'
B14003m37='20 to 24 years'
B14003m38='25 to 34 years'
B14003m39='35 years and over'
B14003m40='Enrolled in private school:'
B14003m41='3 and 4 years'
B14003m42='5 to 9 years'
B14003m43='10 to 14 years'
B14003m44='15 to 17 years'
B14003m45='18 and 19 years'
B14003m46='20 to 24 years'
B14003m47='25 to 34 years'
B14003m48='35 years and over'
B14003m49='Not enrolled in school:'
B14003m50='3 and 4 years'
B14003m51='5 to 9 years'
B14003m52='10 to 14 years'
B14003m53='15 to 17 years'
B14003m54='18 and 19 years'
B14003m55='20 to 24 years'
B14003m56='25 to 34 years'
B14003m57='35 years and over'
 
/*SEX BY COLLEGE OR GRADUATE SCHOOL ENROLLMENT BY TYPE OF SCHOOL BY AGE FOR THE POPULATION 15 YEARS AND OVER */
/*Universe:  Population 15 years and over */
 
B14004m1='Total:'
B14004m2='Male:'
B14004m3='Enrolled in public college or graduate school:'
B14004m4='15 to 17 years'
B14004m5='18 to 24 years'
B14004m6='25 to 34 years'
B14004m7='35 years and over'
B14004m8='Enrolled in private college or graduate school:'
B14004m9='15 to 17 years'
B14004m10='18 to 24 years'
B14004m11='25 to 34 years'
B14004m12='35 years and over'
B14004m13='Not enrolled in college or graduate school:'
B14004m14='15 to 17 years'
B14004m15='18 to 24 years'
B14004m16='25 to 34 years'
B14004m17='35 years and over'
B14004m18='Female:'
B14004m19='Enrolled in public college or graduate school:'
B14004m20='15 to 17 years'
B14004m21='18 to 24 years'
B14004m22='25 to 34 years'
B14004m23='35 years and over'
B14004m24='Enrolled in private college or graduate school:'
B14004m25='15 to 17 years'
B14004m26='18 to 24 years'
B14004m27='25 to 34 years'
B14004m28='35 years and over'
B14004m29='Not enrolled in college or graduate school:'
B14004m30='15 to 17 years'
B14004m31='18 to 24 years'
B14004m32='25 to 34 years'
B14004m33='35 years and over'
 
/*SEX BY SCHOOL ENROLLMENT BY EDUCATIONAL ATTAINMENT BY EMPLOYMENT STATUS FOR THE POPULATION 16 TO 19 YEARS */
/*Universe:  Population 16 to 19 years */
 
B14005m1='Total:'
B14005m2='Male:'
B14005m3='Enrolled in school:'
B14005m4='Employed'
B14005m5='Unemployed'
B14005m6='Not in labor force'
B14005m7='Not enrolled in school:'
B14005m8='High school graduate:'
B14005m9='Employed'
B14005m10='Unemployed'
B14005m11='Not in labor force'
B14005m12='Not high school graduate:'
B14005m13='Employed'
B14005m14='Unemployed'
B14005m15='Not in labor force'
B14005m16='Female:'
B14005m17='Enrolled in school:'
B14005m18='Employed'
B14005m19='Unemployed'
B14005m20='Not in labor force'
B14005m21='Not enrolled in school:'
B14005m22='High school graduate:'
B14005m23='Employed'
B14005m24='Unemployed'
B14005m25='Not in labor force'
B14005m26='Not high school graduate:'
B14005m27='Employed'
B14005m28='Unemployed'
B14005m29='Not in labor force'
 
/*POVERTY STATUS IN THE PAST 12 MONTHS BY SCHOOL ENROLLMENT BY LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER */
/*Universe:  Population 3 years and over for whom poverty status is determined */
 
B14006m1='Total:'
B14006m2='Income in the past 12 months below the poverty level:'
B14006m3='Enrolled in school:'
B14006m4='Enrolled in nursery school, preschool'
B14006m5='Enrolled in kindergarten'
B14006m6='Enrolled in grade 1 to grade 4'
B14006m7='Enrolled in grade 5 to grade 8'
B14006m8='Enrolled in grade 9 to grade 12'
B14006m9='Enrolled in college undergraduate years'
B14006m10='Enrolled in graduate or professional school'
B14006m11='Not enrolled in school'
B14006m12='Income in the past 12 months at or above the poverty level:'
B14006m13='Enrolled in school:'
B14006m14='Enrolled in nursery school, preschool'
B14006m15='Enrolled in kindergarten'
B14006m16='Enrolled in grade 1 to grade 4'
B14006m17='Enrolled in grade 5 to grade 8'
B14006m18='Enrolled in grade 9 to grade 12'
B14006m19='Enrolled in college undergraduate years'
B14006m20='Enrolled in graduate or professional school'
B14006m21='Not enrolled in school'
 
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (WHITE ALONE) */
/*Universe:  White alone population 3 years and over */
 
C14007Am1='Total:'
C14007Am2='Enrolled in school:'
C14007Am3='Enrolled in nursery school, preschool, kindergarten'
C14007Am4='Enrolled in grade 1 to grade 8'
C14007Am5='Enrolled in grade 9 to grade 12'
C14007Am6='Enrolled in college or graduate school'
C14007Am7='Not enrolled in school'
 
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone population 3 years and over */
 
C14007Bm1='Total:'
C14007Bm2='Enrolled in school:'
C14007Bm3='Enrolled in nursery school, preschool, kindergarten'
C14007Bm4='Enrolled in grade 1 to grade 8'
C14007Bm5='Enrolled in grade 9 to grade 12'
C14007Bm6='Enrolled in college or graduate school'
C14007Bm7='Not enrolled in school'
 
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone population 3 years and over */
 
C14007Cm1='Total:'
C14007Cm2='Enrolled in school:'
C14007Cm3='Enrolled in nursery school, preschool, kindergarten'
C14007Cm4='Enrolled in grade 1 to grade 8'
C14007Cm5='Enrolled in grade 9 to grade 12'
C14007Cm6='Enrolled in college or graduate school'
C14007Cm7='Not enrolled in school'
 
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (ASIAN ALONE) */
/*Universe:  Asian alone population 3 years and over */
 
C14007Dm1='Total:'
C14007Dm2='Enrolled in school:'
C14007Dm3='Enrolled in nursery school, preschool, kindergarten'
C14007Dm4='Enrolled in grade 1 to grade 8'
C14007Dm5='Enrolled in grade 9 to grade 12'
C14007Dm6='Enrolled in college or graduate school'
C14007Dm7='Not enrolled in school'
 
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 3 years and over */
 
C14007Em1='Total:'
C14007Em2='Enrolled in school:'
C14007Em3='Enrolled in nursery school, preschool, kindergarten'
C14007Em4='Enrolled in grade 1 to grade 8'
C14007Em5='Enrolled in grade 9 to grade 12'
C14007Em6='Enrolled in college or graduate school'
C14007Em7='Not enrolled in school'
 
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone population 3 years and over */
 
C14007Fm1='Total:'
C14007Fm2='Enrolled in school:'
C14007Fm3='Enrolled in nursery school, preschool, kindergarten'
C14007Fm4='Enrolled in grade 1 to grade 8'
C14007Fm5='Enrolled in grade 9 to grade 12'
C14007Fm6='Enrolled in college or graduate school'
C14007Fm7='Not enrolled in school'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B14001m1
B14001m2
B14001m3
B14001m4
B14001m5
B14001m6
B14001m7
B14001m8
B14001m9
B14001m10
 
B14002m1
B14002m2
B14002m3
B14002m4
B14002m5
B14002m6
B14002m7
B14002m8
B14002m9
B14002m10
B14002m11
B14002m12
B14002m13
B14002m14
B14002m15
B14002m16
B14002m17
B14002m18
B14002m19
B14002m20
B14002m21
B14002m22
B14002m23
B14002m24
B14002m25
B14002m26
B14002m27
B14002m28
B14002m29
B14002m30
B14002m31
B14002m32
B14002m33
B14002m34
B14002m35
B14002m36
B14002m37
B14002m38
B14002m39
B14002m40
B14002m41
B14002m42
B14002m43
B14002m44
B14002m45
B14002m46
B14002m47
B14002m48
B14002m49
 
B14003m1
B14003m2
B14003m3
B14003m4
B14003m5
B14003m6
B14003m7
B14003m8
B14003m9
B14003m10
B14003m11
B14003m12
B14003m13
B14003m14
B14003m15
B14003m16
B14003m17
B14003m18
B14003m19
B14003m20
B14003m21
B14003m22
B14003m23
B14003m24
B14003m25
B14003m26
B14003m27
B14003m28
B14003m29
B14003m30
B14003m31
B14003m32
B14003m33
B14003m34
B14003m35
B14003m36
B14003m37
B14003m38
B14003m39
B14003m40
B14003m41
B14003m42
B14003m43
B14003m44
B14003m45
B14003m46
B14003m47
B14003m48
B14003m49
B14003m50
B14003m51
B14003m52
B14003m53
B14003m54
B14003m55
B14003m56
B14003m57
 
B14004m1
B14004m2
B14004m3
B14004m4
B14004m5
B14004m6
B14004m7
B14004m8
B14004m9
B14004m10
B14004m11
B14004m12
B14004m13
B14004m14
B14004m15
B14004m16
B14004m17
B14004m18
B14004m19
B14004m20
B14004m21
B14004m22
B14004m23
B14004m24
B14004m25
B14004m26
B14004m27
B14004m28
B14004m29
B14004m30
B14004m31
B14004m32
B14004m33
 
B14005m1
B14005m2
B14005m3
B14005m4
B14005m5
B14005m6
B14005m7
B14005m8
B14005m9
B14005m10
B14005m11
B14005m12
B14005m13
B14005m14
B14005m15
B14005m16
B14005m17
B14005m18
B14005m19
B14005m20
B14005m21
B14005m22
B14005m23
B14005m24
B14005m25
B14005m26
B14005m27
B14005m28
B14005m29
 
B14006m1
B14006m2
B14006m3
B14006m4
B14006m5
B14006m6
B14006m7
B14006m8
B14006m9
B14006m10
B14006m11
B14006m12
B14006m13
B14006m14
B14006m15
B14006m16
B14006m17
B14006m18
B14006m19
B14006m20
B14006m21
 
C14007Am1
C14007Am2
C14007Am3
C14007Am4
C14007Am5
C14007Am6
C14007Am7
 
C14007Bm1
C14007Bm2
C14007Bm3
C14007Bm4
C14007Bm5
C14007Bm6
C14007Bm7
 
C14007Cm1
C14007Cm2
C14007Cm3
C14007Cm4
C14007Cm5
C14007Cm6
C14007Cm7
 
C14007Dm1
C14007Dm2
C14007Dm3
C14007Dm4
C14007Dm5
C14007Dm6
C14007Dm7
 
C14007Em1
C14007Em2
C14007Em3
C14007Em4
C14007Em5
C14007Em6
C14007Em7
 
C14007Fm1
C14007Fm2
C14007Fm3
C14007Fm4
C14007Fm5
C14007Fm6
C14007Fm7
;
RUN;
TITLE2;
