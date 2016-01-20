TITLE2 "e20125md0025000";
DATA work.SFe0025md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0025000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*MEANS OF TRANSPORTATION TO WORK BY LANGUAGE SPOKEN AT HOME AND ABILITY TO SPEAK ENGLISH */
/*Universe:  Workers 16 years and over */
 
B08113e1='Total:'
B08113e2='Speak only English'
B08113e3='Speak Spanish:'
B08113e4='Speak English "very well"'
B08113e5='Speak English less than "very well"'
B08113e6='Speak other languages:'
B08113e7='Speak English "very well"'
B08113e8='Speak English less than "very well"'
B08113e9='Car, truck, or van - drove alone:'
B08113e10='Speak only English'
B08113e11='Speak Spanish:'
B08113e12='Speak English "very well"'
B08113e13='Speak English less than "very well"'
B08113e14='Speak other languages:'
B08113e15='Speak English "very well"'
B08113e16='Speak English less than "very well"'
B08113e17='Car, truck, or van - carpooled:'
B08113e18='Speak only English'
B08113e19='Speak Spanish:'
B08113e20='Speak English "very well"'
B08113e21='Speak English less than "very well"'
B08113e22='Speak other languages:'
B08113e23='Speak English "very well"'
B08113e24='Speak English less than "very well"'
B08113e25='Public transportation (excluding taxicab):'
B08113e26='Speak only English'
B08113e27='Speak Spanish:'
B08113e28='Speak English "very well"'
B08113e29='Speak English less than "very well"'
B08113e30='Speak other languages:'
B08113e31='Speak English "very well"'
B08113e32='Speak English less than "very well"'
B08113e33='Walked:'
B08113e34='Speak only English'
B08113e35='Speak Spanish:'
B08113e36='Speak English "very well"'
B08113e37='Speak English less than "very well"'
B08113e38='Speak other languages:'
B08113e39='Speak English "very well"'
B08113e40='Speak English less than "very well"'
B08113e41='Taxicab, motorcycle, bicycle, or other means:'
B08113e42='Speak only English'
B08113e43='Speak Spanish:'
B08113e44='Speak English "very well"'
B08113e45='Speak English less than "very well"'
B08113e46='Speak other languages:'
B08113e47='Speak English "very well"'
B08113e48='Speak English less than "very well"'
B08113e49='Worked at home:'
B08113e50='Speak only English'
B08113e51='Speak Spanish:'
B08113e52='Speak English "very well"'
B08113e53='Speak English less than "very well"'
B08113e54='Speak other languages:'
B08113e55='Speak English "very well"'
B08113e56='Speak English less than "very well"'
/*MEANS OF TRANSPORTATION TO WORK BY WORKERS'' EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Workers 16 years and over with earnings */
 
B08119e1='Total:'
B08119e2='$1 to $9,999 or loss'
B08119e3='$10,000 to $14,999'
B08119e4='$15,000 to $24,999'
B08119e5='$25,000 to $34,999'
B08119e6='$35,000 to $49,999'
B08119e7='$50,000 to $64,999'
B08119e8='$65,000 to $74,999'
B08119e9='$75,000 or more'
B08119e10='Car, truck, or van - drove alone:'
B08119e11='$1 to $9,999 or loss'
B08119e12='$10,000 to $14,999'
B08119e13='$15,000 to $24,999'
B08119e14='$25,000 to $34,999'
B08119e15='$35,000 to $49,999'
B08119e16='$50,000 to $64,999'
B08119e17='$65,000 to $74,999'
B08119e18='$75,000 or more'
B08119e19='Car, truck, or van - carpooled:'
B08119e20='$1 to $9,999 or loss'
B08119e21='$10,000 to $14,999'
B08119e22='$15,000 to $24,999'
B08119e23='$25,000 to $34,999'
B08119e24='$35,000 to $49,999'
B08119e25='$50,000 to $64,999'
B08119e26='$65,000 to $74,999'
B08119e27='$75,000 or more'
B08119e28='Public transportation (excluding taxicab):'
B08119e29='$1 to $9,999 or loss'
B08119e30='$10,000 to $14,999'
B08119e31='$15,000 to $24,999'
B08119e32='$25,000 to $34,999'
B08119e33='$35,000 to $49,999'
B08119e34='$50,000 to $64,999'
B08119e35='$65,000 to $74,999'
B08119e36='$75,000 or more'
B08119e37='Walked:'
B08119e38='$1 to $9,999 or loss'
B08119e39='$10,000 to $14,999'
B08119e40='$15,000 to $24,999'
B08119e41='$25,000 to $34,999'
B08119e42='$35,000 to $49,999'
B08119e43='$50,000 to $64,999'
B08119e44='$65,000 to $74,999'
B08119e45='$75,000 or more'
B08119e46='Taxicab, motorcycle, bicycle, or other means:'
B08119e47='$1 to $9,999 or loss'
B08119e48='$10,000 to $14,999'
B08119e49='$15,000 to $24,999'
B08119e50='$25,000 to $34,999'
B08119e51='$35,000 to $49,999'
B08119e52='$50,000 to $64,999'
B08119e53='$65,000 to $74,999'
B08119e54='$75,000 or more'
B08119e55='Worked at home:'
B08119e56='$1 to $9,999 or loss'
B08119e57='$10,000 to $14,999'
B08119e58='$15,000 to $24,999'
B08119e59='$25,000 to $34,999'
B08119e60='$35,000 to $49,999'
B08119e61='$50,000 to $64,999'
B08119e62='$65,000 to $74,999'
B08119e63='$75,000 or more'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY MEANS OF TRANSPORTATION TO WORK */
/*Universe:  Workers 16 years and over with earnings */
/*Median earnings in the past 12 months -- */
 
B08121e1='Total:'
B08121e2='Car, truck, or van - drove alone'
B08121e3='Car, truck, or van - carpooled'
B08121e4='Public transportation (excluding taxicab)'
B08121e5='Walked'
B08121e6='Taxicab, motorcycle, bicycle, or other means'
B08121e7='Worked at home'
/*MEANS OF TRANSPORTATION TO WORK BY POVERTY STATUS IN THE PAST 12 MONTHS */
/*Universe:  Workers 16 years and over for whom poverty status is determined */
 
B08122e1='Total:'
B08122e2='Below 100 percent of the poverty level'
B08122e3='100 to 149 percent of the poverty level'
B08122e4='At or above 150 percent of the poverty level'
B08122e5='Car, truck, or van - drove alone:'
B08122e6='Below 100 percent of the poverty level'
B08122e7='100 to 149 percent of the poverty level'
B08122e8='At or above 150 percent of the poverty level'
B08122e9='Car, truck, or van - carpooled:'
B08122e10='Below 100 percent of the poverty level'
B08122e11='100 to 149 percent of the poverty level'
B08122e12='At or above 150 percent of the poverty level'
B08122e13='Public transportation (excluding taxicab):'
B08122e14='Below 100 percent of the poverty level'
B08122e15='100 to 149 percent of the poverty level'
B08122e16='At or above 150 percent of the poverty level'
B08122e17='Walked:'
B08122e18='Below 100 percent of the poverty level'
B08122e19='100 to 149 percent of the poverty level'
B08122e20='At or above 150 percent of the poverty level'
B08122e21='Taxicab, motorcycle, bicycle, or other means:'
B08122e22='Below 100 percent of the poverty level'
B08122e23='100 to 149 percent of the poverty level'
B08122e24='At or above 150 percent of the poverty level'
B08122e25='Worked at home:'
B08122e26='Below 100 percent of the poverty level'
B08122e27='100 to 149 percent of the poverty level'
B08122e28='At or above 150 percent of the poverty level'
/*MEANS OF TRANSPORTATION TO WORK BY OCCUPATION */
/*Universe:  Workers 16 years and over */
 
B08124e1='Total:'
B08124e2='Management, business, science, and arts occupations'
B08124e3='Service occupations'
B08124e4='Sales and office occupations'
B08124e5='Natural resources, construction, and maintenance occupations'
B08124e6='Production, transportation, and material moving occupations'
B08124e7='Military specific occupations'
B08124e8='Car, truck, or van - drove alone:'
B08124e9='Management, business, science, and arts occupations'
B08124e10='Service occupations'
B08124e11='Sales and office occupations'
B08124e12='Natural resources, construction, and maintenance occupations'
B08124e13='Production, transportation, and material moving occupations'
B08124e14='Military specific occupations'
B08124e15='Car, truck, or van - carpooled:'
B08124e16='Management, business, science, and arts occupations'
B08124e17='Service occupations'
B08124e18='Sales and office occupations'
B08124e19='Natural resources, construction, and maintenance occupations'
B08124e20='Production, transportation, and material moving occupations'
B08124e21='Military specific occupations'
B08124e22='Public transportation (excluding taxicab):'
B08124e23='Management, business, science, and arts occupations'
B08124e24='Service occupations'
B08124e25='Sales and office occupations'
B08124e26='Natural resources, construction, and maintenance occupations'
B08124e27='Production, transportation, and material moving occupations'
B08124e28='Military specific occupations'
B08124e29='Walked:'
B08124e30='Management, business, science, and arts occupations'
B08124e31='Service occupations'
B08124e32='Sales and office occupations'
B08124e33='Natural resources, construction, and maintenance occupations'
B08124e34='Production, transportation, and material moving occupations'
B08124e35='Military specific occupations'
B08124e36='Taxicab, motorcycle, bicycle, or other means:'
B08124e37='Management, business, science, and arts occupations'
B08124e38='Service occupations'
B08124e39='Sales and office occupations'
B08124e40='Natural resources, construction, and maintenance occupations'
B08124e41='Production, transportation, and material moving occupations'
B08124e42='Military specific occupations'
B08124e43='Worked at home:'
B08124e44='Management, business, science, and arts occupations'
B08124e45='Service occupations'
B08124e46='Sales and office occupations'
B08124e47='Natural resources, construction, and maintenance occupations'
B08124e48='Production, transportation, and material moving occupations'
B08124e49='Military specific occupations'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B08113e1
B08113e2
B08113e3
B08113e4
B08113e5
B08113e6
B08113e7
B08113e8
B08113e9
B08113e10
B08113e11
B08113e12
B08113e13
B08113e14
B08113e15
B08113e16
B08113e17
B08113e18
B08113e19
B08113e20
B08113e21
B08113e22
B08113e23
B08113e24
B08113e25
B08113e26
B08113e27
B08113e28
B08113e29
B08113e30
B08113e31
B08113e32
B08113e33
B08113e34
B08113e35
B08113e36
B08113e37
B08113e38
B08113e39
B08113e40
B08113e41
B08113e42
B08113e43
B08113e44
B08113e45
B08113e46
B08113e47
B08113e48
B08113e49
B08113e50
B08113e51
B08113e52
B08113e53
B08113e54
B08113e55
B08113e56
 
B08119e1
B08119e2
B08119e3
B08119e4
B08119e5
B08119e6
B08119e7
B08119e8
B08119e9
B08119e10
B08119e11
B08119e12
B08119e13
B08119e14
B08119e15
B08119e16
B08119e17
B08119e18
B08119e19
B08119e20
B08119e21
B08119e22
B08119e23
B08119e24
B08119e25
B08119e26
B08119e27
B08119e28
B08119e29
B08119e30
B08119e31
B08119e32
B08119e33
B08119e34
B08119e35
B08119e36
B08119e37
B08119e38
B08119e39
B08119e40
B08119e41
B08119e42
B08119e43
B08119e44
B08119e45
B08119e46
B08119e47
B08119e48
B08119e49
B08119e50
B08119e51
B08119e52
B08119e53
B08119e54
B08119e55
B08119e56
B08119e57
B08119e58
B08119e59
B08119e60
B08119e61
B08119e62
B08119e63
 
B08121e1
B08121e2
B08121e3
B08121e4
B08121e5
B08121e6
B08121e7
 
B08122e1
B08122e2
B08122e3
B08122e4
B08122e5
B08122e6
B08122e7
B08122e8
B08122e9
B08122e10
B08122e11
B08122e12
B08122e13
B08122e14
B08122e15
B08122e16
B08122e17
B08122e18
B08122e19
B08122e20
B08122e21
B08122e22
B08122e23
B08122e24
B08122e25
B08122e26
B08122e27
B08122e28
 
B08124e1
B08124e2
B08124e3
B08124e4
B08124e5
B08124e6
B08124e7
B08124e8
B08124e9
B08124e10
B08124e11
B08124e12
B08124e13
B08124e14
B08124e15
B08124e16
B08124e17
B08124e18
B08124e19
B08124e20
B08124e21
B08124e22
B08124e23
B08124e24
B08124e25
B08124e26
B08124e27
B08124e28
B08124e29
B08124e30
B08124e31
B08124e32
B08124e33
B08124e34
B08124e35
B08124e36
B08124e37
B08124e38
B08124e39
B08124e40
B08124e41
B08124e42
B08124e43
B08124e44
B08124e45
B08124e46
B08124e47
B08124e48
B08124e49
;
RUN;
TITLE2;
