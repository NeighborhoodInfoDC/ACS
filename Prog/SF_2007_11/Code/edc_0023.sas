TITLE2 "e20115dc0023000";
DATA work.SFe0023dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0023000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*SEX OF WORKERS BY MEANS OF TRANSPORTATION TO WORK */
/*Universe:  Workers 16 years and over */
 
B08006e1='Total:'
B08006e2='Car, truck, or van:'
B08006e3='Drove alone'
B08006e4='Carpooled:'
B08006e5='In 2-person carpool'
B08006e6='In 3-person carpool'
B08006e7='In 4-or-more-person carpool'
B08006e8='Public transportation (excluding taxicab):'
B08006e9='Bus or trolley bus'
B08006e10='Streetcar or trolley car (carro publico in Puerto Rico)'
B08006e11='Subway or elevated'
B08006e12='Railroad'
B08006e13='Ferryboat'
B08006e14='Bicycle'
B08006e15='Walked'
B08006e16='Taxicab, motorcycle, or other means'
B08006e17='Worked at home'
B08006e18='Male:'
B08006e19='Car, truck, or van:'
B08006e20='Drove alone'
B08006e21='Carpooled:'
B08006e22='In 2-person carpool'
B08006e23='In 3-person carpool'
B08006e24='In 4-or-more-person carpool'
B08006e25='Public transportation (excluding taxicab):'
B08006e26='Bus or trolley bus'
B08006e27='Streetcar or trolley car (carro publico in Puerto Rico)'
B08006e28='Subway or elevated'
B08006e29='Railroad'
B08006e30='Ferryboat'
B08006e31='Bicycle'
B08006e32='Walked'
B08006e33='Taxicab, motorcycle, or other means'
B08006e34='Worked at home'
B08006e35='Female:'
B08006e36='Car, truck, or van:'
B08006e37='Drove alone'
B08006e38='Carpooled:'
B08006e39='In 2-person carpool'
B08006e40='In 3-person carpool'
B08006e41='In 4-or-more-person carpool'
B08006e42='Public transportation (excluding taxicab):'
B08006e43='Bus or trolley bus'
B08006e44='Streetcar or trolley car (carro publico in Puerto Rico)'
B08006e45='Subway or elevated'
B08006e46='Railroad'
B08006e47='Ferryboat'
B08006e48='Bicycle'
B08006e49='Walked'
B08006e50='Taxicab, motorcycle, or other means'
B08006e51='Worked at home'
 
/*SEX OF WORKERS BY PLACE OF WORK--STATE AND COUNTY LEVEL */
/*Universe:  Workers 16 years and over */
 
B08007e1='Total:'
B08007e2='Worked in state of residence:'
B08007e3='Worked in county of residence'
B08007e4='Worked outside county of residence'
B08007e5='Worked outside state of residence'
B08007e6='Male:'
B08007e7='Worked in state of residence:'
B08007e8='Worked in county of residence'
B08007e9='Worked outside county of residence'
B08007e10='Worked outside state of residence'
B08007e11='Female:'
B08007e12='Worked in state of residence:'
B08007e13='Worked in county of residence'
B08007e14='Worked outside county of residence'
B08007e15='Worked outside state of residence'
 
/*SEX OF WORKERS BY PLACE OF WORK--PLACE LEVEL */
/*Universe:  Workers 16 years and over */
 
B08008e1='Total:'
B08008e2='Living in a place:'
B08008e3='Worked in place of residence'
B08008e4='Worked outside place of residence'
B08008e5='Not living in a place'
B08008e6='Male:'
B08008e7='Living in a place:'
B08008e8='Worked in place of residence'
B08008e9='Worked outside place of residence'
B08008e10='Not living in a place'
B08008e11='Female:'
B08008e12='Living in a place:'
B08008e13='Worked in place of residence'
B08008e14='Worked outside place of residence'
B08008e15='Not living in a place'
 
/*SEX OF WORKERS BY PLACE OF WORK--MINOR CIVIL DIVISION LEVEL FOR 12 SELECTED STATES (CT, ME, MA, MI, MN, NH, NJ, NY, PA, RI, VT, WI) */
/*Universe:  Workers 16 years and over */
 
B08009e1='Total:'
B08009e2='Living in the 12 selected states:'
B08009e3='Worked in MCD of residence'
B08009e4='Worked outside MCD of residence'
B08009e5='Not living in the 12 selected states'
B08009e6='Male:'
B08009e7='Living in the 12 selected states:'
B08009e8='Worked in MCD of residence'
B08009e9='Worked outside MCD of residence'
B08009e10='Not living in the 12 selected states'
B08009e11='Female:'
B08009e12='Living in the 12 selected states:'
B08009e13='Worked in MCD of residence'
B08009e14='Worked outside MCD of residence'
B08009e15='Not living in the 12 selected states'
 
/*SEX OF WORKERS BY TIME LEAVING HOME TO GO TO WORK */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08011e1='Total:'
B08011e2='12:00 a.m. to 4:59 a.m.'
B08011e3='5:00 a.m. to 5:29 a.m.'
B08011e4='5:30 a.m. to 5:59 a.m.'
B08011e5='6:00 a.m. to 6:29 a.m.'
B08011e6='6:30 a.m. to 6:59 a.m.'
B08011e7='7:00 a.m. to 7:29 a.m.'
B08011e8='7:30 a.m. to 7:59 a.m.'
B08011e9='8:00 a.m. to 8:29 a.m.'
B08011e10='8:30 a.m. to 8:59 a.m.'
B08011e11='9:00 a.m. to 9:59 a.m.'
B08011e12='10:00 a.m. to 10:59 a.m.'
B08011e13='11:00 a.m. to 11:59 a.m.'
B08011e14='12:00 p.m. to 3:59 p.m.'
B08011e15='4:00 p.m. to 11:59 p.m.'
B08011e16='Male:'
B08011e17='12:00 a.m. to 4:59 a.m.'
B08011e18='5:00 a.m. to 5:29 a.m.'
B08011e19='5:30 a.m. to 5:59 a.m.'
B08011e20='6:00 a.m. to 6:29 a.m.'
B08011e21='6:30 a.m. to 6:59 a.m.'
B08011e22='7:00 a.m. to 7:29 a.m.'
B08011e23='7:30 a.m. to 7:59 a.m.'
B08011e24='8:00 a.m. to 8:29 a.m.'
B08011e25='8:30 a.m. to 8:59 a.m.'
B08011e26='9:00 a.m. to 9:59 a.m.'
B08011e27='10:00 a.m. to 10:59 a.m.'
B08011e28='11:00 a.m. to 11:59 a.m.'
B08011e29='12:00 p.m. to 3:59 p.m.'
B08011e30='4:00 p.m. to 11:59 p.m.'
B08011e31='Female:'
B08011e32='12:00 a.m. to 4:59 a.m.'
B08011e33='5:00 a.m. to 5:29 a.m.'
B08011e34='5:30 a.m. to 5:59 a.m.'
B08011e35='6:00 a.m. to 6:29 a.m.'
B08011e36='6:30 a.m. to 6:59 a.m.'
B08011e37='7:00 a.m. to 7:29 a.m.'
B08011e38='7:30 a.m. to 7:59 a.m.'
B08011e39='8:00 a.m. to 8:29 a.m.'
B08011e40='8:30 a.m. to 8:59 a.m.'
B08011e41='9:00 a.m. to 9:59 a.m.'
B08011e42='10:00 a.m. to 10:59 a.m.'
B08011e43='11:00 a.m. to 11:59 a.m.'
B08011e44='12:00 p.m. to 3:59 p.m.'
B08011e45='4:00 p.m. to 11:59 p.m.'
 
/*SEX OF WORKERS BY TRAVEL TIME TO WORK */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08012e1='Total:'
B08012e2='Less than 5 minutes'
B08012e3='5 to 9 minutes'
B08012e4='10 to 14 minutes'
B08012e5='15 to 19 minutes'
B08012e6='20 to 24 minutes'
B08012e7='25 to 29 minutes'
B08012e8='30 to 34 minutes'
B08012e9='35 to 39 minutes'
B08012e10='40 to 44 minutes'
B08012e11='45 to 59 minutes'
B08012e12='60 to 89 minutes'
B08012e13='90 or more minutes'
B08012e14='Male:'
B08012e15='Less than 5 minutes'
B08012e16='5 to 9 minutes'
B08012e17='10 to 14 minutes'
B08012e18='15 to 19 minutes'
B08012e19='20 to 24 minutes'
B08012e20='25 to 29 minutes'
B08012e21='30 to 34 minutes'
B08012e22='35 to 39 minutes'
B08012e23='40 to 44 minutes'
B08012e24='45 to 59 minutes'
B08012e25='60 to 89 minutes'
B08012e26='90 or more minutes'
B08012e27='Female:'
B08012e28='Less than 5 minutes'
B08012e29='5 to 9 minutes'
B08012e30='10 to 14 minutes'
B08012e31='15 to 19 minutes'
B08012e32='20 to 24 minutes'
B08012e33='25 to 29 minutes'
B08012e34='30 to 34 minutes'
B08012e35='35 to 39 minutes'
B08012e36='40 to 44 minutes'
B08012e37='45 to 59 minutes'
B08012e38='60 to 89 minutes'
B08012e39='90 or more minutes'
 
/*AGGREGATE TRAVEL TIME TO WORK (IN MINUTES) OF WORKERS BY SEX */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08013e1='Aggregate travel time to work (in minutes):'
B08013e2='Male'
B08013e3='Female'
 
/*SEX OF WORKERS BY VEHICLES AVAILABLE */
/*Universe:  Workers 16 years and over in households */
 
B08014e1='Total:'
B08014e2='No vehicle available'
B08014e3='1 vehicle available'
B08014e4='2 vehicles available'
B08014e5='3 vehicles available'
B08014e6='4 vehicles available'
B08014e7='5 or more vehicles available'
B08014e8='Male:'
B08014e9='No vehicle available'
B08014e10='1 vehicle available'
B08014e11='2 vehicles available'
B08014e12='3 vehicles available'
B08014e13='4 vehicles available'
B08014e14='5 or more vehicles available'
B08014e15='Female:'
B08014e16='No vehicle available'
B08014e17='1 vehicle available'
B08014e18='2 vehicles available'
B08014e19='3 vehicles available'
B08014e20='4 vehicles available'
B08014e21='5 or more vehicles available'
 
/*AGGREGATE NUMBER OF VEHICLES (CAR, TRUCK, OR VAN) USED IN COMMUTING BY WORKERS 16 YEARS AND OVER BY SEX */
/*Universe:  Workers whose means of transportation is car, truck, or van */
 
B08015e1='Aggregate number of vehicles (car, truck, or van) used in commuting:'
B08015e2='Male'
B08015e3='Female'
 
/*PLACE OF WORK FOR WORKERS 16 YEARS AND OVER--METROPOLITAN STATISTICAL AREA LEVEL */
/*Universe:  Workers 16 years and over living in a Metropolitan Statistical Area */
 
B08016e1='Total:'
B08016e2='Living in a principal city:'
B08016e3='Worked in Metropolitan Statistical Area of residence:'
B08016e4='Worked in a principal city'
B08016e5='Worked outside any principal city'
B08016e6='Worked in a different Metropolitan Statistical Area:'
B08016e7='Worked in a principal city'
B08016e8='Worked outside any principal city'
B08016e9='Worked in a Micropolitan Statistical Area:'
B08016e10='Worked in a principal city'
B08016e11='Worked outside any principal city'
B08016e12='Worked outside any Metropolitan or Micropolitan Statistical Area'
B08016e13='Living outside any principal city:'
B08016e14='Worked in Metropolitan Statistical Area of residence:'
B08016e15='Worked in a principal city'
B08016e16='Worked outside any principal city'
B08016e17='Worked in a different Metropolitan Statistical Area:'
B08016e18='Worked in a principal city'
B08016e19='Worked outside any principal city'
B08016e20='Worked in a Micropolitan Statistical Area:'
B08016e21='Worked in a principal city'
B08016e22='Worked outside any principal city'
B08016e23='Worked outside any Metropolitan or Micropolitan Statistical Area'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B08006e1
B08006e2
B08006e3
B08006e4
B08006e5
B08006e6
B08006e7
B08006e8
B08006e9
B08006e10
B08006e11
B08006e12
B08006e13
B08006e14
B08006e15
B08006e16
B08006e17
B08006e18
B08006e19
B08006e20
B08006e21
B08006e22
B08006e23
B08006e24
B08006e25
B08006e26
B08006e27
B08006e28
B08006e29
B08006e30
B08006e31
B08006e32
B08006e33
B08006e34
B08006e35
B08006e36
B08006e37
B08006e38
B08006e39
B08006e40
B08006e41
B08006e42
B08006e43
B08006e44
B08006e45
B08006e46
B08006e47
B08006e48
B08006e49
B08006e50
B08006e51
 
B08007e1
B08007e2
B08007e3
B08007e4
B08007e5
B08007e6
B08007e7
B08007e8
B08007e9
B08007e10
B08007e11
B08007e12
B08007e13
B08007e14
B08007e15
 
B08008e1
B08008e2
B08008e3
B08008e4
B08008e5
B08008e6
B08008e7
B08008e8
B08008e9
B08008e10
B08008e11
B08008e12
B08008e13
B08008e14
B08008e15
 
B08009e1
B08009e2
B08009e3
B08009e4
B08009e5
B08009e6
B08009e7
B08009e8
B08009e9
B08009e10
B08009e11
B08009e12
B08009e13
B08009e14
B08009e15
 
B08011e1
B08011e2
B08011e3
B08011e4
B08011e5
B08011e6
B08011e7
B08011e8
B08011e9
B08011e10
B08011e11
B08011e12
B08011e13
B08011e14
B08011e15
B08011e16
B08011e17
B08011e18
B08011e19
B08011e20
B08011e21
B08011e22
B08011e23
B08011e24
B08011e25
B08011e26
B08011e27
B08011e28
B08011e29
B08011e30
B08011e31
B08011e32
B08011e33
B08011e34
B08011e35
B08011e36
B08011e37
B08011e38
B08011e39
B08011e40
B08011e41
B08011e42
B08011e43
B08011e44
B08011e45
 
B08012e1
B08012e2
B08012e3
B08012e4
B08012e5
B08012e6
B08012e7
B08012e8
B08012e9
B08012e10
B08012e11
B08012e12
B08012e13
B08012e14
B08012e15
B08012e16
B08012e17
B08012e18
B08012e19
B08012e20
B08012e21
B08012e22
B08012e23
B08012e24
B08012e25
B08012e26
B08012e27
B08012e28
B08012e29
B08012e30
B08012e31
B08012e32
B08012e33
B08012e34
B08012e35
B08012e36
B08012e37
B08012e38
B08012e39
 
B08013e1
B08013e2
B08013e3
 
B08014e1
B08014e2
B08014e3
B08014e4
B08014e5
B08014e6
B08014e7
B08014e8
B08014e9
B08014e10
B08014e11
B08014e12
B08014e13
B08014e14
B08014e15
B08014e16
B08014e17
B08014e18
B08014e19
B08014e20
B08014e21
 
B08015e1
B08015e2
B08015e3
 
B08016e1
B08016e2
B08016e3
B08016e4
B08016e5
B08016e6
B08016e7
B08016e8
B08016e9
B08016e10
B08016e11
B08016e12
B08016e13
B08016e14
B08016e15
B08016e16
B08016e17
B08016e18
B08016e19
B08016e20
B08016e21
B08016e22
B08016e23
;
RUN;
TITLE2;
