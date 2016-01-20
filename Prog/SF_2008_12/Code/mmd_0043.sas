TITLE2 "m20125md0043000";
DATA work.SFm0043md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0043000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SEX BY AGE BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 18 YEARS AND OVER */
/*Universe:  Population 18 years and over */
 
B15001m1='Total:'
B15001m2='Male:'
B15001m3='18 to 24 years:'
B15001m4='Less than 9th grade'
B15001m5='9th to 12th grade, no diploma'
B15001m6='High school graduate, GED, or alternative'
B15001m7='Some college, no degree'
B15001m8='Associate''s degree'
B15001m9='Bachelor''s degree'
B15001m10='Graduate or professional degree'
B15001m11='25 to 34 years:'
B15001m12='Less than 9th grade'
B15001m13='9th to 12th grade, no diploma'
B15001m14='High school graduate, GED, or alternative'
B15001m15='Some college, no degree'
B15001m16='Associate''s degree'
B15001m17='Bachelor''s degree'
B15001m18='Graduate or professional degree'
B15001m19='35 to 44 years:'
B15001m20='Less than 9th grade'
B15001m21='9th to 12th grade, no diploma'
B15001m22='High school graduate, GED, or alternative'
B15001m23='Some college, no degree'
B15001m24='Associate''s degree'
B15001m25='Bachelor''s degree'
B15001m26='Graduate or professional degree'
B15001m27='45 to 64 years:'
B15001m28='Less than 9th grade'
B15001m29='9th to 12th grade, no diploma'
B15001m30='High school graduate, GED, or alternative'
B15001m31='Some college, no degree'
B15001m32='Associate''s degree'
B15001m33='Bachelor''s degree'
B15001m34='Graduate or professional degree'
B15001m35='65 years and over:'
B15001m36='Less than 9th grade'
B15001m37='9th to 12th grade, no diploma'
B15001m38='High school graduate, GED, or alternative'
B15001m39='Some college, no degree'
B15001m40='Associate''s degree'
B15001m41='Bachelor''s degree'
B15001m42='Graduate or professional degree'
B15001m43='Female:'
B15001m44='18 to 24 years:'
B15001m45='Less than 9th grade'
B15001m46='9th to 12th grade, no diploma'
B15001m47='High school graduate, GED, or alternative'
B15001m48='Some college, no degree'
B15001m49='Associate''s degree'
B15001m50='Bachelor''s degree'
B15001m51='Graduate or professional degree'
B15001m52='25 to 34 years:'
B15001m53='Less than 9th grade'
B15001m54='9th to 12th grade, no diploma'
B15001m55='High school graduate, GED, or alternative'
B15001m56='Some college, no degree'
B15001m57='Associate''s degree'
B15001m58='Bachelor''s degree'
B15001m59='Graduate or professional degree'
B15001m60='35 to 44 years:'
B15001m61='Less than 9th grade'
B15001m62='9th to 12th grade, no diploma'
B15001m63='High school graduate, GED, or alternative'
B15001m64='Some college, no degree'
B15001m65='Associate''s degree'
B15001m66='Bachelor''s degree'
B15001m67='Graduate or professional degree'
B15001m68='45 to 64 years:'
B15001m69='Less than 9th grade'
B15001m70='9th to 12th grade, no diploma'
B15001m71='High school graduate, GED, or alternative'
B15001m72='Some college, no degree'
B15001m73='Associate''s degree'
B15001m74='Bachelor''s degree'
B15001m75='Graduate or professional degree'
B15001m76='65 years and over:'
B15001m77='Less than 9th grade'
B15001m78='9th to 12th grade, no diploma'
B15001m79='High school graduate, GED, or alternative'
B15001m80='Some college, no degree'
B15001m81='Associate''s degree'
B15001m82='Bachelor''s degree'
B15001m83='Graduate or professional degree'
/*SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER */
/*Universe:  Population 25 years and over */
 
B15002m1='Total:'
B15002m2='Male:'
B15002m3='No schooling completed'
B15002m4='Nursery to 4th grade'
B15002m5='5th and 6th grade'
B15002m6='7th and 8th grade'
B15002m7='9th grade'
B15002m8='10th grade'
B15002m9='11th grade'
B15002m10='12th grade, no diploma'
B15002m11='High school graduate, GED, or alternative'
B15002m12='Some college, less than 1 year'
B15002m13='Some college, 1 or more years, no degree'
B15002m14='Associate''s degree'
B15002m15='Bachelor''s degree'
B15002m16='Master''s degree'
B15002m17='Professional school degree'
B15002m18='Doctorate degree'
B15002m19='Female:'
B15002m20='No schooling completed'
B15002m21='Nursery to 4th grade'
B15002m22='5th and 6th grade'
B15002m23='7th and 8th grade'
B15002m24='9th grade'
B15002m25='10th grade'
B15002m26='11th grade'
B15002m27='12th grade, no diploma'
B15002m28='High school graduate, GED, or alternative'
B15002m29='Some college, less than 1 year'
B15002m30='Some college, 1 or more years, no degree'
B15002m31='Associate''s degree'
B15002m32='Bachelor''s degree'
B15002m33='Master''s degree'
B15002m34='Professional school degree'
B15002m35='Doctorate degree'
/*EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER */
/*Universe:  Population 25 years and over */
 
B15003m1='Total:'
B15003m2='No schooling completed'
B15003m3='Nursery school'
B15003m4='Kindergarten'
B15003m5='1st grade'
B15003m6='2nd grade'
B15003m7='3rd grade'
B15003m8='4th grade'
B15003m9='5th grade'
B15003m10='6th grade'
B15003m11='7th grade'
B15003m12='8th grade'
B15003m13='9th grade'
B15003m14='10th grade'
B15003m15='11th grade'
B15003m16='12th grade, no diploma'
B15003m17='Regular high school diploma'
B15003m18='GED or alternative credential'
B15003m19='Some college, less than 1 year'
B15003m20='Some college, 1 or more years, no degree'
B15003m21='Associate''s degree'
B15003m22='Bachelor''s degree'
B15003m23='Master''s degree'
B15003m24='Professional school degree'
B15003m25='Doctorate degree'
/*SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER (WHITE ALONE) */
/*Universe:  White alone population 25 years and over */
 
C15002Am1='Total:'
C15002Am2='Male:'
C15002Am3='Less than high school diploma'
C15002Am4='High school graduate, GED, or alternative'
C15002Am5='Some college or associate''s degree'
C15002Am6='Bachelor''s degree or higher'
C15002Am7='Female:'
C15002Am8='Less than high school diploma'
C15002Am9='High school graduate, GED, or alternative'
C15002Am10='Some college or associate''s degree'
C15002Am11='Bachelor''s degree or higher'
/*SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone population 25 years and over */
 
C15002Bm1='Total:'
C15002Bm2='Male:'
C15002Bm3='Less than high school diploma'
C15002Bm4='High school graduate, GED, or alternative'
C15002Bm5='Some college or associate''s degree'
C15002Bm6='Bachelor''s degree or higher'
C15002Bm7='Female:'
C15002Bm8='Less than high school diploma'
C15002Bm9='High school graduate, GED, or alternative'
C15002Bm10='Some college or associate''s degree'
C15002Bm11='Bachelor''s degree or higher'
/*SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone population 25 years and over */
 
C15002Cm1='Total:'
C15002Cm2='Male:'
C15002Cm3='Less than high school diploma'
C15002Cm4='High school graduate, GED, or alternative'
C15002Cm5='Some college or associate''s degree'
C15002Cm6='Bachelor''s degree or higher'
C15002Cm7='Female:'
C15002Cm8='Less than high school diploma'
C15002Cm9='High school graduate, GED, or alternative'
C15002Cm10='Some college or associate''s degree'
C15002Cm11='Bachelor''s degree or higher'
/*SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER (ASIAN ALONE) */
/*Universe:  Asian alone population 25 years and over */
 
C15002Dm1='Total:'
C15002Dm2='Male:'
C15002Dm3='Less than high school diploma'
C15002Dm4='High school graduate, GED, or alternative'
C15002Dm5='Some college or associate''s degree'
C15002Dm6='Bachelor''s degree or higher'
C15002Dm7='Female:'
C15002Dm8='Less than high school diploma'
C15002Dm9='High school graduate, GED, or alternative'
C15002Dm10='Some college or associate''s degree'
C15002Dm11='Bachelor''s degree or higher'
/*SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 25 years and over */
 
C15002Em1='Total:'
C15002Em2='Male:'
C15002Em3='Less than high school diploma'
C15002Em4='High school graduate, GED, or alternative'
C15002Em5='Some college or associate''s degree'
C15002Em6='Bachelor''s degree or higher'
C15002Em7='Female:'
C15002Em8='Less than high school diploma'
C15002Em9='High school graduate, GED, or alternative'
C15002Em10='Some college or associate''s degree'
C15002Em11='Bachelor''s degree or higher'
/*SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone population 25 years and over */
 
C15002Fm1='Total:'
C15002Fm2='Male:'
C15002Fm3='Less than high school diploma'
C15002Fm4='High school graduate, GED, or alternative'
C15002Fm5='Some college or associate''s degree'
C15002Fm6='Bachelor''s degree or higher'
C15002Fm7='Female:'
C15002Fm8='Less than high school diploma'
C15002Fm9='High school graduate, GED, or alternative'
C15002Fm10='Some college or associate''s degree'
C15002Fm11='Bachelor''s degree or higher'
/*SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER (TWO OR MORE RACES) */
/*Universe:  Two or more races population 25 years and over */
 
C15002Gm1='Total:'
C15002Gm2='Male:'
C15002Gm3='Less than high school diploma'
C15002Gm4='High school graduate, GED, or alternative'
C15002Gm5='Some college or associate''s degree'
C15002Gm6='Bachelor''s degree or higher'
C15002Gm7='Female:'
C15002Gm8='Less than high school diploma'
C15002Gm9='High school graduate, GED, or alternative'
C15002Gm10='Some college or associate''s degree'
C15002Gm11='Bachelor''s degree or higher'
/*SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population 25 years and over */
 
C15002Hm1='Total:'
C15002Hm2='Male:'
C15002Hm3='Less than high school diploma'
C15002Hm4='High school graduate, GED, or alternative'
C15002Hm5='Some college or associate''s degree'
C15002Hm6='Bachelor''s degree or higher'
C15002Hm7='Female:'
C15002Hm8='Less than high school diploma'
C15002Hm9='High school graduate, GED, or alternative'
C15002Hm10='Some college or associate''s degree'
C15002Hm11='Bachelor''s degree or higher'
/*SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population 25 years and over */
 
C15002Im1='Total:'
C15002Im2='Male:'
C15002Im3='Less than high school diploma'
C15002Im4='High school graduate, GED, or alternative'
C15002Im5='Some college or associate''s degree'
C15002Im6='Bachelor''s degree or higher'
C15002Im7='Female:'
C15002Im8='Less than high school diploma'
C15002Im9='High school graduate, GED, or alternative'
C15002Im10='Some college or associate''s degree'
C15002Im11='Bachelor''s degree or higher'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B15001m1
B15001m2
B15001m3
B15001m4
B15001m5
B15001m6
B15001m7
B15001m8
B15001m9
B15001m10
B15001m11
B15001m12
B15001m13
B15001m14
B15001m15
B15001m16
B15001m17
B15001m18
B15001m19
B15001m20
B15001m21
B15001m22
B15001m23
B15001m24
B15001m25
B15001m26
B15001m27
B15001m28
B15001m29
B15001m30
B15001m31
B15001m32
B15001m33
B15001m34
B15001m35
B15001m36
B15001m37
B15001m38
B15001m39
B15001m40
B15001m41
B15001m42
B15001m43
B15001m44
B15001m45
B15001m46
B15001m47
B15001m48
B15001m49
B15001m50
B15001m51
B15001m52
B15001m53
B15001m54
B15001m55
B15001m56
B15001m57
B15001m58
B15001m59
B15001m60
B15001m61
B15001m62
B15001m63
B15001m64
B15001m65
B15001m66
B15001m67
B15001m68
B15001m69
B15001m70
B15001m71
B15001m72
B15001m73
B15001m74
B15001m75
B15001m76
B15001m77
B15001m78
B15001m79
B15001m80
B15001m81
B15001m82
B15001m83
 
B15002m1
B15002m2
B15002m3
B15002m4
B15002m5
B15002m6
B15002m7
B15002m8
B15002m9
B15002m10
B15002m11
B15002m12
B15002m13
B15002m14
B15002m15
B15002m16
B15002m17
B15002m18
B15002m19
B15002m20
B15002m21
B15002m22
B15002m23
B15002m24
B15002m25
B15002m26
B15002m27
B15002m28
B15002m29
B15002m30
B15002m31
B15002m32
B15002m33
B15002m34
B15002m35
 
B15003m1
B15003m2
B15003m3
B15003m4
B15003m5
B15003m6
B15003m7
B15003m8
B15003m9
B15003m10
B15003m11
B15003m12
B15003m13
B15003m14
B15003m15
B15003m16
B15003m17
B15003m18
B15003m19
B15003m20
B15003m21
B15003m22
B15003m23
B15003m24
B15003m25
 
C15002Am1
C15002Am2
C15002Am3
C15002Am4
C15002Am5
C15002Am6
C15002Am7
C15002Am8
C15002Am9
C15002Am10
C15002Am11
 
C15002Bm1
C15002Bm2
C15002Bm3
C15002Bm4
C15002Bm5
C15002Bm6
C15002Bm7
C15002Bm8
C15002Bm9
C15002Bm10
C15002Bm11
 
C15002Cm1
C15002Cm2
C15002Cm3
C15002Cm4
C15002Cm5
C15002Cm6
C15002Cm7
C15002Cm8
C15002Cm9
C15002Cm10
C15002Cm11
 
C15002Dm1
C15002Dm2
C15002Dm3
C15002Dm4
C15002Dm5
C15002Dm6
C15002Dm7
C15002Dm8
C15002Dm9
C15002Dm10
C15002Dm11
 
C15002Em1
C15002Em2
C15002Em3
C15002Em4
C15002Em5
C15002Em6
C15002Em7
C15002Em8
C15002Em9
C15002Em10
C15002Em11
 
C15002Fm1
C15002Fm2
C15002Fm3
C15002Fm4
C15002Fm5
C15002Fm6
C15002Fm7
C15002Fm8
C15002Fm9
C15002Fm10
C15002Fm11
 
C15002Gm1
C15002Gm2
C15002Gm3
C15002Gm4
C15002Gm5
C15002Gm6
C15002Gm7
C15002Gm8
C15002Gm9
C15002Gm10
C15002Gm11
 
C15002Hm1
C15002Hm2
C15002Hm3
C15002Hm4
C15002Hm5
C15002Hm6
C15002Hm7
C15002Hm8
C15002Hm9
C15002Hm10
C15002Hm11
 
C15002Im1
C15002Im2
C15002Im3
C15002Im4
C15002Im5
C15002Im6
C15002Im7
C15002Im8
C15002Im9
C15002Im10
C15002Im11
;
RUN;
TITLE2;
