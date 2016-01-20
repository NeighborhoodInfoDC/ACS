TITLE2 "m20125dc0023000";
DATA work.SFm0023dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0023000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SEX OF WORKERS BY MEANS OF TRANSPORTATION TO WORK */
/*Universe:  Workers 16 years and over */
 
B08006m1='Total:'
B08006m2='Car, truck, or van:'
B08006m3='Drove alone'
B08006m4='Carpooled:'
B08006m5='In 2-person carpool'
B08006m6='In 3-person carpool'
B08006m7='In 4-or-more-person carpool'
B08006m8='Public transportation (excluding taxicab):'
B08006m9='Bus or trolley bus'
B08006m10='Streetcar or trolley car (carro publico in Puerto Rico)'
B08006m11='Subway or elevated'
B08006m12='Railroad'
B08006m13='Ferryboat'
B08006m14='Bicycle'
B08006m15='Walked'
B08006m16='Taxicab, motorcycle, or other means'
B08006m17='Worked at home'
B08006m18='Male:'
B08006m19='Car, truck, or van:'
B08006m20='Drove alone'
B08006m21='Carpooled:'
B08006m22='In 2-person carpool'
B08006m23='In 3-person carpool'
B08006m24='In 4-or-more-person carpool'
B08006m25='Public transportation (excluding taxicab):'
B08006m26='Bus or trolley bus'
B08006m27='Streetcar or trolley car (carro publico in Puerto Rico)'
B08006m28='Subway or elevated'
B08006m29='Railroad'
B08006m30='Ferryboat'
B08006m31='Bicycle'
B08006m32='Walked'
B08006m33='Taxicab, motorcycle, or other means'
B08006m34='Worked at home'
B08006m35='Female:'
B08006m36='Car, truck, or van:'
B08006m37='Drove alone'
B08006m38='Carpooled:'
B08006m39='In 2-person carpool'
B08006m40='In 3-person carpool'
B08006m41='In 4-or-more-person carpool'
B08006m42='Public transportation (excluding taxicab):'
B08006m43='Bus or trolley bus'
B08006m44='Streetcar or trolley car (carro publico in Puerto Rico)'
B08006m45='Subway or elevated'
B08006m46='Railroad'
B08006m47='Ferryboat'
B08006m48='Bicycle'
B08006m49='Walked'
B08006m50='Taxicab, motorcycle, or other means'
B08006m51='Worked at home'
/*SEX OF WORKERS BY PLACE OF WORK--STATE AND COUNTY LEVEL */
/*Universe:  Workers 16 years and over */
 
B08007m1='Total:'
B08007m2='Worked in state of residence:'
B08007m3='Worked in county of residence'
B08007m4='Worked outside county of residence'
B08007m5='Worked outside state of residence'
B08007m6='Male:'
B08007m7='Worked in state of residence:'
B08007m8='Worked in county of residence'
B08007m9='Worked outside county of residence'
B08007m10='Worked outside state of residence'
B08007m11='Female:'
B08007m12='Worked in state of residence:'
B08007m13='Worked in county of residence'
B08007m14='Worked outside county of residence'
B08007m15='Worked outside state of residence'
/*SEX OF WORKERS BY PLACE OF WORK--PLACE LEVEL */
/*Universe:  Workers 16 years and over */
 
B08008m1='Total:'
B08008m2='Living in a place:'
B08008m3='Worked in place of residence'
B08008m4='Worked outside place of residence'
B08008m5='Not living in a place'
B08008m6='Male:'
B08008m7='Living in a place:'
B08008m8='Worked in place of residence'
B08008m9='Worked outside place of residence'
B08008m10='Not living in a place'
B08008m11='Female:'
B08008m12='Living in a place:'
B08008m13='Worked in place of residence'
B08008m14='Worked outside place of residence'
B08008m15='Not living in a place'
/*SEX OF WORKERS BY PLACE OF WORK--MINOR CIVIL DIVISION LEVEL FOR 12 SELECTED STATES (CT, ME, MA, MI, MN, NH, NJ, NY, PA, RI, VT, WI) */
/*Universe:  Workers 16 years and over */
 
B08009m1='Total:'
B08009m2='Living in the 12 selected states:'
B08009m3='Worked in MCD of residence'
B08009m4='Worked outside MCD of residence'
B08009m5='Not living in the 12 selected states'
B08009m6='Male:'
B08009m7='Living in the 12 selected states:'
B08009m8='Worked in MCD of residence'
B08009m9='Worked outside MCD of residence'
B08009m10='Not living in the 12 selected states'
B08009m11='Female:'
B08009m12='Living in the 12 selected states:'
B08009m13='Worked in MCD of residence'
B08009m14='Worked outside MCD of residence'
B08009m15='Not living in the 12 selected states'
/*SEX OF WORKERS BY TIME LEAVING HOME TO GO TO WORK */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08011m1='Total:'
B08011m2='12:00 a.m. to 4:59 a.m.'
B08011m3='5:00 a.m. to 5:29 a.m.'
B08011m4='5:30 a.m. to 5:59 a.m.'
B08011m5='6:00 a.m. to 6:29 a.m.'
B08011m6='6:30 a.m. to 6:59 a.m.'
B08011m7='7:00 a.m. to 7:29 a.m.'
B08011m8='7:30 a.m. to 7:59 a.m.'
B08011m9='8:00 a.m. to 8:29 a.m.'
B08011m10='8:30 a.m. to 8:59 a.m.'
B08011m11='9:00 a.m. to 9:59 a.m.'
B08011m12='10:00 a.m. to 10:59 a.m.'
B08011m13='11:00 a.m. to 11:59 a.m.'
B08011m14='12:00 p.m. to 3:59 p.m.'
B08011m15='4:00 p.m. to 11:59 p.m.'
B08011m16='Male:'
B08011m17='12:00 a.m. to 4:59 a.m.'
B08011m18='5:00 a.m. to 5:29 a.m.'
B08011m19='5:30 a.m. to 5:59 a.m.'
B08011m20='6:00 a.m. to 6:29 a.m.'
B08011m21='6:30 a.m. to 6:59 a.m.'
B08011m22='7:00 a.m. to 7:29 a.m.'
B08011m23='7:30 a.m. to 7:59 a.m.'
B08011m24='8:00 a.m. to 8:29 a.m.'
B08011m25='8:30 a.m. to 8:59 a.m.'
B08011m26='9:00 a.m. to 9:59 a.m.'
B08011m27='10:00 a.m. to 10:59 a.m.'
B08011m28='11:00 a.m. to 11:59 a.m.'
B08011m29='12:00 p.m. to 3:59 p.m.'
B08011m30='4:00 p.m. to 11:59 p.m.'
B08011m31='Female:'
B08011m32='12:00 a.m. to 4:59 a.m.'
B08011m33='5:00 a.m. to 5:29 a.m.'
B08011m34='5:30 a.m. to 5:59 a.m.'
B08011m35='6:00 a.m. to 6:29 a.m.'
B08011m36='6:30 a.m. to 6:59 a.m.'
B08011m37='7:00 a.m. to 7:29 a.m.'
B08011m38='7:30 a.m. to 7:59 a.m.'
B08011m39='8:00 a.m. to 8:29 a.m.'
B08011m40='8:30 a.m. to 8:59 a.m.'
B08011m41='9:00 a.m. to 9:59 a.m.'
B08011m42='10:00 a.m. to 10:59 a.m.'
B08011m43='11:00 a.m. to 11:59 a.m.'
B08011m44='12:00 p.m. to 3:59 p.m.'
B08011m45='4:00 p.m. to 11:59 p.m.'
/*SEX OF WORKERS BY TRAVEL TIME TO WORK */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08012m1='Total:'
B08012m2='Less than 5 minutes'
B08012m3='5 to 9 minutes'
B08012m4='10 to 14 minutes'
B08012m5='15 to 19 minutes'
B08012m6='20 to 24 minutes'
B08012m7='25 to 29 minutes'
B08012m8='30 to 34 minutes'
B08012m9='35 to 39 minutes'
B08012m10='40 to 44 minutes'
B08012m11='45 to 59 minutes'
B08012m12='60 to 89 minutes'
B08012m13='90 or more minutes'
B08012m14='Male:'
B08012m15='Less than 5 minutes'
B08012m16='5 to 9 minutes'
B08012m17='10 to 14 minutes'
B08012m18='15 to 19 minutes'
B08012m19='20 to 24 minutes'
B08012m20='25 to 29 minutes'
B08012m21='30 to 34 minutes'
B08012m22='35 to 39 minutes'
B08012m23='40 to 44 minutes'
B08012m24='45 to 59 minutes'
B08012m25='60 to 89 minutes'
B08012m26='90 or more minutes'
B08012m27='Female:'
B08012m28='Less than 5 minutes'
B08012m29='5 to 9 minutes'
B08012m30='10 to 14 minutes'
B08012m31='15 to 19 minutes'
B08012m32='20 to 24 minutes'
B08012m33='25 to 29 minutes'
B08012m34='30 to 34 minutes'
B08012m35='35 to 39 minutes'
B08012m36='40 to 44 minutes'
B08012m37='45 to 59 minutes'
B08012m38='60 to 89 minutes'
B08012m39='90 or more minutes'
/*AGGREGATE TRAVEL TIME TO WORK (IN MINUTES) OF WORKERS BY SEX */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08013m1='Aggregate travel time to work (in minutes):'
B08013m2='Male'
B08013m3='Female'
/*SEX OF WORKERS BY VEHICLES AVAILABLE */
/*Universe:  Workers 16 years and over in households */
 
B08014m1='Total:'
B08014m2='No vehicle available'
B08014m3='1 vehicle available'
B08014m4='2 vehicles available'
B08014m5='3 vehicles available'
B08014m6='4 vehicles available'
B08014m7='5 or more vehicles available'
B08014m8='Male:'
B08014m9='No vehicle available'
B08014m10='1 vehicle available'
B08014m11='2 vehicles available'
B08014m12='3 vehicles available'
B08014m13='4 vehicles available'
B08014m14='5 or more vehicles available'
B08014m15='Female:'
B08014m16='No vehicle available'
B08014m17='1 vehicle available'
B08014m18='2 vehicles available'
B08014m19='3 vehicles available'
B08014m20='4 vehicles available'
B08014m21='5 or more vehicles available'
/*AGGREGATE NUMBER OF VEHICLES (CAR, TRUCK, OR VAN) USED IN COMMUTING BY WORKERS 16 YEARS AND OVER BY SEX */
/*Universe:  Workers whose means of transportation is car, truck, or van */
 
B08015m1='Aggregate number of vehicles (car, truck, or van) used in commuting:'
B08015m2='Male'
B08015m3='Female'
/*PLACE OF WORK FOR WORKERS 16 YEARS AND OVER--METROPOLITAN STATISTICAL AREA LEVEL */
/*Universe:  Workers 16 years and over living in a Metropolitan Statistical Area */
 
B08016m1='Total:'
B08016m2='Living in a principal city:'
B08016m3='Worked in Metropolitan Statistical Area of residence:'
B08016m4='Worked in a principal city'
B08016m5='Worked outside any principal city'
B08016m6='Worked in a different Metropolitan Statistical Area:'
B08016m7='Worked in a principal city'
B08016m8='Worked outside any principal city'
B08016m9='Worked in a Micropolitan Statistical Area:'
B08016m10='Worked in a principal city'
B08016m11='Worked outside any principal city'
B08016m12='Worked outside any Metropolitan or Micropolitan Statistical Area'
B08016m13='Living outside any principal city:'
B08016m14='Worked in Metropolitan Statistical Area of residence:'
B08016m15='Worked in a principal city'
B08016m16='Worked outside any principal city'
B08016m17='Worked in a different Metropolitan Statistical Area:'
B08016m18='Worked in a principal city'
B08016m19='Worked outside any principal city'
B08016m20='Worked in a Micropolitan Statistical Area:'
B08016m21='Worked in a principal city'
B08016m22='Worked outside any principal city'
B08016m23='Worked outside any Metropolitan or Micropolitan Statistical Area'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B08006m1
B08006m2
B08006m3
B08006m4
B08006m5
B08006m6
B08006m7
B08006m8
B08006m9
B08006m10
B08006m11
B08006m12
B08006m13
B08006m14
B08006m15
B08006m16
B08006m17
B08006m18
B08006m19
B08006m20
B08006m21
B08006m22
B08006m23
B08006m24
B08006m25
B08006m26
B08006m27
B08006m28
B08006m29
B08006m30
B08006m31
B08006m32
B08006m33
B08006m34
B08006m35
B08006m36
B08006m37
B08006m38
B08006m39
B08006m40
B08006m41
B08006m42
B08006m43
B08006m44
B08006m45
B08006m46
B08006m47
B08006m48
B08006m49
B08006m50
B08006m51
 
B08007m1
B08007m2
B08007m3
B08007m4
B08007m5
B08007m6
B08007m7
B08007m8
B08007m9
B08007m10
B08007m11
B08007m12
B08007m13
B08007m14
B08007m15
 
B08008m1
B08008m2
B08008m3
B08008m4
B08008m5
B08008m6
B08008m7
B08008m8
B08008m9
B08008m10
B08008m11
B08008m12
B08008m13
B08008m14
B08008m15
 
B08009m1
B08009m2
B08009m3
B08009m4
B08009m5
B08009m6
B08009m7
B08009m8
B08009m9
B08009m10
B08009m11
B08009m12
B08009m13
B08009m14
B08009m15
 
B08011m1
B08011m2
B08011m3
B08011m4
B08011m5
B08011m6
B08011m7
B08011m8
B08011m9
B08011m10
B08011m11
B08011m12
B08011m13
B08011m14
B08011m15
B08011m16
B08011m17
B08011m18
B08011m19
B08011m20
B08011m21
B08011m22
B08011m23
B08011m24
B08011m25
B08011m26
B08011m27
B08011m28
B08011m29
B08011m30
B08011m31
B08011m32
B08011m33
B08011m34
B08011m35
B08011m36
B08011m37
B08011m38
B08011m39
B08011m40
B08011m41
B08011m42
B08011m43
B08011m44
B08011m45
 
B08012m1
B08012m2
B08012m3
B08012m4
B08012m5
B08012m6
B08012m7
B08012m8
B08012m9
B08012m10
B08012m11
B08012m12
B08012m13
B08012m14
B08012m15
B08012m16
B08012m17
B08012m18
B08012m19
B08012m20
B08012m21
B08012m22
B08012m23
B08012m24
B08012m25
B08012m26
B08012m27
B08012m28
B08012m29
B08012m30
B08012m31
B08012m32
B08012m33
B08012m34
B08012m35
B08012m36
B08012m37
B08012m38
B08012m39
 
B08013m1
B08013m2
B08013m3
 
B08014m1
B08014m2
B08014m3
B08014m4
B08014m5
B08014m6
B08014m7
B08014m8
B08014m9
B08014m10
B08014m11
B08014m12
B08014m13
B08014m14
B08014m15
B08014m16
B08014m17
B08014m18
B08014m19
B08014m20
B08014m21
 
B08015m1
B08015m2
B08015m3
 
B08016m1
B08016m2
B08016m3
B08016m4
B08016m5
B08016m6
B08016m7
B08016m8
B08016m9
B08016m10
B08016m11
B08016m12
B08016m13
B08016m14
B08016m15
B08016m16
B08016m17
B08016m18
B08016m19
B08016m20
B08016m21
B08016m22
B08016m23
;
RUN;
TITLE2;
