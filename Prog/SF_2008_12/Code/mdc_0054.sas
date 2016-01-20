TITLE2 "m20125dc0054000";
DATA work.SFm0054dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0054000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*POVERTY STATUS IN THE PAST 12 MONTHS BY AGE (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population for whom poverty status is determined */
 
B17020Hm1='Total:'
B17020Hm2='Income in the past 12 months below poverty level:'
B17020Hm3='Under 5 years'
B17020Hm4='5 years'
B17020Hm5='6 to 11 years'
B17020Hm6='12 to 17 years'
B17020Hm7='18 to 64 years'
B17020Hm8='65 to 74 years'
B17020Hm9='75 years and over'
B17020Hm10='Income in the past 12 months at or above poverty level:'
B17020Hm11='Under 5 years'
B17020Hm12='5 years'
B17020Hm13='6 to 11 years'
B17020Hm14='12 to 17 years'
B17020Hm15='18 to 64 years'
B17020Hm16='65 to 74 years'
B17020Hm17='75 years and over'
/*POVERTY STATUS IN THE PAST 12 MONTHS BY AGE (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population for whom poverty status is determined */
 
B17020Im1='Total:'
B17020Im2='Income in the past 12 months below poverty level:'
B17020Im3='Under 5 years'
B17020Im4='5 years'
B17020Im5='6 to 11 years'
B17020Im6='12 to 17 years'
B17020Im7='18 to 64 years'
B17020Im8='65 to 74 years'
B17020Im9='75 years and over'
B17020Im10='Income in the past 12 months at or above poverty level:'
B17020Im11='Under 5 years'
B17020Im12='5 years'
B17020Im13='6 to 11 years'
B17020Im14='12 to 17 years'
B17020Im15='18 to 64 years'
B17020Im16='65 to 74 years'
B17020Im17='75 years and over'
/*POVERTY STATUS OF INDIVIDUALS IN THE PAST 12 MONTHS BY LIVING ARRANGEMENT */
/*Universe:  Population for whom poverty status is determined */
 
B17021m1='Total:'
B17021m2='Income in the past 12 months below poverty level:'
B17021m3='In family households:'
B17021m4='In married couple families:'
B17021m5='All relatives'
B17021m6='Non-relatives'
B17021m7='In other families:'
B17021m8='Male householder, no wife present:'
B17021m9='All relatives'
B17021m10='Non-relatives'
B17021m11='Female householder, no husband present:'
B17021m12='All relatives'
B17021m13='Non-relatives'
B17021m14='In non-family households and other living arrangement:'
B17021m15='Householder:'
B17021m16='Living alone'
B17021m17='Not living alone'
B17021m18='Other living arrangement'
B17021m19='Income in the past 12 months at or above poverty level:'
B17021m20='In family households:'
B17021m21='In married couple families:'
B17021m22='All relatives'
B17021m23='Non-relatives'
B17021m24='In other families:'
B17021m25='Male householder, no wife present:'
B17021m26='All relatives'
B17021m27='Non-relatives'
B17021m28='Female householder, no husband present:'
B17021m29='All relatives'
B17021m30='Non-relatives'
B17021m31='In non-family households and other living arrangement:'
B17021m32='Householder:'
B17021m33='Living alone'
B17021m34='Not living alone'
B17021m35='Other living arrangement'
/*RATIO OF INCOME TO POVERTY LEVEL IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY PRESENCE OF RELATED CHILDREN UNDER 18 YEARS BY AGE OF RELATED CHILDREN */
/*Universe:  Families */
 
B17022m1='Total:'
B17022m2='Under 1.30:'
B17022m3='Married-couple family:'
B17022m4='With related children under 18 years:'
B17022m5='Under 5 years only'
B17022m6='Under 5 years and 5 to 17 years'
B17022m7='5 to 17 years only'
B17022m8='No related children under 18 years'
B17022m9='Other family:'
B17022m10='Male householder, no wife present:'
B17022m11='With related children under 18 years:'
B17022m12='Under 5 years only'
B17022m13='Under 5 years and 5 to 17 years'
B17022m14='5 to 17 years only'
B17022m15='No related children under 18 years'
B17022m16='Female householder, no husband present:'
B17022m17='With related children under 18 years:'
B17022m18='Under 5 years only'
B17022m19='Under 5 years and 5 to 17 years'
B17022m20='5 to 17 years only'
B17022m21='No related children under 18 years'
B17022m22='1.30 to 1.49:'
B17022m23='Married-couple family:'
B17022m24='With related children under 18 years:'
B17022m25='Under 5 years only'
B17022m26='Under 5 years and 5 to 17 years'
B17022m27='5 to 17 years only'
B17022m28='No related children under 18 years'
B17022m29='Other family:'
B17022m30='Male householder, no wife present:'
B17022m31='With related children under 18 years:'
B17022m32='Under 5 years only'
B17022m33='Under 5 years and 5 to 17 years'
B17022m34='5 to 17 years only'
B17022m35='No related children under 18 years'
B17022m36='Female householder, no husband present:'
B17022m37='With related children under 18 years:'
B17022m38='Under 5 years only'
B17022m39='Under 5 years and 5 to 17 years'
B17022m40='5 to 17 years only'
B17022m41='No related children under 18 years'
B17022m42='1.50 to 1.84:'
B17022m43='Married-couple family:'
B17022m44='With related children under 18 years:'
B17022m45='Under 5 years only'
B17022m46='Under 5 years and 5 to 17 years'
B17022m47='5 to 17 years only'
B17022m48='No related children under 18 years'
B17022m49='Other family:'
B17022m50='Male householder, no wife present:'
B17022m51='With related children under 18 years:'
B17022m52='Under 5 years only'
B17022m53='Under 5 years and 5 to 17 years'
B17022m54='5 to 17 years only'
B17022m55='No related children under 18 years'
B17022m56='Female householder, no husband present:'
B17022m57='With related children under 18 years:'
B17022m58='Under 5 years only'
B17022m59='Under 5 years and 5 to 17 years'
B17022m60='5 to 17 years only'
B17022m61='No related children under 18 years'
B17022m62='1.85 and above:'
B17022m63='Married-couple family:'
B17022m64='With related children under 18 years:'
B17022m65='Under 5 years only'
B17022m66='Under 5 years and 5 to 17 years'
B17022m67='5 to 17 years only'
B17022m68='No related children under 18 years'
B17022m69='Other family:'
B17022m70='Male householder, no wife present:'
B17022m71='With related children under 18 years:'
B17022m72='Under 5 years only'
B17022m73='Under 5 years and 5 to 17 years'
B17022m74='5 to 17 years only'
B17022m75='No related children under 18 years'
B17022m76='Female householder, no husband present:'
B17022m77='With related children under 18 years:'
B17022m78='Under 5 years only'
B17022m79='Under 5 years and 5 to 17 years'
B17022m80='5 to 17 years only'
B17022m81='No related children under 18 years'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY HOUSEHOLD TYPE BY NUMBER OF OWN CHILDREN UNDER 18 YEARS */
/*Universe:  Families */
 
B17023m1='Total:'
B17023m2='Income in the past 12 months below poverty level:'
B17023m3='Married-couple family:'
B17023m4='No own child'
B17023m5='1 or 2 own children'
B17023m6='3 or 4 own children'
B17023m7='5 or more own children'
B17023m8='Other families:'
B17023m9='Male householder, no wife present:'
B17023m10='No own child'
B17023m11='1 or 2 own children'
B17023m12='3 or 4 own children'
B17023m13='5 or more own children'
B17023m14='Female householder, no husband present:'
B17023m15='No own child'
B17023m16='1 or 2 own children'
B17023m17='3 or 4 own children'
B17023m18='5 or more own children'
B17023m19='Income in the past 12 months at or above poverty level:'
B17023m20='Married-couple family:'
B17023m21='No own child'
B17023m22='1 or 2 own children'
B17023m23='3 or 4 own children'
B17023m24='5 or more own children'
B17023m25='Other families:'
B17023m26='Male householder, no wife present:'
B17023m27='No own child'
B17023m28='1 or 2 own children'
B17023m29='3 or 4 own children'
B17023m30='5 or more own children'
B17023m31='Female householder, no husband present:'
B17023m32='No own child'
B17023m33='1 or 2 own children'
B17023m34='3 or 4 own children'
B17023m35='5 or more own children'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B17020Hm1
B17020Hm2
B17020Hm3
B17020Hm4
B17020Hm5
B17020Hm6
B17020Hm7
B17020Hm8
B17020Hm9
B17020Hm10
B17020Hm11
B17020Hm12
B17020Hm13
B17020Hm14
B17020Hm15
B17020Hm16
B17020Hm17
 
B17020Im1
B17020Im2
B17020Im3
B17020Im4
B17020Im5
B17020Im6
B17020Im7
B17020Im8
B17020Im9
B17020Im10
B17020Im11
B17020Im12
B17020Im13
B17020Im14
B17020Im15
B17020Im16
B17020Im17
 
B17021m1
B17021m2
B17021m3
B17021m4
B17021m5
B17021m6
B17021m7
B17021m8
B17021m9
B17021m10
B17021m11
B17021m12
B17021m13
B17021m14
B17021m15
B17021m16
B17021m17
B17021m18
B17021m19
B17021m20
B17021m21
B17021m22
B17021m23
B17021m24
B17021m25
B17021m26
B17021m27
B17021m28
B17021m29
B17021m30
B17021m31
B17021m32
B17021m33
B17021m34
B17021m35
 
B17022m1
B17022m2
B17022m3
B17022m4
B17022m5
B17022m6
B17022m7
B17022m8
B17022m9
B17022m10
B17022m11
B17022m12
B17022m13
B17022m14
B17022m15
B17022m16
B17022m17
B17022m18
B17022m19
B17022m20
B17022m21
B17022m22
B17022m23
B17022m24
B17022m25
B17022m26
B17022m27
B17022m28
B17022m29
B17022m30
B17022m31
B17022m32
B17022m33
B17022m34
B17022m35
B17022m36
B17022m37
B17022m38
B17022m39
B17022m40
B17022m41
B17022m42
B17022m43
B17022m44
B17022m45
B17022m46
B17022m47
B17022m48
B17022m49
B17022m50
B17022m51
B17022m52
B17022m53
B17022m54
B17022m55
B17022m56
B17022m57
B17022m58
B17022m59
B17022m60
B17022m61
B17022m62
B17022m63
B17022m64
B17022m65
B17022m66
B17022m67
B17022m68
B17022m69
B17022m70
B17022m71
B17022m72
B17022m73
B17022m74
B17022m75
B17022m76
B17022m77
B17022m78
B17022m79
B17022m80
B17022m81
 
B17023m1
B17023m2
B17023m3
B17023m4
B17023m5
B17023m6
B17023m7
B17023m8
B17023m9
B17023m10
B17023m11
B17023m12
B17023m13
B17023m14
B17023m15
B17023m16
B17023m17
B17023m18
B17023m19
B17023m20
B17023m21
B17023m22
B17023m23
B17023m24
B17023m25
B17023m26
B17023m27
B17023m28
B17023m29
B17023m30
B17023m31
B17023m32
B17023m33
B17023m34
B17023m35
;
RUN;
TITLE2;
