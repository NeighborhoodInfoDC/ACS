TITLE2 "e20125dc0033000";
DATA work.SFe0033dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0033000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*MEANS OF TRANSPORTATION TO WORK BY VEHICLES AVAILABLE FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over in households */
 
B08541e1='Total:'
B08541e2='No vehicle available'
B08541e3='1 vehicle available'
B08541e4='2 vehicles available'
B08541e5='3 or more vehicles available'
B08541e6='Car, truck, or van - drove alone:'
B08541e7='No vehicle available'
B08541e8='1 vehicle available'
B08541e9='2 vehicles available'
B08541e10='3 or more vehicles available'
B08541e11='Car, truck, or van - carpooled:'
B08541e12='No vehicle available'
B08541e13='1 vehicle available'
B08541e14='2 vehicles available'
B08541e15='3 or more vehicles available'
B08541e16='Public transportation (excluding taxicab):'
B08541e17='No vehicle available'
B08541e18='1 vehicle available'
B08541e19='2 vehicles available'
B08541e20='3 or more vehicles available'
B08541e21='Walked:'
B08541e22='No vehicle available'
B08541e23='1 vehicle available'
B08541e24='2 vehicles available'
B08541e25='3 or more vehicles available'
B08541e26='Taxicab, motorcycle, bicycle, or other means:'
B08541e27='No vehicle available'
B08541e28='1 vehicle available'
B08541e29='2 vehicles available'
B08541e30='3 or more vehicles available'
B08541e31='Worked at home:'
B08541e32='No vehicle available'
B08541e33='1 vehicle available'
B08541e34='2 vehicles available'
B08541e35='3 or more vehicles available'
/*MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B08601e1='Total:'
B08601e2='Car, truck, or van:'
B08601e3='Drove alone'
B08601e4='Carpooled:'
B08601e5='In 2-person carpool'
B08601e6='In 3-person carpool'
B08601e7='In 4-person carpool'
B08601e8='In 5- or 6-person carpool'
B08601e9='In 7-or-more-person carpool'
B08601e10='Public transportation (excluding taxicab):'
B08601e11='Bus or trolley bus'
B08601e12='Streetcar or trolley car (carro publico in Puerto Rico)'
B08601e13='Subway or elevated'
B08601e14='Railroad'
B08601e15='Ferryboat'
B08601e16='Taxicab'
B08601e17='Motorcycle'
B08601e18='Bicycle'
B08601e19='Walked'
B08601e20='Other means'
B08601e21='Worked at home'
/*TIME ARRIVING AT WORK FROM HOME FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08602e1='Total:'
B08602e2='12:00 a.m. to 4:59 a.m.'
B08602e3='5:00 a.m. to 5:29 a.m.'
B08602e4='5:30 a.m. to 5:59 a.m.'
B08602e5='6:00 a.m. to 6:29 a.m.'
B08602e6='6:30 a.m. to 6:59 a.m.'
B08602e7='7:00 a.m. to 7:29 a.m.'
B08602e8='7:30 a.m. to 7:59 a.m.'
B08602e9='8:00 a.m. to 8:29 a.m.'
B08602e10='8:30 a.m. to 8:59 a.m.'
B08602e11='9:00 a.m. to 9:59 a.m.'
B08602e12='10:00 a.m. to 10:59 a.m.'
B08602e13='11:00 a.m. to 11:59 a.m.'
B08602e14='12:00 p.m. to 3:59 p.m.'
B08602e15='4:00 p.m. to 11:59 p.m.'
/*TRAVEL TIME TO WORK FOR WORKPLACE GEOGRAPHY */
/*Universe: Workers 16 years and over who did not work at home */
 
B08603e1='Total:'
B08603e2='Less than 5 minutes'
B08603e3='5 to 9 minutes'
B08603e4='10 to 14 minutes'
B08603e5='15 to 19 minutes'
B08603e6='20 to 24 minutes'
B08603e7='25 to 29 minutes'
B08603e8='30 to 34 minutes'
B08603e9='35 to 39 minutes'
B08603e10='40 to 44 minutes'
B08603e11='45 to 59 minutes'
B08603e12='60 to 89 minutes'
B08603e13='90 or more minutes'
/*WORKER POPULATION FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B08604e1='Total:'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B08541e1
B08541e2
B08541e3
B08541e4
B08541e5
B08541e6
B08541e7
B08541e8
B08541e9
B08541e10
B08541e11
B08541e12
B08541e13
B08541e14
B08541e15
B08541e16
B08541e17
B08541e18
B08541e19
B08541e20
B08541e21
B08541e22
B08541e23
B08541e24
B08541e25
B08541e26
B08541e27
B08541e28
B08541e29
B08541e30
B08541e31
B08541e32
B08541e33
B08541e34
B08541e35
 
B08601e1
B08601e2
B08601e3
B08601e4
B08601e5
B08601e6
B08601e7
B08601e8
B08601e9
B08601e10
B08601e11
B08601e12
B08601e13
B08601e14
B08601e15
B08601e16
B08601e17
B08601e18
B08601e19
B08601e20
B08601e21
 
B08602e1
B08602e2
B08602e3
B08602e4
B08602e5
B08602e6
B08602e7
B08602e8
B08602e9
B08602e10
B08602e11
B08602e12
B08602e13
B08602e14
B08602e15
 
B08603e1
B08603e2
B08603e3
B08603e4
B08603e5
B08603e6
B08603e7
B08603e8
B08603e9
B08603e10
B08603e11
B08603e12
B08603e13
 
B08604e1
;
RUN;
TITLE2;
