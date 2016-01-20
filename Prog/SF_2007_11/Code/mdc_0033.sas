TITLE2 "m20115dc0033000";
DATA work.SFm0033dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0033000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*MEANS OF TRANSPORTATION TO WORK BY VEHICLES AVAILABLE FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over in households */
 
B08541m1='Total:'
B08541m2='No vehicle available'
B08541m3='1 vehicle available'
B08541m4='2 vehicles available'
B08541m5='3 or more vehicles available'
B08541m6='Car, truck, or van - drove alone:'
B08541m7='No vehicle available'
B08541m8='1 vehicle available'
B08541m9='2 vehicles available'
B08541m10='3 or more vehicles available'
B08541m11='Car, truck, or van - carpooled:'
B08541m12='No vehicle available'
B08541m13='1 vehicle available'
B08541m14='2 vehicles available'
B08541m15='3 or more vehicles available'
B08541m16='Public transportation (excluding taxicab):'
B08541m17='No vehicle available'
B08541m18='1 vehicle available'
B08541m19='2 vehicles available'
B08541m20='3 or more vehicles available'
B08541m21='Walked:'
B08541m22='No vehicle available'
B08541m23='1 vehicle available'
B08541m24='2 vehicles available'
B08541m25='3 or more vehicles available'
B08541m26='Taxicab, motorcycle, bicycle, or other means:'
B08541m27='No vehicle available'
B08541m28='1 vehicle available'
B08541m29='2 vehicles available'
B08541m30='3 or more vehicles available'
B08541m31='Worked at home:'
B08541m32='No vehicle available'
B08541m33='1 vehicle available'
B08541m34='2 vehicles available'
B08541m35='3 or more vehicles available'
 
/*MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B08601m1='Total:'
B08601m2='Car, truck, or van:'
B08601m3='Drove alone'
B08601m4='Carpooled:'
B08601m5='In 2-person carpool'
B08601m6='In 3-person carpool'
B08601m7='In 4-person carpool'
B08601m8='In 5- or 6-person carpool'
B08601m9='In 7-or-more-person carpool'
B08601m10='Public transportation (excluding taxicab):'
B08601m11='Bus or trolley bus'
B08601m12='Streetcar or trolley car (carro publico in Puerto Rico)'
B08601m13='Subway or elevated'
B08601m14='Railroad'
B08601m15='Ferryboat'
B08601m16='Taxicab'
B08601m17='Motorcycle'
B08601m18='Bicycle'
B08601m19='Walked'
B08601m20='Other means'
B08601m21='Worked at home'
 
/*TIME ARRIVING AT WORK FROM HOME FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08602m1='Total:'
B08602m2='12:00 a.m. to 4:59 a.m.'
B08602m3='5:00 a.m. to 5:29 a.m.'
B08602m4='5:30 a.m. to 5:59 a.m.'
B08602m5='6:00 a.m. to 6:29 a.m.'
B08602m6='6:30 a.m. to 6:59 a.m.'
B08602m7='7:00 a.m. to 7:29 a.m.'
B08602m8='7:30 a.m. to 7:59 a.m.'
B08602m9='8:00 a.m. to 8:29 a.m.'
B08602m10='8:30 a.m. to 8:59 a.m.'
B08602m11='9:00 a.m. to 9:59 a.m.'
B08602m12='10:00 a.m. to 10:59 a.m.'
B08602m13='11:00 a.m. to 11:59 a.m.'
B08602m14='12:00 p.m. to 3:59 p.m.'
B08602m15='4:00 p.m. to 11:59 p.m.'
 
/*TRAVEL TIME TO WORK FOR WORKPLACE GEOGRAPHY */
/*Universe: Workers 16 years and over who did not work at home */
 
B08603m1='Total:'
B08603m2='Less than 5 minutes'
B08603m3='5 to 9 minutes'
B08603m4='10 to 14 minutes'
B08603m5='15 to 19 minutes'
B08603m6='20 to 24 minutes'
B08603m7='25 to 29 minutes'
B08603m8='30 to 34 minutes'
B08603m9='35 to 39 minutes'
B08603m10='40 to 44 minutes'
B08603m11='45 to 59 minutes'
B08603m12='60 to 89 minutes'
B08603m13='90 or more minutes'
 
/*WORKER POPULATION FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B08604m1='Total:'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B08541m1
B08541m2
B08541m3
B08541m4
B08541m5
B08541m6
B08541m7
B08541m8
B08541m9
B08541m10
B08541m11
B08541m12
B08541m13
B08541m14
B08541m15
B08541m16
B08541m17
B08541m18
B08541m19
B08541m20
B08541m21
B08541m22
B08541m23
B08541m24
B08541m25
B08541m26
B08541m27
B08541m28
B08541m29
B08541m30
B08541m31
B08541m32
B08541m33
B08541m34
B08541m35
 
B08601m1
B08601m2
B08601m3
B08601m4
B08601m5
B08601m6
B08601m7
B08601m8
B08601m9
B08601m10
B08601m11
B08601m12
B08601m13
B08601m14
B08601m15
B08601m16
B08601m17
B08601m18
B08601m19
B08601m20
B08601m21
 
B08602m1
B08602m2
B08602m3
B08602m4
B08602m5
B08602m6
B08602m7
B08602m8
B08602m9
B08602m10
B08602m11
B08602m12
B08602m13
B08602m14
B08602m15
 
B08603m1
B08603m2
B08603m3
B08603m4
B08603m5
B08603m6
B08603m7
B08603m8
B08603m9
B08603m10
B08603m11
B08603m12
B08603m13
 
B08604m1
;
RUN;
TITLE2;
