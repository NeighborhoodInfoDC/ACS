TITLE2 "m20125dc0053000";
DATA work.SFm0053dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0053000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*POVERTY STATUS IN THE PAST 12 MONTHS BY HOUSEHOLD TYPE BY AGE OF HOUSEHOLDER */
/*Universe:  Households */
 
B17017m1='Total:'
B17017m2='Income in the past 12 months below poverty level:'
B17017m3='Family households:'
B17017m4='Married-couple family:'
B17017m5='Householder under 25 years'
B17017m6='Householder 25 to 44 years'
B17017m7='Householder 45 to 64 years'
B17017m8='Householder 65 years and over'
B17017m9='Other family:'
B17017m10='Male householder, no wife present:'
B17017m11='Householder under 25 years'
B17017m12='Householder 25 to 44 years'
B17017m13='Householder 45 to 64 years'
B17017m14='Householder 65 years and over'
B17017m15='Female householder, no husband present:'
B17017m16='Householder under 25 years'
B17017m17='Householder 25 to 44 years'
B17017m18='Householder 45 to 64 years'
B17017m19='Householder 65 years and over'
B17017m20='Nonfamily households:'
B17017m21='Male householder:'
B17017m22='Householder under 25 years'
B17017m23='Householder 25 to 44 years'
B17017m24='Householder 45 to 64 years'
B17017m25='Householder 65 years and over'
B17017m26='Female householder:'
B17017m27='Householder under 25 years'
B17017m28='Householder 25 to 44 years'
B17017m29='Householder 45 to 64 years'
B17017m30='Householder 65 years and over'
B17017m31='Income in the past 12 months at or above poverty level:'
B17017m32='Family households:'
B17017m33='Married-couple family:'
B17017m34='Householder under 25 years'
B17017m35='Householder 25 to 44 years'
B17017m36='Householder 45 to 64 years'
B17017m37='Householder 65 years and over'
B17017m38='Other family:'
B17017m39='Male householder, no wife present:'
B17017m40='Householder under 25 years'
B17017m41='Householder 25 to 44 years'
B17017m42='Householder 45 to 64 years'
B17017m43='Householder 65 years and over'
B17017m44='Female householder, no husband present:'
B17017m45='Householder under 25 years'
B17017m46='Householder 25 to 44 years'
B17017m47='Householder 45 to 64 years'
B17017m48='Householder 65 years and over'
B17017m49='Nonfamily households:'
B17017m50='Male householder:'
B17017m51='Householder under 25 years'
B17017m52='Householder 25 to 44 years'
B17017m53='Householder 45 to 64 years'
B17017m54='Householder 65 years and over'
B17017m55='Female householder:'
B17017m56='Householder under 25 years'
B17017m57='Householder 25 to 44 years'
B17017m58='Householder 45 to 64 years'
B17017m59='Householder 65 years and over'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY HOUSEHOLD TYPE BY EDUCATIONAL ATTAINMENT OF HOUSEHOLDER */
/*Universe:  Families */
 
B17018m1='Total:'
B17018m2='Income in the past 12 months below poverty level:'
B17018m3='Married-couple family:'
B17018m4='Less than high school graduate'
B17018m5='High school graduate (includes equivalency)'
B17018m6='Some college, associate''s degree'
B17018m7='Bachelor''s degree or higher'
B17018m8='Other families:'
B17018m9='Male householder, no wife present:'
B17018m10='Less than high school graduate'
B17018m11='High school graduate (includes equivalency)'
B17018m12='Some college, associate''s degree'
B17018m13='Bachelor''s degree or higher'
B17018m14='Female householder, no husband present:'
B17018m15='Less than high school graduate'
B17018m16='High school graduate (includes equivalency)'
B17018m17='Some college, associate''s degree'
B17018m18='Bachelor''s degree or higher'
B17018m19='Income in the past 12 months at or above poverty level:'
B17018m20='Married-couple family:'
B17018m21='Less than high school graduate'
B17018m22='High school graduate (includes equivalency)'
B17018m23='Some college, associate''s degree'
B17018m24='Bachelor''s degree or higher'
B17018m25='Other families:'
B17018m26='Male householder, no wife present:'
B17018m27='Less than high school graduate'
B17018m28='High school graduate (includes equivalency)'
B17018m29='Some college, associate''s degree'
B17018m30='Bachelor''s degree or higher'
B17018m31='Female householder, no husband present:'
B17018m32='Less than high school graduate'
B17018m33='High school graduate (includes equivalency)'
B17018m34='Some college, associate''s degree'
B17018m35='Bachelor''s degree or higher'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY HOUSEHOLD TYPE BY TENURE */
/*Universe:  Families */
 
B17019m1='Total:'
B17019m2='Income in the past 12 months below poverty level:'
B17019m3='Married-couple family:'
B17019m4='Owner occupied'
B17019m5='Renter occupied'
B17019m6='Other families:'
B17019m7='Male householder, no wife present:'
B17019m8='Owner occupied'
B17019m9='Renter occupied'
B17019m10='Female householder, no husband present:'
B17019m11='Owner occupied'
B17019m12='Renter occupied'
B17019m13='Income in the past 12 months at or above poverty level:'
B17019m14='Married-couple family:'
B17019m15='Owner occupied'
B17019m16='Renter occupied'
B17019m17='Other families:'
B17019m18='Male householder, no wife present:'
B17019m19='Owner occupied'
B17019m20='Renter occupied'
B17019m21='Female householder, no husband present:'
B17019m22='Owner occupied'
B17019m23='Renter occupied'
/*POVERTY STATUS IN THE PAST 12 MONTHS BY AGE (WHITE ALONE) */
/*Universe:  White alone population for whom poverty status is determined */
 
B17020Am1='Total:'
B17020Am2='Income in the past 12 months below poverty level:'
B17020Am3='Under 5 years'
B17020Am4='5 years'
B17020Am5='6 to 11 years'
B17020Am6='12 to 17 years'
B17020Am7='18 to 64 years'
B17020Am8='65 to 74 years'
B17020Am9='75 years and over'
B17020Am10='Income in the past 12 months at or above poverty level:'
B17020Am11='Under 5 years'
B17020Am12='5 years'
B17020Am13='6 to 11 years'
B17020Am14='12 to 17 years'
B17020Am15='18 to 64 years'
B17020Am16='65 to 74 years'
B17020Am17='75 years and over'
/*POVERTY STATUS IN THE PAST 12 MONTHS BY AGE (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone population for whom poverty status is determined */
 
B17020Bm1='Total:'
B17020Bm2='Income in the past 12 months below poverty level:'
B17020Bm3='Under 5 years'
B17020Bm4='5 years'
B17020Bm5='6 to 11 years'
B17020Bm6='12 to 17 years'
B17020Bm7='18 to 64 years'
B17020Bm8='65 to 74 years'
B17020Bm9='75 years and over'
B17020Bm10='Income in the past 12 months at or above poverty level:'
B17020Bm11='Under 5 years'
B17020Bm12='5 years'
B17020Bm13='6 to 11 years'
B17020Bm14='12 to 17 years'
B17020Bm15='18 to 64 years'
B17020Bm16='65 to 74 years'
B17020Bm17='75 years and over'
/*POVERTY STATUS IN THE PAST 12 MONTHS BY AGE (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone population for whom poverty status is determined */
 
B17020Cm1='Total:'
B17020Cm2='Income in the past 12 months below poverty level:'
B17020Cm3='Under 5 years'
B17020Cm4='5 years'
B17020Cm5='6 to 11 years'
B17020Cm6='12 to 17 years'
B17020Cm7='18 to 64 years'
B17020Cm8='65 to 74 years'
B17020Cm9='75 years and over'
B17020Cm10='Income in the past 12 months at or above poverty level:'
B17020Cm11='Under 5 years'
B17020Cm12='5 years'
B17020Cm13='6 to 11 years'
B17020Cm14='12 to 17 years'
B17020Cm15='18 to 64 years'
B17020Cm16='65 to 74 years'
B17020Cm17='75 years and over'
/*POVERTY STATUS IN THE PAST 12 MONTHS BY AGE (ASIAN ALONE) */
/*Universe:  Asian alone population for whom poverty status is determined */
 
B17020Dm1='Total:'
B17020Dm2='Income in the past 12 months below poverty level:'
B17020Dm3='Under 5 years'
B17020Dm4='5 years'
B17020Dm5='6 to 11 years'
B17020Dm6='12 to 17 years'
B17020Dm7='18 to 64 years'
B17020Dm8='65 to 74 years'
B17020Dm9='75 years and over'
B17020Dm10='Income in the past 12 months at or above poverty level:'
B17020Dm11='Under 5 years'
B17020Dm12='5 years'
B17020Dm13='6 to 11 years'
B17020Dm14='12 to 17 years'
B17020Dm15='18 to 64 years'
B17020Dm16='65 to 74 years'
B17020Dm17='75 years and over'
/*POVERTY STATUS IN THE PAST 12 MONTHS BY AGE (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population for whom poverty status is determined */
 
B17020Em1='Total:'
B17020Em2='Income in the past 12 months below poverty level:'
B17020Em3='Under 5 years'
B17020Em4='5 years'
B17020Em5='6 to 11 years'
B17020Em6='12 to 17 years'
B17020Em7='18 to 64 years'
B17020Em8='65 to 74 years'
B17020Em9='75 years and over'
B17020Em10='Income in the past 12 months at or above poverty level:'
B17020Em11='Under 5 years'
B17020Em12='5 years'
B17020Em13='6 to 11 years'
B17020Em14='12 to 17 years'
B17020Em15='18 to 64 years'
B17020Em16='65 to 74 years'
B17020Em17='75 years and over'
/*POVERTY STATUS IN THE PAST 12 MONTHS BY AGE (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone population for whom poverty status is determined */
 
B17020Fm1='Total:'
B17020Fm2='Income in the past 12 months below poverty level:'
B17020Fm3='Under 5 years'
B17020Fm4='5 years'
B17020Fm5='6 to 11 years'
B17020Fm6='12 to 17 years'
B17020Fm7='18 to 64 years'
B17020Fm8='65 to 74 years'
B17020Fm9='75 years and over'
B17020Fm10='Income in the past 12 months at or above poverty level:'
B17020Fm11='Under 5 years'
B17020Fm12='5 years'
B17020Fm13='6 to 11 years'
B17020Fm14='12 to 17 years'
B17020Fm15='18 to 64 years'
B17020Fm16='65 to 74 years'
B17020Fm17='75 years and over'
/*POVERTY STATUS IN THE PAST 12 MONTHS BY AGE (TWO OR MORE RACES) */
/*Universe:  Two or more races population for whom poverty status is determined */
 
B17020Gm1='Total:'
B17020Gm2='Income in the past 12 months below poverty level:'
B17020Gm3='Under 5 years'
B17020Gm4='5 years'
B17020Gm5='6 to 11 years'
B17020Gm6='12 to 17 years'
B17020Gm7='18 to 64 years'
B17020Gm8='65 to 74 years'
B17020Gm9='75 years and over'
B17020Gm10='Income in the past 12 months at or above poverty level:'
B17020Gm11='Under 5 years'
B17020Gm12='5 years'
B17020Gm13='6 to 11 years'
B17020Gm14='12 to 17 years'
B17020Gm15='18 to 64 years'
B17020Gm16='65 to 74 years'
B17020Gm17='75 years and over'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B17017m1
B17017m2
B17017m3
B17017m4
B17017m5
B17017m6
B17017m7
B17017m8
B17017m9
B17017m10
B17017m11
B17017m12
B17017m13
B17017m14
B17017m15
B17017m16
B17017m17
B17017m18
B17017m19
B17017m20
B17017m21
B17017m22
B17017m23
B17017m24
B17017m25
B17017m26
B17017m27
B17017m28
B17017m29
B17017m30
B17017m31
B17017m32
B17017m33
B17017m34
B17017m35
B17017m36
B17017m37
B17017m38
B17017m39
B17017m40
B17017m41
B17017m42
B17017m43
B17017m44
B17017m45
B17017m46
B17017m47
B17017m48
B17017m49
B17017m50
B17017m51
B17017m52
B17017m53
B17017m54
B17017m55
B17017m56
B17017m57
B17017m58
B17017m59
 
B17018m1
B17018m2
B17018m3
B17018m4
B17018m5
B17018m6
B17018m7
B17018m8
B17018m9
B17018m10
B17018m11
B17018m12
B17018m13
B17018m14
B17018m15
B17018m16
B17018m17
B17018m18
B17018m19
B17018m20
B17018m21
B17018m22
B17018m23
B17018m24
B17018m25
B17018m26
B17018m27
B17018m28
B17018m29
B17018m30
B17018m31
B17018m32
B17018m33
B17018m34
B17018m35
 
B17019m1
B17019m2
B17019m3
B17019m4
B17019m5
B17019m6
B17019m7
B17019m8
B17019m9
B17019m10
B17019m11
B17019m12
B17019m13
B17019m14
B17019m15
B17019m16
B17019m17
B17019m18
B17019m19
B17019m20
B17019m21
B17019m22
B17019m23
 
B17020Am1
B17020Am2
B17020Am3
B17020Am4
B17020Am5
B17020Am6
B17020Am7
B17020Am8
B17020Am9
B17020Am10
B17020Am11
B17020Am12
B17020Am13
B17020Am14
B17020Am15
B17020Am16
B17020Am17
 
B17020Bm1
B17020Bm2
B17020Bm3
B17020Bm4
B17020Bm5
B17020Bm6
B17020Bm7
B17020Bm8
B17020Bm9
B17020Bm10
B17020Bm11
B17020Bm12
B17020Bm13
B17020Bm14
B17020Bm15
B17020Bm16
B17020Bm17
 
B17020Cm1
B17020Cm2
B17020Cm3
B17020Cm4
B17020Cm5
B17020Cm6
B17020Cm7
B17020Cm8
B17020Cm9
B17020Cm10
B17020Cm11
B17020Cm12
B17020Cm13
B17020Cm14
B17020Cm15
B17020Cm16
B17020Cm17
 
B17020Dm1
B17020Dm2
B17020Dm3
B17020Dm4
B17020Dm5
B17020Dm6
B17020Dm7
B17020Dm8
B17020Dm9
B17020Dm10
B17020Dm11
B17020Dm12
B17020Dm13
B17020Dm14
B17020Dm15
B17020Dm16
B17020Dm17
 
B17020Em1
B17020Em2
B17020Em3
B17020Em4
B17020Em5
B17020Em6
B17020Em7
B17020Em8
B17020Em9
B17020Em10
B17020Em11
B17020Em12
B17020Em13
B17020Em14
B17020Em15
B17020Em16
B17020Em17
 
B17020Fm1
B17020Fm2
B17020Fm3
B17020Fm4
B17020Fm5
B17020Fm6
B17020Fm7
B17020Fm8
B17020Fm9
B17020Fm10
B17020Fm11
B17020Fm12
B17020Fm13
B17020Fm14
B17020Fm15
B17020Fm16
B17020Fm17
 
B17020Gm1
B17020Gm2
B17020Gm3
B17020Gm4
B17020Gm5
B17020Gm6
B17020Gm7
B17020Gm8
B17020Gm9
B17020Gm10
B17020Gm11
B17020Gm12
B17020Gm13
B17020Gm14
B17020Gm15
B17020Gm16
B17020Gm17
;
RUN;
TITLE2;
