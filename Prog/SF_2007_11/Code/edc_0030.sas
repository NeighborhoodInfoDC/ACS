TITLE2 "e20115dc0030000";
DATA work.SFe0030dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0030000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*MEANS OF TRANSPORTATION TO WORK BY CITIZENSHIP STATUS FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B08511e1='Total:'
B08511e2='Native'
B08511e3='Foreign born:'
B08511e4='Naturalized U.S. citizen'
B08511e5='Not a U.S. citizen'
B08511e6='Car, truck, or van - drove alone:'
B08511e7='Native'
B08511e8='Foreign born:'
B08511e9='Naturalized U.S. citizen'
B08511e10='Not a U.S. citizen'
B08511e11='Car, truck, or van - carpooled:'
B08511e12='Native'
B08511e13='Foreign born:'
B08511e14='Naturalized U.S. citizen'
B08511e15='Not a U.S. citizen'
B08511e16='Public transportation (excluding taxicab):'
B08511e17='Native'
B08511e18='Foreign born:'
B08511e19='Naturalized U.S. citizen'
B08511e20='Not a U.S. citizen'
B08511e21='Walked:'
B08511e22='Native'
B08511e23='Foreign born:'
B08511e24='Naturalized U.S. citizen'
B08511e25='Not a U.S. citizen'
B08511e26='Taxicab, motorcycle, bicycle, or other means:'
B08511e27='Native'
B08511e28='Foreign born:'
B08511e29='Naturalized U.S. citizen'
B08511e30='Not a U.S. citizen'
B08511e31='Worked at home:'
B08511e32='Native'
B08511e33='Foreign born:'
B08511e34='Naturalized U.S. citizen'
B08511e35='Not a U.S. citizen'
 
/*MEANS OF TRANSPORTATION TO WORK BY LANGUAGE SPOKEN AT HOME AND ABILITY TO SPEAK ENGLISH FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B08513e1='Total:'
B08513e2='Speak only English'
B08513e3='Speak Spanish:'
B08513e4='Speak English "very well"'
B08513e5='Speak English less than "very well"'
B08513e6='Speak other languages:'
B08513e7='Speak English "very well"'
B08513e8='Speak English less than "very well"'
B08513e9='Car, truck, or van - drove alone:'
B08513e10='Speak only English'
B08513e11='Speak Spanish:'
B08513e12='Speak English "very well"'
B08513e13='Speak English less than "very well"'
B08513e14='Speak other languages:'
B08513e15='Speak English "very well"'
B08513e16='Speak English less than "very well"'
B08513e17='Car, truck, or van - carpooled:'
B08513e18='Speak only English'
B08513e19='Speak Spanish:'
B08513e20='Speak English "very well"'
B08513e21='Speak English less than "very well"'
B08513e22='Speak other languages:'
B08513e23='Speak English "very well"'
B08513e24='Speak English less than "very well"'
B08513e25='Public transportation (excluding taxicab):'
B08513e26='Speak only English'
B08513e27='Speak Spanish:'
B08513e28='Speak English "very well"'
B08513e29='Speak English less than "very well"'
B08513e30='Speak other languages:'
B08513e31='Speak English "very well"'
B08513e32='Speak English less than "very well"'
B08513e33='Walked:'
B08513e34='Speak only English'
B08513e35='Speak Spanish:'
B08513e36='Speak English "very well"'
B08513e37='Speak English less than "very well"'
B08513e38='Speak other languages:'
B08513e39='Speak English "very well"'
B08513e40='Speak English less than "very well"'
B08513e41='Taxicab, motorcycle, bicycle, or other means:'
B08513e42='Speak only English'
B08513e43='Speak Spanish:'
B08513e44='Speak English "very well"'
B08513e45='Speak English less than "very well"'
B08513e46='Speak other languages:'
B08513e47='Speak English "very well"'
B08513e48='Speak English less than "very well"'
B08513e49='Worked at home:'
B08513e50='Speak only English'
B08513e51='Speak Spanish:'
B08513e52='Speak English "very well"'
B08513e53='Speak English less than "very well"'
B08513e54='Speak other languages:'
B08513e55='Speak English "very well"'
B08513e56='Speak English less than "very well"'
 
/*MEANS OF TRANSPORTATION TO WORK BY WORKERS'' EARNINGS IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over with earnings */
 
B08519e1='Total:'
B08519e2='$1 to $9,999 or loss'
B08519e3='$10,000 to $14,999'
B08519e4='$15,000 to $24,999'
B08519e5='$25,000 to $34,999'
B08519e6='$35,000 to $49,999'
B08519e7='$50,000 to $64,999'
B08519e8='$65,000 to $74,999'
B08519e9='$75,000 or more'
B08519e10='Car, truck, or van - drove alone:'
B08519e11='$1 to $9,999 or loss'
B08519e12='$10,000 to $14,999'
B08519e13='$15,000 to $24,999'
B08519e14='$25,000 to $34,999'
B08519e15='$35,000 to $49,999'
B08519e16='$50,000 to $64,999'
B08519e17='$65,000 to $74,999'
B08519e18='$75,000 or more'
B08519e19='Car, truck, or van - carpooled:'
B08519e20='$1 to $9,999 or loss'
B08519e21='$10,000 to $14,999'
B08519e22='$15,000 to $24,999'
B08519e23='$25,000 to $34,999'
B08519e24='$35,000 to $49,999'
B08519e25='$50,000 to $64,999'
B08519e26='$65,000 to $74,999'
B08519e27='$75,000 or more'
B08519e28='Public transportation (excluding taxicab):'
B08519e29='$1 to $9,999 or loss'
B08519e30='$10,000 to $14,999'
B08519e31='$15,000 to $24,999'
B08519e32='$25,000 to $34,999'
B08519e33='$35,000 to $49,999'
B08519e34='$50,000 to $64,999'
B08519e35='$65,000 to $74,999'
B08519e36='$75,000 or more'
B08519e37='Walked:'
B08519e38='$1 to $9,999 or loss'
B08519e39='$10,000 to $14,999'
B08519e40='$15,000 to $24,999'
B08519e41='$25,000 to $34,999'
B08519e42='$35,000 to $49,999'
B08519e43='$50,000 to $64,999'
B08519e44='$65,000 to $74,999'
B08519e45='$75,000 or more'
B08519e46='Taxicab, motorcycle, bicycle, or other means:'
B08519e47='$1 to $9,999 or loss'
B08519e48='$10,000 to $14,999'
B08519e49='$15,000 to $24,999'
B08519e50='$25,000 to $34,999'
B08519e51='$35,000 to $49,999'
B08519e52='$50,000 to $64,999'
B08519e53='$65,000 to $74,999'
B08519e54='$75,000 or more'
B08519e55='Worked at home:'
B08519e56='$1 to $9,999 or loss'
B08519e57='$10,000 to $14,999'
B08519e58='$15,000 to $24,999'
B08519e59='$25,000 to $34,999'
B08519e60='$35,000 to $49,999'
B08519e61='$50,000 to $64,999'
B08519e62='$65,000 to $74,999'
B08519e63='$75,000 or more'
 
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over with earnings */
/*Median earnings in the past 12 months -- */
 
B08521e1='Total:'
B08521e2='Car, truck, or van - drove alone'
B08521e3='Car, truck, or van - carpooled'
B08521e4='Public transportation (excluding taxicab)'
B08521e5='Walked'
B08521e6='Taxicab, motorcycle, bicycle, or other means'
B08521e7='Worked at home'
 
/*MEANS OF TRANSPORTATION TO WORK BY POVERTY STATUS IN THE PAST 12 MONTHS FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over for whom poverty status is determined */
 
B08522e1='Total:'
B08522e2='Below 100 percent of the poverty level'
B08522e3='100 to 149 percent of the poverty level'
B08522e4='At or above 150 percent of the poverty level'
B08522e5='Car, truck, or van - drove alone:'
B08522e6='Below 100 percent of the poverty level'
B08522e7='100 to 149 percent of the poverty level'
B08522e8='At or above 150 percent of the poverty level'
B08522e9='Car, truck, or van - carpooled:'
B08522e10='Below 100 percent of the poverty level'
B08522e11='100 to 149 percent of the poverty level'
B08522e12='At or above 150 percent of the poverty level'
B08522e13='Public transportation (excluding taxicab):'
B08522e14='Below 100 percent of the poverty level'
B08522e15='100 to 149 percent of the poverty level'
B08522e16='At or above 150 percent of the poverty level'
B08522e17='Walked:'
B08522e18='Below 100 percent of the poverty level'
B08522e19='100 to 149 percent of the poverty level'
B08522e20='At or above 150 percent of the poverty level'
B08522e21='Taxicab, motorcycle, bicycle, or other means:'
B08522e22='Below 100 percent of the poverty level'
B08522e23='100 to 149 percent of the poverty level'
B08522e24='At or above 150 percent of the poverty level'
B08522e25='Worked at home:'
B08522e26='Below 100 percent of the poverty level'
B08522e27='100 to 149 percent of the poverty level'
B08522e28='At or above 150 percent of the poverty level'
 
/*MEANS OF TRANSPORTATION TO WORK BY OCCUPATION FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B08524e1='Total:'
B08524e2='Management, business, science, and arts occupations'
B08524e3='Service occupations'
B08524e4='Sales and office occupations'
B08524e5='Natural resources, construction, and maintenance occupations'
B08524e6='Production, transportation, and material moving occupations'
B08524e7='Military specific occupations'
B08524e8='Car, truck, or van - drove alone:'
B08524e9='Management, business, science, and arts occupations'
B08524e10='Service occupations'
B08524e11='Sales and office occupations'
B08524e12='Natural resources, construction, and maintenance occupations'
B08524e13='Production, transportation, and material moving occupations'
B08524e14='Military specific occupations'
B08524e15='Car, truck, or van - carpooled:'
B08524e16='Management, business, science, and arts occupations'
B08524e17='Service occupations'
B08524e18='Sales and office occupations'
B08524e19='Natural resources, construction, and maintenance occupations'
B08524e20='Production, transportation, and material moving occupations'
B08524e21='Military specific occupations'
B08524e22='Public transportation (excluding taxicab):'
B08524e23='Management, business, science, and arts occupations'
B08524e24='Service occupations'
B08524e25='Sales and office occupations'
B08524e26='Natural resources, construction, and maintenance occupations'
B08524e27='Production, transportation, and material moving occupations'
B08524e28='Military specific occupations'
B08524e29='Walked:'
B08524e30='Management, business, science, and arts occupations'
B08524e31='Service occupations'
B08524e32='Sales and office occupations'
B08524e33='Natural resources, construction, and maintenance occupations'
B08524e34='Production, transportation, and material moving occupations'
B08524e35='Military specific occupations'
B08524e36='Taxicab, motorcycle, bicycle, or other means:'
B08524e37='Management, business, science, and arts occupations'
B08524e38='Service occupations'
B08524e39='Sales and office occupations'
B08524e40='Natural resources, construction, and maintenance occupations'
B08524e41='Production, transportation, and material moving occupations'
B08524e42='Military specific occupations'
B08524e43='Worked at home:'
B08524e44='Management, business, science, and arts occupations'
B08524e45='Service occupations'
B08524e46='Sales and office occupations'
B08524e47='Natural resources, construction, and maintenance occupations'
B08524e48='Production, transportation, and material moving occupations'
B08524e49='Military specific occupations'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B08511e1
B08511e2
B08511e3
B08511e4
B08511e5
B08511e6
B08511e7
B08511e8
B08511e9
B08511e10
B08511e11
B08511e12
B08511e13
B08511e14
B08511e15
B08511e16
B08511e17
B08511e18
B08511e19
B08511e20
B08511e21
B08511e22
B08511e23
B08511e24
B08511e25
B08511e26
B08511e27
B08511e28
B08511e29
B08511e30
B08511e31
B08511e32
B08511e33
B08511e34
B08511e35
 
B08513e1
B08513e2
B08513e3
B08513e4
B08513e5
B08513e6
B08513e7
B08513e8
B08513e9
B08513e10
B08513e11
B08513e12
B08513e13
B08513e14
B08513e15
B08513e16
B08513e17
B08513e18
B08513e19
B08513e20
B08513e21
B08513e22
B08513e23
B08513e24
B08513e25
B08513e26
B08513e27
B08513e28
B08513e29
B08513e30
B08513e31
B08513e32
B08513e33
B08513e34
B08513e35
B08513e36
B08513e37
B08513e38
B08513e39
B08513e40
B08513e41
B08513e42
B08513e43
B08513e44
B08513e45
B08513e46
B08513e47
B08513e48
B08513e49
B08513e50
B08513e51
B08513e52
B08513e53
B08513e54
B08513e55
B08513e56
 
B08519e1
B08519e2
B08519e3
B08519e4
B08519e5
B08519e6
B08519e7
B08519e8
B08519e9
B08519e10
B08519e11
B08519e12
B08519e13
B08519e14
B08519e15
B08519e16
B08519e17
B08519e18
B08519e19
B08519e20
B08519e21
B08519e22
B08519e23
B08519e24
B08519e25
B08519e26
B08519e27
B08519e28
B08519e29
B08519e30
B08519e31
B08519e32
B08519e33
B08519e34
B08519e35
B08519e36
B08519e37
B08519e38
B08519e39
B08519e40
B08519e41
B08519e42
B08519e43
B08519e44
B08519e45
B08519e46
B08519e47
B08519e48
B08519e49
B08519e50
B08519e51
B08519e52
B08519e53
B08519e54
B08519e55
B08519e56
B08519e57
B08519e58
B08519e59
B08519e60
B08519e61
B08519e62
B08519e63
 
B08521e1
B08521e2
B08521e3
B08521e4
B08521e5
B08521e6
B08521e7
 
B08522e1
B08522e2
B08522e3
B08522e4
B08522e5
B08522e6
B08522e7
B08522e8
B08522e9
B08522e10
B08522e11
B08522e12
B08522e13
B08522e14
B08522e15
B08522e16
B08522e17
B08522e18
B08522e19
B08522e20
B08522e21
B08522e22
B08522e23
B08522e24
B08522e25
B08522e26
B08522e27
B08522e28
 
B08524e1
B08524e2
B08524e3
B08524e4
B08524e5
B08524e6
B08524e7
B08524e8
B08524e9
B08524e10
B08524e11
B08524e12
B08524e13
B08524e14
B08524e15
B08524e16
B08524e17
B08524e18
B08524e19
B08524e20
B08524e21
B08524e22
B08524e23
B08524e24
B08524e25
B08524e26
B08524e27
B08524e28
B08524e29
B08524e30
B08524e31
B08524e32
B08524e33
B08524e34
B08524e35
B08524e36
B08524e37
B08524e38
B08524e39
B08524e40
B08524e41
B08524e42
B08524e43
B08524e44
B08524e45
B08524e46
B08524e47
B08524e48
B08524e49
;
RUN;
TITLE2;
