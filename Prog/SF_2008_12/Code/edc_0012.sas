TITLE2 "e20125dc0012000";
DATA work.SFe0012dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0012000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*AGE AND NATIVITY OF OWN CHILDREN UNDER 18 YEARS IN FAMILIES AND SUBFAMILIES BY NUMBER AND NATIVITY OF PARENTS */
/*Universe: Own children under 18 years living in families or subfamilies */
 
B05009e1='Total:'
B05009e2='Under 6 years:'
B05009e3='Living with two parents:'
B05009e4='Child is native'
B05009e5='Child is foreign born'
B05009e6='Both parents native'
B05009e7='Both parents foreign born:'
B05009e8='Child is native'
B05009e9='Child is foreign born'
B05009e10='One native and one foreign-born parent:'
B05009e11='Child is native'
B05009e12='Child is foreign born'
B05009e13='Living with one parent:'
B05009e14='Child is native'
B05009e15='Child is foreign born'
B05009e16='Native parent'
B05009e17='Foreign-born parent:'
B05009e18='Child is native'
B05009e19='Child is foreign born'
B05009e20='6 to 17 years:'
B05009e21='Living with two parents:'
B05009e22='Child is native'
B05009e23='Child is foreign born'
B05009e24='Both parents native'
B05009e25='Both parents foreign born:'
B05009e26='Child is native'
B05009e27='Child is foreign born'
B05009e28='One native and one foreign-born parent:'
B05009e29='Child is native'
B05009e30='Child is foreign born'
B05009e31='Living with one parent:'
B05009e32='Child is native'
B05009e33='Child is foreign born'
B05009e34='Native parent'
B05009e35='Foreign-born parent:'
B05009e36='Child is native'
B05009e37='Child is foreign born'
/*RATIO OF INCOME TO POVERTY LEVEL IN THE PAST 12 MONTHS BY NATIVITY OF CHILDREN UNDER 18 YEARS IN FAMILIES AND SUBFAMILIES BY LIVING ARRANGEMENTS AND NATIVITY OF PARENTS */
/*Universe: Own children under 18 years living in families or subfamilies for whom poverty status is determined */
 
B05010e1='Total:'
B05010e2='Under 1.00:'
B05010e3='Living with two parents:'
B05010e4='Both parents native'
B05010e5='Both parents foreign born'
B05010e6='One native and one foreign-born parent'
B05010e7='Living with one parent:'
B05010e8='Native parent'
B05010e9='Foreign-born parent'
B05010e10='1.00 to 1.99:'
B05010e11='Living with two parents:'
B05010e12='Both parents native'
B05010e13='Both parents foreign born'
B05010e14='One native and one foreign-born parent'
B05010e15='Living with one parent:'
B05010e16='Native parent'
B05010e17='Foreign-born parent'
B05010e18='2.0  and over:'
B05010e19='Living with two parents:'
B05010e20='Both parents native'
B05010e21='Both parents foreign born'
B05010e22='One native and one foreign-born parent'
B05010e23='Living with one parent:'
B05010e24='Native parent'
B05010e25='Foreign-born parent'
/*PERIOD OF NATURALIZATION */
/*Universe: Foreign-born population */
 
B05011e1='Total:'
B05011e2='Not a U.S. citizen'
B05011e3='Naturalized citizens:'
B05011e4='Naturalized 2010 or later'
B05011e5='Naturalized 2005 to 2009'
B05011e6='Naturalized 2000 to 2004'
B05011e7='Naturalized 1995 to 1999'
B05011e8='Naturalized 1990 to 1994'
B05011e9='Naturalized 1985 to 1989'
B05011e10='Naturalized 1980 to 1984'
B05011e11='Naturalized before 1980'
/*NATIVITY IN THE UNITED STATES */
/*Universe:  Total population in the United States */
 
B05012e1='Total:'
B05012e2='Native'
B05012e3='Foreign-Born'
/*NATIVITY IN PUERTO RICO */
/*Universe:  Total population in Puerto Rico */
 
B05012PRe1='Total:'
B05012PRe2='Native'
B05012PRe3='Foreign-Born'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B05009e1
B05009e2
B05009e3
B05009e4
B05009e5
B05009e6
B05009e7
B05009e8
B05009e9
B05009e10
B05009e11
B05009e12
B05009e13
B05009e14
B05009e15
B05009e16
B05009e17
B05009e18
B05009e19
B05009e20
B05009e21
B05009e22
B05009e23
B05009e24
B05009e25
B05009e26
B05009e27
B05009e28
B05009e29
B05009e30
B05009e31
B05009e32
B05009e33
B05009e34
B05009e35
B05009e36
B05009e37
 
B05010e1
B05010e2
B05010e3
B05010e4
B05010e5
B05010e6
B05010e7
B05010e8
B05010e9
B05010e10
B05010e11
B05010e12
B05010e13
B05010e14
B05010e15
B05010e16
B05010e17
B05010e18
B05010e19
B05010e20
B05010e21
B05010e22
B05010e23
B05010e24
B05010e25
 
B05011e1
B05011e2
B05011e3
B05011e4
B05011e5
B05011e6
B05011e7
B05011e8
B05011e9
B05011e10
B05011e11
 
B05012e1
B05012e2
B05012e3
 
B05012PRe1
B05012PRe2
B05012PRe3
;
RUN;
TITLE2;
