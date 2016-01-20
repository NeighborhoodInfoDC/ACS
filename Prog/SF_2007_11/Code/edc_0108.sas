TITLE2 "e20115dc0108000";
DATA work.SFe0108dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0108000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*TENURE BY YEAR HOUSEHOLDER MOVED INTO UNIT BY UNITS IN STRUCTURE */
/*Universe:  Occupied housing units */
 
B25129e1='Total:'
B25129e2='Owner occupied:'
B25129e3='Moved in 2005 or later:'
B25129e4='1, detached  or attached'
B25129e5='2 to 4'
B25129e6='5 to 19'
B25129e7='20 to 49'
B25129e8='50 or more'
B25129e9='Mobile home, boat, RV, van, etc.'
B25129e10='Moved in 2000 to 2004:'
B25129e11='1, detached  or attached'
B25129e12='2 to 4'
B25129e13='5 to 19'
B25129e14='20 to 49'
B25129e15='50 or more'
B25129e16='Mobile home, boat, RV, van, etc.'
B25129e17='Moved in 1990 to 1999:'
B25129e18='1, detached  or attached'
B25129e19='2 to 4'
B25129e20='5 to 19'
B25129e21='20 to 49'
B25129e22='50 or more'
B25129e23='Mobile home, boat, RV, van, etc.'
B25129e24='Moved in 1980 to 1989:'
B25129e25='1, detached  or attached'
B25129e26='2 to 4'
B25129e27='5 to 19'
B25129e28='20 to 49'
B25129e29='50 or more'
B25129e30='Mobile home, boat, RV, van, etc.'
B25129e31='Moved in 1970 to 1979:'
B25129e32='1, detached  or attached'
B25129e33='2 to 4'
B25129e34='5 to 19'
B25129e35='20 to 49'
B25129e36='50 or more'
B25129e37='Mobile home, boat, RV, van, etc.'
B25129e38='Moved in 1969 or earlier:'
B25129e39='1, detached  or attached'
B25129e40='2 to 4'
B25129e41='5 to 19'
B25129e42='20 to 49'
B25129e43='50 or more'
B25129e44='Mobile home, boat, RV, van, etc.'
B25129e45='Renter occupied:'
B25129e46='Moved in 2005 or later:'
B25129e47='1, detached  or attached'
B25129e48='2 to 4'
B25129e49='5 to 19'
B25129e50='20 to 49'
B25129e51='50 or more'
B25129e52='Mobile home, boat, RV, van, etc.'
B25129e53='Moved in 2000 to 2004:'
B25129e54='1, detached  or attached'
B25129e55='2 to 4'
B25129e56='5 to 19'
B25129e57='20 to 49'
B25129e58='50 or more'
B25129e59='Mobile home, boat, RV, van, etc.'
B25129e60='Moved in 1990 to 1999:'
B25129e61='1, detached  or attached'
B25129e62='2 to 4'
B25129e63='5 to 19'
B25129e64='20 to 49'
B25129e65='50 or more'
B25129e66='Mobile home, boat, RV, van, etc.'
B25129e67='Moved in 1980 to 1989:'
B25129e68='1, detached  or attached'
B25129e69='2 to 4'
B25129e70='5 to 19'
B25129e71='20 to 49'
B25129e72='50 or more'
B25129e73='Mobile home, boat, RV, van, etc.'
B25129e74='Moved in 1970 to 1979:'
B25129e75='1, detached  or attached'
B25129e76='2 to 4'
B25129e77='5 to 19'
B25129e78='20 to 49'
B25129e79='50 or more'
B25129e80='Mobile home, boat, RV, van, etc.'
B25129e81='Moved in 1969 or earlier:'
B25129e82='1, detached  or attached'
B25129e83='2 to 4'
B25129e84='5 to 19'
B25129e85='20 to 49'
B25129e86='50 or more'
B25129e87='Mobile home, boat, RV, van, etc.'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B25129e1
B25129e2
B25129e3
B25129e4
B25129e5
B25129e6
B25129e7
B25129e8
B25129e9
B25129e10
B25129e11
B25129e12
B25129e13
B25129e14
B25129e15
B25129e16
B25129e17
B25129e18
B25129e19
B25129e20
B25129e21
B25129e22
B25129e23
B25129e24
B25129e25
B25129e26
B25129e27
B25129e28
B25129e29
B25129e30
B25129e31
B25129e32
B25129e33
B25129e34
B25129e35
B25129e36
B25129e37
B25129e38
B25129e39
B25129e40
B25129e41
B25129e42
B25129e43
B25129e44
B25129e45
B25129e46
B25129e47
B25129e48
B25129e49
B25129e50
B25129e51
B25129e52
B25129e53
B25129e54
B25129e55
B25129e56
B25129e57
B25129e58
B25129e59
B25129e60
B25129e61
B25129e62
B25129e63
B25129e64
B25129e65
B25129e66
B25129e67
B25129e68
B25129e69
B25129e70
B25129e71
B25129e72
B25129e73
B25129e74
B25129e75
B25129e76
B25129e77
B25129e78
B25129e79
B25129e80
B25129e81
B25129e82
B25129e83
B25129e84
B25129e85
B25129e86
B25129e87
;
RUN;
TITLE2;
