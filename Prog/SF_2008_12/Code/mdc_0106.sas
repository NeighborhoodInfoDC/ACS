TITLE2 "m20125dc0106000";
DATA work.SFm0106dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0106000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*VALUE */
/*Universe:  Owner-occupied housing units */
 
B25075m1='Total:'
B25075m2='Less than $10,000'
B25075m3='$10,000 to $14,999'
B25075m4='$15,000 to $19,999'
B25075m5='$20,000 to $24,999'
B25075m6='$25,000 to $29,999'
B25075m7='$30,000 to $34,999'
B25075m8='$35,000 to $39,999'
B25075m9='$40,000 to $49,999'
B25075m10='$50,000 to $59,999'
B25075m11='$60,000 to $69,999'
B25075m12='$70,000 to $79,999'
B25075m13='$80,000 to $89,999'
B25075m14='$90,000 to $99,999'
B25075m15='$100,000 to $124,999'
B25075m16='$125,000 to $149,999'
B25075m17='$150,000 to $174,999'
B25075m18='$175,000 to $199,999'
B25075m19='$200,000 to $249,999'
B25075m20='$250,000 to $299,999'
B25075m21='$300,000 to $399,999'
B25075m22='$400,000 to $499,999'
B25075m23='$500,000 to $749,999'
B25075m24='$750,000 to $999,999'
B25075m25='$1,000,000 or more'
/*LOWER VALUE QUARTILE (DOLLARS) */
/*Universe:  Owner-occupied housing units */
 
B25076m1='Lower value quartile (dollars)'
/*MEDIAN VALUE (DOLLARS) */
/*Universe:  Owner-occupied housing units */
 
B25077m1='Median value (dollars)'
/*UPPER VALUE QUARTILE (DOLLARS) */
/*Universe:  Owner-occupied housing units */
 
B25078m1='Upper value quartile (dollars)'
/*AGGREGATE VALUE (DOLLARS) BY AGE OF HOUSEHOLDER */
/*Universe:  Owner-occupied housing units */
 
B25079m1='Aggregate value (dollars):'
B25079m2='Householder 15 to 24 years (dollars)'
B25079m3='Householder 25 to 34 years (dollars)'
B25079m4='Householder 35 to 64 years (dollars)'
B25079m5='Householder 65 years and over (dollars)'
/*AGGREGATE VALUE (DOLLARS) BY UNITS IN STRUCTURE */
/*Universe:  Owner-occupied housing units */
 
B25080m1='Aggregate value (dollars):'
B25080m2='1, detached (dollars)'
B25080m3='1, attached (dollars)'
B25080m4='2 (dollars)'
B25080m5='3 or 4 (dollars)'
B25080m6='5 or more (dollars)'
B25080m7='Mobile home (dollars)'
B25080m8='Boat, RV, van, etc. (dollars)'
/*MORTGAGE STATUS */
/*Universe:  Owner-occupied housing units */
 
B25081m1='Total:'
B25081m2='Housing units with a mortgage, contract to purchase, or similar debt:'
B25081m3='With either a second mortgage or home equity loan, but not both:'
B25081m4='Second mortgage only'
B25081m5='Home equity loan only'
B25081m6='Both second mortgage and home equity loan'
B25081m7='No second mortgage and no home equity loan'
B25081m8='Housing units without a mortgage'
/*AGGREGATE VALUE (DOLLARS) BY MORTGAGE STATUS */
/*Universe:  Owner-occupied housing units */
 
B25082m1='Aggregate value (dollars):'
B25082m2='Housing units with a mortgage (dollars)'
B25082m3='Housing units without a mortgage (dollars)'
/*MEDIAN VALUE (DOLLARS) FOR MOBILE HOMES */
/*Universe:  Owner-occupied mobile homes */
 
B25083m1='Median value (dollars)'
/*PRICE ASKED */
/*Universe:  Vacant-for-sale-only and sold, not occupied housing units */
 
B25085m1='Total:'
B25085m2='Less than $10,000'
B25085m3='$10,000 to $14,999'
B25085m4='$15,000 to $19,999'
B25085m5='$20,000 to $24,999'
B25085m6='$25,000 to $29,999'
B25085m7='$30,000 to $34,999'
B25085m8='$35,000 to $39,999'
B25085m9='$40,000 to $49,999'
B25085m10='$50,000 to $59,999'
B25085m11='$60,000 to $69,999'
B25085m12='$70,000 to $79,999'
B25085m13='$80,000 to $89,999'
B25085m14='$90,000 to $99,999'
B25085m15='$100,000 to $124,999'
B25085m16='$125,000 to $149,999'
B25085m17='$150,000 to $174,999'
B25085m18='$175,000 to $199,999'
B25085m19='$200,000 to $249,999'
B25085m20='$250,000 to $299,999'
B25085m21='$300,000 to $399,999'
B25085m22='$400,000 to $499,999'
B25085m23='$500,000 to $749,999'
B25085m24='$750,000 to $999,999'
B25085m25='$1,000,000 or more'
/*AGGREGATE PRICE ASKED (DOLLARS) */
/*Universe:  Vacant-for-sale-only and sold, not occupied housing units */
 
B25086m1='Aggregate price asked (dollars)'
/*MORTGAGE STATUS AND SELECTED MONTHLY OWNER COSTS */
/*Universe:  Owner-occupied housing units */
 
B25087m1='Total:'
B25087m2='Housing units with a mortgage:'
B25087m3='Less than $200'
B25087m4='$200 to $299'
B25087m5='$300 to $399'
B25087m6='$400 to $499'
B25087m7='$500 to $599'
B25087m8='$600 to $699'
B25087m9='$700 to $799'
B25087m10='$800 to $899'
B25087m11='$900 to $999'
B25087m12='$1,000 to $1,249'
B25087m13='$1,250 to $1,499'
B25087m14='$1,500 to $1,999'
B25087m15='$2,000 to $2,499'
B25087m16='$2,500 to $2,999'
B25087m17='$3,000 or more'
B25087m18='Housing units without a mortgage:'
B25087m19='Less than $100'
B25087m20='$100 to $149'
B25087m21='$150 to $199'
B25087m22='$200 to $249'
B25087m23='$250 to $299'
B25087m24='$300 to $349'
B25087m25='$350 to $399'
B25087m26='$400 to $499'
B25087m27='$500 to $599'
B25087m28='$600 to $699'
B25087m29='$700 or more'
/*MEDIAN SELECTED MONTHLY OWNER COSTS (DOLLARS) BY MORTGAGE STATUS */
/*Universe:  Owner-occupied housing units */
/*Median selected monthly owner costs (dollars) -- */
 
B25088m1='Total:'
B25088m2='Housing units with a mortgage (dollars)'
B25088m3='Housing units without a mortgage (dollars)'
/*AGGREGATE SELECTED MONTHLY OWNER COSTS (DOLLARS) BY MORTGAGE STATUS */
/*Universe:  Owner-occupied housing units */
 
B25089m1='Aggregate selected monthly owner costs (dollars):'
B25089m2='Housing units with a mortgage (dollars)'
B25089m3='Housing units without a mortgage (dollars)'
/*MORTGAGE STATUS BY AGGREGATE REAL ESTATE TAXES PAID (DOLLARS) */
/*Universe:  Owner-occupied housing units */
 
B25090m1='Aggregate real estate taxes paid (dollars):'
B25090m2='Aggregate real estate taxes paid for units with a mortgage (dollars)'
B25090m3='Aggregate real estate taxes paid for units without a mortgage (dollars)'
/*MORTGAGE STATUS BY SELECTED MONTHLY OWNER COSTS AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS */
/*Universe:  Owner-occupied housing units */
 
B25091m1='Total:'
B25091m2='Housing units with a mortgage:'
B25091m3='Less than 10.0 percent'
B25091m4='10.0 to 14.9 percent'
B25091m5='15.0 to 19.9 percent'
B25091m6='20.0 to 24.9 percent'
B25091m7='25.0 to 29.9 percent'
B25091m8='30.0 to 34.9 percent'
B25091m9='35.0 to 39.9 percent'
B25091m10='40.0 to 49.9 percent'
B25091m11='50.0 percent or more'
B25091m12='Not computed'
B25091m13='Housing units without a mortgage:'
B25091m14='Less than 10.0 percent'
B25091m15='10.0 to 14.9 percent'
B25091m16='15.0 to 19.9 percent'
B25091m17='20.0 to 24.9 percent'
B25091m18='25.0 to 29.9 percent'
B25091m19='30.0 to 34.9 percent'
B25091m20='35.0 to 39.9 percent'
B25091m21='40.0 to 49.9 percent'
B25091m22='50.0 percent or more'
B25091m23='Not computed'
/*MEDIAN SELECTED MONTHLY OWNER COSTS AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS */
/*Universe:  Owner-occupied housing units */
/*Median selected monthly owner costs as a percentage of household income in the past 12 months -- */
 
B25092m1='Total:'
B25092m2='Housing units with a mortgage'
B25092m3='Housing units without a mortgage'
/*AGE OF HOUSEHOLDER BY SELECTED MONTHLY OWNER COSTS AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS */
/*Universe:  Owner-occupied housing units */
 
B25093m1='Total:'
B25093m2='Householder 15 to 24 years:'
B25093m3='Less than 20.0 percent'
B25093m4='20.0 to 24.9 percent'
B25093m5='25.0 to 29.9 percent'
B25093m6='30.0 to 34.9 percent'
B25093m7='35.0 percent or more'
B25093m8='Not computed'
B25093m9='Householder 25 to 34 years:'
B25093m10='Less than 20.0 percent'
B25093m11='20.0 to 24.9 percent'
B25093m12='25.0 to 29.9 percent'
B25093m13='30.0 to 34.9 percent'
B25093m14='35.0 percent or more'
B25093m15='Not computed'
B25093m16='Householder 35 to 64 years:'
B25093m17='Less than 20.0 percent'
B25093m18='20.0 to 24.9 percent'
B25093m19='25.0 to 29.9 percent'
B25093m20='30.0 to 34.9 percent'
B25093m21='35.0 percent or more'
B25093m22='Not computed'
B25093m23='Householder 65 years and over:'
B25093m24='Less than 20.0 percent'
B25093m25='20.0 to 24.9 percent'
B25093m26='25.0 to 29.9 percent'
B25093m27='30.0 to 34.9 percent'
B25093m28='35.0 percent or more'
B25093m29='Not computed'
/*SELECTED MONTHLY OWNER COSTS */
/*Universe:  Owner-occupied housing units */
 
B25094m1='Total:'
B25094m2='Less than $100'
B25094m3='$100 to $199'
B25094m4='$200 to $299'
B25094m5='$300 to $399'
B25094m6='$400 to $499'
B25094m7='$500 to $599'
B25094m8='$600 to $699'
B25094m9='$700 to $799'
B25094m10='$800 to $899'
B25094m11='$900 to $999'
B25094m12='$1,000 to $1,499'
B25094m13='$1,500 to $1,999'
B25094m14='$2,000 or more'
/*MORTGAGE STATUS BY VALUE */
/*Universe:  Owner-occupied housing units */
 
B25096m1='Total:'
B25096m2='With a mortgage:'
B25096m3='Less than $50,000'
B25096m4='$50,000 to $99,999'
B25096m5='$100,000 to $149,999'
B25096m6='$150,000 to $199,999'
B25096m7='$200,000 to $299,999'
B25096m8='$300,000 to $499,999'
B25096m9='$500,000 or more'
B25096m10='Not mortgaged:'
B25096m11='Less than $50,000'
B25096m12='$50,000 to $99,999'
B25096m13='$100,000 to $149,999'
B25096m14='$150,000 to $199,999'
B25096m15='$200,000 to $299,999'
B25096m16='$300,000 to $499,999'
B25096m17='$500,000 or more'
/*MORTGAGE STATUS BY MEDIAN VALUE (DOLLARS) */
/*Universe:  Owner-occupied housing units */
/*Median value -- */
 
B25097m1='Total:'
B25097m2='Median value for units with a mortgage'
B25097m3='Median value for units without a mortgage'
/*HOUSEHOLD INCOME BY SELECTED MONTHLY OWNER COSTS AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS */
/*Universe:  Owner-occupied housing units */
 
C25095m1='Total:'
C25095m2='Less than $10,000:'
C25095m3='Less than 30.0 percent'
C25095m4='30.0 percent or more'
C25095m5='Not computed'
C25095m6='$10,000 to $19,999:'
C25095m7='Less than 30.0 percent'
C25095m8='30.0 percent or more'
C25095m9='Not computed'
C25095m10='$20,000 to $34,999:'
C25095m11='Less than 30.0 percent'
C25095m12='30.0 percent or more'
C25095m13='Not computed'
C25095m14='$35,000 to $49,999:'
C25095m15='Less than 30.0 percent'
C25095m16='30.0 percent or more'
C25095m17='Not computed'
C25095m18='$50,000 to $74,999:'
C25095m19='Less than 30.0 percent'
C25095m20='30.0 percent or more'
C25095m21='Not computed'
C25095m22='$75,000 to $99,999:'
C25095m23='Less than 30.0 percent'
C25095m24='30.0 percent or more'
C25095m25='Not computed'
C25095m26='$100,000 or more:'
C25095m27='Less than 30.0 percent'
C25095m28='30.0 percent or more'
C25095m29='Not computed'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B25075m1
B25075m2
B25075m3
B25075m4
B25075m5
B25075m6
B25075m7
B25075m8
B25075m9
B25075m10
B25075m11
B25075m12
B25075m13
B25075m14
B25075m15
B25075m16
B25075m17
B25075m18
B25075m19
B25075m20
B25075m21
B25075m22
B25075m23
B25075m24
B25075m25
 
B25076m1
 
B25077m1
 
B25078m1
 
B25079m1
B25079m2
B25079m3
B25079m4
B25079m5
 
B25080m1
B25080m2
B25080m3
B25080m4
B25080m5
B25080m6
B25080m7
B25080m8
 
B25081m1
B25081m2
B25081m3
B25081m4
B25081m5
B25081m6
B25081m7
B25081m8
 
B25082m1
B25082m2
B25082m3
 
B25083m1
 
B25085m1
B25085m2
B25085m3
B25085m4
B25085m5
B25085m6
B25085m7
B25085m8
B25085m9
B25085m10
B25085m11
B25085m12
B25085m13
B25085m14
B25085m15
B25085m16
B25085m17
B25085m18
B25085m19
B25085m20
B25085m21
B25085m22
B25085m23
B25085m24
B25085m25
 
B25086m1
 
B25087m1
B25087m2
B25087m3
B25087m4
B25087m5
B25087m6
B25087m7
B25087m8
B25087m9
B25087m10
B25087m11
B25087m12
B25087m13
B25087m14
B25087m15
B25087m16
B25087m17
B25087m18
B25087m19
B25087m20
B25087m21
B25087m22
B25087m23
B25087m24
B25087m25
B25087m26
B25087m27
B25087m28
B25087m29
 
B25088m1
B25088m2
B25088m3
 
B25089m1
B25089m2
B25089m3
 
B25090m1
B25090m2
B25090m3
 
B25091m1
B25091m2
B25091m3
B25091m4
B25091m5
B25091m6
B25091m7
B25091m8
B25091m9
B25091m10
B25091m11
B25091m12
B25091m13
B25091m14
B25091m15
B25091m16
B25091m17
B25091m18
B25091m19
B25091m20
B25091m21
B25091m22
B25091m23
 
B25092m1
B25092m2
B25092m3
 
B25093m1
B25093m2
B25093m3
B25093m4
B25093m5
B25093m6
B25093m7
B25093m8
B25093m9
B25093m10
B25093m11
B25093m12
B25093m13
B25093m14
B25093m15
B25093m16
B25093m17
B25093m18
B25093m19
B25093m20
B25093m21
B25093m22
B25093m23
B25093m24
B25093m25
B25093m26
B25093m27
B25093m28
B25093m29
 
B25094m1
B25094m2
B25094m3
B25094m4
B25094m5
B25094m6
B25094m7
B25094m8
B25094m9
B25094m10
B25094m11
B25094m12
B25094m13
B25094m14
 
B25096m1
B25096m2
B25096m3
B25096m4
B25096m5
B25096m6
B25096m7
B25096m8
B25096m9
B25096m10
B25096m11
B25096m12
B25096m13
B25096m14
B25096m15
B25096m16
B25096m17
 
B25097m1
B25097m2
B25097m3
 
C25095m1
C25095m2
C25095m3
C25095m4
C25095m5
C25095m6
C25095m7
C25095m8
C25095m9
C25095m10
C25095m11
C25095m12
C25095m13
C25095m14
C25095m15
C25095m16
C25095m17
C25095m18
C25095m19
C25095m20
C25095m21
C25095m22
C25095m23
C25095m24
C25095m25
C25095m26
C25095m27
C25095m28
C25095m29
;
RUN;
TITLE2;
