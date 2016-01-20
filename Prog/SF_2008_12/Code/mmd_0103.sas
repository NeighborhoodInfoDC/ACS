TITLE2 "m20125md0103000";
DATA work.SFm0103md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0103000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*TENURE BY PLUMBING FACILITIES BY OCCUPANTS PER ROOM */
/*Universe:  Occupied housing units */
 
B25016m1='Total:'
B25016m2='Owner occupied:'
B25016m3='Complete plumbing facilities:'
B25016m4='1.00 or less occupants per room'
B25016m5='1.01 to 1.50 occupants per room'
B25016m6='1.51 or more occupants per room'
B25016m7='Lacking complete plumbing facilities:'
B25016m8='1.00 or less occupants per room'
B25016m9='1.01 to 1.50 occupants per room'
B25016m10='1.51 or more occupants per room'
B25016m11='Renter occupied:'
B25016m12='Complete plumbing facilities:'
B25016m13='1.00 or less occupants per room'
B25016m14='1.01 to 1.50 occupants per room'
B25016m15='1.51 or more occupants per room'
B25016m16='Lacking complete plumbing facilities:'
B25016m17='1.00 or less occupants per room'
B25016m18='1.01 to 1.50 occupants per room'
B25016m19='1.51 or more occupants per room'
/*ROOMS */
/*Universe:  Housing units */
 
B25017m1='Total:'
B25017m2='1 room'
B25017m3='2 rooms'
B25017m4='3 rooms'
B25017m5='4 rooms'
B25017m6='5 rooms'
B25017m7='6 rooms'
B25017m8='7 rooms'
B25017m9='8 rooms'
B25017m10='9 or more rooms'
/*MEDIAN NUMBER OF ROOMS */
/*Universe:  Housing units */
 
B25018m1='Median number of rooms'
/*AGGREGATE NUMBER OF ROOMS */
/*Universe:  Housing units */
 
B25019m1='Aggregate number of rooms'
/*TENURE BY ROOMS */
/*Universe:  Occupied housing units */
 
B25020m1='Total:'
B25020m2='Owner occupied:'
B25020m3='1 room'
B25020m4='2 rooms'
B25020m5='3 rooms'
B25020m6='4 rooms'
B25020m7='5 rooms'
B25020m8='6 rooms'
B25020m9='7 rooms'
B25020m10='8 rooms'
B25020m11='9 or more rooms'
B25020m12='Renter occupied:'
B25020m13='1 room'
B25020m14='2 rooms'
B25020m15='3 rooms'
B25020m16='4 rooms'
B25020m17='5 rooms'
B25020m18='6 rooms'
B25020m19='7 rooms'
B25020m20='8 rooms'
B25020m21='9 or more rooms'
/*MEDIAN NUMBER OF ROOMS BY TENURE */
/*Universe:  Occupied housing units */
/*Median number of rooms -- */
 
B25021m1='Total:'
B25021m2='Owner occupied'
B25021m3='Renter occupied'
/*AGGREGATE NUMBER OF ROOMS BY TENURE */
/*Universe:  Occupied housing units */
 
B25022m1='Aggregate number of rooms:'
B25022m2='Owner occupied'
B25022m3='Renter occupied'
/*AGGREGATE NUMBER OF ROOMS BY VACANCY STATUS */
/*Universe:  Vacant housing units */
 
B25023m1='Aggregate number of rooms:'
B25023m2='For rent'
B25023m3='Rented, not occupied'
B25023m4='For sale only'
B25023m5='Sold, not occupied'
B25023m6='For seasonal, recreational, or occasional use'
B25023m7='For migrant workers'
B25023m8='Other vacant'
/*UNITS IN STRUCTURE */
/*Universe:  Housing units */
 
B25024m1='Total:'
B25024m2='1, detached'
B25024m3='1, attached'
B25024m4='2'
B25024m5='3 or 4'
B25024m6='5 to 9'
B25024m7='10 to 19'
B25024m8='20 to 49'
B25024m9='50 or more'
B25024m10='Mobile home'
B25024m11='Boat, RV, van, etc.'
/*TOTAL POPULATION IN OCCUPIED HOUSING UNITS BY TENURE BY YEAR HOUSEHOLDER MOVED INTO UNIT */
/*Universe:  Total population in occupied housing units */
 
B25026m1='Total population in occupied housing units:'
B25026m2='Owner occupied:'
B25026m3='Moved in 2010 or later'
B25026m4='Moved in 2000 to 2009'
B25026m5='Moved in 1990 to 1999'
B25026m6='Moved in 1980 to 1989'
B25026m7='Moved in 1970 to 1979'
B25026m8='Moved in 1969 or earlier'
B25026m9='Renter occupied:'
B25026m10='Moved in 2010 or later'
B25026m11='Moved in 2000 to 2009'
B25026m12='Moved in 1990 to 1999'
B25026m13='Moved in 1980 to 1989'
B25026m14='Moved in 1970 to 1979'
B25026m15='Moved in 1969 or earlier'
/*MORTGAGE STATUS BY AGE OF HOUSEHOLDER */
/*Universe:  Owner-occupied housing units */
 
B25027m1='Total:'
B25027m2='Housing units with a mortgage:'
B25027m3='Householder 15 to 34 years'
B25027m4='Householder 35 to 44 years'
B25027m5='Householder 45 to 54 years'
B25027m6='Householder 55 to 59 years'
B25027m7='Householder 60 to 64 years'
B25027m8='Householder 65 to 74 years'
B25027m9='Householder 75 years and over'
B25027m10='Housing units without a mortgage:'
B25027m11='Householder 15 to 34 years'
B25027m12='Householder 35 to 44 years'
B25027m13='Householder 45 to 54 years'
B25027m14='Householder 55 to 59 years'
B25027m15='Householder 60 to 64 years'
B25027m16='Householder 65 to 74 years'
B25027m17='Householder 75 years and over'
/*TENURE BY UNITS IN STRUCTURE */
/*Universe:  Occupied housing units */
 
B25032m1='Total:'
B25032m2='Owner-occupied housing units:'
B25032m3='1, detached'
B25032m4='1, attached'
B25032m5='2'
B25032m6='3 or 4'
B25032m7='5 to 9'
B25032m8='10 to 19'
B25032m9='20 to 49'
B25032m10='50 or more'
B25032m11='Mobile home'
B25032m12='Boat, RV, van, etc.'
B25032m13='Renter-occupied housing units:'
B25032m14='1, detached'
B25032m15='1, attached'
B25032m16='2'
B25032m17='3 or 4'
B25032m18='5 to 9'
B25032m19='10 to 19'
B25032m20='20 to 49'
B25032m21='50 or more'
B25032m22='Mobile home'
B25032m23='Boat, RV, van, etc.'
/*UNITS IN STRUCTURE (WHITE ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is White alone */
 
B25032Am1='Total:'
B25032Am2='1, detached'
B25032Am3='1, attached'
B25032Am4='2'
B25032Am5='3 or 4'
B25032Am6='5 to 9'
B25032Am7='10 to 19'
B25032Am8='20 to 49'
B25032Am9='50 or more'
B25032Am10='Mobile home'
B25032Am11='Boat, RV, van, etc.'
/*UNITS IN STRUCTURE (BLACK OR AFRICAN AMERICAN ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Black or African American alone */
 
B25032Bm1='Total:'
B25032Bm2='1, detached'
B25032Bm3='1, attached'
B25032Bm4='2'
B25032Bm5='3 or 4'
B25032Bm6='5 to 9'
B25032Bm7='10 to 19'
B25032Bm8='20 to 49'
B25032Bm9='50 or more'
B25032Bm10='Mobile home'
B25032Bm11='Boat, RV, van, etc.'
/*UNITS IN STRUCTURE (AMERICAN INDIAN AND ALASKA NATIVE ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is American Indian and Alaska Native alone */
 
B25032Cm1='Total:'
B25032Cm2='1, detached'
B25032Cm3='1, attached'
B25032Cm4='2'
B25032Cm5='3 or 4'
B25032Cm6='5 to 9'
B25032Cm7='10 to 19'
B25032Cm8='20 to 49'
B25032Cm9='50 or more'
B25032Cm10='Mobile home'
B25032Cm11='Boat, RV, van, etc.'
/*UNITS IN STRUCTURE (ASIAN ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Asian alone */
 
B25032Dm1='Total:'
B25032Dm2='1, detached'
B25032Dm3='1, attached'
B25032Dm4='2'
B25032Dm5='3 or 4'
B25032Dm6='5 to 9'
B25032Dm7='10 to 19'
B25032Dm8='20 to 49'
B25032Dm9='50 or more'
B25032Dm10='Mobile home'
B25032Dm11='Boat, RV, van, etc.'
/*UNITS IN STRUCTURE (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Native Hawaiian and Other Pacific Islander alone */
 
B25032Em1='Total:'
B25032Em2='1, detached'
B25032Em3='1, attached'
B25032Em4='2'
B25032Em5='3 or 4'
B25032Em6='5 to 9'
B25032Em7='10 to 19'
B25032Em8='20 to 49'
B25032Em9='50 or more'
B25032Em10='Mobile home'
B25032Em11='Boat, RV, van, etc.'
/*UNITS IN STRUCTURE (SOME OTHER RACE ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Some other race alone */
 
B25032Fm1='Total:'
B25032Fm2='1, detached'
B25032Fm3='1, attached'
B25032Fm4='2'
B25032Fm5='3 or 4'
B25032Fm6='5 to 9'
B25032Fm7='10 to 19'
B25032Fm8='20 to 49'
B25032Fm9='50 or more'
B25032Fm10='Mobile home'
B25032Fm11='Boat, RV, van, etc.'
/*UNITS IN STRUCTURE (TWO OR MORE RACES HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Two or more races */
 
B25032Gm1='Total:'
B25032Gm2='1, detached'
B25032Gm3='1, attached'
B25032Gm4='2'
B25032Gm5='3 or 4'
B25032Gm6='5 to 9'
B25032Gm7='10 to 19'
B25032Gm8='20 to 49'
B25032Gm9='50 or more'
B25032Gm10='Mobile home'
B25032Gm11='Boat, RV, van, etc.'
/*UNITS IN STRUCTURE (WHITE ALONE, NOT HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is White alone, not Hispanic or Latino */
 
B25032Hm1='Total:'
B25032Hm2='1, detached'
B25032Hm3='1, attached'
B25032Hm4='2'
B25032Hm5='3 or 4'
B25032Hm6='5 to 9'
B25032Hm7='10 to 19'
B25032Hm8='20 to 49'
B25032Hm9='50 or more'
B25032Hm10='Mobile home'
B25032Hm11='Boat, RV, van, etc.'
/*UNITS IN STRUCTURE (HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Hispanic or Latino */
 
B25032Im1='Total:'
B25032Im2='1, detached'
B25032Im3='1, attached'
B25032Im4='2'
B25032Im5='3 or 4'
B25032Im6='5 to 9'
B25032Im7='10 to 19'
B25032Im8='20 to 49'
B25032Im9='50 or more'
B25032Im10='Mobile home'
B25032Im11='Boat, RV, van, etc.'
/*TOTAL POPULATION IN OCCUPIED HOUSING UNITS BY TENURE BY UNITS IN STRUCTURE */
/*Universe:  Total population in occupied housing units */
 
B25033m1='Total:'
B25033m2='Owner occupied:'
B25033m3='1, detached or attached'
B25033m4='2 to 4'
B25033m5='5 or more'
B25033m6='Mobile home'
B25033m7='Boat, RV, van, etc.'
B25033m8='Renter occupied:'
B25033m9='1, detached or attached'
B25033m10='2 to 4'
B25033m11='5 or more'
B25033m12='Mobile home'
B25033m13='Boat, RV, van, etc.'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B25016m1
B25016m2
B25016m3
B25016m4
B25016m5
B25016m6
B25016m7
B25016m8
B25016m9
B25016m10
B25016m11
B25016m12
B25016m13
B25016m14
B25016m15
B25016m16
B25016m17
B25016m18
B25016m19
 
B25017m1
B25017m2
B25017m3
B25017m4
B25017m5
B25017m6
B25017m7
B25017m8
B25017m9
B25017m10
 
B25018m1
 
B25019m1
 
B25020m1
B25020m2
B25020m3
B25020m4
B25020m5
B25020m6
B25020m7
B25020m8
B25020m9
B25020m10
B25020m11
B25020m12
B25020m13
B25020m14
B25020m15
B25020m16
B25020m17
B25020m18
B25020m19
B25020m20
B25020m21
 
B25021m1
B25021m2
B25021m3
 
B25022m1
B25022m2
B25022m3
 
B25023m1
B25023m2
B25023m3
B25023m4
B25023m5
B25023m6
B25023m7
B25023m8
 
B25024m1
B25024m2
B25024m3
B25024m4
B25024m5
B25024m6
B25024m7
B25024m8
B25024m9
B25024m10
B25024m11
 
B25026m1
B25026m2
B25026m3
B25026m4
B25026m5
B25026m6
B25026m7
B25026m8
B25026m9
B25026m10
B25026m11
B25026m12
B25026m13
B25026m14
B25026m15
 
B25027m1
B25027m2
B25027m3
B25027m4
B25027m5
B25027m6
B25027m7
B25027m8
B25027m9
B25027m10
B25027m11
B25027m12
B25027m13
B25027m14
B25027m15
B25027m16
B25027m17
 
B25032m1
B25032m2
B25032m3
B25032m4
B25032m5
B25032m6
B25032m7
B25032m8
B25032m9
B25032m10
B25032m11
B25032m12
B25032m13
B25032m14
B25032m15
B25032m16
B25032m17
B25032m18
B25032m19
B25032m20
B25032m21
B25032m22
B25032m23
 
B25032Am1
B25032Am2
B25032Am3
B25032Am4
B25032Am5
B25032Am6
B25032Am7
B25032Am8
B25032Am9
B25032Am10
B25032Am11
 
B25032Bm1
B25032Bm2
B25032Bm3
B25032Bm4
B25032Bm5
B25032Bm6
B25032Bm7
B25032Bm8
B25032Bm9
B25032Bm10
B25032Bm11
 
B25032Cm1
B25032Cm2
B25032Cm3
B25032Cm4
B25032Cm5
B25032Cm6
B25032Cm7
B25032Cm8
B25032Cm9
B25032Cm10
B25032Cm11
 
B25032Dm1
B25032Dm2
B25032Dm3
B25032Dm4
B25032Dm5
B25032Dm6
B25032Dm7
B25032Dm8
B25032Dm9
B25032Dm10
B25032Dm11
 
B25032Em1
B25032Em2
B25032Em3
B25032Em4
B25032Em5
B25032Em6
B25032Em7
B25032Em8
B25032Em9
B25032Em10
B25032Em11
 
B25032Fm1
B25032Fm2
B25032Fm3
B25032Fm4
B25032Fm5
B25032Fm6
B25032Fm7
B25032Fm8
B25032Fm9
B25032Fm10
B25032Fm11
 
B25032Gm1
B25032Gm2
B25032Gm3
B25032Gm4
B25032Gm5
B25032Gm6
B25032Gm7
B25032Gm8
B25032Gm9
B25032Gm10
B25032Gm11
 
B25032Hm1
B25032Hm2
B25032Hm3
B25032Hm4
B25032Hm5
B25032Hm6
B25032Hm7
B25032Hm8
B25032Hm9
B25032Hm10
B25032Hm11
 
B25032Im1
B25032Im2
B25032Im3
B25032Im4
B25032Im5
B25032Im6
B25032Im7
B25032Im8
B25032Im9
B25032Im10
B25032Im11
 
B25033m1
B25033m2
B25033m3
B25033m4
B25033m5
B25033m6
B25033m7
B25033m8
B25033m9
B25033m10
B25033m11
B25033m12
B25033m13
;
RUN;
TITLE2;
