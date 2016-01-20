TITLE2 "m20115dc0028000";
DATA work.SFm0028dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0028000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*AGGREGATE TRAVEL TIME TO WORK (IN MINUTES) OF WORKERS BY MEANS OF TRANSPORTATION TO WORK */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08136m1='Aggregate travel time to work (in minutes):'
B08136m2='Car, truck, or van:'
B08136m3='Drove alone'
B08136m4='Carpooled:'
B08136m5='In 2-person carpool'
B08136m6='In 3-or-more-person carpool'
B08136m7='Public transportation (excluding taxicab):'
B08136m8='Bus or trolley bus'
B08136m9='Streetcar or trolley car (carro publico in Puerto Rico), subway or elevated'
B08136m10='Railroad or ferryboat'
B08136m11='Walked'
B08136m12='Taxicab, motorcycle, bicycle, or other means'
 
/*MEANS OF TRANSPORTATION TO WORK BY TENURE */
/*Universe:  Workers 16 years and over in households */
 
B08137m1='Total:'
B08137m2='Householder lived in owner-occupied housing units'
B08137m3='Householder lived in renter-occupied housing units'
B08137m4='Car, truck, or van - drove alone:'
B08137m5='Householder lived in owner-occupied housing units'
B08137m6='Householder lived in renter-occupied housing units'
B08137m7='Car, truck, or van - carpooled:'
B08137m8='Householder lived in owner-occupied housing units'
B08137m9='Householder lived in renter-occupied housing units'
B08137m10='Public transportation (excluding taxicab):'
B08137m11='Householder lived in owner-occupied housing units'
B08137m12='Householder lived in renter-occupied housing units'
B08137m13='Walked:'
B08137m14='Householder lived in owner-occupied housing units'
B08137m15='Householder lived in renter-occupied housing units'
B08137m16='Taxicab, motorcycle, bicycle, or other means:'
B08137m17='Householder lived in owner-occupied housing units'
B08137m18='Householder lived in renter-occupied housing units'
B08137m19='Worked at home:'
B08137m20='Householder lived in owner-occupied housing units'
B08137m21='Householder lived in renter-occupied housing units'
 
/*MEANS OF TRANSPORTATION TO WORK BY VEHICLES AVAILABLE */
/*Universe:  Workers 16 years and over in households */
 
B08141m1='Total:'
B08141m2='No vehicle available'
B08141m3='1 vehicle available'
B08141m4='2 vehicles available'
B08141m5='3 or more vehicles available'
B08141m6='Car, truck, or van - drove alone:'
B08141m7='No vehicle available'
B08141m8='1 vehicle available'
B08141m9='2 vehicles available'
B08141m10='3 or more vehicles available'
B08141m11='Car, truck, or van - carpooled:'
B08141m12='No vehicle available'
B08141m13='1 vehicle available'
B08141m14='2 vehicles available'
B08141m15='3 or more vehicles available'
B08141m16='Public transportation (excluding taxicab):'
B08141m17='No vehicle available'
B08141m18='1 vehicle available'
B08141m19='2 vehicles available'
B08141m20='3 or more vehicles available'
B08141m21='Walked:'
B08141m22='No vehicle available'
B08141m23='1 vehicle available'
B08141m24='2 vehicles available'
B08141m25='3 or more vehicles available'
B08141m26='Taxicab, motorcycle, bicycle, or other means:'
B08141m27='No vehicle available'
B08141m28='1 vehicle available'
B08141m29='2 vehicles available'
B08141m30='3 or more vehicles available'
B08141m31='Worked at home:'
B08141m32='No vehicle available'
B08141m33='1 vehicle available'
B08141m34='2 vehicles available'
B08141m35='3 or more vehicles available'
 
/*HOUSEHOLD SIZE BY VEHICLES AVAILABLE */
/*Universe:  Households */
 
B08201m1='Total:'
B08201m2='No vehicle available'
B08201m3='1 vehicle available'
B08201m4='2 vehicles available'
B08201m5='3 vehicles available'
B08201m6='4 or more vehicles available'
B08201m7='1-person household:'
B08201m8='No vehicle available'
B08201m9='1 vehicle available'
B08201m10='2 vehicles available'
B08201m11='3 vehicles available'
B08201m12='4 or more vehicles available'
B08201m13='2-person household:'
B08201m14='No vehicle available'
B08201m15='1 vehicle available'
B08201m16='2 vehicles available'
B08201m17='3 vehicles available'
B08201m18='4 or more vehicles available'
B08201m19='3-person household:'
B08201m20='No vehicle available'
B08201m21='1 vehicle available'
B08201m22='2 vehicles available'
B08201m23='3 vehicles available'
B08201m24='4 or more vehicles available'
B08201m25='4-or-more-person household:'
B08201m26='No vehicle available'
B08201m27='1 vehicle available'
B08201m28='2 vehicles available'
B08201m29='3 vehicles available'
B08201m30='4 or more vehicles available'
 
/*HOUSEHOLD SIZE BY NUMBER OF WORKERS IN HOUSEHOLD */
/*Universe:  Households */
 
B08202m1='Total:'
B08202m2='No workers'
B08202m3='1 worker'
B08202m4='2 workers'
B08202m5='3 or more workers'
B08202m6='1-person household:'
B08202m7='No workers'
B08202m8='1 worker'
B08202m9='2-person household:'
B08202m10='No workers'
B08202m11='1 worker'
B08202m12='2 workers'
B08202m13='3-person household:'
B08202m14='No workers'
B08202m15='1 worker'
B08202m16='2 workers'
B08202m17='3 workers'
B08202m18='4-or-more-person household:'
B08202m19='No workers'
B08202m20='1 worker'
B08202m21='2 workers'
B08202m22='3 or more workers'
 
/*NUMBER OF WORKERS IN HOUSEHOLD BY VEHICLES AVAILABLE */
/*Universe:  Households */
 
B08203m1='Total:'
B08203m2='No vehicle available'
B08203m3='1 vehicle available'
B08203m4='2 vehicles available'
B08203m5='3 vehicles available'
B08203m6='4 or more vehicles available'
B08203m7='No workers:'
B08203m8='No vehicle available'
B08203m9='1 vehicle available'
B08203m10='2 vehicles available'
B08203m11='3 vehicles available'
B08203m12='4 or more vehicles available'
B08203m13='1 worker:'
B08203m14='No vehicle available'
B08203m15='1 vehicle available'
B08203m16='2 vehicles available'
B08203m17='3 vehicles available'
B08203m18='4 or more vehicles available'
B08203m19='2 workers:'
B08203m20='No vehicle available'
B08203m21='1 vehicle available'
B08203m22='2 vehicles available'
B08203m23='3 vehicles available'
B08203m24='4 or more vehicles available'
B08203m25='3 or more workers:'
B08203m26='No vehicle available'
B08203m27='1 vehicle available'
B08203m28='2 vehicles available'
B08203m29='3 vehicles available'
B08203m30='4 or more vehicles available'
 
/*MEANS OF TRANSPORTATION TO WORK */
/*Universe:  Workers 16 years and over */
 
B08301m1='Total:'
B08301m2='Car, truck, or van:'
B08301m3='Drove alone'
B08301m4='Carpooled:'
B08301m5='In 2-person carpool'
B08301m6='In 3-person carpool'
B08301m7='In 4-person carpool'
B08301m8='In 5- or 6-person carpool'
B08301m9='In 7-or-more-person carpool'
B08301m10='Public transportation (excluding taxicab):'
B08301m11='Bus or trolley bus'
B08301m12='Streetcar or trolley car (carro publico in Puerto Rico)'
B08301m13='Subway or elevated'
B08301m14='Railroad'
B08301m15='Ferryboat'
B08301m16='Taxicab'
B08301m17='Motorcycle'
B08301m18='Bicycle'
B08301m19='Walked'
B08301m20='Other means'
B08301m21='Worked at home'
 
/*TIME LEAVING HOME TO GO TO WORK */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08302m1='Total:'
B08302m2='12:00 a.m. to 4:59 a.m.'
B08302m3='5:00 a.m. to 5:29 a.m.'
B08302m4='5:30 a.m. to 5:59 a.m.'
B08302m5='6:00 a.m. to 6:29 a.m.'
B08302m6='6:30 a.m. to 6:59 a.m.'
B08302m7='7:00 a.m. to 7:29 a.m.'
B08302m8='7:30 a.m. to 7:59 a.m.'
B08302m9='8:00 a.m. to 8:29 a.m.'
B08302m10='8:30 a.m. to 8:59 a.m.'
B08302m11='9:00 a.m. to 9:59 a.m.'
B08302m12='10:00 a.m. to 10:59 a.m.'
B08302m13='11:00 a.m. to 11:59 a.m.'
B08302m14='12:00 p.m. to 3:59 p.m.'
B08302m15='4:00 p.m. to 11:59 p.m.'
 
/*TRAVEL TIME TO WORK */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08303m1='Total:'
B08303m2='Less than 5 minutes'
B08303m3='5 to 9 minutes'
B08303m4='10 to 14 minutes'
B08303m5='15 to 19 minutes'
B08303m6='20 to 24 minutes'
B08303m7='25 to 29 minutes'
B08303m8='30 to 34 minutes'
B08303m9='35 to 39 minutes'
B08303m10='40 to 44 minutes'
B08303m11='45 to 59 minutes'
B08303m12='60 to 89 minutes'
B08303m13='90 or more minutes'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B08136m1
B08136m2
B08136m3
B08136m4
B08136m5
B08136m6
B08136m7
B08136m8
B08136m9
B08136m10
B08136m11
B08136m12
 
B08137m1
B08137m2
B08137m3
B08137m4
B08137m5
B08137m6
B08137m7
B08137m8
B08137m9
B08137m10
B08137m11
B08137m12
B08137m13
B08137m14
B08137m15
B08137m16
B08137m17
B08137m18
B08137m19
B08137m20
B08137m21
 
B08141m1
B08141m2
B08141m3
B08141m4
B08141m5
B08141m6
B08141m7
B08141m8
B08141m9
B08141m10
B08141m11
B08141m12
B08141m13
B08141m14
B08141m15
B08141m16
B08141m17
B08141m18
B08141m19
B08141m20
B08141m21
B08141m22
B08141m23
B08141m24
B08141m25
B08141m26
B08141m27
B08141m28
B08141m29
B08141m30
B08141m31
B08141m32
B08141m33
B08141m34
B08141m35
 
B08201m1
B08201m2
B08201m3
B08201m4
B08201m5
B08201m6
B08201m7
B08201m8
B08201m9
B08201m10
B08201m11
B08201m12
B08201m13
B08201m14
B08201m15
B08201m16
B08201m17
B08201m18
B08201m19
B08201m20
B08201m21
B08201m22
B08201m23
B08201m24
B08201m25
B08201m26
B08201m27
B08201m28
B08201m29
B08201m30
 
B08202m1
B08202m2
B08202m3
B08202m4
B08202m5
B08202m6
B08202m7
B08202m8
B08202m9
B08202m10
B08202m11
B08202m12
B08202m13
B08202m14
B08202m15
B08202m16
B08202m17
B08202m18
B08202m19
B08202m20
B08202m21
B08202m22
 
B08203m1
B08203m2
B08203m3
B08203m4
B08203m5
B08203m6
B08203m7
B08203m8
B08203m9
B08203m10
B08203m11
B08203m12
B08203m13
B08203m14
B08203m15
B08203m16
B08203m17
B08203m18
B08203m19
B08203m20
B08203m21
B08203m22
B08203m23
B08203m24
B08203m25
B08203m26
B08203m27
B08203m28
B08203m29
B08203m30
 
B08301m1
B08301m2
B08301m3
B08301m4
B08301m5
B08301m6
B08301m7
B08301m8
B08301m9
B08301m10
B08301m11
B08301m12
B08301m13
B08301m14
B08301m15
B08301m16
B08301m17
B08301m18
B08301m19
B08301m20
B08301m21
 
B08302m1
B08302m2
B08302m3
B08302m4
B08302m5
B08302m6
B08302m7
B08302m8
B08302m9
B08302m10
B08302m11
B08302m12
B08302m13
B08302m14
B08302m15
 
B08303m1
B08303m2
B08303m3
B08303m4
B08303m5
B08303m6
B08303m7
B08303m8
B08303m9
B08303m10
B08303m11
B08303m12
B08303m13
;
RUN;
TITLE2;
