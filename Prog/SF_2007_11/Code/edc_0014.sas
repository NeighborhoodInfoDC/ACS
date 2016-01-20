TITLE2 "e20115dc0014000";
DATA work.SFe0014dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0014000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*PLACE OF BIRTH (HISPANIC OR LATINO) IN PUERTO RICO */
/*Universe:  Hispanic or Latino population in Puerto Rico */
 
B06004IPRe1='Total:'
B06004IPRe2='Born in Puerto Rico'
B06004IPRe3='Born in the United States'
B06004IPRe4='Native; born elsewhere'
B06004IPRe5='Foreign born'
 
/*PLACE OF BIRTH BY LANGUAGE SPOKEN AT HOME AND ABILITY TO SPEAK ENGLISH IN THE UNITED STATES */
/*Universe:  Population 5 years and over in the United States */
 
B06007e1='Total:'
B06007e2='Speak only English'
B06007e3='Speak Spanish:'
B06007e4='Speak English "very well"'
B06007e5='Speak English less than "very well"'
B06007e6='Speak other languages:'
B06007e7='Speak English "very well"'
B06007e8='Speak English less than "very well"'
B06007e9='Born in state of residence:'
B06007e10='Speak only English'
B06007e11='Speak Spanish:'
B06007e12='Speak English "very well"'
B06007e13='Speak English less than "very well"'
B06007e14='Speak other languages:'
B06007e15='Speak English "very well"'
B06007e16='Speak English less than "very well"'
B06007e17='Born in other state in the United States:'
B06007e18='Speak only English'
B06007e19='Speak Spanish:'
B06007e20='Speak English "very well"'
B06007e21='Speak English less than "very well"'
B06007e22='Speak other languages:'
B06007e23='Speak English "very well"'
B06007e24='Speak English less than "very well"'
B06007e25='Native; born outside the United States:'
B06007e26='Speak only English'
B06007e27='Speak Spanish:'
B06007e28='Speak English "very well"'
B06007e29='Speak English less than "very well"'
B06007e30='Speak other languages:'
B06007e31='Speak English "very well"'
B06007e32='Speak English less than "very well"'
B06007e33='Foreign born:'
B06007e34='Speak only English'
B06007e35='Speak Spanish:'
B06007e36='Speak English "very well"'
B06007e37='Speak English less than "very well"'
B06007e38='Speak other languages:'
B06007e39='Speak English "very well"'
B06007e40='Speak English less than "very well"'
 
/*PLACE OF BIRTH BY LANGUAGE SPOKEN AT HOME AND ABILITY TO SPEAK ENGLISH IN PUERTO RICO */
/*Universe:  Population 5 years and over in Puerto Rico */
 
B06007PRe1='Total:'
B06007PRe2='Speak only English'
B06007PRe3='Speak Spanish:'
B06007PRe4='Speak English "very well"'
B06007PRe5='Speak English less than "very well"'
B06007PRe6='Speak other languages:'
B06007PRe7='Speak English "very well"'
B06007PRe8='Speak English less than "very well"'
B06007PRe9='Born in Puerto Rico:'
B06007PRe10='Speak only English'
B06007PRe11='Speak Spanish:'
B06007PRe12='Speak English "very well"'
B06007PRe13='Speak English less than "very well"'
B06007PRe14='Speak other languages:'
B06007PRe15='Speak English "very well"'
B06007PRe16='Speak English less than "very well"'
B06007PRe17='Born in the United States:'
B06007PRe18='Speak only English'
B06007PRe19='Speak Spanish:'
B06007PRe20='Speak English "very well"'
B06007PRe21='Speak English less than "very well"'
B06007PRe22='Speak other languages:'
B06007PRe23='Speak English "very well"'
B06007PRe24='Speak English less than "very well"'
B06007PRe25='Native; born elsewhere:'
B06007PRe26='Speak only English'
B06007PRe27='Speak Spanish:'
B06007PRe28='Speak English "very well"'
B06007PRe29='Speak English less than "very well"'
B06007PRe30='Speak other languages:'
B06007PRe31='Speak English "very well"'
B06007PRe32='Speak English less than "very well"'
B06007PRe33='Foreign born:'
B06007PRe34='Speak only English'
B06007PRe35='Speak Spanish:'
B06007PRe36='Speak English "very well"'
B06007PRe37='Speak English less than "very well"'
B06007PRe38='Speak other languages:'
B06007PRe39='Speak English "very well"'
B06007PRe40='Speak English less than "very well"'
 
/*PLACE OF BIRTH BY MARITAL STATUS IN THE UNITED STATES */
/*Universe:  Population 15 years and over in the United States */
 
B06008e1='Total:'
B06008e2='Never married'
B06008e3='Now married, except separated'
B06008e4='Divorced'
B06008e5='Separated'
B06008e6='Widowed'
B06008e7='Born in state of residence:'
B06008e8='Never married'
B06008e9='Now married, except separated'
B06008e10='Divorced'
B06008e11='Separated'
B06008e12='Widowed'
B06008e13='Born in other state in the United States:'
B06008e14='Never married'
B06008e15='Now married, except separated'
B06008e16='Divorced'
B06008e17='Separated'
B06008e18='Widowed'
B06008e19='Native; born outside the United States:'
B06008e20='Never married'
B06008e21='Now married, except separated'
B06008e22='Divorced'
B06008e23='Separated'
B06008e24='Widowed'
B06008e25='Foreign born:'
B06008e26='Never married'
B06008e27='Now married, except separated'
B06008e28='Divorced'
B06008e29='Separated'
B06008e30='Widowed'
 
/*PLACE OF BIRTH BY MARITAL STATUS IN PUERTO RICO */
/*Universe:  Population 15 years and over in Puerto Rico */
 
B06008PRe1='Total:'
B06008PRe2='Never married'
B06008PRe3='Now married, except separated'
B06008PRe4='Divorced'
B06008PRe5='Separated'
B06008PRe6='Widowed'
B06008PRe7='Born in Puerto Rico:'
B06008PRe8='Never married'
B06008PRe9='Now married, except separated'
B06008PRe10='Divorced'
B06008PRe11='Separated'
B06008PRe12='Widowed'
B06008PRe13='Born in the United States:'
B06008PRe14='Never married'
B06008PRe15='Now married, except separated'
B06008PRe16='Divorced'
B06008PRe17='Separated'
B06008PRe18='Widowed'
B06008PRe19='Native; born elsewhere:'
B06008PRe20='Never married'
B06008PRe21='Now married, except separated'
B06008PRe22='Divorced'
B06008PRe23='Separated'
B06008PRe24='Widowed'
B06008PRe25='Foreign born:'
B06008PRe26='Never married'
B06008PRe27='Now married, except separated'
B06008PRe28='Divorced'
B06008PRe29='Separated'
B06008PRe30='Widowed'
 
/*PLACE OF BIRTH BY EDUCATIONAL ATTAINMENT IN THE UNITED STATES */
/*Universe:  Population 25 years and over in the United States */
 
B06009e1='Total:'
B06009e2='Less than high school graduate'
B06009e3='High school graduate (includes equivalency)'
B06009e4='Some college or associate''s degree'
B06009e5='Bachelor''s degree'
B06009e6='Graduate or professional degree'
B06009e7='Born in state of residence:'
B06009e8='Less than high school graduate'
B06009e9='High school graduate (includes equivalency)'
B06009e10='Some college or associate''s degree'
B06009e11='Bachelor''s degree'
B06009e12='Graduate or professional degree'
B06009e13='Born in other state in the United States:'
B06009e14='Less than high school graduate'
B06009e15='High school graduate (includes equivalency)'
B06009e16='Some college or associate''s degree'
B06009e17='Bachelor''s degree'
B06009e18='Graduate or professional degree'
B06009e19='Native; born outside the United States:'
B06009e20='Less than high school graduate'
B06009e21='High school graduate (includes equivalency)'
B06009e22='Some college or associate''s degree'
B06009e23='Bachelor''s degree'
B06009e24='Graduate or professional degree'
B06009e25='Foreign born:'
B06009e26='Less than high school graduate'
B06009e27='High school graduate (includes equivalency)'
B06009e28='Some college or associate''s degree'
B06009e29='Bachelor''s degree'
B06009e30='Graduate or professional degree'
 
/*PLACE OF BIRTH BY EDUCATIONAL ATTAINMENT IN PUERTO RICO */
/*Universe:  Population 25 years and over in Puerto Rico */
 
B06009PRe1='Total:'
B06009PRe2='Less than high school graduate'
B06009PRe3='High school graduate (includes equivalency)'
B06009PRe4='Some college or associate''s degree'
B06009PRe5='Bachelor''s degree'
B06009PRe6='Graduate or professional degree'
B06009PRe7='Born in Puerto Rico:'
B06009PRe8='Less than high school graduate'
B06009PRe9='High school graduate (includes equivalency)'
B06009PRe10='Some college or associate''s degree'
B06009PRe11='Bachelor''s degree'
B06009PRe12='Graduate or professional degree'
B06009PRe13='Born in the United States:'
B06009PRe14='Less than high school graduate'
B06009PRe15='High school graduate (includes equivalency)'
B06009PRe16='Some college or associate''s degree'
B06009PRe17='Bachelor''s degree'
B06009PRe18='Graduate or professional degree'
B06009PRe19='Native; born elsewhere:'
B06009PRe20='Less than high school graduate'
B06009PRe21='High school graduate (includes equivalency)'
B06009PRe22='Some college or associate''s degree'
B06009PRe23='Bachelor''s degree'
B06009PRe24='Graduate or professional degree'
B06009PRe25='Foreign born:'
B06009PRe26='Less than high school graduate'
B06009PRe27='High school graduate (includes equivalency)'
B06009PRe28='Some college or associate''s degree'
B06009PRe29='Bachelor''s degree'
B06009PRe30='Graduate or professional degree'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B06004IPRe1
B06004IPRe2
B06004IPRe3
B06004IPRe4
B06004IPRe5
 
B06007e1
B06007e2
B06007e3
B06007e4
B06007e5
B06007e6
B06007e7
B06007e8
B06007e9
B06007e10
B06007e11
B06007e12
B06007e13
B06007e14
B06007e15
B06007e16
B06007e17
B06007e18
B06007e19
B06007e20
B06007e21
B06007e22
B06007e23
B06007e24
B06007e25
B06007e26
B06007e27
B06007e28
B06007e29
B06007e30
B06007e31
B06007e32
B06007e33
B06007e34
B06007e35
B06007e36
B06007e37
B06007e38
B06007e39
B06007e40
 
B06007PRe1
B06007PRe2
B06007PRe3
B06007PRe4
B06007PRe5
B06007PRe6
B06007PRe7
B06007PRe8
B06007PRe9
B06007PRe10
B06007PRe11
B06007PRe12
B06007PRe13
B06007PRe14
B06007PRe15
B06007PRe16
B06007PRe17
B06007PRe18
B06007PRe19
B06007PRe20
B06007PRe21
B06007PRe22
B06007PRe23
B06007PRe24
B06007PRe25
B06007PRe26
B06007PRe27
B06007PRe28
B06007PRe29
B06007PRe30
B06007PRe31
B06007PRe32
B06007PRe33
B06007PRe34
B06007PRe35
B06007PRe36
B06007PRe37
B06007PRe38
B06007PRe39
B06007PRe40
 
B06008e1
B06008e2
B06008e3
B06008e4
B06008e5
B06008e6
B06008e7
B06008e8
B06008e9
B06008e10
B06008e11
B06008e12
B06008e13
B06008e14
B06008e15
B06008e16
B06008e17
B06008e18
B06008e19
B06008e20
B06008e21
B06008e22
B06008e23
B06008e24
B06008e25
B06008e26
B06008e27
B06008e28
B06008e29
B06008e30
 
B06008PRe1
B06008PRe2
B06008PRe3
B06008PRe4
B06008PRe5
B06008PRe6
B06008PRe7
B06008PRe8
B06008PRe9
B06008PRe10
B06008PRe11
B06008PRe12
B06008PRe13
B06008PRe14
B06008PRe15
B06008PRe16
B06008PRe17
B06008PRe18
B06008PRe19
B06008PRe20
B06008PRe21
B06008PRe22
B06008PRe23
B06008PRe24
B06008PRe25
B06008PRe26
B06008PRe27
B06008PRe28
B06008PRe29
B06008PRe30
 
B06009e1
B06009e2
B06009e3
B06009e4
B06009e5
B06009e6
B06009e7
B06009e8
B06009e9
B06009e10
B06009e11
B06009e12
B06009e13
B06009e14
B06009e15
B06009e16
B06009e17
B06009e18
B06009e19
B06009e20
B06009e21
B06009e22
B06009e23
B06009e24
B06009e25
B06009e26
B06009e27
B06009e28
B06009e29
B06009e30
 
B06009PRe1
B06009PRe2
B06009PRe3
B06009PRe4
B06009PRe5
B06009PRe6
B06009PRe7
B06009PRe8
B06009PRe9
B06009PRe10
B06009PRe11
B06009PRe12
B06009PRe13
B06009PRe14
B06009PRe15
B06009PRe16
B06009PRe17
B06009PRe18
B06009PRe19
B06009PRe20
B06009PRe21
B06009PRe22
B06009PRe23
B06009PRe24
B06009PRe25
B06009PRe26
B06009PRe27
B06009PRe28
B06009PRe29
B06009PRe30
;
RUN;
TITLE2;
