TITLE2 "m20125dc0018000";
DATA work.SFm0018dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0018000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY EDUCATIONAL ATTAINMENT FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Population 25 years and over in the United States */
 
B07009m1='Total:'
B07009m2='Less than high school graduate'
B07009m3='High school graduate (includes equivalency)'
B07009m4='Some college or associate''s degree'
B07009m5='Bachelor''s degree'
B07009m6='Graduate or professional degree'
B07009m7='Same house 1 year ago:'
B07009m8='Less than high school graduate'
B07009m9='High school graduate (includes equivalency)'
B07009m10='Some college or associate''s degree'
B07009m11='Bachelor''s degree'
B07009m12='Graduate or professional degree'
B07009m13='Moved within same county:'
B07009m14='Less than high school graduate'
B07009m15='High school graduate (includes equivalency)'
B07009m16='Some college or associate''s degree'
B07009m17='Bachelor''s degree'
B07009m18='Graduate or professional degree'
B07009m19='Moved from different county within same state:'
B07009m20='Less than high school graduate'
B07009m21='High school graduate (includes equivalency)'
B07009m22='Some college or associate''s degree'
B07009m23='Bachelor''s degree'
B07009m24='Graduate or professional degree'
B07009m25='Moved from different state:'
B07009m26='Less than high school graduate'
B07009m27='High school graduate (includes equivalency)'
B07009m28='Some college or associate''s degree'
B07009m29='Bachelor''s degree'
B07009m30='Graduate or professional degree'
B07009m31='Moved from abroad:'
B07009m32='Less than high school graduate'
B07009m33='High school graduate (includes equivalency)'
B07009m34='Some college or associate''s degree'
B07009m35='Bachelor''s degree'
B07009m36='Graduate or professional degree'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY EDUCATIONAL ATTAINMENT FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Population 25 years and over in Puerto Rico */
 
B07009PRm1='Total:'
B07009PRm2='Less than high school graduate'
B07009PRm3='High school graduate (includes equivalency)'
B07009PRm4='Some college or associate''s degree'
B07009PRm5='Bachelor''s degree'
B07009PRm6='Graduate or professional degree'
B07009PRm7='Same house 1 year ago:'
B07009PRm8='Less than high school graduate'
B07009PRm9='High school graduate (includes equivalency)'
B07009PRm10='Some college or associate''s degree'
B07009PRm11='Bachelor''s degree'
B07009PRm12='Graduate or professional degree'
B07009PRm13='Moved within same municipio:'
B07009PRm14='Less than high school graduate'
B07009PRm15='High school graduate (includes equivalency)'
B07009PRm16='Some college or associate''s degree'
B07009PRm17='Bachelor''s degree'
B07009PRm18='Graduate or professional degree'
B07009PRm19='Moved from different municipio:'
B07009PRm20='Less than high school graduate'
B07009PRm21='High school graduate (includes equivalency)'
B07009PRm22='Some college or associate''s degree'
B07009PRm23='Bachelor''s degree'
B07009PRm24='Graduate or professional degree'
B07009PRm25='Moved from the United States:'
B07009PRm26='Less than high school graduate'
B07009PRm27='High school graduate (includes equivalency)'
B07009PRm28='Some college or associate''s degree'
B07009PRm29='Bachelor''s degree'
B07009PRm30='Graduate or professional degree'
B07009PRm31='Moved from elsewhere:'
B07009PRm32='Less than high school graduate'
B07009PRm33='High school graduate (includes equivalency)'
B07009PRm34='Some college or associate''s degree'
B07009PRm35='Bachelor''s degree'
B07009PRm36='Graduate or professional degree'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY INDIVIDUAL INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Population 15 years and over in the United States */
 
B07010m1='Total:'
B07010m2='No income'
B07010m3='With income:'
B07010m4='$1 to $9,999 or loss'
B07010m5='$10,000 to $14,999'
B07010m6='$15,000 to $24,999'
B07010m7='$25,000 to $34,999'
B07010m8='$35,000 to $49,999'
B07010m9='$50,000 to $64,999'
B07010m10='$65,000 to $74,999'
B07010m11='$75,000 or more'
B07010m12='Same house 1 year ago:'
B07010m13='No income'
B07010m14='With income:'
B07010m15='$1 to $9,999 or loss'
B07010m16='$10,000 to $14,999'
B07010m17='$15,000 to $24,999'
B07010m18='$25,000 to $34,999'
B07010m19='$35,000 to $49,999'
B07010m20='$50,000 to $64,999'
B07010m21='$65,000 to $74,999'
B07010m22='$75,000 or more'
B07010m23='Moved within same county:'
B07010m24='No income'
B07010m25='With income:'
B07010m26='$1 to $9,999 or loss'
B07010m27='$10,000 to $14,999'
B07010m28='$15,000 to $24,999'
B07010m29='$25,000 to $34,999'
B07010m30='$35,000 to $49,999'
B07010m31='$50,000 to $64,999'
B07010m32='$65,000 to $74,999'
B07010m33='$75,000 or more'
B07010m34='Moved from different county within same state:'
B07010m35='No income'
B07010m36='With income:'
B07010m37='$1 to $9,999 or loss'
B07010m38='$10,000 to $14,999'
B07010m39='$15,000 to $24,999'
B07010m40='$25,000 to $34,999'
B07010m41='$35,000 to $49,999'
B07010m42='$50,000 to $64,999'
B07010m43='$65,000 to $74,999'
B07010m44='$75,000 or more'
B07010m45='Moved from different state:'
B07010m46='No income'
B07010m47='With income:'
B07010m48='$1 to $9,999 or loss'
B07010m49='$10,000 to $14,999'
B07010m50='$15,000 to $24,999'
B07010m51='$25,000 to $34,999'
B07010m52='$35,000 to $49,999'
B07010m53='$50,000 to $64,999'
B07010m54='$65,000 to $74,999'
B07010m55='$75,000 or more'
B07010m56='Moved from abroad:'
B07010m57='No income'
B07010m58='With income:'
B07010m59='$1 to $9,999 or loss'
B07010m60='$10,000 to $14,999'
B07010m61='$15,000 to $24,999'
B07010m62='$25,000 to $34,999'
B07010m63='$35,000 to $49,999'
B07010m64='$50,000 to $64,999'
B07010m65='$65,000 to $74,999'
B07010m66='$75,000 or more'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY INDIVIDUAL INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Population 15 years and over in Puerto Rico */
 
B07010PRm1='Total:'
B07010PRm2='No income'
B07010PRm3='With income:'
B07010PRm4='$1 to $9,999 or loss'
B07010PRm5='$10,000 to $14,999'
B07010PRm6='$15,000 to $24,999'
B07010PRm7='$25,000 to $34,999'
B07010PRm8='$35,000 to $49,999'
B07010PRm9='$50,000 to $64,999'
B07010PRm10='$65,000 to $74,999'
B07010PRm11='$75,000 or more'
B07010PRm12='Same house 1 year ago:'
B07010PRm13='No income'
B07010PRm14='With income:'
B07010PRm15='$1 to $9,999 or loss'
B07010PRm16='$10,000 to $14,999'
B07010PRm17='$15,000 to $24,999'
B07010PRm18='$25,000 to $34,999'
B07010PRm19='$35,000 to $49,999'
B07010PRm20='$50,000 to $64,999'
B07010PRm21='$65,000 to $74,999'
B07010PRm22='$75,000 or more'
B07010PRm23='Moved within same municipio:'
B07010PRm24='No income'
B07010PRm25='With income:'
B07010PRm26='$1 to $9,999 or loss'
B07010PRm27='$10,000 to $14,999'
B07010PRm28='$15,000 to $24,999'
B07010PRm29='$25,000 to $34,999'
B07010PRm30='$35,000 to $49,999'
B07010PRm31='$50,000 to $64,999'
B07010PRm32='$65,000 to $74,999'
B07010PRm33='$75,000 or more'
B07010PRm34='Moved from different municipio:'
B07010PRm35='No income'
B07010PRm36='With income:'
B07010PRm37='$1 to $9,999 or loss'
B07010PRm38='$10,000 to $14,999'
B07010PRm39='$15,000 to $24,999'
B07010PRm40='$25,000 to $34,999'
B07010PRm41='$35,000 to $49,999'
B07010PRm42='$50,000 to $64,999'
B07010PRm43='$65,000 to $74,999'
B07010PRm44='$75,000 or more'
B07010PRm45='Moved from the United States:'
B07010PRm46='No income'
B07010PRm47='With income:'
B07010PRm48='$1 to $9,999 or loss'
B07010PRm49='$10,000 to $14,999'
B07010PRm50='$15,000 to $24,999'
B07010PRm51='$25,000 to $34,999'
B07010PRm52='$35,000 to $49,999'
B07010PRm53='$50,000 to $64,999'
B07010PRm54='$65,000 to $74,999'
B07010PRm55='$75,000 or more'
B07010PRm56='Moved from elsewhere:'
B07010PRm57='No income'
B07010PRm58='With income:'
B07010PRm59='$1 to $9,999 or loss'
B07010PRm60='$10,000 to $14,999'
B07010PRm61='$15,000 to $24,999'
B07010PRm62='$25,000 to $34,999'
B07010PRm63='$35,000 to $49,999'
B07010PRm64='$50,000 to $64,999'
B07010PRm65='$65,000 to $74,999'
B07010PRm66='$75,000 or more'
/*MEDIAN INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Population 15 years and over in the United States with income */
/*Median income in the past 12 months -- */
 
B07011m1='Total:'
B07011m2='Same house 1 year ago'
B07011m3='Moved within same county'
B07011m4='Moved from different county within same state'
B07011m5='Moved from different state'
B07011m6='Moved from abroad'
/*MEDIAN INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Population 15 years and over in Puerto Rico with income */
/*Median income in the past 12 months -- */
 
B07011PRm1='Total:'
B07011PRm2='Same house 1 year ago'
B07011PRm3='Moved within same municipio'
B07011PRm4='Moved from different municipio'
B07011PRm5='Moved from the United States'
B07011PRm6='Moved from elsewhere'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY POVERTY STATUS IN THE PAST 12 MONTHS FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Population 1 year and over in the United States for whom poverty status is determined */
 
B07012m1='Total:'
B07012m2='Below 100 percent of the poverty level'
B07012m3='100 to 149 percent of the poverty level'
B07012m4='At or above 150 percent of the poverty level'
B07012m5='Same house 1 year ago:'
B07012m6='Below 100 percent of the poverty level'
B07012m7='100 to 149 percent of the poverty level'
B07012m8='At or above 150 percent of the poverty level'
B07012m9='Moved within same county:'
B07012m10='Below 100 percent of the poverty level'
B07012m11='100 to 149 percent of the poverty level'
B07012m12='At or above 150 percent of the poverty level'
B07012m13='Moved from different county within same state:'
B07012m14='Below 100 percent of the poverty level'
B07012m15='100 to 149 percent of the poverty level'
B07012m16='At or above 150 percent of the poverty level'
B07012m17='Moved from different state:'
B07012m18='Below 100 percent of the poverty level'
B07012m19='100 to 149 percent of the poverty level'
B07012m20='At or above 150 percent of the poverty level'
B07012m21='Moved from abroad:'
B07012m22='Below 100 percent of the poverty level'
B07012m23='100 to 149 percent of the poverty level'
B07012m24='At or above 150 percent of the poverty level'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B07009m1
B07009m2
B07009m3
B07009m4
B07009m5
B07009m6
B07009m7
B07009m8
B07009m9
B07009m10
B07009m11
B07009m12
B07009m13
B07009m14
B07009m15
B07009m16
B07009m17
B07009m18
B07009m19
B07009m20
B07009m21
B07009m22
B07009m23
B07009m24
B07009m25
B07009m26
B07009m27
B07009m28
B07009m29
B07009m30
B07009m31
B07009m32
B07009m33
B07009m34
B07009m35
B07009m36
 
B07009PRm1
B07009PRm2
B07009PRm3
B07009PRm4
B07009PRm5
B07009PRm6
B07009PRm7
B07009PRm8
B07009PRm9
B07009PRm10
B07009PRm11
B07009PRm12
B07009PRm13
B07009PRm14
B07009PRm15
B07009PRm16
B07009PRm17
B07009PRm18
B07009PRm19
B07009PRm20
B07009PRm21
B07009PRm22
B07009PRm23
B07009PRm24
B07009PRm25
B07009PRm26
B07009PRm27
B07009PRm28
B07009PRm29
B07009PRm30
B07009PRm31
B07009PRm32
B07009PRm33
B07009PRm34
B07009PRm35
B07009PRm36
 
B07010m1
B07010m2
B07010m3
B07010m4
B07010m5
B07010m6
B07010m7
B07010m8
B07010m9
B07010m10
B07010m11
B07010m12
B07010m13
B07010m14
B07010m15
B07010m16
B07010m17
B07010m18
B07010m19
B07010m20
B07010m21
B07010m22
B07010m23
B07010m24
B07010m25
B07010m26
B07010m27
B07010m28
B07010m29
B07010m30
B07010m31
B07010m32
B07010m33
B07010m34
B07010m35
B07010m36
B07010m37
B07010m38
B07010m39
B07010m40
B07010m41
B07010m42
B07010m43
B07010m44
B07010m45
B07010m46
B07010m47
B07010m48
B07010m49
B07010m50
B07010m51
B07010m52
B07010m53
B07010m54
B07010m55
B07010m56
B07010m57
B07010m58
B07010m59
B07010m60
B07010m61
B07010m62
B07010m63
B07010m64
B07010m65
B07010m66
 
B07010PRm1
B07010PRm2
B07010PRm3
B07010PRm4
B07010PRm5
B07010PRm6
B07010PRm7
B07010PRm8
B07010PRm9
B07010PRm10
B07010PRm11
B07010PRm12
B07010PRm13
B07010PRm14
B07010PRm15
B07010PRm16
B07010PRm17
B07010PRm18
B07010PRm19
B07010PRm20
B07010PRm21
B07010PRm22
B07010PRm23
B07010PRm24
B07010PRm25
B07010PRm26
B07010PRm27
B07010PRm28
B07010PRm29
B07010PRm30
B07010PRm31
B07010PRm32
B07010PRm33
B07010PRm34
B07010PRm35
B07010PRm36
B07010PRm37
B07010PRm38
B07010PRm39
B07010PRm40
B07010PRm41
B07010PRm42
B07010PRm43
B07010PRm44
B07010PRm45
B07010PRm46
B07010PRm47
B07010PRm48
B07010PRm49
B07010PRm50
B07010PRm51
B07010PRm52
B07010PRm53
B07010PRm54
B07010PRm55
B07010PRm56
B07010PRm57
B07010PRm58
B07010PRm59
B07010PRm60
B07010PRm61
B07010PRm62
B07010PRm63
B07010PRm64
B07010PRm65
B07010PRm66
 
B07011m1
B07011m2
B07011m3
B07011m4
B07011m5
B07011m6
 
B07011PRm1
B07011PRm2
B07011PRm3
B07011PRm4
B07011PRm5
B07011PRm6
 
B07012m1
B07012m2
B07012m3
B07012m4
B07012m5
B07012m6
B07012m7
B07012m8
B07012m9
B07012m10
B07012m11
B07012m12
B07012m13
B07012m14
B07012m15
B07012m16
B07012m17
B07012m18
B07012m19
B07012m20
B07012m21
B07012m22
B07012m23
B07012m24
;
RUN;
TITLE2;
