TITLE2 "e20115dc0029000";
DATA work.SFe0029dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0029000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*SEX OF WORKERS BY MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B08406e1='Total:'
B08406e2='Car, truck, or van:'
B08406e3='Drove alone'
B08406e4='Carpooled:'
B08406e5='In 2-person carpool'
B08406e6='In 3-person carpool'
B08406e7='In 4-or-more-person carpool'
B08406e8='Public transportation (excluding taxicab):'
B08406e9='Bus or trolley bus'
B08406e10='Streetcar or trolley car (carro publico in Puerto Rico)'
B08406e11='Subway or elevated'
B08406e12='Railroad'
B08406e13='Ferryboat'
B08406e14='Bicycle'
B08406e15='Walked'
B08406e16='Taxicab, motorcycle, or other means'
B08406e17='Worked at home'
B08406e18='Male:'
B08406e19='Car, truck, or van:'
B08406e20='Drove alone'
B08406e21='Carpooled:'
B08406e22='In 2-person carpool'
B08406e23='In 3-person carpool'
B08406e24='In 4-or-more-person carpool'
B08406e25='Public transportation (excluding taxicab):'
B08406e26='Bus or trolley bus'
B08406e27='Streetcar or trolley car (carro publico in Puerto Rico)'
B08406e28='Subway or elevated'
B08406e29='Railroad'
B08406e30='Ferryboat'
B08406e31='Bicycle'
B08406e32='Walked'
B08406e33='Taxicab, motorcycle, or other means'
B08406e34='Worked at home'
B08406e35='Female:'
B08406e36='Car, truck, or van:'
B08406e37='Drove alone'
B08406e38='Carpooled:'
B08406e39='In 2-person carpool'
B08406e40='In 3-person carpool'
B08406e41='In 4-or-more-person carpool'
B08406e42='Public transportation (excluding taxicab):'
B08406e43='Bus or trolley bus'
B08406e44='Streetcar or trolley car (carro publico in Puerto Rico)'
B08406e45='Subway or elevated'
B08406e46='Railroad'
B08406e47='Ferryboat'
B08406e48='Bicycle'
B08406e49='Walked'
B08406e50='Taxicab, motorcycle, or other means'
B08406e51='Worked at home'
 
/*SEX OF WORKERS BY TRAVEL TIME TO WORK FOR WORKPLACE GEOGRAPHY */
/*Universe: Workers 16 years and over who did not work at home */
 
B08412e1='Total:'
B08412e2='Less than 5 minutes'
B08412e3='5 to 9 minutes'
B08412e4='10 to 14 minutes'
B08412e5='15 to 19 minutes'
B08412e6='20 to 24 minutes'
B08412e7='25 to 29 minutes'
B08412e8='30 to 34 minutes'
B08412e9='35 to 39 minutes'
B08412e10='40 to 44 minutes'
B08412e11='45 to 59 minutes'
B08412e12='60 to 89 minutes'
B08412e13='90 or more minutes'
B08412e14='Male:'
B08412e15='Less than 5 minutes'
B08412e16='5 to 9 minutes'
B08412e17='10 to 14 minutes'
B08412e18='15 to 19 minutes'
B08412e19='20 to 24 minutes'
B08412e20='25 to 29 minutes'
B08412e21='30 to 34 minutes'
B08412e22='35 to 39 minutes'
B08412e23='40 to 44 minutes'
B08412e24='45 to 59 minutes'
B08412e25='60 to 89 minutes'
B08412e26='90 or more minutes'
B08412e27='Female:'
B08412e28='Less than 5 minutes'
B08412e29='5 to 9 minutes'
B08412e30='10 to 14 minutes'
B08412e31='15 to 19 minutes'
B08412e32='20 to 24 minutes'
B08412e33='25 to 29 minutes'
B08412e34='30 to 34 minutes'
B08412e35='35 to 39 minutes'
B08412e36='40 to 44 minutes'
B08412e37='45 to 59 minutes'
B08412e38='60 to 89 minutes'
B08412e39='90 or more minutes'
 
/*MEANS OF TRANSPORTATION TO WORK BY AGE FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B08501e1='Total:'
B08501e2='16 to 19 years'
B08501e3='20 to 24 years'
B08501e4='25 to 44 years'
B08501e5='45 to 54 years'
B08501e6='55 to 59 years'
B08501e7='60 to 64 years'
B08501e8='65 years and over'
B08501e9='Car, truck, or van - drove alone:'
B08501e10='16 to 19 years'
B08501e11='20 to 24 years'
B08501e12='25 to 44 years'
B08501e13='45 to 54 years'
B08501e14='55 to 59 years'
B08501e15='60 to 64 years'
B08501e16='65 years and over'
B08501e17='Car, truck, or van - carpooled:'
B08501e18='16 to 19 years'
B08501e19='20 to 24 years'
B08501e20='25 to 44 years'
B08501e21='45 to 54 years'
B08501e22='55 to 59 years'
B08501e23='60 to 64 years'
B08501e24='65 years and over'
B08501e25='Public transportation (excluding taxicab):'
B08501e26='16 to 19 years'
B08501e27='20 to 24 years'
B08501e28='25 to 44 years'
B08501e29='45 to 54 years'
B08501e30='55 to 59 years'
B08501e31='60 to 64 years'
B08501e32='65 years and over'
B08501e33='Walked:'
B08501e34='16 to 19 years'
B08501e35='20 to 24 years'
B08501e36='25 to 44 years'
B08501e37='45 to 54 years'
B08501e38='55 to 59 years'
B08501e39='60 to 64 years'
B08501e40='65 years and over'
B08501e41='Taxicab, motorcycle, bicycle, or other means:'
B08501e42='16 to 19 years'
B08501e43='20 to 24 years'
B08501e44='25 to 44 years'
B08501e45='45 to 54 years'
B08501e46='55 to 59 years'
B08501e47='60 to 64 years'
B08501e48='65 years and over'
B08501e49='Worked at home:'
B08501e50='16 to 19 years'
B08501e51='20 to 24 years'
B08501e52='25 to 44 years'
B08501e53='45 to 54 years'
B08501e54='55 to 59 years'
B08501e55='60 to 64 years'
B08501e56='65 years and over'
 
/*MEDIAN AGE BY MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
/*Median age -- */
 
B08503e1='Total:'
B08503e2='Car, truck, or van - drove alone'
B08503e3='Car, truck, or van - carpooled'
B08503e4='Public transportation (excluding taxicab)'
B08503e5='Walked'
B08503e6='Taxicab, motorcycle, bicycle, or other means'
B08503e7='Worked at home'
 
/*MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY (WHITE ALONE) */
/*Universe:  White alone workers 16 years and over */
 
B08505Ae1='Total:'
B08505Ae2='Car, truck, or van - drove alone'
B08505Ae3='Car, truck, or van - carpooled'
B08505Ae4='Public transportation (excluding taxicab)'
B08505Ae5='Walked'
B08505Ae6='Taxicab, motorcycle, bicycle, or other means'
B08505Ae7='Worked at home'
 
/*MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone workers 16 years and over */
 
B08505Be1='Total:'
B08505Be2='Car, truck, or van - drove alone'
B08505Be3='Car, truck, or van - carpooled'
B08505Be4='Public transportation (excluding taxicab)'
B08505Be5='Walked'
B08505Be6='Taxicab, motorcycle, bicycle, or other means'
B08505Be7='Worked at home'
 
/*MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone workers 16 years and over */
 
B08505Ce1='Total:'
B08505Ce2='Car, truck, or van - drove alone'
B08505Ce3='Car, truck, or van - carpooled'
B08505Ce4='Public transportation (excluding taxicab)'
B08505Ce5='Walked'
B08505Ce6='Taxicab, motorcycle, bicycle, or other means'
B08505Ce7='Worked at home'
 
/*MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY (ASIAN ALONE) */
/*Universe:  Asian alone workers 16 years and over */
 
B08505De1='Total:'
B08505De2='Car, truck, or van - drove alone'
B08505De3='Car, truck, or van - carpooled'
B08505De4='Public transportation (excluding taxicab)'
B08505De5='Walked'
B08505De6='Taxicab, motorcycle, bicycle, or other means'
B08505De7='Worked at home'
 
/*MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone workers 16 years and over */
 
B08505Ee1='Total:'
B08505Ee2='Car, truck, or van - drove alone'
B08505Ee3='Car, truck, or van - carpooled'
B08505Ee4='Public transportation (excluding taxicab)'
B08505Ee5='Walked'
B08505Ee6='Taxicab, motorcycle, bicycle, or other means'
B08505Ee7='Worked at home'
 
/*MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone workers 16 years and over */
 
B08505Fe1='Total:'
B08505Fe2='Car, truck, or van - drove alone'
B08505Fe3='Car, truck, or van - carpooled'
B08505Fe4='Public transportation (excluding taxicab)'
B08505Fe5='Walked'
B08505Fe6='Taxicab, motorcycle, bicycle, or other means'
B08505Fe7='Worked at home'
 
/*MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY (TWO OR MORE RACES) */
/*Universe:  Two or more races workers 16 years and over */
 
B08505Ge1='Total:'
B08505Ge2='Car, truck, or van - drove alone'
B08505Ge3='Car, truck, or van - carpooled'
B08505Ge4='Public transportation (excluding taxicab)'
B08505Ge5='Walked'
B08505Ge6='Taxicab, motorcycle, bicycle, or other means'
B08505Ge7='Worked at home'
 
/*MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino workers 16 years and over */
 
B08505He1='Total:'
B08505He2='Car, truck, or van - drove alone'
B08505He3='Car, truck, or van - carpooled'
B08505He4='Public transportation (excluding taxicab)'
B08505He5='Walked'
B08505He6='Taxicab, motorcycle, bicycle, or other means'
B08505He7='Worked at home'
 
/*MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino workers 16 years and over */
 
B08505Ie1='Total:'
B08505Ie2='Car, truck, or van - drove alone'
B08505Ie3='Car, truck, or van - carpooled'
B08505Ie4='Public transportation (excluding taxicab)'
B08505Ie5='Walked'
B08505Ie6='Taxicab, motorcycle, bicycle, or other means'
B08505Ie7='Worked at home'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B08406e1
B08406e2
B08406e3
B08406e4
B08406e5
B08406e6
B08406e7
B08406e8
B08406e9
B08406e10
B08406e11
B08406e12
B08406e13
B08406e14
B08406e15
B08406e16
B08406e17
B08406e18
B08406e19
B08406e20
B08406e21
B08406e22
B08406e23
B08406e24
B08406e25
B08406e26
B08406e27
B08406e28
B08406e29
B08406e30
B08406e31
B08406e32
B08406e33
B08406e34
B08406e35
B08406e36
B08406e37
B08406e38
B08406e39
B08406e40
B08406e41
B08406e42
B08406e43
B08406e44
B08406e45
B08406e46
B08406e47
B08406e48
B08406e49
B08406e50
B08406e51
 
B08412e1
B08412e2
B08412e3
B08412e4
B08412e5
B08412e6
B08412e7
B08412e8
B08412e9
B08412e10
B08412e11
B08412e12
B08412e13
B08412e14
B08412e15
B08412e16
B08412e17
B08412e18
B08412e19
B08412e20
B08412e21
B08412e22
B08412e23
B08412e24
B08412e25
B08412e26
B08412e27
B08412e28
B08412e29
B08412e30
B08412e31
B08412e32
B08412e33
B08412e34
B08412e35
B08412e36
B08412e37
B08412e38
B08412e39
 
B08501e1
B08501e2
B08501e3
B08501e4
B08501e5
B08501e6
B08501e7
B08501e8
B08501e9
B08501e10
B08501e11
B08501e12
B08501e13
B08501e14
B08501e15
B08501e16
B08501e17
B08501e18
B08501e19
B08501e20
B08501e21
B08501e22
B08501e23
B08501e24
B08501e25
B08501e26
B08501e27
B08501e28
B08501e29
B08501e30
B08501e31
B08501e32
B08501e33
B08501e34
B08501e35
B08501e36
B08501e37
B08501e38
B08501e39
B08501e40
B08501e41
B08501e42
B08501e43
B08501e44
B08501e45
B08501e46
B08501e47
B08501e48
B08501e49
B08501e50
B08501e51
B08501e52
B08501e53
B08501e54
B08501e55
B08501e56
 
B08503e1
B08503e2
B08503e3
B08503e4
B08503e5
B08503e6
B08503e7
 
B08505Ae1
B08505Ae2
B08505Ae3
B08505Ae4
B08505Ae5
B08505Ae6
B08505Ae7
 
B08505Be1
B08505Be2
B08505Be3
B08505Be4
B08505Be5
B08505Be6
B08505Be7
 
B08505Ce1
B08505Ce2
B08505Ce3
B08505Ce4
B08505Ce5
B08505Ce6
B08505Ce7
 
B08505De1
B08505De2
B08505De3
B08505De4
B08505De5
B08505De6
B08505De7
 
B08505Ee1
B08505Ee2
B08505Ee3
B08505Ee4
B08505Ee5
B08505Ee6
B08505Ee7
 
B08505Fe1
B08505Fe2
B08505Fe3
B08505Fe4
B08505Fe5
B08505Fe6
B08505Fe7
 
B08505Ge1
B08505Ge2
B08505Ge3
B08505Ge4
B08505Ge5
B08505Ge6
B08505Ge7
 
B08505He1
B08505He2
B08505He3
B08505He4
B08505He5
B08505He6
B08505He7
 
B08505Ie1
B08505Ie2
B08505Ie3
B08505Ie4
B08505Ie5
B08505Ie6
B08505Ie7
;
RUN;
TITLE2;
