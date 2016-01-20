TITLE2 "e20125dc0018000";
DATA work.SFe0018dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0018000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY EDUCATIONAL ATTAINMENT FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Population 25 years and over in the United States */
 
B07009e1='Total:'
B07009e2='Less than high school graduate'
B07009e3='High school graduate (includes equivalency)'
B07009e4='Some college or associate''s degree'
B07009e5='Bachelor''s degree'
B07009e6='Graduate or professional degree'
B07009e7='Same house 1 year ago:'
B07009e8='Less than high school graduate'
B07009e9='High school graduate (includes equivalency)'
B07009e10='Some college or associate''s degree'
B07009e11='Bachelor''s degree'
B07009e12='Graduate or professional degree'
B07009e13='Moved within same county:'
B07009e14='Less than high school graduate'
B07009e15='High school graduate (includes equivalency)'
B07009e16='Some college or associate''s degree'
B07009e17='Bachelor''s degree'
B07009e18='Graduate or professional degree'
B07009e19='Moved from different county within same state:'
B07009e20='Less than high school graduate'
B07009e21='High school graduate (includes equivalency)'
B07009e22='Some college or associate''s degree'
B07009e23='Bachelor''s degree'
B07009e24='Graduate or professional degree'
B07009e25='Moved from different state:'
B07009e26='Less than high school graduate'
B07009e27='High school graduate (includes equivalency)'
B07009e28='Some college or associate''s degree'
B07009e29='Bachelor''s degree'
B07009e30='Graduate or professional degree'
B07009e31='Moved from abroad:'
B07009e32='Less than high school graduate'
B07009e33='High school graduate (includes equivalency)'
B07009e34='Some college or associate''s degree'
B07009e35='Bachelor''s degree'
B07009e36='Graduate or professional degree'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY EDUCATIONAL ATTAINMENT FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Population 25 years and over in Puerto Rico */
 
B07009PRe1='Total:'
B07009PRe2='Less than high school graduate'
B07009PRe3='High school graduate (includes equivalency)'
B07009PRe4='Some college or associate''s degree'
B07009PRe5='Bachelor''s degree'
B07009PRe6='Graduate or professional degree'
B07009PRe7='Same house 1 year ago:'
B07009PRe8='Less than high school graduate'
B07009PRe9='High school graduate (includes equivalency)'
B07009PRe10='Some college or associate''s degree'
B07009PRe11='Bachelor''s degree'
B07009PRe12='Graduate or professional degree'
B07009PRe13='Moved within same municipio:'
B07009PRe14='Less than high school graduate'
B07009PRe15='High school graduate (includes equivalency)'
B07009PRe16='Some college or associate''s degree'
B07009PRe17='Bachelor''s degree'
B07009PRe18='Graduate or professional degree'
B07009PRe19='Moved from different municipio:'
B07009PRe20='Less than high school graduate'
B07009PRe21='High school graduate (includes equivalency)'
B07009PRe22='Some college or associate''s degree'
B07009PRe23='Bachelor''s degree'
B07009PRe24='Graduate or professional degree'
B07009PRe25='Moved from the United States:'
B07009PRe26='Less than high school graduate'
B07009PRe27='High school graduate (includes equivalency)'
B07009PRe28='Some college or associate''s degree'
B07009PRe29='Bachelor''s degree'
B07009PRe30='Graduate or professional degree'
B07009PRe31='Moved from elsewhere:'
B07009PRe32='Less than high school graduate'
B07009PRe33='High school graduate (includes equivalency)'
B07009PRe34='Some college or associate''s degree'
B07009PRe35='Bachelor''s degree'
B07009PRe36='Graduate or professional degree'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY INDIVIDUAL INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Population 15 years and over in the United States */
 
B07010e1='Total:'
B07010e2='No income'
B07010e3='With income:'
B07010e4='$1 to $9,999 or loss'
B07010e5='$10,000 to $14,999'
B07010e6='$15,000 to $24,999'
B07010e7='$25,000 to $34,999'
B07010e8='$35,000 to $49,999'
B07010e9='$50,000 to $64,999'
B07010e10='$65,000 to $74,999'
B07010e11='$75,000 or more'
B07010e12='Same house 1 year ago:'
B07010e13='No income'
B07010e14='With income:'
B07010e15='$1 to $9,999 or loss'
B07010e16='$10,000 to $14,999'
B07010e17='$15,000 to $24,999'
B07010e18='$25,000 to $34,999'
B07010e19='$35,000 to $49,999'
B07010e20='$50,000 to $64,999'
B07010e21='$65,000 to $74,999'
B07010e22='$75,000 or more'
B07010e23='Moved within same county:'
B07010e24='No income'
B07010e25='With income:'
B07010e26='$1 to $9,999 or loss'
B07010e27='$10,000 to $14,999'
B07010e28='$15,000 to $24,999'
B07010e29='$25,000 to $34,999'
B07010e30='$35,000 to $49,999'
B07010e31='$50,000 to $64,999'
B07010e32='$65,000 to $74,999'
B07010e33='$75,000 or more'
B07010e34='Moved from different county within same state:'
B07010e35='No income'
B07010e36='With income:'
B07010e37='$1 to $9,999 or loss'
B07010e38='$10,000 to $14,999'
B07010e39='$15,000 to $24,999'
B07010e40='$25,000 to $34,999'
B07010e41='$35,000 to $49,999'
B07010e42='$50,000 to $64,999'
B07010e43='$65,000 to $74,999'
B07010e44='$75,000 or more'
B07010e45='Moved from different state:'
B07010e46='No income'
B07010e47='With income:'
B07010e48='$1 to $9,999 or loss'
B07010e49='$10,000 to $14,999'
B07010e50='$15,000 to $24,999'
B07010e51='$25,000 to $34,999'
B07010e52='$35,000 to $49,999'
B07010e53='$50,000 to $64,999'
B07010e54='$65,000 to $74,999'
B07010e55='$75,000 or more'
B07010e56='Moved from abroad:'
B07010e57='No income'
B07010e58='With income:'
B07010e59='$1 to $9,999 or loss'
B07010e60='$10,000 to $14,999'
B07010e61='$15,000 to $24,999'
B07010e62='$25,000 to $34,999'
B07010e63='$35,000 to $49,999'
B07010e64='$50,000 to $64,999'
B07010e65='$65,000 to $74,999'
B07010e66='$75,000 or more'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY INDIVIDUAL INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Population 15 years and over in Puerto Rico */
 
B07010PRe1='Total:'
B07010PRe2='No income'
B07010PRe3='With income:'
B07010PRe4='$1 to $9,999 or loss'
B07010PRe5='$10,000 to $14,999'
B07010PRe6='$15,000 to $24,999'
B07010PRe7='$25,000 to $34,999'
B07010PRe8='$35,000 to $49,999'
B07010PRe9='$50,000 to $64,999'
B07010PRe10='$65,000 to $74,999'
B07010PRe11='$75,000 or more'
B07010PRe12='Same house 1 year ago:'
B07010PRe13='No income'
B07010PRe14='With income:'
B07010PRe15='$1 to $9,999 or loss'
B07010PRe16='$10,000 to $14,999'
B07010PRe17='$15,000 to $24,999'
B07010PRe18='$25,000 to $34,999'
B07010PRe19='$35,000 to $49,999'
B07010PRe20='$50,000 to $64,999'
B07010PRe21='$65,000 to $74,999'
B07010PRe22='$75,000 or more'
B07010PRe23='Moved within same municipio:'
B07010PRe24='No income'
B07010PRe25='With income:'
B07010PRe26='$1 to $9,999 or loss'
B07010PRe27='$10,000 to $14,999'
B07010PRe28='$15,000 to $24,999'
B07010PRe29='$25,000 to $34,999'
B07010PRe30='$35,000 to $49,999'
B07010PRe31='$50,000 to $64,999'
B07010PRe32='$65,000 to $74,999'
B07010PRe33='$75,000 or more'
B07010PRe34='Moved from different municipio:'
B07010PRe35='No income'
B07010PRe36='With income:'
B07010PRe37='$1 to $9,999 or loss'
B07010PRe38='$10,000 to $14,999'
B07010PRe39='$15,000 to $24,999'
B07010PRe40='$25,000 to $34,999'
B07010PRe41='$35,000 to $49,999'
B07010PRe42='$50,000 to $64,999'
B07010PRe43='$65,000 to $74,999'
B07010PRe44='$75,000 or more'
B07010PRe45='Moved from the United States:'
B07010PRe46='No income'
B07010PRe47='With income:'
B07010PRe48='$1 to $9,999 or loss'
B07010PRe49='$10,000 to $14,999'
B07010PRe50='$15,000 to $24,999'
B07010PRe51='$25,000 to $34,999'
B07010PRe52='$35,000 to $49,999'
B07010PRe53='$50,000 to $64,999'
B07010PRe54='$65,000 to $74,999'
B07010PRe55='$75,000 or more'
B07010PRe56='Moved from elsewhere:'
B07010PRe57='No income'
B07010PRe58='With income:'
B07010PRe59='$1 to $9,999 or loss'
B07010PRe60='$10,000 to $14,999'
B07010PRe61='$15,000 to $24,999'
B07010PRe62='$25,000 to $34,999'
B07010PRe63='$35,000 to $49,999'
B07010PRe64='$50,000 to $64,999'
B07010PRe65='$65,000 to $74,999'
B07010PRe66='$75,000 or more'
/*MEDIAN INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Population 15 years and over in the United States with income */
/*Median income in the past 12 months -- */
 
B07011e1='Total:'
B07011e2='Same house 1 year ago'
B07011e3='Moved within same county'
B07011e4='Moved from different county within same state'
B07011e5='Moved from different state'
B07011e6='Moved from abroad'
/*MEDIAN INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Population 15 years and over in Puerto Rico with income */
/*Median income in the past 12 months -- */
 
B07011PRe1='Total:'
B07011PRe2='Same house 1 year ago'
B07011PRe3='Moved within same municipio'
B07011PRe4='Moved from different municipio'
B07011PRe5='Moved from the United States'
B07011PRe6='Moved from elsewhere'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY POVERTY STATUS IN THE PAST 12 MONTHS FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Population 1 year and over in the United States for whom poverty status is determined */
 
B07012e1='Total:'
B07012e2='Below 100 percent of the poverty level'
B07012e3='100 to 149 percent of the poverty level'
B07012e4='At or above 150 percent of the poverty level'
B07012e5='Same house 1 year ago:'
B07012e6='Below 100 percent of the poverty level'
B07012e7='100 to 149 percent of the poverty level'
B07012e8='At or above 150 percent of the poverty level'
B07012e9='Moved within same county:'
B07012e10='Below 100 percent of the poverty level'
B07012e11='100 to 149 percent of the poverty level'
B07012e12='At or above 150 percent of the poverty level'
B07012e13='Moved from different county within same state:'
B07012e14='Below 100 percent of the poverty level'
B07012e15='100 to 149 percent of the poverty level'
B07012e16='At or above 150 percent of the poverty level'
B07012e17='Moved from different state:'
B07012e18='Below 100 percent of the poverty level'
B07012e19='100 to 149 percent of the poverty level'
B07012e20='At or above 150 percent of the poverty level'
B07012e21='Moved from abroad:'
B07012e22='Below 100 percent of the poverty level'
B07012e23='100 to 149 percent of the poverty level'
B07012e24='At or above 150 percent of the poverty level'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B07009e1
B07009e2
B07009e3
B07009e4
B07009e5
B07009e6
B07009e7
B07009e8
B07009e9
B07009e10
B07009e11
B07009e12
B07009e13
B07009e14
B07009e15
B07009e16
B07009e17
B07009e18
B07009e19
B07009e20
B07009e21
B07009e22
B07009e23
B07009e24
B07009e25
B07009e26
B07009e27
B07009e28
B07009e29
B07009e30
B07009e31
B07009e32
B07009e33
B07009e34
B07009e35
B07009e36
 
B07009PRe1
B07009PRe2
B07009PRe3
B07009PRe4
B07009PRe5
B07009PRe6
B07009PRe7
B07009PRe8
B07009PRe9
B07009PRe10
B07009PRe11
B07009PRe12
B07009PRe13
B07009PRe14
B07009PRe15
B07009PRe16
B07009PRe17
B07009PRe18
B07009PRe19
B07009PRe20
B07009PRe21
B07009PRe22
B07009PRe23
B07009PRe24
B07009PRe25
B07009PRe26
B07009PRe27
B07009PRe28
B07009PRe29
B07009PRe30
B07009PRe31
B07009PRe32
B07009PRe33
B07009PRe34
B07009PRe35
B07009PRe36
 
B07010e1
B07010e2
B07010e3
B07010e4
B07010e5
B07010e6
B07010e7
B07010e8
B07010e9
B07010e10
B07010e11
B07010e12
B07010e13
B07010e14
B07010e15
B07010e16
B07010e17
B07010e18
B07010e19
B07010e20
B07010e21
B07010e22
B07010e23
B07010e24
B07010e25
B07010e26
B07010e27
B07010e28
B07010e29
B07010e30
B07010e31
B07010e32
B07010e33
B07010e34
B07010e35
B07010e36
B07010e37
B07010e38
B07010e39
B07010e40
B07010e41
B07010e42
B07010e43
B07010e44
B07010e45
B07010e46
B07010e47
B07010e48
B07010e49
B07010e50
B07010e51
B07010e52
B07010e53
B07010e54
B07010e55
B07010e56
B07010e57
B07010e58
B07010e59
B07010e60
B07010e61
B07010e62
B07010e63
B07010e64
B07010e65
B07010e66
 
B07010PRe1
B07010PRe2
B07010PRe3
B07010PRe4
B07010PRe5
B07010PRe6
B07010PRe7
B07010PRe8
B07010PRe9
B07010PRe10
B07010PRe11
B07010PRe12
B07010PRe13
B07010PRe14
B07010PRe15
B07010PRe16
B07010PRe17
B07010PRe18
B07010PRe19
B07010PRe20
B07010PRe21
B07010PRe22
B07010PRe23
B07010PRe24
B07010PRe25
B07010PRe26
B07010PRe27
B07010PRe28
B07010PRe29
B07010PRe30
B07010PRe31
B07010PRe32
B07010PRe33
B07010PRe34
B07010PRe35
B07010PRe36
B07010PRe37
B07010PRe38
B07010PRe39
B07010PRe40
B07010PRe41
B07010PRe42
B07010PRe43
B07010PRe44
B07010PRe45
B07010PRe46
B07010PRe47
B07010PRe48
B07010PRe49
B07010PRe50
B07010PRe51
B07010PRe52
B07010PRe53
B07010PRe54
B07010PRe55
B07010PRe56
B07010PRe57
B07010PRe58
B07010PRe59
B07010PRe60
B07010PRe61
B07010PRe62
B07010PRe63
B07010PRe64
B07010PRe65
B07010PRe66
 
B07011e1
B07011e2
B07011e3
B07011e4
B07011e5
B07011e6
 
B07011PRe1
B07011PRe2
B07011PRe3
B07011PRe4
B07011PRe5
B07011PRe6
 
B07012e1
B07012e2
B07012e3
B07012e4
B07012e5
B07012e6
B07012e7
B07012e8
B07012e9
B07012e10
B07012e11
B07012e12
B07012e13
B07012e14
B07012e15
B07012e16
B07012e17
B07012e18
B07012e19
B07012e20
B07012e21
B07012e22
B07012e23
B07012e24
;
RUN;
TITLE2;
