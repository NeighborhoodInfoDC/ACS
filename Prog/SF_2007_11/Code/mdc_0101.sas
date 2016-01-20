TITLE2 "m20115dc0101000";
DATA work.SFm0101dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0101000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*YEAR STRUCTURE BUILT */
/*Universe:  Housing units */
 
B25034m1='Total:'
B25034m2='Built 2005 or later'
B25034m3='Built 2000 to 2004'
B25034m4='Built 1990 to 1999'
B25034m5='Built 1980 to 1989'
B25034m6='Built 1970 to 1979'
B25034m7='Built 1960 to 1969'
B25034m8='Built 1950 to 1959'
B25034m9='Built 1940 to 1949'
B25034m10='Built 1939 or earlier'
 
/*MEDIAN YEAR STRUCTURE BUILT */
/*Universe:  Housing units */
 
B25035m1='Median year structure built'
 
/*TENURE BY YEAR STRUCTURE BUILT */
/*Universe:  Occupied housing units */
 
B25036m1='Total:'
B25036m2='Owner occupied:'
B25036m3='Built 2005 or later'
B25036m4='Built 2000 to 2004'
B25036m5='Built 1990 to 1999'
B25036m6='Built 1980 to 1989'
B25036m7='Built 1970 to 1979'
B25036m8='Built 1960 to 1969'
B25036m9='Built 1950 to 1959'
B25036m10='Built 1940 to 1949'
B25036m11='Built 1939 or earlier'
B25036m12='Renter occupied:'
B25036m13='Built 2005 or later'
B25036m14='Built 2000 to 2004'
B25036m15='Built 1990 to 1999'
B25036m16='Built 1980 to 1989'
B25036m17='Built 1970 to 1979'
B25036m18='Built 1960 to 1969'
B25036m19='Built 1950 to 1959'
B25036m20='Built 1940 to 1949'
B25036m21='Built 1939 or earlier'
 
/*MEDIAN YEAR STRUCTURE BUILT BY TENURE */
/*Universe:  Occupied housing units */
/*Median year structure built -- */
 
B25037m1='Total:'
B25037m2='Owner occupied'
B25037m3='Renter occupied'
 
/*TENURE BY YEAR HOUSEHOLDER MOVED INTO UNIT */
/*Universe:  Occupied housing units */
 
B25038m1='Total:'
B25038m2='Owner occupied:'
B25038m3='Moved in 2005 or later'
B25038m4='Moved in 2000 to 2004'
B25038m5='Moved in 1990 to 1999'
B25038m6='Moved in 1980 to 1989'
B25038m7='Moved in 1970 to 1979'
B25038m8='Moved in 1969 or earlier'
B25038m9='Renter occupied:'
B25038m10='Moved in 2005 or later'
B25038m11='Moved in 2000 to 2004'
B25038m12='Moved in 1990 to 1999'
B25038m13='Moved in 1980 to 1989'
B25038m14='Moved in 1970 to 1979'
B25038m15='Moved in 1969 or earlier'
 
/*MEDIAN YEAR HOUSEHOLDER MOVED INTO UNIT BY TENURE */
/*Universe:  Occupied housing units */
/*Median year householder moved into unit -- */
 
B25039m1='Total:'
B25039m2='Owner occupied'
B25039m3='Renter occupied'
 
/*HOUSE HEATING FUEL */
/*Universe:  Occupied housing units */
 
B25040m1='Total:'
B25040m2='Utility gas'
B25040m3='Bottled, tank, or LP gas'
B25040m4='Electricity'
B25040m5='Fuel oil, kerosene, etc.'
B25040m6='Coal or coke'
B25040m7='Wood'
B25040m8='Solar energy'
B25040m9='Other fuel'
B25040m10='No fuel used'
 
/*BEDROOMS */
/*Universe:  Housing units */
 
B25041m1='Total:'
B25041m2='No bedroom'
B25041m3='1 bedroom'
B25041m4='2 bedrooms'
B25041m5='3 bedrooms'
B25041m6='4 bedrooms'
B25041m7='5 or more bedrooms'
 
/*TENURE BY BEDROOMS */
/*Universe:  Occupied housing units */
 
B25042m1='Total:'
B25042m2='Owner occupied:'
B25042m3='No bedroom'
B25042m4='1 bedroom'
B25042m5='2 bedrooms'
B25042m6='3 bedrooms'
B25042m7='4 bedrooms'
B25042m8='5 or more bedrooms'
B25042m9='Renter occupied:'
B25042m10='No bedroom'
B25042m11='1 bedroom'
B25042m12='2 bedrooms'
B25042m13='3 bedrooms'
B25042m14='4 bedrooms'
B25042m15='5 or more bedrooms'
 
/*TENURE BY TELEPHONE SERVICE AVAILABLE BY AGE OF HOUSEHOLDER */
/*Universe:  Occupied housing units */
 
B25043m1='Total:'
B25043m2='Owner occupied:'
B25043m3='With telephone service available:'
B25043m4='Householder 15 to 34 years'
B25043m5='Householder 35 to 64 years'
B25043m6='Householder 65 years and over'
B25043m7='No telephone service available:'
B25043m8='Householder 15 to 34 years'
B25043m9='Householder 35 to 64 years'
B25043m10='Householder 65 years and over'
B25043m11='Renter occupied:'
B25043m12='With telephone service available:'
B25043m13='Householder 15 to 34 years'
B25043m14='Householder 35 to 64 years'
B25043m15='Householder 65 years and over'
B25043m16='No telephone service available:'
B25043m17='Householder 15 to 34 years'
B25043m18='Householder 35 to 64 years'
B25043m19='Householder 65 years and over'
 
/*TENURE BY VEHICLES AVAILABLE */
/*Universe:  Occupied housing units */
 
B25044m1='Total:'
B25044m2='Owner occupied:'
B25044m3='No vehicle available'
B25044m4='1 vehicle available'
B25044m5='2 vehicles available'
B25044m6='3 vehicles available'
B25044m7='4 vehicles available'
B25044m8='5 or more vehicles available'
B25044m9='Renter occupied:'
B25044m10='No vehicle available'
B25044m11='1 vehicle available'
B25044m12='2 vehicles available'
B25044m13='3 vehicles available'
B25044m14='4 vehicles available'
B25044m15='5 or more vehicles available'
 
/*TENURE BY VEHICLES AVAILABLE BY AGE OF HOUSEHOLDER */
/*Universe:  Occupied housing units */
 
B25045m1='Total:'
B25045m2='Owner occupied:'
B25045m3='No vehicle available:'
B25045m4='Householder 15 to 34 years'
B25045m5='Householder 35 to 64 years'
B25045m6='Householder 65 years and over'
B25045m7='1 or more vehicles available:'
B25045m8='Householder 15 to 34 years'
B25045m9='Householder 35 to 64 years'
B25045m10='Householder 65 years and over'
B25045m11='Renter occupied:'
B25045m12='No vehicle available:'
B25045m13='Householder 15 to 34 years'
B25045m14='Householder 35 to 64 years'
B25045m15='Householder 65 years and over'
B25045m16='1 or more vehicles available:'
B25045m17='Householder 15 to 34 years'
B25045m18='Householder 35 to 64 years'
B25045m19='Householder 65 years and over'
 
/*AGGREGATE NUMBER OF VEHICLES AVAILABLE BY TENURE */
/*Universe:  Occupied housing units */
 
B25046m1='Aggregate number of vehicles available:'
B25046m2='Owner occupied'
B25046m3='Renter occupied'
 
/*PLUMBING FACILITIES FOR ALL HOUSING UNITS */
/*Universe:  Housing units */
 
B25047m1='Total:'
B25047m2='Complete plumbing facilities'
B25047m3='Lacking complete plumbing facilities'
 
/*PLUMBING FACILITIES FOR OCCUPIED HOUSING UNITS */
/*Universe:  Occupied housing units */
 
B25048m1='Total:'
B25048m2='Complete plumbing facilities'
B25048m3='Lacking complete plumbing facilities'
 
/*TENURE BY PLUMBING FACILITIES */
/*Universe:  Occupied housing units */
 
B25049m1='Total:'
B25049m2='Owner occupied:'
B25049m3='Complete plumbing facilities'
B25049m4='Lacking plumbing facilities'
B25049m5='Renter occupied:'
B25049m6='Complete plumbing facilities'
B25049m7='Lacking plumbing facilities'
 
/*PLUMBING FACILITIES BY OCCUPANTS PER ROOM BY YEAR STRUCTURE BUILT */
/*Universe:  Occupied housing units */
 
B25050m1='Total:'
B25050m2='Complete plumbing facilities:'
B25050m3='1.00 or less occupants per room:'
B25050m4='Built 1950 or later'
B25050m5='Built 1940 to 1949'
B25050m6='Built 1939 or earlier'
B25050m7='1.01 or more occupants per room:'
B25050m8='Built 1950 or later'
B25050m9='Built 1940 to 1949'
B25050m10='Built 1939 or earlier'
B25050m11='Lacking complete plumbing facilities:'
B25050m12='1.00 or less occupants per room:'
B25050m13='Built 1950 or later'
B25050m14='Built 1940 to 1949'
B25050m15='Built 1939 or earlier'
B25050m16='1.01 or more occupants per room:'
B25050m17='Built 1950 or later'
B25050m18='Built 1940 to 1949'
B25050m19='Built 1939 or earlier'
 
/*KITCHEN FACILITIES FOR ALL HOUSING UNITS */
/*Universe:  Housing units */
 
B25051m1='Total:'
B25051m2='Complete kitchen facilities'
B25051m3='Lacking complete kitchen facilities'
 
/*KITCHEN FACILITIES FOR OCCUPIED HOUSING UNITS */
/*Universe:  Occupied housing units */
 
B25052m1='Total:'
B25052m2='Complete kitchen facilities'
B25052m3='Lacking complete kitchen facilities'
 
/*TENURE BY KITCHEN FACILITIES */
/*Universe:  Occupied housing units */
 
B25053m1='Total:'
B25053m2='Owner occupied:'
B25053m3='Complete kitchen facilities'
B25053m4='Lacking complete kitchen facilities'
B25053m5='Renter occupied:'
B25053m6='Complete kitchen facilities'
B25053m7='Lacking complete kitchen facilities'
 
/*KITCHEN FACILITIES BY MEALS INCLUDED IN RENT */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B25054m1='Total:'
B25054m2='Complete kitchen facilities:'
B25054m3='Meals included in rent'
B25054m4='No meals included in rent'
B25054m5='Lacking complete kitchen facilities:'
B25054m6='Meals included in rent'
B25054m7='No meals included in rent'
 
/*AGE OF HOUSEHOLDER BY MEALS INCLUDED IN RENT */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B25055m1='Total:'
B25055m2='Householder 15 to 54 years:'
B25055m3='Meals included in rent'
B25055m4='No meals included in rent'
B25055m5='Householder 55 to 64 years:'
B25055m6='Meals included in rent'
B25055m7='No meals included in rent'
B25055m8='Householder 65 to 74 years:'
B25055m9='Meals included in rent'
B25055m10='No meals included in rent'
B25055m11='Householder 75 years and over:'
B25055m12='Meals included in rent'
B25055m13='No meals included in rent'
 
/*CONTRACT RENT */
/*Universe:  Renter-occupied housing units */
 
B25056m1='Total:'
B25056m2='With cash rent:'
B25056m3='Less than $100'
B25056m4='$100 to $149'
B25056m5='$150 to $199'
B25056m6='$200 to $249'
B25056m7='$250 to $299'
B25056m8='$300 to $349'
B25056m9='$350 to $399'
B25056m10='$400 to $449'
B25056m11='$450 to $499'
B25056m12='$500 to $549'
B25056m13='$550 to $599'
B25056m14='$600 to $649'
B25056m15='$650 to $699'
B25056m16='$700 to $749'
B25056m17='$750 to $799'
B25056m18='$800 to $899'
B25056m19='$900 to $999'
B25056m20='$1,000 to $1,249'
B25056m21='$1,250 to $1,499'
B25056m22='$1,500 to $1,999'
B25056m23='$2,000 or more'
B25056m24='No cash rent'
 
/*LOWER CONTRACT RENT QUARTILE (DOLLARS) */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B25057m1='Lower contract rent quartile'
 
/*MEDIAN CONTRACT RENT (DOLLARS) */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B25058m1='Median contract rent'
 
/*UPPER CONTRACT RENT QUARTILE (DOLLARS) */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B25059m1='Upper contract rent quartile'
 
/*AGGREGATE CONTRACT RENT (DOLLARS) */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B25060m1='Aggregate contract rent'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B25034m1
B25034m2
B25034m3
B25034m4
B25034m5
B25034m6
B25034m7
B25034m8
B25034m9
B25034m10
 
B25035m1
 
B25036m1
B25036m2
B25036m3
B25036m4
B25036m5
B25036m6
B25036m7
B25036m8
B25036m9
B25036m10
B25036m11
B25036m12
B25036m13
B25036m14
B25036m15
B25036m16
B25036m17
B25036m18
B25036m19
B25036m20
B25036m21
 
B25037m1
B25037m2
B25037m3
 
B25038m1
B25038m2
B25038m3
B25038m4
B25038m5
B25038m6
B25038m7
B25038m8
B25038m9
B25038m10
B25038m11
B25038m12
B25038m13
B25038m14
B25038m15
 
B25039m1
B25039m2
B25039m3
 
B25040m1
B25040m2
B25040m3
B25040m4
B25040m5
B25040m6
B25040m7
B25040m8
B25040m9
B25040m10
 
B25041m1
B25041m2
B25041m3
B25041m4
B25041m5
B25041m6
B25041m7
 
B25042m1
B25042m2
B25042m3
B25042m4
B25042m5
B25042m6
B25042m7
B25042m8
B25042m9
B25042m10
B25042m11
B25042m12
B25042m13
B25042m14
B25042m15
 
B25043m1
B25043m2
B25043m3
B25043m4
B25043m5
B25043m6
B25043m7
B25043m8
B25043m9
B25043m10
B25043m11
B25043m12
B25043m13
B25043m14
B25043m15
B25043m16
B25043m17
B25043m18
B25043m19
 
B25044m1
B25044m2
B25044m3
B25044m4
B25044m5
B25044m6
B25044m7
B25044m8
B25044m9
B25044m10
B25044m11
B25044m12
B25044m13
B25044m14
B25044m15
 
B25045m1
B25045m2
B25045m3
B25045m4
B25045m5
B25045m6
B25045m7
B25045m8
B25045m9
B25045m10
B25045m11
B25045m12
B25045m13
B25045m14
B25045m15
B25045m16
B25045m17
B25045m18
B25045m19
 
B25046m1
B25046m2
B25046m3
 
B25047m1
B25047m2
B25047m3
 
B25048m1
B25048m2
B25048m3
 
B25049m1
B25049m2
B25049m3
B25049m4
B25049m5
B25049m6
B25049m7
 
B25050m1
B25050m2
B25050m3
B25050m4
B25050m5
B25050m6
B25050m7
B25050m8
B25050m9
B25050m10
B25050m11
B25050m12
B25050m13
B25050m14
B25050m15
B25050m16
B25050m17
B25050m18
B25050m19
 
B25051m1
B25051m2
B25051m3
 
B25052m1
B25052m2
B25052m3
 
B25053m1
B25053m2
B25053m3
B25053m4
B25053m5
B25053m6
B25053m7
 
B25054m1
B25054m2
B25054m3
B25054m4
B25054m5
B25054m6
B25054m7
 
B25055m1
B25055m2
B25055m3
B25055m4
B25055m5
B25055m6
B25055m7
B25055m8
B25055m9
B25055m10
B25055m11
B25055m12
B25055m13
 
B25056m1
B25056m2
B25056m3
B25056m4
B25056m5
B25056m6
B25056m7
B25056m8
B25056m9
B25056m10
B25056m11
B25056m12
B25056m13
B25056m14
B25056m15
B25056m16
B25056m17
B25056m18
B25056m19
B25056m20
B25056m21
B25056m22
B25056m23
B25056m24
 
B25057m1
 
B25058m1
 
B25059m1
 
B25060m1
;
RUN;
TITLE2;
