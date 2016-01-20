TITLE2 "m20125dc0022000";
DATA work.SFm0022dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0022000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY INDIVIDUAL INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Population 15 years and over in the United States */
 
B07410m1='Total living in area 1 year ago:'
B07410m2='No income'
B07410m3='With income:'
B07410m4='$1 to $9,999 or loss'
B07410m5='$10,000 to $14,999'
B07410m6='$15,000 to $24,999'
B07410m7='$25,000 to $34,999'
B07410m8='$35,000 to $49,999'
B07410m9='$50,000 to $64,999'
B07410m10='$65,000 to $74,999'
B07410m11='$75,000 or more'
B07410m12='Same house:'
B07410m13='No income'
B07410m14='With income:'
B07410m15='$1 to $9,999 or loss'
B07410m16='$10,000 to $14,999'
B07410m17='$15,000 to $24,999'
B07410m18='$25,000 to $34,999'
B07410m19='$35,000 to $49,999'
B07410m20='$50,000 to $64,999'
B07410m21='$65,000 to $74,999'
B07410m22='$75,000 or more'
B07410m23='Moved within same county:'
B07410m24='No income'
B07410m25='With income:'
B07410m26='$1 to $9,999 or loss'
B07410m27='$10,000 to $14,999'
B07410m28='$15,000 to $24,999'
B07410m29='$25,000 to $34,999'
B07410m30='$35,000 to $49,999'
B07410m31='$50,000 to $64,999'
B07410m32='$65,000 to $74,999'
B07410m33='$75,000 or more'
B07410m34='Moved to different county within same state:'
B07410m35='No income'
B07410m36='With income:'
B07410m37='$1 to $9,999 or loss'
B07410m38='$10,000 to $14,999'
B07410m39='$15,000 to $24,999'
B07410m40='$25,000 to $34,999'
B07410m41='$35,000 to $49,999'
B07410m42='$50,000 to $64,999'
B07410m43='$65,000 to $74,999'
B07410m44='$75,000 or more'
B07410m45='Moved to different state:'
B07410m46='No income'
B07410m47='With income:'
B07410m48='$1 to $9,999 or loss'
B07410m49='$10,000 to $14,999'
B07410m50='$15,000 to $24,999'
B07410m51='$25,000 to $34,999'
B07410m52='$35,000 to $49,999'
B07410m53='$50,000 to $64,999'
B07410m54='$65,000 to $74,999'
B07410m55='$75,000 or more'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY INDIVIDUAL INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Population 15 years and over */
 
B07410PRm1='Total living in area 1 year ago:'
B07410PRm2='No income'
B07410PRm3='With income:'
B07410PRm4='$1 to $9,999 or loss'
B07410PRm5='$10,000 to $14,999'
B07410PRm6='$15,000 to $24,999'
B07410PRm7='$25,000 to $34,999'
B07410PRm8='$35,000 to $49,999'
B07410PRm9='$50,000 to $64,999'
B07410PRm10='$65,000 to $74,999'
B07410PRm11='$75,000 or more'
B07410PRm12='Same house:'
B07410PRm13='No income'
B07410PRm14='With income:'
B07410PRm15='$1 to $9,999 or loss'
B07410PRm16='$10,000 to $14,999'
B07410PRm17='$15,000 to $24,999'
B07410PRm18='$25,000 to $34,999'
B07410PRm19='$35,000 to $49,999'
B07410PRm20='$50,000 to $64,999'
B07410PRm21='$65,000 to $74,999'
B07410PRm22='$75,000 or more'
B07410PRm23='Moved within same municipio:'
B07410PRm24='No income'
B07410PRm25='With income:'
B07410PRm26='$1 to $9,999 or loss'
B07410PRm27='$10,000 to $14,999'
B07410PRm28='$15,000 to $24,999'
B07410PRm29='$25,000 to $34,999'
B07410PRm30='$35,000 to $49,999'
B07410PRm31='$50,000 to $64,999'
B07410PRm32='$65,000 to $74,999'
B07410PRm33='$75,000 or more'
B07410PRm34='Moved to different municipio:'
B07410PRm35='No income'
B07410PRm36='With income:'
B07410PRm37='$1 to $9,999 or loss'
B07410PRm38='$10,000 to $14,999'
B07410PRm39='$15,000 to $24,999'
B07410PRm40='$25,000 to $34,999'
B07410PRm41='$35,000 to $49,999'
B07410PRm42='$50,000 to $64,999'
B07410PRm43='$65,000 to $74,999'
B07410PRm44='$75,000 or more'
B07410PRm45='Moved to the United States:'
B07410PRm46='No income'
B07410PRm47='With income:'
B07410PRm48='$1 to $9,999 or loss'
B07410PRm49='$10,000 to $14,999'
B07410PRm50='$15,000 to $24,999'
B07410PRm51='$25,000 to $34,999'
B07410PRm52='$35,000 to $49,999'
B07410PRm53='$50,000 to $64,999'
B07410PRm54='$65,000 to $74,999'
B07410PRm55='$75,000 or more'
/*MEDIAN INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Population 15 years and over in the United States with income */
/*Median income in the past 12 months -- */
 
B07411m1='Total living in area 1 year ago:'
B07411m2='Same house'
B07411m3='Moved within same county'
B07411m4='Moved to different county within same state'
B07411m5='Moved to different state'
/*MEDIAN INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Population 15 years and over with income in the past 12 months */
/*Median income in the past 12 months -- */
 
B07411PRm1='Total living in area 1 year ago:'
B07411PRm2='Same house'
B07411PRm3='Moved within same municipio'
B07411PRm4='Moved to different municipio'
B07411PRm5='Moved to the United States'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY POVERTY STATUS IN THE PAST 12 MONTHS FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Population 1 year and over in the United States for whom poverty status is determined */
 
B07412m1='Total living in area 1 year ago:'
B07412m2='Below 100 percent of the poverty level'
B07412m3='100 to 149 percent of the poverty level'
B07412m4='At or above 150 percent of the poverty level'
B07412m5='Same house:'
B07412m6='Below 100 percent of the poverty level'
B07412m7='100 to 149 percent of the poverty level'
B07412m8='At or above 150 percent of the poverty level'
B07412m9='Moved within same county:'
B07412m10='Below 100 percent of the poverty level'
B07412m11='100 to 149 percent of the poverty level'
B07412m12='At or above 150 percent of the poverty level'
B07412m13='Moved to different county within same state:'
B07412m14='Below 100 percent of the poverty level'
B07412m15='100 to 149 percent of the poverty level'
B07412m16='At or above 150 percent of the poverty level'
B07412m17='Moved to different state:'
B07412m18='Below 100 percent of the poverty level'
B07412m19='100 to 149 percent of the poverty level'
B07412m20='At or above 150 percent of the poverty level'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY POVERTY STATUS IN THE PAST 12 MONTHS FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Population 1 year and over for whom poverty status is determined */
 
B07412PRm1='Total living in area 1 year ago:'
B07412PRm2='Below 100 percent of the poverty level'
B07412PRm3='100 to 149 percent of the poverty level'
B07412PRm4='At or above 150 percent of the poverty level'
B07412PRm5='Same house:'
B07412PRm6='Below 100 percent of the poverty level'
B07412PRm7='100 to 149 percent of the poverty level'
B07412PRm8='At or above 150 percent of the poverty level'
B07412PRm9='Moved within same municipio:'
B07412PRm10='Below 100 percent of the poverty level'
B07412PRm11='100 to 149 percent of the poverty level'
B07412PRm12='At or above 150 percent of the poverty level'
B07412PRm13='Moved to different municipio:'
B07412PRm14='Below 100 percent of the poverty level'
B07412PRm15='100 to 149 percent of the poverty level'
B07412PRm16='At or above 150 percent of the poverty level'
B07412PRm17='Moved to the United States:'
B07412PRm18='Below 100 percent of the poverty level'
B07412PRm19='100 to 149 percent of the poverty level'
B07412PRm20='At or above 150 percent of the poverty level'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY TENURE FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Population 1 year and over in households in the United States */
 
B07413m1='Total living in area 1 year ago:'
B07413m2='Householder lived in owner-occupied housing units'
B07413m3='Householder lived in renter-occupied housing units'
B07413m4='Same house:'
B07413m5='Householder lived in owner-occupied housing units'
B07413m6='Householder lived in renter-occupied housing units'
B07413m7='Moved within same county:'
B07413m8='Householder lived in owner-occupied housing units'
B07413m9='Householder lived in renter-occupied housing units'
B07413m10='Moved to different county within same state:'
B07413m11='Householder lived in owner-occupied housing units'
B07413m12='Householder lived in renter-occupied housing units'
B07413m13='Moved to different state:'
B07413m14='Householder lived in owner-occupied housing units'
B07413m15='Householder lived in renter-occupied housing units'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY TENURE FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Population 1 year and over in households */
 
B07413PRm1='Total living in area 1 year ago:'
B07413PRm2='Householder lived in owner-occupied housing units'
B07413PRm3='Householder lived in renter-occupied housing units'
B07413PRm4='Same house 1 year ago:'
B07413PRm5='Householder lived in owner-occupied housing units'
B07413PRm6='Householder lived in renter-occupied housing units'
B07413PRm7='Moved within same municipio:'
B07413PRm8='Householder lived in owner-occupied housing units'
B07413PRm9='Householder lived in renter-occupied housing units'
B07413PRm10='Moved to different municipio:'
B07413PRm11='Householder lived in owner-occupied housing units'
B07413PRm12='Householder lived in renter-occupied housing units'
B07413PRm13='Moved to the United States:'
B07413PRm14='Householder lived in owner-occupied housing units'
B07413PRm15='Householder lived in renter-occupied housing units'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B07410m1
B07410m2
B07410m3
B07410m4
B07410m5
B07410m6
B07410m7
B07410m8
B07410m9
B07410m10
B07410m11
B07410m12
B07410m13
B07410m14
B07410m15
B07410m16
B07410m17
B07410m18
B07410m19
B07410m20
B07410m21
B07410m22
B07410m23
B07410m24
B07410m25
B07410m26
B07410m27
B07410m28
B07410m29
B07410m30
B07410m31
B07410m32
B07410m33
B07410m34
B07410m35
B07410m36
B07410m37
B07410m38
B07410m39
B07410m40
B07410m41
B07410m42
B07410m43
B07410m44
B07410m45
B07410m46
B07410m47
B07410m48
B07410m49
B07410m50
B07410m51
B07410m52
B07410m53
B07410m54
B07410m55
 
B07410PRm1
B07410PRm2
B07410PRm3
B07410PRm4
B07410PRm5
B07410PRm6
B07410PRm7
B07410PRm8
B07410PRm9
B07410PRm10
B07410PRm11
B07410PRm12
B07410PRm13
B07410PRm14
B07410PRm15
B07410PRm16
B07410PRm17
B07410PRm18
B07410PRm19
B07410PRm20
B07410PRm21
B07410PRm22
B07410PRm23
B07410PRm24
B07410PRm25
B07410PRm26
B07410PRm27
B07410PRm28
B07410PRm29
B07410PRm30
B07410PRm31
B07410PRm32
B07410PRm33
B07410PRm34
B07410PRm35
B07410PRm36
B07410PRm37
B07410PRm38
B07410PRm39
B07410PRm40
B07410PRm41
B07410PRm42
B07410PRm43
B07410PRm44
B07410PRm45
B07410PRm46
B07410PRm47
B07410PRm48
B07410PRm49
B07410PRm50
B07410PRm51
B07410PRm52
B07410PRm53
B07410PRm54
B07410PRm55
 
B07411m1
B07411m2
B07411m3
B07411m4
B07411m5
 
B07411PRm1
B07411PRm2
B07411PRm3
B07411PRm4
B07411PRm5
 
B07412m1
B07412m2
B07412m3
B07412m4
B07412m5
B07412m6
B07412m7
B07412m8
B07412m9
B07412m10
B07412m11
B07412m12
B07412m13
B07412m14
B07412m15
B07412m16
B07412m17
B07412m18
B07412m19
B07412m20
 
B07412PRm1
B07412PRm2
B07412PRm3
B07412PRm4
B07412PRm5
B07412PRm6
B07412PRm7
B07412PRm8
B07412PRm9
B07412PRm10
B07412PRm11
B07412PRm12
B07412PRm13
B07412PRm14
B07412PRm15
B07412PRm16
B07412PRm17
B07412PRm18
B07412PRm19
B07412PRm20
 
B07413m1
B07413m2
B07413m3
B07413m4
B07413m5
B07413m6
B07413m7
B07413m8
B07413m9
B07413m10
B07413m11
B07413m12
B07413m13
B07413m14
B07413m15
 
B07413PRm1
B07413PRm2
B07413PRm3
B07413PRm4
B07413PRm5
B07413PRm6
B07413PRm7
B07413PRm8
B07413PRm9
B07413PRm10
B07413PRm11
B07413PRm12
B07413PRm13
B07413PRm14
B07413PRm15
;
RUN;
TITLE2;
