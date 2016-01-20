TITLE2 "e20115dc0015000";
DATA work.SFe0015dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0015000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*PLACE OF BIRTH BY INDIVIDUAL INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) IN THE UNITED STATES */
/*Universe:  Population 15 years and over in the United States */
 
B06010e1='Total:'
B06010e2='No income'
B06010e3='With income:'
B06010e4='$1 to $9,999 or loss'
B06010e5='$10,000 to $14,999'
B06010e6='$15,000 to $24,999'
B06010e7='$25,000 to $34,999'
B06010e8='$35,000 to $49,999'
B06010e9='$50,000 to $64,999'
B06010e10='$65,000 to $74,999'
B06010e11='$75,000 or more'
B06010e12='Born in state of residence:'
B06010e13='No income'
B06010e14='With income:'
B06010e15='$1 to $9,999 or loss'
B06010e16='$10,000 to $14,999'
B06010e17='$15,000 to $24,999'
B06010e18='$25,000 to $34,999'
B06010e19='$35,000 to $49,999'
B06010e20='$50,000 to $64,999'
B06010e21='$65,000 to $74,999'
B06010e22='$75,000 or more'
B06010e23='Born in other state in the United States:'
B06010e24='No income'
B06010e25='With income:'
B06010e26='$1 to $9,999 or loss'
B06010e27='$10,000 to $14,999'
B06010e28='$15,000 to $24,999'
B06010e29='$25,000 to $34,999'
B06010e30='$35,000 to $49,999'
B06010e31='$50,000 to $64,999'
B06010e32='$65,000 to $74,999'
B06010e33='$75,000 or more'
B06010e34='Native; born outside the United States:'
B06010e35='No income'
B06010e36='With income:'
B06010e37='$1 to $9,999 or loss'
B06010e38='$10,000 to $14,999'
B06010e39='$15,000 to $24,999'
B06010e40='$25,000 to $34,999'
B06010e41='$35,000 to $49,999'
B06010e42='$50,000 to $64,999'
B06010e43='$65,000 to $74,999'
B06010e44='$75,000 or more'
B06010e45='Foreign born:'
B06010e46='No income'
B06010e47='With income:'
B06010e48='$1 to $9,999 or loss'
B06010e49='$10,000 to $14,999'
B06010e50='$15,000 to $24,999'
B06010e51='$25,000 to $34,999'
B06010e52='$35,000 to $49,999'
B06010e53='$50,000 to $64,999'
B06010e54='$65,000 to $74,999'
B06010e55='$75,000 or more'
 
/*PLACE OF BIRTH BY INDIVIDUAL INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) IN PUERTO RICO */
/*Universe:  Population 15 years and over in Puerto Rico */
 
B06010PRe1='Total:'
B06010PRe2='No income'
B06010PRe3='With income:'
B06010PRe4='$1 to $9,999 or loss'
B06010PRe5='$10,000 to $14,999'
B06010PRe6='$15,000 to $24,999'
B06010PRe7='$25,000 to $34,999'
B06010PRe8='$35,000 to $49,999'
B06010PRe9='$50,000 to $64,999'
B06010PRe10='$65,000 to $74,999'
B06010PRe11='$75,000 or more'
B06010PRe12='Born in Puerto Rico:'
B06010PRe13='No income'
B06010PRe14='With income:'
B06010PRe15='$1 to $9,999 or loss'
B06010PRe16='$10,000 to $14,999'
B06010PRe17='$15,000 to $24,999'
B06010PRe18='$25,000 to $34,999'
B06010PRe19='$35,000 to $49,999'
B06010PRe20='$50,000 to $64,999'
B06010PRe21='$65,000 to $74,999'
B06010PRe22='$75,000 or more'
B06010PRe23='Born in the United States:'
B06010PRe24='No income'
B06010PRe25='With income:'
B06010PRe26='$1 to $9,999 or loss'
B06010PRe27='$10,000 to $14,999'
B06010PRe28='$15,000 to $24,999'
B06010PRe29='$25,000 to $34,999'
B06010PRe30='$35,000 to $49,999'
B06010PRe31='$50,000 to $64,999'
B06010PRe32='$65,000 to $74,999'
B06010PRe33='$75,000 or more'
B06010PRe34='Native; born elsewhere:'
B06010PRe35='No income'
B06010PRe36='With income:'
B06010PRe37='$1 to $9,999 or loss'
B06010PRe38='$10,000 to $14,999'
B06010PRe39='$15,000 to $24,999'
B06010PRe40='$25,000 to $34,999'
B06010PRe41='$35,000 to $49,999'
B06010PRe42='$50,000 to $64,999'
B06010PRe43='$65,000 to $74,999'
B06010PRe44='$75,000 or more'
B06010PRe45='Foreign born:'
B06010PRe46='No income'
B06010PRe47='With income:'
B06010PRe48='$1 to $9,999 or loss'
B06010PRe49='$10,000 to $14,999'
B06010PRe50='$15,000 to $24,999'
B06010PRe51='$25,000 to $34,999'
B06010PRe52='$35,000 to $49,999'
B06010PRe53='$50,000 to $64,999'
B06010PRe54='$65,000 to $74,999'
B06010PRe55='$75,000 or more'
 
/*MEDIAN INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY PLACE OF BIRTH IN THE UNITED STATES */
/*Universe:  Population 15 years and over in the United States with income */
/*Median income in the past 12 months -- */
 
B06011e1='Total:'
B06011e2='Born in state of residence'
B06011e3='Born in other state of the United States'
B06011e4='Native; born outside the United States'
B06011e5='Foreign born'
 
/*MEDIAN INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY PLACE OF BIRTH IN PUERTO RICO */
/*Universe:  Population 15 years and over in Puerto Rico with income */
/*Median income in the past 12 months -- */
 
B06011PRe1='Total:'
B06011PRe2='Born in Puerto Rico'
B06011PRe3='Born in other state of the United States'
B06011PRe4='Native; born elsewhere'
B06011PRe5='Foreign born'
 
/*PLACE OF BIRTH BY POVERTY STATUS IN THE PAST 12 MONTHS IN THE UNITED STATES */
/*Universe:  Population in the United States for whom poverty status is determined */
 
B06012e1='Total:'
B06012e2='Below 100 percent of the poverty level'
B06012e3='100 to 149 percent of the poverty level'
B06012e4='At or above 150 percent of the poverty level'
B06012e5='Born in state of residence:'
B06012e6='Below 100 percent of the poverty level'
B06012e7='100 to 149 percent of the poverty level'
B06012e8='At or above 150 percent of the poverty level'
B06012e9='Born in other state in the United States:'
B06012e10='Below 100 percent of the poverty level'
B06012e11='100 to 149 percent of the poverty level'
B06012e12='At or above 150 percent of the poverty level'
B06012e13='Native; born outside the United States:'
B06012e14='Below 100 percent of the poverty level'
B06012e15='100 to 149 percent of the poverty level'
B06012e16='At or above 150 percent of the poverty level'
B06012e17='Foreign born:'
B06012e18='Below 100 percent of the poverty level'
B06012e19='100 to 149 percent of the poverty level'
B06012e20='At or above 150 percent of the poverty level'
 
/*PLACE OF BIRTH BY POVERTY STATUS IN THE PAST 12 MONTHS IN PUERTO RICO */
/*Universe:  Population in Puerto Rico for whom poverty status is determined */
 
B06012PRe1='Total:'
B06012PRe2='Below 100 percent of the poverty level'
B06012PRe3='100 to 149 percent of the poverty level'
B06012PRe4='At or above 150 percent of the poverty level'
B06012PRe5='Born in Puerto Rico:'
B06012PRe6='Below 100 percent of the poverty level'
B06012PRe7='100 to 149 percent of the poverty level'
B06012PRe8='At or above 150 percent of the poverty level'
B06012PRe9='Born in the United States:'
B06012PRe10='Below 100 percent of the poverty level'
B06012PRe11='100 to 149 percent of the poverty level'
B06012PRe12='At or above 150 percent of the poverty level'
B06012PRe13='Native; born elsewhere:'
B06012PRe14='Below 100 percent of the poverty level'
B06012PRe15='100 to 149 percent of the poverty level'
B06012PRe16='At or above 150 percent of the poverty level'
B06012PRe17='Foreign born:'
B06012PRe18='Below 100 percent of the poverty level'
B06012PRe19='100 to 149 percent of the poverty level'
B06012PRe20='At or above 150 percent of the poverty level'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B06010e1
B06010e2
B06010e3
B06010e4
B06010e5
B06010e6
B06010e7
B06010e8
B06010e9
B06010e10
B06010e11
B06010e12
B06010e13
B06010e14
B06010e15
B06010e16
B06010e17
B06010e18
B06010e19
B06010e20
B06010e21
B06010e22
B06010e23
B06010e24
B06010e25
B06010e26
B06010e27
B06010e28
B06010e29
B06010e30
B06010e31
B06010e32
B06010e33
B06010e34
B06010e35
B06010e36
B06010e37
B06010e38
B06010e39
B06010e40
B06010e41
B06010e42
B06010e43
B06010e44
B06010e45
B06010e46
B06010e47
B06010e48
B06010e49
B06010e50
B06010e51
B06010e52
B06010e53
B06010e54
B06010e55
 
B06010PRe1
B06010PRe2
B06010PRe3
B06010PRe4
B06010PRe5
B06010PRe6
B06010PRe7
B06010PRe8
B06010PRe9
B06010PRe10
B06010PRe11
B06010PRe12
B06010PRe13
B06010PRe14
B06010PRe15
B06010PRe16
B06010PRe17
B06010PRe18
B06010PRe19
B06010PRe20
B06010PRe21
B06010PRe22
B06010PRe23
B06010PRe24
B06010PRe25
B06010PRe26
B06010PRe27
B06010PRe28
B06010PRe29
B06010PRe30
B06010PRe31
B06010PRe32
B06010PRe33
B06010PRe34
B06010PRe35
B06010PRe36
B06010PRe37
B06010PRe38
B06010PRe39
B06010PRe40
B06010PRe41
B06010PRe42
B06010PRe43
B06010PRe44
B06010PRe45
B06010PRe46
B06010PRe47
B06010PRe48
B06010PRe49
B06010PRe50
B06010PRe51
B06010PRe52
B06010PRe53
B06010PRe54
B06010PRe55
 
B06011e1
B06011e2
B06011e3
B06011e4
B06011e5
 
B06011PRe1
B06011PRe2
B06011PRe3
B06011PRe4
B06011PRe5
 
B06012e1
B06012e2
B06012e3
B06012e4
B06012e5
B06012e6
B06012e7
B06012e8
B06012e9
B06012e10
B06012e11
B06012e12
B06012e13
B06012e14
B06012e15
B06012e16
B06012e17
B06012e18
B06012e19
B06012e20
 
B06012PRe1
B06012PRe2
B06012PRe3
B06012PRe4
B06012PRe5
B06012PRe6
B06012PRe7
B06012PRe8
B06012PRe9
B06012PRe10
B06012PRe11
B06012PRe12
B06012PRe13
B06012PRe14
B06012PRe15
B06012PRe16
B06012PRe17
B06012PRe18
B06012PRe19
B06012PRe20
;
RUN;
TITLE2;
