TITLE2 "e20125md0022000";
DATA work.SFe0022md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0022000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY INDIVIDUAL INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Population 15 years and over in the United States */
 
B07410e1='Total living in area 1 year ago:'
B07410e2='No income'
B07410e3='With income:'
B07410e4='$1 to $9,999 or loss'
B07410e5='$10,000 to $14,999'
B07410e6='$15,000 to $24,999'
B07410e7='$25,000 to $34,999'
B07410e8='$35,000 to $49,999'
B07410e9='$50,000 to $64,999'
B07410e10='$65,000 to $74,999'
B07410e11='$75,000 or more'
B07410e12='Same house:'
B07410e13='No income'
B07410e14='With income:'
B07410e15='$1 to $9,999 or loss'
B07410e16='$10,000 to $14,999'
B07410e17='$15,000 to $24,999'
B07410e18='$25,000 to $34,999'
B07410e19='$35,000 to $49,999'
B07410e20='$50,000 to $64,999'
B07410e21='$65,000 to $74,999'
B07410e22='$75,000 or more'
B07410e23='Moved within same county:'
B07410e24='No income'
B07410e25='With income:'
B07410e26='$1 to $9,999 or loss'
B07410e27='$10,000 to $14,999'
B07410e28='$15,000 to $24,999'
B07410e29='$25,000 to $34,999'
B07410e30='$35,000 to $49,999'
B07410e31='$50,000 to $64,999'
B07410e32='$65,000 to $74,999'
B07410e33='$75,000 or more'
B07410e34='Moved to different county within same state:'
B07410e35='No income'
B07410e36='With income:'
B07410e37='$1 to $9,999 or loss'
B07410e38='$10,000 to $14,999'
B07410e39='$15,000 to $24,999'
B07410e40='$25,000 to $34,999'
B07410e41='$35,000 to $49,999'
B07410e42='$50,000 to $64,999'
B07410e43='$65,000 to $74,999'
B07410e44='$75,000 or more'
B07410e45='Moved to different state:'
B07410e46='No income'
B07410e47='With income:'
B07410e48='$1 to $9,999 or loss'
B07410e49='$10,000 to $14,999'
B07410e50='$15,000 to $24,999'
B07410e51='$25,000 to $34,999'
B07410e52='$35,000 to $49,999'
B07410e53='$50,000 to $64,999'
B07410e54='$65,000 to $74,999'
B07410e55='$75,000 or more'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY INDIVIDUAL INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Population 15 years and over */
 
B07410PRe1='Total living in area 1 year ago:'
B07410PRe2='No income'
B07410PRe3='With income:'
B07410PRe4='$1 to $9,999 or loss'
B07410PRe5='$10,000 to $14,999'
B07410PRe6='$15,000 to $24,999'
B07410PRe7='$25,000 to $34,999'
B07410PRe8='$35,000 to $49,999'
B07410PRe9='$50,000 to $64,999'
B07410PRe10='$65,000 to $74,999'
B07410PRe11='$75,000 or more'
B07410PRe12='Same house:'
B07410PRe13='No income'
B07410PRe14='With income:'
B07410PRe15='$1 to $9,999 or loss'
B07410PRe16='$10,000 to $14,999'
B07410PRe17='$15,000 to $24,999'
B07410PRe18='$25,000 to $34,999'
B07410PRe19='$35,000 to $49,999'
B07410PRe20='$50,000 to $64,999'
B07410PRe21='$65,000 to $74,999'
B07410PRe22='$75,000 or more'
B07410PRe23='Moved within same municipio:'
B07410PRe24='No income'
B07410PRe25='With income:'
B07410PRe26='$1 to $9,999 or loss'
B07410PRe27='$10,000 to $14,999'
B07410PRe28='$15,000 to $24,999'
B07410PRe29='$25,000 to $34,999'
B07410PRe30='$35,000 to $49,999'
B07410PRe31='$50,000 to $64,999'
B07410PRe32='$65,000 to $74,999'
B07410PRe33='$75,000 or more'
B07410PRe34='Moved to different municipio:'
B07410PRe35='No income'
B07410PRe36='With income:'
B07410PRe37='$1 to $9,999 or loss'
B07410PRe38='$10,000 to $14,999'
B07410PRe39='$15,000 to $24,999'
B07410PRe40='$25,000 to $34,999'
B07410PRe41='$35,000 to $49,999'
B07410PRe42='$50,000 to $64,999'
B07410PRe43='$65,000 to $74,999'
B07410PRe44='$75,000 or more'
B07410PRe45='Moved to the United States:'
B07410PRe46='No income'
B07410PRe47='With income:'
B07410PRe48='$1 to $9,999 or loss'
B07410PRe49='$10,000 to $14,999'
B07410PRe50='$15,000 to $24,999'
B07410PRe51='$25,000 to $34,999'
B07410PRe52='$35,000 to $49,999'
B07410PRe53='$50,000 to $64,999'
B07410PRe54='$65,000 to $74,999'
B07410PRe55='$75,000 or more'
/*MEDIAN INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Population 15 years and over in the United States with income */
/*Median income in the past 12 months -- */
 
B07411e1='Total living in area 1 year ago:'
B07411e2='Same house'
B07411e3='Moved within same county'
B07411e4='Moved to different county within same state'
B07411e5='Moved to different state'
/*MEDIAN INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Population 15 years and over with income in the past 12 months */
/*Median income in the past 12 months -- */
 
B07411PRe1='Total living in area 1 year ago:'
B07411PRe2='Same house'
B07411PRe3='Moved within same municipio'
B07411PRe4='Moved to different municipio'
B07411PRe5='Moved to the United States'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY POVERTY STATUS IN THE PAST 12 MONTHS FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Population 1 year and over in the United States for whom poverty status is determined */
 
B07412e1='Total living in area 1 year ago:'
B07412e2='Below 100 percent of the poverty level'
B07412e3='100 to 149 percent of the poverty level'
B07412e4='At or above 150 percent of the poverty level'
B07412e5='Same house:'
B07412e6='Below 100 percent of the poverty level'
B07412e7='100 to 149 percent of the poverty level'
B07412e8='At or above 150 percent of the poverty level'
B07412e9='Moved within same county:'
B07412e10='Below 100 percent of the poverty level'
B07412e11='100 to 149 percent of the poverty level'
B07412e12='At or above 150 percent of the poverty level'
B07412e13='Moved to different county within same state:'
B07412e14='Below 100 percent of the poverty level'
B07412e15='100 to 149 percent of the poverty level'
B07412e16='At or above 150 percent of the poverty level'
B07412e17='Moved to different state:'
B07412e18='Below 100 percent of the poverty level'
B07412e19='100 to 149 percent of the poverty level'
B07412e20='At or above 150 percent of the poverty level'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY POVERTY STATUS IN THE PAST 12 MONTHS FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Population 1 year and over for whom poverty status is determined */
 
B07412PRe1='Total living in area 1 year ago:'
B07412PRe2='Below 100 percent of the poverty level'
B07412PRe3='100 to 149 percent of the poverty level'
B07412PRe4='At or above 150 percent of the poverty level'
B07412PRe5='Same house:'
B07412PRe6='Below 100 percent of the poverty level'
B07412PRe7='100 to 149 percent of the poverty level'
B07412PRe8='At or above 150 percent of the poverty level'
B07412PRe9='Moved within same municipio:'
B07412PRe10='Below 100 percent of the poverty level'
B07412PRe11='100 to 149 percent of the poverty level'
B07412PRe12='At or above 150 percent of the poverty level'
B07412PRe13='Moved to different municipio:'
B07412PRe14='Below 100 percent of the poverty level'
B07412PRe15='100 to 149 percent of the poverty level'
B07412PRe16='At or above 150 percent of the poverty level'
B07412PRe17='Moved to the United States:'
B07412PRe18='Below 100 percent of the poverty level'
B07412PRe19='100 to 149 percent of the poverty level'
B07412PRe20='At or above 150 percent of the poverty level'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY TENURE FOR RESIDENCE 1 YEAR AGO IN THE UNITED STATES */
/*Universe:  Population 1 year and over in households in the United States */
 
B07413e1='Total living in area 1 year ago:'
B07413e2='Householder lived in owner-occupied housing units'
B07413e3='Householder lived in renter-occupied housing units'
B07413e4='Same house:'
B07413e5='Householder lived in owner-occupied housing units'
B07413e6='Householder lived in renter-occupied housing units'
B07413e7='Moved within same county:'
B07413e8='Householder lived in owner-occupied housing units'
B07413e9='Householder lived in renter-occupied housing units'
B07413e10='Moved to different county within same state:'
B07413e11='Householder lived in owner-occupied housing units'
B07413e12='Householder lived in renter-occupied housing units'
B07413e13='Moved to different state:'
B07413e14='Householder lived in owner-occupied housing units'
B07413e15='Householder lived in renter-occupied housing units'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY TENURE FOR RESIDENCE 1 YEAR AGO IN PUERTO RICO */
/*Universe:  Population 1 year and over in households */
 
B07413PRe1='Total living in area 1 year ago:'
B07413PRe2='Householder lived in owner-occupied housing units'
B07413PRe3='Householder lived in renter-occupied housing units'
B07413PRe4='Same house 1 year ago:'
B07413PRe5='Householder lived in owner-occupied housing units'
B07413PRe6='Householder lived in renter-occupied housing units'
B07413PRe7='Moved within same municipio:'
B07413PRe8='Householder lived in owner-occupied housing units'
B07413PRe9='Householder lived in renter-occupied housing units'
B07413PRe10='Moved to different municipio:'
B07413PRe11='Householder lived in owner-occupied housing units'
B07413PRe12='Householder lived in renter-occupied housing units'
B07413PRe13='Moved to the United States:'
B07413PRe14='Householder lived in owner-occupied housing units'
B07413PRe15='Householder lived in renter-occupied housing units'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B07410e1
B07410e2
B07410e3
B07410e4
B07410e5
B07410e6
B07410e7
B07410e8
B07410e9
B07410e10
B07410e11
B07410e12
B07410e13
B07410e14
B07410e15
B07410e16
B07410e17
B07410e18
B07410e19
B07410e20
B07410e21
B07410e22
B07410e23
B07410e24
B07410e25
B07410e26
B07410e27
B07410e28
B07410e29
B07410e30
B07410e31
B07410e32
B07410e33
B07410e34
B07410e35
B07410e36
B07410e37
B07410e38
B07410e39
B07410e40
B07410e41
B07410e42
B07410e43
B07410e44
B07410e45
B07410e46
B07410e47
B07410e48
B07410e49
B07410e50
B07410e51
B07410e52
B07410e53
B07410e54
B07410e55
 
B07410PRe1
B07410PRe2
B07410PRe3
B07410PRe4
B07410PRe5
B07410PRe6
B07410PRe7
B07410PRe8
B07410PRe9
B07410PRe10
B07410PRe11
B07410PRe12
B07410PRe13
B07410PRe14
B07410PRe15
B07410PRe16
B07410PRe17
B07410PRe18
B07410PRe19
B07410PRe20
B07410PRe21
B07410PRe22
B07410PRe23
B07410PRe24
B07410PRe25
B07410PRe26
B07410PRe27
B07410PRe28
B07410PRe29
B07410PRe30
B07410PRe31
B07410PRe32
B07410PRe33
B07410PRe34
B07410PRe35
B07410PRe36
B07410PRe37
B07410PRe38
B07410PRe39
B07410PRe40
B07410PRe41
B07410PRe42
B07410PRe43
B07410PRe44
B07410PRe45
B07410PRe46
B07410PRe47
B07410PRe48
B07410PRe49
B07410PRe50
B07410PRe51
B07410PRe52
B07410PRe53
B07410PRe54
B07410PRe55
 
B07411e1
B07411e2
B07411e3
B07411e4
B07411e5
 
B07411PRe1
B07411PRe2
B07411PRe3
B07411PRe4
B07411PRe5
 
B07412e1
B07412e2
B07412e3
B07412e4
B07412e5
B07412e6
B07412e7
B07412e8
B07412e9
B07412e10
B07412e11
B07412e12
B07412e13
B07412e14
B07412e15
B07412e16
B07412e17
B07412e18
B07412e19
B07412e20
 
B07412PRe1
B07412PRe2
B07412PRe3
B07412PRe4
B07412PRe5
B07412PRe6
B07412PRe7
B07412PRe8
B07412PRe9
B07412PRe10
B07412PRe11
B07412PRe12
B07412PRe13
B07412PRe14
B07412PRe15
B07412PRe16
B07412PRe17
B07412PRe18
B07412PRe19
B07412PRe20
 
B07413e1
B07413e2
B07413e3
B07413e4
B07413e5
B07413e6
B07413e7
B07413e8
B07413e9
B07413e10
B07413e11
B07413e12
B07413e13
B07413e14
B07413e15
 
B07413PRe1
B07413PRe2
B07413PRe3
B07413PRe4
B07413PRe5
B07413PRe6
B07413PRe7
B07413PRe8
B07413PRe9
B07413PRe10
B07413PRe11
B07413PRe12
B07413PRe13
B07413PRe14
B07413PRe15
;
RUN;
TITLE2;
