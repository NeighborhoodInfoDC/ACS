TITLE2 "m20115dc0012000";
DATA work.SFm0012dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0012000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*AGE AND NATIVITY OF OWN CHILDREN UNDER 18 YEARS IN FAMILIES AND SUBFAMILIES BY NUMBER AND NATIVITY OF PARENTS */
/*Universe: Own children under 18 years living in families or subfamilies */
 
B05009m1='Total:'
B05009m2='Under 6 years:'
B05009m3='Living with two parents:'
B05009m4='Child is native'
B05009m5='Child is foreign born'
B05009m6='Both parents native'
B05009m7='Both parents foreign born:'
B05009m8='Child is native'
B05009m9='Child is foreign born'
B05009m10='One native and one foreign-born parent:'
B05009m11='Child is native'
B05009m12='Child is foreign born'
B05009m13='Living with one parent:'
B05009m14='Child is native'
B05009m15='Child is foreign born'
B05009m16='Native parent'
B05009m17='Foreign-born parent:'
B05009m18='Child is native'
B05009m19='Child is foreign born'
B05009m20='6 to 17 years:'
B05009m21='Living with two parents:'
B05009m22='Child is native'
B05009m23='Child is foreign born'
B05009m24='Both parents native'
B05009m25='Both parents foreign born:'
B05009m26='Child is native'
B05009m27='Child is foreign born'
B05009m28='One native and one foreign-born parent:'
B05009m29='Child is native'
B05009m30='Child is foreign born'
B05009m31='Living with one parent:'
B05009m32='Child is native'
B05009m33='Child is foreign born'
B05009m34='Native parent'
B05009m35='Foreign-born parent:'
B05009m36='Child is native'
B05009m37='Child is foreign born'
 
/*RATIO OF INCOME TO POVERTY LEVEL IN THE PAST 12 MONTHS BY NATIVITY OF CHILDREN UNDER 18 YEARS IN FAMILIES AND SUBFAMILIES BY LIVING ARRANGEMENTS AND NATIVITY OF PARENTS */
/*Universe: Own children under 18 years living in families or subfamilies for whom poverty status is determined */
 
B05010m1='Total:'
B05010m2='Under 1.00:'
B05010m3='Living with two parents:'
B05010m4='Both parents native'
B05010m5='Both parents foreign born'
B05010m6='One native and one foreign-born parent'
B05010m7='Living with one parent:'
B05010m8='Native parent'
B05010m9='Foreign-born parent'
B05010m10='1.00 to 1.99:'
B05010m11='Living with two parents:'
B05010m12='Both parents native'
B05010m13='Both parents foreign born'
B05010m14='One native and one foreign-born parent'
B05010m15='Living with one parent:'
B05010m16='Native parent'
B05010m17='Foreign-born parent'
B05010m18='2.0  and over:'
B05010m19='Living with two parents:'
B05010m20='Both parents native'
B05010m21='Both parents foreign born'
B05010m22='One native and one foreign-born parent'
B05010m23='Living with one parent:'
B05010m24='Native parent'
B05010m25='Foreign-born parent'
 
/*NATIVITY IN THE UNITED STATES */
/*Universe:  Total population in the United States */
 
B05012m1='Total:'
B05012m2='Native'
B05012m3='Foreign-Born'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B05009m1
B05009m2
B05009m3
B05009m4
B05009m5
B05009m6
B05009m7
B05009m8
B05009m9
B05009m10
B05009m11
B05009m12
B05009m13
B05009m14
B05009m15
B05009m16
B05009m17
B05009m18
B05009m19
B05009m20
B05009m21
B05009m22
B05009m23
B05009m24
B05009m25
B05009m26
B05009m27
B05009m28
B05009m29
B05009m30
B05009m31
B05009m32
B05009m33
B05009m34
B05009m35
B05009m36
B05009m37
 
B05010m1
B05010m2
B05010m3
B05010m4
B05010m5
B05010m6
B05010m7
B05010m8
B05010m9
B05010m10
B05010m11
B05010m12
B05010m13
B05010m14
B05010m15
B05010m16
B05010m17
B05010m18
B05010m19
B05010m20
B05010m21
B05010m22
B05010m23
B05010m24
B05010m25
 
B05012m1
B05012m2
B05012m3
;
RUN;
TITLE2;
