TITLE2 "e20125dc0024000";
DATA work.SFe0024dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0024000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*PLACE OF WORK FOR WORKERS 16 YEARS AND OVER--MICROPOLITAN STATISTICAL AREA LEVEL */
/*Universe:  Workers 16 years and over living in a Micropolitan Statistical Area */
 
B08017e1='Total:'
B08017e2='Living in a principal city:'
B08017e3='Worked in Micropolitan Statistical Area of residence:'
B08017e4='Worked in a principal city'
B08017e5='Worked outside any principal city'
B08017e6='Worked in a different Micropolitan Statistical Area:'
B08017e7='Worked in a principal city'
B08017e8='Worked outside any principal city'
B08017e9='Worked in a Metropolitan Statistical Area:'
B08017e10='Worked in a principal city'
B08017e11='Worked outside any principal city'
B08017e12='Worked outside any Metropolitan or Micropolitan Statistical Area'
B08017e13='Living outside any principal city:'
B08017e14='Worked in Micropolitan Statistical Area of residence:'
B08017e15='Worked in a principal city'
B08017e16='Worked outside any principal city'
B08017e17='Worked in a different Micropolitan Statistical Area:'
B08017e18='Worked in a principal city'
B08017e19='Worked outside any principal city'
B08017e20='Worked in a Metropolitan Statistical Area:'
B08017e21='Worked in a principal city'
B08017e22='Worked outside any principal city'
B08017e23='Worked outside any Metropolitan or Micropolitan Statistical Area'
/*PLACE OF WORK FOR WORKERS 16 YEARS AND OVER--NOT METROPOLITAN OR MICROPOLITAN STATISTICAL AREA LEVEL */
/*Universe:  Workers 16 years and over not living in a Metropolitan or Micropolitan Statistical Area */
 
B08018e1='Total:'
B08018e2='Worked in a Metropolitan Statistical Area:'
B08018e3='Worked in a principal city'
B08018e4='Worked outside any principal city'
B08018e5='Worked in a Micropolitan Statistical Area:'
B08018e6='Worked in a principal city'
B08018e7='Worked outside any principal city'
B08018e8='Worked outside any Metropolitan or Micropolitan Statistical Area'
/*MEANS OF TRANSPORTATION TO WORK BY AGE */
/*Universe:  Workers 16 years and over */
 
B08101e1='Total:'
B08101e2='16 to 19 years'
B08101e3='20 to 24 years'
B08101e4='25 to 44 years'
B08101e5='45 to 54 years'
B08101e6='55 to 59 years'
B08101e7='60 to 64 years'
B08101e8='65 years and over'
B08101e9='Car, truck, or van - drove alone:'
B08101e10='16 to 19 years'
B08101e11='20 to 24 years'
B08101e12='25 to 44 years'
B08101e13='45 to 54 years'
B08101e14='55 to 59 years'
B08101e15='60 to 64 years'
B08101e16='65 years and over'
B08101e17='Car, truck, or van - carpooled:'
B08101e18='16 to 19 years'
B08101e19='20 to 24 years'
B08101e20='25 to 44 years'
B08101e21='45 to 54 years'
B08101e22='55 to 59 years'
B08101e23='60 to 64 years'
B08101e24='65 years and over'
B08101e25='Public transportation (excluding taxicab):'
B08101e26='16 to 19 years'
B08101e27='20 to 24 years'
B08101e28='25 to 44 years'
B08101e29='45 to 54 years'
B08101e30='55 to 59 years'
B08101e31='60 to 64 years'
B08101e32='65 years and over'
B08101e33='Walked:'
B08101e34='16 to 19 years'
B08101e35='20 to 24 years'
B08101e36='25 to 44 years'
B08101e37='45 to 54 years'
B08101e38='55 to 59 years'
B08101e39='60 to 64 years'
B08101e40='65 years and over'
B08101e41='Taxicab, motorcycle, bicycle, or other means:'
B08101e42='16 to 19 years'
B08101e43='20 to 24 years'
B08101e44='25 to 44 years'
B08101e45='45 to 54 years'
B08101e46='55 to 59 years'
B08101e47='60 to 64 years'
B08101e48='65 years and over'
B08101e49='Worked at home:'
B08101e50='16 to 19 years'
B08101e51='20 to 24 years'
B08101e52='25 to 44 years'
B08101e53='45 to 54 years'
B08101e54='55 to 59 years'
B08101e55='60 to 64 years'
B08101e56='65 years and over'
/*MEDIAN AGE BY MEANS OF TRANSPORTATION TO WORK */
/*Universe:  Workers 16 years and over */
/*Median age -- */
 
B08103e1='Total:'
B08103e2='Car, truck, or van - drove alone'
B08103e3='Car, truck, or van - carpooled'
B08103e4='Public transportation (excluding taxicab)'
B08103e5='Walked'
B08103e6='Taxicab, motorcycle, bicycle, or other means'
B08103e7='Worked at home'
/*MEANS OF TRANSPORTATION TO WORK (WHITE ALONE) */
/*Universe:  White alone workers 16 years and over */
 
B08105Ae1='Total:'
B08105Ae2='Car, truck, or van - drove alone'
B08105Ae3='Car, truck, or van - carpooled'
B08105Ae4='Public transportation (excluding taxicab)'
B08105Ae5='Walked'
B08105Ae6='Taxicab, motorcycle, bicycle, or other means'
B08105Ae7='Worked at home'
/*MEANS OF TRANSPORTATION TO WORK (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone workers 16 years and over */
 
B08105Be1='Total:'
B08105Be2='Car, truck, or van - drove alone'
B08105Be3='Car, truck, or van - carpooled'
B08105Be4='Public transportation (excluding taxicab)'
B08105Be5='Walked'
B08105Be6='Taxicab, motorcycle, bicycle, or other means'
B08105Be7='Worked at home'
/*MEANS OF TRANSPORTATION TO WORK (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone workers 16 years and over */
 
B08105Ce1='Total:'
B08105Ce2='Car, truck, or van - drove alone'
B08105Ce3='Car, truck, or van - carpooled'
B08105Ce4='Public transportation (excluding taxicab)'
B08105Ce5='Walked'
B08105Ce6='Taxicab, motorcycle, bicycle, or other means'
B08105Ce7='Worked at home'
/*MEANS OF TRANSPORTATION TO WORK (ASIAN ALONE) */
/*Universe:  Asian alone workers 16 years and over */
 
B08105De1='Total:'
B08105De2='Car, truck, or van - drove alone'
B08105De3='Car, truck, or van - carpooled'
B08105De4='Public transportation (excluding taxicab)'
B08105De5='Walked'
B08105De6='Taxicab, motorcycle, bicycle, or other means'
B08105De7='Worked at home'
/*MEANS OF TRANSPORTATION TO WORK (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone workers 16 years and over */
 
B08105Ee1='Total:'
B08105Ee2='Car, truck, or van - drove alone'
B08105Ee3='Car, truck, or van - carpooled'
B08105Ee4='Public transportation (excluding taxicab)'
B08105Ee5='Walked'
B08105Ee6='Taxicab, motorcycle, bicycle, or other means'
B08105Ee7='Worked at home'
/*MEANS OF TRANSPORTATION TO WORK (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone workers 16 years and over */
 
B08105Fe1='Total:'
B08105Fe2='Car, truck, or van - drove alone'
B08105Fe3='Car, truck, or van - carpooled'
B08105Fe4='Public transportation (excluding taxicab)'
B08105Fe5='Walked'
B08105Fe6='Taxicab, motorcycle, bicycle, or other means'
B08105Fe7='Worked at home'
/*MEANS OF TRANSPORTATION TO WORK (TWO OR MORE RACES) */
/*Universe:  Two or more races workers 16 years and over */
 
B08105Ge1='Total:'
B08105Ge2='Car, truck, or van - drove alone'
B08105Ge3='Car, truck, or van - carpooled'
B08105Ge4='Public transportation (excluding taxicab)'
B08105Ge5='Walked'
B08105Ge6='Taxicab, motorcycle, bicycle, or other means'
B08105Ge7='Worked at home'
/*MEANS OF TRANSPORTATION TO WORK (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino workers 16 years and over */
 
B08105He1='Total:'
B08105He2='Car, truck, or van - drove alone'
B08105He3='Car, truck, or van - carpooled'
B08105He4='Public transportation (excluding taxicab)'
B08105He5='Walked'
B08105He6='Taxicab, motorcycle, bicycle, or other means'
B08105He7='Worked at home'
/*MEANS OF TRANSPORTATION TO WORK (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino workers 16 years and over */
 
B08105Ie1='Total:'
B08105Ie2='Car, truck, or van - drove alone'
B08105Ie3='Car, truck, or van - carpooled'
B08105Ie4='Public transportation (excluding taxicab)'
B08105Ie5='Walked'
B08105Ie6='Taxicab, motorcycle, bicycle, or other means'
B08105Ie7='Worked at home'
/*MEANS OF TRANSPORTATION TO WORK BY CITIZENSHIP STATUS */
/*Universe:  Workers 16 years and over */
 
B08111e1='Total:'
B08111e2='Native'
B08111e3='Foreign born:'
B08111e4='Naturalized U.S. citizen'
B08111e5='Not a U.S. citizen'
B08111e6='Car, truck, or van - drove alone:'
B08111e7='Native'
B08111e8='Foreign born:'
B08111e9='Naturalized U.S. citizen'
B08111e10='Not a U.S. citizen'
B08111e11='Car, truck, or van - carpooled:'
B08111e12='Native'
B08111e13='Foreign born:'
B08111e14='Naturalized U.S. citizen'
B08111e15='Not a U.S. citizen'
B08111e16='Public transportation (excluding taxicab):'
B08111e17='Native'
B08111e18='Foreign born:'
B08111e19='Naturalized U.S. citizen'
B08111e20='Not a U.S. citizen'
B08111e21='Walked:'
B08111e22='Native'
B08111e23='Foreign born:'
B08111e24='Naturalized U.S. citizen'
B08111e25='Not a U.S. citizen'
B08111e26='Taxicab, motorcycle, bicycle, or other means:'
B08111e27='Native'
B08111e28='Foreign born:'
B08111e29='Naturalized U.S. citizen'
B08111e30='Not a U.S. citizen'
B08111e31='Worked at home:'
B08111e32='Native'
B08111e33='Foreign born:'
B08111e34='Naturalized U.S. citizen'
B08111e35='Not a U.S. citizen'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B08017e1
B08017e2
B08017e3
B08017e4
B08017e5
B08017e6
B08017e7
B08017e8
B08017e9
B08017e10
B08017e11
B08017e12
B08017e13
B08017e14
B08017e15
B08017e16
B08017e17
B08017e18
B08017e19
B08017e20
B08017e21
B08017e22
B08017e23
 
B08018e1
B08018e2
B08018e3
B08018e4
B08018e5
B08018e6
B08018e7
B08018e8
 
B08101e1
B08101e2
B08101e3
B08101e4
B08101e5
B08101e6
B08101e7
B08101e8
B08101e9
B08101e10
B08101e11
B08101e12
B08101e13
B08101e14
B08101e15
B08101e16
B08101e17
B08101e18
B08101e19
B08101e20
B08101e21
B08101e22
B08101e23
B08101e24
B08101e25
B08101e26
B08101e27
B08101e28
B08101e29
B08101e30
B08101e31
B08101e32
B08101e33
B08101e34
B08101e35
B08101e36
B08101e37
B08101e38
B08101e39
B08101e40
B08101e41
B08101e42
B08101e43
B08101e44
B08101e45
B08101e46
B08101e47
B08101e48
B08101e49
B08101e50
B08101e51
B08101e52
B08101e53
B08101e54
B08101e55
B08101e56
 
B08103e1
B08103e2
B08103e3
B08103e4
B08103e5
B08103e6
B08103e7
 
B08105Ae1
B08105Ae2
B08105Ae3
B08105Ae4
B08105Ae5
B08105Ae6
B08105Ae7
 
B08105Be1
B08105Be2
B08105Be3
B08105Be4
B08105Be5
B08105Be6
B08105Be7
 
B08105Ce1
B08105Ce2
B08105Ce3
B08105Ce4
B08105Ce5
B08105Ce6
B08105Ce7
 
B08105De1
B08105De2
B08105De3
B08105De4
B08105De5
B08105De6
B08105De7
 
B08105Ee1
B08105Ee2
B08105Ee3
B08105Ee4
B08105Ee5
B08105Ee6
B08105Ee7
 
B08105Fe1
B08105Fe2
B08105Fe3
B08105Fe4
B08105Fe5
B08105Fe6
B08105Fe7
 
B08105Ge1
B08105Ge2
B08105Ge3
B08105Ge4
B08105Ge5
B08105Ge6
B08105Ge7
 
B08105He1
B08105He2
B08105He3
B08105He4
B08105He5
B08105He6
B08105He7
 
B08105Ie1
B08105Ie2
B08105Ie3
B08105Ie4
B08105Ie5
B08105Ie6
B08105Ie7
 
B08111e1
B08111e2
B08111e3
B08111e4
B08111e5
B08111e6
B08111e7
B08111e8
B08111e9
B08111e10
B08111e11
B08111e12
B08111e13
B08111e14
B08111e15
B08111e16
B08111e17
B08111e18
B08111e19
B08111e20
B08111e21
B08111e22
B08111e23
B08111e24
B08111e25
B08111e26
B08111e27
B08111e28
B08111e29
B08111e30
B08111e31
B08111e32
B08111e33
B08111e34
B08111e35
;
RUN;
TITLE2;
