TITLE2 "e20115dc0004000";
DATA work.SFe0004dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0004000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*RACE */
/*Universe:  Total population */
 
B02001e1='Total:'
B02001e2='White alone'
B02001e3='Black or African American alone'
B02001e4='American Indian and Alaska Native alone'
B02001e5='Asian alone'
B02001e6='Native Hawaiian and Other Pacific Islander alone'
B02001e7='Some other race alone'
B02001e8='Two or more races:'
B02001e9='Two races including Some other race'
B02001e10='Two races excluding Some other race, and three or more races'
 
/*AMERICAN INDIAN AND ALASKA NATIVE ALONE FOR SELECTED TRIBAL GROUPINGS */
/*Universe:  People who are American Indian and Alaska Native alone and people with no tribe reported */
 
B02005e1='Total:'
B02005e2='American Indian tribes, specified:'
B02005e3='Apache'
B02005e4='Blackfeet'
B02005e5='Cherokee'
B02005e6='Cheyenne'
B02005e7='Chickasaw'
B02005e8='Chippewa'
B02005e9='Choctaw'
B02005e10='Colville'
B02005e11='Comanche'
B02005e12='Cree'
B02005e13='Creek'
B02005e14='Crow'
B02005e15='Delaware'
B02005e16='Houma'
B02005e17='Iroquois'
B02005e18='Kiowa'
B02005e19='Lumbee'
B02005e20='Menominee'
B02005e21='Navajo'
B02005e22='Osage'
B02005e23='Ottawa'
B02005e24='Paiute'
B02005e25='Pima'
B02005e26='Potawatomi'
B02005e27='Pueblo'
B02005e28='Puget Sound Salish'
B02005e29='Seminole'
B02005e30='Shoshone'
B02005e31='Sioux'
B02005e32='Tohono O''Odham'
B02005e33='Ute'
B02005e34='Yakama'
B02005e35='Yaqui'
B02005e36='Yuman'
B02005e37='Other American Indian Tribe'
B02005e38='American Indian tribes, not specified'
B02005e39='Alaska Native tribes, specified:'
B02005e40='Alaskan Athabascan'
B02005e41='Aleut'
B02005e42='Inupiat'
B02005e43='Tlingit-Haida'
B02005e44='Other Alaska Native Tribe'
B02005e45='Alaska Native tribes, not specified'
B02005e46='American Indian tribes or Alaska Native tribes, not specified'
 
/*ASIAN ALONE BY SELECTED GROUPS */
/*Universe:  Total Asian alone population */
 
B02006e1='Total:'
B02006e2='Asian Indian'
B02006e3='Bangladeshi'
B02006e4='Cambodian'
B02006e5='Chinese , except Taiwanese'
B02006e6='Filipino'
B02006e7='Hmong'
B02006e8='Indonesian'
B02006e9='Japanese'
B02006e10='Korean'
B02006e11='Laotian'
B02006e12='Malaysian'
B02006e13='Pakistani'
B02006e14='Sri Lankan'
B02006e15='Taiwanese'
B02006e16='Thai'
B02006e17='Vietnamese'
B02006e18='Other Asian'
B02006e19='Other Asian, not specified'
 
/*NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE BY SELECTED GROUPS */
/*Universe:  Total Native Hawaiian and Other Pacific Islander alone population */
 
B02007e1='Total:'
B02007e2='Polynesian:'
B02007e3='Native Hawaiian'
B02007e4='Samoan'
B02007e5='Tongan'
B02007e6='Other Polynesian'
B02007e7='Micronesian:'
B02007e8='Guamanian or Chamorro'
B02007e9='Other Micronesian'
B02007e10='Melanesian :'
B02007e11='Fijian'
B02007e12='Other Melanesian'
B02007e13='Other Pacific Islander'
B02007e14='Other Pacific Islander, not specified (check box only)'
B02007e15='Other Pacific Islander, not specified'
 
/*WHITE ALONE OR IN COMBINATION WITH ONE OR MORE OTHER RACES */
/*Universe:  White alone or in combination with one or more other races */
 
B02008e1='Total:'
 
/*BLACK OR AFRICAN AMERICAN ALONE OR IN COMBINATION WITH ONE OR MORE OTHER RACES */
/*Universe:  Black or African American alone or in combination with one or more other races */
 
B02009e1='Total:'
 
/*AMERICAN INDIAN AND ALASKA NATIVE ALONE OR IN COMBINATION WITH ONE OR MORE OTHER RACES */
/*Universe:  People who are American Indian or Alaska Native alone or in combination with one or more other races */
 
B02010e1='Total:'
 
/*ASIAN ALONE OR IN COMBINATION WITH ONE OR MORE OTHER RACES */
/*Universe:  Asian alone or in combination with one or more other races */
 
B02011e1='Total:'
 
/*NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE OR IN COMBINATION WITH ONE OR MORE OTHER RACES */
/*Universe:  Native Hawaiian and Other Pacific Islander alone or in combination with one or more other races */
 
B02012e1='Total:'
 
/*SOME OTHER RACE ALONE OR IN COMBINATION WITH ONE OR MORE OTHER RACES */
/*Universe:  Some other race alone or in combination with one or more other races */
 
B02013e1='Total:'
 
/*DETAILED RACE */
/*Universe:  Total population */
 
C02003e1='Total:'
C02003e2='Population of one race:'
C02003e3='White'
C02003e4='Black or African American'
C02003e5='American Indian and Alaska Native'
C02003e6='Asian alone'
C02003e7='Native Hawaiian and Other Pacific Islander'
C02003e8='Some other race'
C02003e9='Population of two or more races:'
C02003e10='Two races including Some other race'
C02003e11='Two races excluding Some other race, and three or more races'
C02003e12='Population of two races:'
C02003e13='White; Black or African American'
C02003e14='White; American Indian and Alaska Native'
C02003e15='White; Asian'
C02003e16='Black or African American; American Indian and Alaska Native'
C02003e17='All other two race combinations'
C02003e18='Population of three races'
C02003e19='Population of four or more races'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B02001e1
B02001e2
B02001e3
B02001e4
B02001e5
B02001e6
B02001e7
B02001e8
B02001e9
B02001e10
 
B02005e1
B02005e2
B02005e3
B02005e4
B02005e5
B02005e6
B02005e7
B02005e8
B02005e9
B02005e10
B02005e11
B02005e12
B02005e13
B02005e14
B02005e15
B02005e16
B02005e17
B02005e18
B02005e19
B02005e20
B02005e21
B02005e22
B02005e23
B02005e24
B02005e25
B02005e26
B02005e27
B02005e28
B02005e29
B02005e30
B02005e31
B02005e32
B02005e33
B02005e34
B02005e35
B02005e36
B02005e37
B02005e38
B02005e39
B02005e40
B02005e41
B02005e42
B02005e43
B02005e44
B02005e45
B02005e46
 
B02006e1
B02006e2
B02006e3
B02006e4
B02006e5
B02006e6
B02006e7
B02006e8
B02006e9
B02006e10
B02006e11
B02006e12
B02006e13
B02006e14
B02006e15
B02006e16
B02006e17
B02006e18
B02006e19
 
B02007e1
B02007e2
B02007e3
B02007e4
B02007e5
B02007e6
B02007e7
B02007e8
B02007e9
B02007e10
B02007e11
B02007e12
B02007e13
B02007e14
B02007e15
 
B02008e1
 
B02009e1
 
B02010e1
 
B02011e1
 
B02012e1
 
B02013e1
 
C02003e1
C02003e2
C02003e3
C02003e4
C02003e5
C02003e6
C02003e7
C02003e8
C02003e9
C02003e10
C02003e11
C02003e12
C02003e13
C02003e14
C02003e15
C02003e16
C02003e17
C02003e18
C02003e19
;
RUN;
TITLE2;
