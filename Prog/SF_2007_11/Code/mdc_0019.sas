TITLE2 "m20115dc0019000";
DATA work.SFm0019dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0019000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY POVERTY STATUS IN THE PAST 12 MONTHS FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Population 1 year and over in Puerto Rico for whom poverty status is determined */
 
B07012PRm1='Total:'
B07012PRm2='Below 100 percent of the poverty level'
B07012PRm3='100 to 149 percent of the poverty level'
B07012PRm4='At or above 150 percent of the poverty level'
B07012PRm5='Same house 1 year ago:'
B07012PRm6='Below 100 percent of the poverty level'
B07012PRm7='100 to 149 percent of the poverty level'
B07012PRm8='At or above 150 percent of the poverty level'
B07012PRm9='Moved within same municipio:'
B07012PRm10='Below 100 percent of the poverty level'
B07012PRm11='100 to 149 percent of the poverty level'
B07012PRm12='At or above 150 percent of the poverty level'
B07012PRm13='Moved from different municipio:'
B07012PRm14='Below 100 percent of the poverty level'
B07012PRm15='100 to 149 percent of the poverty level'
B07012PRm16='At or above 150 percent of the poverty level'
B07012PRm17='Moved from the United States:'
B07012PRm18='Below 100 percent of the poverty level'
B07012PRm19='100 to 149 percent of the poverty level'
B07012PRm20='At or above 150 percent of the poverty level'
B07012PRm21='Moved from elsewhere:'
B07012PRm22='Below 100 percent of the poverty level'
B07012PRm23='100 to 149 percent of the poverty level'
B07012PRm24='At or above 150 percent of the poverty level'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY TENURE FOR CURRENT RESIDENCE IN THE UNITED STATES */
/*Universe:  Population 1 year and over in households in the United States */
 
B07013m1='Total:'
B07013m2='Householder lived in owner-occupied housing units'
B07013m3='Householder lived in renter-occupied housing units'
B07013m4='Same house 1 year ago:'
B07013m5='Householder lived in owner-occupied housing units'
B07013m6='Householder lived in renter-occupied housing units'
B07013m7='Moved within same county:'
B07013m8='Householder lived in owner-occupied housing units'
B07013m9='Householder lived in renter-occupied housing units'
B07013m10='Moved from different county within same state:'
B07013m11='Householder lived in owner-occupied housing units'
B07013m12='Householder lived in renter-occupied housing units'
B07013m13='Moved from different state:'
B07013m14='Householder lived in owner-occupied housing units'
B07013m15='Householder lived in renter-occupied housing units'
B07013m16='Moved from abroad:'
B07013m17='Householder lived in owner-occupied housing units'
B07013m18='Householder lived in renter-occupied housing units'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY TENURE FOR CURRENT RESIDENCE IN PUERTO RICO */
/*Universe:  Population 1 year and over in households in Puerto Rico */
 
B07013PRm1='Total:'
B07013PRm2='Householder lived in owner-occupied housing units'
B07013PRm3='Householder lived in renter-occupied housing units'
B07013PRm4='Same house 1 year ago:'
B07013PRm5='Householder lived in owner-occupied housing units'
B07013PRm6='Householder lived in renter-occupied housing units'
B07013PRm7='Moved within same municipio:'
B07013PRm8='Householder lived in owner-occupied housing units'
B07013PRm9='Householder lived in renter-occupied housing units'
B07013PRm10='Moved from different municipio:'
B07013PRm11='Householder lived in owner-occupied housing units'
B07013PRm12='Householder lived in renter-occupied housing units'
B07013PRm13='Moved from the United States:'
B07013PRm14='Householder lived in owner-occupied housing units'
B07013PRm15='Householder lived in renter-occupied housing units'
B07013PRm16='Moved from elsewhere:'
B07013PRm17='Householder lived in owner-occupied housing units'
B07013PRm18='Householder lived in renter-occupied housing units'
 
/*MOVERS BETWEEN REGIONS IN THE UNITED STATES */
/*Universe:  Population 1 year and over in the United States */
 
B07101m1='Total:'
B07101m2='Same residence (non-movers)'
B07101m3='Movers within same state'
B07101m4='Movers to different state:'
/*Residence 1 year ago-- */
B07101m5='Northeast'
B07101m6='Midwest'
B07101m7='South'
B07101m8='West'
B07101m9='Movers from abroad:'
B07101m10='Puerto Rico'
B07101m11='U.S. Island Areas'
B07101m12='Foreign country'
B07101m13='Current residence; Northeast:'
B07101m14='Same residence (non-movers)'
B07101m15='Movers within same state'
B07101m16='Movers to different state:'
/*Residence 1 year ago-- */
B07101m17='Northeast'
B07101m18='Midwest'
B07101m19='South'
B07101m20='West'
B07101m21='Movers from abroad:'
B07101m22='Puerto Rico'
B07101m23='U.S. Island Areas'
B07101m24='Foreign country'
B07101m25='Current residence; Midwest:'
B07101m26='Same residence (non-movers)'
B07101m27='Movers within same state'
B07101m28='Movers to different state:'
/*Residence 1 year ago-- */
B07101m29='Northeast'
B07101m30='Midwest'
B07101m31='South'
B07101m32='West'
B07101m33='Movers from abroad:'
B07101m34='Puerto Rico'
B07101m35='U.S. Island Areas'
B07101m36='Foreign country'
B07101m37='Current residence; South:'
B07101m38='Same residence (non-movers)'
B07101m39='Movers within same state'
B07101m40='Movers to different state:'
/*Residence 1 year ago-- */
B07101m41='Northeast'
B07101m42='Midwest'
B07101m43='South'
B07101m44='West'
B07101m45='Movers from abroad:'
B07101m46='Puerto Rico'
B07101m47='U.S. Island Areas'
B07101m48='Foreign country'
B07101m49='Current residence; West:'
B07101m50='Same residence (non-movers)'
B07101m51='Movers within same state'
B07101m52='Movers to different state:'
/*Residence 1 year ago-- */
B07101m53='Northeast'
B07101m54='Midwest'
B07101m55='South'
B07101m56='West'
B07101m57='Movers from abroad:'
B07101m58='Puerto Rico'
B07101m59='U.S. Island Areas'
B07101m60='Foreign country'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR CURRENT RESIDENCE--METROPOLITAN STATISTICAL AREA LEVEL IN THE UNITED STATES */
/*Universe:  Population 1 year and over living in a Metropolitan Statistical Area in the United States */
 
B07201m1='Total:'
B07201m2='Same house 1 year ago'
B07201m3='Different house in United States 1 year ago:'
B07201m4='Same Metropolitan Statistical Area:'
B07201m5='Moved from principal city'
B07201m6='Moved from remainder of Metropolitan Statistical Area'
B07201m7='Different Metropolitan Statistical Area:'
B07201m8='Moved from principal city'
B07201m9='Moved from remainder of Metropolitan Statistical Area'
B07201m10='Micropolitan Statistical Area:'
B07201m11='Moved from principal city'
B07201m12='Moved from remainder of Micropolitan Statistical Area'
B07201m13='Not in a Metropolitan or Micropolitan Statistical Area 1 year ago'
B07201m14='Abroad 1 year ago'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR CURRENT RESIDENCE--METROPOLITAN STATISTICAL AREA LEVEL IN PUERTO RICO */
/*Universe:  Population 1 year and over living in a Metropolitan Statistical Area in Puerto Rico */
 
B07201PRm1='Total:'
B07201PRm2='Same house 1 year ago'
B07201PRm3='Different house in Puerto Rico 1 year ago:'
B07201PRm4='Same Metropolitan Statistical Area:'
B07201PRm5='Moved from principal city'
B07201PRm6='Moved from remainder of Metropolitan Statistical Area'
B07201PRm7='Different Metropolitan Statistical Area:'
B07201PRm8='Moved from principal city'
B07201PRm9='Moved from remainder of Metropolitan Statistical Area'
B07201PRm10='Micropolitan Statistical Area:'
B07201PRm11='Moved from principal city'
B07201PRm12='Moved from remainder of Micropolitan Statistical Area'
B07201PRm13='Not in a Metropolitan or Micropolitan Statistical Area 1 year ago'
B07201PRm14='United States 1 year ago:'
B07201PRm15='Metropolitan Statistical Area:'
B07201PRm16='Moved from principal city'
B07201PRm17='Moved from remainder of Metropolitan Statistical Area'
B07201PRm18='Micropolitan Statistical Area:'
B07201PRm19='Moved from principal city'
B07201PRm20='Moved from remainder of Micropolitan Statistical Area'
B07201PRm21='Not in a Metropolitan or Micropolitan Statistical Area 1 year ago'
B07201PRm22='Abroad 1 year ago'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR CURRENT RESIDENCE--MICROPOLITAN STATISTICAL AREA LEVEL IN THE UNITED STATES */
/*Universe:  Population 1 year and over living in a Micropolitan Statistical Area in the United States */
 
B07202m1='Total:'
B07202m2='Same house 1 year ago'
B07202m3='Different house in United States 1 year ago:'
B07202m4='Same Micropolitan Statistical Area:'
B07202m5='Moved from principal city'
B07202m6='Moved from remainder of Micropolitan Statistical Area'
B07202m7='Different Micropolitan Statistical Area:'
B07202m8='Moved from principal city'
B07202m9='Moved from remainder of Micropolitan Statistical Area'
B07202m10='Metropolitan Statistical Area:'
B07202m11='Moved from principal city'
B07202m12='Moved from remainder of Metropolitan Statistical Area'
B07202m13='Not in a Metropolitan or Micropolitan Statistical Area 1 year ago'
B07202m14='Abroad 1 year ago'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR CURRENT RESIDENCE--MICROPOLITAN STATISTICAL AREA LEVEL IN PUERTO RICO */
/*Universe:  Population 1 year and over living in a Micropolitan Statistical Area in Puerto Rico */
 
B07202PRm1='Total:'
B07202PRm2='Same house 1 year ago'
B07202PRm3='Different house in Puerto Rico 1 year ago:'
B07202PRm4='Same Micropolitan Statistical Area:'
B07202PRm5='Moved from principal city'
B07202PRm6='Moved from remainder of Micropolitan Statistical Area'
B07202PRm7='Different Micropolitan Statistical Area'
B07202PRm8='Metropolitan Statistical Area'
B07202PRm9='Not in a Metropolitan or Micropolitan Statistical Area 1 year ago'
B07202PRm10='United States 1 year ago'
B07202PRm11='Abroad 1 year ago'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR CURRENT RESIDENCE--NOT METROPOLITAN OR MICROPOLITAN STATISTICAL AREA LEVEL IN THE UNITED STATES */
/*Universe:  Population 1 year and over not living in a Metropolitan or Micropolitan Statistical Area in the United States */
 
B07203m1='Total:'
B07203m2='Same house 1 year ago'
B07203m3='Different house in United States 1 year ago:'
B07203m4='Metropolitan Statistical Area:'
B07203m5='Moved from principal city'
B07203m6='Moved from remainder of Metropolitan Statistical Area'
B07203m7='Micropolitan Statistical Area:'
B07203m8='Moved from principal city'
B07203m9='Moved from remainder of Micropolitan Statistical Area'
B07203m10='Not in a Metropolitan or Micropolitan Statistical Area 1 year ago'
B07203m11='Abroad 1 year ago'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR CURRENT RESIDENCE--NOT METROPOLITAN OR MICROPOLITAN STATISTICAL AREA LEVEL IN PUERTO RICO */
/*Universe:  Population 1 year and over not living in a Metropolitan or Micropolitan Statistical Area in Puerto Rico */
 
B07203PRm1='Total:'
B07203PRm2='Same house 1 year ago'
B07203PRm3='Different house in Puerto Rico 1 year ago:'
B07203PRm4='Metropolitan Statistical Area'
B07203PRm5='Micropolitan Statistical Area'
B07203PRm6='Not in a Metropolitan or Micropolitan Statistical Area 1 year ago'
B07203PRm7='United States 1 year ago'
B07203PRm8='Abroad 1 year ago'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR CURRENT RESIDENCE--STATE, COUNTY AND PLACE LEVEL IN THE UNITED STATES */
/*Universe:  Population 1 year and over in the United States */
 
B07204m1='Total:'
B07204m2='Same house 1 year ago'
B07204m3='Different house in United States 1 year ago:'
B07204m4='Same city or town:'
B07204m5='Same county'
B07204m6='Different county (same state)'
B07204m7='Elsewhere:'
B07204m8='Same county'
B07204m9='Different county:'
B07204m10='Same state'
B07204m11='Different state:'
B07204m12='Northeast'
B07204m13='Midwest'
B07204m14='South'
B07204m15='West'
B07204m16='Abroad 1 year ago:'
B07204m17='Puerto Rico'
B07204m18='U.S. Island Areas'
B07204m19='Foreign country'
 
/*GEOGRAPHICAL MOBILITY IN THE PAST YEAR FOR CURRENT RESIDENCE--STATE, COUNTY AND PLACE LEVEL IN PUERTO RICO */
/*Universe:  Population 1 year and over in Puerto Rico */
 
B07204PRm1='Total:'
B07204PRm2='Same house 1 year ago'
B07204PRm3='Different house in Puerto Rico 1 year ago:'
B07204PRm4='Same city or town:'
B07204PRm5='Same municipio'
B07204PRm6='Different municipio'
B07204PRm7='Elsewhere in Puerto Rico:'
B07204PRm8='Same municipio'
B07204PRm9='Different municipio'
B07204PRm10='United States 1 year ago:'
B07204PRm11='Northeast'
B07204PRm12='Midwest'
B07204PRm13='South'
B07204PRm14='West'
B07204PRm15='Elsewhere 1 year ago:'
B07204PRm16='U.S. Island Areas'
B07204PRm17='Foreign country'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B07012PRm1
B07012PRm2
B07012PRm3
B07012PRm4
B07012PRm5
B07012PRm6
B07012PRm7
B07012PRm8
B07012PRm9
B07012PRm10
B07012PRm11
B07012PRm12
B07012PRm13
B07012PRm14
B07012PRm15
B07012PRm16
B07012PRm17
B07012PRm18
B07012PRm19
B07012PRm20
B07012PRm21
B07012PRm22
B07012PRm23
B07012PRm24
 
B07013m1
B07013m2
B07013m3
B07013m4
B07013m5
B07013m6
B07013m7
B07013m8
B07013m9
B07013m10
B07013m11
B07013m12
B07013m13
B07013m14
B07013m15
B07013m16
B07013m17
B07013m18
 
B07013PRm1
B07013PRm2
B07013PRm3
B07013PRm4
B07013PRm5
B07013PRm6
B07013PRm7
B07013PRm8
B07013PRm9
B07013PRm10
B07013PRm11
B07013PRm12
B07013PRm13
B07013PRm14
B07013PRm15
B07013PRm16
B07013PRm17
B07013PRm18
 
B07101m1
B07101m2
B07101m3
B07101m4
B07101m5
B07101m6
B07101m7
B07101m8
B07101m9
B07101m10
B07101m11
B07101m12
B07101m13
B07101m14
B07101m15
B07101m16
B07101m17
B07101m18
B07101m19
B07101m20
B07101m21
B07101m22
B07101m23
B07101m24
B07101m25
B07101m26
B07101m27
B07101m28
B07101m29
B07101m30
B07101m31
B07101m32
B07101m33
B07101m34
B07101m35
B07101m36
B07101m37
B07101m38
B07101m39
B07101m40
B07101m41
B07101m42
B07101m43
B07101m44
B07101m45
B07101m46
B07101m47
B07101m48
B07101m49
B07101m50
B07101m51
B07101m52
B07101m53
B07101m54
B07101m55
B07101m56
B07101m57
B07101m58
B07101m59
B07101m60
 
B07201m1
B07201m2
B07201m3
B07201m4
B07201m5
B07201m6
B07201m7
B07201m8
B07201m9
B07201m10
B07201m11
B07201m12
B07201m13
B07201m14
 
B07201PRm1
B07201PRm2
B07201PRm3
B07201PRm4
B07201PRm5
B07201PRm6
B07201PRm7
B07201PRm8
B07201PRm9
B07201PRm10
B07201PRm11
B07201PRm12
B07201PRm13
B07201PRm14
B07201PRm15
B07201PRm16
B07201PRm17
B07201PRm18
B07201PRm19
B07201PRm20
B07201PRm21
B07201PRm22
 
B07202m1
B07202m2
B07202m3
B07202m4
B07202m5
B07202m6
B07202m7
B07202m8
B07202m9
B07202m10
B07202m11
B07202m12
B07202m13
B07202m14
 
B07202PRm1
B07202PRm2
B07202PRm3
B07202PRm4
B07202PRm5
B07202PRm6
B07202PRm7
B07202PRm8
B07202PRm9
B07202PRm10
B07202PRm11
 
B07203m1
B07203m2
B07203m3
B07203m4
B07203m5
B07203m6
B07203m7
B07203m8
B07203m9
B07203m10
B07203m11
 
B07203PRm1
B07203PRm2
B07203PRm3
B07203PRm4
B07203PRm5
B07203PRm6
B07203PRm7
B07203PRm8
 
B07204m1
B07204m2
B07204m3
B07204m4
B07204m5
B07204m6
B07204m7
B07204m8
B07204m9
B07204m10
B07204m11
B07204m12
B07204m13
B07204m14
B07204m15
B07204m16
B07204m17
B07204m18
B07204m19
 
B07204PRm1
B07204PRm2
B07204PRm3
B07204PRm4
B07204PRm5
B07204PRm6
B07204PRm7
B07204PRm8
B07204PRm9
B07204PRm10
B07204PRm11
B07204PRm12
B07204PRm13
B07204PRm14
B07204PRm15
B07204PRm16
B07204PRm17
;
RUN;
TITLE2;
