TITLE2 "e20125dc0102000";
DATA work.SFe0102dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0102000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*HOUSING UNITS */
/*Universe:  Housing units */
 
B25001e1='Total'
/*OCCUPANCY STATUS */
/*Universe:  Housing units */
 
B25002e1='Total:'
B25002e2='Occupied'
B25002e3='Vacant'
/*TENURE */
/*Universe:  Occupied housing units */
 
B25003e1='Total:'
B25003e2='Owner occupied'
B25003e3='Renter occupied'
/*TENURE (WHITE ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is White alone */
 
B25003Ae1='Total:'
B25003Ae2='Owner occupied'
B25003Ae3='Renter occupied'
/*TENURE (BLACK OR AFRICAN AMERICAN ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Black or African American alone */
 
B25003Be1='Total:'
B25003Be2='Owner occupied'
B25003Be3='Renter occupied'
/*TENURE (AMERICAN INDIAN AND ALASKA NATIVE ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is American Indian and Alaska Native alone */
 
B25003Ce1='Total:'
B25003Ce2='Owner occupied'
B25003Ce3='Renter occupied'
/*TENURE (ASIAN ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Asian alone */
 
B25003De1='Total:'
B25003De2='Owner occupied'
B25003De3='Renter occupied'
/*TENURE (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Native Hawaiian and Other Pacific Islander alone */
 
B25003Ee1='Total:'
B25003Ee2='Owner occupied'
B25003Ee3='Renter occupied'
/*TENURE (SOME OTHER RACE ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Some other race alone */
 
B25003Fe1='Total:'
B25003Fe2='Owner occupied'
B25003Fe3='Renter occupied'
/*TENURE (TWO OR MORE RACES HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Two or more races */
 
B25003Ge1='Total:'
B25003Ge2='Owner occupied'
B25003Ge3='Renter occupied'
/*TENURE (WHITE ALONE, NOT HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is White alone, not Hispanic or Latino */
 
B25003He1='Total:'
B25003He2='Owner occupied'
B25003He3='Renter occupied'
/*TENURE (HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Hispanic or Latino */
 
B25003Ie1='Total:'
B25003Ie2='Owner occupied'
B25003Ie3='Renter occupied'
/*VACANCY STATUS */
/*Universe:  Vacant housing units */
 
B25004e1='Total:'
B25004e2='For rent'
B25004e3='Rented, not occupied'
B25004e4='For sale only'
B25004e5='Sold, not occupied'
B25004e6='For seasonal, recreational, or occasional use'
B25004e7='For migrant workers'
B25004e8='Other vacant'
/*VACANT - CURRENT RESIDENCE ELSEWHERE */
/*Universe:  Vacant housing units */
 
B25005e1='Total:'
B25005e2='Vacant - current residence elsewhere'
B25005e3='All other vacant units'
/*RACE OF HOUSEHOLDER */
/*Universe:  Occupied housing units */
 
B25006e1='Total:'
B25006e2='Householder who is White alone'
B25006e3='Householder who is Black or African American alone'
B25006e4='Householder who is American Indian and Alaska Native alone'
B25006e5='Householder who is Asian alone'
B25006e6='Householder who is Native Hawaiian and Other Pacific Islander alone'
B25006e7='Householder who is Some other race alone'
B25006e8='Householder who is Two or more races:'
B25006e9='Householder who is Two races including Some other race'
B25006e10='Householder who is Two races excluding Some other race, and three or more races'
/*TENURE BY AGE OF HOUSEHOLDER */
/*Universe:  Occupied housing units */
 
B25007e1='Total:'
B25007e2='Owner occupied:'
B25007e3='Householder 15 to 24 years'
B25007e4='Householder 25 to 34 years'
B25007e5='Householder 35 to 44 years'
B25007e6='Householder 45 to 54 years'
B25007e7='Householder 55 to 59 years'
B25007e8='Householder 60 to 64 years'
B25007e9='Householder 65 to 74 years'
B25007e10='Householder 75 to 84 years'
B25007e11='Householder 85 years and over'
B25007e12='Renter occupied:'
B25007e13='Householder 15 to 24 years'
B25007e14='Householder 25 to 34 years'
B25007e15='Householder 35 to 44 years'
B25007e16='Householder 45 to 54 years'
B25007e17='Householder 55 to 59 years'
B25007e18='Householder 60 to 64 years'
B25007e19='Householder 65 to 74 years'
B25007e20='Householder 75 to 84 years'
B25007e21='Householder 85 years and over'
/*TOTAL POPULATION IN OCCUPIED HOUSING UNITS BY TENURE */
/*Universe:  Total population in occupied housing units */
 
B25008e1='Total:'
B25008e2='Owner occupied'
B25008e3='Renter occupied'
/*TENURE BY HOUSEHOLD SIZE */
/*Universe:  Occupied housing units */
 
B25009e1='Total:'
B25009e2='Owner occupied:'
B25009e3='1-person household'
B25009e4='2-person household'
B25009e5='3-person household'
B25009e6='4-person household'
B25009e7='5-person household'
B25009e8='6-person household'
B25009e9='7-or-more person household'
B25009e10='Renter occupied:'
B25009e11='1-person household'
B25009e12='2-person household'
B25009e13='3-person household'
B25009e14='4-person household'
B25009e15='5-person household'
B25009e16='6-person household'
B25009e17='7-or-more person household'
/*AVERAGE HOUSEHOLD SIZE OF OCCUPIED HOUSING UNITS BY TENURE */
/*Universe:  Occupied housing units */
/*Average household size -- */
 
B25010e1='Total:'
B25010e2='Owner occupied'
B25010e3='Renter occupied'
/*TENURE BY HOUSEHOLD TYPE (INCLUDING LIVING ALONE) AND AGE OF HOUSEHOLDER */
/*Universe:  Occupied housing units */
 
B25011e1='Total:'
B25011e2='Owner occupied:'
B25011e3='Family households:'
B25011e4='Married-couple family:'
B25011e5='Householder 15 to 34 years'
B25011e6='Householder 35 to 64 years'
B25011e7='Householder 65 years and over'
B25011e8='Other family:'
B25011e9='Male householder, no wife present:'
B25011e10='Householder 15 to 34 years'
B25011e11='Householder 35 to 64 years'
B25011e12='Householder 65 years and over'
B25011e13='Female householder, no husband present:'
B25011e14='Householder 15 to 34 years'
B25011e15='Householder 35 to 64 years'
B25011e16='Householder 65 years and over'
B25011e17='Nonfamily households:'
B25011e18='Householder living alone:'
B25011e19='Householder 15 to 34 years'
B25011e20='Householder 35 to 64 years'
B25011e21='Householder 65 years and over'
B25011e22='Householder not living alone:'
B25011e23='Householder 15 to 34 years'
B25011e24='Householder 35 to 64 years'
B25011e25='Householder 65 years and over'
B25011e26='Renter occupied:'
B25011e27='Family households:'
B25011e28='Married-couple family:'
B25011e29='Householder 15 to 34 years'
B25011e30='Householder 35 to 64 years'
B25011e31='Householder 65 years and over'
B25011e32='Other family:'
B25011e33='Male householder, no wife present:'
B25011e34='Householder 15 to 34 years'
B25011e35='Householder 35 to 64 years'
B25011e36='Householder 65 years and over'
B25011e37='Female householder, no husband present:'
B25011e38='Householder 15 to 34 years'
B25011e39='Householder 35 to 64 years'
B25011e40='Householder 65 years and over'
B25011e41='Nonfamily households:'
B25011e42='Householder living alone:'
B25011e43='Householder 15 to 34 years'
B25011e44='Householder 35 to 64 years'
B25011e45='Householder 65 years and over'
B25011e46='Householder not living alone:'
B25011e47='Householder 15 to 34 years'
B25011e48='Householder 35 to 64 years'
B25011e49='Householder 65 years and over'
/*TENURE BY FAMILIES AND PRESENCE OF OWN CHILDREN */
/*Universe:  Occupied housing units */
 
B25012e1='Total:'
B25012e2='Owner-occupied housing units:'
B25012e3='With related children under 18:'
B25012e4='With own children under 18:'
B25012e5='Under 6 years only'
B25012e6='Under 6 years and 6 to 17 years'
B25012e7='6 to 17 years'
B25012e8='No own children under 18'
B25012e9='No related children under 18'
B25012e10='Renter-occupied housing units:'
B25012e11='With related children under 18:'
B25012e12='With own children under 18:'
B25012e13='Under 6 years only'
B25012e14='Under 6 years and 6 to 17 years'
B25012e15='6 to 17 years'
B25012e16='No own children under 18'
B25012e17='No related children under 18'
/*TENURE BY EDUCATIONAL ATTAINMENT OF HOUSEHOLDER */
/*Universe:  Occupied housing units */
 
B25013e1='Total:'
B25013e2='Owner-occupied housing units:'
B25013e3='Less than high school graduate'
B25013e4='High school graduate (including equivalency)'
B25013e5='Some college or associate''s degree'
B25013e6='Bachelor''s degree or higher'
B25013e7='Renter-occupied housing units:'
B25013e8='Less than high school graduate'
B25013e9='High school graduate (including equivalency)'
B25013e10='Some college or associate''s degree'
B25013e11='Bachelor''s degree or higher'
/*TENURE BY OCCUPANTS PER ROOM */
/*Universe:  Occupied housing units */
 
B25014e1='Total:'
B25014e2='Owner occupied:'
B25014e3='0.50 or less occupants per room'
B25014e4='0.51 to 1.00 occupants per room'
B25014e5='1.01 to 1.50 occupants per room'
B25014e6='1.51 to 2.00 occupants per room'
B25014e7='2.01 or more occupants per room'
B25014e8='Renter occupied:'
B25014e9='0.50 or less occupants per room'
B25014e10='0.51 to 1.00 occupants per room'
B25014e11='1.01 to 1.50 occupants per room'
B25014e12='1.51 to 2.00 occupants per room'
B25014e13='2.01 or more occupants per room'
/*OCCUPANTS PER ROOM (WHITE ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is White alone */
 
B25014Ae1='Total:'
B25014Ae2='1.00 or less occupants per room'
B25014Ae3='1.01 or more occupants per room'
/*OCCUPANTS PER ROOM (BLACK OR AFRICAN AMERICAN ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Black or African American alone */
 
B25014Be1='Total:'
B25014Be2='1.00 or less occupants per room'
B25014Be3='1.01 or more occupants per room'
/*OCCUPANTS PER ROOM (AMERICAN INDIAN AND ALASKA NATIVE ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is American Indian and Alaska Native alone */
 
B25014Ce1='Total:'
B25014Ce2='1.00 or less occupants per room'
B25014Ce3='1.01 or more occupants per room'
/*OCCUPANTS PER ROOM (ASIAN ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Asian alone */
 
B25014De1='Total:'
B25014De2='1.00 or less occupants per room'
B25014De3='1.01 or more occupants per room'
/*OCCUPANTS PER ROOM (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Native Hawaiian and Other Pacific Islander alone */
 
B25014Ee1='Total:'
B25014Ee2='1.00 or less occupants per room'
B25014Ee3='1.01 or more occupants per room'
/*OCCUPANTS PER ROOM (SOME OTHER RACE ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Some other race alone */
 
B25014Fe1='Total:'
B25014Fe2='1.00 or less occupants per room'
B25014Fe3='1.01 or more occupants per room'
/*OCCUPANTS PER ROOM (TWO OR MORE RACES HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Two or more races */
 
B25014Ge1='Total:'
B25014Ge2='1.00 or less occupants per room'
B25014Ge3='1.01 or more occupants per room'
/*OCCUPANTS PER ROOM (WHITE ALONE, NOT HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is White alone, not Hispanic or Latino */
 
B25014He1='Total:'
B25014He2='1.00 or less occupants per room'
B25014He3='1.01 or more occupants per room'
/*OCCUPANTS PER ROOM (HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Hispanic or Latino */
 
B25014Ie1='Total:'
B25014Ie2='1.00 or less occupants per room'
B25014Ie3='1.01 or more occupants per room'
/*TENURE BY AGE OF HOUSEHOLDER BY OCCUPANTS PER ROOM */
/*Universe:  Occupied housing units */
 
B25015e1='Total:'
B25015e2='Owner occupied:'
B25015e3='Householder 15 to 34 years:'
B25015e4='1.00 or less occupants per room'
B25015e5='1.01 to 1.50 occupants per room'
B25015e6='1.51 or more occupants per room'
B25015e7='Householder 35 to 64 years:'
B25015e8='1.00 or less occupants per room'
B25015e9='1.01 to 1.50 occupants per room'
B25015e10='1.51 or more occupants per room'
B25015e11='Householder 65 years and over:'
B25015e12='1.00 or less occupants per room'
B25015e13='1.01 to 1.50 occupants per room'
B25015e14='1.51 or more occupants per room'
B25015e15='Renter occupied:'
B25015e16='Householder 15 to 34 years:'
B25015e17='1.00 or less occupants per room'
B25015e18='1.01 to 1.50 occupants per room'
B25015e19='1.51 or more occupants per room'
B25015e20='Householder 35 to 64 years:'
B25015e21='1.00 or less occupants per room'
B25015e22='1.01 to 1.50 occupants per room'
B25015e23='1.51 or more occupants per room'
B25015e24='Householder 65 years and over:'
B25015e25='1.00 or less occupants per room'
B25015e26='1.01 to 1.50 occupants per room'
B25015e27='1.51 or more occupants per room'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B25001e1
 
B25002e1
B25002e2
B25002e3
 
B25003e1
B25003e2
B25003e3
 
B25003Ae1
B25003Ae2
B25003Ae3
 
B25003Be1
B25003Be2
B25003Be3
 
B25003Ce1
B25003Ce2
B25003Ce3
 
B25003De1
B25003De2
B25003De3
 
B25003Ee1
B25003Ee2
B25003Ee3
 
B25003Fe1
B25003Fe2
B25003Fe3
 
B25003Ge1
B25003Ge2
B25003Ge3
 
B25003He1
B25003He2
B25003He3
 
B25003Ie1
B25003Ie2
B25003Ie3
 
B25004e1
B25004e2
B25004e3
B25004e4
B25004e5
B25004e6
B25004e7
B25004e8
 
B25005e1
B25005e2
B25005e3
 
B25006e1
B25006e2
B25006e3
B25006e4
B25006e5
B25006e6
B25006e7
B25006e8
B25006e9
B25006e10
 
B25007e1
B25007e2
B25007e3
B25007e4
B25007e5
B25007e6
B25007e7
B25007e8
B25007e9
B25007e10
B25007e11
B25007e12
B25007e13
B25007e14
B25007e15
B25007e16
B25007e17
B25007e18
B25007e19
B25007e20
B25007e21
 
B25008e1
B25008e2
B25008e3
 
B25009e1
B25009e2
B25009e3
B25009e4
B25009e5
B25009e6
B25009e7
B25009e8
B25009e9
B25009e10
B25009e11
B25009e12
B25009e13
B25009e14
B25009e15
B25009e16
B25009e17
 
B25010e1
B25010e2
B25010e3
 
B25011e1
B25011e2
B25011e3
B25011e4
B25011e5
B25011e6
B25011e7
B25011e8
B25011e9
B25011e10
B25011e11
B25011e12
B25011e13
B25011e14
B25011e15
B25011e16
B25011e17
B25011e18
B25011e19
B25011e20
B25011e21
B25011e22
B25011e23
B25011e24
B25011e25
B25011e26
B25011e27
B25011e28
B25011e29
B25011e30
B25011e31
B25011e32
B25011e33
B25011e34
B25011e35
B25011e36
B25011e37
B25011e38
B25011e39
B25011e40
B25011e41
B25011e42
B25011e43
B25011e44
B25011e45
B25011e46
B25011e47
B25011e48
B25011e49
 
B25012e1
B25012e2
B25012e3
B25012e4
B25012e5
B25012e6
B25012e7
B25012e8
B25012e9
B25012e10
B25012e11
B25012e12
B25012e13
B25012e14
B25012e15
B25012e16
B25012e17
 
B25013e1
B25013e2
B25013e3
B25013e4
B25013e5
B25013e6
B25013e7
B25013e8
B25013e9
B25013e10
B25013e11
 
B25014e1
B25014e2
B25014e3
B25014e4
B25014e5
B25014e6
B25014e7
B25014e8
B25014e9
B25014e10
B25014e11
B25014e12
B25014e13
 
B25014Ae1
B25014Ae2
B25014Ae3
 
B25014Be1
B25014Be2
B25014Be3
 
B25014Ce1
B25014Ce2
B25014Ce3
 
B25014De1
B25014De2
B25014De3
 
B25014Ee1
B25014Ee2
B25014Ee3
 
B25014Fe1
B25014Fe2
B25014Fe3
 
B25014Ge1
B25014Ge2
B25014Ge3
 
B25014He1
B25014He2
B25014He3
 
B25014Ie1
B25014Ie2
B25014Ie3
 
B25015e1
B25015e2
B25015e3
B25015e4
B25015e5
B25015e6
B25015e7
B25015e8
B25015e9
B25015e10
B25015e11
B25015e12
B25015e13
B25015e14
B25015e15
B25015e16
B25015e17
B25015e18
B25015e19
B25015e20
B25015e21
B25015e22
B25015e23
B25015e24
B25015e25
B25015e26
B25015e27
;
RUN;
TITLE2;
