TITLE2 "m20115dc0029000";
DATA work.SFm0029dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0029000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*SEX OF WORKERS BY MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B08406m1='Total:'
B08406m2='Car, truck, or van:'
B08406m3='Drove alone'
B08406m4='Carpooled:'
B08406m5='In 2-person carpool'
B08406m6='In 3-person carpool'
B08406m7='In 4-or-more-person carpool'
B08406m8='Public transportation (excluding taxicab):'
B08406m9='Bus or trolley bus'
B08406m10='Streetcar or trolley car (carro publico in Puerto Rico)'
B08406m11='Subway or elevated'
B08406m12='Railroad'
B08406m13='Ferryboat'
B08406m14='Bicycle'
B08406m15='Walked'
B08406m16='Taxicab, motorcycle, or other means'
B08406m17='Worked at home'
B08406m18='Male:'
B08406m19='Car, truck, or van:'
B08406m20='Drove alone'
B08406m21='Carpooled:'
B08406m22='In 2-person carpool'
B08406m23='In 3-person carpool'
B08406m24='In 4-or-more-person carpool'
B08406m25='Public transportation (excluding taxicab):'
B08406m26='Bus or trolley bus'
B08406m27='Streetcar or trolley car (carro publico in Puerto Rico)'
B08406m28='Subway or elevated'
B08406m29='Railroad'
B08406m30='Ferryboat'
B08406m31='Bicycle'
B08406m32='Walked'
B08406m33='Taxicab, motorcycle, or other means'
B08406m34='Worked at home'
B08406m35='Female:'
B08406m36='Car, truck, or van:'
B08406m37='Drove alone'
B08406m38='Carpooled:'
B08406m39='In 2-person carpool'
B08406m40='In 3-person carpool'
B08406m41='In 4-or-more-person carpool'
B08406m42='Public transportation (excluding taxicab):'
B08406m43='Bus or trolley bus'
B08406m44='Streetcar or trolley car (carro publico in Puerto Rico)'
B08406m45='Subway or elevated'
B08406m46='Railroad'
B08406m47='Ferryboat'
B08406m48='Bicycle'
B08406m49='Walked'
B08406m50='Taxicab, motorcycle, or other means'
B08406m51='Worked at home'
 
/*SEX OF WORKERS BY TRAVEL TIME TO WORK FOR WORKPLACE GEOGRAPHY */
/*Universe: Workers 16 years and over who did not work at home */
 
B08412m1='Total:'
B08412m2='Less than 5 minutes'
B08412m3='5 to 9 minutes'
B08412m4='10 to 14 minutes'
B08412m5='15 to 19 minutes'
B08412m6='20 to 24 minutes'
B08412m7='25 to 29 minutes'
B08412m8='30 to 34 minutes'
B08412m9='35 to 39 minutes'
B08412m10='40 to 44 minutes'
B08412m11='45 to 59 minutes'
B08412m12='60 to 89 minutes'
B08412m13='90 or more minutes'
B08412m14='Male:'
B08412m15='Less than 5 minutes'
B08412m16='5 to 9 minutes'
B08412m17='10 to 14 minutes'
B08412m18='15 to 19 minutes'
B08412m19='20 to 24 minutes'
B08412m20='25 to 29 minutes'
B08412m21='30 to 34 minutes'
B08412m22='35 to 39 minutes'
B08412m23='40 to 44 minutes'
B08412m24='45 to 59 minutes'
B08412m25='60 to 89 minutes'
B08412m26='90 or more minutes'
B08412m27='Female:'
B08412m28='Less than 5 minutes'
B08412m29='5 to 9 minutes'
B08412m30='10 to 14 minutes'
B08412m31='15 to 19 minutes'
B08412m32='20 to 24 minutes'
B08412m33='25 to 29 minutes'
B08412m34='30 to 34 minutes'
B08412m35='35 to 39 minutes'
B08412m36='40 to 44 minutes'
B08412m37='45 to 59 minutes'
B08412m38='60 to 89 minutes'
B08412m39='90 or more minutes'
 
/*MEANS OF TRANSPORTATION TO WORK BY AGE FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B08501m1='Total:'
B08501m2='16 to 19 years'
B08501m3='20 to 24 years'
B08501m4='25 to 44 years'
B08501m5='45 to 54 years'
B08501m6='55 to 59 years'
B08501m7='60 to 64 years'
B08501m8='65 years and over'
B08501m9='Car, truck, or van - drove alone:'
B08501m10='16 to 19 years'
B08501m11='20 to 24 years'
B08501m12='25 to 44 years'
B08501m13='45 to 54 years'
B08501m14='55 to 59 years'
B08501m15='60 to 64 years'
B08501m16='65 years and over'
B08501m17='Car, truck, or van - carpooled:'
B08501m18='16 to 19 years'
B08501m19='20 to 24 years'
B08501m20='25 to 44 years'
B08501m21='45 to 54 years'
B08501m22='55 to 59 years'
B08501m23='60 to 64 years'
B08501m24='65 years and over'
B08501m25='Public transportation (excluding taxicab):'
B08501m26='16 to 19 years'
B08501m27='20 to 24 years'
B08501m28='25 to 44 years'
B08501m29='45 to 54 years'
B08501m30='55 to 59 years'
B08501m31='60 to 64 years'
B08501m32='65 years and over'
B08501m33='Walked:'
B08501m34='16 to 19 years'
B08501m35='20 to 24 years'
B08501m36='25 to 44 years'
B08501m37='45 to 54 years'
B08501m38='55 to 59 years'
B08501m39='60 to 64 years'
B08501m40='65 years and over'
B08501m41='Taxicab, motorcycle, bicycle, or other means:'
B08501m42='16 to 19 years'
B08501m43='20 to 24 years'
B08501m44='25 to 44 years'
B08501m45='45 to 54 years'
B08501m46='55 to 59 years'
B08501m47='60 to 64 years'
B08501m48='65 years and over'
B08501m49='Worked at home:'
B08501m50='16 to 19 years'
B08501m51='20 to 24 years'
B08501m52='25 to 44 years'
B08501m53='45 to 54 years'
B08501m54='55 to 59 years'
B08501m55='60 to 64 years'
B08501m56='65 years and over'
 
/*MEDIAN AGE BY MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
/*Median age -- */
 
B08503m1='Total:'
B08503m2='Car, truck, or van - drove alone'
B08503m3='Car, truck, or van - carpooled'
B08503m4='Public transportation (excluding taxicab)'
B08503m5='Walked'
B08503m6='Taxicab, motorcycle, bicycle, or other means'
B08503m7='Worked at home'
 
/*MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY (WHITE ALONE) */
/*Universe:  White alone workers 16 years and over */
 
B08505Am1='Total:'
B08505Am2='Car, truck, or van - drove alone'
B08505Am3='Car, truck, or van - carpooled'
B08505Am4='Public transportation (excluding taxicab)'
B08505Am5='Walked'
B08505Am6='Taxicab, motorcycle, bicycle, or other means'
B08505Am7='Worked at home'
 
/*MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone workers 16 years and over */
 
B08505Bm1='Total:'
B08505Bm2='Car, truck, or van - drove alone'
B08505Bm3='Car, truck, or van - carpooled'
B08505Bm4='Public transportation (excluding taxicab)'
B08505Bm5='Walked'
B08505Bm6='Taxicab, motorcycle, bicycle, or other means'
B08505Bm7='Worked at home'
 
/*MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone workers 16 years and over */
 
B08505Cm1='Total:'
B08505Cm2='Car, truck, or van - drove alone'
B08505Cm3='Car, truck, or van - carpooled'
B08505Cm4='Public transportation (excluding taxicab)'
B08505Cm5='Walked'
B08505Cm6='Taxicab, motorcycle, bicycle, or other means'
B08505Cm7='Worked at home'
 
/*MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY (ASIAN ALONE) */
/*Universe:  Asian alone workers 16 years and over */
 
B08505Dm1='Total:'
B08505Dm2='Car, truck, or van - drove alone'
B08505Dm3='Car, truck, or van - carpooled'
B08505Dm4='Public transportation (excluding taxicab)'
B08505Dm5='Walked'
B08505Dm6='Taxicab, motorcycle, bicycle, or other means'
B08505Dm7='Worked at home'
 
/*MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone workers 16 years and over */
 
B08505Em1='Total:'
B08505Em2='Car, truck, or van - drove alone'
B08505Em3='Car, truck, or van - carpooled'
B08505Em4='Public transportation (excluding taxicab)'
B08505Em5='Walked'
B08505Em6='Taxicab, motorcycle, bicycle, or other means'
B08505Em7='Worked at home'
 
/*MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone workers 16 years and over */
 
B08505Fm1='Total:'
B08505Fm2='Car, truck, or van - drove alone'
B08505Fm3='Car, truck, or van - carpooled'
B08505Fm4='Public transportation (excluding taxicab)'
B08505Fm5='Walked'
B08505Fm6='Taxicab, motorcycle, bicycle, or other means'
B08505Fm7='Worked at home'
 
/*MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY (TWO OR MORE RACES) */
/*Universe:  Two or more races workers 16 years and over */
 
B08505Gm1='Total:'
B08505Gm2='Car, truck, or van - drove alone'
B08505Gm3='Car, truck, or van - carpooled'
B08505Gm4='Public transportation (excluding taxicab)'
B08505Gm5='Walked'
B08505Gm6='Taxicab, motorcycle, bicycle, or other means'
B08505Gm7='Worked at home'
 
/*MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino workers 16 years and over */
 
B08505Hm1='Total:'
B08505Hm2='Car, truck, or van - drove alone'
B08505Hm3='Car, truck, or van - carpooled'
B08505Hm4='Public transportation (excluding taxicab)'
B08505Hm5='Walked'
B08505Hm6='Taxicab, motorcycle, bicycle, or other means'
B08505Hm7='Worked at home'
 
/*MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino workers 16 years and over */
 
B08505Im1='Total:'
B08505Im2='Car, truck, or van - drove alone'
B08505Im3='Car, truck, or van - carpooled'
B08505Im4='Public transportation (excluding taxicab)'
B08505Im5='Walked'
B08505Im6='Taxicab, motorcycle, bicycle, or other means'
B08505Im7='Worked at home'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B08406m1
B08406m2
B08406m3
B08406m4
B08406m5
B08406m6
B08406m7
B08406m8
B08406m9
B08406m10
B08406m11
B08406m12
B08406m13
B08406m14
B08406m15
B08406m16
B08406m17
B08406m18
B08406m19
B08406m20
B08406m21
B08406m22
B08406m23
B08406m24
B08406m25
B08406m26
B08406m27
B08406m28
B08406m29
B08406m30
B08406m31
B08406m32
B08406m33
B08406m34
B08406m35
B08406m36
B08406m37
B08406m38
B08406m39
B08406m40
B08406m41
B08406m42
B08406m43
B08406m44
B08406m45
B08406m46
B08406m47
B08406m48
B08406m49
B08406m50
B08406m51
 
B08412m1
B08412m2
B08412m3
B08412m4
B08412m5
B08412m6
B08412m7
B08412m8
B08412m9
B08412m10
B08412m11
B08412m12
B08412m13
B08412m14
B08412m15
B08412m16
B08412m17
B08412m18
B08412m19
B08412m20
B08412m21
B08412m22
B08412m23
B08412m24
B08412m25
B08412m26
B08412m27
B08412m28
B08412m29
B08412m30
B08412m31
B08412m32
B08412m33
B08412m34
B08412m35
B08412m36
B08412m37
B08412m38
B08412m39
 
B08501m1
B08501m2
B08501m3
B08501m4
B08501m5
B08501m6
B08501m7
B08501m8
B08501m9
B08501m10
B08501m11
B08501m12
B08501m13
B08501m14
B08501m15
B08501m16
B08501m17
B08501m18
B08501m19
B08501m20
B08501m21
B08501m22
B08501m23
B08501m24
B08501m25
B08501m26
B08501m27
B08501m28
B08501m29
B08501m30
B08501m31
B08501m32
B08501m33
B08501m34
B08501m35
B08501m36
B08501m37
B08501m38
B08501m39
B08501m40
B08501m41
B08501m42
B08501m43
B08501m44
B08501m45
B08501m46
B08501m47
B08501m48
B08501m49
B08501m50
B08501m51
B08501m52
B08501m53
B08501m54
B08501m55
B08501m56
 
B08503m1
B08503m2
B08503m3
B08503m4
B08503m5
B08503m6
B08503m7
 
B08505Am1
B08505Am2
B08505Am3
B08505Am4
B08505Am5
B08505Am6
B08505Am7
 
B08505Bm1
B08505Bm2
B08505Bm3
B08505Bm4
B08505Bm5
B08505Bm6
B08505Bm7
 
B08505Cm1
B08505Cm2
B08505Cm3
B08505Cm4
B08505Cm5
B08505Cm6
B08505Cm7
 
B08505Dm1
B08505Dm2
B08505Dm3
B08505Dm4
B08505Dm5
B08505Dm6
B08505Dm7
 
B08505Em1
B08505Em2
B08505Em3
B08505Em4
B08505Em5
B08505Em6
B08505Em7
 
B08505Fm1
B08505Fm2
B08505Fm3
B08505Fm4
B08505Fm5
B08505Fm6
B08505Fm7
 
B08505Gm1
B08505Gm2
B08505Gm3
B08505Gm4
B08505Gm5
B08505Gm6
B08505Gm7
 
B08505Hm1
B08505Hm2
B08505Hm3
B08505Hm4
B08505Hm5
B08505Hm6
B08505Hm7
 
B08505Im1
B08505Im2
B08505Im3
B08505Im4
B08505Im5
B08505Im6
B08505Im7
;
RUN;
TITLE2;
