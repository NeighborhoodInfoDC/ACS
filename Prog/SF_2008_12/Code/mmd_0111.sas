TITLE2 "m20125md0111000";
DATA work.SFm0111md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0111000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*TENURE BY YEAR HOUSEHOLDER MOVED INTO UNIT BY UNITS IN STRUCTURE */
/*Universe:  Occupied housing units */
 
B25129m1='Total:'
B25129m2='Owner occupied:'
B25129m3='Moved in 2005 or later:'
B25129m4='1, detached  or attached'
B25129m5='2 to 4'
B25129m6='5 to 19'
B25129m7='20 to 49'
B25129m8='50 or more'
B25129m9='Mobile home, boat, RV, van, etc.'
B25129m10='Moved in 2000 to 2004:'
B25129m11='1, detached  or attached'
B25129m12='2 to 4'
B25129m13='5 to 19'
B25129m14='20 to 49'
B25129m15='50 or more'
B25129m16='Mobile home, boat, RV, van, etc.'
B25129m17='Moved in 1990 to 1999:'
B25129m18='1, detached  or attached'
B25129m19='2 to 4'
B25129m20='5 to 19'
B25129m21='20 to 49'
B25129m22='50 or more'
B25129m23='Mobile home, boat, RV, van, etc.'
B25129m24='Moved in 1980 to 1989:'
B25129m25='1, detached  or attached'
B25129m26='2 to 4'
B25129m27='5 to 19'
B25129m28='20 to 49'
B25129m29='50 or more'
B25129m30='Mobile home, boat, RV, van, etc.'
B25129m31='Moved in 1970 to 1979:'
B25129m32='1, detached  or attached'
B25129m33='2 to 4'
B25129m34='5 to 19'
B25129m35='20 to 49'
B25129m36='50 or more'
B25129m37='Mobile home, boat, RV, van, etc.'
B25129m38='Moved in 1969 or earlier:'
B25129m39='1, detached  or attached'
B25129m40='2 to 4'
B25129m41='5 to 19'
B25129m42='20 to 49'
B25129m43='50 or more'
B25129m44='Mobile home, boat, RV, van, etc.'
B25129m45='Renter occupied:'
B25129m46='Moved in 2005 or later:'
B25129m47='1, detached  or attached'
B25129m48='2 to 4'
B25129m49='5 to 19'
B25129m50='20 to 49'
B25129m51='50 or more'
B25129m52='Mobile home, boat, RV, van, etc.'
B25129m53='Moved in 2000 to 2004:'
B25129m54='1, detached  or attached'
B25129m55='2 to 4'
B25129m56='5 to 19'
B25129m57='20 to 49'
B25129m58='50 or more'
B25129m59='Mobile home, boat, RV, van, etc.'
B25129m60='Moved in 1990 to 1999:'
B25129m61='1, detached  or attached'
B25129m62='2 to 4'
B25129m63='5 to 19'
B25129m64='20 to 49'
B25129m65='50 or more'
B25129m66='Mobile home, boat, RV, van, etc.'
B25129m67='Moved in 1980 to 1989:'
B25129m68='1, detached  or attached'
B25129m69='2 to 4'
B25129m70='5 to 19'
B25129m71='20 to 49'
B25129m72='50 or more'
B25129m73='Mobile home, boat, RV, van, etc.'
B25129m74='Moved in 1970 to 1979:'
B25129m75='1, detached  or attached'
B25129m76='2 to 4'
B25129m77='5 to 19'
B25129m78='20 to 49'
B25129m79='50 or more'
B25129m80='Mobile home, boat, RV, van, etc.'
B25129m81='Moved in 1969 or earlier:'
B25129m82='1, detached  or attached'
B25129m83='2 to 4'
B25129m84='5 to 19'
B25129m85='20 to 49'
B25129m86='50 or more'
B25129m87='Mobile home, boat, RV, van, etc.'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B25129m1
B25129m2
B25129m3
B25129m4
B25129m5
B25129m6
B25129m7
B25129m8
B25129m9
B25129m10
B25129m11
B25129m12
B25129m13
B25129m14
B25129m15
B25129m16
B25129m17
B25129m18
B25129m19
B25129m20
B25129m21
B25129m22
B25129m23
B25129m24
B25129m25
B25129m26
B25129m27
B25129m28
B25129m29
B25129m30
B25129m31
B25129m32
B25129m33
B25129m34
B25129m35
B25129m36
B25129m37
B25129m38
B25129m39
B25129m40
B25129m41
B25129m42
B25129m43
B25129m44
B25129m45
B25129m46
B25129m47
B25129m48
B25129m49
B25129m50
B25129m51
B25129m52
B25129m53
B25129m54
B25129m55
B25129m56
B25129m57
B25129m58
B25129m59
B25129m60
B25129m61
B25129m62
B25129m63
B25129m64
B25129m65
B25129m66
B25129m67
B25129m68
B25129m69
B25129m70
B25129m71
B25129m72
B25129m73
B25129m74
B25129m75
B25129m76
B25129m77
B25129m78
B25129m79
B25129m80
B25129m81
B25129m82
B25129m83
B25129m84
B25129m85
B25129m86
B25129m87
;
RUN;
TITLE2;
