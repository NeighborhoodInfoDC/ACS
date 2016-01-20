TITLE2 "m20125md0102000";
DATA work.SFm0102md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0102000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*HOUSING UNITS */
/*Universe:  Housing units */
 
B25001m1='Total'
/*OCCUPANCY STATUS */
/*Universe:  Housing units */
 
B25002m1='Total:'
B25002m2='Occupied'
B25002m3='Vacant'
/*TENURE */
/*Universe:  Occupied housing units */
 
B25003m1='Total:'
B25003m2='Owner occupied'
B25003m3='Renter occupied'
/*TENURE (WHITE ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is White alone */
 
B25003Am1='Total:'
B25003Am2='Owner occupied'
B25003Am3='Renter occupied'
/*TENURE (BLACK OR AFRICAN AMERICAN ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Black or African American alone */
 
B25003Bm1='Total:'
B25003Bm2='Owner occupied'
B25003Bm3='Renter occupied'
/*TENURE (AMERICAN INDIAN AND ALASKA NATIVE ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is American Indian and Alaska Native alone */
 
B25003Cm1='Total:'
B25003Cm2='Owner occupied'
B25003Cm3='Renter occupied'
/*TENURE (ASIAN ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Asian alone */
 
B25003Dm1='Total:'
B25003Dm2='Owner occupied'
B25003Dm3='Renter occupied'
/*TENURE (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Native Hawaiian and Other Pacific Islander alone */
 
B25003Em1='Total:'
B25003Em2='Owner occupied'
B25003Em3='Renter occupied'
/*TENURE (SOME OTHER RACE ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Some other race alone */
 
B25003Fm1='Total:'
B25003Fm2='Owner occupied'
B25003Fm3='Renter occupied'
/*TENURE (TWO OR MORE RACES HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Two or more races */
 
B25003Gm1='Total:'
B25003Gm2='Owner occupied'
B25003Gm3='Renter occupied'
/*TENURE (WHITE ALONE, NOT HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is White alone, not Hispanic or Latino */
 
B25003Hm1='Total:'
B25003Hm2='Owner occupied'
B25003Hm3='Renter occupied'
/*TENURE (HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Hispanic or Latino */
 
B25003Im1='Total:'
B25003Im2='Owner occupied'
B25003Im3='Renter occupied'
/*VACANCY STATUS */
/*Universe:  Vacant housing units */
 
B25004m1='Total:'
B25004m2='For rent'
B25004m3='Rented, not occupied'
B25004m4='For sale only'
B25004m5='Sold, not occupied'
B25004m6='For seasonal, recreational, or occasional use'
B25004m7='For migrant workers'
B25004m8='Other vacant'
/*VACANT - CURRENT RESIDENCE ELSEWHERE */
/*Universe:  Vacant housing units */
 
B25005m1='Total:'
B25005m2='Vacant - current residence elsewhere'
B25005m3='All other vacant units'
/*RACE OF HOUSEHOLDER */
/*Universe:  Occupied housing units */
 
B25006m1='Total:'
B25006m2='Householder who is White alone'
B25006m3='Householder who is Black or African American alone'
B25006m4='Householder who is American Indian and Alaska Native alone'
B25006m5='Householder who is Asian alone'
B25006m6='Householder who is Native Hawaiian and Other Pacific Islander alone'
B25006m7='Householder who is Some other race alone'
B25006m8='Householder who is Two or more races:'
B25006m9='Householder who is Two races including Some other race'
B25006m10='Householder who is Two races excluding Some other race, and three or more races'
/*TENURE BY AGE OF HOUSEHOLDER */
/*Universe:  Occupied housing units */
 
B25007m1='Total:'
B25007m2='Owner occupied:'
B25007m3='Householder 15 to 24 years'
B25007m4='Householder 25 to 34 years'
B25007m5='Householder 35 to 44 years'
B25007m6='Householder 45 to 54 years'
B25007m7='Householder 55 to 59 years'
B25007m8='Householder 60 to 64 years'
B25007m9='Householder 65 to 74 years'
B25007m10='Householder 75 to 84 years'
B25007m11='Householder 85 years and over'
B25007m12='Renter occupied:'
B25007m13='Householder 15 to 24 years'
B25007m14='Householder 25 to 34 years'
B25007m15='Householder 35 to 44 years'
B25007m16='Householder 45 to 54 years'
B25007m17='Householder 55 to 59 years'
B25007m18='Householder 60 to 64 years'
B25007m19='Householder 65 to 74 years'
B25007m20='Householder 75 to 84 years'
B25007m21='Householder 85 years and over'
/*TOTAL POPULATION IN OCCUPIED HOUSING UNITS BY TENURE */
/*Universe:  Total population in occupied housing units */
 
B25008m1='Total:'
B25008m2='Owner occupied'
B25008m3='Renter occupied'
/*TENURE BY HOUSEHOLD SIZE */
/*Universe:  Occupied housing units */
 
B25009m1='Total:'
B25009m2='Owner occupied:'
B25009m3='1-person household'
B25009m4='2-person household'
B25009m5='3-person household'
B25009m6='4-person household'
B25009m7='5-person household'
B25009m8='6-person household'
B25009m9='7-or-more person household'
B25009m10='Renter occupied:'
B25009m11='1-person household'
B25009m12='2-person household'
B25009m13='3-person household'
B25009m14='4-person household'
B25009m15='5-person household'
B25009m16='6-person household'
B25009m17='7-or-more person household'
/*AVERAGE HOUSEHOLD SIZE OF OCCUPIED HOUSING UNITS BY TENURE */
/*Universe:  Occupied housing units */
/*Average household size -- */
 
B25010m1='Total:'
B25010m2='Owner occupied'
B25010m3='Renter occupied'
/*TENURE BY HOUSEHOLD TYPE (INCLUDING LIVING ALONE) AND AGE OF HOUSEHOLDER */
/*Universe:  Occupied housing units */
 
B25011m1='Total:'
B25011m2='Owner occupied:'
B25011m3='Family households:'
B25011m4='Married-couple family:'
B25011m5='Householder 15 to 34 years'
B25011m6='Householder 35 to 64 years'
B25011m7='Householder 65 years and over'
B25011m8='Other family:'
B25011m9='Male householder, no wife present:'
B25011m10='Householder 15 to 34 years'
B25011m11='Householder 35 to 64 years'
B25011m12='Householder 65 years and over'
B25011m13='Female householder, no husband present:'
B25011m14='Householder 15 to 34 years'
B25011m15='Householder 35 to 64 years'
B25011m16='Householder 65 years and over'
B25011m17='Nonfamily households:'
B25011m18='Householder living alone:'
B25011m19='Householder 15 to 34 years'
B25011m20='Householder 35 to 64 years'
B25011m21='Householder 65 years and over'
B25011m22='Householder not living alone:'
B25011m23='Householder 15 to 34 years'
B25011m24='Householder 35 to 64 years'
B25011m25='Householder 65 years and over'
B25011m26='Renter occupied:'
B25011m27='Family households:'
B25011m28='Married-couple family:'
B25011m29='Householder 15 to 34 years'
B25011m30='Householder 35 to 64 years'
B25011m31='Householder 65 years and over'
B25011m32='Other family:'
B25011m33='Male householder, no wife present:'
B25011m34='Householder 15 to 34 years'
B25011m35='Householder 35 to 64 years'
B25011m36='Householder 65 years and over'
B25011m37='Female householder, no husband present:'
B25011m38='Householder 15 to 34 years'
B25011m39='Householder 35 to 64 years'
B25011m40='Householder 65 years and over'
B25011m41='Nonfamily households:'
B25011m42='Householder living alone:'
B25011m43='Householder 15 to 34 years'
B25011m44='Householder 35 to 64 years'
B25011m45='Householder 65 years and over'
B25011m46='Householder not living alone:'
B25011m47='Householder 15 to 34 years'
B25011m48='Householder 35 to 64 years'
B25011m49='Householder 65 years and over'
/*TENURE BY FAMILIES AND PRESENCE OF OWN CHILDREN */
/*Universe:  Occupied housing units */
 
B25012m1='Total:'
B25012m2='Owner-occupied housing units:'
B25012m3='With related children under 18:'
B25012m4='With own children under 18:'
B25012m5='Under 6 years only'
B25012m6='Under 6 years and 6 to 17 years'
B25012m7='6 to 17 years'
B25012m8='No own children under 18'
B25012m9='No related children under 18'
B25012m10='Renter-occupied housing units:'
B25012m11='With related children under 18:'
B25012m12='With own children under 18:'
B25012m13='Under 6 years only'
B25012m14='Under 6 years and 6 to 17 years'
B25012m15='6 to 17 years'
B25012m16='No own children under 18'
B25012m17='No related children under 18'
/*TENURE BY EDUCATIONAL ATTAINMENT OF HOUSEHOLDER */
/*Universe:  Occupied housing units */
 
B25013m1='Total:'
B25013m2='Owner-occupied housing units:'
B25013m3='Less than high school graduate'
B25013m4='High school graduate (including equivalency)'
B25013m5='Some college or associate''s degree'
B25013m6='Bachelor''s degree or higher'
B25013m7='Renter-occupied housing units:'
B25013m8='Less than high school graduate'
B25013m9='High school graduate (including equivalency)'
B25013m10='Some college or associate''s degree'
B25013m11='Bachelor''s degree or higher'
/*TENURE BY OCCUPANTS PER ROOM */
/*Universe:  Occupied housing units */
 
B25014m1='Total:'
B25014m2='Owner occupied:'
B25014m3='0.50 or less occupants per room'
B25014m4='0.51 to 1.00 occupants per room'
B25014m5='1.01 to 1.50 occupants per room'
B25014m6='1.51 to 2.00 occupants per room'
B25014m7='2.01 or more occupants per room'
B25014m8='Renter occupied:'
B25014m9='0.50 or less occupants per room'
B25014m10='0.51 to 1.00 occupants per room'
B25014m11='1.01 to 1.50 occupants per room'
B25014m12='1.51 to 2.00 occupants per room'
B25014m13='2.01 or more occupants per room'
/*OCCUPANTS PER ROOM (WHITE ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is White alone */
 
B25014Am1='Total:'
B25014Am2='1.00 or less occupants per room'
B25014Am3='1.01 or more occupants per room'
/*OCCUPANTS PER ROOM (BLACK OR AFRICAN AMERICAN ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Black or African American alone */
 
B25014Bm1='Total:'
B25014Bm2='1.00 or less occupants per room'
B25014Bm3='1.01 or more occupants per room'
/*OCCUPANTS PER ROOM (AMERICAN INDIAN AND ALASKA NATIVE ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is American Indian and Alaska Native alone */
 
B25014Cm1='Total:'
B25014Cm2='1.00 or less occupants per room'
B25014Cm3='1.01 or more occupants per room'
/*OCCUPANTS PER ROOM (ASIAN ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Asian alone */
 
B25014Dm1='Total:'
B25014Dm2='1.00 or less occupants per room'
B25014Dm3='1.01 or more occupants per room'
/*OCCUPANTS PER ROOM (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Native Hawaiian and Other Pacific Islander alone */
 
B25014Em1='Total:'
B25014Em2='1.00 or less occupants per room'
B25014Em3='1.01 or more occupants per room'
/*OCCUPANTS PER ROOM (SOME OTHER RACE ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Some other race alone */
 
B25014Fm1='Total:'
B25014Fm2='1.00 or less occupants per room'
B25014Fm3='1.01 or more occupants per room'
/*OCCUPANTS PER ROOM (TWO OR MORE RACES HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Two or more races */
 
B25014Gm1='Total:'
B25014Gm2='1.00 or less occupants per room'
B25014Gm3='1.01 or more occupants per room'
/*OCCUPANTS PER ROOM (WHITE ALONE, NOT HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is White alone, not Hispanic or Latino */
 
B25014Hm1='Total:'
B25014Hm2='1.00 or less occupants per room'
B25014Hm3='1.01 or more occupants per room'
/*OCCUPANTS PER ROOM (HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Hispanic or Latino */
 
B25014Im1='Total:'
B25014Im2='1.00 or less occupants per room'
B25014Im3='1.01 or more occupants per room'
/*TENURE BY AGE OF HOUSEHOLDER BY OCCUPANTS PER ROOM */
/*Universe:  Occupied housing units */
 
B25015m1='Total:'
B25015m2='Owner occupied:'
B25015m3='Householder 15 to 34 years:'
B25015m4='1.00 or less occupants per room'
B25015m5='1.01 to 1.50 occupants per room'
B25015m6='1.51 or more occupants per room'
B25015m7='Householder 35 to 64 years:'
B25015m8='1.00 or less occupants per room'
B25015m9='1.01 to 1.50 occupants per room'
B25015m10='1.51 or more occupants per room'
B25015m11='Householder 65 years and over:'
B25015m12='1.00 or less occupants per room'
B25015m13='1.01 to 1.50 occupants per room'
B25015m14='1.51 or more occupants per room'
B25015m15='Renter occupied:'
B25015m16='Householder 15 to 34 years:'
B25015m17='1.00 or less occupants per room'
B25015m18='1.01 to 1.50 occupants per room'
B25015m19='1.51 or more occupants per room'
B25015m20='Householder 35 to 64 years:'
B25015m21='1.00 or less occupants per room'
B25015m22='1.01 to 1.50 occupants per room'
B25015m23='1.51 or more occupants per room'
B25015m24='Householder 65 years and over:'
B25015m25='1.00 or less occupants per room'
B25015m26='1.01 to 1.50 occupants per room'
B25015m27='1.51 or more occupants per room'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B25001m1
 
B25002m1
B25002m2
B25002m3
 
B25003m1
B25003m2
B25003m3
 
B25003Am1
B25003Am2
B25003Am3
 
B25003Bm1
B25003Bm2
B25003Bm3
 
B25003Cm1
B25003Cm2
B25003Cm3
 
B25003Dm1
B25003Dm2
B25003Dm3
 
B25003Em1
B25003Em2
B25003Em3
 
B25003Fm1
B25003Fm2
B25003Fm3
 
B25003Gm1
B25003Gm2
B25003Gm3
 
B25003Hm1
B25003Hm2
B25003Hm3
 
B25003Im1
B25003Im2
B25003Im3
 
B25004m1
B25004m2
B25004m3
B25004m4
B25004m5
B25004m6
B25004m7
B25004m8
 
B25005m1
B25005m2
B25005m3
 
B25006m1
B25006m2
B25006m3
B25006m4
B25006m5
B25006m6
B25006m7
B25006m8
B25006m9
B25006m10
 
B25007m1
B25007m2
B25007m3
B25007m4
B25007m5
B25007m6
B25007m7
B25007m8
B25007m9
B25007m10
B25007m11
B25007m12
B25007m13
B25007m14
B25007m15
B25007m16
B25007m17
B25007m18
B25007m19
B25007m20
B25007m21
 
B25008m1
B25008m2
B25008m3
 
B25009m1
B25009m2
B25009m3
B25009m4
B25009m5
B25009m6
B25009m7
B25009m8
B25009m9
B25009m10
B25009m11
B25009m12
B25009m13
B25009m14
B25009m15
B25009m16
B25009m17
 
B25010m1
B25010m2
B25010m3
 
B25011m1
B25011m2
B25011m3
B25011m4
B25011m5
B25011m6
B25011m7
B25011m8
B25011m9
B25011m10
B25011m11
B25011m12
B25011m13
B25011m14
B25011m15
B25011m16
B25011m17
B25011m18
B25011m19
B25011m20
B25011m21
B25011m22
B25011m23
B25011m24
B25011m25
B25011m26
B25011m27
B25011m28
B25011m29
B25011m30
B25011m31
B25011m32
B25011m33
B25011m34
B25011m35
B25011m36
B25011m37
B25011m38
B25011m39
B25011m40
B25011m41
B25011m42
B25011m43
B25011m44
B25011m45
B25011m46
B25011m47
B25011m48
B25011m49
 
B25012m1
B25012m2
B25012m3
B25012m4
B25012m5
B25012m6
B25012m7
B25012m8
B25012m9
B25012m10
B25012m11
B25012m12
B25012m13
B25012m14
B25012m15
B25012m16
B25012m17
 
B25013m1
B25013m2
B25013m3
B25013m4
B25013m5
B25013m6
B25013m7
B25013m8
B25013m9
B25013m10
B25013m11
 
B25014m1
B25014m2
B25014m3
B25014m4
B25014m5
B25014m6
B25014m7
B25014m8
B25014m9
B25014m10
B25014m11
B25014m12
B25014m13
 
B25014Am1
B25014Am2
B25014Am3
 
B25014Bm1
B25014Bm2
B25014Bm3
 
B25014Cm1
B25014Cm2
B25014Cm3
 
B25014Dm1
B25014Dm2
B25014Dm3
 
B25014Em1
B25014Em2
B25014Em3
 
B25014Fm1
B25014Fm2
B25014Fm3
 
B25014Gm1
B25014Gm2
B25014Gm3
 
B25014Hm1
B25014Hm2
B25014Hm3
 
B25014Im1
B25014Im2
B25014Im3
 
B25015m1
B25015m2
B25015m3
B25015m4
B25015m5
B25015m6
B25015m7
B25015m8
B25015m9
B25015m10
B25015m11
B25015m12
B25015m13
B25015m14
B25015m15
B25015m16
B25015m17
B25015m18
B25015m19
B25015m20
B25015m21
B25015m22
B25015m23
B25015m24
B25015m25
B25015m26
B25015m27
;
RUN;
TITLE2;
