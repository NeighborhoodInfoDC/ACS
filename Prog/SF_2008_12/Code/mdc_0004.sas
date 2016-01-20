TITLE2 "m20125dc0004000";
DATA work.SFm0004dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0004000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*RACE */
/*Universe:  Total population */
 
B02001m1='Total:'
B02001m2='White alone'
B02001m3='Black or African American alone'
B02001m4='American Indian and Alaska Native alone'
B02001m5='Asian alone'
B02001m6='Native Hawaiian and Other Pacific Islander alone'
B02001m7='Some other race alone'
B02001m8='Two or more races:'
B02001m9='Two races including Some other race'
B02001m10='Two races excluding Some other race, and three or more races'
/*AMERICAN INDIAN AND ALASKA NATIVE ALONE FOR SELECTED TRIBAL GROUPINGS */
/*Universe:  People who are American Indian and Alaska Native alone and people with no tribe reported */
 
B02005m1='Total:'
B02005m2='American Indian tribes, specified:'
B02005m3='Apache'
B02005m4='Blackfeet'
B02005m5='Cherokee'
B02005m6='Cheyenne'
B02005m7='Chickasaw'
B02005m8='Chippewa'
B02005m9='Choctaw'
B02005m10='Colville'
B02005m11='Comanche'
B02005m12='Cree'
B02005m13='Creek'
B02005m14='Crow'
B02005m15='Delaware'
B02005m16='Houma'
B02005m17='Iroquois'
B02005m18='Kiowa'
B02005m19='Lumbee'
B02005m20='Menominee'
B02005m21='Navajo'
B02005m22='Osage'
B02005m23='Ottawa'
B02005m24='Paiute'
B02005m25='Pima'
B02005m26='Potawatomi'
B02005m27='Pueblo'
B02005m28='Puget Sound Salish'
B02005m29='Seminole'
B02005m30='Shoshone'
B02005m31='Sioux'
B02005m32='Tohono O''Odham'
B02005m33='Ute'
B02005m34='Yakama'
B02005m35='Yaqui'
B02005m36='Yuman'
B02005m37='Other American Indian Tribe'
B02005m38='American Indian tribes, not specified'
B02005m39='Alaska Native tribes, specified:'
B02005m40='Alaskan Athabascan'
B02005m41='Aleut'
B02005m42='Inupiat'
B02005m43='Tlingit-Haida'
B02005m44='Other Alaska Native Tribe'
B02005m45='Alaska Native tribes, not specified'
B02005m46='American Indian tribes or Alaska Native tribes, not specified'
/*ASIAN ALONE BY SELECTED GROUPS */
/*Universe:  Total Asian alone population */
 
B02006m1='Total:'
B02006m2='Asian Indian'
B02006m3='Bangladeshi'
B02006m4='Cambodian'
B02006m5='Chinese , except Taiwanese'
B02006m6='Filipino'
B02006m7='Hmong'
B02006m8='Indonesian'
B02006m9='Japanese'
B02006m10='Korean'
B02006m11='Laotian'
B02006m12='Malaysian'
B02006m13='Pakistani'
B02006m14='Sri Lankan'
B02006m15='Taiwanese'
B02006m16='Thai'
B02006m17='Vietnamese'
B02006m18='Other Asian'
B02006m19='Other Asian, not specified'
/*NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE BY SELECTED GROUPS */
/*Universe:  Total Native Hawaiian and Other Pacific Islander alone population */
 
B02007m1='Total:'
B02007m2='Polynesian:'
B02007m3='Native Hawaiian'
B02007m4='Samoan'
B02007m5='Tongan'
B02007m6='Other Polynesian'
B02007m7='Micronesian:'
B02007m8='Guamanian or Chamorro'
B02007m9='Other Micronesian'
B02007m10='Melanesian :'
B02007m11='Fijian'
B02007m12='Other Melanesian'
B02007m13='Other Pacific Islander'
B02007m14='Other Pacific Islander, not specified (check box only)'
B02007m15='Other Pacific Islander, not specified'
/*WHITE ALONE OR IN COMBINATION WITH ONE OR MORE OTHER RACES */
/*Universe:  White alone or in combination with one or more other races */
 
B02008m1='Total:'
/*BLACK OR AFRICAN AMERICAN ALONE OR IN COMBINATION WITH ONE OR MORE OTHER RACES */
/*Universe:  Black or African American alone or in combination with one or more other races */
 
B02009m1='Total:'
/*AMERICAN INDIAN AND ALASKA NATIVE ALONE OR IN COMBINATION WITH ONE OR MORE OTHER RACES */
/*Universe:  People who are American Indian or Alaska Native alone or in combination with one or more other races */
 
B02010m1='Total:'
/*ASIAN ALONE OR IN COMBINATION WITH ONE OR MORE OTHER RACES */
/*Universe:  Asian alone or in combination with one or more other races */
 
B02011m1='Total:'
/*NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE OR IN COMBINATION WITH ONE OR MORE OTHER RACES */
/*Universe:  Native Hawaiian and Other Pacific Islander alone or in combination with one or more other races */
 
B02012m1='Total:'
/*SOME OTHER RACE ALONE OR IN COMBINATION WITH ONE OR MORE OTHER RACES */
/*Universe:  Some other race alone or in combination with one or more other races */
 
B02013m1='Total:'
/*DETAILED RACE */
/*Universe:  Total population */
 
C02003m1='Total:'
C02003m2='Population of one race:'
C02003m3='White'
C02003m4='Black or African American'
C02003m5='American Indian and Alaska Native'
C02003m6='Asian alone'
C02003m7='Native Hawaiian and Other Pacific Islander'
C02003m8='Some other race'
C02003m9='Population of two or more races:'
C02003m10='Two races including Some other race'
C02003m11='Two races excluding Some other race, and three or more races'
C02003m12='Population of two races:'
C02003m13='White; Black or African American'
C02003m14='White; American Indian and Alaska Native'
C02003m15='White; Asian'
C02003m16='Black or African American; American Indian and Alaska Native'
C02003m17='All other two race combinations'
C02003m18='Population of three races'
C02003m19='Population of four or more races'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B02001m1
B02001m2
B02001m3
B02001m4
B02001m5
B02001m6
B02001m7
B02001m8
B02001m9
B02001m10
 
B02005m1
B02005m2
B02005m3
B02005m4
B02005m5
B02005m6
B02005m7
B02005m8
B02005m9
B02005m10
B02005m11
B02005m12
B02005m13
B02005m14
B02005m15
B02005m16
B02005m17
B02005m18
B02005m19
B02005m20
B02005m21
B02005m22
B02005m23
B02005m24
B02005m25
B02005m26
B02005m27
B02005m28
B02005m29
B02005m30
B02005m31
B02005m32
B02005m33
B02005m34
B02005m35
B02005m36
B02005m37
B02005m38
B02005m39
B02005m40
B02005m41
B02005m42
B02005m43
B02005m44
B02005m45
B02005m46
 
B02006m1
B02006m2
B02006m3
B02006m4
B02006m5
B02006m6
B02006m7
B02006m8
B02006m9
B02006m10
B02006m11
B02006m12
B02006m13
B02006m14
B02006m15
B02006m16
B02006m17
B02006m18
B02006m19
 
B02007m1
B02007m2
B02007m3
B02007m4
B02007m5
B02007m6
B02007m7
B02007m8
B02007m9
B02007m10
B02007m11
B02007m12
B02007m13
B02007m14
B02007m15
 
B02008m1
 
B02009m1
 
B02010m1
 
B02011m1
 
B02012m1
 
B02013m1
 
C02003m1
C02003m2
C02003m3
C02003m4
C02003m5
C02003m6
C02003m7
C02003m8
C02003m9
C02003m10
C02003m11
C02003m12
C02003m13
C02003m14
C02003m15
C02003m16
C02003m17
C02003m18
C02003m19
;
RUN;
TITLE2;
