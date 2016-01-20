TITLE2 "m20115dc0104000";
DATA work.SFm0104dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0104000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*MORTGAGE STATUS BY HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Owner-occupied housing units */
 
B25098m1='Total:'
B25098m2='With a mortgage:'
B25098m3='Less than $10,000'
B25098m4='$10,000 to $24,999'
B25098m5='$25,000 to $34,999'
B25098m6='$35,000 to $49,999'
B25098m7='$50,000 to $74,999'
B25098m8='$75,000 to $99,999'
B25098m9='$100,000 to $149,999'
B25098m10='$150,000 or more'
B25098m11='Not mortgaged:'
B25098m12='Less than $10,000'
B25098m13='$10,000 to $24,999'
B25098m14='$25,000 to $34,999'
B25098m15='$35,000 to $49,999'
B25098m16='$50,000 to $74,999'
B25098m17='$75,000 to $99,999'
B25098m18='$100,000 to $149,999'
B25098m19='$150,000 or more'
 
/*MORTGAGE STATUS BY MEDIAN HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) */
/*Universe:  Owner-occupied housing units */
/*Median household income -- */
 
B25099m1='Total:'
B25099m2='Median household income for units with a mortgage'
B25099m3='Median household income for units without a mortgage'
 
/*MORTGAGE STATUS BY RATIO OF VALUE TO HOUSEHOLD INCOME IN THE PAST 12 MONTHS */
/*Universe:  Owner-occupied housing units */
 
B25100m1='Total:'
B25100m2='With a mortgage:'
B25100m3='Less than 2.0'
B25100m4='2.0 to 2.9'
B25100m5='3.0 to 3.9'
B25100m6='4.0 or more'
B25100m7='Not computed'
B25100m8='Not mortgaged:'
B25100m9='Less than 2.0'
B25100m10='2.0 to 2.9'
B25100m11='3.0 to 3.9'
B25100m12='4.0 or more'
B25100m13='Not computed'
 
/*MORTGAGE STATUS BY MONTHLY HOUSING COSTS AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS */
/*Universe:  Owner-occupied housing units */
 
B25101m1='Total:'
B25101m2='With a mortgage:'
B25101m3='Less than $20,000:'
B25101m4='Less than 20 percent'
B25101m5='20 to 29 percent'
B25101m6='30 percent or more'
B25101m7='$20,000 to $34,999:'
B25101m8='Less than 20 percent'
B25101m9='20 to 29 percent'
B25101m10='30 percent or more'
B25101m11='$35,000 to $49,999:'
B25101m12='Less than 20 percent'
B25101m13='20 to 29 percent'
B25101m14='30 percent or more'
B25101m15='$50,000 to $74,999:'
B25101m16='Less than 20 percent'
B25101m17='20 to 29 percent'
B25101m18='30 percent or more'
B25101m19='$75,000 or more:'
B25101m20='Less than 20 percent'
B25101m21='20 to 29 percent'
B25101m22='30 percent or more'
B25101m23='Zero or negative income'
B25101m24='Not mortgaged:'
B25101m25='Less than $20,000:'
B25101m26='Less than 20 percent'
B25101m27='20 to 29 percent'
B25101m28='30 percent or more'
B25101m29='$20,000 to $34,999:'
B25101m30='Less than 20 percent'
B25101m31='20 to 29 percent'
B25101m32='30 percent or more'
B25101m33='$35,000 to $49,999:'
B25101m34='Less than 20 percent'
B25101m35='20 to 29 percent'
B25101m36='30 percent or more'
B25101m37='$50,000 to $74,999:'
B25101m38='Less than 20 percent'
B25101m39='20 to 29 percent'
B25101m40='30 percent or more'
B25101m41='$75,000 or more:'
B25101m42='Less than 20 percent'
B25101m43='20 to 29 percent'
B25101m44='30 percent or more'
B25101m45='Zero or negative income'
 
/*MORTGAGE STATUS BY REAL ESTATE TAXES PAID */
/*Universe:  Owner-occupied housing units */
 
B25102m1='Total:'
B25102m2='With a mortgage:'
B25102m3='Less than $800'
B25102m4='$800 to $1,499'
B25102m5='$1,500 to $1,999'
B25102m6='$2,000 to $2,999'
B25102m7='$3,000 or more'
B25102m8='No real estate taxes paid'
B25102m9='Not mortgaged:'
B25102m10='Less than $800'
B25102m11='$800 to $1,499'
B25102m12='$1,500 to $1,999'
B25102m13='$2,000 to $2,999'
B25102m14='$3,000 or more'
B25102m15='No real estate taxes paid'
 
/*MORTGAGE STATUS BY MEDIAN REAL ESTATE TAXES PAID (DOLLARS) */
/*Universe:  Owner-occupied housing units */
/*Median real estate taxes paid -- */
 
B25103m1='Total:'
B25103m2='Median real estate taxes paid for units with a mortgage'
B25103m3='Median real estate taxes paid for units without a mortgage'
 
/*MONTHLY HOUSING COSTS */
/*Universe:  Occupied housing units */
 
B25104m1='Total:'
B25104m2='Less than $100'
B25104m3='$100 to $199'
B25104m4='$200 to $299'
B25104m5='$300 to $399'
B25104m6='$400 to $499'
B25104m7='$500 to $599'
B25104m8='$600 to $699'
B25104m9='$700 to $799'
B25104m10='$800 to $899'
B25104m11='$900 to $999'
B25104m12='$1,000 to $1,499'
B25104m13='$1,500 to $1,999'
B25104m14='$2,000 or more'
B25104m15='No cash rent'
 
/*MEDIAN MONTHLY HOUSING COSTS (DOLLARS) */
/*Universe:  Occupied housing units with monthly housing costs */
 
B25105m1='Median monthly housing costs'
 
/*TENURE BY HOUSING COSTS AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS */
/*Universe:  Occupied housing units */
 
B25106m1='Total:'
B25106m2='Owner-occupied housing units:'
B25106m3='Less than $20,000:'
B25106m4='Less than 20 percent'
B25106m5='20 to 29 percent'
B25106m6='30 percent or more'
B25106m7='$20,000 to $34,999:'
B25106m8='Less than 20 percent'
B25106m9='20 to 29 percent'
B25106m10='30 percent or more'
B25106m11='$35,000 to $49,999:'
B25106m12='Less than 20 percent'
B25106m13='20 to 29 percent'
B25106m14='30 percent or more'
B25106m15='$50,000 to $74,999:'
B25106m16='Less than 20 percent'
B25106m17='20 to 29 percent'
B25106m18='30 percent or more'
B25106m19='$75,000 or more:'
B25106m20='Less than 20 percent'
B25106m21='20 to 29 percent'
B25106m22='30 percent or more'
B25106m23='Zero or negative income'
B25106m24='Renter-occupied housing units:'
B25106m25='Less than $20,000:'
B25106m26='Less than 20 percent'
B25106m27='20 to 29 percent'
B25106m28='30 percent or more'
B25106m29='$20,000 to $34,999:'
B25106m30='Less than 20 percent'
B25106m31='20 to 29 percent'
B25106m32='30 percent or more'
B25106m33='$35,000 to $49,999:'
B25106m34='Less than 20 percent'
B25106m35='20 to 29 percent'
B25106m36='30 percent or more'
B25106m37='$50,000 to $74,999:'
B25106m38='Less than 20 percent'
B25106m39='20 to 29 percent'
B25106m40='30 percent or more'
B25106m41='$75,000 or more:'
B25106m42='Less than 20 percent'
B25106m43='20 to 29 percent'
B25106m44='30 percent or more'
B25106m45='Zero or negative income'
B25106m46='No cash rent'
 
/*MEDIAN VALUE BY YEAR STRUCTURE BUILT */
/*Universe:  Owner-occupied housing units */
/*Median value -- */
 
B25107m1='Total:'
B25107m2='Built 2005 or later'
B25107m3='Built 2000 to 2004'
B25107m4='Built 1990 to 1999'
B25107m5='Built 1980 to 1989'
B25107m6='Built 1970 to 1979'
B25107m7='Built 1960 to 1969'
B25107m8='Built 1950 to 1959'
B25107m9='Built 1940 to 1949'
B25107m10='Built 1939 or earlier'
 
/*AGGREGATE VALUE (DOLLARS) BY YEAR STRUCTURE BUILT */
/*Universe:  Owner-occupied housing units */
 
B25108m1='Aggregate value (dollars):'
B25108m2='Built 2005 or later'
B25108m3='Built 2000 to 2004'
B25108m4='Built 1990 to 1999'
B25108m5='Built 1980 to 1989'
B25108m6='Built 1970 to 1979'
B25108m7='Built 1960 to 1969'
B25108m8='Built 1950 to 1959'
B25108m9='Built 1940 to 1949'
B25108m10='Built 1939 or earlier'
 
/*MEDIAN VALUE BY YEAR HOUSEHOLDER MOVED INTO UNIT */
/*Universe:  Owner-occupied housing units */
/*Median value -- */
 
B25109m1='Total:'
B25109m2='Moved in 2005 or later'
B25109m3='Moved in 2000 to 2004'
B25109m4='Moved in 1990 to 1999'
B25109m5='Moved in 1980 to 1989'
B25109m6='Moved in 1970 to 1979'
B25109m7='Moved in 1969 or earlier'
 
/*AGGREGATE VALUE (DOLLARS) BY YEAR HOUSEHOLDER MOVED INTO UNIT */
/*Universe:  Owner-occupied housing units */
 
B25110m1='Aggregate value (dollars):'
B25110m2='Moved in 2005 or later'
B25110m3='Moved in 2000 to 2004'
B25110m4='Moved in 1990 to 1999'
B25110m5='Moved in 1980 to 1989'
B25110m6='Moved in 1970 to 1979'
B25110m7='Moved in 1969 or earlier'
 
/*MEDIAN GROSS RENT BY YEAR STRUCTURE BUILT */
/*Universe: Renter-occupied housing units paying cash rent */
/*Median gross rent -- */
 
B25111m1='Total:'
B25111m2='Built 2005 or later'
B25111m3='Built 2000 to 2004'
B25111m4='Built 1990 to 1999'
B25111m5='Built 1980 to 1989'
B25111m6='Built 1970 to 1979'
B25111m7='Built 1960 to 1969'
B25111m8='Built 1950 to 1959'
B25111m9='Built 1940 to 1949'
B25111m10='Built 1939 or earlier'
 
/*AGGREGATE GROSS RENT (DOLLARS) BY YEAR STRUCTURE BUILT */
/*Universe:  Renter-occupied housing units */
 
B25112m1='Aggregate gross rent (dollars):'
B25112m2='Built 2005 or later'
B25112m3='Built 2000 to 2004'
B25112m4='Built 1990 to 1999'
B25112m5='Built 1980 to 1989'
B25112m6='Built 1970 to 1979'
B25112m7='Built 1960 to 1969'
B25112m8='Built 1950 to 1959'
B25112m9='Built 1940 to 1949'
B25112m10='Built 1939 or earlier'
 
/*MEDIAN GROSS RENT BY YEAR HOUSEHOLDER MOVED INTO UNIT */
/*Universe: Renter-occupied housing units paying cash rent */
/*Median gross rent -- */
 
B25113m1='Total:'
B25113m2='Moved in 2005 or later'
B25113m3='Moved in 2000 to 2004'
B25113m4='Moved in 1990 to 1999'
B25113m5='Moved in 1980 to 1989'
B25113m6='Moved in 1970 to 1979'
B25113m7='Moved in 1969 or earlier'
 
/*AGGREGATE GROSS RENT (DOLLARS) BY YEAR HOUSEHOLDER MOVED INTO UNIT */
/*Universe:  Renter-occupied housing units */
 
B25114m1='Aggregate gross rent:'
B25114m2='Moved in 2005 or later'
B25114m3='Moved in 2000 to 2004'
B25114m4='Moved in 1990 to 1999'
B25114m5='Moved in 1980 to 1989'
B25114m6='Moved in 1970 to 1979'
B25114m7='Moved in 1969 or earlier'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B25098m1
B25098m2
B25098m3
B25098m4
B25098m5
B25098m6
B25098m7
B25098m8
B25098m9
B25098m10
B25098m11
B25098m12
B25098m13
B25098m14
B25098m15
B25098m16
B25098m17
B25098m18
B25098m19
 
B25099m1
B25099m2
B25099m3
 
B25100m1
B25100m2
B25100m3
B25100m4
B25100m5
B25100m6
B25100m7
B25100m8
B25100m9
B25100m10
B25100m11
B25100m12
B25100m13
 
B25101m1
B25101m2
B25101m3
B25101m4
B25101m5
B25101m6
B25101m7
B25101m8
B25101m9
B25101m10
B25101m11
B25101m12
B25101m13
B25101m14
B25101m15
B25101m16
B25101m17
B25101m18
B25101m19
B25101m20
B25101m21
B25101m22
B25101m23
B25101m24
B25101m25
B25101m26
B25101m27
B25101m28
B25101m29
B25101m30
B25101m31
B25101m32
B25101m33
B25101m34
B25101m35
B25101m36
B25101m37
B25101m38
B25101m39
B25101m40
B25101m41
B25101m42
B25101m43
B25101m44
B25101m45
 
B25102m1
B25102m2
B25102m3
B25102m4
B25102m5
B25102m6
B25102m7
B25102m8
B25102m9
B25102m10
B25102m11
B25102m12
B25102m13
B25102m14
B25102m15
 
B25103m1
B25103m2
B25103m3
 
B25104m1
B25104m2
B25104m3
B25104m4
B25104m5
B25104m6
B25104m7
B25104m8
B25104m9
B25104m10
B25104m11
B25104m12
B25104m13
B25104m14
B25104m15
 
B25105m1
 
B25106m1
B25106m2
B25106m3
B25106m4
B25106m5
B25106m6
B25106m7
B25106m8
B25106m9
B25106m10
B25106m11
B25106m12
B25106m13
B25106m14
B25106m15
B25106m16
B25106m17
B25106m18
B25106m19
B25106m20
B25106m21
B25106m22
B25106m23
B25106m24
B25106m25
B25106m26
B25106m27
B25106m28
B25106m29
B25106m30
B25106m31
B25106m32
B25106m33
B25106m34
B25106m35
B25106m36
B25106m37
B25106m38
B25106m39
B25106m40
B25106m41
B25106m42
B25106m43
B25106m44
B25106m45
B25106m46
 
B25107m1
B25107m2
B25107m3
B25107m4
B25107m5
B25107m6
B25107m7
B25107m8
B25107m9
B25107m10
 
B25108m1
B25108m2
B25108m3
B25108m4
B25108m5
B25108m6
B25108m7
B25108m8
B25108m9
B25108m10
 
B25109m1
B25109m2
B25109m3
B25109m4
B25109m5
B25109m6
B25109m7
 
B25110m1
B25110m2
B25110m3
B25110m4
B25110m5
B25110m6
B25110m7
 
B25111m1
B25111m2
B25111m3
B25111m4
B25111m5
B25111m6
B25111m7
B25111m8
B25111m9
B25111m10
 
B25112m1
B25112m2
B25112m3
B25112m4
B25112m5
B25112m6
B25112m7
B25112m8
B25112m9
B25112m10
 
B25113m1
B25113m2
B25113m3
B25113m4
B25113m5
B25113m6
B25113m7
 
B25114m1
B25114m2
B25114m3
B25114m4
B25114m5
B25114m6
B25114m7
;
RUN;
TITLE2;
