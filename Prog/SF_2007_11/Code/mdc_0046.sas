TITLE2 "m20115dc0046000";
DATA work.SFm0046dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0046000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*POVERTY STATUS IN THE PAST 12 MONTHS BY AGE BY LANGUAGE SPOKEN AT HOME FOR THE POPULATION 5 YEARS AND OVER */
/*Universe:  Population 5 years and over for whom poverty status is determined */
 
B16009m1='Total:'
B16009m2='Income in the past 12 months below poverty level:'
B16009m3='5 to 17 years:'
B16009m4='Speak only English'
B16009m5='Speak Spanish'
B16009m6='Speak other Indo-European languages'
B16009m7='Speak Asian and Pacific Island languages'
B16009m8='Speak other languages'
B16009m9='18 years and over:'
B16009m10='Speak only English'
B16009m11='Speak Spanish'
B16009m12='Speak other Indo-European languages'
B16009m13='Speak Asian and Pacific Island languages'
B16009m14='Speak other languages'
B16009m15='Income in the past 12 months at or above poverty level:'
B16009m16='5 to 17 years:'
B16009m17='Speak only English'
B16009m18='Speak Spanish'
B16009m19='Speak other Indo-European languages'
B16009m20='Speak Asian and Pacific Island languages'
B16009m21='Speak other languages'
B16009m22='18 years and over:'
B16009m23='Speak only English'
B16009m24='Speak Spanish'
B16009m25='Speak other Indo-European languages'
B16009m26='Speak Asian and Pacific Island languages'
B16009m27='Speak other languages'
 
/*EDUCATIONAL ATTAINMENT AND EMPLOYMENT STATUS BY LANGUAGE SPOKEN AT HOME FOR THE POPULATION 25 YEARS AND OVER */
/*Universe:  Population 25 years and over */
 
B16010m1='Total:'
B16010m2='Less than high school graduate:'
B16010m3='In labor force:'
B16010m4='Speak only English'
B16010m5='Speak Spanish'
B16010m6='Speak other Indo-European languages'
B16010m7='Speak Asian and Pacific Island languages'
B16010m8='Speak other languages'
B16010m9='Not in labor force:'
B16010m10='Speak only English'
B16010m11='Speak Spanish'
B16010m12='Speak other Indo-European languages'
B16010m13='Speak Asian and Pacific Island languages'
B16010m14='Speak other languages'
B16010m15='High school graduate (includes equivalency):'
B16010m16='In labor force:'
B16010m17='Speak only English'
B16010m18='Speak Spanish'
B16010m19='Speak other Indo-European languages'
B16010m20='Speak Asian and Pacific Island languages'
B16010m21='Speak other languages'
B16010m22='Not in labor force:'
B16010m23='Speak only English'
B16010m24='Speak Spanish'
B16010m25='Speak other Indo-European languages'
B16010m26='Speak Asian and Pacific Island languages'
B16010m27='Speak other languages'
B16010m28='Some college or associate''s degree:'
B16010m29='In labor force:'
B16010m30='Speak only English'
B16010m31='Speak Spanish'
B16010m32='Speak other Indo-European languages'
B16010m33='Speak Asian and Pacific Island languages'
B16010m34='Speak other languages'
B16010m35='Not in labor force:'
B16010m36='Speak only English'
B16010m37='Speak Spanish'
B16010m38='Speak other Indo-European languages'
B16010m39='Speak Asian and Pacific Island languages'
B16010m40='Speak other languages'
B16010m41='Bachelor''s degree or higher:'
B16010m42='In labor force:'
B16010m43='Speak only English'
B16010m44='Speak Spanish'
B16010m45='Speak other Indo-European languages'
B16010m46='Speak Asian and Pacific Island languages'
B16010m47='Speak other languages'
B16010m48='Not in labor force:'
B16010m49='Speak only English'
B16010m50='Speak Spanish'
B16010m51='Speak other Indo-European languages'
B16010m52='Speak Asian and Pacific Island languages'
B16010m53='Speak other languages'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B16009m1
B16009m2
B16009m3
B16009m4
B16009m5
B16009m6
B16009m7
B16009m8
B16009m9
B16009m10
B16009m11
B16009m12
B16009m13
B16009m14
B16009m15
B16009m16
B16009m17
B16009m18
B16009m19
B16009m20
B16009m21
B16009m22
B16009m23
B16009m24
B16009m25
B16009m26
B16009m27
 
B16010m1
B16010m2
B16010m3
B16010m4
B16010m5
B16010m6
B16010m7
B16010m8
B16010m9
B16010m10
B16010m11
B16010m12
B16010m13
B16010m14
B16010m15
B16010m16
B16010m17
B16010m18
B16010m19
B16010m20
B16010m21
B16010m22
B16010m23
B16010m24
B16010m25
B16010m26
B16010m27
B16010m28
B16010m29
B16010m30
B16010m31
B16010m32
B16010m33
B16010m34
B16010m35
B16010m36
B16010m37
B16010m38
B16010m39
B16010m40
B16010m41
B16010m42
B16010m43
B16010m44
B16010m45
B16010m46
B16010m47
B16010m48
B16010m49
B16010m50
B16010m51
B16010m52
B16010m53
;
RUN;
TITLE2;
