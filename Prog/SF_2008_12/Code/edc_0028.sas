TITLE2 "e20125dc0028000";
DATA work.SFe0028dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0028000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*AGGREGATE TRAVEL TIME TO WORK (IN MINUTES) OF WORKERS BY MEANS OF TRANSPORTATION TO WORK */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08136e1='Aggregate travel time to work (in minutes):'
B08136e2='Car, truck, or van:'
B08136e3='Drove alone'
B08136e4='Carpooled:'
B08136e5='In 2-person carpool'
B08136e6='In 3-or-more-person carpool'
B08136e7='Public transportation (excluding taxicab):'
B08136e8='Bus or trolley bus'
B08136e9='Streetcar or trolley car (carro publico in Puerto Rico), subway or elevated'
B08136e10='Railroad or ferryboat'
B08136e11='Walked'
B08136e12='Taxicab, motorcycle, bicycle, or other means'
/*MEANS OF TRANSPORTATION TO WORK BY TENURE */
/*Universe:  Workers 16 years and over in households */
 
B08137e1='Total:'
B08137e2='Householder lived in owner-occupied housing units'
B08137e3='Householder lived in renter-occupied housing units'
B08137e4='Car, truck, or van - drove alone:'
B08137e5='Householder lived in owner-occupied housing units'
B08137e6='Householder lived in renter-occupied housing units'
B08137e7='Car, truck, or van - carpooled:'
B08137e8='Householder lived in owner-occupied housing units'
B08137e9='Householder lived in renter-occupied housing units'
B08137e10='Public transportation (excluding taxicab):'
B08137e11='Householder lived in owner-occupied housing units'
B08137e12='Householder lived in renter-occupied housing units'
B08137e13='Walked:'
B08137e14='Householder lived in owner-occupied housing units'
B08137e15='Householder lived in renter-occupied housing units'
B08137e16='Taxicab, motorcycle, bicycle, or other means:'
B08137e17='Householder lived in owner-occupied housing units'
B08137e18='Householder lived in renter-occupied housing units'
B08137e19='Worked at home:'
B08137e20='Householder lived in owner-occupied housing units'
B08137e21='Householder lived in renter-occupied housing units'
/*MEANS OF TRANSPORTATION TO WORK BY VEHICLES AVAILABLE */
/*Universe:  Workers 16 years and over in households */
 
B08141e1='Total:'
B08141e2='No vehicle available'
B08141e3='1 vehicle available'
B08141e4='2 vehicles available'
B08141e5='3 or more vehicles available'
B08141e6='Car, truck, or van - drove alone:'
B08141e7='No vehicle available'
B08141e8='1 vehicle available'
B08141e9='2 vehicles available'
B08141e10='3 or more vehicles available'
B08141e11='Car, truck, or van - carpooled:'
B08141e12='No vehicle available'
B08141e13='1 vehicle available'
B08141e14='2 vehicles available'
B08141e15='3 or more vehicles available'
B08141e16='Public transportation (excluding taxicab):'
B08141e17='No vehicle available'
B08141e18='1 vehicle available'
B08141e19='2 vehicles available'
B08141e20='3 or more vehicles available'
B08141e21='Walked:'
B08141e22='No vehicle available'
B08141e23='1 vehicle available'
B08141e24='2 vehicles available'
B08141e25='3 or more vehicles available'
B08141e26='Taxicab, motorcycle, bicycle, or other means:'
B08141e27='No vehicle available'
B08141e28='1 vehicle available'
B08141e29='2 vehicles available'
B08141e30='3 or more vehicles available'
B08141e31='Worked at home:'
B08141e32='No vehicle available'
B08141e33='1 vehicle available'
B08141e34='2 vehicles available'
B08141e35='3 or more vehicles available'
/*HOUSEHOLD SIZE BY VEHICLES AVAILABLE */
/*Universe:  Households */
 
B08201e1='Total:'
B08201e2='No vehicle available'
B08201e3='1 vehicle available'
B08201e4='2 vehicles available'
B08201e5='3 vehicles available'
B08201e6='4 or more vehicles available'
B08201e7='1-person household:'
B08201e8='No vehicle available'
B08201e9='1 vehicle available'
B08201e10='2 vehicles available'
B08201e11='3 vehicles available'
B08201e12='4 or more vehicles available'
B08201e13='2-person household:'
B08201e14='No vehicle available'
B08201e15='1 vehicle available'
B08201e16='2 vehicles available'
B08201e17='3 vehicles available'
B08201e18='4 or more vehicles available'
B08201e19='3-person household:'
B08201e20='No vehicle available'
B08201e21='1 vehicle available'
B08201e22='2 vehicles available'
B08201e23='3 vehicles available'
B08201e24='4 or more vehicles available'
B08201e25='4-or-more-person household:'
B08201e26='No vehicle available'
B08201e27='1 vehicle available'
B08201e28='2 vehicles available'
B08201e29='3 vehicles available'
B08201e30='4 or more vehicles available'
/*HOUSEHOLD SIZE BY NUMBER OF WORKERS IN HOUSEHOLD */
/*Universe:  Households */
 
B08202e1='Total:'
B08202e2='No workers'
B08202e3='1 worker'
B08202e4='2 workers'
B08202e5='3 or more workers'
B08202e6='1-person household:'
B08202e7='No workers'
B08202e8='1 worker'
B08202e9='2-person household:'
B08202e10='No workers'
B08202e11='1 worker'
B08202e12='2 workers'
B08202e13='3-person household:'
B08202e14='No workers'
B08202e15='1 worker'
B08202e16='2 workers'
B08202e17='3 workers'
B08202e18='4-or-more-person household:'
B08202e19='No workers'
B08202e20='1 worker'
B08202e21='2 workers'
B08202e22='3 or more workers'
/*NUMBER OF WORKERS IN HOUSEHOLD BY VEHICLES AVAILABLE */
/*Universe:  Households */
 
B08203e1='Total:'
B08203e2='No vehicle available'
B08203e3='1 vehicle available'
B08203e4='2 vehicles available'
B08203e5='3 vehicles available'
B08203e6='4 or more vehicles available'
B08203e7='No workers:'
B08203e8='No vehicle available'
B08203e9='1 vehicle available'
B08203e10='2 vehicles available'
B08203e11='3 vehicles available'
B08203e12='4 or more vehicles available'
B08203e13='1 worker:'
B08203e14='No vehicle available'
B08203e15='1 vehicle available'
B08203e16='2 vehicles available'
B08203e17='3 vehicles available'
B08203e18='4 or more vehicles available'
B08203e19='2 workers:'
B08203e20='No vehicle available'
B08203e21='1 vehicle available'
B08203e22='2 vehicles available'
B08203e23='3 vehicles available'
B08203e24='4 or more vehicles available'
B08203e25='3 or more workers:'
B08203e26='No vehicle available'
B08203e27='1 vehicle available'
B08203e28='2 vehicles available'
B08203e29='3 vehicles available'
B08203e30='4 or more vehicles available'
/*MEANS OF TRANSPORTATION TO WORK */
/*Universe:  Workers 16 years and over */
 
B08301e1='Total:'
B08301e2='Car, truck, or van:'
B08301e3='Drove alone'
B08301e4='Carpooled:'
B08301e5='In 2-person carpool'
B08301e6='In 3-person carpool'
B08301e7='In 4-person carpool'
B08301e8='In 5- or 6-person carpool'
B08301e9='In 7-or-more-person carpool'
B08301e10='Public transportation (excluding taxicab):'
B08301e11='Bus or trolley bus'
B08301e12='Streetcar or trolley car (carro publico in Puerto Rico)'
B08301e13='Subway or elevated'
B08301e14='Railroad'
B08301e15='Ferryboat'
B08301e16='Taxicab'
B08301e17='Motorcycle'
B08301e18='Bicycle'
B08301e19='Walked'
B08301e20='Other means'
B08301e21='Worked at home'
/*TIME LEAVING HOME TO GO TO WORK */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08302e1='Total:'
B08302e2='12:00 a.m. to 4:59 a.m.'
B08302e3='5:00 a.m. to 5:29 a.m.'
B08302e4='5:30 a.m. to 5:59 a.m.'
B08302e5='6:00 a.m. to 6:29 a.m.'
B08302e6='6:30 a.m. to 6:59 a.m.'
B08302e7='7:00 a.m. to 7:29 a.m.'
B08302e8='7:30 a.m. to 7:59 a.m.'
B08302e9='8:00 a.m. to 8:29 a.m.'
B08302e10='8:30 a.m. to 8:59 a.m.'
B08302e11='9:00 a.m. to 9:59 a.m.'
B08302e12='10:00 a.m. to 10:59 a.m.'
B08302e13='11:00 a.m. to 11:59 a.m.'
B08302e14='12:00 p.m. to 3:59 p.m.'
B08302e15='4:00 p.m. to 11:59 p.m.'
/*TRAVEL TIME TO WORK */
/*Universe:  Workers 16 years and over who did not work at home */
 
B08303e1='Total:'
B08303e2='Less than 5 minutes'
B08303e3='5 to 9 minutes'
B08303e4='10 to 14 minutes'
B08303e5='15 to 19 minutes'
B08303e6='20 to 24 minutes'
B08303e7='25 to 29 minutes'
B08303e8='30 to 34 minutes'
B08303e9='35 to 39 minutes'
B08303e10='40 to 44 minutes'
B08303e11='45 to 59 minutes'
B08303e12='60 to 89 minutes'
B08303e13='90 or more minutes'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B08136e1
B08136e2
B08136e3
B08136e4
B08136e5
B08136e6
B08136e7
B08136e8
B08136e9
B08136e10
B08136e11
B08136e12
 
B08137e1
B08137e2
B08137e3
B08137e4
B08137e5
B08137e6
B08137e7
B08137e8
B08137e9
B08137e10
B08137e11
B08137e12
B08137e13
B08137e14
B08137e15
B08137e16
B08137e17
B08137e18
B08137e19
B08137e20
B08137e21
 
B08141e1
B08141e2
B08141e3
B08141e4
B08141e5
B08141e6
B08141e7
B08141e8
B08141e9
B08141e10
B08141e11
B08141e12
B08141e13
B08141e14
B08141e15
B08141e16
B08141e17
B08141e18
B08141e19
B08141e20
B08141e21
B08141e22
B08141e23
B08141e24
B08141e25
B08141e26
B08141e27
B08141e28
B08141e29
B08141e30
B08141e31
B08141e32
B08141e33
B08141e34
B08141e35
 
B08201e1
B08201e2
B08201e3
B08201e4
B08201e5
B08201e6
B08201e7
B08201e8
B08201e9
B08201e10
B08201e11
B08201e12
B08201e13
B08201e14
B08201e15
B08201e16
B08201e17
B08201e18
B08201e19
B08201e20
B08201e21
B08201e22
B08201e23
B08201e24
B08201e25
B08201e26
B08201e27
B08201e28
B08201e29
B08201e30
 
B08202e1
B08202e2
B08202e3
B08202e4
B08202e5
B08202e6
B08202e7
B08202e8
B08202e9
B08202e10
B08202e11
B08202e12
B08202e13
B08202e14
B08202e15
B08202e16
B08202e17
B08202e18
B08202e19
B08202e20
B08202e21
B08202e22
 
B08203e1
B08203e2
B08203e3
B08203e4
B08203e5
B08203e6
B08203e7
B08203e8
B08203e9
B08203e10
B08203e11
B08203e12
B08203e13
B08203e14
B08203e15
B08203e16
B08203e17
B08203e18
B08203e19
B08203e20
B08203e21
B08203e22
B08203e23
B08203e24
B08203e25
B08203e26
B08203e27
B08203e28
B08203e29
B08203e30
 
B08301e1
B08301e2
B08301e3
B08301e4
B08301e5
B08301e6
B08301e7
B08301e8
B08301e9
B08301e10
B08301e11
B08301e12
B08301e13
B08301e14
B08301e15
B08301e16
B08301e17
B08301e18
B08301e19
B08301e20
B08301e21
 
B08302e1
B08302e2
B08302e3
B08302e4
B08302e5
B08302e6
B08302e7
B08302e8
B08302e9
B08302e10
B08302e11
B08302e12
B08302e13
B08302e14
B08302e15
 
B08303e1
B08303e2
B08303e3
B08303e4
B08303e5
B08303e6
B08303e7
B08303e8
B08303e9
B08303e10
B08303e11
B08303e12
B08303e13
;
RUN;
TITLE2;
