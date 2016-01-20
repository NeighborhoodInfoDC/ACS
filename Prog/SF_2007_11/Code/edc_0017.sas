TITLE2 "e20115dc0017000";
DATA work.SFe0017dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0017000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (WHITE ALONE) FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  White alone population 1 year and over in the United States */
 
B07004Ae1='Total:'
B07004Ae2='Same house 1 year ago'
B07004Ae3='Moved within same county'
B07004Ae4='Moved from different county within same state'
B07004Ae5='Moved from different state'
B07004Ae6='Moved from abroad'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (WHITE ALONE) FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  White alone population 1 year and over in Puerto Rico */
 
B07004APRe1='Total:'
B07004APRe2='Same house 1 year ago'
B07004APRe3='Moved within same municipio'
B07004APRe4='Moved from different municipio'
B07004APRe5='Moved from the United States'
B07004APRe6='Moved from elsewhere'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (BLACK OR AFRICAN AMERICAN ALONE) FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Black or African American alone population 1 year and over in the United States */
 
B07004Be1='Total:'
B07004Be2='Same house 1 year ago'
B07004Be3='Moved within same county'
B07004Be4='Moved from different county within same state'
B07004Be5='Moved from different state'
B07004Be6='Moved from abroad'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (BLACK OR AFRICAN AMERICAN ALONE) FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Black or African American alone population 1 year and over in Puerto Rico */
 
B07004BPRe1='Total:'
B07004BPRe2='Same house 1 year ago'
B07004BPRe3='Moved within same municipio'
B07004BPRe4='Moved from different municipio'
B07004BPRe5='Moved from the United States'
B07004BPRe6='Moved from elsewhere'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (AMERICAN INDIAN AND ALASKA NATIVE ALONE) FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  American Indian and Alaskan Native alone population 1 year and over in the United States */
 
B07004Ce1='Total:'
B07004Ce2='Same house 1 year ago'
B07004Ce3='Moved within same county'
B07004Ce4='Moved from different county within same state'
B07004Ce5='Moved from different state'
B07004Ce6='Moved from abroad'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (AMERICAN INDIAN AND ALASKA NATIVE ALONE) FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  American Indian and Alaskan Native alone population 1 year and over in Puerto Rico */
 
B07004CPRe1='Total:'
B07004CPRe2='Same house 1 year ago'
B07004CPRe3='Moved within same municipio'
B07004CPRe4='Moved from different municipio'
B07004CPRe5='Moved from the United States'
B07004CPRe6='Moved from elsewhere'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (ASIAN ALONE) FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Asian alone population 1 year and over in the United States */
 
B07004De1='Total:'
B07004De2='Same house 1 year ago'
B07004De3='Moved within same county'
B07004De4='Moved from different county within same state'
B07004De5='Moved from different state'
B07004De6='Moved from abroad'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (ASIAN ALONE) FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Asian alone population 1 year and over in Puerto Rico */
 
B07004DPRe1='Total:'
B07004DPRe2='Same house 1 year ago'
B07004DPRe3='Moved within same municipio'
B07004DPRe4='Moved from different municipio'
B07004DPRe5='Moved from the United States'
B07004DPRe6='Moved from elsewhere'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 1 year and over in the United States */
 
B07004Ee1='Total:'
B07004Ee2='Same house 1 year ago'
B07004Ee3='Moved within same county'
B07004Ee4='Moved from different county within same state'
B07004Ee5='Moved from different state'
B07004Ee6='Moved from abroad'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 1 year and over in Puerto Rico */
 
B07004EPRe1='Total:'
B07004EPRe2='Same house 1 year ago'
B07004EPRe3='Moved within same municipio'
B07004EPRe4='Moved from different municipio'
B07004EPRe5='Moved from the United States'
B07004EPRe6='Moved from elsewhere'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (SOME OTHER RACE ALONE) FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Some other race alone population 1 year and over in the United States */
 
B07004Fe1='Total:'
B07004Fe2='Same house 1 year ago'
B07004Fe3='Moved within same county'
B07004Fe4='Moved from different county within same state'
B07004Fe5='Moved from different state'
B07004Fe6='Moved from abroad'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (SOME OTHER RACE ALONE) FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Some other race alone population 1 year and over in Puerto Rico */
 
B07004FPRe1='Total:'
B07004FPRe2='Same house 1 year ago'
B07004FPRe3='Moved within same municipio'
B07004FPRe4='Moved from different municipio'
B07004FPRe5='Moved from the United States'
B07004FPRe6='Moved from elsewhere'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (TWO OR MORE RACES) FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Two or more races population 1 year and over in the United States */
 
B07004Ge1='Total:'
B07004Ge2='Same house 1 year ago'
B07004Ge3='Moved within same county'
B07004Ge4='Moved from different county within same state'
B07004Ge5='Moved from different state'
B07004Ge6='Moved from abroad'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (TWO OR MORE RACES) FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Two or more races population 1 year and over in Puerto Rico */
 
B07004GPRe1='Total:'
B07004GPRe2='Same house 1 year ago'
B07004GPRe3='Moved within same municipio'
B07004GPRe4='Moved from different municipio'
B07004GPRe5='Moved from the United States'
B07004GPRe6='Moved from elsewhere'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (WHITE ALONE, NOT HISPANIC OR LATINO) FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  White alone, not Hispanic or Latino population 1 year and over in the United States */
 
B07004He1='Total:'
B07004He2='Same house 1 year ago'
B07004He3='Moved within same county'
B07004He4='Moved from different county within same state'
B07004He5='Moved from different state'
B07004He6='Moved from abroad'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (WHITE ALONE, NOT HISPANIC OR LATINO) FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  White alone, not Hispanic or Latino population 1 year and over in Puerto Rico */
 
B07004HPRe1='Total:'
B07004HPRe2='Same house 1 year ago'
B07004HPRe3='Moved within same municipio'
B07004HPRe4='Moved from different municipio'
B07004HPRe5='Moved from the United States'
B07004HPRe6='Moved from elsewhere'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (HISPANIC OR LATINO) FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Hispanic or Latino population 1 year and over in the United States */
 
B07004Ie1='Total:'
B07004Ie2='Same house 1 year ago'
B07004Ie3='Moved within same county'
B07004Ie4='Moved from different county within same state'
B07004Ie5='Moved from different state'
B07004Ie6='Moved from abroad'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR (HISPANIC OR LATINO) FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Hispanic or Latino population 1 year and over in Puerto Rico */
 
B07004IPRe1='Total:'
B07004IPRe2='Same house 1 year ago'
B07004IPRe3='Moved within same municipio'
B07004IPRe4='Moved from different municipio'
B07004IPRe5='Moved from the United States'
B07004IPRe6='Moved from elsewhere'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY CITIZENSHIP STATUS FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Population 1 year and over in the United States */
 
B07007e1='Total:'
B07007e2='Native'
B07007e3='Foreign born:'
B07007e4='Naturalized U.S. citizen'
B07007e5='Not a U.S. citizen'
B07007e6='Same house 1 year ago:'
B07007e7='Native'
B07007e8='Foreign born:'
B07007e9='Naturalized U.S. citizen'
B07007e10='Not a U.S. citizen'
B07007e11='Moved within same county:'
B07007e12='Native'
B07007e13='Foreign born:'
B07007e14='Naturalized U.S. citizen'
B07007e15='Not a U.S. citizen'
B07007e16='Moved from different county within same state:'
B07007e17='Native'
B07007e18='Foreign born:'
B07007e19='Naturalized U.S. citizen'
B07007e20='Not a U.S. citizen'
B07007e21='Moved from different state:'
B07007e22='Native'
B07007e23='Foreign born:'
B07007e24='Naturalized U.S. citizen'
B07007e25='Not a U.S. citizen'
B07007e26='Moved from abroad:'
B07007e27='Native'
B07007e28='Foreign born:'
B07007e29='Naturalized U.S. citizen'
B07007e30='Not a U.S. citizen'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY CITIZENSHIP STATUS FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Population 1 year and over in Puerto Rico */
 
B07007PRe1='Total:'
B07007PRe2='Native'
B07007PRe3='Foreign born:'
B07007PRe4='Naturalized U.S. citizen'
B07007PRe5='Not a U.S. citizen'
B07007PRe6='Same house 1 year ago:'
B07007PRe7='Native'
B07007PRe8='Foreign born:'
B07007PRe9='Naturalized U.S. citizen'
B07007PRe10='Not a U.S. citizen'
B07007PRe11='Moved within same municipio:'
B07007PRe12='Native'
B07007PRe13='Foreign born:'
B07007PRe14='Naturalized U.S. citizen'
B07007PRe15='Not a U.S. citizen'
B07007PRe16='Moved from different municipio:'
B07007PRe17='Native'
B07007PRe18='Foreign born:'
B07007PRe19='Naturalized U.S. citizen'
B07007PRe20='Not a U.S. citizen'
B07007PRe21='Moved from the United States:'
B07007PRe22='Native'
B07007PRe23='Foreign born:'
B07007PRe24='Naturalized U.S. citizen'
B07007PRe25='Not a U.S. citizen'
B07007PRe26='Moved from elsewhere:'
B07007PRe27='Native'
B07007PRe28='Foreign born:'
B07007PRe29='Naturalized U.S. citizen'
B07007PRe30='Not a U.S. citizen'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY MARITAL STATUS FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Population 15 years and over in the United States */
 
B07008e1='Total:'
B07008e2='Never married'
B07008e3='Now married, except separated'
B07008e4='Divorced'
B07008e5='Separated'
B07008e6='Widowed'
B07008e7='Same house 1 year ago:'
B07008e8='Never married'
B07008e9='Now married, except separated'
B07008e10='Divorced'
B07008e11='Separated'
B07008e12='Widowed'
B07008e13='Moved within same county:'
B07008e14='Never married'
B07008e15='Now married, except separated'
B07008e16='Divorced'
B07008e17='Separated'
B07008e18='Widowed'
B07008e19='Moved from different county within same state:'
B07008e20='Never married'
B07008e21='Now married, except separated'
B07008e22='Divorced'
B07008e23='Separated'
B07008e24='Widowed'
B07008e25='Moved from different state:'
B07008e26='Never married'
B07008e27='Now married, except separated'
B07008e28='Divorced'
B07008e29='Separated'
B07008e30='Widowed'
B07008e31='Moved from abroad:'
B07008e32='Never married'
B07008e33='Now married, except separated'
B07008e34='Divorced'
B07008e35='Separated'
B07008e36='Widowed'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY MARITAL STATUS FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Population 15 years and over in Puerto Rico */
 
B07008PRe1='Total:'
B07008PRe2='Never married'
B07008PRe3='Now married, except separated'
B07008PRe4='Divorced'
B07008PRe5='Separated'
B07008PRe6='Widowed'
B07008PRe7='Same house 1 year ago:'
B07008PRe8='Never married'
B07008PRe9='Now married, except separated'
B07008PRe10='Divorced'
B07008PRe11='Separated'
B07008PRe12='Widowed'
B07008PRe13='Moved within same municipio:'
B07008PRe14='Never married'
B07008PRe15='Now married, except separated'
B07008PRe16='Divorced'
B07008PRe17='Separated'
B07008PRe18='Widowed'
B07008PRe19='Moved from different municipio:'
B07008PRe20='Never married'
B07008PRe21='Now married, except separated'
B07008PRe22='Divorced'
B07008PRe23='Separated'
B07008PRe24='Widowed'
B07008PRe25='Moved from the United States:'
B07008PRe26='Never married'
B07008PRe27='Now married, except separated'
B07008PRe28='Divorced'
B07008PRe29='Separated'
B07008PRe30='Widowed'
B07008PRe31='Moved from elsewhere:'
B07008PRe32='Never married'
B07008PRe33='Now married, except separated'
B07008PRe34='Divorced'
B07008PRe35='Separated'
B07008PRe36='Widowed'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B07004Ae1
B07004Ae2
B07004Ae3
B07004Ae4
B07004Ae5
B07004Ae6
 
B07004APRe1
B07004APRe2
B07004APRe3
B07004APRe4
B07004APRe5
B07004APRe6
 
B07004Be1
B07004Be2
B07004Be3
B07004Be4
B07004Be5
B07004Be6
 
B07004BPRe1
B07004BPRe2
B07004BPRe3
B07004BPRe4
B07004BPRe5
B07004BPRe6
 
B07004Ce1
B07004Ce2
B07004Ce3
B07004Ce4
B07004Ce5
B07004Ce6
 
B07004CPRe1
B07004CPRe2
B07004CPRe3
B07004CPRe4
B07004CPRe5
B07004CPRe6
 
B07004De1
B07004De2
B07004De3
B07004De4
B07004De5
B07004De6
 
B07004DPRe1
B07004DPRe2
B07004DPRe3
B07004DPRe4
B07004DPRe5
B07004DPRe6
 
B07004Ee1
B07004Ee2
B07004Ee3
B07004Ee4
B07004Ee5
B07004Ee6
 
B07004EPRe1
B07004EPRe2
B07004EPRe3
B07004EPRe4
B07004EPRe5
B07004EPRe6
 
B07004Fe1
B07004Fe2
B07004Fe3
B07004Fe4
B07004Fe5
B07004Fe6
 
B07004FPRe1
B07004FPRe2
B07004FPRe3
B07004FPRe4
B07004FPRe5
B07004FPRe6
 
B07004Ge1
B07004Ge2
B07004Ge3
B07004Ge4
B07004Ge5
B07004Ge6
 
B07004GPRe1
B07004GPRe2
B07004GPRe3
B07004GPRe4
B07004GPRe5
B07004GPRe6
 
B07004He1
B07004He2
B07004He3
B07004He4
B07004He5
B07004He6
 
B07004HPRe1
B07004HPRe2
B07004HPRe3
B07004HPRe4
B07004HPRe5
B07004HPRe6
 
B07004Ie1
B07004Ie2
B07004Ie3
B07004Ie4
B07004Ie5
B07004Ie6
 
B07004IPRe1
B07004IPRe2
B07004IPRe3
B07004IPRe4
B07004IPRe5
B07004IPRe6
 
B07007e1
B07007e2
B07007e3
B07007e4
B07007e5
B07007e6
B07007e7
B07007e8
B07007e9
B07007e10
B07007e11
B07007e12
B07007e13
B07007e14
B07007e15
B07007e16
B07007e17
B07007e18
B07007e19
B07007e20
B07007e21
B07007e22
B07007e23
B07007e24
B07007e25
B07007e26
B07007e27
B07007e28
B07007e29
B07007e30
 
B07007PRe1
B07007PRe2
B07007PRe3
B07007PRe4
B07007PRe5
B07007PRe6
B07007PRe7
B07007PRe8
B07007PRe9
B07007PRe10
B07007PRe11
B07007PRe12
B07007PRe13
B07007PRe14
B07007PRe15
B07007PRe16
B07007PRe17
B07007PRe18
B07007PRe19
B07007PRe20
B07007PRe21
B07007PRe22
B07007PRe23
B07007PRe24
B07007PRe25
B07007PRe26
B07007PRe27
B07007PRe28
B07007PRe29
B07007PRe30
 
B07008e1
B07008e2
B07008e3
B07008e4
B07008e5
B07008e6
B07008e7
B07008e8
B07008e9
B07008e10
B07008e11
B07008e12
B07008e13
B07008e14
B07008e15
B07008e16
B07008e17
B07008e18
B07008e19
B07008e20
B07008e21
B07008e22
B07008e23
B07008e24
B07008e25
B07008e26
B07008e27
B07008e28
B07008e29
B07008e30
B07008e31
B07008e32
B07008e33
B07008e34
B07008e35
B07008e36
 
B07008PRe1
B07008PRe2
B07008PRe3
B07008PRe4
B07008PRe5
B07008PRe6
B07008PRe7
B07008PRe8
B07008PRe9
B07008PRe10
B07008PRe11
B07008PRe12
B07008PRe13
B07008PRe14
B07008PRe15
B07008PRe16
B07008PRe17
B07008PRe18
B07008PRe19
B07008PRe20
B07008PRe21
B07008PRe22
B07008PRe23
B07008PRe24
B07008PRe25
B07008PRe26
B07008PRe27
B07008PRe28
B07008PRe29
B07008PRe30
B07008PRe31
B07008PRe32
B07008PRe33
B07008PRe34
B07008PRe35
B07008PRe36
;
RUN;
TITLE2;
