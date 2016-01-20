TITLE2 "m20125md0025000";
DATA work.SFm0025md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0025000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*MEANS OF TRANSPORTATION TO WORK BY LANGUAGE SPOKEN AT HOME AND ABILITY TO SPEAK ENGLISH */
/*Universe:  Workers 16 years and over */
 
B08113m1='Total:'
B08113m2='Speak only English'
B08113m3='Speak Spanish:'
B08113m4='Speak English "very well"'
B08113m5='Speak English less than "very well"'
B08113m6='Speak other languages:'
B08113m7='Speak English "very well"'
B08113m8='Speak English less than "very well"'
B08113m9='Car, truck, or van - drove alone:'
B08113m10='Speak only English'
B08113m11='Speak Spanish:'
B08113m12='Speak English "very well"'
B08113m13='Speak English less than "very well"'
B08113m14='Speak other languages:'
B08113m15='Speak English "very well"'
B08113m16='Speak English less than "very well"'
B08113m17='Car, truck, or van - carpooled:'
B08113m18='Speak only English'
B08113m19='Speak Spanish:'
B08113m20='Speak English "very well"'
B08113m21='Speak English less than "very well"'
B08113m22='Speak other languages:'
B08113m23='Speak English "very well"'
B08113m24='Speak English less than "very well"'
B08113m25='Public transportation (excluding taxicab):'
B08113m26='Speak only English'
B08113m27='Speak Spanish:'
B08113m28='Speak English "very well"'
B08113m29='Speak English less than "very well"'
B08113m30='Speak other languages:'
B08113m31='Speak English "very well"'
B08113m32='Speak English less than "very well"'
B08113m33='Walked:'
B08113m34='Speak only English'
B08113m35='Speak Spanish:'
B08113m36='Speak English "very well"'
B08113m37='Speak English less than "very well"'
B08113m38='Speak other languages:'
B08113m39='Speak English "very well"'
B08113m40='Speak English less than "very well"'
B08113m41='Taxicab, motorcycle, bicycle, or other means:'
B08113m42='Speak only English'
B08113m43='Speak Spanish:'
B08113m44='Speak English "very well"'
B08113m45='Speak English less than "very well"'
B08113m46='Speak other languages:'
B08113m47='Speak English "very well"'
B08113m48='Speak English less than "very well"'
B08113m49='Worked at home:'
B08113m50='Speak only English'
B08113m51='Speak Spanish:'
B08113m52='Speak English "very well"'
B08113m53='Speak English less than "very well"'
B08113m54='Speak other languages:'
B08113m55='Speak English "very well"'
B08113m56='Speak English less than "very well"'
/*MEANS OF TRANSPORTATION TO WORK BY WORKERS'' EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Workers 16 years and over with earnings */
 
B08119m1='Total:'
B08119m2='$1 to $9,999 or loss'
B08119m3='$10,000 to $14,999'
B08119m4='$15,000 to $24,999'
B08119m5='$25,000 to $34,999'
B08119m6='$35,000 to $49,999'
B08119m7='$50,000 to $64,999'
B08119m8='$65,000 to $74,999'
B08119m9='$75,000 or more'
B08119m10='Car, truck, or van - drove alone:'
B08119m11='$1 to $9,999 or loss'
B08119m12='$10,000 to $14,999'
B08119m13='$15,000 to $24,999'
B08119m14='$25,000 to $34,999'
B08119m15='$35,000 to $49,999'
B08119m16='$50,000 to $64,999'
B08119m17='$65,000 to $74,999'
B08119m18='$75,000 or more'
B08119m19='Car, truck, or van - carpooled:'
B08119m20='$1 to $9,999 or loss'
B08119m21='$10,000 to $14,999'
B08119m22='$15,000 to $24,999'
B08119m23='$25,000 to $34,999'
B08119m24='$35,000 to $49,999'
B08119m25='$50,000 to $64,999'
B08119m26='$65,000 to $74,999'
B08119m27='$75,000 or more'
B08119m28='Public transportation (excluding taxicab):'
B08119m29='$1 to $9,999 or loss'
B08119m30='$10,000 to $14,999'
B08119m31='$15,000 to $24,999'
B08119m32='$25,000 to $34,999'
B08119m33='$35,000 to $49,999'
B08119m34='$50,000 to $64,999'
B08119m35='$65,000 to $74,999'
B08119m36='$75,000 or more'
B08119m37='Walked:'
B08119m38='$1 to $9,999 or loss'
B08119m39='$10,000 to $14,999'
B08119m40='$15,000 to $24,999'
B08119m41='$25,000 to $34,999'
B08119m42='$35,000 to $49,999'
B08119m43='$50,000 to $64,999'
B08119m44='$65,000 to $74,999'
B08119m45='$75,000 or more'
B08119m46='Taxicab, motorcycle, bicycle, or other means:'
B08119m47='$1 to $9,999 or loss'
B08119m48='$10,000 to $14,999'
B08119m49='$15,000 to $24,999'
B08119m50='$25,000 to $34,999'
B08119m51='$35,000 to $49,999'
B08119m52='$50,000 to $64,999'
B08119m53='$65,000 to $74,999'
B08119m54='$75,000 or more'
B08119m55='Worked at home:'
B08119m56='$1 to $9,999 or loss'
B08119m57='$10,000 to $14,999'
B08119m58='$15,000 to $24,999'
B08119m59='$25,000 to $34,999'
B08119m60='$35,000 to $49,999'
B08119m61='$50,000 to $64,999'
B08119m62='$65,000 to $74,999'
B08119m63='$75,000 or more'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY MEANS OF TRANSPORTATION TO WORK */
/*Universe:  Workers 16 years and over with earnings */
/*Median earnings in the past 12 months -- */
 
B08121m1='Total:'
B08121m2='Car, truck, or van - drove alone'
B08121m3='Car, truck, or van - carpooled'
B08121m4='Public transportation (excluding taxicab)'
B08121m5='Walked'
B08121m6='Taxicab, motorcycle, bicycle, or other means'
B08121m7='Worked at home'
/*MEANS OF TRANSPORTATION TO WORK BY POVERTY STATUS IN THE PAST 12 MONTHS */
/*Universe:  Workers 16 years and over for whom poverty status is determined */
 
B08122m1='Total:'
B08122m2='Below 100 percent of the poverty level'
B08122m3='100 to 149 percent of the poverty level'
B08122m4='At or above 150 percent of the poverty level'
B08122m5='Car, truck, or van - drove alone:'
B08122m6='Below 100 percent of the poverty level'
B08122m7='100 to 149 percent of the poverty level'
B08122m8='At or above 150 percent of the poverty level'
B08122m9='Car, truck, or van - carpooled:'
B08122m10='Below 100 percent of the poverty level'
B08122m11='100 to 149 percent of the poverty level'
B08122m12='At or above 150 percent of the poverty level'
B08122m13='Public transportation (excluding taxicab):'
B08122m14='Below 100 percent of the poverty level'
B08122m15='100 to 149 percent of the poverty level'
B08122m16='At or above 150 percent of the poverty level'
B08122m17='Walked:'
B08122m18='Below 100 percent of the poverty level'
B08122m19='100 to 149 percent of the poverty level'
B08122m20='At or above 150 percent of the poverty level'
B08122m21='Taxicab, motorcycle, bicycle, or other means:'
B08122m22='Below 100 percent of the poverty level'
B08122m23='100 to 149 percent of the poverty level'
B08122m24='At or above 150 percent of the poverty level'
B08122m25='Worked at home:'
B08122m26='Below 100 percent of the poverty level'
B08122m27='100 to 149 percent of the poverty level'
B08122m28='At or above 150 percent of the poverty level'
/*MEANS OF TRANSPORTATION TO WORK BY OCCUPATION */
/*Universe:  Workers 16 years and over */
 
B08124m1='Total:'
B08124m2='Management, business, science, and arts occupations'
B08124m3='Service occupations'
B08124m4='Sales and office occupations'
B08124m5='Natural resources, construction, and maintenance occupations'
B08124m6='Production, transportation, and material moving occupations'
B08124m7='Military specific occupations'
B08124m8='Car, truck, or van - drove alone:'
B08124m9='Management, business, science, and arts occupations'
B08124m10='Service occupations'
B08124m11='Sales and office occupations'
B08124m12='Natural resources, construction, and maintenance occupations'
B08124m13='Production, transportation, and material moving occupations'
B08124m14='Military specific occupations'
B08124m15='Car, truck, or van - carpooled:'
B08124m16='Management, business, science, and arts occupations'
B08124m17='Service occupations'
B08124m18='Sales and office occupations'
B08124m19='Natural resources, construction, and maintenance occupations'
B08124m20='Production, transportation, and material moving occupations'
B08124m21='Military specific occupations'
B08124m22='Public transportation (excluding taxicab):'
B08124m23='Management, business, science, and arts occupations'
B08124m24='Service occupations'
B08124m25='Sales and office occupations'
B08124m26='Natural resources, construction, and maintenance occupations'
B08124m27='Production, transportation, and material moving occupations'
B08124m28='Military specific occupations'
B08124m29='Walked:'
B08124m30='Management, business, science, and arts occupations'
B08124m31='Service occupations'
B08124m32='Sales and office occupations'
B08124m33='Natural resources, construction, and maintenance occupations'
B08124m34='Production, transportation, and material moving occupations'
B08124m35='Military specific occupations'
B08124m36='Taxicab, motorcycle, bicycle, or other means:'
B08124m37='Management, business, science, and arts occupations'
B08124m38='Service occupations'
B08124m39='Sales and office occupations'
B08124m40='Natural resources, construction, and maintenance occupations'
B08124m41='Production, transportation, and material moving occupations'
B08124m42='Military specific occupations'
B08124m43='Worked at home:'
B08124m44='Management, business, science, and arts occupations'
B08124m45='Service occupations'
B08124m46='Sales and office occupations'
B08124m47='Natural resources, construction, and maintenance occupations'
B08124m48='Production, transportation, and material moving occupations'
B08124m49='Military specific occupations'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B08113m1
B08113m2
B08113m3
B08113m4
B08113m5
B08113m6
B08113m7
B08113m8
B08113m9
B08113m10
B08113m11
B08113m12
B08113m13
B08113m14
B08113m15
B08113m16
B08113m17
B08113m18
B08113m19
B08113m20
B08113m21
B08113m22
B08113m23
B08113m24
B08113m25
B08113m26
B08113m27
B08113m28
B08113m29
B08113m30
B08113m31
B08113m32
B08113m33
B08113m34
B08113m35
B08113m36
B08113m37
B08113m38
B08113m39
B08113m40
B08113m41
B08113m42
B08113m43
B08113m44
B08113m45
B08113m46
B08113m47
B08113m48
B08113m49
B08113m50
B08113m51
B08113m52
B08113m53
B08113m54
B08113m55
B08113m56
 
B08119m1
B08119m2
B08119m3
B08119m4
B08119m5
B08119m6
B08119m7
B08119m8
B08119m9
B08119m10
B08119m11
B08119m12
B08119m13
B08119m14
B08119m15
B08119m16
B08119m17
B08119m18
B08119m19
B08119m20
B08119m21
B08119m22
B08119m23
B08119m24
B08119m25
B08119m26
B08119m27
B08119m28
B08119m29
B08119m30
B08119m31
B08119m32
B08119m33
B08119m34
B08119m35
B08119m36
B08119m37
B08119m38
B08119m39
B08119m40
B08119m41
B08119m42
B08119m43
B08119m44
B08119m45
B08119m46
B08119m47
B08119m48
B08119m49
B08119m50
B08119m51
B08119m52
B08119m53
B08119m54
B08119m55
B08119m56
B08119m57
B08119m58
B08119m59
B08119m60
B08119m61
B08119m62
B08119m63
 
B08121m1
B08121m2
B08121m3
B08121m4
B08121m5
B08121m6
B08121m7
 
B08122m1
B08122m2
B08122m3
B08122m4
B08122m5
B08122m6
B08122m7
B08122m8
B08122m9
B08122m10
B08122m11
B08122m12
B08122m13
B08122m14
B08122m15
B08122m16
B08122m17
B08122m18
B08122m19
B08122m20
B08122m21
B08122m22
B08122m23
B08122m24
B08122m25
B08122m26
B08122m27
B08122m28
 
B08124m1
B08124m2
B08124m3
B08124m4
B08124m5
B08124m6
B08124m7
B08124m8
B08124m9
B08124m10
B08124m11
B08124m12
B08124m13
B08124m14
B08124m15
B08124m16
B08124m17
B08124m18
B08124m19
B08124m20
B08124m21
B08124m22
B08124m23
B08124m24
B08124m25
B08124m26
B08124m27
B08124m28
B08124m29
B08124m30
B08124m31
B08124m32
B08124m33
B08124m34
B08124m35
B08124m36
B08124m37
B08124m38
B08124m39
B08124m40
B08124m41
B08124m42
B08124m43
B08124m44
B08124m45
B08124m46
B08124m47
B08124m48
B08124m49
;
RUN;
TITLE2;
