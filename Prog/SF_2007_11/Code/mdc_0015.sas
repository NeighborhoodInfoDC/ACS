TITLE2 "m20115dc0015000";
DATA work.SFm0015dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0015000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*PLACE OF BIRTH BY INDIVIDUAL INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) IN THE UNITED STATES */
/*Universe:  Population 15 years and over in the United States */
 
B06010m1='Total:'
B06010m2='No income'
B06010m3='With income:'
B06010m4='$1 to $9,999 or loss'
B06010m5='$10,000 to $14,999'
B06010m6='$15,000 to $24,999'
B06010m7='$25,000 to $34,999'
B06010m8='$35,000 to $49,999'
B06010m9='$50,000 to $64,999'
B06010m10='$65,000 to $74,999'
B06010m11='$75,000 or more'
B06010m12='Born in state of residence:'
B06010m13='No income'
B06010m14='With income:'
B06010m15='$1 to $9,999 or loss'
B06010m16='$10,000 to $14,999'
B06010m17='$15,000 to $24,999'
B06010m18='$25,000 to $34,999'
B06010m19='$35,000 to $49,999'
B06010m20='$50,000 to $64,999'
B06010m21='$65,000 to $74,999'
B06010m22='$75,000 or more'
B06010m23='Born in other state in the United States:'
B06010m24='No income'
B06010m25='With income:'
B06010m26='$1 to $9,999 or loss'
B06010m27='$10,000 to $14,999'
B06010m28='$15,000 to $24,999'
B06010m29='$25,000 to $34,999'
B06010m30='$35,000 to $49,999'
B06010m31='$50,000 to $64,999'
B06010m32='$65,000 to $74,999'
B06010m33='$75,000 or more'
B06010m34='Native; born outside the United States:'
B06010m35='No income'
B06010m36='With income:'
B06010m37='$1 to $9,999 or loss'
B06010m38='$10,000 to $14,999'
B06010m39='$15,000 to $24,999'
B06010m40='$25,000 to $34,999'
B06010m41='$35,000 to $49,999'
B06010m42='$50,000 to $64,999'
B06010m43='$65,000 to $74,999'
B06010m44='$75,000 or more'
B06010m45='Foreign born:'
B06010m46='No income'
B06010m47='With income:'
B06010m48='$1 to $9,999 or loss'
B06010m49='$10,000 to $14,999'
B06010m50='$15,000 to $24,999'
B06010m51='$25,000 to $34,999'
B06010m52='$35,000 to $49,999'
B06010m53='$50,000 to $64,999'
B06010m54='$65,000 to $74,999'
B06010m55='$75,000 or more'
 
/*PLACE OF BIRTH BY INDIVIDUAL INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) IN PUERTO RICO */
/*Universe:  Population 15 years and over in Puerto Rico */
 
B06010PRm1='Total:'
B06010PRm2='No income'
B06010PRm3='With income:'
B06010PRm4='$1 to $9,999 or loss'
B06010PRm5='$10,000 to $14,999'
B06010PRm6='$15,000 to $24,999'
B06010PRm7='$25,000 to $34,999'
B06010PRm8='$35,000 to $49,999'
B06010PRm9='$50,000 to $64,999'
B06010PRm10='$65,000 to $74,999'
B06010PRm11='$75,000 or more'
B06010PRm12='Born in Puerto Rico:'
B06010PRm13='No income'
B06010PRm14='With income:'
B06010PRm15='$1 to $9,999 or loss'
B06010PRm16='$10,000 to $14,999'
B06010PRm17='$15,000 to $24,999'
B06010PRm18='$25,000 to $34,999'
B06010PRm19='$35,000 to $49,999'
B06010PRm20='$50,000 to $64,999'
B06010PRm21='$65,000 to $74,999'
B06010PRm22='$75,000 or more'
B06010PRm23='Born in the United States:'
B06010PRm24='No income'
B06010PRm25='With income:'
B06010PRm26='$1 to $9,999 or loss'
B06010PRm27='$10,000 to $14,999'
B06010PRm28='$15,000 to $24,999'
B06010PRm29='$25,000 to $34,999'
B06010PRm30='$35,000 to $49,999'
B06010PRm31='$50,000 to $64,999'
B06010PRm32='$65,000 to $74,999'
B06010PRm33='$75,000 or more'
B06010PRm34='Native; born elsewhere:'
B06010PRm35='No income'
B06010PRm36='With income:'
B06010PRm37='$1 to $9,999 or loss'
B06010PRm38='$10,000 to $14,999'
B06010PRm39='$15,000 to $24,999'
B06010PRm40='$25,000 to $34,999'
B06010PRm41='$35,000 to $49,999'
B06010PRm42='$50,000 to $64,999'
B06010PRm43='$65,000 to $74,999'
B06010PRm44='$75,000 or more'
B06010PRm45='Foreign born:'
B06010PRm46='No income'
B06010PRm47='With income:'
B06010PRm48='$1 to $9,999 or loss'
B06010PRm49='$10,000 to $14,999'
B06010PRm50='$15,000 to $24,999'
B06010PRm51='$25,000 to $34,999'
B06010PRm52='$35,000 to $49,999'
B06010PRm53='$50,000 to $64,999'
B06010PRm54='$65,000 to $74,999'
B06010PRm55='$75,000 or more'
 
/*MEDIAN INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY PLACE OF BIRTH IN THE UNITED STATES */
/*Universe:  Population 15 years and over in the United States with income */
/*Median income in the past 12 months -- */
 
B06011m1='Total:'
B06011m2='Born in state of residence'
B06011m3='Born in other state of the United States'
B06011m4='Native; born outside the United States'
B06011m5='Foreign born'
 
/*MEDIAN INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY PLACE OF BIRTH IN PUERTO RICO */
/*Universe:  Population 15 years and over in Puerto Rico with income */
/*Median income in the past 12 months -- */
 
B06011PRm1='Total:'
B06011PRm2='Born in Puerto Rico'
B06011PRm3='Born in other state of the United States'
B06011PRm4='Native; born elsewhere'
B06011PRm5='Foreign born'
 
/*PLACE OF BIRTH BY POVERTY STATUS IN THE PAST 12 MONTHS IN THE UNITED STATES */
/*Universe:  Population in the United States for whom poverty status is determined */
 
B06012m1='Total:'
B06012m2='Below 100 percent of the poverty level'
B06012m3='100 to 149 percent of the poverty level'
B06012m4='At or above 150 percent of the poverty level'
B06012m5='Born in state of residence:'
B06012m6='Below 100 percent of the poverty level'
B06012m7='100 to 149 percent of the poverty level'
B06012m8='At or above 150 percent of the poverty level'
B06012m9='Born in other state in the United States:'
B06012m10='Below 100 percent of the poverty level'
B06012m11='100 to 149 percent of the poverty level'
B06012m12='At or above 150 percent of the poverty level'
B06012m13='Native; born outside the United States:'
B06012m14='Below 100 percent of the poverty level'
B06012m15='100 to 149 percent of the poverty level'
B06012m16='At or above 150 percent of the poverty level'
B06012m17='Foreign born:'
B06012m18='Below 100 percent of the poverty level'
B06012m19='100 to 149 percent of the poverty level'
B06012m20='At or above 150 percent of the poverty level'
 
/*PLACE OF BIRTH BY POVERTY STATUS IN THE PAST 12 MONTHS IN PUERTO RICO */
/*Universe:  Population in Puerto Rico for whom poverty status is determined */
 
B06012PRm1='Total:'
B06012PRm2='Below 100 percent of the poverty level'
B06012PRm3='100 to 149 percent of the poverty level'
B06012PRm4='At or above 150 percent of the poverty level'
B06012PRm5='Born in Puerto Rico:'
B06012PRm6='Below 100 percent of the poverty level'
B06012PRm7='100 to 149 percent of the poverty level'
B06012PRm8='At or above 150 percent of the poverty level'
B06012PRm9='Born in the United States:'
B06012PRm10='Below 100 percent of the poverty level'
B06012PRm11='100 to 149 percent of the poverty level'
B06012PRm12='At or above 150 percent of the poverty level'
B06012PRm13='Native; born elsewhere:'
B06012PRm14='Below 100 percent of the poverty level'
B06012PRm15='100 to 149 percent of the poverty level'
B06012PRm16='At or above 150 percent of the poverty level'
B06012PRm17='Foreign born:'
B06012PRm18='Below 100 percent of the poverty level'
B06012PRm19='100 to 149 percent of the poverty level'
B06012PRm20='At or above 150 percent of the poverty level'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B06010m1
B06010m2
B06010m3
B06010m4
B06010m5
B06010m6
B06010m7
B06010m8
B06010m9
B06010m10
B06010m11
B06010m12
B06010m13
B06010m14
B06010m15
B06010m16
B06010m17
B06010m18
B06010m19
B06010m20
B06010m21
B06010m22
B06010m23
B06010m24
B06010m25
B06010m26
B06010m27
B06010m28
B06010m29
B06010m30
B06010m31
B06010m32
B06010m33
B06010m34
B06010m35
B06010m36
B06010m37
B06010m38
B06010m39
B06010m40
B06010m41
B06010m42
B06010m43
B06010m44
B06010m45
B06010m46
B06010m47
B06010m48
B06010m49
B06010m50
B06010m51
B06010m52
B06010m53
B06010m54
B06010m55
 
B06010PRm1
B06010PRm2
B06010PRm3
B06010PRm4
B06010PRm5
B06010PRm6
B06010PRm7
B06010PRm8
B06010PRm9
B06010PRm10
B06010PRm11
B06010PRm12
B06010PRm13
B06010PRm14
B06010PRm15
B06010PRm16
B06010PRm17
B06010PRm18
B06010PRm19
B06010PRm20
B06010PRm21
B06010PRm22
B06010PRm23
B06010PRm24
B06010PRm25
B06010PRm26
B06010PRm27
B06010PRm28
B06010PRm29
B06010PRm30
B06010PRm31
B06010PRm32
B06010PRm33
B06010PRm34
B06010PRm35
B06010PRm36
B06010PRm37
B06010PRm38
B06010PRm39
B06010PRm40
B06010PRm41
B06010PRm42
B06010PRm43
B06010PRm44
B06010PRm45
B06010PRm46
B06010PRm47
B06010PRm48
B06010PRm49
B06010PRm50
B06010PRm51
B06010PRm52
B06010PRm53
B06010PRm54
B06010PRm55
 
B06011m1
B06011m2
B06011m3
B06011m4
B06011m5
 
B06011PRm1
B06011PRm2
B06011PRm3
B06011PRm4
B06011PRm5
 
B06012m1
B06012m2
B06012m3
B06012m4
B06012m5
B06012m6
B06012m7
B06012m8
B06012m9
B06012m10
B06012m11
B06012m12
B06012m13
B06012m14
B06012m15
B06012m16
B06012m17
B06012m18
B06012m19
B06012m20
 
B06012PRm1
B06012PRm2
B06012PRm3
B06012PRm4
B06012PRm5
B06012PRm6
B06012PRm7
B06012PRm8
B06012PRm9
B06012PRm10
B06012PRm11
B06012PRm12
B06012PRm13
B06012PRm14
B06012PRm15
B06012PRm16
B06012PRm17
B06012PRm18
B06012PRm19
B06012PRm20
;
RUN;
TITLE2;
