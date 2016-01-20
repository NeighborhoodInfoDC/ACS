TITLE2 "m20125dc0024000";
DATA work.SFm0024dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0024000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*PLACE OF WORK FOR WORKERS 16 YEARS AND OVER--MICROPOLITAN STATISTICAL AREA LEVEL */
/*Universe:  Workers 16 years and over living in a Micropolitan Statistical Area */
 
B08017m1='Total:'
B08017m2='Living in a principal city:'
B08017m3='Worked in Micropolitan Statistical Area of residence:'
B08017m4='Worked in a principal city'
B08017m5='Worked outside any principal city'
B08017m6='Worked in a different Micropolitan Statistical Area:'
B08017m7='Worked in a principal city'
B08017m8='Worked outside any principal city'
B08017m9='Worked in a Metropolitan Statistical Area:'
B08017m10='Worked in a principal city'
B08017m11='Worked outside any principal city'
B08017m12='Worked outside any Metropolitan or Micropolitan Statistical Area'
B08017m13='Living outside any principal city:'
B08017m14='Worked in Micropolitan Statistical Area of residence:'
B08017m15='Worked in a principal city'
B08017m16='Worked outside any principal city'
B08017m17='Worked in a different Micropolitan Statistical Area:'
B08017m18='Worked in a principal city'
B08017m19='Worked outside any principal city'
B08017m20='Worked in a Metropolitan Statistical Area:'
B08017m21='Worked in a principal city'
B08017m22='Worked outside any principal city'
B08017m23='Worked outside any Metropolitan or Micropolitan Statistical Area'
/*PLACE OF WORK FOR WORKERS 16 YEARS AND OVER--NOT METROPOLITAN OR MICROPOLITAN STATISTICAL AREA LEVEL */
/*Universe:  Workers 16 years and over not living in a Metropolitan or Micropolitan Statistical Area */
 
B08018m1='Total:'
B08018m2='Worked in a Metropolitan Statistical Area:'
B08018m3='Worked in a principal city'
B08018m4='Worked outside any principal city'
B08018m5='Worked in a Micropolitan Statistical Area:'
B08018m6='Worked in a principal city'
B08018m7='Worked outside any principal city'
B08018m8='Worked outside any Metropolitan or Micropolitan Statistical Area'
/*MEANS OF TRANSPORTATION TO WORK BY AGE */
/*Universe:  Workers 16 years and over */
 
B08101m1='Total:'
B08101m2='16 to 19 years'
B08101m3='20 to 24 years'
B08101m4='25 to 44 years'
B08101m5='45 to 54 years'
B08101m6='55 to 59 years'
B08101m7='60 to 64 years'
B08101m8='65 years and over'
B08101m9='Car, truck, or van - drove alone:'
B08101m10='16 to 19 years'
B08101m11='20 to 24 years'
B08101m12='25 to 44 years'
B08101m13='45 to 54 years'
B08101m14='55 to 59 years'
B08101m15='60 to 64 years'
B08101m16='65 years and over'
B08101m17='Car, truck, or van - carpooled:'
B08101m18='16 to 19 years'
B08101m19='20 to 24 years'
B08101m20='25 to 44 years'
B08101m21='45 to 54 years'
B08101m22='55 to 59 years'
B08101m23='60 to 64 years'
B08101m24='65 years and over'
B08101m25='Public transportation (excluding taxicab):'
B08101m26='16 to 19 years'
B08101m27='20 to 24 years'
B08101m28='25 to 44 years'
B08101m29='45 to 54 years'
B08101m30='55 to 59 years'
B08101m31='60 to 64 years'
B08101m32='65 years and over'
B08101m33='Walked:'
B08101m34='16 to 19 years'
B08101m35='20 to 24 years'
B08101m36='25 to 44 years'
B08101m37='45 to 54 years'
B08101m38='55 to 59 years'
B08101m39='60 to 64 years'
B08101m40='65 years and over'
B08101m41='Taxicab, motorcycle, bicycle, or other means:'
B08101m42='16 to 19 years'
B08101m43='20 to 24 years'
B08101m44='25 to 44 years'
B08101m45='45 to 54 years'
B08101m46='55 to 59 years'
B08101m47='60 to 64 years'
B08101m48='65 years and over'
B08101m49='Worked at home:'
B08101m50='16 to 19 years'
B08101m51='20 to 24 years'
B08101m52='25 to 44 years'
B08101m53='45 to 54 years'
B08101m54='55 to 59 years'
B08101m55='60 to 64 years'
B08101m56='65 years and over'
/*MEDIAN AGE BY MEANS OF TRANSPORTATION TO WORK */
/*Universe:  Workers 16 years and over */
/*Median age -- */
 
B08103m1='Total:'
B08103m2='Car, truck, or van - drove alone'
B08103m3='Car, truck, or van - carpooled'
B08103m4='Public transportation (excluding taxicab)'
B08103m5='Walked'
B08103m6='Taxicab, motorcycle, bicycle, or other means'
B08103m7='Worked at home'
/*MEANS OF TRANSPORTATION TO WORK (WHITE ALONE) */
/*Universe:  White alone workers 16 years and over */
 
B08105Am1='Total:'
B08105Am2='Car, truck, or van - drove alone'
B08105Am3='Car, truck, or van - carpooled'
B08105Am4='Public transportation (excluding taxicab)'
B08105Am5='Walked'
B08105Am6='Taxicab, motorcycle, bicycle, or other means'
B08105Am7='Worked at home'
/*MEANS OF TRANSPORTATION TO WORK (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone workers 16 years and over */
 
B08105Bm1='Total:'
B08105Bm2='Car, truck, or van - drove alone'
B08105Bm3='Car, truck, or van - carpooled'
B08105Bm4='Public transportation (excluding taxicab)'
B08105Bm5='Walked'
B08105Bm6='Taxicab, motorcycle, bicycle, or other means'
B08105Bm7='Worked at home'
/*MEANS OF TRANSPORTATION TO WORK (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone workers 16 years and over */
 
B08105Cm1='Total:'
B08105Cm2='Car, truck, or van - drove alone'
B08105Cm3='Car, truck, or van - carpooled'
B08105Cm4='Public transportation (excluding taxicab)'
B08105Cm5='Walked'
B08105Cm6='Taxicab, motorcycle, bicycle, or other means'
B08105Cm7='Worked at home'
/*MEANS OF TRANSPORTATION TO WORK (ASIAN ALONE) */
/*Universe:  Asian alone workers 16 years and over */
 
B08105Dm1='Total:'
B08105Dm2='Car, truck, or van - drove alone'
B08105Dm3='Car, truck, or van - carpooled'
B08105Dm4='Public transportation (excluding taxicab)'
B08105Dm5='Walked'
B08105Dm6='Taxicab, motorcycle, bicycle, or other means'
B08105Dm7='Worked at home'
/*MEANS OF TRANSPORTATION TO WORK (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone workers 16 years and over */
 
B08105Em1='Total:'
B08105Em2='Car, truck, or van - drove alone'
B08105Em3='Car, truck, or van - carpooled'
B08105Em4='Public transportation (excluding taxicab)'
B08105Em5='Walked'
B08105Em6='Taxicab, motorcycle, bicycle, or other means'
B08105Em7='Worked at home'
/*MEANS OF TRANSPORTATION TO WORK (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone workers 16 years and over */
 
B08105Fm1='Total:'
B08105Fm2='Car, truck, or van - drove alone'
B08105Fm3='Car, truck, or van - carpooled'
B08105Fm4='Public transportation (excluding taxicab)'
B08105Fm5='Walked'
B08105Fm6='Taxicab, motorcycle, bicycle, or other means'
B08105Fm7='Worked at home'
/*MEANS OF TRANSPORTATION TO WORK (TWO OR MORE RACES) */
/*Universe:  Two or more races workers 16 years and over */
 
B08105Gm1='Total:'
B08105Gm2='Car, truck, or van - drove alone'
B08105Gm3='Car, truck, or van - carpooled'
B08105Gm4='Public transportation (excluding taxicab)'
B08105Gm5='Walked'
B08105Gm6='Taxicab, motorcycle, bicycle, or other means'
B08105Gm7='Worked at home'
/*MEANS OF TRANSPORTATION TO WORK (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino workers 16 years and over */
 
B08105Hm1='Total:'
B08105Hm2='Car, truck, or van - drove alone'
B08105Hm3='Car, truck, or van - carpooled'
B08105Hm4='Public transportation (excluding taxicab)'
B08105Hm5='Walked'
B08105Hm6='Taxicab, motorcycle, bicycle, or other means'
B08105Hm7='Worked at home'
/*MEANS OF TRANSPORTATION TO WORK (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino workers 16 years and over */
 
B08105Im1='Total:'
B08105Im2='Car, truck, or van - drove alone'
B08105Im3='Car, truck, or van - carpooled'
B08105Im4='Public transportation (excluding taxicab)'
B08105Im5='Walked'
B08105Im6='Taxicab, motorcycle, bicycle, or other means'
B08105Im7='Worked at home'
/*MEANS OF TRANSPORTATION TO WORK BY CITIZENSHIP STATUS */
/*Universe:  Workers 16 years and over */
 
B08111m1='Total:'
B08111m2='Native'
B08111m3='Foreign born:'
B08111m4='Naturalized U.S. citizen'
B08111m5='Not a U.S. citizen'
B08111m6='Car, truck, or van - drove alone:'
B08111m7='Native'
B08111m8='Foreign born:'
B08111m9='Naturalized U.S. citizen'
B08111m10='Not a U.S. citizen'
B08111m11='Car, truck, or van - carpooled:'
B08111m12='Native'
B08111m13='Foreign born:'
B08111m14='Naturalized U.S. citizen'
B08111m15='Not a U.S. citizen'
B08111m16='Public transportation (excluding taxicab):'
B08111m17='Native'
B08111m18='Foreign born:'
B08111m19='Naturalized U.S. citizen'
B08111m20='Not a U.S. citizen'
B08111m21='Walked:'
B08111m22='Native'
B08111m23='Foreign born:'
B08111m24='Naturalized U.S. citizen'
B08111m25='Not a U.S. citizen'
B08111m26='Taxicab, motorcycle, bicycle, or other means:'
B08111m27='Native'
B08111m28='Foreign born:'
B08111m29='Naturalized U.S. citizen'
B08111m30='Not a U.S. citizen'
B08111m31='Worked at home:'
B08111m32='Native'
B08111m33='Foreign born:'
B08111m34='Naturalized U.S. citizen'
B08111m35='Not a U.S. citizen'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B08017m1
B08017m2
B08017m3
B08017m4
B08017m5
B08017m6
B08017m7
B08017m8
B08017m9
B08017m10
B08017m11
B08017m12
B08017m13
B08017m14
B08017m15
B08017m16
B08017m17
B08017m18
B08017m19
B08017m20
B08017m21
B08017m22
B08017m23
 
B08018m1
B08018m2
B08018m3
B08018m4
B08018m5
B08018m6
B08018m7
B08018m8
 
B08101m1
B08101m2
B08101m3
B08101m4
B08101m5
B08101m6
B08101m7
B08101m8
B08101m9
B08101m10
B08101m11
B08101m12
B08101m13
B08101m14
B08101m15
B08101m16
B08101m17
B08101m18
B08101m19
B08101m20
B08101m21
B08101m22
B08101m23
B08101m24
B08101m25
B08101m26
B08101m27
B08101m28
B08101m29
B08101m30
B08101m31
B08101m32
B08101m33
B08101m34
B08101m35
B08101m36
B08101m37
B08101m38
B08101m39
B08101m40
B08101m41
B08101m42
B08101m43
B08101m44
B08101m45
B08101m46
B08101m47
B08101m48
B08101m49
B08101m50
B08101m51
B08101m52
B08101m53
B08101m54
B08101m55
B08101m56
 
B08103m1
B08103m2
B08103m3
B08103m4
B08103m5
B08103m6
B08103m7
 
B08105Am1
B08105Am2
B08105Am3
B08105Am4
B08105Am5
B08105Am6
B08105Am7
 
B08105Bm1
B08105Bm2
B08105Bm3
B08105Bm4
B08105Bm5
B08105Bm6
B08105Bm7
 
B08105Cm1
B08105Cm2
B08105Cm3
B08105Cm4
B08105Cm5
B08105Cm6
B08105Cm7
 
B08105Dm1
B08105Dm2
B08105Dm3
B08105Dm4
B08105Dm5
B08105Dm6
B08105Dm7
 
B08105Em1
B08105Em2
B08105Em3
B08105Em4
B08105Em5
B08105Em6
B08105Em7
 
B08105Fm1
B08105Fm2
B08105Fm3
B08105Fm4
B08105Fm5
B08105Fm6
B08105Fm7
 
B08105Gm1
B08105Gm2
B08105Gm3
B08105Gm4
B08105Gm5
B08105Gm6
B08105Gm7
 
B08105Hm1
B08105Hm2
B08105Hm3
B08105Hm4
B08105Hm5
B08105Hm6
B08105Hm7
 
B08105Im1
B08105Im2
B08105Im3
B08105Im4
B08105Im5
B08105Im6
B08105Im7
 
B08111m1
B08111m2
B08111m3
B08111m4
B08111m5
B08111m6
B08111m7
B08111m8
B08111m9
B08111m10
B08111m11
B08111m12
B08111m13
B08111m14
B08111m15
B08111m16
B08111m17
B08111m18
B08111m19
B08111m20
B08111m21
B08111m22
B08111m23
B08111m24
B08111m25
B08111m26
B08111m27
B08111m28
B08111m29
B08111m30
B08111m31
B08111m32
B08111m33
B08111m34
B08111m35
;
RUN;
TITLE2;
