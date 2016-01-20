TITLE2 "e20125dc0021000";
DATA work.SFe0021dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0021000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (WHITE ALONE) FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  White alone population 1 year and over */
 
B07404APRe1='Total living in area 1 year ago:'
B07404APRe2='Same house'
B07404APRe3='Moved within same municipio'
B07404APRe4='Moved to different municipio'
B07404APRe5='Moved to the United States'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (BLACK OR AFRICAN AMERICAN ALONE) FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Black or African American alone population 1 year and over */
 
B07404BPRe1='Total living in area 1 year ago:'
B07404BPRe2='Same house'
B07404BPRe3='Moved within same municipio'
B07404BPRe4='Moved to different municipio'
B07404BPRe5='Moved to the United States'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (AMERICAN INDIAN AND ALASKA NATIVE ALONE) FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  American Indian and Alaska Native alone population 1 year and over */
 
B07404CPRe1='Total living in area 1 year ago:'
B07404CPRe2='Same house'
B07404CPRe3='Moved within same municipio'
B07404CPRe4='Moved to different municipio'
B07404CPRe5='Moved to the United States'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (ASIAN ALONE) FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Asian alone population 1 year and over */
 
B07404DPRe1='Total living in area 1 year ago:'
B07404DPRe2='Same house'
B07404DPRe3='Moved within same municipio'
B07404DPRe4='Moved to different municipio'
B07404DPRe5='Moved to the United States'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 1 year and over */
 
B07404EPRe1='Total living in area 1 year ago:'
B07404EPRe2='Same house'
B07404EPRe3='Moved within same municipio'
B07404EPRe4='Moved to different municipio'
B07404EPRe5='Moved to the United States'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (SOME OTHER RACE ALONE) FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Some other race alone population 1 year and over */
 
B07404FPRe1='Total living in area 1 year ago:'
B07404FPRe2='Same house'
B07404FPRe3='Moved within same municipio'
B07404FPRe4='Moved to different municipio'
B07404FPRe5='Moved to the United States'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (TWO OR MORE RACES) FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Two or more races population 1 year and over */
 
B07404GPRe1='Total living in area 1 year ago:'
B07404GPRe2='Same house'
B07404GPRe3='Moved within same municipio'
B07404GPRe4='Moved to different municipio'
B07404GPRe5='Moved to the United States'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (WHITE ALONE, NOT HISPANIC OR LATINO) FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  White alone, not Hispanic or Latino population 1 year and over */
 
B07404HPRe1='Total living in area 1 year ago:'
B07404HPRe2='Same house'
B07404HPRe3='Moved within same municipio'
B07404HPRe4='Moved to different municipio'
B07404HPRe5='Moved to the United States'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (HISPANIC OR LATINO) FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Hispanic or Latino population 1 year and over */
 
B07404IPRe1='Total living in area 1 year ago:'
B07404IPRe2='Same house'
B07404IPRe3='Moved within same municipio'
B07404IPRe4='Moved to different municipio'
B07404IPRe5='Moved to the United States'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY CITIZENSHIP STATUS FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Population 1 year and over in the United States */
 
B07407e1='Total living in area 1 year ago:'
B07407e2='Native'
B07407e3='Foreign born:'
B07407e4='Naturalized U.S. citizen'
B07407e5='Not a U.S. citizen'
B07407e6='Same house:'
B07407e7='Native'
B07407e8='Foreign born:'
B07407e9='Naturalized U.S. citizen'
B07407e10='Not a U.S. citizen'
B07407e11='Moved within same county:'
B07407e12='Native'
B07407e13='Foreign born:'
B07407e14='Naturalized U.S. citizen'
B07407e15='Not a U.S. citizen'
B07407e16='Moved to different county within same state:'
B07407e17='Native'
B07407e18='Foreign born:'
B07407e19='Naturalized U.S. citizen'
B07407e20='Not a U.S. citizen'
B07407e21='Moved to different state:'
B07407e22='Native'
B07407e23='Foreign born:'
B07407e24='Naturalized U.S. citizen'
B07407e25='Not a U.S. citizen'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY CITIZENSHIP STATUS FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Population 1 year and over */
 
B07407PRe1='Total living in area 1 year ago:'
B07407PRe2='Native'
B07407PRe3='Foreign born:'
B07407PRe4='Naturalized U.S. citizen'
B07407PRe5='Not a U.S. citizen'
B07407PRe6='Same house:'
B07407PRe7='Native'
B07407PRe8='Foreign born:'
B07407PRe9='Naturalized U.S. citizen'
B07407PRe10='Not a U.S. citizen'
B07407PRe11='Moved within same municipio:'
B07407PRe12='Native'
B07407PRe13='Foreign born:'
B07407PRe14='Naturalized U.S. citizen'
B07407PRe15='Not a U.S. citizen'
B07407PRe16='Moved to different municipio:'
B07407PRe17='Native'
B07407PRe18='Foreign born:'
B07407PRe19='Naturalized U.S. citizen'
B07407PRe20='Not a U.S. citizen'
B07407PRe21='Moved to the United States:'
B07407PRe22='Native'
B07407PRe23='Foreign born:'
B07407PRe24='Naturalized U.S. citizen'
B07407PRe25='Not a U.S. citizen'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY MARITAL STATUS FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Population 15 years and over in the United States */
 
B07408e1='Total living in area 1 year ago:'
B07408e2='Never married'
B07408e3='Now married, except separated'
B07408e4='Divorced'
B07408e5='Separated'
B07408e6='Widowed'
B07408e7='Same house:'
B07408e8='Never married'
B07408e9='Now married, except separated'
B07408e10='Divorced'
B07408e11='Separated'
B07408e12='Widowed'
B07408e13='Moved within same county:'
B07408e14='Never married'
B07408e15='Now married, except separated'
B07408e16='Divorced'
B07408e17='Separated'
B07408e18='Widowed'
B07408e19='Moved to different county within same state:'
B07408e20='Never married'
B07408e21='Now married, except separated'
B07408e22='Divorced'
B07408e23='Separated'
B07408e24='Widowed'
B07408e25='Moved to different state:'
B07408e26='Never married'
B07408e27='Now married, except separated'
B07408e28='Divorced'
B07408e29='Separated'
B07408e30='Widowed'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY MARITAL STATUS FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Population 15 years and over */
 
B07408PRe1='Total living in area 1 year ago:'
B07408PRe2='Never married'
B07408PRe3='Now married, except separated'
B07408PRe4='Divorced'
B07408PRe5='Separated'
B07408PRe6='Widowed'
B07408PRe7='Same house:'
B07408PRe8='Never married'
B07408PRe9='Now married, except separated'
B07408PRe10='Divorced'
B07408PRe11='Separated'
B07408PRe12='Widowed'
B07408PRe13='Moved within same municipio:'
B07408PRe14='Never married'
B07408PRe15='Now married, except separated'
B07408PRe16='Divorced'
B07408PRe17='Separated'
B07408PRe18='Widowed'
B07408PRe19='Moved to different municipio:'
B07408PRe20='Never married'
B07408PRe21='Now married, except separated'
B07408PRe22='Divorced'
B07408PRe23='Separated'
B07408PRe24='Widowed'
B07408PRe25='Moved to the United States:'
B07408PRe26='Never married'
B07408PRe27='Now married, except separated'
B07408PRe28='Divorced'
B07408PRe29='Separated'
B07408PRe30='Widowed'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY EDUCATIONAL ATTAINMENT FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Population 25 years and over in the United States */
 
B07409e1='Total living in area 1 year ago:'
B07409e2='Less than high school graduate'
B07409e3='High school graduate (includes equivalency)'
B07409e4='Some college or associate''s degree'
B07409e5='Bachelor''s degree'
B07409e6='Graduate or professional degree'
B07409e7='Same house:'
B07409e8='Less than high school graduate'
B07409e9='High school graduate (includes equivalency)'
B07409e10='Some college or associate''s degree'
B07409e11='Bachelor''s degree'
B07409e12='Graduate or professional degree'
B07409e13='Moved within same county:'
B07409e14='Less than high school graduate'
B07409e15='High school graduate (includes equivalency)'
B07409e16='Some college or associate''s degree'
B07409e17='Bachelor''s degree'
B07409e18='Graduate or professional degree'
B07409e19='Moved to different county within same state:'
B07409e20='Less than high school graduate'
B07409e21='High school graduate (includes equivalency)'
B07409e22='Some college or associate''s degree'
B07409e23='Bachelor''s degree'
B07409e24='Graduate or professional degree'
B07409e25='Moved to different state:'
B07409e26='Less than high school graduate'
B07409e27='High school graduate (includes equivalency)'
B07409e28='Some college or associate''s degree'
B07409e29='Bachelor''s degree'
B07409e30='Graduate or professional degree'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY EDUCATIONAL ATTAINMENT FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Population 25 years and over */
 
B07409PRe1='Total living in area 1 year ago:'
B07409PRe2='Less than high school graduate'
B07409PRe3='High school graduate (includes equivalency)'
B07409PRe4='Some college or associate''s degree'
B07409PRe5='Bachelor''s degree'
B07409PRe6='Graduate or professional degree'
B07409PRe7='Same house:'
B07409PRe8='Less than high school graduate'
B07409PRe9='High school graduate (includes equivalency)'
B07409PRe10='Some college or associate''s degree'
B07409PRe11='Bachelor''s degree'
B07409PRe12='Graduate or professional degree'
B07409PRe13='Moved within same municipio:'
B07409PRe14='Less than high school graduate'
B07409PRe15='High school graduate (includes equivalency)'
B07409PRe16='Some college or associate''s degree'
B07409PRe17='Bachelor''s degree'
B07409PRe18='Graduate or professional degree'
B07409PRe19='Moved to different municipio:'
B07409PRe20='Less than high school graduate'
B07409PRe21='High school graduate (includes equivalency)'
B07409PRe22='Some college or associate''s degree'
B07409PRe23='Bachelor''s degree'
B07409PRe24='Graduate or professional degree'
B07409PRe25='Moved to the United States:'
B07409PRe26='Less than high school graduate'
B07409PRe27='High school graduate (includes equivalency)'
B07409PRe28='Some college or associate''s degree'
B07409PRe29='Bachelor''s degree'
B07409PRe30='Graduate or professional degree'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B07404APRe1
B07404APRe2
B07404APRe3
B07404APRe4
B07404APRe5
 
B07404BPRe1
B07404BPRe2
B07404BPRe3
B07404BPRe4
B07404BPRe5
 
B07404CPRe1
B07404CPRe2
B07404CPRe3
B07404CPRe4
B07404CPRe5
 
B07404DPRe1
B07404DPRe2
B07404DPRe3
B07404DPRe4
B07404DPRe5
 
B07404EPRe1
B07404EPRe2
B07404EPRe3
B07404EPRe4
B07404EPRe5
 
B07404FPRe1
B07404FPRe2
B07404FPRe3
B07404FPRe4
B07404FPRe5
 
B07404GPRe1
B07404GPRe2
B07404GPRe3
B07404GPRe4
B07404GPRe5
 
B07404HPRe1
B07404HPRe2
B07404HPRe3
B07404HPRe4
B07404HPRe5
 
B07404IPRe1
B07404IPRe2
B07404IPRe3
B07404IPRe4
B07404IPRe5
 
B07407e1
B07407e2
B07407e3
B07407e4
B07407e5
B07407e6
B07407e7
B07407e8
B07407e9
B07407e10
B07407e11
B07407e12
B07407e13
B07407e14
B07407e15
B07407e16
B07407e17
B07407e18
B07407e19
B07407e20
B07407e21
B07407e22
B07407e23
B07407e24
B07407e25
 
B07407PRe1
B07407PRe2
B07407PRe3
B07407PRe4
B07407PRe5
B07407PRe6
B07407PRe7
B07407PRe8
B07407PRe9
B07407PRe10
B07407PRe11
B07407PRe12
B07407PRe13
B07407PRe14
B07407PRe15
B07407PRe16
B07407PRe17
B07407PRe18
B07407PRe19
B07407PRe20
B07407PRe21
B07407PRe22
B07407PRe23
B07407PRe24
B07407PRe25
 
B07408e1
B07408e2
B07408e3
B07408e4
B07408e5
B07408e6
B07408e7
B07408e8
B07408e9
B07408e10
B07408e11
B07408e12
B07408e13
B07408e14
B07408e15
B07408e16
B07408e17
B07408e18
B07408e19
B07408e20
B07408e21
B07408e22
B07408e23
B07408e24
B07408e25
B07408e26
B07408e27
B07408e28
B07408e29
B07408e30
 
B07408PRe1
B07408PRe2
B07408PRe3
B07408PRe4
B07408PRe5
B07408PRe6
B07408PRe7
B07408PRe8
B07408PRe9
B07408PRe10
B07408PRe11
B07408PRe12
B07408PRe13
B07408PRe14
B07408PRe15
B07408PRe16
B07408PRe17
B07408PRe18
B07408PRe19
B07408PRe20
B07408PRe21
B07408PRe22
B07408PRe23
B07408PRe24
B07408PRe25
B07408PRe26
B07408PRe27
B07408PRe28
B07408PRe29
B07408PRe30
 
B07409e1
B07409e2
B07409e3
B07409e4
B07409e5
B07409e6
B07409e7
B07409e8
B07409e9
B07409e10
B07409e11
B07409e12
B07409e13
B07409e14
B07409e15
B07409e16
B07409e17
B07409e18
B07409e19
B07409e20
B07409e21
B07409e22
B07409e23
B07409e24
B07409e25
B07409e26
B07409e27
B07409e28
B07409e29
B07409e30
 
B07409PRe1
B07409PRe2
B07409PRe3
B07409PRe4
B07409PRe5
B07409PRe6
B07409PRe7
B07409PRe8
B07409PRe9
B07409PRe10
B07409PRe11
B07409PRe12
B07409PRe13
B07409PRe14
B07409PRe15
B07409PRe16
B07409PRe17
B07409PRe18
B07409PRe19
B07409PRe20
B07409PRe21
B07409PRe22
B07409PRe23
B07409PRe24
B07409PRe25
B07409PRe26
B07409PRe27
B07409PRe28
B07409PRe29
B07409PRe30
;
RUN;
TITLE2;
