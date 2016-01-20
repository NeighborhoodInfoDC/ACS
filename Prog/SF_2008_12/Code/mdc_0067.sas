TITLE2 "m20125dc0067000";
DATA work.SFm0067dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0067000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS BY EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 16 YEARS AND OVER (WHITE ALONE) */
/*Universe:  White alone population 16 years and over */
 
B20005Am1='Total:'
B20005Am2='Male:'
B20005Am3='Worked full-time, year-round in the past 12 months:'
B20005Am4='No earnings'
B20005Am5='With earnings:'
B20005Am6='$1 to $2,499 or loss'
B20005Am7='$2,500 to $4,999'
B20005Am8='$5,000 to $7,499'
B20005Am9='$7,500 to $9,999'
B20005Am10='$10,000 to $12,499'
B20005Am11='$12,500 to $14,999'
B20005Am12='$15,000 to $17,499'
B20005Am13='$17,500 to $19,999'
B20005Am14='$20,000 to $22,499'
B20005Am15='$22,500 to $24,999'
B20005Am16='$25,000 to $29,999'
B20005Am17='$30,000 to $34,999'
B20005Am18='$35,000 to $39,999'
B20005Am19='$40,000 to $44,999'
B20005Am20='$45,000 to $49,999'
B20005Am21='$50,000 to $54,999'
B20005Am22='$55,000 to $64,999'
B20005Am23='$65,000 to $74,999'
B20005Am24='$75,000 to $99,999'
B20005Am25='$100,000 or more'
B20005Am26='Other:'
B20005Am27='No earnings'
B20005Am28='With earnings:'
B20005Am29='$1 to $2,499 or loss'
B20005Am30='$2,500 to $4,999'
B20005Am31='$5,000 to $7,499'
B20005Am32='$7,500 to $9,999'
B20005Am33='$10,000 to $12,499'
B20005Am34='$12,500 to $14,999'
B20005Am35='$15,000 to $17,499'
B20005Am36='$17,500 to $19,999'
B20005Am37='$20,000 to $22,499'
B20005Am38='$22,500 to $24,999'
B20005Am39='$25,000 to $29,999'
B20005Am40='$30,000 to $34,999'
B20005Am41='$35,000 to $39,999'
B20005Am42='$40,000 to $44,999'
B20005Am43='$45,000 to $49,999'
B20005Am44='$50,000 to $54,999'
B20005Am45='$55,000 to $64,999'
B20005Am46='$65,000 to $74,999'
B20005Am47='$75,000 to $99,999'
B20005Am48='$100,000 or more'
B20005Am49='Female:'
B20005Am50='Worked full-time, year-round in the past 12 months:'
B20005Am51='No earnings'
B20005Am52='With earnings:'
B20005Am53='$1 to $2,499 or loss'
B20005Am54='$2,500 to $4,999'
B20005Am55='$5,000 to $7,499'
B20005Am56='$7,500 to $9,999'
B20005Am57='$10,000 to $12,499'
B20005Am58='$12,500 to $14,999'
B20005Am59='$15,000 to $17,499'
B20005Am60='$17,500 to $19,999'
B20005Am61='$20,000 to $22,499'
B20005Am62='$22,500 to $24,999'
B20005Am63='$25,000 to $29,999'
B20005Am64='$30,000 to $34,999'
B20005Am65='$35,000 to $39,999'
B20005Am66='$40,000 to $44,999'
B20005Am67='$45,000 to $49,999'
B20005Am68='$50,000 to $54,999'
B20005Am69='$55,000 to $64,999'
B20005Am70='$65,000 to $74,999'
B20005Am71='$75,000 to $99,999'
B20005Am72='$100,000 or more'
B20005Am73='Other:'
B20005Am74='No earnings'
B20005Am75='With earnings:'
B20005Am76='$1 to $2,499 or loss'
B20005Am77='$2,500 to $4,999'
B20005Am78='$5,000 to $7,499'
B20005Am79='$7,500 to $9,999'
B20005Am80='$10,000 to $12,499'
B20005Am81='$12,500 to $14,999'
B20005Am82='$15,000 to $17,499'
B20005Am83='$17,500 to $19,999'
B20005Am84='$20,000 to $22,499'
B20005Am85='$22,500 to $24,999'
B20005Am86='$25,000 to $29,999'
B20005Am87='$30,000 to $34,999'
B20005Am88='$35,000 to $39,999'
B20005Am89='$40,000 to $44,999'
B20005Am90='$45,000 to $49,999'
B20005Am91='$50,000 to $54,999'
B20005Am92='$55,000 to $64,999'
B20005Am93='$65,000 to $74,999'
B20005Am94='$75,000 to $99,999'
B20005Am95='$100,000 or more'
/*SEX BY WORK EXPERIENCE IN THE PAST 12 MONTHS BY EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE POPULATION 16 YEARS AND OVER (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone population 16 years and over */
 
B20005Bm1='Total:'
B20005Bm2='Male:'
B20005Bm3='Worked full-time, year-round in the past 12 months:'
B20005Bm4='No earnings'
B20005Bm5='With earnings:'
B20005Bm6='$1 to $2,499 or loss'
B20005Bm7='$2,500 to $4,999'
B20005Bm8='$5,000 to $7,499'
B20005Bm9='$7,500 to $9,999'
B20005Bm10='$10,000 to $12,499'
B20005Bm11='$12,500 to $14,999'
B20005Bm12='$15,000 to $17,499'
B20005Bm13='$17,500 to $19,999'
B20005Bm14='$20,000 to $22,499'
B20005Bm15='$22,500 to $24,999'
B20005Bm16='$25,000 to $29,999'
B20005Bm17='$30,000 to $34,999'
B20005Bm18='$35,000 to $39,999'
B20005Bm19='$40,000 to $44,999'
B20005Bm20='$45,000 to $49,999'
B20005Bm21='$50,000 to $54,999'
B20005Bm22='$55,000 to $64,999'
B20005Bm23='$65,000 to $74,999'
B20005Bm24='$75,000 to $99,999'
B20005Bm25='$100,000 or more'
B20005Bm26='Other:'
B20005Bm27='No earnings'
B20005Bm28='With earnings:'
B20005Bm29='$1 to $2,499 or loss'
B20005Bm30='$2,500 to $4,999'
B20005Bm31='$5,000 to $7,499'
B20005Bm32='$7,500 to $9,999'
B20005Bm33='$10,000 to $12,499'
B20005Bm34='$12,500 to $14,999'
B20005Bm35='$15,000 to $17,499'
B20005Bm36='$17,500 to $19,999'
B20005Bm37='$20,000 to $22,499'
B20005Bm38='$22,500 to $24,999'
B20005Bm39='$25,000 to $29,999'
B20005Bm40='$30,000 to $34,999'
B20005Bm41='$35,000 to $39,999'
B20005Bm42='$40,000 to $44,999'
B20005Bm43='$45,000 to $49,999'
B20005Bm44='$50,000 to $54,999'
B20005Bm45='$55,000 to $64,999'
B20005Bm46='$65,000 to $74,999'
B20005Bm47='$75,000 to $99,999'
B20005Bm48='$100,000 or more'
B20005Bm49='Female:'
B20005Bm50='Worked full-time, year-round in the past 12 months:'
B20005Bm51='No earnings'
B20005Bm52='With earnings:'
B20005Bm53='$1 to $2,499 or loss'
B20005Bm54='$2,500 to $4,999'
B20005Bm55='$5,000 to $7,499'
B20005Bm56='$7,500 to $9,999'
B20005Bm57='$10,000 to $12,499'
B20005Bm58='$12,500 to $14,999'
B20005Bm59='$15,000 to $17,499'
B20005Bm60='$17,500 to $19,999'
B20005Bm61='$20,000 to $22,499'
B20005Bm62='$22,500 to $24,999'
B20005Bm63='$25,000 to $29,999'
B20005Bm64='$30,000 to $34,999'
B20005Bm65='$35,000 to $39,999'
B20005Bm66='$40,000 to $44,999'
B20005Bm67='$45,000 to $49,999'
B20005Bm68='$50,000 to $54,999'
B20005Bm69='$55,000 to $64,999'
B20005Bm70='$65,000 to $74,999'
B20005Bm71='$75,000 to $99,999'
B20005Bm72='$100,000 or more'
B20005Bm73='Other:'
B20005Bm74='No earnings'
B20005Bm75='With earnings:'
B20005Bm76='$1 to $2,499 or loss'
B20005Bm77='$2,500 to $4,999'
B20005Bm78='$5,000 to $7,499'
B20005Bm79='$7,500 to $9,999'
B20005Bm80='$10,000 to $12,499'
B20005Bm81='$12,500 to $14,999'
B20005Bm82='$15,000 to $17,499'
B20005Bm83='$17,500 to $19,999'
B20005Bm84='$20,000 to $22,499'
B20005Bm85='$22,500 to $24,999'
B20005Bm86='$25,000 to $29,999'
B20005Bm87='$30,000 to $34,999'
B20005Bm88='$35,000 to $39,999'
B20005Bm89='$40,000 to $44,999'
B20005Bm90='$45,000 to $49,999'
B20005Bm91='$50,000 to $54,999'
B20005Bm92='$55,000 to $64,999'
B20005Bm93='$65,000 to $74,999'
B20005Bm94='$75,000 to $99,999'
B20005Bm95='$100,000 or more'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B20005Am1
B20005Am2
B20005Am3
B20005Am4
B20005Am5
B20005Am6
B20005Am7
B20005Am8
B20005Am9
B20005Am10
B20005Am11
B20005Am12
B20005Am13
B20005Am14
B20005Am15
B20005Am16
B20005Am17
B20005Am18
B20005Am19
B20005Am20
B20005Am21
B20005Am22
B20005Am23
B20005Am24
B20005Am25
B20005Am26
B20005Am27
B20005Am28
B20005Am29
B20005Am30
B20005Am31
B20005Am32
B20005Am33
B20005Am34
B20005Am35
B20005Am36
B20005Am37
B20005Am38
B20005Am39
B20005Am40
B20005Am41
B20005Am42
B20005Am43
B20005Am44
B20005Am45
B20005Am46
B20005Am47
B20005Am48
B20005Am49
B20005Am50
B20005Am51
B20005Am52
B20005Am53
B20005Am54
B20005Am55
B20005Am56
B20005Am57
B20005Am58
B20005Am59
B20005Am60
B20005Am61
B20005Am62
B20005Am63
B20005Am64
B20005Am65
B20005Am66
B20005Am67
B20005Am68
B20005Am69
B20005Am70
B20005Am71
B20005Am72
B20005Am73
B20005Am74
B20005Am75
B20005Am76
B20005Am77
B20005Am78
B20005Am79
B20005Am80
B20005Am81
B20005Am82
B20005Am83
B20005Am84
B20005Am85
B20005Am86
B20005Am87
B20005Am88
B20005Am89
B20005Am90
B20005Am91
B20005Am92
B20005Am93
B20005Am94
B20005Am95
 
B20005Bm1
B20005Bm2
B20005Bm3
B20005Bm4
B20005Bm5
B20005Bm6
B20005Bm7
B20005Bm8
B20005Bm9
B20005Bm10
B20005Bm11
B20005Bm12
B20005Bm13
B20005Bm14
B20005Bm15
B20005Bm16
B20005Bm17
B20005Bm18
B20005Bm19
B20005Bm20
B20005Bm21
B20005Bm22
B20005Bm23
B20005Bm24
B20005Bm25
B20005Bm26
B20005Bm27
B20005Bm28
B20005Bm29
B20005Bm30
B20005Bm31
B20005Bm32
B20005Bm33
B20005Bm34
B20005Bm35
B20005Bm36
B20005Bm37
B20005Bm38
B20005Bm39
B20005Bm40
B20005Bm41
B20005Bm42
B20005Bm43
B20005Bm44
B20005Bm45
B20005Bm46
B20005Bm47
B20005Bm48
B20005Bm49
B20005Bm50
B20005Bm51
B20005Bm52
B20005Bm53
B20005Bm54
B20005Bm55
B20005Bm56
B20005Bm57
B20005Bm58
B20005Bm59
B20005Bm60
B20005Bm61
B20005Bm62
B20005Bm63
B20005Bm64
B20005Bm65
B20005Bm66
B20005Bm67
B20005Bm68
B20005Bm69
B20005Bm70
B20005Bm71
B20005Bm72
B20005Bm73
B20005Bm74
B20005Bm75
B20005Bm76
B20005Bm77
B20005Bm78
B20005Bm79
B20005Bm80
B20005Bm81
B20005Bm82
B20005Bm83
B20005Bm84
B20005Bm85
B20005Bm86
B20005Bm87
B20005Bm88
B20005Bm89
B20005Bm90
B20005Bm91
B20005Bm92
B20005Bm93
B20005Bm94
B20005Bm95
;
RUN;
TITLE2;
