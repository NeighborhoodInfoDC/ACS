TITLE2 "e20125md0103000";
DATA work.SFe0103md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0103000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*TENURE BY PLUMBING FACILITIES BY OCCUPANTS PER ROOM */
/*Universe:  Occupied housing units */
 
B25016e1='Total:'
B25016e2='Owner occupied:'
B25016e3='Complete plumbing facilities:'
B25016e4='1.00 or less occupants per room'
B25016e5='1.01 to 1.50 occupants per room'
B25016e6='1.51 or more occupants per room'
B25016e7='Lacking complete plumbing facilities:'
B25016e8='1.00 or less occupants per room'
B25016e9='1.01 to 1.50 occupants per room'
B25016e10='1.51 or more occupants per room'
B25016e11='Renter occupied:'
B25016e12='Complete plumbing facilities:'
B25016e13='1.00 or less occupants per room'
B25016e14='1.01 to 1.50 occupants per room'
B25016e15='1.51 or more occupants per room'
B25016e16='Lacking complete plumbing facilities:'
B25016e17='1.00 or less occupants per room'
B25016e18='1.01 to 1.50 occupants per room'
B25016e19='1.51 or more occupants per room'
/*ROOMS */
/*Universe:  Housing units */
 
B25017e1='Total:'
B25017e2='1 room'
B25017e3='2 rooms'
B25017e4='3 rooms'
B25017e5='4 rooms'
B25017e6='5 rooms'
B25017e7='6 rooms'
B25017e8='7 rooms'
B25017e9='8 rooms'
B25017e10='9 or more rooms'
/*MEDIAN NUMBER OF ROOMS */
/*Universe:  Housing units */
 
B25018e1='Median number of rooms'
/*AGGREGATE NUMBER OF ROOMS */
/*Universe:  Housing units */
 
B25019e1='Aggregate number of rooms'
/*TENURE BY ROOMS */
/*Universe:  Occupied housing units */
 
B25020e1='Total:'
B25020e2='Owner occupied:'
B25020e3='1 room'
B25020e4='2 rooms'
B25020e5='3 rooms'
B25020e6='4 rooms'
B25020e7='5 rooms'
B25020e8='6 rooms'
B25020e9='7 rooms'
B25020e10='8 rooms'
B25020e11='9 or more rooms'
B25020e12='Renter occupied:'
B25020e13='1 room'
B25020e14='2 rooms'
B25020e15='3 rooms'
B25020e16='4 rooms'
B25020e17='5 rooms'
B25020e18='6 rooms'
B25020e19='7 rooms'
B25020e20='8 rooms'
B25020e21='9 or more rooms'
/*MEDIAN NUMBER OF ROOMS BY TENURE */
/*Universe:  Occupied housing units */
/*Median number of rooms -- */
 
B25021e1='Total:'
B25021e2='Owner occupied'
B25021e3='Renter occupied'
/*AGGREGATE NUMBER OF ROOMS BY TENURE */
/*Universe:  Occupied housing units */
 
B25022e1='Aggregate number of rooms:'
B25022e2='Owner occupied'
B25022e3='Renter occupied'
/*AGGREGATE NUMBER OF ROOMS BY VACANCY STATUS */
/*Universe:  Vacant housing units */
 
B25023e1='Aggregate number of rooms:'
B25023e2='For rent'
B25023e3='Rented, not occupied'
B25023e4='For sale only'
B25023e5='Sold, not occupied'
B25023e6='For seasonal, recreational, or occasional use'
B25023e7='For migrant workers'
B25023e8='Other vacant'
/*UNITS IN STRUCTURE */
/*Universe:  Housing units */
 
B25024e1='Total:'
B25024e2='1, detached'
B25024e3='1, attached'
B25024e4='2'
B25024e5='3 or 4'
B25024e6='5 to 9'
B25024e7='10 to 19'
B25024e8='20 to 49'
B25024e9='50 or more'
B25024e10='Mobile home'
B25024e11='Boat, RV, van, etc.'
/*TOTAL POPULATION IN OCCUPIED HOUSING UNITS BY TENURE BY YEAR HOUSEHOLDER MOVED INTO UNIT */
/*Universe:  Total population in occupied housing units */
 
B25026e1='Total population in occupied housing units:'
B25026e2='Owner occupied:'
B25026e3='Moved in 2010 or later'
B25026e4='Moved in 2000 to 2009'
B25026e5='Moved in 1990 to 1999'
B25026e6='Moved in 1980 to 1989'
B25026e7='Moved in 1970 to 1979'
B25026e8='Moved in 1969 or earlier'
B25026e9='Renter occupied:'
B25026e10='Moved in 2010 or later'
B25026e11='Moved in 2000 to 2009'
B25026e12='Moved in 1990 to 1999'
B25026e13='Moved in 1980 to 1989'
B25026e14='Moved in 1970 to 1979'
B25026e15='Moved in 1969 or earlier'
/*MORTGAGE STATUS BY AGE OF HOUSEHOLDER */
/*Universe:  Owner-occupied housing units */
 
B25027e1='Total:'
B25027e2='Housing units with a mortgage:'
B25027e3='Householder 15 to 34 years'
B25027e4='Householder 35 to 44 years'
B25027e5='Householder 45 to 54 years'
B25027e6='Householder 55 to 59 years'
B25027e7='Householder 60 to 64 years'
B25027e8='Householder 65 to 74 years'
B25027e9='Householder 75 years and over'
B25027e10='Housing units without a mortgage:'
B25027e11='Householder 15 to 34 years'
B25027e12='Householder 35 to 44 years'
B25027e13='Householder 45 to 54 years'
B25027e14='Householder 55 to 59 years'
B25027e15='Householder 60 to 64 years'
B25027e16='Householder 65 to 74 years'
B25027e17='Householder 75 years and over'
/*TENURE BY UNITS IN STRUCTURE */
/*Universe:  Occupied housing units */
 
B25032e1='Total:'
B25032e2='Owner-occupied housing units:'
B25032e3='1, detached'
B25032e4='1, attached'
B25032e5='2'
B25032e6='3 or 4'
B25032e7='5 to 9'
B25032e8='10 to 19'
B25032e9='20 to 49'
B25032e10='50 or more'
B25032e11='Mobile home'
B25032e12='Boat, RV, van, etc.'
B25032e13='Renter-occupied housing units:'
B25032e14='1, detached'
B25032e15='1, attached'
B25032e16='2'
B25032e17='3 or 4'
B25032e18='5 to 9'
B25032e19='10 to 19'
B25032e20='20 to 49'
B25032e21='50 or more'
B25032e22='Mobile home'
B25032e23='Boat, RV, van, etc.'
/*UNITS IN STRUCTURE (WHITE ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is White alone */
 
B25032Ae1='Total:'
B25032Ae2='1, detached'
B25032Ae3='1, attached'
B25032Ae4='2'
B25032Ae5='3 or 4'
B25032Ae6='5 to 9'
B25032Ae7='10 to 19'
B25032Ae8='20 to 49'
B25032Ae9='50 or more'
B25032Ae10='Mobile home'
B25032Ae11='Boat, RV, van, etc.'
/*UNITS IN STRUCTURE (BLACK OR AFRICAN AMERICAN ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Black or African American alone */
 
B25032Be1='Total:'
B25032Be2='1, detached'
B25032Be3='1, attached'
B25032Be4='2'
B25032Be5='3 or 4'
B25032Be6='5 to 9'
B25032Be7='10 to 19'
B25032Be8='20 to 49'
B25032Be9='50 or more'
B25032Be10='Mobile home'
B25032Be11='Boat, RV, van, etc.'
/*UNITS IN STRUCTURE (AMERICAN INDIAN AND ALASKA NATIVE ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is American Indian and Alaska Native alone */
 
B25032Ce1='Total:'
B25032Ce2='1, detached'
B25032Ce3='1, attached'
B25032Ce4='2'
B25032Ce5='3 or 4'
B25032Ce6='5 to 9'
B25032Ce7='10 to 19'
B25032Ce8='20 to 49'
B25032Ce9='50 or more'
B25032Ce10='Mobile home'
B25032Ce11='Boat, RV, van, etc.'
/*UNITS IN STRUCTURE (ASIAN ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Asian alone */
 
B25032De1='Total:'
B25032De2='1, detached'
B25032De3='1, attached'
B25032De4='2'
B25032De5='3 or 4'
B25032De6='5 to 9'
B25032De7='10 to 19'
B25032De8='20 to 49'
B25032De9='50 or more'
B25032De10='Mobile home'
B25032De11='Boat, RV, van, etc.'
/*UNITS IN STRUCTURE (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Native Hawaiian and Other Pacific Islander alone */
 
B25032Ee1='Total:'
B25032Ee2='1, detached'
B25032Ee3='1, attached'
B25032Ee4='2'
B25032Ee5='3 or 4'
B25032Ee6='5 to 9'
B25032Ee7='10 to 19'
B25032Ee8='20 to 49'
B25032Ee9='50 or more'
B25032Ee10='Mobile home'
B25032Ee11='Boat, RV, van, etc.'
/*UNITS IN STRUCTURE (SOME OTHER RACE ALONE HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Some other race alone */
 
B25032Fe1='Total:'
B25032Fe2='1, detached'
B25032Fe3='1, attached'
B25032Fe4='2'
B25032Fe5='3 or 4'
B25032Fe6='5 to 9'
B25032Fe7='10 to 19'
B25032Fe8='20 to 49'
B25032Fe9='50 or more'
B25032Fe10='Mobile home'
B25032Fe11='Boat, RV, van, etc.'
/*UNITS IN STRUCTURE (TWO OR MORE RACES HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Two or more races */
 
B25032Ge1='Total:'
B25032Ge2='1, detached'
B25032Ge3='1, attached'
B25032Ge4='2'
B25032Ge5='3 or 4'
B25032Ge6='5 to 9'
B25032Ge7='10 to 19'
B25032Ge8='20 to 49'
B25032Ge9='50 or more'
B25032Ge10='Mobile home'
B25032Ge11='Boat, RV, van, etc.'
/*UNITS IN STRUCTURE (WHITE ALONE, NOT HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is White alone, not Hispanic or Latino */
 
B25032He1='Total:'
B25032He2='1, detached'
B25032He3='1, attached'
B25032He4='2'
B25032He5='3 or 4'
B25032He6='5 to 9'
B25032He7='10 to 19'
B25032He8='20 to 49'
B25032He9='50 or more'
B25032He10='Mobile home'
B25032He11='Boat, RV, van, etc.'
/*UNITS IN STRUCTURE (HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Occupied housing units with a householder who is Hispanic or Latino */
 
B25032Ie1='Total:'
B25032Ie2='1, detached'
B25032Ie3='1, attached'
B25032Ie4='2'
B25032Ie5='3 or 4'
B25032Ie6='5 to 9'
B25032Ie7='10 to 19'
B25032Ie8='20 to 49'
B25032Ie9='50 or more'
B25032Ie10='Mobile home'
B25032Ie11='Boat, RV, van, etc.'
/*TOTAL POPULATION IN OCCUPIED HOUSING UNITS BY TENURE BY UNITS IN STRUCTURE */
/*Universe:  Total population in occupied housing units */
 
B25033e1='Total:'
B25033e2='Owner occupied:'
B25033e3='1, detached or attached'
B25033e4='2 to 4'
B25033e5='5 or more'
B25033e6='Mobile home'
B25033e7='Boat, RV, van, etc.'
B25033e8='Renter occupied:'
B25033e9='1, detached or attached'
B25033e10='2 to 4'
B25033e11='5 or more'
B25033e12='Mobile home'
B25033e13='Boat, RV, van, etc.'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B25016e1
B25016e2
B25016e3
B25016e4
B25016e5
B25016e6
B25016e7
B25016e8
B25016e9
B25016e10
B25016e11
B25016e12
B25016e13
B25016e14
B25016e15
B25016e16
B25016e17
B25016e18
B25016e19
 
B25017e1
B25017e2
B25017e3
B25017e4
B25017e5
B25017e6
B25017e7
B25017e8
B25017e9
B25017e10
 
B25018e1
 
B25019e1
 
B25020e1
B25020e2
B25020e3
B25020e4
B25020e5
B25020e6
B25020e7
B25020e8
B25020e9
B25020e10
B25020e11
B25020e12
B25020e13
B25020e14
B25020e15
B25020e16
B25020e17
B25020e18
B25020e19
B25020e20
B25020e21
 
B25021e1
B25021e2
B25021e3
 
B25022e1
B25022e2
B25022e3
 
B25023e1
B25023e2
B25023e3
B25023e4
B25023e5
B25023e6
B25023e7
B25023e8
 
B25024e1
B25024e2
B25024e3
B25024e4
B25024e5
B25024e6
B25024e7
B25024e8
B25024e9
B25024e10
B25024e11
 
B25026e1
B25026e2
B25026e3
B25026e4
B25026e5
B25026e6
B25026e7
B25026e8
B25026e9
B25026e10
B25026e11
B25026e12
B25026e13
B25026e14
B25026e15
 
B25027e1
B25027e2
B25027e3
B25027e4
B25027e5
B25027e6
B25027e7
B25027e8
B25027e9
B25027e10
B25027e11
B25027e12
B25027e13
B25027e14
B25027e15
B25027e16
B25027e17
 
B25032e1
B25032e2
B25032e3
B25032e4
B25032e5
B25032e6
B25032e7
B25032e8
B25032e9
B25032e10
B25032e11
B25032e12
B25032e13
B25032e14
B25032e15
B25032e16
B25032e17
B25032e18
B25032e19
B25032e20
B25032e21
B25032e22
B25032e23
 
B25032Ae1
B25032Ae2
B25032Ae3
B25032Ae4
B25032Ae5
B25032Ae6
B25032Ae7
B25032Ae8
B25032Ae9
B25032Ae10
B25032Ae11
 
B25032Be1
B25032Be2
B25032Be3
B25032Be4
B25032Be5
B25032Be6
B25032Be7
B25032Be8
B25032Be9
B25032Be10
B25032Be11
 
B25032Ce1
B25032Ce2
B25032Ce3
B25032Ce4
B25032Ce5
B25032Ce6
B25032Ce7
B25032Ce8
B25032Ce9
B25032Ce10
B25032Ce11
 
B25032De1
B25032De2
B25032De3
B25032De4
B25032De5
B25032De6
B25032De7
B25032De8
B25032De9
B25032De10
B25032De11
 
B25032Ee1
B25032Ee2
B25032Ee3
B25032Ee4
B25032Ee5
B25032Ee6
B25032Ee7
B25032Ee8
B25032Ee9
B25032Ee10
B25032Ee11
 
B25032Fe1
B25032Fe2
B25032Fe3
B25032Fe4
B25032Fe5
B25032Fe6
B25032Fe7
B25032Fe8
B25032Fe9
B25032Fe10
B25032Fe11
 
B25032Ge1
B25032Ge2
B25032Ge3
B25032Ge4
B25032Ge5
B25032Ge6
B25032Ge7
B25032Ge8
B25032Ge9
B25032Ge10
B25032Ge11
 
B25032He1
B25032He2
B25032He3
B25032He4
B25032He5
B25032He6
B25032He7
B25032He8
B25032He9
B25032He10
B25032He11
 
B25032Ie1
B25032Ie2
B25032Ie3
B25032Ie4
B25032Ie5
B25032Ie6
B25032Ie7
B25032Ie8
B25032Ie9
B25032Ie10
B25032Ie11
 
B25033e1
B25033e2
B25033e3
B25033e4
B25033e5
B25033e6
B25033e7
B25033e8
B25033e9
B25033e10
B25033e11
B25033e12
B25033e13
;
RUN;
TITLE2;
