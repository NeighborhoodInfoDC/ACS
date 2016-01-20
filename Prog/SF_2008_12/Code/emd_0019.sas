TITLE2 "e20125md0019000";
DATA work.SFe0019md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0019000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY POVERTY STATUS IN THE PAST 12 MONTHS FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Population 1 year and over in Puerto Rico for whom poverty status is determined */
 
B07012PRe1='Total:'
B07012PRe2='Below 100 percent of the poverty level'
B07012PRe3='100 to 149 percent of the poverty level'
B07012PRe4='At or above 150 percent of the poverty level'
B07012PRe5='Same house 1 year ago:'
B07012PRe6='Below 100 percent of the poverty level'
B07012PRe7='100 to 149 percent of the poverty level'
B07012PRe8='At or above 150 percent of the poverty level'
B07012PRe9='Moved within same municipio:'
B07012PRe10='Below 100 percent of the poverty level'
B07012PRe11='100 to 149 percent of the poverty level'
B07012PRe12='At or above 150 percent of the poverty level'
B07012PRe13='Moved from different municipio:'
B07012PRe14='Below 100 percent of the poverty level'
B07012PRe15='100 to 149 percent of the poverty level'
B07012PRe16='At or above 150 percent of the poverty level'
B07012PRe17='Moved from the United States:'
B07012PRe18='Below 100 percent of the poverty level'
B07012PRe19='100 to 149 percent of the poverty level'
B07012PRe20='At or above 150 percent of the poverty level'
B07012PRe21='Moved from elsewhere:'
B07012PRe22='Below 100 percent of the poverty level'
B07012PRe23='100 to 149 percent of the poverty level'
B07012PRe24='At or above 150 percent of the poverty level'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY TENURE FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Population 1 year and over in households in the United States */
 
B07013e1='Total:'
B07013e2='Householder lived in owner-occupied housing units'
B07013e3='Householder lived in renter-occupied housing units'
B07013e4='Same house 1 year ago:'
B07013e5='Householder lived in owner-occupied housing units'
B07013e6='Householder lived in renter-occupied housing units'
B07013e7='Moved within same county:'
B07013e8='Householder lived in owner-occupied housing units'
B07013e9='Householder lived in renter-occupied housing units'
B07013e10='Moved from different county within same state:'
B07013e11='Householder lived in owner-occupied housing units'
B07013e12='Householder lived in renter-occupied housing units'
B07013e13='Moved from different state:'
B07013e14='Householder lived in owner-occupied housing units'
B07013e15='Householder lived in renter-occupied housing units'
B07013e16='Moved from abroad:'
B07013e17='Householder lived in owner-occupied housing units'
B07013e18='Householder lived in renter-occupied housing units'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY TENURE FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Population 1 year and over in households in Puerto Rico */
 
B07013PRe1='Total:'
B07013PRe2='Householder lived in owner-occupied housing units'
B07013PRe3='Householder lived in renter-occupied housing units'
B07013PRe4='Same house 1 year ago:'
B07013PRe5='Householder lived in owner-occupied housing units'
B07013PRe6='Householder lived in renter-occupied housing units'
B07013PRe7='Moved within same municipio:'
B07013PRe8='Householder lived in owner-occupied housing units'
B07013PRe9='Householder lived in renter-occupied housing units'
B07013PRe10='Moved from different municipio:'
B07013PRe11='Householder lived in owner-occupied housing units'
B07013PRe12='Householder lived in renter-occupied housing units'
B07013PRe13='Moved from the United States:'
B07013PRe14='Householder lived in owner-occupied housing units'
B07013PRe15='Householder lived in renter-occupied housing units'
B07013PRe16='Moved from elsewhere:'
B07013PRe17='Householder lived in owner-occupied housing units'
B07013PRe18='Householder lived in renter-occupied housing units'
/*MOVERS BETWEEN REGIONS IN THE UNITED STATES */
/*Universe:  Population 1 year and over in the United States */
 
B07101e1='Total:'
B07101e2='Same residence (non-movers)'
B07101e3='Movers within same state'
B07101e4='Movers to different state:'
/*Residence 1 year ago-- */
B07101e5='Northeast'
B07101e6='Midwest'
B07101e7='South'
B07101e8='West'
B07101e9='Movers from abroad:'
B07101e10='Puerto Rico'
B07101e11='U.S. Island Areas'
B07101e12='Foreign country'
B07101e13='Current residence; Northeast:'
B07101e14='Same residence (non-movers)'
B07101e15='Movers within same state'
B07101e16='Movers to different state:'
/*Residence 1 year ago-- */
B07101e17='Northeast'
B07101e18='Midwest'
B07101e19='South'
B07101e20='West'
B07101e21='Movers from abroad:'
B07101e22='Puerto Rico'
B07101e23='U.S. Island Areas'
B07101e24='Foreign country'
B07101e25='Current residence; Midwest:'
B07101e26='Same residence (non-movers)'
B07101e27='Movers within same state'
B07101e28='Movers to different state:'
/*Residence 1 year ago-- */
B07101e29='Northeast'
B07101e30='Midwest'
B07101e31='South'
B07101e32='West'
B07101e33='Movers from abroad:'
B07101e34='Puerto Rico'
B07101e35='U.S. Island Areas'
B07101e36='Foreign country'
B07101e37='Current residence; South:'
B07101e38='Same residence (non-movers)'
B07101e39='Movers within same state'
B07101e40='Movers to different state:'
/*Residence 1 year ago-- */
B07101e41='Northeast'
B07101e42='Midwest'
B07101e43='South'
B07101e44='West'
B07101e45='Movers from abroad:'
B07101e46='Puerto Rico'
B07101e47='U.S. Island Areas'
B07101e48='Foreign country'
B07101e49='Current residence; West:'
B07101e50='Same residence (non-movers)'
B07101e51='Movers within same state'
B07101e52='Movers to different state:'
/*Residence 1 year ago-- */
B07101e53='Northeast'
B07101e54='Midwest'
B07101e55='South'
B07101e56='West'
B07101e57='Movers from abroad:'
B07101e58='Puerto Rico'
B07101e59='U.S. Island Areas'
B07101e60='Foreign country'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR CURRENT RESIDENCE--METROPOLITAN STATISTICAL AREA LEVEL IN THE UNITED STATES */
/*Universe:  Population 1 year and over living in a Metropolitan Statistical Area in the United States */
 
B07201e1='Total:'
B07201e2='Same house 1 year ago'
B07201e3='Different house in United States 1 year ago:'
B07201e4='Same Metropolitan Statistical Area:'
B07201e5='Moved from principal city'
B07201e6='Moved from remainder of Metropolitan Statistical Area'
B07201e7='Different Metropolitan Statistical Area:'
B07201e8='Moved from principal city'
B07201e9='Moved from remainder of Metropolitan Statistical Area'
B07201e10='Micropolitan Statistical Area:'
B07201e11='Moved from principal city'
B07201e12='Moved from remainder of Micropolitan Statistical Area'
B07201e13='Not in a Metropolitan or Micropolitan Statistical Area 1 year ago'
B07201e14='Abroad 1 year ago'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR CURRENT RESIDENCE--METROPOLITAN STATISTICAL AREA LEVEL IN PUERTO RICO */
/*Universe:  Population 1 year and over living in a Metropolitan Statistical Area in Puerto Rico */
 
B07201PRe1='Total:'
B07201PRe2='Same house 1 year ago'
B07201PRe3='Different house in Puerto Rico 1 year ago:'
B07201PRe4='Same Metropolitan Statistical Area:'
B07201PRe5='Moved from principal city'
B07201PRe6='Moved from remainder of Metropolitan Statistical Area'
B07201PRe7='Different Metropolitan Statistical Area:'
B07201PRe8='Moved from principal city'
B07201PRe9='Moved from remainder of Metropolitan Statistical Area'
B07201PRe10='Micropolitan Statistical Area:'
B07201PRe11='Moved from principal city'
B07201PRe12='Moved from remainder of Micropolitan Statistical Area'
B07201PRe13='Not in a Metropolitan or Micropolitan Statistical Area 1 year ago'
B07201PRe14='United States 1 year ago:'
B07201PRe15='Metropolitan Statistical Area:'
B07201PRe16='Moved from principal city'
B07201PRe17='Moved from remainder of Metropolitan Statistical Area'
B07201PRe18='Micropolitan Statistical Area:'
B07201PRe19='Moved from principal city'
B07201PRe20='Moved from remainder of Micropolitan Statistical Area'
B07201PRe21='Not in a Metropolitan or Micropolitan Statistical Area 1 year ago'
B07201PRe22='Abroad 1 year ago'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR CURRENT RESIDENCE--MICROPOLITAN STATISTICAL AREA LEVEL IN THE UNITED STATES */
/*Universe:  Population 1 year and over living in a Micropolitan Statistical Area in the United States */
 
B07202e1='Total:'
B07202e2='Same house 1 year ago'
B07202e3='Different house in United States 1 year ago:'
B07202e4='Same Micropolitan Statistical Area:'
B07202e5='Moved from principal city'
B07202e6='Moved from remainder of Micropolitan Statistical Area'
B07202e7='Different Micropolitan Statistical Area:'
B07202e8='Moved from principal city'
B07202e9='Moved from remainder of Micropolitan Statistical Area'
B07202e10='Metropolitan Statistical Area:'
B07202e11='Moved from principal city'
B07202e12='Moved from remainder of Metropolitan Statistical Area'
B07202e13='Not in a Metropolitan or Micropolitan Statistical Area 1 year ago'
B07202e14='Abroad 1 year ago'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR CURRENT RESIDENCE--MICROPOLITAN STATISTICAL AREA LEVEL IN PUERTO RICO */
/*Universe:  Population 1 year and over living in a Micropolitan Statistical Area in Puerto Rico */
 
B07202PRe1='Total:'
B07202PRe2='Same house 1 year ago'
B07202PRe3='Different house in Puerto Rico 1 year ago:'
B07202PRe4='Same Micropolitan Statistical Area:'
B07202PRe5='Moved from principal city'
B07202PRe6='Moved from remainder of Micropolitan Statistical Area'
B07202PRe7='Different Micropolitan Statistical Area'
B07202PRe8='Metropolitan Statistical Area'
B07202PRe9='Not in a Metropolitan or Micropolitan Statistical Area 1 year ago'
B07202PRe10='United States 1 year ago'
B07202PRe11='Abroad 1 year ago'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR CURRENT RESIDENCE--NOT METROPOLITAN OR MICROPOLITAN STATISTICAL AREA LEVEL IN THE UNITED STATES */
/*Universe:  Population 1 year and over not living in a Metropolitan or Micropolitan Statistical Area in the United States */
 
B07203e1='Total:'
B07203e2='Same house 1 year ago'
B07203e3='Different house in United States 1 year ago:'
B07203e4='Metropolitan Statistical Area:'
B07203e5='Moved from principal city'
B07203e6='Moved from remainder of Metropolitan Statistical Area'
B07203e7='Micropolitan Statistical Area:'
B07203e8='Moved from principal city'
B07203e9='Moved from remainder of Micropolitan Statistical Area'
B07203e10='Not in a Metropolitan or Micropolitan Statistical Area 1 year ago'
B07203e11='Abroad 1 year ago'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR CURRENT RESIDENCE--NOT METROPOLITAN OR MICROPOLITAN STATISTICAL AREA LEVEL IN PUERTO RICO */
/*Universe:  Population 1 year and over not living in a Metropolitan or Micropolitan Statistical Area in Puerto Rico */
 
B07203PRe1='Total:'
B07203PRe2='Same house 1 year ago'
B07203PRe3='Different house in Puerto Rico 1 year ago:'
B07203PRe4='Metropolitan Statistical Area'
B07203PRe5='Micropolitan Statistical Area'
B07203PRe6='Not in a Metropolitan or Micropolitan Statistical Area 1 year ago'
B07203PRe7='United States 1 year ago'
B07203PRe8='Abroad 1 year ago'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR CURRENT RESIDENCE--STATE, COUNTY AND PLACE LEVEL IN THE UNITED STATES */
/*Universe:  Population 1 year and over in the United States */
 
B07204e1='Total:'
B07204e2='Same house 1 year ago'
B07204e3='Different house in United States 1 year ago:'
B07204e4='Same city or town:'
B07204e5='Same county'
B07204e6='Different county (same state)'
B07204e7='Elsewhere:'
B07204e8='Same county'
B07204e9='Different county:'
B07204e10='Same state'
B07204e11='Different state:'
B07204e12='Northeast'
B07204e13='Midwest'
B07204e14='South'
B07204e15='West'
B07204e16='Abroad 1 year ago:'
B07204e17='Puerto Rico'
B07204e18='U.S. Island Areas'
B07204e19='Foreign country'
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR CURRENT RESIDENCE--STATE, COUNTY AND PLACE LEVEL IN PUERTO RICO */
/*Universe:  Population 1 year and over in Puerto Rico */
 
B07204PRe1='Total:'
B07204PRe2='Same house 1 year ago'
B07204PRe3='Different house in Puerto Rico 1 year ago:'
B07204PRe4='Same city or town:'
B07204PRe5='Same municipio'
B07204PRe6='Different municipio'
B07204PRe7='Elsewhere in Puerto Rico:'
B07204PRe8='Same municipio'
B07204PRe9='Different municipio'
B07204PRe10='United States 1 year ago:'
B07204PRe11='Northeast'
B07204PRe12='Midwest'
B07204PRe13='South'
B07204PRe14='West'
B07204PRe15='Elsewhere 1 year ago:'
B07204PRe16='U.S. Island Areas'
B07204PRe17='Foreign country'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B07012PRe1
B07012PRe2
B07012PRe3
B07012PRe4
B07012PRe5
B07012PRe6
B07012PRe7
B07012PRe8
B07012PRe9
B07012PRe10
B07012PRe11
B07012PRe12
B07012PRe13
B07012PRe14
B07012PRe15
B07012PRe16
B07012PRe17
B07012PRe18
B07012PRe19
B07012PRe20
B07012PRe21
B07012PRe22
B07012PRe23
B07012PRe24
 
B07013e1
B07013e2
B07013e3
B07013e4
B07013e5
B07013e6
B07013e7
B07013e8
B07013e9
B07013e10
B07013e11
B07013e12
B07013e13
B07013e14
B07013e15
B07013e16
B07013e17
B07013e18
 
B07013PRe1
B07013PRe2
B07013PRe3
B07013PRe4
B07013PRe5
B07013PRe6
B07013PRe7
B07013PRe8
B07013PRe9
B07013PRe10
B07013PRe11
B07013PRe12
B07013PRe13
B07013PRe14
B07013PRe15
B07013PRe16
B07013PRe17
B07013PRe18
 
B07101e1
B07101e2
B07101e3
B07101e4
B07101e5
B07101e6
B07101e7
B07101e8
B07101e9
B07101e10
B07101e11
B07101e12
B07101e13
B07101e14
B07101e15
B07101e16
B07101e17
B07101e18
B07101e19
B07101e20
B07101e21
B07101e22
B07101e23
B07101e24
B07101e25
B07101e26
B07101e27
B07101e28
B07101e29
B07101e30
B07101e31
B07101e32
B07101e33
B07101e34
B07101e35
B07101e36
B07101e37
B07101e38
B07101e39
B07101e40
B07101e41
B07101e42
B07101e43
B07101e44
B07101e45
B07101e46
B07101e47
B07101e48
B07101e49
B07101e50
B07101e51
B07101e52
B07101e53
B07101e54
B07101e55
B07101e56
B07101e57
B07101e58
B07101e59
B07101e60
 
B07201e1
B07201e2
B07201e3
B07201e4
B07201e5
B07201e6
B07201e7
B07201e8
B07201e9
B07201e10
B07201e11
B07201e12
B07201e13
B07201e14
 
B07201PRe1
B07201PRe2
B07201PRe3
B07201PRe4
B07201PRe5
B07201PRe6
B07201PRe7
B07201PRe8
B07201PRe9
B07201PRe10
B07201PRe11
B07201PRe12
B07201PRe13
B07201PRe14
B07201PRe15
B07201PRe16
B07201PRe17
B07201PRe18
B07201PRe19
B07201PRe20
B07201PRe21
B07201PRe22
 
B07202e1
B07202e2
B07202e3
B07202e4
B07202e5
B07202e6
B07202e7
B07202e8
B07202e9
B07202e10
B07202e11
B07202e12
B07202e13
B07202e14
 
B07202PRe1
B07202PRe2
B07202PRe3
B07202PRe4
B07202PRe5
B07202PRe6
B07202PRe7
B07202PRe8
B07202PRe9
B07202PRe10
B07202PRe11
 
B07203e1
B07203e2
B07203e3
B07203e4
B07203e5
B07203e6
B07203e7
B07203e8
B07203e9
B07203e10
B07203e11
 
B07203PRe1
B07203PRe2
B07203PRe3
B07203PRe4
B07203PRe5
B07203PRe6
B07203PRe7
B07203PRe8
 
B07204e1
B07204e2
B07204e3
B07204e4
B07204e5
B07204e6
B07204e7
B07204e8
B07204e9
B07204e10
B07204e11
B07204e12
B07204e13
B07204e14
B07204e15
B07204e16
B07204e17
B07204e18
B07204e19
 
B07204PRe1
B07204PRe2
B07204PRe3
B07204PRe4
B07204PRe5
B07204PRe6
B07204PRe7
B07204PRe8
B07204PRe9
B07204PRe10
B07204PRe11
B07204PRe12
B07204PRe13
B07204PRe14
B07204PRe15
B07204PRe16
B07204PRe17
;
RUN;
TITLE2;
