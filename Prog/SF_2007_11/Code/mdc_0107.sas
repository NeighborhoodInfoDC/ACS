TITLE2 "m20115dc0107000";
DATA work.SFm0107dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0107000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*TENURE BY AGE OF HOUSEHOLDER BY UNITS IN STRUCTURE */
/*Universe:  Occupied housing units */
 
B25125m1='Total:'
B25125m2='Owner occupied:'
B25125m3='Householder 15 to 34 years:'
B25125m4='1, detached  or attached'
B25125m5='2 to 4'
B25125m6='5 to 19'
B25125m7='20 to 49'
B25125m8='50 or more'
B25125m9='Mobile home, boat, RV, van, etc.'
B25125m10='Householder 35 to 64 years:'
B25125m11='1, detached  or attached'
B25125m12='2 to 4'
B25125m13='5 to 19'
B25125m14='20 to 49'
B25125m15='50 or more'
B25125m16='Mobile home, boat, RV, van, etc.'
B25125m17='Householder 65 years and over:'
B25125m18='1, detached  or attached'
B25125m19='2 to 4'
B25125m20='5 to 19'
B25125m21='20 to 49'
B25125m22='50 or more'
B25125m23='Mobile home, boat, RV, van, etc.'
B25125m24='Renter occupied:'
B25125m25='Householder 15 to 34 years:'
B25125m26='1, detached  or attached'
B25125m27='2 to 4'
B25125m28='5 to 19'
B25125m29='20 to 49'
B25125m30='50 or more'
B25125m31='Mobile home, boat, RV, van, etc.'
B25125m32='Householder 35 to 64 years:'
B25125m33='1, detached  or attached'
B25125m34='2 to 4'
B25125m35='5 to 19'
B25125m36='20 to 49'
B25125m37='50 or more'
B25125m38='Mobile home, boat, RV, van, etc.'
B25125m39='Householder 65 years and over:'
B25125m40='1, detached  or attached'
B25125m41='2 to 4'
B25125m42='5 to 19'
B25125m43='20 to 49'
B25125m44='50 or more'
B25125m45='Mobile home, boat, RV, van, etc.'
 
/*TENURE BY AGE OF HOUSEHOLDER BY YEAR STRUCTURE BUILT */
/*Universe:  Occupied housing units */
 
B25126m1='Total:'
B25126m2='Owner occupied:'
B25126m3='Householder 15 to 34 years:'
B25126m4='Built 2005 or later'
B25126m5='Built 2000 to 2004'
B25126m6='Built 1990 to 1999'
B25126m7='Built 1980 to 1989'
B25126m8='Built 1970 to 1979'
B25126m9='Built 1960 to 1969'
B25126m10='Built 1950 to 1959'
B25126m11='Built 1940 to 1949'
B25126m12='Built 1939 or earlier'
B25126m13='Householder 35 to 64 years:'
B25126m14='Built 2005 or later'
B25126m15='Built 2000 to 2004'
B25126m16='Built 1990 to 1999'
B25126m17='Built 1980 to 1989'
B25126m18='Built 1970 to 1979'
B25126m19='Built 1960 to 1969'
B25126m20='Built 1950 to 1959'
B25126m21='Built 1940 to 1949'
B25126m22='Built 1939 or earlier'
B25126m23='Householder 65 years and over:'
B25126m24='Built 2005 or later'
B25126m25='Built 2000 to 2004'
B25126m26='Built 1990 to 1999'
B25126m27='Built 1980 to 1989'
B25126m28='Built 1970 to 1979'
B25126m29='Built 1960 to 1969'
B25126m30='Built 1950 to 1959'
B25126m31='Built 1940 to 1949'
B25126m32='Built 1939 or earlier'
B25126m33='Renter occupied:'
B25126m34='Householder 15 to 34 years:'
B25126m35='Built 2005 or later'
B25126m36='Built 2000 to 2004'
B25126m37='Built 1990 to 1999'
B25126m38='Built 1980 to 1989'
B25126m39='Built 1970 to 1979'
B25126m40='Built 1960 to 1969'
B25126m41='Built 1950 to 1959'
B25126m42='Built 1940 to 1949'
B25126m43='Built 1939 or earlier'
B25126m44='Householder 35 to 64 years:'
B25126m45='Built 2005 or later'
B25126m46='Built 2000 to 2004'
B25126m47='Built 1990 to 1999'
B25126m48='Built 1980 to 1989'
B25126m49='Built 1970 to 1979'
B25126m50='Built 1960 to 1969'
B25126m51='Built 1950 to 1959'
B25126m52='Built 1940 to 1949'
B25126m53='Built 1939 or earlier'
B25126m54='Householder 65 years and over:'
B25126m55='Built 2005 or later'
B25126m56='Built 2000 to 2004'
B25126m57='Built 1990 to 1999'
B25126m58='Built 1980 to 1989'
B25126m59='Built 1970 to 1979'
B25126m60='Built 1960 to 1969'
B25126m61='Built 1950 to 1959'
B25126m62='Built 1940 to 1949'
B25126m63='Built 1939 or earlier'
 
/*TENURE BY YEAR STRUCTURE BUILT BY UNITS IN STRUCTURE */
/*Universe:  Occupied housing units */
 
B25127m1='Total:'
B25127m2='Owner occupied:'
B25127m3='Built 2000 or later:'
B25127m4='1, detached  or attached'
B25127m5='2 to 4'
B25127m6='5 to 19'
B25127m7='20 to 49'
B25127m8='50 or more'
B25127m9='Mobile home, boat, RV, van, etc.'
B25127m10='Built 1980 to 1999:'
B25127m11='1, detached  or attached'
B25127m12='2 to 4'
B25127m13='5 to 19'
B25127m14='20 to 49'
B25127m15='50 or more'
B25127m16='Mobile home, boat, RV, van, etc.'
B25127m17='Built 1960 to 1979:'
B25127m18='1, detached  or attached'
B25127m19='2 to 4'
B25127m20='5 to 19'
B25127m21='20 to 49'
B25127m22='50 or more'
B25127m23='Mobile home, boat, RV, van, etc.'
B25127m24='Built 1940 to 1959:'
B25127m25='1, detached  or attached'
B25127m26='2 to 4'
B25127m27='5 to 19'
B25127m28='20 to 49'
B25127m29='50 or more'
B25127m30='Mobile home, boat, RV, van, etc.'
B25127m31='Built 1939 or earlier:'
B25127m32='1, detached  or attached'
B25127m33='2 to 4'
B25127m34='5 to 19'
B25127m35='20 to 49'
B25127m36='50 or more'
B25127m37='Mobile home, boat, RV, van, etc.'
B25127m38='Renter occupied:'
B25127m39='Built 2000 or later:'
B25127m40='1, detached  or attached'
B25127m41='2 to 4'
B25127m42='5 to 19'
B25127m43='20 to 49'
B25127m44='50 or more'
B25127m45='Mobile home, boat, RV, van, etc.'
B25127m46='Built 1980 to 1999:'
B25127m47='1, detached  or attached'
B25127m48='2 to 4'
B25127m49='5 to 19'
B25127m50='20 to 49'
B25127m51='50 or more'
B25127m52='Mobile home, boat, RV, van, etc.'
B25127m53='Built 1960 to 1979:'
B25127m54='1, detached  or attached'
B25127m55='2 to 4'
B25127m56='5 to 19'
B25127m57='20 to 49'
B25127m58='50 or more'
B25127m59='Mobile home, boat, RV, van, etc.'
B25127m60='Built 1940 to 1959:'
B25127m61='1, detached  or attached'
B25127m62='2 to 4'
B25127m63='5 to 19'
B25127m64='20 to 49'
B25127m65='50 or more'
B25127m66='Mobile home, boat, RV, van, etc.'
B25127m67='Built 1939 or earlier:'
B25127m68='1, detached  or attached'
B25127m69='2 to 4'
B25127m70='5 to 19'
B25127m71='20 to 49'
B25127m72='50 or more'
B25127m73='Mobile home, boat, RV, van, etc.'
 
/*TENURE BY AGE OF HOUSEHOLDER BY YEAR HOUSEHOLDER MOVED INTO UNIT */
/*Universe:  Occupied housing units */
 
B25128m1='Total:'
B25128m2='Owner occupied:'
B25128m3='Householder 15 to 34 years:'
B25128m4='Moved in 2005 or later'
B25128m5='Moved in 2000 to 2004'
B25128m6='Moved in 1990 to 1999'
B25128m7='Moved in 1980 to 1989'
B25128m8='Moved in 1970 to 1979'
B25128m9='Moved in 1969 or earlier'
B25128m10='Householder 35 to 64 years:'
B25128m11='Moved in 2005 or later'
B25128m12='Moved in 2000 to 2004'
B25128m13='Moved in 1990 to 1999'
B25128m14='Moved in 1980 to 1989'
B25128m15='Moved in 1970 to 1979'
B25128m16='Moved in 1969 or earlier'
B25128m17='Householder 65 years and over:'
B25128m18='Moved in 2005 or later'
B25128m19='Moved in 2000 to 2004'
B25128m20='Moved in 1990 to 1999'
B25128m21='Moved in 1980 to 1989'
B25128m22='Moved in 1970 to 1979'
B25128m23='Moved in 1969 or earlier'
B25128m24='Renter occupied:'
B25128m25='Householder 15 to 34 years:'
B25128m26='Moved in 2005 or later'
B25128m27='Moved in 2000 to 2004'
B25128m28='Moved in 1990 to 1999'
B25128m29='Moved in 1980 to 1989'
B25128m30='Moved in 1970 to 1979'
B25128m31='Moved in 1969 or earlier'
B25128m32='Householder 35 to 64 years:'
B25128m33='Moved in 2005 or later'
B25128m34='Moved in 2000 to 2004'
B25128m35='Moved in 1990 to 1999'
B25128m36='Moved in 1980 to 1989'
B25128m37='Moved in 1970 to 1979'
B25128m38='Moved in 1969 or earlier'
B25128m39='Householder 65 years and over:'
B25128m40='Moved in 2005 or later'
B25128m41='Moved in 2000 to 2004'
B25128m42='Moved in 1990 to 1999'
B25128m43='Moved in 1980 to 1989'
B25128m44='Moved in 1970 to 1979'
B25128m45='Moved in 1969 or earlier'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B25125m1
B25125m2
B25125m3
B25125m4
B25125m5
B25125m6
B25125m7
B25125m8
B25125m9
B25125m10
B25125m11
B25125m12
B25125m13
B25125m14
B25125m15
B25125m16
B25125m17
B25125m18
B25125m19
B25125m20
B25125m21
B25125m22
B25125m23
B25125m24
B25125m25
B25125m26
B25125m27
B25125m28
B25125m29
B25125m30
B25125m31
B25125m32
B25125m33
B25125m34
B25125m35
B25125m36
B25125m37
B25125m38
B25125m39
B25125m40
B25125m41
B25125m42
B25125m43
B25125m44
B25125m45
 
B25126m1
B25126m2
B25126m3
B25126m4
B25126m5
B25126m6
B25126m7
B25126m8
B25126m9
B25126m10
B25126m11
B25126m12
B25126m13
B25126m14
B25126m15
B25126m16
B25126m17
B25126m18
B25126m19
B25126m20
B25126m21
B25126m22
B25126m23
B25126m24
B25126m25
B25126m26
B25126m27
B25126m28
B25126m29
B25126m30
B25126m31
B25126m32
B25126m33
B25126m34
B25126m35
B25126m36
B25126m37
B25126m38
B25126m39
B25126m40
B25126m41
B25126m42
B25126m43
B25126m44
B25126m45
B25126m46
B25126m47
B25126m48
B25126m49
B25126m50
B25126m51
B25126m52
B25126m53
B25126m54
B25126m55
B25126m56
B25126m57
B25126m58
B25126m59
B25126m60
B25126m61
B25126m62
B25126m63
 
B25127m1
B25127m2
B25127m3
B25127m4
B25127m5
B25127m6
B25127m7
B25127m8
B25127m9
B25127m10
B25127m11
B25127m12
B25127m13
B25127m14
B25127m15
B25127m16
B25127m17
B25127m18
B25127m19
B25127m20
B25127m21
B25127m22
B25127m23
B25127m24
B25127m25
B25127m26
B25127m27
B25127m28
B25127m29
B25127m30
B25127m31
B25127m32
B25127m33
B25127m34
B25127m35
B25127m36
B25127m37
B25127m38
B25127m39
B25127m40
B25127m41
B25127m42
B25127m43
B25127m44
B25127m45
B25127m46
B25127m47
B25127m48
B25127m49
B25127m50
B25127m51
B25127m52
B25127m53
B25127m54
B25127m55
B25127m56
B25127m57
B25127m58
B25127m59
B25127m60
B25127m61
B25127m62
B25127m63
B25127m64
B25127m65
B25127m66
B25127m67
B25127m68
B25127m69
B25127m70
B25127m71
B25127m72
B25127m73
 
B25128m1
B25128m2
B25128m3
B25128m4
B25128m5
B25128m6
B25128m7
B25128m8
B25128m9
B25128m10
B25128m11
B25128m12
B25128m13
B25128m14
B25128m15
B25128m16
B25128m17
B25128m18
B25128m19
B25128m20
B25128m21
B25128m22
B25128m23
B25128m24
B25128m25
B25128m26
B25128m27
B25128m28
B25128m29
B25128m30
B25128m31
B25128m32
B25128m33
B25128m34
B25128m35
B25128m36
B25128m37
B25128m38
B25128m39
B25128m40
B25128m41
B25128m42
B25128m43
B25128m44
B25128m45
;
RUN;
TITLE2;
