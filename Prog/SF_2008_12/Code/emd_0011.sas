TITLE2 "e20125md0011000";
DATA work.SFe0011md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0011000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*PLACE OF BIRTH FOR THE FOREIGN-BORN POPULATION IN PUERTO RICO */
/*Universe:  Foreign-born population in Puerto Rico excluding population born at sea */
 
B05006PRe1='Total:'
B05006PRe2='Europe:'
B05006PRe3='Northern Europe'
B05006PRe4='Western Europe'
B05006PRe5='Southern Europe:'
B05006PRe6='Spain'
B05006PRe7='Other Southern Europe'
B05006PRe8='Eastern Europe'
B05006PRe9='Europe, n.e.c.'
B05006PRe10='Asia:'
B05006PRe11='Eastern Asia:'
B05006PRe12='China:'
B05006PRe13='China, excluding Taiwan'
B05006PRe14='Taiwan'
B05006PRe15='Korea'
B05006PRe16='Other Eastern Asia'
B05006PRe17='South Central Asia'
B05006PRe18='South Eastern Asia'
B05006PRe19='Western Asia'
B05006PRe20='Asia,n.e.c.'
B05006PRe21='Africa'
B05006PRe22='Oceania'
B05006PRe23='Americas:'
B05006PRe24='Latin America:'
B05006PRe25='Caribbean:'
B05006PRe26='Cuba'
B05006PRe27='Dominican Republic'
B05006PRe28='Haiti'
B05006PRe29='Other Caribbean'
B05006PRe30='Central America:'
B05006PRe31='Mexico'
B05006PRe32='Costa Rica'
B05006PRe33='El Salvador'
B05006PRe34='Guatemala'
B05006PRe35='Honduras'
B05006PRe36='Panama'
B05006PRe37='Other Central America'
B05006PRe38='South America:'
B05006PRe39='Argentina'
B05006PRe40='Chile'
B05006PRe41='Colombia'
B05006PRe42='Ecuador'
B05006PRe43='Peru'
B05006PRe44='Venezuela'
B05006PRe45='Other South America'
B05006PRe46='Northern America'
/*PLACE OF BIRTH BY YEAR OF ENTRY BY CITIZENSHIP STATUS FOR THE FOREIGN-BORN POPULATION */
/*Universe:  Foreign-born population */
 
B05007e1='Total:'
B05007e2='Europe:'
B05007e3='Entered 2010 or later'
B05007e4='Naturalized U.S. citizen'
B05007e5='Not a U.S. citizen'
B05007e6='Entered 2000 to 2009'
B05007e7='Naturalized U.S. citizen'
B05007e8='Not a U.S. citizen'
B05007e9='Entered 1990 to 1999:'
B05007e10='Naturalized U.S. citizen'
B05007e11='Not a U.S. citizen'
B05007e12='Entered before 1990:'
B05007e13='Naturalized U.S. citizen'
B05007e14='Not a U.S. citizen'
B05007e15='Asia:'
B05007e16='Entered 2010 or later'
B05007e17='Naturalized U.S. citizen'
B05007e18='Not a U.S. citizen'
B05007e19='Entered 2000 to 2009'
B05007e20='Naturalized U.S. citizen'
B05007e21='Not a U.S. citizen'
B05007e22='Entered 1990 to 1999:'
B05007e23='Naturalized U.S. citizen'
B05007e24='Not a U.S. citizen'
B05007e25='Entered before 1990:'
B05007e26='Naturalized U.S. citizen'
B05007e27='Not a U.S. citizen'
B05007e28='Latin America:'
B05007e29='Caribbean:'
B05007e30='Entered 2010 or later'
B05007e31='Naturalized U.S. citizen'
B05007e32='Not a U.S. citizen'
B05007e33='Entered 2000 to 2009'
B05007e34='Naturalized U.S. citizen'
B05007e35='Not a U.S. citizen'
B05007e36='Entered 1990 to 1999:'
B05007e37='Naturalized U.S. citizen'
B05007e38='Not a U.S. citizen'
B05007e39='Entered before 1990:'
B05007e40='Naturalized U.S. citizen'
B05007e41='Not a U.S. citizen'
B05007e42='Central America:'
B05007e43='Mexico:'
B05007e44='Entered 2010 or later'
B05007e45='Naturalized U.S. citizen'
B05007e46='Not a U.S. citizen'
B05007e47='Entered 2000 to 2009'
B05007e48='Naturalized U.S. citizen'
B05007e49='Not a U.S. citizen'
B05007e50='Entered 1990 to 1999:'
B05007e51='Naturalized U.S. citizen'
B05007e52='Not a U.S. citizen'
B05007e53='Entered before 1990:'
B05007e54='Naturalized U.S. citizen'
B05007e55='Not a U.S. citizen'
B05007e56='Other Central America:'
B05007e57='Entered 2010 or later'
B05007e58='Naturalized U.S. citizen'
B05007e59='Not a U.S. citizen'
B05007e60='Entered 2000 to 2009'
B05007e61='Naturalized U.S. citizen'
B05007e62='Not a U.S. citizen'
B05007e63='Entered 1990 to 1999:'
B05007e64='Naturalized U.S. citizen'
B05007e65='Not a U.S. citizen'
B05007e66='Entered before 1990:'
B05007e67='Naturalized U.S. citizen'
B05007e68='Not a U.S. citizen'
B05007e69='South America:'
B05007e70='Entered 2010 or later'
B05007e71='Naturalized U.S. citizen'
B05007e72='Not a U.S. citizen'
B05007e73='Entered 2000 to 2009'
B05007e74='Naturalized U.S. citizen'
B05007e75='Not a U.S. citizen'
B05007e76='Entered 1990 to 1999:'
B05007e77='Naturalized U.S. citizen'
B05007e78='Not a U.S. citizen'
B05007e79='Entered before 1990:'
B05007e80='Naturalized U.S. citizen'
B05007e81='Not a U.S. citizen'
B05007e82='Other areas:'
B05007e83='Entered 2010 or later'
B05007e84='Naturalized U.S. citizen'
B05007e85='Not a U.S. citizen'
B05007e86='Entered 2000 to 2009'
B05007e87='Naturalized U.S. citizen'
B05007e88='Not a U.S. citizen'
B05007e89='Entered 1990 to 1999:'
B05007e90='Naturalized U.S. citizen'
B05007e91='Not a U.S. citizen'
B05007e92='Entered before 1990:'
B05007e93='Naturalized U.S. citizen'
B05007e94='Not a U.S. citizen'
/*SEX BY PLACE OF BIRTH BY YEAR OF ENTRY FOR THE FOREIGN-BORN POPULATION */
/*Universe:  Foreign-born population */
 
B05008e1='Total:'
B05008e2='Male:'
B05008e3='Europe:'
B05008e4='Entered 2010 or later'
B05008e5='Entered 2000 to 2009'
B05008e6='Entered before 2000'
B05008e7='Asia:'
B05008e8='Entered 2010 or later'
B05008e9='Entered 2000 to 2009'
B05008e10='Entered before 2000'
B05008e11='Latin America:'
B05008e12='Entered 2010 or later'
B05008e13='Entered 2000 to 2009'
B05008e14='Entered before 2000'
B05008e15='Caribbean:'
B05008e16='Entered 2010 or later'
B05008e17='Entered 2000 to 2009'
B05008e18='Entered before 2000'
B05008e19='Central America:'
B05008e20='Mexico:'
B05008e21='Entered 2010 or later'
B05008e22='Entered 2000 to 2009'
B05008e23='Entered before 2000'
B05008e24='Other Central America:'
B05008e25='Entered 2010 or later'
B05008e26='Entered 2000 to 2009'
B05008e27='Entered before 2000'
B05008e28='South America:'
B05008e29='Entered 2010 or later'
B05008e30='Entered 2000 to 2009'
B05008e31='Entered before 2000'
B05008e32='Other areas:'
B05008e33='Entered 2010 or later'
B05008e34='Entered 2000 to 2009'
B05008e35='Entered before 2000'
B05008e36='Female:'
B05008e37='Europe:'
B05008e38='Entered 2010 or later'
B05008e39='Entered 2000 to 2009'
B05008e40='Entered before 2000'
B05008e41='Asia:'
B05008e42='Entered 2010 or later'
B05008e43='Entered 2000 to 2009'
B05008e44='Entered before 2000'
B05008e45='Latin America:'
B05008e46='Entered 2010 or later'
B05008e47='Entered 2000 to 2009'
B05008e48='Entered before 2000'
B05008e49='Caribbean:'
B05008e50='Entered 2010 or later'
B05008e51='Entered 2000 to 2009'
B05008e52='Entered before 2000'
B05008e53='Central America:'
B05008e54='Mexico:'
B05008e55='Entered 2010 or later'
B05008e56='Entered 2000 to 2009'
B05008e57='Entered before 2000'
B05008e58='Other Central America:'
B05008e59='Entered 2010 or later'
B05008e60='Entered 2000 to 2009'
B05008e61='Entered before 2000'
B05008e62='South America:'
B05008e63='Entered 2010 or later'
B05008e64='Entered 2000 to 2009'
B05008e65='Entered before 2000'
B05008e66='Other areas:'
B05008e67='Entered 2010 or later'
B05008e68='Entered 2000 to 2009'
B05008e69='Entered before 2000'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B05006PRe1
B05006PRe2
B05006PRe3
B05006PRe4
B05006PRe5
B05006PRe6
B05006PRe7
B05006PRe8
B05006PRe9
B05006PRe10
B05006PRe11
B05006PRe12
B05006PRe13
B05006PRe14
B05006PRe15
B05006PRe16
B05006PRe17
B05006PRe18
B05006PRe19
B05006PRe20
B05006PRe21
B05006PRe22
B05006PRe23
B05006PRe24
B05006PRe25
B05006PRe26
B05006PRe27
B05006PRe28
B05006PRe29
B05006PRe30
B05006PRe31
B05006PRe32
B05006PRe33
B05006PRe34
B05006PRe35
B05006PRe36
B05006PRe37
B05006PRe38
B05006PRe39
B05006PRe40
B05006PRe41
B05006PRe42
B05006PRe43
B05006PRe44
B05006PRe45
B05006PRe46
 
B05007e1
B05007e2
B05007e3
B05007e4
B05007e5
B05007e6
B05007e7
B05007e8
B05007e9
B05007e10
B05007e11
B05007e12
B05007e13
B05007e14
B05007e15
B05007e16
B05007e17
B05007e18
B05007e19
B05007e20
B05007e21
B05007e22
B05007e23
B05007e24
B05007e25
B05007e26
B05007e27
B05007e28
B05007e29
B05007e30
B05007e31
B05007e32
B05007e33
B05007e34
B05007e35
B05007e36
B05007e37
B05007e38
B05007e39
B05007e40
B05007e41
B05007e42
B05007e43
B05007e44
B05007e45
B05007e46
B05007e47
B05007e48
B05007e49
B05007e50
B05007e51
B05007e52
B05007e53
B05007e54
B05007e55
B05007e56
B05007e57
B05007e58
B05007e59
B05007e60
B05007e61
B05007e62
B05007e63
B05007e64
B05007e65
B05007e66
B05007e67
B05007e68
B05007e69
B05007e70
B05007e71
B05007e72
B05007e73
B05007e74
B05007e75
B05007e76
B05007e77
B05007e78
B05007e79
B05007e80
B05007e81
B05007e82
B05007e83
B05007e84
B05007e85
B05007e86
B05007e87
B05007e88
B05007e89
B05007e90
B05007e91
B05007e92
B05007e93
B05007e94
 
B05008e1
B05008e2
B05008e3
B05008e4
B05008e5
B05008e6
B05008e7
B05008e8
B05008e9
B05008e10
B05008e11
B05008e12
B05008e13
B05008e14
B05008e15
B05008e16
B05008e17
B05008e18
B05008e19
B05008e20
B05008e21
B05008e22
B05008e23
B05008e24
B05008e25
B05008e26
B05008e27
B05008e28
B05008e29
B05008e30
B05008e31
B05008e32
B05008e33
B05008e34
B05008e35
B05008e36
B05008e37
B05008e38
B05008e39
B05008e40
B05008e41
B05008e42
B05008e43
B05008e44
B05008e45
B05008e46
B05008e47
B05008e48
B05008e49
B05008e50
B05008e51
B05008e52
B05008e53
B05008e54
B05008e55
B05008e56
B05008e57
B05008e58
B05008e59
B05008e60
B05008e61
B05008e62
B05008e63
B05008e64
B05008e65
B05008e66
B05008e67
B05008e68
B05008e69
;
RUN;
TITLE2;
