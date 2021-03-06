TITLE2 "e20115dc0047000";
DATA work.SFe0047dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0047000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*POVERTY STATUS IN THE PAST 12 MONTHS BY SEX BY AGE */
/*Universe:  Population for whom poverty status is determined */
 
B17001e1='Total:'
B17001e2='Income in the past 12 months below poverty level:'
B17001e3='Male:'
B17001e4='Under 5 years'
B17001e5='5 years'
B17001e6='6 to 11 years'
B17001e7='12 to 14 years'
B17001e8='15 years'
B17001e9='16 and 17 years'
B17001e10='18 to 24 years'
B17001e11='25 to 34 years'
B17001e12='35 to 44 years'
B17001e13='45 to 54 years'
B17001e14='55 to 64 years'
B17001e15='65 to 74 years'
B17001e16='75 years and over'
B17001e17='Female:'
B17001e18='Under 5 years'
B17001e19='5 years'
B17001e20='6 to 11 years'
B17001e21='12 to 14 years'
B17001e22='15 years'
B17001e23='16 and 17 years'
B17001e24='18 to 24 years'
B17001e25='25 to 34 years'
B17001e26='35 to 44 years'
B17001e27='45 to 54 years'
B17001e28='55 to 64 years'
B17001e29='65 to 74 years'
B17001e30='75 years and over'
B17001e31='Income in the past 12 months at or above poverty level:'
B17001e32='Male:'
B17001e33='Under 5 years'
B17001e34='5 years'
B17001e35='6 to 11 years'
B17001e36='12 to 14 years'
B17001e37='15 years'
B17001e38='16 and 17 years'
B17001e39='18 to 24 years'
B17001e40='25 to 34 years'
B17001e41='35 to 44 years'
B17001e42='45 to 54 years'
B17001e43='55 to 64 years'
B17001e44='65 to 74 years'
B17001e45='75 years and over'
B17001e46='Female:'
B17001e47='Under 5 years'
B17001e48='5 years'
B17001e49='6 to 11 years'
B17001e50='12 to 14 years'
B17001e51='15 years'
B17001e52='16 and 17 years'
B17001e53='18 to 24 years'
B17001e54='25 to 34 years'
B17001e55='35 to 44 years'
B17001e56='45 to 54 years'
B17001e57='55 to 64 years'
B17001e58='65 to 74 years'
B17001e59='75 years and over'
 
/*POVERTY STATUS IN THE PAST 12 MONTHS BY SEX BY AGE (WHITE ALONE) */
/*Universe:  White alone population for whom poverty status is determined */
 
B17001Ae1='Total:'
B17001Ae2='Income in the past 12 months below poverty level:'
B17001Ae3='Male:'
B17001Ae4='Under 5 years'
B17001Ae5='5 years'
B17001Ae6='6 to 11 years'
B17001Ae7='12 to 14 years'
B17001Ae8='15 years'
B17001Ae9='16 and 17 years'
B17001Ae10='18 to 24 years'
B17001Ae11='25 to 34 years'
B17001Ae12='35 to 44 years'
B17001Ae13='45 to 54 years'
B17001Ae14='55 to 64 years'
B17001Ae15='65 to 74 years'
B17001Ae16='75 years and over'
B17001Ae17='Female:'
B17001Ae18='Under 5 years'
B17001Ae19='5 years'
B17001Ae20='6 to 11 years'
B17001Ae21='12 to 14 years'
B17001Ae22='15 years'
B17001Ae23='16 and 17 years'
B17001Ae24='18 to 24 years'
B17001Ae25='25 to 34 years'
B17001Ae26='35 to 44 years'
B17001Ae27='45 to 54 years'
B17001Ae28='55 to 64 years'
B17001Ae29='65 to 74 years'
B17001Ae30='75 years and over'
B17001Ae31='Income in the past 12 months at or above poverty level:'
B17001Ae32='Male:'
B17001Ae33='Under 5 years'
B17001Ae34='5 years'
B17001Ae35='6 to 11 years'
B17001Ae36='12 to 14 years'
B17001Ae37='15 years'
B17001Ae38='16 and 17 years'
B17001Ae39='18 to 24 years'
B17001Ae40='25 to 34 years'
B17001Ae41='35 to 44 years'
B17001Ae42='45 to 54 years'
B17001Ae43='55 to 64 years'
B17001Ae44='65 to 74 years'
B17001Ae45='75 years and over'
B17001Ae46='Female:'
B17001Ae47='Under 5 years'
B17001Ae48='5 years'
B17001Ae49='6 to 11 years'
B17001Ae50='12 to 14 years'
B17001Ae51='15 years'
B17001Ae52='16 and 17 years'
B17001Ae53='18 to 24 years'
B17001Ae54='25 to 34 years'
B17001Ae55='35 to 44 years'
B17001Ae56='45 to 54 years'
B17001Ae57='55 to 64 years'
B17001Ae58='65 to 74 years'
B17001Ae59='75 years and over'
 
/*POVERTY STATUS IN THE PAST 12 MONTHS BY SEX BY AGE (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone population for whom poverty status is determined */
 
B17001Be1='Total:'
B17001Be2='Income in the past 12 months below poverty level:'
B17001Be3='Male:'
B17001Be4='Under 5 years'
B17001Be5='5 years'
B17001Be6='6 to 11 years'
B17001Be7='12 to 14 years'
B17001Be8='15 years'
B17001Be9='16 and 17 years'
B17001Be10='18 to 24 years'
B17001Be11='25 to 34 years'
B17001Be12='35 to 44 years'
B17001Be13='45 to 54 years'
B17001Be14='55 to 64 years'
B17001Be15='65 to 74 years'
B17001Be16='75 years and over'
B17001Be17='Female:'
B17001Be18='Under 5 years'
B17001Be19='5 years'
B17001Be20='6 to 11 years'
B17001Be21='12 to 14 years'
B17001Be22='15 years'
B17001Be23='16 and 17 years'
B17001Be24='18 to 24 years'
B17001Be25='25 to 34 years'
B17001Be26='35 to 44 years'
B17001Be27='45 to 54 years'
B17001Be28='55 to 64 years'
B17001Be29='65 to 74 years'
B17001Be30='75 years and over'
B17001Be31='Income in the past 12 months at or above poverty level:'
B17001Be32='Male:'
B17001Be33='Under 5 years'
B17001Be34='5 years'
B17001Be35='6 to 11 years'
B17001Be36='12 to 14 years'
B17001Be37='15 years'
B17001Be38='16 and 17 years'
B17001Be39='18 to 24 years'
B17001Be40='25 to 34 years'
B17001Be41='35 to 44 years'
B17001Be42='45 to 54 years'
B17001Be43='55 to 64 years'
B17001Be44='65 to 74 years'
B17001Be45='75 years and over'
B17001Be46='Female:'
B17001Be47='Under 5 years'
B17001Be48='5 years'
B17001Be49='6 to 11 years'
B17001Be50='12 to 14 years'
B17001Be51='15 years'
B17001Be52='16 and 17 years'
B17001Be53='18 to 24 years'
B17001Be54='25 to 34 years'
B17001Be55='35 to 44 years'
B17001Be56='45 to 54 years'
B17001Be57='55 to 64 years'
B17001Be58='65 to 74 years'
B17001Be59='75 years and over'
 
/*POVERTY STATUS IN THE PAST 12 MONTHS BY SEX BY AGE (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone population for whom poverty status is determined */
 
B17001Ce1='Total:'
B17001Ce2='Income in the past 12 months below poverty level:'
B17001Ce3='Male:'
B17001Ce4='Under 5 years'
B17001Ce5='5 years'
B17001Ce6='6 to 11 years'
B17001Ce7='12 to 14 years'
B17001Ce8='15 years'
B17001Ce9='16 and 17 years'
B17001Ce10='18 to 24 years'
B17001Ce11='25 to 34 years'
B17001Ce12='35 to 44 years'
B17001Ce13='45 to 54 years'
B17001Ce14='55 to 64 years'
B17001Ce15='65 to 74 years'
B17001Ce16='75 years and over'
B17001Ce17='Female:'
B17001Ce18='Under 5 years'
B17001Ce19='5 years'
B17001Ce20='6 to 11 years'
B17001Ce21='12 to 14 years'
B17001Ce22='15 years'
B17001Ce23='16 and 17 years'
B17001Ce24='18 to 24 years'
B17001Ce25='25 to 34 years'
B17001Ce26='35 to 44 years'
B17001Ce27='45 to 54 years'
B17001Ce28='55 to 64 years'
B17001Ce29='65 to 74 years'
B17001Ce30='75 years and over'
B17001Ce31='Income in the past 12 months at or above poverty level:'
B17001Ce32='Male:'
B17001Ce33='Under 5 years'
B17001Ce34='5 years'
B17001Ce35='6 to 11 years'
B17001Ce36='12 to 14 years'
B17001Ce37='15 years'
B17001Ce38='16 and 17 years'
B17001Ce39='18 to 24 years'
B17001Ce40='25 to 34 years'
B17001Ce41='35 to 44 years'
B17001Ce42='45 to 54 years'
B17001Ce43='55 to 64 years'
B17001Ce44='65 to 74 years'
B17001Ce45='75 years and over'
B17001Ce46='Female:'
B17001Ce47='Under 5 years'
B17001Ce48='5 years'
B17001Ce49='6 to 11 years'
B17001Ce50='12 to 14 years'
B17001Ce51='15 years'
B17001Ce52='16 and 17 years'
B17001Ce53='18 to 24 years'
B17001Ce54='25 to 34 years'
B17001Ce55='35 to 44 years'
B17001Ce56='45 to 54 years'
B17001Ce57='55 to 64 years'
B17001Ce58='65 to 74 years'
B17001Ce59='75 years and over'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B17001e1
B17001e2
B17001e3
B17001e4
B17001e5
B17001e6
B17001e7
B17001e8
B17001e9
B17001e10
B17001e11
B17001e12
B17001e13
B17001e14
B17001e15
B17001e16
B17001e17
B17001e18
B17001e19
B17001e20
B17001e21
B17001e22
B17001e23
B17001e24
B17001e25
B17001e26
B17001e27
B17001e28
B17001e29
B17001e30
B17001e31
B17001e32
B17001e33
B17001e34
B17001e35
B17001e36
B17001e37
B17001e38
B17001e39
B17001e40
B17001e41
B17001e42
B17001e43
B17001e44
B17001e45
B17001e46
B17001e47
B17001e48
B17001e49
B17001e50
B17001e51
B17001e52
B17001e53
B17001e54
B17001e55
B17001e56
B17001e57
B17001e58
B17001e59
 
B17001Ae1
B17001Ae2
B17001Ae3
B17001Ae4
B17001Ae5
B17001Ae6
B17001Ae7
B17001Ae8
B17001Ae9
B17001Ae10
B17001Ae11
B17001Ae12
B17001Ae13
B17001Ae14
B17001Ae15
B17001Ae16
B17001Ae17
B17001Ae18
B17001Ae19
B17001Ae20
B17001Ae21
B17001Ae22
B17001Ae23
B17001Ae24
B17001Ae25
B17001Ae26
B17001Ae27
B17001Ae28
B17001Ae29
B17001Ae30
B17001Ae31
B17001Ae32
B17001Ae33
B17001Ae34
B17001Ae35
B17001Ae36
B17001Ae37
B17001Ae38
B17001Ae39
B17001Ae40
B17001Ae41
B17001Ae42
B17001Ae43
B17001Ae44
B17001Ae45
B17001Ae46
B17001Ae47
B17001Ae48
B17001Ae49
B17001Ae50
B17001Ae51
B17001Ae52
B17001Ae53
B17001Ae54
B17001Ae55
B17001Ae56
B17001Ae57
B17001Ae58
B17001Ae59
 
B17001Be1
B17001Be2
B17001Be3
B17001Be4
B17001Be5
B17001Be6
B17001Be7
B17001Be8
B17001Be9
B17001Be10
B17001Be11
B17001Be12
B17001Be13
B17001Be14
B17001Be15
B17001Be16
B17001Be17
B17001Be18
B17001Be19
B17001Be20
B17001Be21
B17001Be22
B17001Be23
B17001Be24
B17001Be25
B17001Be26
B17001Be27
B17001Be28
B17001Be29
B17001Be30
B17001Be31
B17001Be32
B17001Be33
B17001Be34
B17001Be35
B17001Be36
B17001Be37
B17001Be38
B17001Be39
B17001Be40
B17001Be41
B17001Be42
B17001Be43
B17001Be44
B17001Be45
B17001Be46
B17001Be47
B17001Be48
B17001Be49
B17001Be50
B17001Be51
B17001Be52
B17001Be53
B17001Be54
B17001Be55
B17001Be56
B17001Be57
B17001Be58
B17001Be59
 
B17001Ce1
B17001Ce2
B17001Ce3
B17001Ce4
B17001Ce5
B17001Ce6
B17001Ce7
B17001Ce8
B17001Ce9
B17001Ce10
B17001Ce11
B17001Ce12
B17001Ce13
B17001Ce14
B17001Ce15
B17001Ce16
B17001Ce17
B17001Ce18
B17001Ce19
B17001Ce20
B17001Ce21
B17001Ce22
B17001Ce23
B17001Ce24
B17001Ce25
B17001Ce26
B17001Ce27
B17001Ce28
B17001Ce29
B17001Ce30
B17001Ce31
B17001Ce32
B17001Ce33
B17001Ce34
B17001Ce35
B17001Ce36
B17001Ce37
B17001Ce38
B17001Ce39
B17001Ce40
B17001Ce41
B17001Ce42
B17001Ce43
B17001Ce44
B17001Ce45
B17001Ce46
B17001Ce47
B17001Ce48
B17001Ce49
B17001Ce50
B17001Ce51
B17001Ce52
B17001Ce53
B17001Ce54
B17001Ce55
B17001Ce56
B17001Ce57
B17001Ce58
B17001Ce59
;
RUN;
TITLE2;
