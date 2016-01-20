TITLE2 "m20115dc0050000";
DATA work.SFm0050dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0050000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*POVERTY STATUS IN THE PAST 12 MONTHS OF UNRELATED INDIVIDUALS 15 YEARS AND OVER BY SEX BY AGE */
/*Universe:  Unrelated individuals 15 years and over for whom poverty status is determined */
 
B17007m1='Total:'
B17007m2='Income in the past 12 months below poverty level:'
B17007m3='Male:'
B17007m4='15 years'
B17007m5='16 and 17 years'
B17007m6='18 to 24 years'
B17007m7='25 to 34 years'
B17007m8='35 to 44 years'
B17007m9='45 to 54 years'
B17007m10='55 to 64 years'
B17007m11='65 to 74 years'
B17007m12='75 years and over'
B17007m13='Female:'
B17007m14='15 years'
B17007m15='16 and 17 years'
B17007m16='18 to 24 years'
B17007m17='25 to 34 years'
B17007m18='35 to 44 years'
B17007m19='45 to 54 years'
B17007m20='55 to 64 years'
B17007m21='65 to 74 years'
B17007m22='75 years and over'
B17007m23='Income in the past 12 months at or above poverty level:'
B17007m24='Male:'
B17007m25='15 years'
B17007m26='16 and 17 years'
B17007m27='18 to 24 years'
B17007m28='25 to 34 years'
B17007m29='35 to 44 years'
B17007m30='45 to 54 years'
B17007m31='55 to 64 years'
B17007m32='65 to 74 years'
B17007m33='75 years and over'
B17007m34='Female:'
B17007m35='15 years'
B17007m36='16 and 17 years'
B17007m37='18 to 24 years'
B17007m38='25 to 34 years'
B17007m39='35 to 44 years'
B17007m40='45 to 54 years'
B17007m41='55 to 64 years'
B17007m42='65 to 74 years'
B17007m43='75 years and over'
 
/*AGGREGATE INCOME DEFICIT (DOLLARS) IN THE PAST 12 MONTHS OF UNRELATED INDIVIDUALS BY SEX */
/*Universe:  Unrelated individuals 15 years and over for whom poverty status is determined */
 
B17008m1='Aggregate income deficit in the past 12 months of unrelated individuals (dollars):'
B17008m2='Male (dollars)'
B17008m3='Female (dollars)'
 
/*POVERTY STATUS BY WORK EXPERIENCE OF UNRELATED INDIVIDUALS BY HOUSEHOLDER STATUS */
/*Universe:  Unrelated individuals 15 years and over for whom poverty status is determined */
 
B17009m1='Total:'
B17009m2='Income in the past 12 months below the poverty level:'
B17009m3='Worked full-time, year-round:'
B17009m4='Nonfamily householder'
B17009m5='Other'
B17009m6='Worked less than full-time, year-round:'
B17009m7='Nonfamily householder'
B17009m8='Other'
B17009m9='Did not work:'
B17009m10='Nonfamily householder'
B17009m11='Other'
B17009m12='Income in the past 12 months at or above the poverty level:'
B17009m13='Worked full-time, year-round:'
B17009m14='Nonfamily householder'
B17009m15='Other'
B17009m16='Worked less than full-time, year-round:'
B17009m17='Nonfamily householder'
B17009m18='Other'
B17009m19='Did not work:'
B17009m20='Nonfamily householder'
B17009m21='Other'
 
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY PRESENCE OF RELATED CHILDREN UNDER 18 YEARS BY AGE OF RELATED CHILDREN */
/*Universe:  Families */
 
B17010m1='Total:'
B17010m2='Income in the past 12 months below poverty level:'
B17010m3='Married-couple family:'
B17010m4='With related children under 18 years:'
B17010m5='Under 5 years only'
B17010m6='Under 5 years and 5 to 17 years'
B17010m7='5 to 17 years only'
B17010m8='No related children under 18 years'
B17010m9='Other family:'
B17010m10='Male householder, no wife present:'
B17010m11='With related children under 18 years:'
B17010m12='Under 5 years only'
B17010m13='Under 5 years and 5 to 17 years'
B17010m14='5 to 17 years only'
B17010m15='No related children under 18 years'
B17010m16='Female householder, no husband present:'
B17010m17='With related children under 18 years:'
B17010m18='Under 5 years only'
B17010m19='Under 5 years and 5 to 17 years'
B17010m20='5 to 17 years only'
B17010m21='No related children under 18 years'
B17010m22='Income in the past 12 months at or above poverty level:'
B17010m23='Married-couple family:'
B17010m24='With related children under 18 years:'
B17010m25='Under 5 years only'
B17010m26='Under 5 years and 5 to 17 years'
B17010m27='5 to 17 years only'
B17010m28='No related children under 18 years'
B17010m29='Other family:'
B17010m30='Male householder, no wife present:'
B17010m31='With related children under 18 years:'
B17010m32='Under 5 years only'
B17010m33='Under 5 years and 5 to 17 years'
B17010m34='5 to 17 years only'
B17010m35='No related children under 18 years'
B17010m36='Female householder, no husband present:'
B17010m37='With related children under 18 years:'
B17010m38='Under 5 years only'
B17010m39='Under 5 years and 5 to 17 years'
B17010m40='5 to 17 years only'
B17010m41='No related children under 18 years'
 
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY PRESENCE OF RELATED CHILDREN UNDER 18 YEARS BY AGE OF RELATED CHILDREN (WHITE ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is White alone */
 
B17010Am1='Total:'
B17010Am2='Income in the past 12 months below poverty level:'
B17010Am3='Married-couple family:'
B17010Am4='With related children under 18 years:'
B17010Am5='Under 5 years only'
B17010Am6='Under 5 years and 5 to 17 years'
B17010Am7='5 to 17 years only'
B17010Am8='No related children under 18 years'
B17010Am9='Other family:'
B17010Am10='Male householder, no wife present:'
B17010Am11='With related children under 18 years:'
B17010Am12='Under 5 years only'
B17010Am13='Under 5 years and 5 to 17 years'
B17010Am14='5 to 17 years only'
B17010Am15='No related children under 18 years'
B17010Am16='Female householder, no husband present:'
B17010Am17='With related children under 18 years:'
B17010Am18='Under 5 years only'
B17010Am19='Under 5 years and 5 to 17 years'
B17010Am20='5 to 17 years only'
B17010Am21='No related children under 18 years'
B17010Am22='Income in the past 12 months at or above poverty level:'
B17010Am23='Married-couple family:'
B17010Am24='With related children under 18 years:'
B17010Am25='Under 5 years only'
B17010Am26='Under 5 years and 5 to 17 years'
B17010Am27='5 to 17 years only'
B17010Am28='No related children under 18 years'
B17010Am29='Other family:'
B17010Am30='Male householder, no wife present:'
B17010Am31='With related children under 18 years:'
B17010Am32='Under 5 years only'
B17010Am33='Under 5 years and 5 to 17 years'
B17010Am34='5 to 17 years only'
B17010Am35='No related children under 18 years'
B17010Am36='Female householder, no husband present:'
B17010Am37='With related children under 18 years:'
B17010Am38='Under 5 years only'
B17010Am39='Under 5 years and 5 to 17 years'
B17010Am40='5 to 17 years only'
B17010Am41='No related children under 18 years'
 
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY PRESENCE OF RELATED CHILDREN UNDER 18 YEARS BY AGE OF RELATED CHILDREN (BLACK OR AFRICAN AMERICAN ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is Black or African American alone */
 
B17010Bm1='Total:'
B17010Bm2='Income in the past 12 months below poverty level:'
B17010Bm3='Married-couple family:'
B17010Bm4='With related children under 18 years:'
B17010Bm5='Under 5 years only'
B17010Bm6='Under 5 years and 5 to 17 years'
B17010Bm7='5 to 17 years only'
B17010Bm8='No related children under 18 years'
B17010Bm9='Other family:'
B17010Bm10='Male householder, no wife present:'
B17010Bm11='With related children under 18 years:'
B17010Bm12='Under 5 years only'
B17010Bm13='Under 5 years and 5 to 17 years'
B17010Bm14='5 to 17 years only'
B17010Bm15='No related children under 18 years'
B17010Bm16='Female householder, no husband present:'
B17010Bm17='With related children under 18 years:'
B17010Bm18='Under 5 years only'
B17010Bm19='Under 5 years and 5 to 17 years'
B17010Bm20='5 to 17 years only'
B17010Bm21='No related children under 18 years'
B17010Bm22='Income in the past 12 months at or above poverty level:'
B17010Bm23='Married-couple family:'
B17010Bm24='With related children under 18 years:'
B17010Bm25='Under 5 years only'
B17010Bm26='Under 5 years and 5 to 17 years'
B17010Bm27='5 to 17 years only'
B17010Bm28='No related children under 18 years'
B17010Bm29='Other family:'
B17010Bm30='Male householder, no wife present:'
B17010Bm31='With related children under 18 years:'
B17010Bm32='Under 5 years only'
B17010Bm33='Under 5 years and 5 to 17 years'
B17010Bm34='5 to 17 years only'
B17010Bm35='No related children under 18 years'
B17010Bm36='Female householder, no husband present:'
B17010Bm37='With related children under 18 years:'
B17010Bm38='Under 5 years only'
B17010Bm39='Under 5 years and 5 to 17 years'
B17010Bm40='5 to 17 years only'
B17010Bm41='No related children under 18 years'
 
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY PRESENCE OF RELATED CHILDREN UNDER 18 YEARS BY AGE OF RELATED CHILDREN (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  Families with a householder who is American Indian and Alaska Native alone */
 
B17010Cm1='Total:'
B17010Cm2='Income in the past 12 months below poverty level:'
B17010Cm3='Married-couple family:'
B17010Cm4='With related children under 18 years:'
B17010Cm5='Under 5 years only'
B17010Cm6='Under 5 years and 5 to 17 years'
B17010Cm7='5 to 17 years only'
B17010Cm8='No related children under 18 years'
B17010Cm9='Other family:'
B17010Cm10='Male householder, no wife present:'
B17010Cm11='With related children under 18 years:'
B17010Cm12='Under 5 years only'
B17010Cm13='Under 5 years and 5 to 17 years'
B17010Cm14='5 to 17 years only'
B17010Cm15='No related children under 18 years'
B17010Cm16='Female householder, no husband present:'
B17010Cm17='With related children under 18 years:'
B17010Cm18='Under 5 years only'
B17010Cm19='Under 5 years and 5 to 17 years'
B17010Cm20='5 to 17 years only'
B17010Cm21='No related children under 18 years'
B17010Cm22='Income in the past 12 months at or above poverty level:'
B17010Cm23='Married-couple family:'
B17010Cm24='With related children under 18 years:'
B17010Cm25='Under 5 years only'
B17010Cm26='Under 5 years and 5 to 17 years'
B17010Cm27='5 to 17 years only'
B17010Cm28='No related children under 18 years'
B17010Cm29='Other family:'
B17010Cm30='Male householder, no wife present:'
B17010Cm31='With related children under 18 years:'
B17010Cm32='Under 5 years only'
B17010Cm33='Under 5 years and 5 to 17 years'
B17010Cm34='5 to 17 years only'
B17010Cm35='No related children under 18 years'
B17010Cm36='Female householder, no husband present:'
B17010Cm37='With related children under 18 years:'
B17010Cm38='Under 5 years only'
B17010Cm39='Under 5 years and 5 to 17 years'
B17010Cm40='5 to 17 years only'
B17010Cm41='No related children under 18 years'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B17007m1
B17007m2
B17007m3
B17007m4
B17007m5
B17007m6
B17007m7
B17007m8
B17007m9
B17007m10
B17007m11
B17007m12
B17007m13
B17007m14
B17007m15
B17007m16
B17007m17
B17007m18
B17007m19
B17007m20
B17007m21
B17007m22
B17007m23
B17007m24
B17007m25
B17007m26
B17007m27
B17007m28
B17007m29
B17007m30
B17007m31
B17007m32
B17007m33
B17007m34
B17007m35
B17007m36
B17007m37
B17007m38
B17007m39
B17007m40
B17007m41
B17007m42
B17007m43
 
B17008m1
B17008m2
B17008m3
 
B17009m1
B17009m2
B17009m3
B17009m4
B17009m5
B17009m6
B17009m7
B17009m8
B17009m9
B17009m10
B17009m11
B17009m12
B17009m13
B17009m14
B17009m15
B17009m16
B17009m17
B17009m18
B17009m19
B17009m20
B17009m21
 
B17010m1
B17010m2
B17010m3
B17010m4
B17010m5
B17010m6
B17010m7
B17010m8
B17010m9
B17010m10
B17010m11
B17010m12
B17010m13
B17010m14
B17010m15
B17010m16
B17010m17
B17010m18
B17010m19
B17010m20
B17010m21
B17010m22
B17010m23
B17010m24
B17010m25
B17010m26
B17010m27
B17010m28
B17010m29
B17010m30
B17010m31
B17010m32
B17010m33
B17010m34
B17010m35
B17010m36
B17010m37
B17010m38
B17010m39
B17010m40
B17010m41
 
B17010Am1
B17010Am2
B17010Am3
B17010Am4
B17010Am5
B17010Am6
B17010Am7
B17010Am8
B17010Am9
B17010Am10
B17010Am11
B17010Am12
B17010Am13
B17010Am14
B17010Am15
B17010Am16
B17010Am17
B17010Am18
B17010Am19
B17010Am20
B17010Am21
B17010Am22
B17010Am23
B17010Am24
B17010Am25
B17010Am26
B17010Am27
B17010Am28
B17010Am29
B17010Am30
B17010Am31
B17010Am32
B17010Am33
B17010Am34
B17010Am35
B17010Am36
B17010Am37
B17010Am38
B17010Am39
B17010Am40
B17010Am41
 
B17010Bm1
B17010Bm2
B17010Bm3
B17010Bm4
B17010Bm5
B17010Bm6
B17010Bm7
B17010Bm8
B17010Bm9
B17010Bm10
B17010Bm11
B17010Bm12
B17010Bm13
B17010Bm14
B17010Bm15
B17010Bm16
B17010Bm17
B17010Bm18
B17010Bm19
B17010Bm20
B17010Bm21
B17010Bm22
B17010Bm23
B17010Bm24
B17010Bm25
B17010Bm26
B17010Bm27
B17010Bm28
B17010Bm29
B17010Bm30
B17010Bm31
B17010Bm32
B17010Bm33
B17010Bm34
B17010Bm35
B17010Bm36
B17010Bm37
B17010Bm38
B17010Bm39
B17010Bm40
B17010Bm41
 
B17010Cm1
B17010Cm2
B17010Cm3
B17010Cm4
B17010Cm5
B17010Cm6
B17010Cm7
B17010Cm8
B17010Cm9
B17010Cm10
B17010Cm11
B17010Cm12
B17010Cm13
B17010Cm14
B17010Cm15
B17010Cm16
B17010Cm17
B17010Cm18
B17010Cm19
B17010Cm20
B17010Cm21
B17010Cm22
B17010Cm23
B17010Cm24
B17010Cm25
B17010Cm26
B17010Cm27
B17010Cm28
B17010Cm29
B17010Cm30
B17010Cm31
B17010Cm32
B17010Cm33
B17010Cm34
B17010Cm35
B17010Cm36
B17010Cm37
B17010Cm38
B17010Cm39
B17010Cm40
B17010Cm41
;
RUN;
TITLE2;
