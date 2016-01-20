TITLE2 "e20125dc0105000";
DATA work.SFe0105dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0105000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*RENT ASKED */
/*Universe:  Vacant-for-rent and rented, not occupied housing units */
 
B25061e1='Total:'
B25061e2='Less than $100'
B25061e3='$100 to $149'
B25061e4='$150 to $199'
B25061e5='$200 to $249'
B25061e6='$250 to $299'
B25061e7='$300 to $349'
B25061e8='$350 to $399'
B25061e9='$400 to $449'
B25061e10='$450 to $499'
B25061e11='$500 to $549'
B25061e12='$550 to $599'
B25061e13='$600 to $649'
B25061e14='$650 to $699'
B25061e15='$700 to $749'
B25061e16='$750 to $799'
B25061e17='$800 to $899'
B25061e18='$900 to $999'
B25061e19='$1,000 to $1,249'
B25061e20='$1,250 to $1,499'
B25061e21='$1,500 to $1,999'
B25061e22='$2,000 or more'
/*AGGREGATE RENT ASKED (DOLLARS) */
/*Universe:  Vacant-for-rent and rented, not occupied housing units */
 
B25062e1='Aggregate rent asked'
/*GROSS RENT */
/*Universe:  Renter-occupied housing units */
 
B25063e1='Total:'
B25063e2='With cash rent:'
B25063e3='Less than $100'
B25063e4='$100 to $149'
B25063e5='$150 to $199'
B25063e6='$200 to $249'
B25063e7='$250 to $299'
B25063e8='$300 to $349'
B25063e9='$350 to $399'
B25063e10='$400 to $449'
B25063e11='$450 to $499'
B25063e12='$500 to $549'
B25063e13='$550 to $599'
B25063e14='$600 to $649'
B25063e15='$650 to $699'
B25063e16='$700 to $749'
B25063e17='$750 to $799'
B25063e18='$800 to $899'
B25063e19='$900 to $999'
B25063e20='$1,000 to $1,249'
B25063e21='$1,250 to $1,499'
B25063e22='$1,500 to $1,999'
B25063e23='$2,000 or more'
B25063e24='No cash rent'
/*MEDIAN GROSS RENT (DOLLARS) */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B25064e1='Median gross rent'
/*AGGREGATE GROSS RENT (DOLLARS) */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B25065e1='Aggregate gross rent'
/*AGGREGATE GROSS RENT (DOLLARS) BY UNITS IN STRUCTURE */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B25066e1='Aggregate gross rent:'
B25066e2='1, detached or attached'
B25066e3='2 to 4'
B25066e4='5 to 19'
B25066e5='20 to 49'
B25066e6='50 or more'
B25066e7='Mobile home'
B25066e8='Boat, RV, van, etc.'
/*AGGREGATE GROSS RENT (DOLLARS) BY MEALS INCLUDED IN RENT */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B25067e1='Aggregate gross rent:'
B25067e2='Meals included in rent'
B25067e3='No meals included in rent'
/*BEDROOMS BY GROSS RENT */
/*Universe:  Renter-occupied housing units */
 
B25068e1='Total:'
B25068e2='No bedroom:'
B25068e3='With cash rent:'
B25068e4='Less than $200'
B25068e5='$200 to $299'
B25068e6='$300 to $499'
B25068e7='$500 to $749'
B25068e8='$750 to $999'
B25068e9='$1,000 or more'
B25068e10='No cash rent'
B25068e11='1 bedroom:'
B25068e12='With cash rent:'
B25068e13='Less than $200'
B25068e14='$200 to $299'
B25068e15='$300 to $499'
B25068e16='$500 to $749'
B25068e17='$750 to $999'
B25068e18='$1,000 or more'
B25068e19='No cash rent'
B25068e20='2 bedrooms:'
B25068e21='With cash rent:'
B25068e22='Less than $200'
B25068e23='$200 to $299'
B25068e24='$300 to $499'
B25068e25='$500 to $749'
B25068e26='$750 to $999'
B25068e27='$1,000 or more'
B25068e28='No cash rent'
B25068e29='3 or more bedrooms:'
B25068e30='With cash rent:'
B25068e31='Less than $200'
B25068e32='$200 to $299'
B25068e33='$300 to $499'
B25068e34='$500 to $749'
B25068e35='$750 to $999'
B25068e36='$1,000 or more'
B25068e37='No cash rent'
/*INCLUSION OF UTILITIES IN RENT */
/*Universe:  Renter-occupied housing units */
 
B25069e1='Total:'
B25069e2='Pay extra for one or more utilities'
B25069e3='No extra payment for any utilities'
/*GROSS RENT AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS */
/*Universe:  Renter-occupied housing units */
 
B25070e1='Total:'
B25070e2='Less than 10.0 percent'
B25070e3='10.0 to 14.9 percent'
B25070e4='15.0 to 19.9 percent'
B25070e5='20.0 to 24.9 percent'
B25070e6='25.0 to 29.9 percent'
B25070e7='30.0 to 34.9 percent'
B25070e8='35.0 to 39.9 percent'
B25070e9='40.0 to 49.9 percent'
B25070e10='50.0 percent or more'
B25070e11='Not computed'
/*MEDIAN GROSS RENT AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS (DOLLARS) */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B25071e1='Median gross rent as a percentage of household income'
/*AGE OF HOUSEHOLDER BY GROSS RENT AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS */
/*Universe:  Renter-occupied housing units */
 
B25072e1='Total:'
B25072e2='Householder 15 to 24 years:'
B25072e3='Less than 20.0 percent'
B25072e4='20.0 to 24.9 percent'
B25072e5='25.0 to 29.9 percent'
B25072e6='30.0 to 34.9 percent'
B25072e7='35.0 percent or more'
B25072e8='Not computed'
B25072e9='Householder 25 to 34 years:'
B25072e10='Less than 20.0 percent'
B25072e11='20.0 to 24.9 percent'
B25072e12='25.0 to 29.9 percent'
B25072e13='30.0 to 34.9 percent'
B25072e14='35.0 percent or more'
B25072e15='Not computed'
B25072e16='Householder 35 to 64 years:'
B25072e17='Less than 20.0 percent'
B25072e18='20.0 to 24.9 percent'
B25072e19='25.0 to 29.9 percent'
B25072e20='30.0 to 34.9 percent'
B25072e21='35.0 percent or more'
B25072e22='Not computed'
B25072e23='Householder 65 years and over:'
B25072e24='Less than 20.0 percent'
B25072e25='20.0 to 24.9 percent'
B25072e26='25.0 to 29.9 percent'
B25072e27='30.0 to 34.9 percent'
B25072e28='35.0 percent or more'
B25072e29='Not computed'
/*UNITS IN STRUCTURE BY GROSS RENT AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS */
/*Universe:  Renter-occupied housing units */
 
B25073e1='Total:'
B25073e2='1, detached or attached:'
B25073e3='Less than 20.0 percent'
B25073e4='20.0 to 24.9 percent'
B25073e5='25.0 to 29.9 percent'
B25073e6='30.0 to 34.9 percent'
B25073e7='35.0 percent or more'
B25073e8='Not computed'
B25073e9='2 to 4:'
B25073e10='Less than 20.0 percent'
B25073e11='20.0 to 24.9 percent'
B25073e12='25.0 to 29.9 percent'
B25073e13='30.0 to 34.9 percent'
B25073e14='35.0 percent or more'
B25073e15='Not computed'
B25073e16='5 to 19:'
B25073e17='Less than 20.0 percent'
B25073e18='20.0 to 24.9 percent'
B25073e19='25.0 to 29.9 percent'
B25073e20='30.0 to 34.9 percent'
B25073e21='35.0 percent or more'
B25073e22='Not computed'
B25073e23='20 to 49:'
B25073e24='Less than 20.0 percent'
B25073e25='20.0 to 24.9 percent'
B25073e26='25.0 to 29.9 percent'
B25073e27='30.0 to 34.9 percent'
B25073e28='35.0 percent or more'
B25073e29='Not computed'
B25073e30='50 or more:'
B25073e31='Less than 20.0 percent'
B25073e32='20.0 to 24.9 percent'
B25073e33='25.0 to 29.9 percent'
B25073e34='30.0 to 34.9 percent'
B25073e35='35.0 percent or more'
B25073e36='Not computed'
B25073e37='Mobile home:'
B25073e38='Less than 20.0 percent'
B25073e39='20.0 to 24.9 percent'
B25073e40='25.0 to 29.9 percent'
B25073e41='30.0 to 34.9 percent'
B25073e42='35.0 percent or more'
B25073e43='Not computed'
B25073e44='Boat, RV, van, etc.:'
B25073e45='Less than 20.0 percent'
B25073e46='20.0 to 24.9 percent'
B25073e47='25.0 to 29.9 percent'
B25073e48='30.0 to 34.9 percent'
B25073e49='35.0 percent or more'
B25073e50='Not computed'
/*HOUSEHOLD INCOME BY GROSS RENT AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS */
/*Universe:  Renter-occupied housing units */
 
B25074e1='Total:'
B25074e2='Less than $10,000:'
B25074e3='Less than 20.0 percent'
B25074e4='20.0 to 24.9 percent'
B25074e5='25.0 to 29.9 percent'
B25074e6='30.0 to 34.9 percent'
B25074e7='35.0 percent or more'
B25074e8='Not computed'
B25074e9='$10,000 to $19,999:'
B25074e10='Less than 20.0 percent'
B25074e11='20.0 to 24.9 percent'
B25074e12='25.0 to 29.9 percent'
B25074e13='30.0 to 34.9 percent'
B25074e14='35.0 percent or more'
B25074e15='Not computed'
B25074e16='$20,000 to $34,999:'
B25074e17='Less than 20.0 percent'
B25074e18='20.0 to 24.9 percent'
B25074e19='25.0 to 29.9 percent'
B25074e20='30.0 to 34.9 percent'
B25074e21='35.0 percent or more'
B25074e22='Not computed'
B25074e23='$35,000 to $49,999:'
B25074e24='Less than 20.0 percent'
B25074e25='20.0 to 24.9 percent'
B25074e26='25.0 to 29.9 percent'
B25074e27='30.0 to 34.9 percent'
B25074e28='35.0 percent or more'
B25074e29='Not computed'
B25074e30='$50,000 to $74,999:'
B25074e31='Less than 20.0 percent'
B25074e32='20.0 to 24.9 percent'
B25074e33='25.0 to 29.9 percent'
B25074e34='30.0 to 34.9 percent'
B25074e35='35.0 percent or more'
B25074e36='Not computed'
B25074e37='$75,000 to $99,999:'
B25074e38='Less than 20.0 percent'
B25074e39='20.0 to 24.9 percent'
B25074e40='25.0 to 29.9 percent'
B25074e41='30.0 to 34.9 percent'
B25074e42='35.0 percent or more'
B25074e43='Not computed'
B25074e44='$100,000 or more:'
B25074e45='Less than 20.0 percent'
B25074e46='20.0 to 24.9 percent'
B25074e47='25.0 to 29.9 percent'
B25074e48='30.0 to 34.9 percent'
B25074e49='35.0 percent or more'
B25074e50='Not computed'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B25061e1
B25061e2
B25061e3
B25061e4
B25061e5
B25061e6
B25061e7
B25061e8
B25061e9
B25061e10
B25061e11
B25061e12
B25061e13
B25061e14
B25061e15
B25061e16
B25061e17
B25061e18
B25061e19
B25061e20
B25061e21
B25061e22
 
B25062e1
 
B25063e1
B25063e2
B25063e3
B25063e4
B25063e5
B25063e6
B25063e7
B25063e8
B25063e9
B25063e10
B25063e11
B25063e12
B25063e13
B25063e14
B25063e15
B25063e16
B25063e17
B25063e18
B25063e19
B25063e20
B25063e21
B25063e22
B25063e23
B25063e24
 
B25064e1
 
B25065e1
 
B25066e1
B25066e2
B25066e3
B25066e4
B25066e5
B25066e6
B25066e7
B25066e8
 
B25067e1
B25067e2
B25067e3
 
B25068e1
B25068e2
B25068e3
B25068e4
B25068e5
B25068e6
B25068e7
B25068e8
B25068e9
B25068e10
B25068e11
B25068e12
B25068e13
B25068e14
B25068e15
B25068e16
B25068e17
B25068e18
B25068e19
B25068e20
B25068e21
B25068e22
B25068e23
B25068e24
B25068e25
B25068e26
B25068e27
B25068e28
B25068e29
B25068e30
B25068e31
B25068e32
B25068e33
B25068e34
B25068e35
B25068e36
B25068e37
 
B25069e1
B25069e2
B25069e3
 
B25070e1
B25070e2
B25070e3
B25070e4
B25070e5
B25070e6
B25070e7
B25070e8
B25070e9
B25070e10
B25070e11
 
B25071e1
 
B25072e1
B25072e2
B25072e3
B25072e4
B25072e5
B25072e6
B25072e7
B25072e8
B25072e9
B25072e10
B25072e11
B25072e12
B25072e13
B25072e14
B25072e15
B25072e16
B25072e17
B25072e18
B25072e19
B25072e20
B25072e21
B25072e22
B25072e23
B25072e24
B25072e25
B25072e26
B25072e27
B25072e28
B25072e29
 
B25073e1
B25073e2
B25073e3
B25073e4
B25073e5
B25073e6
B25073e7
B25073e8
B25073e9
B25073e10
B25073e11
B25073e12
B25073e13
B25073e14
B25073e15
B25073e16
B25073e17
B25073e18
B25073e19
B25073e20
B25073e21
B25073e22
B25073e23
B25073e24
B25073e25
B25073e26
B25073e27
B25073e28
B25073e29
B25073e30
B25073e31
B25073e32
B25073e33
B25073e34
B25073e35
B25073e36
B25073e37
B25073e38
B25073e39
B25073e40
B25073e41
B25073e42
B25073e43
B25073e44
B25073e45
B25073e46
B25073e47
B25073e48
B25073e49
B25073e50
 
B25074e1
B25074e2
B25074e3
B25074e4
B25074e5
B25074e6
B25074e7
B25074e8
B25074e9
B25074e10
B25074e11
B25074e12
B25074e13
B25074e14
B25074e15
B25074e16
B25074e17
B25074e18
B25074e19
B25074e20
B25074e21
B25074e22
B25074e23
B25074e24
B25074e25
B25074e26
B25074e27
B25074e28
B25074e29
B25074e30
B25074e31
B25074e32
B25074e33
B25074e34
B25074e35
B25074e36
B25074e37
B25074e38
B25074e39
B25074e40
B25074e41
B25074e42
B25074e43
B25074e44
B25074e45
B25074e46
B25074e47
B25074e48
B25074e49
B25074e50
;
RUN;
TITLE2;
