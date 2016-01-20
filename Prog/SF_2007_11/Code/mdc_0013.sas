TITLE2 "m20115dc0013000";
DATA work.SFm0013dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0013000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*PLACE OF BIRTH BY AGE IN THE UNITED STATES */
/*Universe:  Total population in the United States */
 
B06001m1='Total:'
B06001m2='Under 5 years'
B06001m3='5 to 17 years'
B06001m4='18 to 24 years'
B06001m5='25 to 34 years'
B06001m6='35 to 44 years'
B06001m7='45 to 54 years'
B06001m8='55 to 59 years'
B06001m9='60 and 61 years'
B06001m10='62 to 64 years'
B06001m11='65 to 74 years'
B06001m12='75 years and over'
B06001m13='Born in state of residence:'
B06001m14='Under 5 years'
B06001m15='5 to 17 years'
B06001m16='18 to 24 years'
B06001m17='25 to 34 years'
B06001m18='35 to 44 years'
B06001m19='45 to 54 years'
B06001m20='55 to 59 years'
B06001m21='60 and 61 years'
B06001m22='62 to 64 years'
B06001m23='65 to 74 years'
B06001m24='75 years and over'
B06001m25='Born in other state in the United States:'
B06001m26='Under 5 years'
B06001m27='5 to 17 years'
B06001m28='18 to 24 years'
B06001m29='25 to 34 years'
B06001m30='35 to 44 years'
B06001m31='45 to 54 years'
B06001m32='55 to 59 years'
B06001m33='60 and 61 years'
B06001m34='62 to 64 years'
B06001m35='65 to 74 years'
B06001m36='75 years and over'
B06001m37='Native; born outside the United States:'
B06001m38='Under 5 years'
B06001m39='5 to 17 years'
B06001m40='18 to 24 years'
B06001m41='25 to 34 years'
B06001m42='35 to 44 years'
B06001m43='45 to 54 years'
B06001m44='55 to 59 years'
B06001m45='60 and 61 years'
B06001m46='62 to 64 years'
B06001m47='65 to 74 years'
B06001m48='75 years and over'
B06001m49='Foreign born:'
B06001m50='Under 5 years'
B06001m51='5 to 17 years'
B06001m52='18 to 24 years'
B06001m53='25 to 34 years'
B06001m54='35 to 44 years'
B06001m55='45 to 54 years'
B06001m56='55 to 59 years'
B06001m57='60 and 61 years'
B06001m58='62 to 64 years'
B06001m59='65 to 74 years'
B06001m60='75 years and over'
 
/*PLACE OF BIRTH BY AGE IN PUERTO RICO */
/*Universe:  Total population in Puerto Rico */
 
B06001PRm1='Total:'
B06001PRm2='Under 5 years'
B06001PRm3='5 to 17 years'
B06001PRm4='18 to 24 years'
B06001PRm5='25 to 34 years'
B06001PRm6='35 to 44 years'
B06001PRm7='45 to 54 years'
B06001PRm8='55 to 59 years'
B06001PRm9='60 and 61 years'
B06001PRm10='62 to 64 years'
B06001PRm11='65 to 74 years'
B06001PRm12='75 years and over'
B06001PRm13='Born in Puerto Rico:'
B06001PRm14='Under 5 years'
B06001PRm15='5 to 17 years'
B06001PRm16='18 to 24 years'
B06001PRm17='25 to 34 years'
B06001PRm18='35 to 44 years'
B06001PRm19='45 to 54 years'
B06001PRm20='55 to 59 years'
B06001PRm21='60 and 61 years'
B06001PRm22='62 to 64 years'
B06001PRm23='65 to 74 years'
B06001PRm24='75 years and over'
B06001PRm25='Born in the United States:'
B06001PRm26='Under 5 years'
B06001PRm27='5 to 17 years'
B06001PRm28='18 to 24 years'
B06001PRm29='25 to 34 years'
B06001PRm30='35 to 44 years'
B06001PRm31='45 to 54 years'
B06001PRm32='55 to 59 years'
B06001PRm33='60 and 61 years'
B06001PRm34='62 to 64 years'
B06001PRm35='65 to 74 years'
B06001PRm36='75 years and over'
B06001PRm37='Native; born elsewhere:'
B06001PRm38='Under 5 years'
B06001PRm39='5 to 17 years'
B06001PRm40='18 to 24 years'
B06001PRm41='25 to 34 years'
B06001PRm42='35 to 44 years'
B06001PRm43='45 to 54 years'
B06001PRm44='55 to 59 years'
B06001PRm45='60 and 61 years'
B06001PRm46='62 to 64 years'
B06001PRm47='65 to 74 years'
B06001PRm48='75 years and over'
B06001PRm49='Foreign born:'
B06001PRm50='Under 5 years'
B06001PRm51='5 to 17 years'
B06001PRm52='18 to 24 years'
B06001PRm53='25 to 34 years'
B06001PRm54='35 to 44 years'
B06001PRm55='45 to 54 years'
B06001PRm56='55 to 59 years'
B06001PRm57='60 and 61 years'
B06001PRm58='62 to 64 years'
B06001PRm59='65 to 74 years'
B06001PRm60='75 years and over'
 
/*MEDIAN AGE BY PLACE OF BIRTH IN THE UNITED STATES */
/*Universe:  Total population in the United States */
/*Median age -- */
 
B06002m1='Total:'
B06002m2='Born in state of residence'
B06002m3='Born in other state of the United States'
B06002m4='Native; born outside the United States'
B06002m5='Foreign born'
 
/*MEDIAN AGE BY PLACE OF BIRTH IN PUERTO RICO */
/*Universe:  Total population in Puerto Rico */
/*Median age -- */
 
B06002PRm1='Total:'
B06002PRm2='Born in Puerto Rico'
B06002PRm3='Born in the United States'
B06002PRm4='Native; born elsewhere'
B06002PRm5='Foreign born'
 
/*PLACE OF BIRTH BY SEX IN THE UNITED STATES */
/*Universe:  Total population in the United States */
 
B06003m1='Total:'
B06003m2='Male'
B06003m3='Female'
B06003m4='Born in state of residence:'
B06003m5='Male'
B06003m6='Female'
B06003m7='Born in other state in the United States:'
B06003m8='Male'
B06003m9='Female'
B06003m10='Native; born outside the United States:'
B06003m11='Male'
B06003m12='Female'
B06003m13='Foreign born:'
B06003m14='Male'
B06003m15='Female'
 
/*PLACE OF BIRTH BY SEX IN PUERTO RICO */
/*Universe:  Total population in Puerto Rico */
 
B06003PRm1='Total:'
B06003PRm2='Male'
B06003PRm3='Female'
B06003PRm4='Born in Puerto Rico:'
B06003PRm5='Male'
B06003PRm6='Female'
B06003PRm7='Born in the United States:'
B06003PRm8='Male'
B06003PRm9='Female'
B06003PRm10='Native; born elsewhere:'
B06003PRm11='Male'
B06003PRm12='Female'
B06003PRm13='Foreign born:'
B06003PRm14='Male'
B06003PRm15='Female'
 
/*PLACE OF BIRTH (WHITE ALONE) IN THE UNITED STATES */
/*Universe:  White alone population in the United States */
 
B06004Am1='Total:'
B06004Am2='Born in state of residence'
B06004Am3='Born in other state in the United States'
B06004Am4='Native; born outside the United States'
B06004Am5='Foreign born'
 
/*PLACE OF BIRTH (WHITE ALONE) IN PUERTO RICO */
/*Universe:  White alone population in Puerto Rico */
 
B06004APRm1='Total:'
B06004APRm2='Born in Puerto Rico'
B06004APRm3='Born in the United States'
B06004APRm4='Native; born elsewhere'
B06004APRm5='Foreign born'
 
/*PLACE OF BIRTH (BLACK OR AFRICAN AMERICAN ALONE) IN THE UNITED STATES */
/*Universe:  Black or African American alone population in the United States */
 
B06004Bm1='Total:'
B06004Bm2='Born in state of residence'
B06004Bm3='Born in other state in the United States'
B06004Bm4='Native; born outside the United States'
B06004Bm5='Foreign born'
 
/*PLACE OF BIRTH (BLACK OR AFRICAN AMERICAN ALONE) IN PUERTO RICO */
/*Universe:  Black or African American alone population in Puerto Rico */
 
B06004BPRm1='Total:'
B06004BPRm2='Born in Puerto Rico'
B06004BPRm3='Born in the United States'
B06004BPRm4='Native; born elsewhere'
B06004BPRm5='Foreign born'
 
/*PLACE OF BIRTH (AMERICAN INDIAN AND ALASKA NATIVE ALONE) IN THE UNITED STATES */
/*Universe:  American Indian and Alaska Native alone population in the United States */
 
B06004Cm1='Total:'
B06004Cm2='Born in state of residence'
B06004Cm3='Born in other state in the United States'
B06004Cm4='Native; born outside the United States'
B06004Cm5='Foreign born'
 
/*PLACE OF BIRTH (AMERICAN INDIAN AND ALASKA NATIVE ALONE) IN PUERTO RICO */
/*Universe:  American Indian and Alaska Native alone population in Puerto Rico */
 
B06004CPRm1='Total:'
B06004CPRm2='Born in Puerto Rico'
B06004CPRm3='Born in the United States'
B06004CPRm4='Native; born elsewhere'
B06004CPRm5='Foreign born'
 
/*PLACE OF BIRTH (ASIAN ALONE) IN THE UNITED STATES */
/*Universe:  Asian alone population in the United States */
 
B06004Dm1='Total:'
B06004Dm2='Born in state of residence'
B06004Dm3='Born in other state in the United States'
B06004Dm4='Native; born outside the United States'
B06004Dm5='Foreign born'
 
/*PLACE OF BIRTH (ASIAN ALONE) IN PUERTO RICO */
/*Universe:  Asian alone population in Puerto Rico */
 
B06004DPRm1='Total:'
B06004DPRm2='Born in Puerto Rico'
B06004DPRm3='Born in the United States'
B06004DPRm4='Native; born elsewhere'
B06004DPRm5='Foreign born'
 
/*PLACE OF BIRTH (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) IN THE UNITED STATES */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population in the United States */
 
B06004Em1='Total:'
B06004Em2='Born in state of residence'
B06004Em3='Born in other state in the United States'
B06004Em4='Native; born outside the United States'
B06004Em5='Foreign born'
 
/*PLACE OF BIRTH (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) IN PUERTO RICO */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population in Puerto Rico */
 
B06004EPRm1='Total:'
B06004EPRm2='Born in Puerto Rico'
B06004EPRm3='Born in the United States'
B06004EPRm4='Native; born elsewhere'
B06004EPRm5='Foreign born'
 
/*PLACE OF BIRTH (SOME OTHER RACE ALONE) IN THE UNITED STATES */
/*Universe:  Some other race alone population in the United States */
 
B06004Fm1='Total:'
B06004Fm2='Born in state of residence'
B06004Fm3='Born in other state in the United States'
B06004Fm4='Native; born outside the United States'
B06004Fm5='Foreign born'
 
/*PLACE OF BIRTH (SOME OTHER RACE ALONE) IN PUERTO RICO */
/*Universe:  Some other race population in Puerto Rico */
 
B06004FPRm1='Total:'
B06004FPRm2='Born in Puerto Rico'
B06004FPRm3='Born in the United States'
B06004FPRm4='Native; born elsewhere'
B06004FPRm5='Foreign born'
 
/*PLACE OF BIRTH (TWO OR MORE RACES) IN THE UNITED STATES */
/*Universe:  Two or more races population in the United States */
 
B06004Gm1='Total:'
B06004Gm2='Born in state of residence'
B06004Gm3='Born in other state in the United States'
B06004Gm4='Native; born outside the United States'
B06004Gm5='Foreign born'
 
/*PLACE OF BIRTH (TWO OR MORE RACES) IN PUERTO RICO */
/*Universe:  Two or more races population in Puerto Rico */
 
B06004GPRm1='Total:'
B06004GPRm2='Born in Puerto Rico'
B06004GPRm3='Born in the United States'
B06004GPRm4='Native; born elsewhere'
B06004GPRm5='Foreign born'
 
/*PLACE OF BIRTH (WHITE ALONE, NOT HISPANIC OR LATINO) IN THE UNITED STATES */
/*Universe:  White alone, not Hispanic or Latino population in the United States */
 
B06004Hm1='Total:'
B06004Hm2='Born in state of residence'
B06004Hm3='Born in other state in the United States'
B06004Hm4='Native; born outside the United States'
B06004Hm5='Foreign born'
 
/*PLACE OF BIRTH (WHITE ALONE, NOT HISPANIC OR LATINO) IN PUERTO RICO */
/*Universe:  White alone, not Hispanic or Latino population in Puerto Rico */
 
B06004HPRm1='Total:'
B06004HPRm2='Born in Puerto Rico'
B06004HPRm3='Born in the United States'
B06004HPRm4='Native; born elsewhere'
B06004HPRm5='Foreign born'
 
/*PLACE OF BIRTH (HISPANIC OR LATINO) IN THE UNITED STATES */
/*Universe:  Hispanic or Latino population in the United States */
 
B06004Im1='Total:'
B06004Im2='Born in state of residence'
B06004Im3='Born in other state in the United States'
B06004Im4='Native; born outside the United States'
B06004Im5='Foreign born'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B06001m1
B06001m2
B06001m3
B06001m4
B06001m5
B06001m6
B06001m7
B06001m8
B06001m9
B06001m10
B06001m11
B06001m12
B06001m13
B06001m14
B06001m15
B06001m16
B06001m17
B06001m18
B06001m19
B06001m20
B06001m21
B06001m22
B06001m23
B06001m24
B06001m25
B06001m26
B06001m27
B06001m28
B06001m29
B06001m30
B06001m31
B06001m32
B06001m33
B06001m34
B06001m35
B06001m36
B06001m37
B06001m38
B06001m39
B06001m40
B06001m41
B06001m42
B06001m43
B06001m44
B06001m45
B06001m46
B06001m47
B06001m48
B06001m49
B06001m50
B06001m51
B06001m52
B06001m53
B06001m54
B06001m55
B06001m56
B06001m57
B06001m58
B06001m59
B06001m60
 
B06001PRm1
B06001PRm2
B06001PRm3
B06001PRm4
B06001PRm5
B06001PRm6
B06001PRm7
B06001PRm8
B06001PRm9
B06001PRm10
B06001PRm11
B06001PRm12
B06001PRm13
B06001PRm14
B06001PRm15
B06001PRm16
B06001PRm17
B06001PRm18
B06001PRm19
B06001PRm20
B06001PRm21
B06001PRm22
B06001PRm23
B06001PRm24
B06001PRm25
B06001PRm26
B06001PRm27
B06001PRm28
B06001PRm29
B06001PRm30
B06001PRm31
B06001PRm32
B06001PRm33
B06001PRm34
B06001PRm35
B06001PRm36
B06001PRm37
B06001PRm38
B06001PRm39
B06001PRm40
B06001PRm41
B06001PRm42
B06001PRm43
B06001PRm44
B06001PRm45
B06001PRm46
B06001PRm47
B06001PRm48
B06001PRm49
B06001PRm50
B06001PRm51
B06001PRm52
B06001PRm53
B06001PRm54
B06001PRm55
B06001PRm56
B06001PRm57
B06001PRm58
B06001PRm59
B06001PRm60
 
B06002m1
B06002m2
B06002m3
B06002m4
B06002m5
 
B06002PRm1
B06002PRm2
B06002PRm3
B06002PRm4
B06002PRm5
 
B06003m1
B06003m2
B06003m3
B06003m4
B06003m5
B06003m6
B06003m7
B06003m8
B06003m9
B06003m10
B06003m11
B06003m12
B06003m13
B06003m14
B06003m15
 
B06003PRm1
B06003PRm2
B06003PRm3
B06003PRm4
B06003PRm5
B06003PRm6
B06003PRm7
B06003PRm8
B06003PRm9
B06003PRm10
B06003PRm11
B06003PRm12
B06003PRm13
B06003PRm14
B06003PRm15
 
B06004Am1
B06004Am2
B06004Am3
B06004Am4
B06004Am5
 
B06004APRm1
B06004APRm2
B06004APRm3
B06004APRm4
B06004APRm5
 
B06004Bm1
B06004Bm2
B06004Bm3
B06004Bm4
B06004Bm5
 
B06004BPRm1
B06004BPRm2
B06004BPRm3
B06004BPRm4
B06004BPRm5
 
B06004Cm1
B06004Cm2
B06004Cm3
B06004Cm4
B06004Cm5
 
B06004CPRm1
B06004CPRm2
B06004CPRm3
B06004CPRm4
B06004CPRm5
 
B06004Dm1
B06004Dm2
B06004Dm3
B06004Dm4
B06004Dm5
 
B06004DPRm1
B06004DPRm2
B06004DPRm3
B06004DPRm4
B06004DPRm5
 
B06004Em1
B06004Em2
B06004Em3
B06004Em4
B06004Em5
 
B06004EPRm1
B06004EPRm2
B06004EPRm3
B06004EPRm4
B06004EPRm5
 
B06004Fm1
B06004Fm2
B06004Fm3
B06004Fm4
B06004Fm5
 
B06004FPRm1
B06004FPRm2
B06004FPRm3
B06004FPRm4
B06004FPRm5
 
B06004Gm1
B06004Gm2
B06004Gm3
B06004Gm4
B06004Gm5
 
B06004GPRm1
B06004GPRm2
B06004GPRm3
B06004GPRm4
B06004GPRm5
 
B06004Hm1
B06004Hm2
B06004Hm3
B06004Hm4
B06004Hm5
 
B06004HPRm1
B06004HPRm2
B06004HPRm3
B06004HPRm4
B06004HPRm5
 
B06004Im1
B06004Im2
B06004Im3
B06004Im4
B06004Im5
;
RUN;
TITLE2;
