TITLE2 "m20125dc0017000";
DATA work.SFm0017dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0017000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (WHITE ALONE) FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  White alone population 1 year and over in the United States */
 
B07004Am1='Total:'
B07004Am2='Same house 1 year ago'
B07004Am3='Moved within same county'
B07004Am4='Moved from different county within same state'
B07004Am5='Moved from different state'
B07004Am6='Moved from abroad'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (WHITE ALONE) FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  White alone population 1 year and over in Puerto Rico */
 
B07004APRm1='Total:'
B07004APRm2='Same house 1 year ago'
B07004APRm3='Moved within same municipio'
B07004APRm4='Moved from different municipio'
B07004APRm5='Moved from the United States'
B07004APRm6='Moved from elsewhere'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (BLACK OR AFRICAN AMERICAN ALONE) FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Black or African American alone population 1 year and over in the United States */
 
B07004Bm1='Total:'
B07004Bm2='Same house 1 year ago'
B07004Bm3='Moved within same county'
B07004Bm4='Moved from different county within same state'
B07004Bm5='Moved from different state'
B07004Bm6='Moved from abroad'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (BLACK OR AFRICAN AMERICAN ALONE) FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Black or African American alone population 1 year and over in Puerto Rico */
 
B07004BPRm1='Total:'
B07004BPRm2='Same house 1 year ago'
B07004BPRm3='Moved within same municipio'
B07004BPRm4='Moved from different municipio'
B07004BPRm5='Moved from the United States'
B07004BPRm6='Moved from elsewhere'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (AMERICAN INDIAN AND ALASKA NATIVE ALONE) FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  American Indian and Alaskan Native alone population 1 year and over in the United States */
 
B07004Cm1='Total:'
B07004Cm2='Same house 1 year ago'
B07004Cm3='Moved within same county'
B07004Cm4='Moved from different county within same state'
B07004Cm5='Moved from different state'
B07004Cm6='Moved from abroad'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (AMERICAN INDIAN AND ALASKA NATIVE ALONE) FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  American Indian and Alaskan Native alone population 1 year and over in Puerto Rico */
 
B07004CPRm1='Total:'
B07004CPRm2='Same house 1 year ago'
B07004CPRm3='Moved within same municipio'
B07004CPRm4='Moved from different municipio'
B07004CPRm5='Moved from the United States'
B07004CPRm6='Moved from elsewhere'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (ASIAN ALONE) FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Asian alone population 1 year and over in the United States */
 
B07004Dm1='Total:'
B07004Dm2='Same house 1 year ago'
B07004Dm3='Moved within same county'
B07004Dm4='Moved from different county within same state'
B07004Dm5='Moved from different state'
B07004Dm6='Moved from abroad'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (ASIAN ALONE) FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Asian alone population 1 year and over in Puerto Rico */
 
B07004DPRm1='Total:'
B07004DPRm2='Same house 1 year ago'
B07004DPRm3='Moved within same municipio'
B07004DPRm4='Moved from different municipio'
B07004DPRm5='Moved from the United States'
B07004DPRm6='Moved from elsewhere'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 1 year and over in the United States */
 
B07004Em1='Total:'
B07004Em2='Same house 1 year ago'
B07004Em3='Moved within same county'
B07004Em4='Moved from different county within same state'
B07004Em5='Moved from different state'
B07004Em6='Moved from abroad'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 1 year and over in Puerto Rico */
 
B07004EPRm1='Total:'
B07004EPRm2='Same house 1 year ago'
B07004EPRm3='Moved within same municipio'
B07004EPRm4='Moved from different municipio'
B07004EPRm5='Moved from the United States'
B07004EPRm6='Moved from elsewhere'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (SOME OTHER RACE ALONE) FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Some other race alone population 1 year and over in the United States */
 
B07004Fm1='Total:'
B07004Fm2='Same house 1 year ago'
B07004Fm3='Moved within same county'
B07004Fm4='Moved from different county within same state'
B07004Fm5='Moved from different state'
B07004Fm6='Moved from abroad'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (SOME OTHER RACE ALONE) FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Some other race alone population 1 year and over in Puerto Rico */
 
B07004FPRm1='Total:'
B07004FPRm2='Same house 1 year ago'
B07004FPRm3='Moved within same municipio'
B07004FPRm4='Moved from different municipio'
B07004FPRm5='Moved from the United States'
B07004FPRm6='Moved from elsewhere'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (TWO OR MORE RACES) FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Two or more races population 1 year and over in the United States */
 
B07004Gm1='Total:'
B07004Gm2='Same house 1 year ago'
B07004Gm3='Moved within same county'
B07004Gm4='Moved from different county within same state'
B07004Gm5='Moved from different state'
B07004Gm6='Moved from abroad'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (TWO OR MORE RACES) FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Two or more races population 1 year and over in Puerto Rico */
 
B07004GPRm1='Total:'
B07004GPRm2='Same house 1 year ago'
B07004GPRm3='Moved within same municipio'
B07004GPRm4='Moved from different municipio'
B07004GPRm5='Moved from the United States'
B07004GPRm6='Moved from elsewhere'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (WHITE ALONE, NOT HISPANIC OR LATINO) FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  White alone, not Hispanic or Latino population 1 year and over in the United States */
 
B07004Hm1='Total:'
B07004Hm2='Same house 1 year ago'
B07004Hm3='Moved within same county'
B07004Hm4='Moved from different county within same state'
B07004Hm5='Moved from different state'
B07004Hm6='Moved from abroad'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (WHITE ALONE, NOT HISPANIC OR LATINO) FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  White alone, not Hispanic or Latino population 1 year and over in Puerto Rico */
 
B07004HPRm1='Total:'
B07004HPRm2='Same house 1 year ago'
B07004HPRm3='Moved within same municipio'
B07004HPRm4='Moved from different municipio'
B07004HPRm5='Moved from the United States'
B07004HPRm6='Moved from elsewhere'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (HISPANIC OR LATINO) FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Hispanic or Latino population 1 year and over in the United States */
 
B07004Im1='Total:'
B07004Im2='Same house 1 year ago'
B07004Im3='Moved within same county'
B07004Im4='Moved from different county within same state'
B07004Im5='Moved from different state'
B07004Im6='Moved from abroad'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (HISPANIC OR LATINO) FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Hispanic or Latino population 1 year and over in Puerto Rico */
 
B07004IPRm1='Total:'
B07004IPRm2='Same house 1 year ago'
B07004IPRm3='Moved within same municipio'
B07004IPRm4='Moved from different municipio'
B07004IPRm5='Moved from the United States'
B07004IPRm6='Moved from elsewhere'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY CITIZENSHIP STATUS FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Population 1 year and over in the United States */
 
B07007m1='Total:'
B07007m2='Native'
B07007m3='Foreign born:'
B07007m4='Naturalized U.S. citizen'
B07007m5='Not a U.S. citizen'
B07007m6='Same house 1 year ago:'
B07007m7='Native'
B07007m8='Foreign born:'
B07007m9='Naturalized U.S. citizen'
B07007m10='Not a U.S. citizen'
B07007m11='Moved within same county:'
B07007m12='Native'
B07007m13='Foreign born:'
B07007m14='Naturalized U.S. citizen'
B07007m15='Not a U.S. citizen'
B07007m16='Moved from different county within same state:'
B07007m17='Native'
B07007m18='Foreign born:'
B07007m19='Naturalized U.S. citizen'
B07007m20='Not a U.S. citizen'
B07007m21='Moved from different state:'
B07007m22='Native'
B07007m23='Foreign born:'
B07007m24='Naturalized U.S. citizen'
B07007m25='Not a U.S. citizen'
B07007m26='Moved from abroad:'
B07007m27='Native'
B07007m28='Foreign born:'
B07007m29='Naturalized U.S. citizen'
B07007m30='Not a U.S. citizen'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY CITIZENSHIP STATUS FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Population 1 year and over in Puerto Rico */
 
B07007PRm1='Total:'
B07007PRm2='Native'
B07007PRm3='Foreign born:'
B07007PRm4='Naturalized U.S. citizen'
B07007PRm5='Not a U.S. citizen'
B07007PRm6='Same house 1 year ago:'
B07007PRm7='Native'
B07007PRm8='Foreign born:'
B07007PRm9='Naturalized U.S. citizen'
B07007PRm10='Not a U.S. citizen'
B07007PRm11='Moved within same municipio:'
B07007PRm12='Native'
B07007PRm13='Foreign born:'
B07007PRm14='Naturalized U.S. citizen'
B07007PRm15='Not a U.S. citizen'
B07007PRm16='Moved from different municipio:'
B07007PRm17='Native'
B07007PRm18='Foreign born:'
B07007PRm19='Naturalized U.S. citizen'
B07007PRm20='Not a U.S. citizen'
B07007PRm21='Moved from the United States:'
B07007PRm22='Native'
B07007PRm23='Foreign born:'
B07007PRm24='Naturalized U.S. citizen'
B07007PRm25='Not a U.S. citizen'
B07007PRm26='Moved from elsewhere:'
B07007PRm27='Native'
B07007PRm28='Foreign born:'
B07007PRm29='Naturalized U.S. citizen'
B07007PRm30='Not a U.S. citizen'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY MARITAL STATUS FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Population 15 years and over in the United States */
 
B07008m1='Total:'
B07008m2='Never married'
B07008m3='Now married, except separated'
B07008m4='Divorced'
B07008m5='Separated'
B07008m6='Widowed'
B07008m7='Same house 1 year ago:'
B07008m8='Never married'
B07008m9='Now married, except separated'
B07008m10='Divorced'
B07008m11='Separated'
B07008m12='Widowed'
B07008m13='Moved within same county:'
B07008m14='Never married'
B07008m15='Now married, except separated'
B07008m16='Divorced'
B07008m17='Separated'
B07008m18='Widowed'
B07008m19='Moved from different county within same state:'
B07008m20='Never married'
B07008m21='Now married, except separated'
B07008m22='Divorced'
B07008m23='Separated'
B07008m24='Widowed'
B07008m25='Moved from different state:'
B07008m26='Never married'
B07008m27='Now married, except separated'
B07008m28='Divorced'
B07008m29='Separated'
B07008m30='Widowed'
B07008m31='Moved from abroad:'
B07008m32='Never married'
B07008m33='Now married, except separated'
B07008m34='Divorced'
B07008m35='Separated'
B07008m36='Widowed'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY MARITAL STATUS FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Population 15 years and over in Puerto Rico */
 
B07008PRm1='Total:'
B07008PRm2='Never married'
B07008PRm3='Now married, except separated'
B07008PRm4='Divorced'
B07008PRm5='Separated'
B07008PRm6='Widowed'
B07008PRm7='Same house 1 year ago:'
B07008PRm8='Never married'
B07008PRm9='Now married, except separated'
B07008PRm10='Divorced'
B07008PRm11='Separated'
B07008PRm12='Widowed'
B07008PRm13='Moved within same municipio:'
B07008PRm14='Never married'
B07008PRm15='Now married, except separated'
B07008PRm16='Divorced'
B07008PRm17='Separated'
B07008PRm18='Widowed'
B07008PRm19='Moved from different municipio:'
B07008PRm20='Never married'
B07008PRm21='Now married, except separated'
B07008PRm22='Divorced'
B07008PRm23='Separated'
B07008PRm24='Widowed'
B07008PRm25='Moved from the United States:'
B07008PRm26='Never married'
B07008PRm27='Now married, except separated'
B07008PRm28='Divorced'
B07008PRm29='Separated'
B07008PRm30='Widowed'
B07008PRm31='Moved from elsewhere:'
B07008PRm32='Never married'
B07008PRm33='Now married, except separated'
B07008PRm34='Divorced'
B07008PRm35='Separated'
B07008PRm36='Widowed'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B07004Am1
B07004Am2
B07004Am3
B07004Am4
B07004Am5
B07004Am6
 
B07004APRm1
B07004APRm2
B07004APRm3
B07004APRm4
B07004APRm5
B07004APRm6
 
B07004Bm1
B07004Bm2
B07004Bm3
B07004Bm4
B07004Bm5
B07004Bm6
 
B07004BPRm1
B07004BPRm2
B07004BPRm3
B07004BPRm4
B07004BPRm5
B07004BPRm6
 
B07004Cm1
B07004Cm2
B07004Cm3
B07004Cm4
B07004Cm5
B07004Cm6
 
B07004CPRm1
B07004CPRm2
B07004CPRm3
B07004CPRm4
B07004CPRm5
B07004CPRm6
 
B07004Dm1
B07004Dm2
B07004Dm3
B07004Dm4
B07004Dm5
B07004Dm6
 
B07004DPRm1
B07004DPRm2
B07004DPRm3
B07004DPRm4
B07004DPRm5
B07004DPRm6
 
B07004Em1
B07004Em2
B07004Em3
B07004Em4
B07004Em5
B07004Em6
 
B07004EPRm1
B07004EPRm2
B07004EPRm3
B07004EPRm4
B07004EPRm5
B07004EPRm6
 
B07004Fm1
B07004Fm2
B07004Fm3
B07004Fm4
B07004Fm5
B07004Fm6
 
B07004FPRm1
B07004FPRm2
B07004FPRm3
B07004FPRm4
B07004FPRm5
B07004FPRm6
 
B07004Gm1
B07004Gm2
B07004Gm3
B07004Gm4
B07004Gm5
B07004Gm6
 
B07004GPRm1
B07004GPRm2
B07004GPRm3
B07004GPRm4
B07004GPRm5
B07004GPRm6
 
B07004Hm1
B07004Hm2
B07004Hm3
B07004Hm4
B07004Hm5
B07004Hm6
 
B07004HPRm1
B07004HPRm2
B07004HPRm3
B07004HPRm4
B07004HPRm5
B07004HPRm6
 
B07004Im1
B07004Im2
B07004Im3
B07004Im4
B07004Im5
B07004Im6
 
B07004IPRm1
B07004IPRm2
B07004IPRm3
B07004IPRm4
B07004IPRm5
B07004IPRm6
 
B07007m1
B07007m2
B07007m3
B07007m4
B07007m5
B07007m6
B07007m7
B07007m8
B07007m9
B07007m10
B07007m11
B07007m12
B07007m13
B07007m14
B07007m15
B07007m16
B07007m17
B07007m18
B07007m19
B07007m20
B07007m21
B07007m22
B07007m23
B07007m24
B07007m25
B07007m26
B07007m27
B07007m28
B07007m29
B07007m30
 
B07007PRm1
B07007PRm2
B07007PRm3
B07007PRm4
B07007PRm5
B07007PRm6
B07007PRm7
B07007PRm8
B07007PRm9
B07007PRm10
B07007PRm11
B07007PRm12
B07007PRm13
B07007PRm14
B07007PRm15
B07007PRm16
B07007PRm17
B07007PRm18
B07007PRm19
B07007PRm20
B07007PRm21
B07007PRm22
B07007PRm23
B07007PRm24
B07007PRm25
B07007PRm26
B07007PRm27
B07007PRm28
B07007PRm29
B07007PRm30
 
B07008m1
B07008m2
B07008m3
B07008m4
B07008m5
B07008m6
B07008m7
B07008m8
B07008m9
B07008m10
B07008m11
B07008m12
B07008m13
B07008m14
B07008m15
B07008m16
B07008m17
B07008m18
B07008m19
B07008m20
B07008m21
B07008m22
B07008m23
B07008m24
B07008m25
B07008m26
B07008m27
B07008m28
B07008m29
B07008m30
B07008m31
B07008m32
B07008m33
B07008m34
B07008m35
B07008m36
 
B07008PRm1
B07008PRm2
B07008PRm3
B07008PRm4
B07008PRm5
B07008PRm6
B07008PRm7
B07008PRm8
B07008PRm9
B07008PRm10
B07008PRm11
B07008PRm12
B07008PRm13
B07008PRm14
B07008PRm15
B07008PRm16
B07008PRm17
B07008PRm18
B07008PRm19
B07008PRm20
B07008PRm21
B07008PRm22
B07008PRm23
B07008PRm24
B07008PRm25
B07008PRm26
B07008PRm27
B07008PRm28
B07008PRm29
B07008PRm30
B07008PRm31
B07008PRm32
B07008PRm33
B07008PRm34
B07008PRm35
B07008PRm36
;
RUN;
TITLE2;
