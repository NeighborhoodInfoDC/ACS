TITLE2 "e20125md0106000";
DATA work.SFe0106md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0106000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*VALUE */
/*Universe:  Owner-occupied housing units */
 
B25075e1='Total:'
B25075e2='Less than $10,000'
B25075e3='$10,000 to $14,999'
B25075e4='$15,000 to $19,999'
B25075e5='$20,000 to $24,999'
B25075e6='$25,000 to $29,999'
B25075e7='$30,000 to $34,999'
B25075e8='$35,000 to $39,999'
B25075e9='$40,000 to $49,999'
B25075e10='$50,000 to $59,999'
B25075e11='$60,000 to $69,999'
B25075e12='$70,000 to $79,999'
B25075e13='$80,000 to $89,999'
B25075e14='$90,000 to $99,999'
B25075e15='$100,000 to $124,999'
B25075e16='$125,000 to $149,999'
B25075e17='$150,000 to $174,999'
B25075e18='$175,000 to $199,999'
B25075e19='$200,000 to $249,999'
B25075e20='$250,000 to $299,999'
B25075e21='$300,000 to $399,999'
B25075e22='$400,000 to $499,999'
B25075e23='$500,000 to $749,999'
B25075e24='$750,000 to $999,999'
B25075e25='$1,000,000 or more'
/*LOWER VALUE QUARTILE (DOLLARS) */
/*Universe:  Owner-occupied housing units */
 
B25076e1='Lower value quartile (dollars)'
/*MEDIAN VALUE (DOLLARS) */
/*Universe:  Owner-occupied housing units */
 
B25077e1='Median value (dollars)'
/*UPPER VALUE QUARTILE (DOLLARS) */
/*Universe:  Owner-occupied housing units */
 
B25078e1='Upper value quartile (dollars)'
/*AGGREGATE VALUE (DOLLARS) BY AGE OF HOUSEHOLDER */
/*Universe:  Owner-occupied housing units */
 
B25079e1='Aggregate value (dollars):'
B25079e2='Householder 15 to 24 years (dollars)'
B25079e3='Householder 25 to 34 years (dollars)'
B25079e4='Householder 35 to 64 years (dollars)'
B25079e5='Householder 65 years and over (dollars)'
/*AGGREGATE VALUE (DOLLARS) BY UNITS IN STRUCTURE */
/*Universe:  Owner-occupied housing units */
 
B25080e1='Aggregate value (dollars):'
B25080e2='1, detached (dollars)'
B25080e3='1, attached (dollars)'
B25080e4='2 (dollars)'
B25080e5='3 or 4 (dollars)'
B25080e6='5 or more (dollars)'
B25080e7='Mobile home (dollars)'
B25080e8='Boat, RV, van, etc. (dollars)'
/*MORTGAGE STATUS */
/*Universe:  Owner-occupied housing units */
 
B25081e1='Total:'
B25081e2='Housing units with a mortgage, contract to purchase, or similar debt:'
B25081e3='With either a second mortgage or home equity loan, but not both:'
B25081e4='Second mortgage only'
B25081e5='Home equity loan only'
B25081e6='Both second mortgage and home equity loan'
B25081e7='No second mortgage and no home equity loan'
B25081e8='Housing units without a mortgage'
/*AGGREGATE VALUE (DOLLARS) BY MORTGAGE STATUS */
/*Universe:  Owner-occupied housing units */
 
B25082e1='Aggregate value (dollars):'
B25082e2='Housing units with a mortgage (dollars)'
B25082e3='Housing units without a mortgage (dollars)'
/*MEDIAN VALUE (DOLLARS) FOR MOBILE HOMES */
/*Universe:  Owner-occupied mobile homes */
 
B25083e1='Median value (dollars)'
/*PRICE ASKED */
/*Universe:  Vacant-for-sale-only and sold, not occupied housing units */
 
B25085e1='Total:'
B25085e2='Less than $10,000'
B25085e3='$10,000 to $14,999'
B25085e4='$15,000 to $19,999'
B25085e5='$20,000 to $24,999'
B25085e6='$25,000 to $29,999'
B25085e7='$30,000 to $34,999'
B25085e8='$35,000 to $39,999'
B25085e9='$40,000 to $49,999'
B25085e10='$50,000 to $59,999'
B25085e11='$60,000 to $69,999'
B25085e12='$70,000 to $79,999'
B25085e13='$80,000 to $89,999'
B25085e14='$90,000 to $99,999'
B25085e15='$100,000 to $124,999'
B25085e16='$125,000 to $149,999'
B25085e17='$150,000 to $174,999'
B25085e18='$175,000 to $199,999'
B25085e19='$200,000 to $249,999'
B25085e20='$250,000 to $299,999'
B25085e21='$300,000 to $399,999'
B25085e22='$400,000 to $499,999'
B25085e23='$500,000 to $749,999'
B25085e24='$750,000 to $999,999'
B25085e25='$1,000,000 or more'
/*AGGREGATE PRICE ASKED (DOLLARS) */
/*Universe:  Vacant-for-sale-only and sold, not occupied housing units */
 
B25086e1='Aggregate price asked (dollars)'
/*MORTGAGE STATUS AND SELECTED MONTHLY OWNER COSTS */
/*Universe:  Owner-occupied housing units */
 
B25087e1='Total:'
B25087e2='Housing units with a mortgage:'
B25087e3='Less than $200'
B25087e4='$200 to $299'
B25087e5='$300 to $399'
B25087e6='$400 to $499'
B25087e7='$500 to $599'
B25087e8='$600 to $699'
B25087e9='$700 to $799'
B25087e10='$800 to $899'
B25087e11='$900 to $999'
B25087e12='$1,000 to $1,249'
B25087e13='$1,250 to $1,499'
B25087e14='$1,500 to $1,999'
B25087e15='$2,000 to $2,499'
B25087e16='$2,500 to $2,999'
B25087e17='$3,000 or more'
B25087e18='Housing units without a mortgage:'
B25087e19='Less than $100'
B25087e20='$100 to $149'
B25087e21='$150 to $199'
B25087e22='$200 to $249'
B25087e23='$250 to $299'
B25087e24='$300 to $349'
B25087e25='$350 to $399'
B25087e26='$400 to $499'
B25087e27='$500 to $599'
B25087e28='$600 to $699'
B25087e29='$700 or more'
/*MEDIAN SELECTED MONTHLY OWNER COSTS (DOLLARS) BY MORTGAGE STATUS */
/*Universe:  Owner-occupied housing units */
/*Median selected monthly owner costs (dollars) -- */
 
B25088e1='Total:'
B25088e2='Housing units with a mortgage (dollars)'
B25088e3='Housing units without a mortgage (dollars)'
/*AGGREGATE SELECTED MONTHLY OWNER COSTS (DOLLARS) BY MORTGAGE STATUS */
/*Universe:  Owner-occupied housing units */
 
B25089e1='Aggregate selected monthly owner costs (dollars):'
B25089e2='Housing units with a mortgage (dollars)'
B25089e3='Housing units without a mortgage (dollars)'
/*MORTGAGE STATUS BY AGGREGATE REAL ESTATE TAXES PAID (DOLLARS) */
/*Universe:  Owner-occupied housing units */
 
B25090e1='Aggregate real estate taxes paid (dollars):'
B25090e2='Aggregate real estate taxes paid for units with a mortgage (dollars)'
B25090e3='Aggregate real estate taxes paid for units without a mortgage (dollars)'
/*MORTGAGE STATUS BY SELECTED MONTHLY OWNER COSTS AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS */
/*Universe:  Owner-occupied housing units */
 
B25091e1='Total:'
B25091e2='Housing units with a mortgage:'
B25091e3='Less than 10.0 percent'
B25091e4='10.0 to 14.9 percent'
B25091e5='15.0 to 19.9 percent'
B25091e6='20.0 to 24.9 percent'
B25091e7='25.0 to 29.9 percent'
B25091e8='30.0 to 34.9 percent'
B25091e9='35.0 to 39.9 percent'
B25091e10='40.0 to 49.9 percent'
B25091e11='50.0 percent or more'
B25091e12='Not computed'
B25091e13='Housing units without a mortgage:'
B25091e14='Less than 10.0 percent'
B25091e15='10.0 to 14.9 percent'
B25091e16='15.0 to 19.9 percent'
B25091e17='20.0 to 24.9 percent'
B25091e18='25.0 to 29.9 percent'
B25091e19='30.0 to 34.9 percent'
B25091e20='35.0 to 39.9 percent'
B25091e21='40.0 to 49.9 percent'
B25091e22='50.0 percent or more'
B25091e23='Not computed'
/*MEDIAN SELECTED MONTHLY OWNER COSTS AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS */
/*Universe:  Owner-occupied housing units */
/*Median selected monthly owner costs as a percentage of household income in the past 12 months -- */
 
B25092e1='Total:'
B25092e2='Housing units with a mortgage'
B25092e3='Housing units without a mortgage'
/*AGE OF HOUSEHOLDER BY SELECTED MONTHLY OWNER COSTS AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS */
/*Universe:  Owner-occupied housing units */
 
B25093e1='Total:'
B25093e2='Householder 15 to 24 years:'
B25093e3='Less than 20.0 percent'
B25093e4='20.0 to 24.9 percent'
B25093e5='25.0 to 29.9 percent'
B25093e6='30.0 to 34.9 percent'
B25093e7='35.0 percent or more'
B25093e8='Not computed'
B25093e9='Householder 25 to 34 years:'
B25093e10='Less than 20.0 percent'
B25093e11='20.0 to 24.9 percent'
B25093e12='25.0 to 29.9 percent'
B25093e13='30.0 to 34.9 percent'
B25093e14='35.0 percent or more'
B25093e15='Not computed'
B25093e16='Householder 35 to 64 years:'
B25093e17='Less than 20.0 percent'
B25093e18='20.0 to 24.9 percent'
B25093e19='25.0 to 29.9 percent'
B25093e20='30.0 to 34.9 percent'
B25093e21='35.0 percent or more'
B25093e22='Not computed'
B25093e23='Householder 65 years and over:'
B25093e24='Less than 20.0 percent'
B25093e25='20.0 to 24.9 percent'
B25093e26='25.0 to 29.9 percent'
B25093e27='30.0 to 34.9 percent'
B25093e28='35.0 percent or more'
B25093e29='Not computed'
/*SELECTED MONTHLY OWNER COSTS */
/*Universe:  Owner-occupied housing units */
 
B25094e1='Total:'
B25094e2='Less than $100'
B25094e3='$100 to $199'
B25094e4='$200 to $299'
B25094e5='$300 to $399'
B25094e6='$400 to $499'
B25094e7='$500 to $599'
B25094e8='$600 to $699'
B25094e9='$700 to $799'
B25094e10='$800 to $899'
B25094e11='$900 to $999'
B25094e12='$1,000 to $1,499'
B25094e13='$1,500 to $1,999'
B25094e14='$2,000 or more'
/*MORTGAGE STATUS BY VALUE */
/*Universe:  Owner-occupied housing units */
 
B25096e1='Total:'
B25096e2='With a mortgage:'
B25096e3='Less than $50,000'
B25096e4='$50,000 to $99,999'
B25096e5='$100,000 to $149,999'
B25096e6='$150,000 to $199,999'
B25096e7='$200,000 to $299,999'
B25096e8='$300,000 to $499,999'
B25096e9='$500,000 or more'
B25096e10='Not mortgaged:'
B25096e11='Less than $50,000'
B25096e12='$50,000 to $99,999'
B25096e13='$100,000 to $149,999'
B25096e14='$150,000 to $199,999'
B25096e15='$200,000 to $299,999'
B25096e16='$300,000 to $499,999'
B25096e17='$500,000 or more'
/*MORTGAGE STATUS BY MEDIAN VALUE (DOLLARS) */
/*Universe:  Owner-occupied housing units */
/*Median value -- */
 
B25097e1='Total:'
B25097e2='Median value for units with a mortgage'
B25097e3='Median value for units without a mortgage'
/*HOUSEHOLD INCOME BY SELECTED MONTHLY OWNER COSTS AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS */
/*Universe:  Owner-occupied housing units */
 
C25095e1='Total:'
C25095e2='Less than $10,000:'
C25095e3='Less than 30.0 percent'
C25095e4='30.0 percent or more'
C25095e5='Not computed'
C25095e6='$10,000 to $19,999:'
C25095e7='Less than 30.0 percent'
C25095e8='30.0 percent or more'
C25095e9='Not computed'
C25095e10='$20,000 to $34,999:'
C25095e11='Less than 30.0 percent'
C25095e12='30.0 percent or more'
C25095e13='Not computed'
C25095e14='$35,000 to $49,999:'
C25095e15='Less than 30.0 percent'
C25095e16='30.0 percent or more'
C25095e17='Not computed'
C25095e18='$50,000 to $74,999:'
C25095e19='Less than 30.0 percent'
C25095e20='30.0 percent or more'
C25095e21='Not computed'
C25095e22='$75,000 to $99,999:'
C25095e23='Less than 30.0 percent'
C25095e24='30.0 percent or more'
C25095e25='Not computed'
C25095e26='$100,000 or more:'
C25095e27='Less than 30.0 percent'
C25095e28='30.0 percent or more'
C25095e29='Not computed'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B25075e1
B25075e2
B25075e3
B25075e4
B25075e5
B25075e6
B25075e7
B25075e8
B25075e9
B25075e10
B25075e11
B25075e12
B25075e13
B25075e14
B25075e15
B25075e16
B25075e17
B25075e18
B25075e19
B25075e20
B25075e21
B25075e22
B25075e23
B25075e24
B25075e25
 
B25076e1
 
B25077e1
 
B25078e1
 
B25079e1
B25079e2
B25079e3
B25079e4
B25079e5
 
B25080e1
B25080e2
B25080e3
B25080e4
B25080e5
B25080e6
B25080e7
B25080e8
 
B25081e1
B25081e2
B25081e3
B25081e4
B25081e5
B25081e6
B25081e7
B25081e8
 
B25082e1
B25082e2
B25082e3
 
B25083e1
 
B25085e1
B25085e2
B25085e3
B25085e4
B25085e5
B25085e6
B25085e7
B25085e8
B25085e9
B25085e10
B25085e11
B25085e12
B25085e13
B25085e14
B25085e15
B25085e16
B25085e17
B25085e18
B25085e19
B25085e20
B25085e21
B25085e22
B25085e23
B25085e24
B25085e25
 
B25086e1
 
B25087e1
B25087e2
B25087e3
B25087e4
B25087e5
B25087e6
B25087e7
B25087e8
B25087e9
B25087e10
B25087e11
B25087e12
B25087e13
B25087e14
B25087e15
B25087e16
B25087e17
B25087e18
B25087e19
B25087e20
B25087e21
B25087e22
B25087e23
B25087e24
B25087e25
B25087e26
B25087e27
B25087e28
B25087e29
 
B25088e1
B25088e2
B25088e3
 
B25089e1
B25089e2
B25089e3
 
B25090e1
B25090e2
B25090e3
 
B25091e1
B25091e2
B25091e3
B25091e4
B25091e5
B25091e6
B25091e7
B25091e8
B25091e9
B25091e10
B25091e11
B25091e12
B25091e13
B25091e14
B25091e15
B25091e16
B25091e17
B25091e18
B25091e19
B25091e20
B25091e21
B25091e22
B25091e23
 
B25092e1
B25092e2
B25092e3
 
B25093e1
B25093e2
B25093e3
B25093e4
B25093e5
B25093e6
B25093e7
B25093e8
B25093e9
B25093e10
B25093e11
B25093e12
B25093e13
B25093e14
B25093e15
B25093e16
B25093e17
B25093e18
B25093e19
B25093e20
B25093e21
B25093e22
B25093e23
B25093e24
B25093e25
B25093e26
B25093e27
B25093e28
B25093e29
 
B25094e1
B25094e2
B25094e3
B25094e4
B25094e5
B25094e6
B25094e7
B25094e8
B25094e9
B25094e10
B25094e11
B25094e12
B25094e13
B25094e14
 
B25096e1
B25096e2
B25096e3
B25096e4
B25096e5
B25096e6
B25096e7
B25096e8
B25096e9
B25096e10
B25096e11
B25096e12
B25096e13
B25096e14
B25096e15
B25096e16
B25096e17
 
B25097e1
B25097e2
B25097e3
 
C25095e1
C25095e2
C25095e3
C25095e4
C25095e5
C25095e6
C25095e7
C25095e8
C25095e9
C25095e10
C25095e11
C25095e12
C25095e13
C25095e14
C25095e15
C25095e16
C25095e17
C25095e18
C25095e19
C25095e20
C25095e21
C25095e22
C25095e23
C25095e24
C25095e25
C25095e26
C25095e27
C25095e28
C25095e29
;
RUN;
TITLE2;
