TITLE2 "m20115dc0030000";
DATA work.SFm0030dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0030000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*MEANS OF TRANSPORTATION TO WORK BY CITIZENSHIP STATUS FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B08511m1='Total:'
B08511m2='Native'
B08511m3='Foreign born:'
B08511m4='Naturalized U.S. citizen'
B08511m5='Not a U.S. citizen'
B08511m6='Car, truck, or van - drove alone:'
B08511m7='Native'
B08511m8='Foreign born:'
B08511m9='Naturalized U.S. citizen'
B08511m10='Not a U.S. citizen'
B08511m11='Car, truck, or van - carpooled:'
B08511m12='Native'
B08511m13='Foreign born:'
B08511m14='Naturalized U.S. citizen'
B08511m15='Not a U.S. citizen'
B08511m16='Public transportation (excluding taxicab):'
B08511m17='Native'
B08511m18='Foreign born:'
B08511m19='Naturalized U.S. citizen'
B08511m20='Not a U.S. citizen'
B08511m21='Walked:'
B08511m22='Native'
B08511m23='Foreign born:'
B08511m24='Naturalized U.S. citizen'
B08511m25='Not a U.S. citizen'
B08511m26='Taxicab, motorcycle, bicycle, or other means:'
B08511m27='Native'
B08511m28='Foreign born:'
B08511m29='Naturalized U.S. citizen'
B08511m30='Not a U.S. citizen'
B08511m31='Worked at home:'
B08511m32='Native'
B08511m33='Foreign born:'
B08511m34='Naturalized U.S. citizen'
B08511m35='Not a U.S. citizen'
 
/*MEANS OF TRANSPORTATION TO WORK BY LANGUAGE SPOKEN AT HOME AND ABILITY TO SPEAK ENGLISH FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B08513m1='Total:'
B08513m2='Speak only English'
B08513m3='Speak Spanish:'
B08513m4='Speak English "very well"'
B08513m5='Speak English less than "very well"'
B08513m6='Speak other languages:'
B08513m7='Speak English "very well"'
B08513m8='Speak English less than "very well"'
B08513m9='Car, truck, or van - drove alone:'
B08513m10='Speak only English'
B08513m11='Speak Spanish:'
B08513m12='Speak English "very well"'
B08513m13='Speak English less than "very well"'
B08513m14='Speak other languages:'
B08513m15='Speak English "very well"'
B08513m16='Speak English less than "very well"'
B08513m17='Car, truck, or van - carpooled:'
B08513m18='Speak only English'
B08513m19='Speak Spanish:'
B08513m20='Speak English "very well"'
B08513m21='Speak English less than "very well"'
B08513m22='Speak other languages:'
B08513m23='Speak English "very well"'
B08513m24='Speak English less than "very well"'
B08513m25='Public transportation (excluding taxicab):'
B08513m26='Speak only English'
B08513m27='Speak Spanish:'
B08513m28='Speak English "very well"'
B08513m29='Speak English less than "very well"'
B08513m30='Speak other languages:'
B08513m31='Speak English "very well"'
B08513m32='Speak English less than "very well"'
B08513m33='Walked:'
B08513m34='Speak only English'
B08513m35='Speak Spanish:'
B08513m36='Speak English "very well"'
B08513m37='Speak English less than "very well"'
B08513m38='Speak other languages:'
B08513m39='Speak English "very well"'
B08513m40='Speak English less than "very well"'
B08513m41='Taxicab, motorcycle, bicycle, or other means:'
B08513m42='Speak only English'
B08513m43='Speak Spanish:'
B08513m44='Speak English "very well"'
B08513m45='Speak English less than "very well"'
B08513m46='Speak other languages:'
B08513m47='Speak English "very well"'
B08513m48='Speak English less than "very well"'
B08513m49='Worked at home:'
B08513m50='Speak only English'
B08513m51='Speak Spanish:'
B08513m52='Speak English "very well"'
B08513m53='Speak English less than "very well"'
B08513m54='Speak other languages:'
B08513m55='Speak English "very well"'
B08513m56='Speak English less than "very well"'
 
/*MEANS OF TRANSPORTATION TO WORK BY WORKERS'' EARNINGS IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over with earnings */
 
B08519m1='Total:'
B08519m2='$1 to $9,999 or loss'
B08519m3='$10,000 to $14,999'
B08519m4='$15,000 to $24,999'
B08519m5='$25,000 to $34,999'
B08519m6='$35,000 to $49,999'
B08519m7='$50,000 to $64,999'
B08519m8='$65,000 to $74,999'
B08519m9='$75,000 or more'
B08519m10='Car, truck, or van - drove alone:'
B08519m11='$1 to $9,999 or loss'
B08519m12='$10,000 to $14,999'
B08519m13='$15,000 to $24,999'
B08519m14='$25,000 to $34,999'
B08519m15='$35,000 to $49,999'
B08519m16='$50,000 to $64,999'
B08519m17='$65,000 to $74,999'
B08519m18='$75,000 or more'
B08519m19='Car, truck, or van - carpooled:'
B08519m20='$1 to $9,999 or loss'
B08519m21='$10,000 to $14,999'
B08519m22='$15,000 to $24,999'
B08519m23='$25,000 to $34,999'
B08519m24='$35,000 to $49,999'
B08519m25='$50,000 to $64,999'
B08519m26='$65,000 to $74,999'
B08519m27='$75,000 or more'
B08519m28='Public transportation (excluding taxicab):'
B08519m29='$1 to $9,999 or loss'
B08519m30='$10,000 to $14,999'
B08519m31='$15,000 to $24,999'
B08519m32='$25,000 to $34,999'
B08519m33='$35,000 to $49,999'
B08519m34='$50,000 to $64,999'
B08519m35='$65,000 to $74,999'
B08519m36='$75,000 or more'
B08519m37='Walked:'
B08519m38='$1 to $9,999 or loss'
B08519m39='$10,000 to $14,999'
B08519m40='$15,000 to $24,999'
B08519m41='$25,000 to $34,999'
B08519m42='$35,000 to $49,999'
B08519m43='$50,000 to $64,999'
B08519m44='$65,000 to $74,999'
B08519m45='$75,000 or more'
B08519m46='Taxicab, motorcycle, bicycle, or other means:'
B08519m47='$1 to $9,999 or loss'
B08519m48='$10,000 to $14,999'
B08519m49='$15,000 to $24,999'
B08519m50='$25,000 to $34,999'
B08519m51='$35,000 to $49,999'
B08519m52='$50,000 to $64,999'
B08519m53='$65,000 to $74,999'
B08519m54='$75,000 or more'
B08519m55='Worked at home:'
B08519m56='$1 to $9,999 or loss'
B08519m57='$10,000 to $14,999'
B08519m58='$15,000 to $24,999'
B08519m59='$25,000 to $34,999'
B08519m60='$35,000 to $49,999'
B08519m61='$50,000 to $64,999'
B08519m62='$65,000 to $74,999'
B08519m63='$75,000 or more'
 
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY MEANS OF TRANSPORTATION TO WORK FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over with earnings */
/*Median earnings in the past 12 months -- */
 
B08521m1='Total:'
B08521m2='Car, truck, or van - drove alone'
B08521m3='Car, truck, or van - carpooled'
B08521m4='Public transportation (excluding taxicab)'
B08521m5='Walked'
B08521m6='Taxicab, motorcycle, bicycle, or other means'
B08521m7='Worked at home'
 
/*MEANS OF TRANSPORTATION TO WORK BY POVERTY STATUS IN THE PAST 12 MONTHS FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over for whom poverty status is determined */
 
B08522m1='Total:'
B08522m2='Below 100 percent of the poverty level'
B08522m3='100 to 149 percent of the poverty level'
B08522m4='At or above 150 percent of the poverty level'
B08522m5='Car, truck, or van - drove alone:'
B08522m6='Below 100 percent of the poverty level'
B08522m7='100 to 149 percent of the poverty level'
B08522m8='At or above 150 percent of the poverty level'
B08522m9='Car, truck, or van - carpooled:'
B08522m10='Below 100 percent of the poverty level'
B08522m11='100 to 149 percent of the poverty level'
B08522m12='At or above 150 percent of the poverty level'
B08522m13='Public transportation (excluding taxicab):'
B08522m14='Below 100 percent of the poverty level'
B08522m15='100 to 149 percent of the poverty level'
B08522m16='At or above 150 percent of the poverty level'
B08522m17='Walked:'
B08522m18='Below 100 percent of the poverty level'
B08522m19='100 to 149 percent of the poverty level'
B08522m20='At or above 150 percent of the poverty level'
B08522m21='Taxicab, motorcycle, bicycle, or other means:'
B08522m22='Below 100 percent of the poverty level'
B08522m23='100 to 149 percent of the poverty level'
B08522m24='At or above 150 percent of the poverty level'
B08522m25='Worked at home:'
B08522m26='Below 100 percent of the poverty level'
B08522m27='100 to 149 percent of the poverty level'
B08522m28='At or above 150 percent of the poverty level'
 
/*MEANS OF TRANSPORTATION TO WORK BY OCCUPATION FOR WORKPLACE GEOGRAPHY */
/*Universe:  Workers 16 years and over */
 
B08524m1='Total:'
B08524m2='Management, business, science, and arts occupations'
B08524m3='Service occupations'
B08524m4='Sales and office occupations'
B08524m5='Natural resources, construction, and maintenance occupations'
B08524m6='Production, transportation, and material moving occupations'
B08524m7='Military specific occupations'
B08524m8='Car, truck, or van - drove alone:'
B08524m9='Management, business, science, and arts occupations'
B08524m10='Service occupations'
B08524m11='Sales and office occupations'
B08524m12='Natural resources, construction, and maintenance occupations'
B08524m13='Production, transportation, and material moving occupations'
B08524m14='Military specific occupations'
B08524m15='Car, truck, or van - carpooled:'
B08524m16='Management, business, science, and arts occupations'
B08524m17='Service occupations'
B08524m18='Sales and office occupations'
B08524m19='Natural resources, construction, and maintenance occupations'
B08524m20='Production, transportation, and material moving occupations'
B08524m21='Military specific occupations'
B08524m22='Public transportation (excluding taxicab):'
B08524m23='Management, business, science, and arts occupations'
B08524m24='Service occupations'
B08524m25='Sales and office occupations'
B08524m26='Natural resources, construction, and maintenance occupations'
B08524m27='Production, transportation, and material moving occupations'
B08524m28='Military specific occupations'
B08524m29='Walked:'
B08524m30='Management, business, science, and arts occupations'
B08524m31='Service occupations'
B08524m32='Sales and office occupations'
B08524m33='Natural resources, construction, and maintenance occupations'
B08524m34='Production, transportation, and material moving occupations'
B08524m35='Military specific occupations'
B08524m36='Taxicab, motorcycle, bicycle, or other means:'
B08524m37='Management, business, science, and arts occupations'
B08524m38='Service occupations'
B08524m39='Sales and office occupations'
B08524m40='Natural resources, construction, and maintenance occupations'
B08524m41='Production, transportation, and material moving occupations'
B08524m42='Military specific occupations'
B08524m43='Worked at home:'
B08524m44='Management, business, science, and arts occupations'
B08524m45='Service occupations'
B08524m46='Sales and office occupations'
B08524m47='Natural resources, construction, and maintenance occupations'
B08524m48='Production, transportation, and material moving occupations'
B08524m49='Military specific occupations'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B08511m1
B08511m2
B08511m3
B08511m4
B08511m5
B08511m6
B08511m7
B08511m8
B08511m9
B08511m10
B08511m11
B08511m12
B08511m13
B08511m14
B08511m15
B08511m16
B08511m17
B08511m18
B08511m19
B08511m20
B08511m21
B08511m22
B08511m23
B08511m24
B08511m25
B08511m26
B08511m27
B08511m28
B08511m29
B08511m30
B08511m31
B08511m32
B08511m33
B08511m34
B08511m35
 
B08513m1
B08513m2
B08513m3
B08513m4
B08513m5
B08513m6
B08513m7
B08513m8
B08513m9
B08513m10
B08513m11
B08513m12
B08513m13
B08513m14
B08513m15
B08513m16
B08513m17
B08513m18
B08513m19
B08513m20
B08513m21
B08513m22
B08513m23
B08513m24
B08513m25
B08513m26
B08513m27
B08513m28
B08513m29
B08513m30
B08513m31
B08513m32
B08513m33
B08513m34
B08513m35
B08513m36
B08513m37
B08513m38
B08513m39
B08513m40
B08513m41
B08513m42
B08513m43
B08513m44
B08513m45
B08513m46
B08513m47
B08513m48
B08513m49
B08513m50
B08513m51
B08513m52
B08513m53
B08513m54
B08513m55
B08513m56
 
B08519m1
B08519m2
B08519m3
B08519m4
B08519m5
B08519m6
B08519m7
B08519m8
B08519m9
B08519m10
B08519m11
B08519m12
B08519m13
B08519m14
B08519m15
B08519m16
B08519m17
B08519m18
B08519m19
B08519m20
B08519m21
B08519m22
B08519m23
B08519m24
B08519m25
B08519m26
B08519m27
B08519m28
B08519m29
B08519m30
B08519m31
B08519m32
B08519m33
B08519m34
B08519m35
B08519m36
B08519m37
B08519m38
B08519m39
B08519m40
B08519m41
B08519m42
B08519m43
B08519m44
B08519m45
B08519m46
B08519m47
B08519m48
B08519m49
B08519m50
B08519m51
B08519m52
B08519m53
B08519m54
B08519m55
B08519m56
B08519m57
B08519m58
B08519m59
B08519m60
B08519m61
B08519m62
B08519m63
 
B08521m1
B08521m2
B08521m3
B08521m4
B08521m5
B08521m6
B08521m7
 
B08522m1
B08522m2
B08522m3
B08522m4
B08522m5
B08522m6
B08522m7
B08522m8
B08522m9
B08522m10
B08522m11
B08522m12
B08522m13
B08522m14
B08522m15
B08522m16
B08522m17
B08522m18
B08522m19
B08522m20
B08522m21
B08522m22
B08522m23
B08522m24
B08522m25
B08522m26
B08522m27
B08522m28
 
B08524m1
B08524m2
B08524m3
B08524m4
B08524m5
B08524m6
B08524m7
B08524m8
B08524m9
B08524m10
B08524m11
B08524m12
B08524m13
B08524m14
B08524m15
B08524m16
B08524m17
B08524m18
B08524m19
B08524m20
B08524m21
B08524m22
B08524m23
B08524m24
B08524m25
B08524m26
B08524m27
B08524m28
B08524m29
B08524m30
B08524m31
B08524m32
B08524m33
B08524m34
B08524m35
B08524m36
B08524m37
B08524m38
B08524m39
B08524m40
B08524m41
B08524m42
B08524m43
B08524m44
B08524m45
B08524m46
B08524m47
B08524m48
B08524m49
;
RUN;
TITLE2;
