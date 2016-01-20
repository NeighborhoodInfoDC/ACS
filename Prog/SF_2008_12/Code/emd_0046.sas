TITLE2 "e20125md0046000";
DATA work.SFe0046md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0046000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*POVERTY STATUS IN THE PAST 12 MONTHS BY AGE BY LANGUAGE SPOKEN AT HOME FOR THE POPULATION 5 YEARS AND OVER */
/*Universe:  Population 5 years and over for whom poverty status is determined */
 
B16009e1='Total:'
B16009e2='Income in the past 12 months below poverty level:'
B16009e3='5 to 17 years:'
B16009e4='Speak only English'
B16009e5='Speak Spanish'
B16009e6='Speak other Indo-European languages'
B16009e7='Speak Asian and Pacific Island languages'
B16009e8='Speak other languages'
B16009e9='18 years and over:'
B16009e10='Speak only English'
B16009e11='Speak Spanish'
B16009e12='Speak other Indo-European languages'
B16009e13='Speak Asian and Pacific Island languages'
B16009e14='Speak other languages'
B16009e15='Income in the past 12 months at or above poverty level:'
B16009e16='5 to 17 years:'
B16009e17='Speak only English'
B16009e18='Speak Spanish'
B16009e19='Speak other Indo-European languages'
B16009e20='Speak Asian and Pacific Island languages'
B16009e21='Speak other languages'
B16009e22='18 years and over:'
B16009e23='Speak only English'
B16009e24='Speak Spanish'
B16009e25='Speak other Indo-European languages'
B16009e26='Speak Asian and Pacific Island languages'
B16009e27='Speak other languages'
/*EDUCATIONAL ATTAINMENT AND EMPLOYMENT STATUS BY LANGUAGE SPOKEN AT HOME FOR THE POPULATION 25 YEARS AND OVER */
/*Universe:  Population 25 years and over */
 
B16010e1='Total:'
B16010e2='Less than high school graduate:'
B16010e3='In labor force:'
B16010e4='Speak only English'
B16010e5='Speak Spanish'
B16010e6='Speak other Indo-European languages'
B16010e7='Speak Asian and Pacific Island languages'
B16010e8='Speak other languages'
B16010e9='Not in labor force:'
B16010e10='Speak only English'
B16010e11='Speak Spanish'
B16010e12='Speak other Indo-European languages'
B16010e13='Speak Asian and Pacific Island languages'
B16010e14='Speak other languages'
B16010e15='High school graduate (includes equivalency):'
B16010e16='In labor force:'
B16010e17='Speak only English'
B16010e18='Speak Spanish'
B16010e19='Speak other Indo-European languages'
B16010e20='Speak Asian and Pacific Island languages'
B16010e21='Speak other languages'
B16010e22='Not in labor force:'
B16010e23='Speak only English'
B16010e24='Speak Spanish'
B16010e25='Speak other Indo-European languages'
B16010e26='Speak Asian and Pacific Island languages'
B16010e27='Speak other languages'
B16010e28='Some college or associate''s degree:'
B16010e29='In labor force:'
B16010e30='Speak only English'
B16010e31='Speak Spanish'
B16010e32='Speak other Indo-European languages'
B16010e33='Speak Asian and Pacific Island languages'
B16010e34='Speak other languages'
B16010e35='Not in labor force:'
B16010e36='Speak only English'
B16010e37='Speak Spanish'
B16010e38='Speak other Indo-European languages'
B16010e39='Speak Asian and Pacific Island languages'
B16010e40='Speak other languages'
B16010e41='Bachelor''s degree or higher:'
B16010e42='In labor force:'
B16010e43='Speak only English'
B16010e44='Speak Spanish'
B16010e45='Speak other Indo-European languages'
B16010e46='Speak Asian and Pacific Island languages'
B16010e47='Speak other languages'
B16010e48='Not in labor force:'
B16010e49='Speak only English'
B16010e50='Speak Spanish'
B16010e51='Speak other Indo-European languages'
B16010e52='Speak Asian and Pacific Island languages'
B16010e53='Speak other languages'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B16009e1
B16009e2
B16009e3
B16009e4
B16009e5
B16009e6
B16009e7
B16009e8
B16009e9
B16009e10
B16009e11
B16009e12
B16009e13
B16009e14
B16009e15
B16009e16
B16009e17
B16009e18
B16009e19
B16009e20
B16009e21
B16009e22
B16009e23
B16009e24
B16009e25
B16009e26
B16009e27
 
B16010e1
B16010e2
B16010e3
B16010e4
B16010e5
B16010e6
B16010e7
B16010e8
B16010e9
B16010e10
B16010e11
B16010e12
B16010e13
B16010e14
B16010e15
B16010e16
B16010e17
B16010e18
B16010e19
B16010e20
B16010e21
B16010e22
B16010e23
B16010e24
B16010e25
B16010e26
B16010e27
B16010e28
B16010e29
B16010e30
B16010e31
B16010e32
B16010e33
B16010e34
B16010e35
B16010e36
B16010e37
B16010e38
B16010e39
B16010e40
B16010e41
B16010e42
B16010e43
B16010e44
B16010e45
B16010e46
B16010e47
B16010e48
B16010e49
B16010e50
B16010e51
B16010e52
B16010e53
;
RUN;
TITLE2;
