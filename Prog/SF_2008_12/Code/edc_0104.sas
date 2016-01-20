TITLE2 "e20125dc0104000";
DATA work.SFe0104dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0104000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*YEAR STRUCTURE BUILT */
/*Universe:  Housing units */
 
B25034e1='Total:'
B25034e2='Built 2010 or later'
B25034e3='Built 2000 to 2009'
B25034e4='Built 1990 to 1999'
B25034e5='Built 1980 to 1989'
B25034e6='Built 1970 to 1979'
B25034e7='Built 1960 to 1969'
B25034e8='Built 1950 to 1959'
B25034e9='Built 1940 to 1949'
B25034e10='Built 1939 or earlier'
/*MEDIAN YEAR STRUCTURE BUILT */
/*Universe:  Housing units */
 
B25035e1='Median year structure built'
/*TENURE BY YEAR STRUCTURE BUILT */
/*Universe:  Occupied housing units */
 
B25036e1='Total:'
B25036e2='Owner occupied:'
B25036e3='Built 2010 or later'
B25036e4='Built 2000 to 2009'
B25036e5='Built 1990 to 1999'
B25036e6='Built 1980 to 1989'
B25036e7='Built 1970 to 1979'
B25036e8='Built 1960 to 1969'
B25036e9='Built 1950 to 1959'
B25036e10='Built 1940 to 1949'
B25036e11='Built 1939 or earlier'
B25036e12='Renter occupied:'
B25036e13='Built 2010 or later'
B25036e14='Built 2000 to 2009'
B25036e15='Built 1990 to 1999'
B25036e16='Built 1980 to 1989'
B25036e17='Built 1970 to 1979'
B25036e18='Built 1960 to 1969'
B25036e19='Built 1950 to 1959'
B25036e20='Built 1940 to 1949'
B25036e21='Built 1939 or earlier'
/*MEDIAN YEAR STRUCTURE BUILT BY TENURE */
/*Universe:  Occupied housing units */
/*Median year structure built -- */
 
B25037e1='Total:'
B25037e2='Owner occupied'
B25037e3='Renter occupied'
/*TENURE BY YEAR HOUSEHOLDER MOVED INTO UNIT */
/*Universe:  Occupied housing units */
 
B25038e1='Total:'
B25038e2='Owner occupied:'
B25038e3='Moved in 2010 or later'
B25038e4='Moved in 2000 to 2009'
B25038e5='Moved in 1990 to 1999'
B25038e6='Moved in 1980 to 1989'
B25038e7='Moved in 1970 to 1979'
B25038e8='Moved in 1969 or earlier'
B25038e9='Renter occupied:'
B25038e10='Moved in 2010 or later'
B25038e11='Moved in 2000 to 2009'
B25038e12='Moved in 1990 to 1999'
B25038e13='Moved in 1980 to 1989'
B25038e14='Moved in 1970 to 1979'
B25038e15='Moved in 1969 or earlier'
/*MEDIAN YEAR HOUSEHOLDER MOVED INTO UNIT BY TENURE */
/*Universe:  Occupied housing units */
/*Median year householder moved into unit -- */
 
B25039e1='Total:'
B25039e2='Owner occupied'
B25039e3='Renter occupied'
/*HOUSE HEATING FUEL */
/*Universe:  Occupied housing units */
 
B25040e1='Total:'
B25040e2='Utility gas'
B25040e3='Bottled, tank, or LP gas'
B25040e4='Electricity'
B25040e5='Fuel oil, kerosene, etc.'
B25040e6='Coal or coke'
B25040e7='Wood'
B25040e8='Solar energy'
B25040e9='Other fuel'
B25040e10='No fuel used'
/*BEDROOMS */
/*Universe:  Housing units */
 
B25041e1='Total:'
B25041e2='No bedroom'
B25041e3='1 bedroom'
B25041e4='2 bedrooms'
B25041e5='3 bedrooms'
B25041e6='4 bedrooms'
B25041e7='5 or more bedrooms'
/*TENURE BY BEDROOMS */
/*Universe:  Occupied housing units */
 
B25042e1='Total:'
B25042e2='Owner occupied:'
B25042e3='No bedroom'
B25042e4='1 bedroom'
B25042e5='2 bedrooms'
B25042e6='3 bedrooms'
B25042e7='4 bedrooms'
B25042e8='5 or more bedrooms'
B25042e9='Renter occupied:'
B25042e10='No bedroom'
B25042e11='1 bedroom'
B25042e12='2 bedrooms'
B25042e13='3 bedrooms'
B25042e14='4 bedrooms'
B25042e15='5 or more bedrooms'
/*TENURE BY TELEPHONE SERVICE AVAILABLE BY AGE OF HOUSEHOLDER */
/*Universe:  Occupied housing units */
 
B25043e1='Total:'
B25043e2='Owner occupied:'
B25043e3='With telephone service available:'
B25043e4='Householder 15 to 34 years'
B25043e5='Householder 35 to 64 years'
B25043e6='Householder 65 years and over'
B25043e7='No telephone service available:'
B25043e8='Householder 15 to 34 years'
B25043e9='Householder 35 to 64 years'
B25043e10='Householder 65 years and over'
B25043e11='Renter occupied:'
B25043e12='With telephone service available:'
B25043e13='Householder 15 to 34 years'
B25043e14='Householder 35 to 64 years'
B25043e15='Householder 65 years and over'
B25043e16='No telephone service available:'
B25043e17='Householder 15 to 34 years'
B25043e18='Householder 35 to 64 years'
B25043e19='Householder 65 years and over'
/*TENURE BY VEHICLES AVAILABLE */
/*Universe:  Occupied housing units */
 
B25044e1='Total:'
B25044e2='Owner occupied:'
B25044e3='No vehicle available'
B25044e4='1 vehicle available'
B25044e5='2 vehicles available'
B25044e6='3 vehicles available'
B25044e7='4 vehicles available'
B25044e8='5 or more vehicles available'
B25044e9='Renter occupied:'
B25044e10='No vehicle available'
B25044e11='1 vehicle available'
B25044e12='2 vehicles available'
B25044e13='3 vehicles available'
B25044e14='4 vehicles available'
B25044e15='5 or more vehicles available'
/*TENURE BY VEHICLES AVAILABLE BY AGE OF HOUSEHOLDER */
/*Universe:  Occupied housing units */
 
B25045e1='Total:'
B25045e2='Owner occupied:'
B25045e3='No vehicle available:'
B25045e4='Householder 15 to 34 years'
B25045e5='Householder 35 to 64 years'
B25045e6='Householder 65 years and over'
B25045e7='1 or more vehicles available:'
B25045e8='Householder 15 to 34 years'
B25045e9='Householder 35 to 64 years'
B25045e10='Householder 65 years and over'
B25045e11='Renter occupied:'
B25045e12='No vehicle available:'
B25045e13='Householder 15 to 34 years'
B25045e14='Householder 35 to 64 years'
B25045e15='Householder 65 years and over'
B25045e16='1 or more vehicles available:'
B25045e17='Householder 15 to 34 years'
B25045e18='Householder 35 to 64 years'
B25045e19='Householder 65 years and over'
/*AGGREGATE NUMBER OF VEHICLES AVAILABLE BY TENURE */
/*Universe:  Occupied housing units */
 
B25046e1='Aggregate number of vehicles available:'
B25046e2='Owner occupied'
B25046e3='Renter occupied'
/*PLUMBING FACILITIES FOR ALL HOUSING UNITS */
/*Universe:  Housing units */
 
B25047e1='Total:'
B25047e2='Complete plumbing facilities'
B25047e3='Lacking complete plumbing facilities'
/*PLUMBING FACILITIES FOR OCCUPIED HOUSING UNITS */
/*Universe:  Occupied housing units */
 
B25048e1='Total:'
B25048e2='Complete plumbing facilities'
B25048e3='Lacking complete plumbing facilities'
/*TENURE BY PLUMBING FACILITIES */
/*Universe:  Occupied housing units */
 
B25049e1='Total:'
B25049e2='Owner occupied:'
B25049e3='Complete plumbing facilities'
B25049e4='Lacking plumbing facilities'
B25049e5='Renter occupied:'
B25049e6='Complete plumbing facilities'
B25049e7='Lacking plumbing facilities'
/*PLUMBING FACILITIES BY OCCUPANTS PER ROOM BY YEAR STRUCTURE BUILT */
/*Universe:  Occupied housing units */
 
B25050e1='Total:'
B25050e2='Complete plumbing facilities:'
B25050e3='1.00 or less occupants per room:'
B25050e4='Built 1950 or later'
B25050e5='Built 1940 to 1949'
B25050e6='Built 1939 or earlier'
B25050e7='1.01 or more occupants per room:'
B25050e8='Built 1950 or later'
B25050e9='Built 1940 to 1949'
B25050e10='Built 1939 or earlier'
B25050e11='Lacking complete plumbing facilities:'
B25050e12='1.00 or less occupants per room:'
B25050e13='Built 1950 or later'
B25050e14='Built 1940 to 1949'
B25050e15='Built 1939 or earlier'
B25050e16='1.01 or more occupants per room:'
B25050e17='Built 1950 or later'
B25050e18='Built 1940 to 1949'
B25050e19='Built 1939 or earlier'
/*KITCHEN FACILITIES FOR ALL HOUSING UNITS */
/*Universe:  Housing units */
 
B25051e1='Total:'
B25051e2='Complete kitchen facilities'
B25051e3='Lacking complete kitchen facilities'
/*KITCHEN FACILITIES FOR OCCUPIED HOUSING UNITS */
/*Universe:  Occupied housing units */
 
B25052e1='Total:'
B25052e2='Complete kitchen facilities'
B25052e3='Lacking complete kitchen facilities'
/*TENURE BY KITCHEN FACILITIES */
/*Universe:  Occupied housing units */
 
B25053e1='Total:'
B25053e2='Owner occupied:'
B25053e3='Complete kitchen facilities'
B25053e4='Lacking complete kitchen facilities'
B25053e5='Renter occupied:'
B25053e6='Complete kitchen facilities'
B25053e7='Lacking complete kitchen facilities'
/*KITCHEN FACILITIES BY MEALS INCLUDED IN RENT */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B25054e1='Total:'
B25054e2='Complete kitchen facilities:'
B25054e3='Meals included in rent'
B25054e4='No meals included in rent'
B25054e5='Lacking complete kitchen facilities:'
B25054e6='Meals included in rent'
B25054e7='No meals included in rent'
/*AGE OF HOUSEHOLDER BY MEALS INCLUDED IN RENT */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B25055e1='Total:'
B25055e2='Householder 15 to 54 years:'
B25055e3='Meals included in rent'
B25055e4='No meals included in rent'
B25055e5='Householder 55 to 64 years:'
B25055e6='Meals included in rent'
B25055e7='No meals included in rent'
B25055e8='Householder 65 to 74 years:'
B25055e9='Meals included in rent'
B25055e10='No meals included in rent'
B25055e11='Householder 75 years and over:'
B25055e12='Meals included in rent'
B25055e13='No meals included in rent'
/*CONTRACT RENT */
/*Universe:  Renter-occupied housing units */
 
B25056e1='Total:'
B25056e2='With cash rent:'
B25056e3='Less than $100'
B25056e4='$100 to $149'
B25056e5='$150 to $199'
B25056e6='$200 to $249'
B25056e7='$250 to $299'
B25056e8='$300 to $349'
B25056e9='$350 to $399'
B25056e10='$400 to $449'
B25056e11='$450 to $499'
B25056e12='$500 to $549'
B25056e13='$550 to $599'
B25056e14='$600 to $649'
B25056e15='$650 to $699'
B25056e16='$700 to $749'
B25056e17='$750 to $799'
B25056e18='$800 to $899'
B25056e19='$900 to $999'
B25056e20='$1,000 to $1,249'
B25056e21='$1,250 to $1,499'
B25056e22='$1,500 to $1,999'
B25056e23='$2,000 or more'
B25056e24='No cash rent'
/*LOWER CONTRACT RENT QUARTILE (DOLLARS) */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B25057e1='Lower contract rent quartile'
/*MEDIAN CONTRACT RENT (DOLLARS) */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B25058e1='Median contract rent'
/*UPPER CONTRACT RENT QUARTILE (DOLLARS) */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B25059e1='Upper contract rent quartile'
/*AGGREGATE CONTRACT RENT (DOLLARS) */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B25060e1='Aggregate contract rent'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B25034e1
B25034e2
B25034e3
B25034e4
B25034e5
B25034e6
B25034e7
B25034e8
B25034e9
B25034e10
 
B25035e1
 
B25036e1
B25036e2
B25036e3
B25036e4
B25036e5
B25036e6
B25036e7
B25036e8
B25036e9
B25036e10
B25036e11
B25036e12
B25036e13
B25036e14
B25036e15
B25036e16
B25036e17
B25036e18
B25036e19
B25036e20
B25036e21
 
B25037e1
B25037e2
B25037e3
 
B25038e1
B25038e2
B25038e3
B25038e4
B25038e5
B25038e6
B25038e7
B25038e8
B25038e9
B25038e10
B25038e11
B25038e12
B25038e13
B25038e14
B25038e15
 
B25039e1
B25039e2
B25039e3
 
B25040e1
B25040e2
B25040e3
B25040e4
B25040e5
B25040e6
B25040e7
B25040e8
B25040e9
B25040e10
 
B25041e1
B25041e2
B25041e3
B25041e4
B25041e5
B25041e6
B25041e7
 
B25042e1
B25042e2
B25042e3
B25042e4
B25042e5
B25042e6
B25042e7
B25042e8
B25042e9
B25042e10
B25042e11
B25042e12
B25042e13
B25042e14
B25042e15
 
B25043e1
B25043e2
B25043e3
B25043e4
B25043e5
B25043e6
B25043e7
B25043e8
B25043e9
B25043e10
B25043e11
B25043e12
B25043e13
B25043e14
B25043e15
B25043e16
B25043e17
B25043e18
B25043e19
 
B25044e1
B25044e2
B25044e3
B25044e4
B25044e5
B25044e6
B25044e7
B25044e8
B25044e9
B25044e10
B25044e11
B25044e12
B25044e13
B25044e14
B25044e15
 
B25045e1
B25045e2
B25045e3
B25045e4
B25045e5
B25045e6
B25045e7
B25045e8
B25045e9
B25045e10
B25045e11
B25045e12
B25045e13
B25045e14
B25045e15
B25045e16
B25045e17
B25045e18
B25045e19
 
B25046e1
B25046e2
B25046e3
 
B25047e1
B25047e2
B25047e3
 
B25048e1
B25048e2
B25048e3
 
B25049e1
B25049e2
B25049e3
B25049e4
B25049e5
B25049e6
B25049e7
 
B25050e1
B25050e2
B25050e3
B25050e4
B25050e5
B25050e6
B25050e7
B25050e8
B25050e9
B25050e10
B25050e11
B25050e12
B25050e13
B25050e14
B25050e15
B25050e16
B25050e17
B25050e18
B25050e19
 
B25051e1
B25051e2
B25051e3
 
B25052e1
B25052e2
B25052e3
 
B25053e1
B25053e2
B25053e3
B25053e4
B25053e5
B25053e6
B25053e7
 
B25054e1
B25054e2
B25054e3
B25054e4
B25054e5
B25054e6
B25054e7
 
B25055e1
B25055e2
B25055e3
B25055e4
B25055e5
B25055e6
B25055e7
B25055e8
B25055e9
B25055e10
B25055e11
B25055e12
B25055e13
 
B25056e1
B25056e2
B25056e3
B25056e4
B25056e5
B25056e6
B25056e7
B25056e8
B25056e9
B25056e10
B25056e11
B25056e12
B25056e13
B25056e14
B25056e15
B25056e16
B25056e17
B25056e18
B25056e19
B25056e20
B25056e21
B25056e22
B25056e23
B25056e24
 
B25057e1
 
B25058e1
 
B25059e1
 
B25060e1
;
RUN;
TITLE2;
