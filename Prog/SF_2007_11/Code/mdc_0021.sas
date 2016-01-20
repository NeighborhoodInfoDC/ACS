TITLE2 "m20115dc0021000";
DATA work.SFm0021dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0021000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (WHITE ALONE) FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  White alone population 1 year and over */
 
B07404APRm1='Total living in area 1 year ago:'
B07404APRm2='Same house'
B07404APRm3='Moved within same municipio'
B07404APRm4='Moved to different municipio'
B07404APRm5='Moved to the United States'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (BLACK OR AFRICAN AMERICAN ALONE) FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Black or African American alone population 1 year and over */
 
B07404BPRm1='Total living in area 1 year ago:'
B07404BPRm2='Same house'
B07404BPRm3='Moved within same municipio'
B07404BPRm4='Moved to different municipio'
B07404BPRm5='Moved to the United States'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (AMERICAN INDIAN AND ALASKA NATIVE ALONE) FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  American Indian and Alaska Native alone population 1 year and over */
 
B07404CPRm1='Total living in area 1 year ago:'
B07404CPRm2='Same house'
B07404CPRm3='Moved within same municipio'
B07404CPRm4='Moved to different municipio'
B07404CPRm5='Moved to the United States'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (ASIAN ALONE) FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Asian alone population 1 year and over */
 
B07404DPRm1='Total living in area 1 year ago:'
B07404DPRm2='Same house'
B07404DPRm3='Moved within same municipio'
B07404DPRm4='Moved to different municipio'
B07404DPRm5='Moved to the United States'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 1 year and over */
 
B07404EPRm1='Total living in area 1 year ago:'
B07404EPRm2='Same house'
B07404EPRm3='Moved within same municipio'
B07404EPRm4='Moved to different municipio'
B07404EPRm5='Moved to the United States'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (SOME OTHER RACE ALONE) FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Some other race alone population 1 year and over */
 
B07404FPRm1='Total living in area 1 year ago:'
B07404FPRm2='Same house'
B07404FPRm3='Moved within same municipio'
B07404FPRm4='Moved to different municipio'
B07404FPRm5='Moved to the United States'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (TWO OR MORE RACES) FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Two or more races population 1 year and over */
 
B07404GPRm1='Total living in area 1 year ago:'
B07404GPRm2='Same house'
B07404GPRm3='Moved within same municipio'
B07404GPRm4='Moved to different municipio'
B07404GPRm5='Moved to the United States'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (WHITE ALONE, NOT HISPANIC OR LATINO) FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  White alone, not Hispanic or Latino population 1 year and over */
 
B07404HPRm1='Total living in area 1 year ago:'
B07404HPRm2='Same house'
B07404HPRm3='Moved within same municipio'
B07404HPRm4='Moved to different municipio'
B07404HPRm5='Moved to the United States'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (HISPANIC OR LATINO) FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Hispanic or Latino population 1 year and over */
 
B07404IPRm1='Total living in area 1 year ago:'
B07404IPRm2='Same house'
B07404IPRm3='Moved within same municipio'
B07404IPRm4='Moved to different municipio'
B07404IPRm5='Moved to the United States'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY CITIZENSHIP STATUS FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Population 1 year and over in the United States */
 
B07407m1='Total living in area 1 year ago:'
B07407m2='Native'
B07407m3='Foreign born:'
B07407m4='Naturalized U.S. citizen'
B07407m5='Not a U.S. citizen'
B07407m6='Same house:'
B07407m7='Native'
B07407m8='Foreign born:'
B07407m9='Naturalized U.S. citizen'
B07407m10='Not a U.S. citizen'
B07407m11='Moved within same county:'
B07407m12='Native'
B07407m13='Foreign born:'
B07407m14='Naturalized U.S. citizen'
B07407m15='Not a U.S. citizen'
B07407m16='Moved to different county within same state:'
B07407m17='Native'
B07407m18='Foreign born:'
B07407m19='Naturalized U.S. citizen'
B07407m20='Not a U.S. citizen'
B07407m21='Moved to different state:'
B07407m22='Native'
B07407m23='Foreign born:'
B07407m24='Naturalized U.S. citizen'
B07407m25='Not a U.S. citizen'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY CITIZENSHIP STATUS FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Population 1 year and over */
 
B07407PRm1='Total living in area 1 year ago:'
B07407PRm2='Native'
B07407PRm3='Foreign born:'
B07407PRm4='Naturalized U.S. citizen'
B07407PRm5='Not a U.S. citizen'
B07407PRm6='Same house:'
B07407PRm7='Native'
B07407PRm8='Foreign born:'
B07407PRm9='Naturalized U.S. citizen'
B07407PRm10='Not a U.S. citizen'
B07407PRm11='Moved within same municipio:'
B07407PRm12='Native'
B07407PRm13='Foreign born:'
B07407PRm14='Naturalized U.S. citizen'
B07407PRm15='Not a U.S. citizen'
B07407PRm16='Moved to different municipio:'
B07407PRm17='Native'
B07407PRm18='Foreign born:'
B07407PRm19='Naturalized U.S. citizen'
B07407PRm20='Not a U.S. citizen'
B07407PRm21='Moved to the United States:'
B07407PRm22='Native'
B07407PRm23='Foreign born:'
B07407PRm24='Naturalized U.S. citizen'
B07407PRm25='Not a U.S. citizen'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY MARITAL STATUS FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Population 15 years and over in the United States */
 
B07408m1='Total living in area 1 year ago:'
B07408m2='Never married'
B07408m3='Now married, except separated'
B07408m4='Divorced'
B07408m5='Separated'
B07408m6='Widowed'
B07408m7='Same house:'
B07408m8='Never married'
B07408m9='Now married, except separated'
B07408m10='Divorced'
B07408m11='Separated'
B07408m12='Widowed'
B07408m13='Moved within same county:'
B07408m14='Never married'
B07408m15='Now married, except separated'
B07408m16='Divorced'
B07408m17='Separated'
B07408m18='Widowed'
B07408m19='Moved to different county within same state:'
B07408m20='Never married'
B07408m21='Now married, except separated'
B07408m22='Divorced'
B07408m23='Separated'
B07408m24='Widowed'
B07408m25='Moved to different state:'
B07408m26='Never married'
B07408m27='Now married, except separated'
B07408m28='Divorced'
B07408m29='Separated'
B07408m30='Widowed'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY MARITAL STATUS FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Population 15 years and over */
 
B07408PRm1='Total living in area 1 year ago:'
B07408PRm2='Never married'
B07408PRm3='Now married, except separated'
B07408PRm4='Divorced'
B07408PRm5='Separated'
B07408PRm6='Widowed'
B07408PRm7='Same house:'
B07408PRm8='Never married'
B07408PRm9='Now married, except separated'
B07408PRm10='Divorced'
B07408PRm11='Separated'
B07408PRm12='Widowed'
B07408PRm13='Moved within same municipio:'
B07408PRm14='Never married'
B07408PRm15='Now married, except separated'
B07408PRm16='Divorced'
B07408PRm17='Separated'
B07408PRm18='Widowed'
B07408PRm19='Moved to different municipio:'
B07408PRm20='Never married'
B07408PRm21='Now married, except separated'
B07408PRm22='Divorced'
B07408PRm23='Separated'
B07408PRm24='Widowed'
B07408PRm25='Moved to the United States:'
B07408PRm26='Never married'
B07408PRm27='Now married, except separated'
B07408PRm28='Divorced'
B07408PRm29='Separated'
B07408PRm30='Widowed'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY EDUCATIONAL ATTAINMENT FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Population 25 years and over in the United States */
 
B07409m1='Total living in area 1 year ago:'
B07409m2='Less than high school graduate'
B07409m3='High school graduate (includes equivalency)'
B07409m4='Some college or associate''s degree'
B07409m5='Bachelor''s degree'
B07409m6='Graduate or professional degree'
B07409m7='Same house:'
B07409m8='Less than high school graduate'
B07409m9='High school graduate (includes equivalency)'
B07409m10='Some college or associate''s degree'
B07409m11='Bachelor''s degree'
B07409m12='Graduate or professional degree'
B07409m13='Moved within same county:'
B07409m14='Less than high school graduate'
B07409m15='High school graduate (includes equivalency)'
B07409m16='Some college or associate''s degree'
B07409m17='Bachelor''s degree'
B07409m18='Graduate or professional degree'
B07409m19='Moved to different county within same state:'
B07409m20='Less than high school graduate'
B07409m21='High school graduate (includes equivalency)'
B07409m22='Some college or associate''s degree'
B07409m23='Bachelor''s degree'
B07409m24='Graduate or professional degree'
B07409m25='Moved to different state:'
B07409m26='Less than high school graduate'
B07409m27='High school graduate (includes equivalency)'
B07409m28='Some college or associate''s degree'
B07409m29='Bachelor''s degree'
B07409m30='Graduate or professional degree'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY EDUCATIONAL ATTAINMENT FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Population 25 years and over */
 
B07409PRm1='Total living in area 1 year ago:'
B07409PRm2='Less than high school graduate'
B07409PRm3='High school graduate (includes equivalency)'
B07409PRm4='Some college or associate''s degree'
B07409PRm5='Bachelor''s degree'
B07409PRm6='Graduate or professional degree'
B07409PRm7='Same house:'
B07409PRm8='Less than high school graduate'
B07409PRm9='High school graduate (includes equivalency)'
B07409PRm10='Some college or associate''s degree'
B07409PRm11='Bachelor''s degree'
B07409PRm12='Graduate or professional degree'
B07409PRm13='Moved within same municipio:'
B07409PRm14='Less than high school graduate'
B07409PRm15='High school graduate (includes equivalency)'
B07409PRm16='Some college or associate''s degree'
B07409PRm17='Bachelor''s degree'
B07409PRm18='Graduate or professional degree'
B07409PRm19='Moved to different municipio:'
B07409PRm20='Less than high school graduate'
B07409PRm21='High school graduate (includes equivalency)'
B07409PRm22='Some college or associate''s degree'
B07409PRm23='Bachelor''s degree'
B07409PRm24='Graduate or professional degree'
B07409PRm25='Moved to the United States:'
B07409PRm26='Less than high school graduate'
B07409PRm27='High school graduate (includes equivalency)'
B07409PRm28='Some college or associate''s degree'
B07409PRm29='Bachelor''s degree'
B07409PRm30='Graduate or professional degree'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B07404APRm1
B07404APRm2
B07404APRm3
B07404APRm4
B07404APRm5
 
B07404BPRm1
B07404BPRm2
B07404BPRm3
B07404BPRm4
B07404BPRm5
 
B07404CPRm1
B07404CPRm2
B07404CPRm3
B07404CPRm4
B07404CPRm5
 
B07404DPRm1
B07404DPRm2
B07404DPRm3
B07404DPRm4
B07404DPRm5
 
B07404EPRm1
B07404EPRm2
B07404EPRm3
B07404EPRm4
B07404EPRm5
 
B07404FPRm1
B07404FPRm2
B07404FPRm3
B07404FPRm4
B07404FPRm5
 
B07404GPRm1
B07404GPRm2
B07404GPRm3
B07404GPRm4
B07404GPRm5
 
B07404HPRm1
B07404HPRm2
B07404HPRm3
B07404HPRm4
B07404HPRm5
 
B07404IPRm1
B07404IPRm2
B07404IPRm3
B07404IPRm4
B07404IPRm5
 
B07407m1
B07407m2
B07407m3
B07407m4
B07407m5
B07407m6
B07407m7
B07407m8
B07407m9
B07407m10
B07407m11
B07407m12
B07407m13
B07407m14
B07407m15
B07407m16
B07407m17
B07407m18
B07407m19
B07407m20
B07407m21
B07407m22
B07407m23
B07407m24
B07407m25
 
B07407PRm1
B07407PRm2
B07407PRm3
B07407PRm4
B07407PRm5
B07407PRm6
B07407PRm7
B07407PRm8
B07407PRm9
B07407PRm10
B07407PRm11
B07407PRm12
B07407PRm13
B07407PRm14
B07407PRm15
B07407PRm16
B07407PRm17
B07407PRm18
B07407PRm19
B07407PRm20
B07407PRm21
B07407PRm22
B07407PRm23
B07407PRm24
B07407PRm25
 
B07408m1
B07408m2
B07408m3
B07408m4
B07408m5
B07408m6
B07408m7
B07408m8
B07408m9
B07408m10
B07408m11
B07408m12
B07408m13
B07408m14
B07408m15
B07408m16
B07408m17
B07408m18
B07408m19
B07408m20
B07408m21
B07408m22
B07408m23
B07408m24
B07408m25
B07408m26
B07408m27
B07408m28
B07408m29
B07408m30
 
B07408PRm1
B07408PRm2
B07408PRm3
B07408PRm4
B07408PRm5
B07408PRm6
B07408PRm7
B07408PRm8
B07408PRm9
B07408PRm10
B07408PRm11
B07408PRm12
B07408PRm13
B07408PRm14
B07408PRm15
B07408PRm16
B07408PRm17
B07408PRm18
B07408PRm19
B07408PRm20
B07408PRm21
B07408PRm22
B07408PRm23
B07408PRm24
B07408PRm25
B07408PRm26
B07408PRm27
B07408PRm28
B07408PRm29
B07408PRm30
 
B07409m1
B07409m2
B07409m3
B07409m4
B07409m5
B07409m6
B07409m7
B07409m8
B07409m9
B07409m10
B07409m11
B07409m12
B07409m13
B07409m14
B07409m15
B07409m16
B07409m17
B07409m18
B07409m19
B07409m20
B07409m21
B07409m22
B07409m23
B07409m24
B07409m25
B07409m26
B07409m27
B07409m28
B07409m29
B07409m30
 
B07409PRm1
B07409PRm2
B07409PRm3
B07409PRm4
B07409PRm5
B07409PRm6
B07409PRm7
B07409PRm8
B07409PRm9
B07409PRm10
B07409PRm11
B07409PRm12
B07409PRm13
B07409PRm14
B07409PRm15
B07409PRm16
B07409PRm17
B07409PRm18
B07409PRm19
B07409PRm20
B07409PRm21
B07409PRm22
B07409PRm23
B07409PRm24
B07409PRm25
B07409PRm26
B07409PRm27
B07409PRm28
B07409PRm29
B07409PRm30
;
RUN;
TITLE2;
