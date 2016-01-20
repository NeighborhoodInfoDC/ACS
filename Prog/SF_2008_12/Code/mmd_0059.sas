TITLE2 "m20125md0059000";
DATA work.SFm0059md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0059000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*AGE OF HOUSEHOLDER BY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Households */
 
B19037m1='Total:'
B19037m2='Householder under 25 years:'
B19037m3='Less than $10,000'
B19037m4='$10,000 to $14,999'
B19037m5='$15,000 to $19,999'
B19037m6='$20,000 to $24,999'
B19037m7='$25,000 to $29,999'
B19037m8='$30,000 to $34,999'
B19037m9='$35,000 to $39,999'
B19037m10='$40,000 to $44,999'
B19037m11='$45,000 to $49,999'
B19037m12='$50,000 to $59,999'
B19037m13='$60,000 to $74,999'
B19037m14='$75,000 to $99,999'
B19037m15='$100,000 to $124,999'
B19037m16='$125,000 to $149,999'
B19037m17='$150,000 to $199,999'
B19037m18='$200,000 or more'
B19037m19='Householder 25 to 44 years:'
B19037m20='Less than $10,000'
B19037m21='$10,000 to $14,999'
B19037m22='$15,000 to $19,999'
B19037m23='$20,000 to $24,999'
B19037m24='$25,000 to $29,999'
B19037m25='$30,000 to $34,999'
B19037m26='$35,000 to $39,999'
B19037m27='$40,000 to $44,999'
B19037m28='$45,000 to $49,999'
B19037m29='$50,000 to $59,999'
B19037m30='$60,000 to $74,999'
B19037m31='$75,000 to $99,999'
B19037m32='$100,000 to $124,999'
B19037m33='$125,000 to $149,999'
B19037m34='$150,000 to $199,999'
B19037m35='$200,000 or more'
B19037m36='Householder 45 to 64 years:'
B19037m37='Less than $10,000'
B19037m38='$10,000 to $14,999'
B19037m39='$15,000 to $19,999'
B19037m40='$20,000 to $24,999'
B19037m41='$25,000 to $29,999'
B19037m42='$30,000 to $34,999'
B19037m43='$35,000 to $39,999'
B19037m44='$40,000 to $44,999'
B19037m45='$45,000 to $49,999'
B19037m46='$50,000 to $59,999'
B19037m47='$60,000 to $74,999'
B19037m48='$75,000 to $99,999'
B19037m49='$100,000 to $124,999'
B19037m50='$125,000 to $149,999'
B19037m51='$150,000 to $199,999'
B19037m52='$200,000 or more'
B19037m53='Householder 65 years and over:'
B19037m54='Less than $10,000'
B19037m55='$10,000 to $14,999'
B19037m56='$15,000 to $19,999'
B19037m57='$20,000 to $24,999'
B19037m58='$25,000 to $29,999'
B19037m59='$30,000 to $34,999'
B19037m60='$35,000 to $39,999'
B19037m61='$40,000 to $44,999'
B19037m62='$45,000 to $49,999'
B19037m63='$50,000 to $59,999'
B19037m64='$60,000 to $74,999'
B19037m65='$75,000 to $99,999'
B19037m66='$100,000 to $124,999'
B19037m67='$125,000 to $149,999'
B19037m68='$150,000 to $199,999'
B19037m69='$200,000 or more'
/*AGE OF HOUSEHOLDER BY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) (WHITE ALONE HOUSEHOLDER) */
/*Universe:  Households with a householder who is White alone */
 
B19037Am1='Total:'
B19037Am2='Householder under 25 years:'
B19037Am3='Less than $10,000'
B19037Am4='$10,000 to $14,999'
B19037Am5='$15,000 to $19,999'
B19037Am6='$20,000 to $24,999'
B19037Am7='$25,000 to $29,999'
B19037Am8='$30,000 to $34,999'
B19037Am9='$35,000 to $39,999'
B19037Am10='$40,000 to $44,999'
B19037Am11='$45,000 to $49,999'
B19037Am12='$50,000 to $59,999'
B19037Am13='$60,000 to $74,999'
B19037Am14='$75,000 to $99,999'
B19037Am15='$100,000 to $124,999'
B19037Am16='$125,000 to $149,999'
B19037Am17='$150,000 to $199,999'
B19037Am18='$200,000 or more'
B19037Am19='Householder 25 to 44 years:'
B19037Am20='Less than $10,000'
B19037Am21='$10,000 to $14,999'
B19037Am22='$15,000 to $19,999'
B19037Am23='$20,000 to $24,999'
B19037Am24='$25,000 to $29,999'
B19037Am25='$30,000 to $34,999'
B19037Am26='$35,000 to $39,999'
B19037Am27='$40,000 to $44,999'
B19037Am28='$45,000 to $49,999'
B19037Am29='$50,000 to $59,999'
B19037Am30='$60,000 to $74,999'
B19037Am31='$75,000 to $99,999'
B19037Am32='$100,000 to $124,999'
B19037Am33='$125,000 to $149,999'
B19037Am34='$150,000 to $199,999'
B19037Am35='$200,000 or more'
B19037Am36='Householder 45 to 64 years:'
B19037Am37='Less than $10,000'
B19037Am38='$10,000 to $14,999'
B19037Am39='$15,000 to $19,999'
B19037Am40='$20,000 to $24,999'
B19037Am41='$25,000 to $29,999'
B19037Am42='$30,000 to $34,999'
B19037Am43='$35,000 to $39,999'
B19037Am44='$40,000 to $44,999'
B19037Am45='$45,000 to $49,999'
B19037Am46='$50,000 to $59,999'
B19037Am47='$60,000 to $74,999'
B19037Am48='$75,000 to $99,999'
B19037Am49='$100,000 to $124,999'
B19037Am50='$125,000 to $149,999'
B19037Am51='$150,000 to $199,999'
B19037Am52='$200,000 or more'
B19037Am53='Householder 65 years and over:'
B19037Am54='Less than $10,000'
B19037Am55='$10,000 to $14,999'
B19037Am56='$15,000 to $19,999'
B19037Am57='$20,000 to $24,999'
B19037Am58='$25,000 to $29,999'
B19037Am59='$30,000 to $34,999'
B19037Am60='$35,000 to $39,999'
B19037Am61='$40,000 to $44,999'
B19037Am62='$45,000 to $49,999'
B19037Am63='$50,000 to $59,999'
B19037Am64='$60,000 to $74,999'
B19037Am65='$75,000 to $99,999'
B19037Am66='$100,000 to $124,999'
B19037Am67='$125,000 to $149,999'
B19037Am68='$150,000 to $199,999'
B19037Am69='$200,000 or more'
/*AGE OF HOUSEHOLDER BY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) (BLACK OR AFRICAN AMERICAN ALONE HOUSEHOLDER) */
/*Universe:  Households with a householder who is Black or African American alone */
 
B19037Bm1='Total:'
B19037Bm2='Householder under 25 years:'
B19037Bm3='Less than $10,000'
B19037Bm4='$10,000 to $14,999'
B19037Bm5='$15,000 to $19,999'
B19037Bm6='$20,000 to $24,999'
B19037Bm7='$25,000 to $29,999'
B19037Bm8='$30,000 to $34,999'
B19037Bm9='$35,000 to $39,999'
B19037Bm10='$40,000 to $44,999'
B19037Bm11='$45,000 to $49,999'
B19037Bm12='$50,000 to $59,999'
B19037Bm13='$60,000 to $74,999'
B19037Bm14='$75,000 to $99,999'
B19037Bm15='$100,000 to $124,999'
B19037Bm16='$125,000 to $149,999'
B19037Bm17='$150,000 to $199,999'
B19037Bm18='$200,000 or more'
B19037Bm19='Householder 25 to 44 years:'
B19037Bm20='Less than $10,000'
B19037Bm21='$10,000 to $14,999'
B19037Bm22='$15,000 to $19,999'
B19037Bm23='$20,000 to $24,999'
B19037Bm24='$25,000 to $29,999'
B19037Bm25='$30,000 to $34,999'
B19037Bm26='$35,000 to $39,999'
B19037Bm27='$40,000 to $44,999'
B19037Bm28='$45,000 to $49,999'
B19037Bm29='$50,000 to $59,999'
B19037Bm30='$60,000 to $74,999'
B19037Bm31='$75,000 to $99,999'
B19037Bm32='$100,000 to $124,999'
B19037Bm33='$125,000 to $149,999'
B19037Bm34='$150,000 to $199,999'
B19037Bm35='$200,000 or more'
B19037Bm36='Householder 45 to 64 years:'
B19037Bm37='Less than $10,000'
B19037Bm38='$10,000 to $14,999'
B19037Bm39='$15,000 to $19,999'
B19037Bm40='$20,000 to $24,999'
B19037Bm41='$25,000 to $29,999'
B19037Bm42='$30,000 to $34,999'
B19037Bm43='$35,000 to $39,999'
B19037Bm44='$40,000 to $44,999'
B19037Bm45='$45,000 to $49,999'
B19037Bm46='$50,000 to $59,999'
B19037Bm47='$60,000 to $74,999'
B19037Bm48='$75,000 to $99,999'
B19037Bm49='$100,000 to $124,999'
B19037Bm50='$125,000 to $149,999'
B19037Bm51='$150,000 to $199,999'
B19037Bm52='$200,000 or more'
B19037Bm53='Householder 65 years and over:'
B19037Bm54='Less than $10,000'
B19037Bm55='$10,000 to $14,999'
B19037Bm56='$15,000 to $19,999'
B19037Bm57='$20,000 to $24,999'
B19037Bm58='$25,000 to $29,999'
B19037Bm59='$30,000 to $34,999'
B19037Bm60='$35,000 to $39,999'
B19037Bm61='$40,000 to $44,999'
B19037Bm62='$45,000 to $49,999'
B19037Bm63='$50,000 to $59,999'
B19037Bm64='$60,000 to $74,999'
B19037Bm65='$75,000 to $99,999'
B19037Bm66='$100,000 to $124,999'
B19037Bm67='$125,000 to $149,999'
B19037Bm68='$150,000 to $199,999'
B19037Bm69='$200,000 or more'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B19037m1
B19037m2
B19037m3
B19037m4
B19037m5
B19037m6
B19037m7
B19037m8
B19037m9
B19037m10
B19037m11
B19037m12
B19037m13
B19037m14
B19037m15
B19037m16
B19037m17
B19037m18
B19037m19
B19037m20
B19037m21
B19037m22
B19037m23
B19037m24
B19037m25
B19037m26
B19037m27
B19037m28
B19037m29
B19037m30
B19037m31
B19037m32
B19037m33
B19037m34
B19037m35
B19037m36
B19037m37
B19037m38
B19037m39
B19037m40
B19037m41
B19037m42
B19037m43
B19037m44
B19037m45
B19037m46
B19037m47
B19037m48
B19037m49
B19037m50
B19037m51
B19037m52
B19037m53
B19037m54
B19037m55
B19037m56
B19037m57
B19037m58
B19037m59
B19037m60
B19037m61
B19037m62
B19037m63
B19037m64
B19037m65
B19037m66
B19037m67
B19037m68
B19037m69
 
B19037Am1
B19037Am2
B19037Am3
B19037Am4
B19037Am5
B19037Am6
B19037Am7
B19037Am8
B19037Am9
B19037Am10
B19037Am11
B19037Am12
B19037Am13
B19037Am14
B19037Am15
B19037Am16
B19037Am17
B19037Am18
B19037Am19
B19037Am20
B19037Am21
B19037Am22
B19037Am23
B19037Am24
B19037Am25
B19037Am26
B19037Am27
B19037Am28
B19037Am29
B19037Am30
B19037Am31
B19037Am32
B19037Am33
B19037Am34
B19037Am35
B19037Am36
B19037Am37
B19037Am38
B19037Am39
B19037Am40
B19037Am41
B19037Am42
B19037Am43
B19037Am44
B19037Am45
B19037Am46
B19037Am47
B19037Am48
B19037Am49
B19037Am50
B19037Am51
B19037Am52
B19037Am53
B19037Am54
B19037Am55
B19037Am56
B19037Am57
B19037Am58
B19037Am59
B19037Am60
B19037Am61
B19037Am62
B19037Am63
B19037Am64
B19037Am65
B19037Am66
B19037Am67
B19037Am68
B19037Am69
 
B19037Bm1
B19037Bm2
B19037Bm3
B19037Bm4
B19037Bm5
B19037Bm6
B19037Bm7
B19037Bm8
B19037Bm9
B19037Bm10
B19037Bm11
B19037Bm12
B19037Bm13
B19037Bm14
B19037Bm15
B19037Bm16
B19037Bm17
B19037Bm18
B19037Bm19
B19037Bm20
B19037Bm21
B19037Bm22
B19037Bm23
B19037Bm24
B19037Bm25
B19037Bm26
B19037Bm27
B19037Bm28
B19037Bm29
B19037Bm30
B19037Bm31
B19037Bm32
B19037Bm33
B19037Bm34
B19037Bm35
B19037Bm36
B19037Bm37
B19037Bm38
B19037Bm39
B19037Bm40
B19037Bm41
B19037Bm42
B19037Bm43
B19037Bm44
B19037Bm45
B19037Bm46
B19037Bm47
B19037Bm48
B19037Bm49
B19037Bm50
B19037Bm51
B19037Bm52
B19037Bm53
B19037Bm54
B19037Bm55
B19037Bm56
B19037Bm57
B19037Bm58
B19037Bm59
B19037Bm60
B19037Bm61
B19037Bm62
B19037Bm63
B19037Bm64
B19037Bm65
B19037Bm66
B19037Bm67
B19037Bm68
B19037Bm69
;
RUN;
TITLE2;
