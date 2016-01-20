TITLE2 "e20125dc0107000";
DATA work.SFe0107dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0107000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*MORTGAGE STATUS BY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Owner-occupied housing units */
 
B25098e1='Total:'
B25098e2='With a mortgage:'
B25098e3='Less than $10,000'
B25098e4='$10,000 to $24,999'
B25098e5='$25,000 to $34,999'
B25098e6='$35,000 to $49,999'
B25098e7='$50,000 to $74,999'
B25098e8='$75,000 to $99,999'
B25098e9='$100,000 to $149,999'
B25098e10='$150,000 or more'
B25098e11='Not mortgaged:'
B25098e12='Less than $10,000'
B25098e13='$10,000 to $24,999'
B25098e14='$25,000 to $34,999'
B25098e15='$35,000 to $49,999'
B25098e16='$50,000 to $74,999'
B25098e17='$75,000 to $99,999'
B25098e18='$100,000 to $149,999'
B25098e19='$150,000 or more'
/*MORTGAGE STATUS BY MEDIAN HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Owner-occupied housing units */
/*Median household income -- */
 
B25099e1='Total:'
B25099e2='Median household income for units with a mortgage'
B25099e3='Median household income for units without a mortgage'
/*MORTGAGE STATUS BY RATIO OF VALUE TO HOUSEHOLD INCOME IN THE PAST 12 MONTHS */
/*Universe:  Owner-occupied housing units */
 
B25100e1='Total:'
B25100e2='With a mortgage:'
B25100e3='Less than 2.0'
B25100e4='2.0 to 2.9'
B25100e5='3.0 to 3.9'
B25100e6='4.0 or more'
B25100e7='Not computed'
B25100e8='Not mortgaged:'
B25100e9='Less than 2.0'
B25100e10='2.0 to 2.9'
B25100e11='3.0 to 3.9'
B25100e12='4.0 or more'
B25100e13='Not computed'
/*MORTGAGE STATUS BY MONTHLY HOUSING COSTS AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS */
/*Universe:  Owner-occupied housing units */
 
B25101e1='Total:'
B25101e2='With a mortgage:'
B25101e3='Less than $20,000:'
B25101e4='Less than 20 percent'
B25101e5='20 to 29 percent'
B25101e6='30 percent or more'
B25101e7='$20,000 to $34,999:'
B25101e8='Less than 20 percent'
B25101e9='20 to 29 percent'
B25101e10='30 percent or more'
B25101e11='$35,000 to $49,999:'
B25101e12='Less than 20 percent'
B25101e13='20 to 29 percent'
B25101e14='30 percent or more'
B25101e15='$50,000 to $74,999:'
B25101e16='Less than 20 percent'
B25101e17='20 to 29 percent'
B25101e18='30 percent or more'
B25101e19='$75,000 or more:'
B25101e20='Less than 20 percent'
B25101e21='20 to 29 percent'
B25101e22='30 percent or more'
B25101e23='Zero or negative income'
B25101e24='Not mortgaged:'
B25101e25='Less than $20,000:'
B25101e26='Less than 20 percent'
B25101e27='20 to 29 percent'
B25101e28='30 percent or more'
B25101e29='$20,000 to $34,999:'
B25101e30='Less than 20 percent'
B25101e31='20 to 29 percent'
B25101e32='30 percent or more'
B25101e33='$35,000 to $49,999:'
B25101e34='Less than 20 percent'
B25101e35='20 to 29 percent'
B25101e36='30 percent or more'
B25101e37='$50,000 to $74,999:'
B25101e38='Less than 20 percent'
B25101e39='20 to 29 percent'
B25101e40='30 percent or more'
B25101e41='$75,000 or more:'
B25101e42='Less than 20 percent'
B25101e43='20 to 29 percent'
B25101e44='30 percent or more'
B25101e45='Zero or negative income'
/*MORTGAGE STATUS BY REAL ESTATE TAXES PAID */
/*Universe:  Owner-occupied housing units */
 
B25102e1='Total:'
B25102e2='With a mortgage:'
B25102e3='Less than $800'
B25102e4='$800 to $1,499'
B25102e5='$1,500 to $1,999'
B25102e6='$2,000 to $2,999'
B25102e7='$3,000 or more'
B25102e8='No real estate taxes paid'
B25102e9='Not mortgaged:'
B25102e10='Less than $800'
B25102e11='$800 to $1,499'
B25102e12='$1,500 to $1,999'
B25102e13='$2,000 to $2,999'
B25102e14='$3,000 or more'
B25102e15='No real estate taxes paid'
/*MORTGAGE STATUS BY MEDIAN REAL ESTATE TAXES PAID (DOLLARS) */
/*Universe:  Owner-occupied housing units */
/*Median real estate taxes paid -- */
 
B25103e1='Total:'
B25103e2='Median real estate taxes paid for units with a mortgage'
B25103e3='Median real estate taxes paid for units without a mortgage'
/*MONTHLY HOUSING COSTS */
/*Universe:  Occupied housing units */
 
B25104e1='Total:'
B25104e2='Less than $100'
B25104e3='$100 to $199'
B25104e4='$200 to $299'
B25104e5='$300 to $399'
B25104e6='$400 to $499'
B25104e7='$500 to $599'
B25104e8='$600 to $699'
B25104e9='$700 to $799'
B25104e10='$800 to $899'
B25104e11='$900 to $999'
B25104e12='$1,000 to $1,499'
B25104e13='$1,500 to $1,999'
B25104e14='$2,000 or more'
B25104e15='No cash rent'
/*MEDIAN MONTHLY HOUSING COSTS (DOLLARS) */
/*Universe:  Occupied housing units with monthly housing costs */
 
B25105e1='Median monthly housing costs'
/*TENURE BY HOUSING COSTS AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS */
/*Universe:  Occupied housing units */
 
B25106e1='Total:'
B25106e2='Owner-occupied housing units:'
B25106e3='Less than $20,000:'
B25106e4='Less than 20 percent'
B25106e5='20 to 29 percent'
B25106e6='30 percent or more'
B25106e7='$20,000 to $34,999:'
B25106e8='Less than 20 percent'
B25106e9='20 to 29 percent'
B25106e10='30 percent or more'
B25106e11='$35,000 to $49,999:'
B25106e12='Less than 20 percent'
B25106e13='20 to 29 percent'
B25106e14='30 percent or more'
B25106e15='$50,000 to $74,999:'
B25106e16='Less than 20 percent'
B25106e17='20 to 29 percent'
B25106e18='30 percent or more'
B25106e19='$75,000 or more:'
B25106e20='Less than 20 percent'
B25106e21='20 to 29 percent'
B25106e22='30 percent or more'
B25106e23='Zero or negative income'
B25106e24='Renter-occupied housing units:'
B25106e25='Less than $20,000:'
B25106e26='Less than 20 percent'
B25106e27='20 to 29 percent'
B25106e28='30 percent or more'
B25106e29='$20,000 to $34,999:'
B25106e30='Less than 20 percent'
B25106e31='20 to 29 percent'
B25106e32='30 percent or more'
B25106e33='$35,000 to $49,999:'
B25106e34='Less than 20 percent'
B25106e35='20 to 29 percent'
B25106e36='30 percent or more'
B25106e37='$50,000 to $74,999:'
B25106e38='Less than 20 percent'
B25106e39='20 to 29 percent'
B25106e40='30 percent or more'
B25106e41='$75,000 or more:'
B25106e42='Less than 20 percent'
B25106e43='20 to 29 percent'
B25106e44='30 percent or more'
B25106e45='Zero or negative income'
B25106e46='No cash rent'
/*MEDIAN VALUE BY YEAR STRUCTURE BUILT */
/*Universe:  Owner-occupied housing units */
/*Median value -- */
 
B25107e1='Total:'
B25107e2='Built 2010 or later'
B25107e3='Built 2000 to 2009'
B25107e4='Built 1990 to 1999'
B25107e5='Built 1980 to 1989'
B25107e6='Built 1970 to 1979'
B25107e7='Built 1960 to 1969'
B25107e8='Built 1950 to 1959'
B25107e9='Built 1940 to 1949'
B25107e10='Built 1939 or earlier'
/*AGGREGATE VALUE (DOLLARS) BY YEAR STRUCTURE BUILT */
/*Universe:  Owner-occupied housing units */
 
B25108e1='Aggregate value (dollars):'
B25108e2='Built 2010 or later'
B25108e3='Built 2000 to 2009'
B25108e4='Built 1990 to 1999'
B25108e5='Built 1980 to 1989'
B25108e6='Built 1970 to 1979'
B25108e7='Built 1960 to 1969'
B25108e8='Built 1950 to 1959'
B25108e9='Built 1940 to 1949'
B25108e10='Built 1939 or earlier'
/*MEDIAN VALUE BY YEAR HOUSEHOLDER MOVED INTO UNIT */
/*Universe:  Owner-occupied housing units */
/*Median value -- */
 
B25109e1='Total:'
B25109e2='Moved in 2010 or later'
B25109e3='Moved in 2000 to 2009'
B25109e4='Moved in 1990 to 1999'
B25109e5='Moved in 1980 to 1989'
B25109e6='Moved in 1970 to 1979'
B25109e7='Moved in 1969 or earlier'
/*AGGREGATE VALUE (DOLLARS) BY YEAR HOUSEHOLDER MOVED INTO UNIT */
/*Universe:  Owner-occupied housing units */
 
B25110e1='Aggregate value (dollars):'
B25110e2='Moved in 2010 or later'
B25110e3='Moved in 2000 to 2009'
B25110e4='Moved in 1990 to 1999'
B25110e5='Moved in 1980 to 1989'
B25110e6='Moved in 1970 to 1979'
B25110e7='Moved in 1969 or earlier'
/*MEDIAN GROSS RENT BY YEAR STRUCTURE BUILT */
/*Universe: Renter-occupied housing units paying cash rent */
/*Median gross rent -- */
 
B25111e1='Total:'
B25111e2='Built 2010 or later'
B25111e3='Built 2000 to 2009'
B25111e4='Built 1990 to 1999'
B25111e5='Built 1980 to 1989'
B25111e6='Built 1970 to 1979'
B25111e7='Built 1960 to 1969'
B25111e8='Built 1950 to 1959'
B25111e9='Built 1940 to 1949'
B25111e10='Built 1939 or earlier'
/*AGGREGATE GROSS RENT (DOLLARS) BY YEAR STRUCTURE BUILT */
/*Universe:  Renter-occupied housing units */
 
B25112e1='Aggregate gross rent (dollars):'
B25112e2='Built 2010 or later'
B25112e3='Built 2000 to 2009'
B25112e4='Built 1990 to 1999'
B25112e5='Built 1980 to 1989'
B25112e6='Built 1970 to 1979'
B25112e7='Built 1960 to 1969'
B25112e8='Built 1950 to 1959'
B25112e9='Built 1940 to 1949'
B25112e10='Built 1939 or earlier'
/*MEDIAN GROSS RENT BY YEAR HOUSEHOLDER MOVED INTO UNIT */
/*Universe: Renter-occupied housing units paying cash rent */
/*Median gross rent -- */
 
B25113e1='Total:'
B25113e2='Moved in 2010 or later'
B25113e3='Moved in 2000 to 2009'
B25113e4='Moved in 1990 to 1999'
B25113e5='Moved in 1980 to 1989'
B25113e6='Moved in 1970 to 1979'
B25113e7='Moved in 1969 or earlier'
/*AGGREGATE GROSS RENT (DOLLARS) BY YEAR HOUSEHOLDER MOVED INTO UNIT */
/*Universe:  Renter-occupied housing units */
 
B25114e1='Aggregate gross rent:'
B25114e2='Moved in 2010 or later'
B25114e3='Moved in 2000 to 2009'
B25114e4='Moved in 1990 to 1999'
B25114e5='Moved in 1980 to 1989'
B25114e6='Moved in 1970 to 1979'
B25114e7='Moved in 1969 or earlier'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B25098e1
B25098e2
B25098e3
B25098e4
B25098e5
B25098e6
B25098e7
B25098e8
B25098e9
B25098e10
B25098e11
B25098e12
B25098e13
B25098e14
B25098e15
B25098e16
B25098e17
B25098e18
B25098e19
 
B25099e1
B25099e2
B25099e3
 
B25100e1
B25100e2
B25100e3
B25100e4
B25100e5
B25100e6
B25100e7
B25100e8
B25100e9
B25100e10
B25100e11
B25100e12
B25100e13
 
B25101e1
B25101e2
B25101e3
B25101e4
B25101e5
B25101e6
B25101e7
B25101e8
B25101e9
B25101e10
B25101e11
B25101e12
B25101e13
B25101e14
B25101e15
B25101e16
B25101e17
B25101e18
B25101e19
B25101e20
B25101e21
B25101e22
B25101e23
B25101e24
B25101e25
B25101e26
B25101e27
B25101e28
B25101e29
B25101e30
B25101e31
B25101e32
B25101e33
B25101e34
B25101e35
B25101e36
B25101e37
B25101e38
B25101e39
B25101e40
B25101e41
B25101e42
B25101e43
B25101e44
B25101e45
 
B25102e1
B25102e2
B25102e3
B25102e4
B25102e5
B25102e6
B25102e7
B25102e8
B25102e9
B25102e10
B25102e11
B25102e12
B25102e13
B25102e14
B25102e15
 
B25103e1
B25103e2
B25103e3
 
B25104e1
B25104e2
B25104e3
B25104e4
B25104e5
B25104e6
B25104e7
B25104e8
B25104e9
B25104e10
B25104e11
B25104e12
B25104e13
B25104e14
B25104e15
 
B25105e1
 
B25106e1
B25106e2
B25106e3
B25106e4
B25106e5
B25106e6
B25106e7
B25106e8
B25106e9
B25106e10
B25106e11
B25106e12
B25106e13
B25106e14
B25106e15
B25106e16
B25106e17
B25106e18
B25106e19
B25106e20
B25106e21
B25106e22
B25106e23
B25106e24
B25106e25
B25106e26
B25106e27
B25106e28
B25106e29
B25106e30
B25106e31
B25106e32
B25106e33
B25106e34
B25106e35
B25106e36
B25106e37
B25106e38
B25106e39
B25106e40
B25106e41
B25106e42
B25106e43
B25106e44
B25106e45
B25106e46
 
B25107e1
B25107e2
B25107e3
B25107e4
B25107e5
B25107e6
B25107e7
B25107e8
B25107e9
B25107e10
 
B25108e1
B25108e2
B25108e3
B25108e4
B25108e5
B25108e6
B25108e7
B25108e8
B25108e9
B25108e10
 
B25109e1
B25109e2
B25109e3
B25109e4
B25109e5
B25109e6
B25109e7
 
B25110e1
B25110e2
B25110e3
B25110e4
B25110e5
B25110e6
B25110e7
 
B25111e1
B25111e2
B25111e3
B25111e4
B25111e5
B25111e6
B25111e7
B25111e8
B25111e9
B25111e10
 
B25112e1
B25112e2
B25112e3
B25112e4
B25112e5
B25112e6
B25112e7
B25112e8
B25112e9
B25112e10
 
B25113e1
B25113e2
B25113e3
B25113e4
B25113e5
B25113e6
B25113e7
 
B25114e1
B25114e2
B25114e3
B25114e4
B25114e5
B25114e6
B25114e7
;
RUN;
TITLE2;
