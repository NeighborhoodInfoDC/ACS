TITLE2 "e20115dc0013000";
DATA work.SFe0013dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0013000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*PLACE OF BIRTH BY AGE IN THE UNITED STATES */
/*Universe:  Total population in the United States */
 
B06001e1='Total:'
B06001e2='Under 5 years'
B06001e3='5 to 17 years'
B06001e4='18 to 24 years'
B06001e5='25 to 34 years'
B06001e6='35 to 44 years'
B06001e7='45 to 54 years'
B06001e8='55 to 59 years'
B06001e9='60 and 61 years'
B06001e10='62 to 64 years'
B06001e11='65 to 74 years'
B06001e12='75 years and over'
B06001e13='Born in state of residence:'
B06001e14='Under 5 years'
B06001e15='5 to 17 years'
B06001e16='18 to 24 years'
B06001e17='25 to 34 years'
B06001e18='35 to 44 years'
B06001e19='45 to 54 years'
B06001e20='55 to 59 years'
B06001e21='60 and 61 years'
B06001e22='62 to 64 years'
B06001e23='65 to 74 years'
B06001e24='75 years and over'
B06001e25='Born in other state in the United States:'
B06001e26='Under 5 years'
B06001e27='5 to 17 years'
B06001e28='18 to 24 years'
B06001e29='25 to 34 years'
B06001e30='35 to 44 years'
B06001e31='45 to 54 years'
B06001e32='55 to 59 years'
B06001e33='60 and 61 years'
B06001e34='62 to 64 years'
B06001e35='65 to 74 years'
B06001e36='75 years and over'
B06001e37='Native; born outside the United States:'
B06001e38='Under 5 years'
B06001e39='5 to 17 years'
B06001e40='18 to 24 years'
B06001e41='25 to 34 years'
B06001e42='35 to 44 years'
B06001e43='45 to 54 years'
B06001e44='55 to 59 years'
B06001e45='60 and 61 years'
B06001e46='62 to 64 years'
B06001e47='65 to 74 years'
B06001e48='75 years and over'
B06001e49='Foreign born:'
B06001e50='Under 5 years'
B06001e51='5 to 17 years'
B06001e52='18 to 24 years'
B06001e53='25 to 34 years'
B06001e54='35 to 44 years'
B06001e55='45 to 54 years'
B06001e56='55 to 59 years'
B06001e57='60 and 61 years'
B06001e58='62 to 64 years'
B06001e59='65 to 74 years'
B06001e60='75 years and over'
 
/*PLACE OF BIRTH BY AGE IN PUERTO RICO */
/*Universe:  Total population in Puerto Rico */
 
B06001PRe1='Total:'
B06001PRe2='Under 5 years'
B06001PRe3='5 to 17 years'
B06001PRe4='18 to 24 years'
B06001PRe5='25 to 34 years'
B06001PRe6='35 to 44 years'
B06001PRe7='45 to 54 years'
B06001PRe8='55 to 59 years'
B06001PRe9='60 and 61 years'
B06001PRe10='62 to 64 years'
B06001PRe11='65 to 74 years'
B06001PRe12='75 years and over'
B06001PRe13='Born in Puerto Rico:'
B06001PRe14='Under 5 years'
B06001PRe15='5 to 17 years'
B06001PRe16='18 to 24 years'
B06001PRe17='25 to 34 years'
B06001PRe18='35 to 44 years'
B06001PRe19='45 to 54 years'
B06001PRe20='55 to 59 years'
B06001PRe21='60 and 61 years'
B06001PRe22='62 to 64 years'
B06001PRe23='65 to 74 years'
B06001PRe24='75 years and over'
B06001PRe25='Born in the United States:'
B06001PRe26='Under 5 years'
B06001PRe27='5 to 17 years'
B06001PRe28='18 to 24 years'
B06001PRe29='25 to 34 years'
B06001PRe30='35 to 44 years'
B06001PRe31='45 to 54 years'
B06001PRe32='55 to 59 years'
B06001PRe33='60 and 61 years'
B06001PRe34='62 to 64 years'
B06001PRe35='65 to 74 years'
B06001PRe36='75 years and over'
B06001PRe37='Native; born elsewhere:'
B06001PRe38='Under 5 years'
B06001PRe39='5 to 17 years'
B06001PRe40='18 to 24 years'
B06001PRe41='25 to 34 years'
B06001PRe42='35 to 44 years'
B06001PRe43='45 to 54 years'
B06001PRe44='55 to 59 years'
B06001PRe45='60 and 61 years'
B06001PRe46='62 to 64 years'
B06001PRe47='65 to 74 years'
B06001PRe48='75 years and over'
B06001PRe49='Foreign born:'
B06001PRe50='Under 5 years'
B06001PRe51='5 to 17 years'
B06001PRe52='18 to 24 years'
B06001PRe53='25 to 34 years'
B06001PRe54='35 to 44 years'
B06001PRe55='45 to 54 years'
B06001PRe56='55 to 59 years'
B06001PRe57='60 and 61 years'
B06001PRe58='62 to 64 years'
B06001PRe59='65 to 74 years'
B06001PRe60='75 years and over'
 
/*MEDIAN AGE BY PLACE OF BIRTH IN THE UNITED STATES */
/*Universe:  Total population in the United States */
/*Median age -- */
 
B06002e1='Total:'
B06002e2='Born in state of residence'
B06002e3='Born in other state of the United States'
B06002e4='Native; born outside the United States'
B06002e5='Foreign born'
 
/*MEDIAN AGE BY PLACE OF BIRTH IN PUERTO RICO */
/*Universe:  Total population in Puerto Rico */
/*Median age -- */
 
B06002PRe1='Total:'
B06002PRe2='Born in Puerto Rico'
B06002PRe3='Born in the United States'
B06002PRe4='Native; born elsewhere'
B06002PRe5='Foreign born'
 
/*PLACE OF BIRTH BY SEX IN THE UNITED STATES */
/*Universe:  Total population in the United States */
 
B06003e1='Total:'
B06003e2='Male'
B06003e3='Female'
B06003e4='Born in state of residence:'
B06003e5='Male'
B06003e6='Female'
B06003e7='Born in other state in the United States:'
B06003e8='Male'
B06003e9='Female'
B06003e10='Native; born outside the United States:'
B06003e11='Male'
B06003e12='Female'
B06003e13='Foreign born:'
B06003e14='Male'
B06003e15='Female'
 
/*PLACE OF BIRTH BY SEX IN PUERTO RICO */
/*Universe:  Total population in Puerto Rico */
 
B06003PRe1='Total:'
B06003PRe2='Male'
B06003PRe3='Female'
B06003PRe4='Born in Puerto Rico:'
B06003PRe5='Male'
B06003PRe6='Female'
B06003PRe7='Born in the United States:'
B06003PRe8='Male'
B06003PRe9='Female'
B06003PRe10='Native; born elsewhere:'
B06003PRe11='Male'
B06003PRe12='Female'
B06003PRe13='Foreign born:'
B06003PRe14='Male'
B06003PRe15='Female'
 
/*PLACE OF BIRTH (WHITE ALONE) IN THE UNITED STATES */
/*Universe:  White alone population in the United States */
 
B06004Ae1='Total:'
B06004Ae2='Born in state of residence'
B06004Ae3='Born in other state in the United States'
B06004Ae4='Native; born outside the United States'
B06004Ae5='Foreign born'
 
/*PLACE OF BIRTH (WHITE ALONE) IN PUERTO RICO */
/*Universe:  White alone population in Puerto Rico */
 
B06004APRe1='Total:'
B06004APRe2='Born in Puerto Rico'
B06004APRe3='Born in the United States'
B06004APRe4='Native; born elsewhere'
B06004APRe5='Foreign born'
 
/*PLACE OF BIRTH (BLACK OR AFRICAN AMERICAN ALONE) IN THE UNITED STATES */
/*Universe:  Black or African American alone population in the United States */
 
B06004Be1='Total:'
B06004Be2='Born in state of residence'
B06004Be3='Born in other state in the United States'
B06004Be4='Native; born outside the United States'
B06004Be5='Foreign born'
 
/*PLACE OF BIRTH (BLACK OR AFRICAN AMERICAN ALONE) IN PUERTO RICO */
/*Universe:  Black or African American alone population in Puerto Rico */
 
B06004BPRe1='Total:'
B06004BPRe2='Born in Puerto Rico'
B06004BPRe3='Born in the United States'
B06004BPRe4='Native; born elsewhere'
B06004BPRe5='Foreign born'
 
/*PLACE OF BIRTH (AMERICAN INDIAN AND ALASKA NATIVE ALONE) IN THE UNITED STATES */
/*Universe:  American Indian and Alaska Native alone population in the United States */
 
B06004Ce1='Total:'
B06004Ce2='Born in state of residence'
B06004Ce3='Born in other state in the United States'
B06004Ce4='Native; born outside the United States'
B06004Ce5='Foreign born'
 
/*PLACE OF BIRTH (AMERICAN INDIAN AND ALASKA NATIVE ALONE) IN PUERTO RICO */
/*Universe:  American Indian and Alaska Native alone population in Puerto Rico */
 
B06004CPRe1='Total:'
B06004CPRe2='Born in Puerto Rico'
B06004CPRe3='Born in the United States'
B06004CPRe4='Native; born elsewhere'
B06004CPRe5='Foreign born'
 
/*PLACE OF BIRTH (ASIAN ALONE) IN THE UNITED STATES */
/*Universe:  Asian alone population in the United States */
 
B06004De1='Total:'
B06004De2='Born in state of residence'
B06004De3='Born in other state in the United States'
B06004De4='Native; born outside the United States'
B06004De5='Foreign born'
 
/*PLACE OF BIRTH (ASIAN ALONE) IN PUERTO RICO */
/*Universe:  Asian alone population in Puerto Rico */
 
B06004DPRe1='Total:'
B06004DPRe2='Born in Puerto Rico'
B06004DPRe3='Born in the United States'
B06004DPRe4='Native; born elsewhere'
B06004DPRe5='Foreign born'
 
/*PLACE OF BIRTH (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) IN THE UNITED STATES */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population in the United States */
 
B06004Ee1='Total:'
B06004Ee2='Born in state of residence'
B06004Ee3='Born in other state in the United States'
B06004Ee4='Native; born outside the United States'
B06004Ee5='Foreign born'
 
/*PLACE OF BIRTH (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) IN PUERTO RICO */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population in Puerto Rico */
 
B06004EPRe1='Total:'
B06004EPRe2='Born in Puerto Rico'
B06004EPRe3='Born in the United States'
B06004EPRe4='Native; born elsewhere'
B06004EPRe5='Foreign born'
 
/*PLACE OF BIRTH (SOME OTHER RACE ALONE) IN THE UNITED STATES */
/*Universe:  Some other race alone population in the United States */
 
B06004Fe1='Total:'
B06004Fe2='Born in state of residence'
B06004Fe3='Born in other state in the United States'
B06004Fe4='Native; born outside the United States'
B06004Fe5='Foreign born'
 
/*PLACE OF BIRTH (SOME OTHER RACE ALONE) IN PUERTO RICO */
/*Universe:  Some other race population in Puerto Rico */
 
B06004FPRe1='Total:'
B06004FPRe2='Born in Puerto Rico'
B06004FPRe3='Born in the United States'
B06004FPRe4='Native; born elsewhere'
B06004FPRe5='Foreign born'
 
/*PLACE OF BIRTH (TWO OR MORE RACES) IN THE UNITED STATES */
/*Universe:  Two or more races population in the United States */
 
B06004Ge1='Total:'
B06004Ge2='Born in state of residence'
B06004Ge3='Born in other state in the United States'
B06004Ge4='Native; born outside the United States'
B06004Ge5='Foreign born'
 
/*PLACE OF BIRTH (TWO OR MORE RACES) IN PUERTO RICO */
/*Universe:  Two or more races population in Puerto Rico */
 
B06004GPRe1='Total:'
B06004GPRe2='Born in Puerto Rico'
B06004GPRe3='Born in the United States'
B06004GPRe4='Native; born elsewhere'
B06004GPRe5='Foreign born'
 
/*PLACE OF BIRTH (WHITE ALONE, NOT HISPANIC OR LATINO) IN THE UNITED STATES */
/*Universe:  White alone, not Hispanic or Latino population in the United States */
 
B06004He1='Total:'
B06004He2='Born in state of residence'
B06004He3='Born in other state in the United States'
B06004He4='Native; born outside the United States'
B06004He5='Foreign born'
 
/*PLACE OF BIRTH (WHITE ALONE, NOT HISPANIC OR LATINO) IN PUERTO RICO */
/*Universe:  White alone, not Hispanic or Latino population in Puerto Rico */
 
B06004HPRe1='Total:'
B06004HPRe2='Born in Puerto Rico'
B06004HPRe3='Born in the United States'
B06004HPRe4='Native; born elsewhere'
B06004HPRe5='Foreign born'
 
/*PLACE OF BIRTH (HISPANIC OR LATINO) IN THE UNITED STATES */
/*Universe:  Hispanic or Latino population in the United States */
 
B06004Ie1='Total:'
B06004Ie2='Born in state of residence'
B06004Ie3='Born in other state in the United States'
B06004Ie4='Native; born outside the United States'
B06004Ie5='Foreign born'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B06001e1
B06001e2
B06001e3
B06001e4
B06001e5
B06001e6
B06001e7
B06001e8
B06001e9
B06001e10
B06001e11
B06001e12
B06001e13
B06001e14
B06001e15
B06001e16
B06001e17
B06001e18
B06001e19
B06001e20
B06001e21
B06001e22
B06001e23
B06001e24
B06001e25
B06001e26
B06001e27
B06001e28
B06001e29
B06001e30
B06001e31
B06001e32
B06001e33
B06001e34
B06001e35
B06001e36
B06001e37
B06001e38
B06001e39
B06001e40
B06001e41
B06001e42
B06001e43
B06001e44
B06001e45
B06001e46
B06001e47
B06001e48
B06001e49
B06001e50
B06001e51
B06001e52
B06001e53
B06001e54
B06001e55
B06001e56
B06001e57
B06001e58
B06001e59
B06001e60
 
B06001PRe1
B06001PRe2
B06001PRe3
B06001PRe4
B06001PRe5
B06001PRe6
B06001PRe7
B06001PRe8
B06001PRe9
B06001PRe10
B06001PRe11
B06001PRe12
B06001PRe13
B06001PRe14
B06001PRe15
B06001PRe16
B06001PRe17
B06001PRe18
B06001PRe19
B06001PRe20
B06001PRe21
B06001PRe22
B06001PRe23
B06001PRe24
B06001PRe25
B06001PRe26
B06001PRe27
B06001PRe28
B06001PRe29
B06001PRe30
B06001PRe31
B06001PRe32
B06001PRe33
B06001PRe34
B06001PRe35
B06001PRe36
B06001PRe37
B06001PRe38
B06001PRe39
B06001PRe40
B06001PRe41
B06001PRe42
B06001PRe43
B06001PRe44
B06001PRe45
B06001PRe46
B06001PRe47
B06001PRe48
B06001PRe49
B06001PRe50
B06001PRe51
B06001PRe52
B06001PRe53
B06001PRe54
B06001PRe55
B06001PRe56
B06001PRe57
B06001PRe58
B06001PRe59
B06001PRe60
 
B06002e1
B06002e2
B06002e3
B06002e4
B06002e5
 
B06002PRe1
B06002PRe2
B06002PRe3
B06002PRe4
B06002PRe5
 
B06003e1
B06003e2
B06003e3
B06003e4
B06003e5
B06003e6
B06003e7
B06003e8
B06003e9
B06003e10
B06003e11
B06003e12
B06003e13
B06003e14
B06003e15
 
B06003PRe1
B06003PRe2
B06003PRe3
B06003PRe4
B06003PRe5
B06003PRe6
B06003PRe7
B06003PRe8
B06003PRe9
B06003PRe10
B06003PRe11
B06003PRe12
B06003PRe13
B06003PRe14
B06003PRe15
 
B06004Ae1
B06004Ae2
B06004Ae3
B06004Ae4
B06004Ae5
 
B06004APRe1
B06004APRe2
B06004APRe3
B06004APRe4
B06004APRe5
 
B06004Be1
B06004Be2
B06004Be3
B06004Be4
B06004Be5
 
B06004BPRe1
B06004BPRe2
B06004BPRe3
B06004BPRe4
B06004BPRe5
 
B06004Ce1
B06004Ce2
B06004Ce3
B06004Ce4
B06004Ce5
 
B06004CPRe1
B06004CPRe2
B06004CPRe3
B06004CPRe4
B06004CPRe5
 
B06004De1
B06004De2
B06004De3
B06004De4
B06004De5
 
B06004DPRe1
B06004DPRe2
B06004DPRe3
B06004DPRe4
B06004DPRe5
 
B06004Ee1
B06004Ee2
B06004Ee3
B06004Ee4
B06004Ee5
 
B06004EPRe1
B06004EPRe2
B06004EPRe3
B06004EPRe4
B06004EPRe5
 
B06004Fe1
B06004Fe2
B06004Fe3
B06004Fe4
B06004Fe5
 
B06004FPRe1
B06004FPRe2
B06004FPRe3
B06004FPRe4
B06004FPRe5
 
B06004Ge1
B06004Ge2
B06004Ge3
B06004Ge4
B06004Ge5
 
B06004GPRe1
B06004GPRe2
B06004GPRe3
B06004GPRe4
B06004GPRe5
 
B06004He1
B06004He2
B06004He3
B06004He4
B06004He5
 
B06004HPRe1
B06004HPRe2
B06004HPRe3
B06004HPRe4
B06004HPRe5
 
B06004Ie1
B06004Ie2
B06004Ie3
B06004Ie4
B06004Ie5
;
RUN;
TITLE2;
