TITLE2 "m20115dc0102000";
DATA work.SFm0102dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0102000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*RENT ASKED */
/*Universe:  Vacant-for-rent and rented, not occupied housing units */
 
B25061m1='Total:'
B25061m2='Less than $100'
B25061m3='$100 to $149'
B25061m4='$150 to $199'
B25061m5='$200 to $249'
B25061m6='$250 to $299'
B25061m7='$300 to $349'
B25061m8='$350 to $399'
B25061m9='$400 to $449'
B25061m10='$450 to $499'
B25061m11='$500 to $549'
B25061m12='$550 to $599'
B25061m13='$600 to $649'
B25061m14='$650 to $699'
B25061m15='$700 to $749'
B25061m16='$750 to $799'
B25061m17='$800 to $899'
B25061m18='$900 to $999'
B25061m19='$1,000 to $1,249'
B25061m20='$1,250 to $1,499'
B25061m21='$1,500 to $1,999'
B25061m22='$2,000 or more'
 
/*AGGREGATE RENT ASKED (DOLLARS) */
/*Universe:  Vacant-for-rent and rented, not occupied housing units */
 
B25062m1='Aggregate rent asked'
 
/*GROSS RENT */
/*Universe:  Renter-occupied housing units */
 
B25063m1='Total:'
B25063m2='With cash rent:'
B25063m3='Less than $100'
B25063m4='$100 to $149'
B25063m5='$150 to $199'
B25063m6='$200 to $249'
B25063m7='$250 to $299'
B25063m8='$300 to $349'
B25063m9='$350 to $399'
B25063m10='$400 to $449'
B25063m11='$450 to $499'
B25063m12='$500 to $549'
B25063m13='$550 to $599'
B25063m14='$600 to $649'
B25063m15='$650 to $699'
B25063m16='$700 to $749'
B25063m17='$750 to $799'
B25063m18='$800 to $899'
B25063m19='$900 to $999'
B25063m20='$1,000 to $1,249'
B25063m21='$1,250 to $1,499'
B25063m22='$1,500 to $1,999'
B25063m23='$2,000 or more'
B25063m24='No cash rent'
 
/*MEDIAN GROSS RENT (DOLLARS) */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B25064m1='Median gross rent'
 
/*AGGREGATE GROSS RENT (DOLLARS) */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B25065m1='Aggregate gross rent'
 
/*AGGREGATE GROSS RENT (DOLLARS) BY UNITS IN STRUCTURE */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B25066m1='Aggregate gross rent:'
B25066m2='1, detached or attached'
B25066m3='2 to 4'
B25066m4='5 to 19'
B25066m5='20 to 49'
B25066m6='50 or more'
B25066m7='Mobile home'
B25066m8='Boat, RV, van, etc.'
 
/*AGGREGATE GROSS RENT (DOLLARS) BY MEALS INCLUDED IN RENT */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B25067m1='Aggregate gross rent:'
B25067m2='Meals included in rent'
B25067m3='No meals included in rent'
 
/*BEDROOMS BY GROSS RENT */
/*Universe:  Renter-occupied housing units */
 
B25068m1='Total:'
B25068m2='No bedroom:'
B25068m3='With cash rent:'
B25068m4='Less than $200'
B25068m5='$200 to $299'
B25068m6='$300 to $499'
B25068m7='$500 to $749'
B25068m8='$750 to $999'
B25068m9='$1,000 or more'
B25068m10='No cash rent'
B25068m11='1 bedroom:'
B25068m12='With cash rent:'
B25068m13='Less than $200'
B25068m14='$200 to $299'
B25068m15='$300 to $499'
B25068m16='$500 to $749'
B25068m17='$750 to $999'
B25068m18='$1,000 or more'
B25068m19='No cash rent'
B25068m20='2 bedrooms:'
B25068m21='With cash rent:'
B25068m22='Less than $200'
B25068m23='$200 to $299'
B25068m24='$300 to $499'
B25068m25='$500 to $749'
B25068m26='$750 to $999'
B25068m27='$1,000 or more'
B25068m28='No cash rent'
B25068m29='3 or more bedrooms:'
B25068m30='With cash rent:'
B25068m31='Less than $200'
B25068m32='$200 to $299'
B25068m33='$300 to $499'
B25068m34='$500 to $749'
B25068m35='$750 to $999'
B25068m36='$1,000 or more'
B25068m37='No cash rent'
 
/*INCLUSION OF UTILITIES IN RENT */
/*Universe:  Renter-occupied housing units */
 
B25069m1='Total:'
B25069m2='Pay extra for one or more utilities'
B25069m3='No extra payment for any utilities'
 
/*GROSS RENT AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS */
/*Universe:  Renter-occupied housing units */
 
B25070m1='Total:'
B25070m2='Less than 10.0 percent'
B25070m3='10.0 to 14.9 percent'
B25070m4='15.0 to 19.9 percent'
B25070m5='20.0 to 24.9 percent'
B25070m6='25.0 to 29.9 percent'
B25070m7='30.0 to 34.9 percent'
B25070m8='35.0 to 39.9 percent'
B25070m9='40.0 to 49.9 percent'
B25070m10='50.0 percent or more'
B25070m11='Not computed'
 
/*MEDIAN GROSS RENT AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS (DOLLARS) */
/*Universe:  Renter-occupied housing units paying cash rent */
 
B25071m1='Median gross rent as a percentage of household income'
 
/*AGE OF HOUSEHOLDER BY GROSS RENT AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS */
/*Universe:  Renter-occupied housing units */
 
B25072m1='Total:'
B25072m2='Householder 15 to 24 years:'
B25072m3='Less than 20.0 percent'
B25072m4='20.0 to 24.9 percent'
B25072m5='25.0 to 29.9 percent'
B25072m6='30.0 to 34.9 percent'
B25072m7='35.0 percent or more'
B25072m8='Not computed'
B25072m9='Householder 25 to 34 years:'
B25072m10='Less than 20.0 percent'
B25072m11='20.0 to 24.9 percent'
B25072m12='25.0 to 29.9 percent'
B25072m13='30.0 to 34.9 percent'
B25072m14='35.0 percent or more'
B25072m15='Not computed'
B25072m16='Householder 35 to 64 years:'
B25072m17='Less than 20.0 percent'
B25072m18='20.0 to 24.9 percent'
B25072m19='25.0 to 29.9 percent'
B25072m20='30.0 to 34.9 percent'
B25072m21='35.0 percent or more'
B25072m22='Not computed'
B25072m23='Householder 65 years and over:'
B25072m24='Less than 20.0 percent'
B25072m25='20.0 to 24.9 percent'
B25072m26='25.0 to 29.9 percent'
B25072m27='30.0 to 34.9 percent'
B25072m28='35.0 percent or more'
B25072m29='Not computed'
 
/*UNITS IN STRUCTURE BY GROSS RENT AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS */
/*Universe:  Renter-occupied housing units */
 
B25073m1='Total:'
B25073m2='1, detached or attached:'
B25073m3='Less than 20.0 percent'
B25073m4='20.0 to 24.9 percent'
B25073m5='25.0 to 29.9 percent'
B25073m6='30.0 to 34.9 percent'
B25073m7='35.0 percent or more'
B25073m8='Not computed'
B25073m9='2 to 4:'
B25073m10='Less than 20.0 percent'
B25073m11='20.0 to 24.9 percent'
B25073m12='25.0 to 29.9 percent'
B25073m13='30.0 to 34.9 percent'
B25073m14='35.0 percent or more'
B25073m15='Not computed'
B25073m16='5 to 19:'
B25073m17='Less than 20.0 percent'
B25073m18='20.0 to 24.9 percent'
B25073m19='25.0 to 29.9 percent'
B25073m20='30.0 to 34.9 percent'
B25073m21='35.0 percent or more'
B25073m22='Not computed'
B25073m23='20 to 49:'
B25073m24='Less than 20.0 percent'
B25073m25='20.0 to 24.9 percent'
B25073m26='25.0 to 29.9 percent'
B25073m27='30.0 to 34.9 percent'
B25073m28='35.0 percent or more'
B25073m29='Not computed'
B25073m30='50 or more:'
B25073m31='Less than 20.0 percent'
B25073m32='20.0 to 24.9 percent'
B25073m33='25.0 to 29.9 percent'
B25073m34='30.0 to 34.9 percent'
B25073m35='35.0 percent or more'
B25073m36='Not computed'
B25073m37='Mobile home:'
B25073m38='Less than 20.0 percent'
B25073m39='20.0 to 24.9 percent'
B25073m40='25.0 to 29.9 percent'
B25073m41='30.0 to 34.9 percent'
B25073m42='35.0 percent or more'
B25073m43='Not computed'
B25073m44='Boat, RV, van, etc.:'
B25073m45='Less than 20.0 percent'
B25073m46='20.0 to 24.9 percent'
B25073m47='25.0 to 29.9 percent'
B25073m48='30.0 to 34.9 percent'
B25073m49='35.0 percent or more'
B25073m50='Not computed'
 
/*HOUSEHOLD INCOME BY GROSS RENT AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS */
/*Universe:  Renter-occupied housing units */
 
B25074m1='Total:'
B25074m2='Less than $10,000:'
B25074m3='Less than 20.0 percent'
B25074m4='20.0 to 24.9 percent'
B25074m5='25.0 to 29.9 percent'
B25074m6='30.0 to 34.9 percent'
B25074m7='35.0 percent or more'
B25074m8='Not computed'
B25074m9='$10,000 to $19,999:'
B25074m10='Less than 20.0 percent'
B25074m11='20.0 to 24.9 percent'
B25074m12='25.0 to 29.9 percent'
B25074m13='30.0 to 34.9 percent'
B25074m14='35.0 percent or more'
B25074m15='Not computed'
B25074m16='$20,000 to $34,999:'
B25074m17='Less than 20.0 percent'
B25074m18='20.0 to 24.9 percent'
B25074m19='25.0 to 29.9 percent'
B25074m20='30.0 to 34.9 percent'
B25074m21='35.0 percent or more'
B25074m22='Not computed'
B25074m23='$35,000 to $49,999:'
B25074m24='Less than 20.0 percent'
B25074m25='20.0 to 24.9 percent'
B25074m26='25.0 to 29.9 percent'
B25074m27='30.0 to 34.9 percent'
B25074m28='35.0 percent or more'
B25074m29='Not computed'
B25074m30='$50,000 to $74,999:'
B25074m31='Less than 20.0 percent'
B25074m32='20.0 to 24.9 percent'
B25074m33='25.0 to 29.9 percent'
B25074m34='30.0 to 34.9 percent'
B25074m35='35.0 percent or more'
B25074m36='Not computed'
B25074m37='$75,000 to $99,999:'
B25074m38='Less than 20.0 percent'
B25074m39='20.0 to 24.9 percent'
B25074m40='25.0 to 29.9 percent'
B25074m41='30.0 to 34.9 percent'
B25074m42='35.0 percent or more'
B25074m43='Not computed'
B25074m44='$100,000 or more:'
B25074m45='Less than 20.0 percent'
B25074m46='20.0 to 24.9 percent'
B25074m47='25.0 to 29.9 percent'
B25074m48='30.0 to 34.9 percent'
B25074m49='35.0 percent or more'
B25074m50='Not computed'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B25061m1
B25061m2
B25061m3
B25061m4
B25061m5
B25061m6
B25061m7
B25061m8
B25061m9
B25061m10
B25061m11
B25061m12
B25061m13
B25061m14
B25061m15
B25061m16
B25061m17
B25061m18
B25061m19
B25061m20
B25061m21
B25061m22
 
B25062m1
 
B25063m1
B25063m2
B25063m3
B25063m4
B25063m5
B25063m6
B25063m7
B25063m8
B25063m9
B25063m10
B25063m11
B25063m12
B25063m13
B25063m14
B25063m15
B25063m16
B25063m17
B25063m18
B25063m19
B25063m20
B25063m21
B25063m22
B25063m23
B25063m24
 
B25064m1
 
B25065m1
 
B25066m1
B25066m2
B25066m3
B25066m4
B25066m5
B25066m6
B25066m7
B25066m8
 
B25067m1
B25067m2
B25067m3
 
B25068m1
B25068m2
B25068m3
B25068m4
B25068m5
B25068m6
B25068m7
B25068m8
B25068m9
B25068m10
B25068m11
B25068m12
B25068m13
B25068m14
B25068m15
B25068m16
B25068m17
B25068m18
B25068m19
B25068m20
B25068m21
B25068m22
B25068m23
B25068m24
B25068m25
B25068m26
B25068m27
B25068m28
B25068m29
B25068m30
B25068m31
B25068m32
B25068m33
B25068m34
B25068m35
B25068m36
B25068m37
 
B25069m1
B25069m2
B25069m3
 
B25070m1
B25070m2
B25070m3
B25070m4
B25070m5
B25070m6
B25070m7
B25070m8
B25070m9
B25070m10
B25070m11
 
B25071m1
 
B25072m1
B25072m2
B25072m3
B25072m4
B25072m5
B25072m6
B25072m7
B25072m8
B25072m9
B25072m10
B25072m11
B25072m12
B25072m13
B25072m14
B25072m15
B25072m16
B25072m17
B25072m18
B25072m19
B25072m20
B25072m21
B25072m22
B25072m23
B25072m24
B25072m25
B25072m26
B25072m27
B25072m28
B25072m29
 
B25073m1
B25073m2
B25073m3
B25073m4
B25073m5
B25073m6
B25073m7
B25073m8
B25073m9
B25073m10
B25073m11
B25073m12
B25073m13
B25073m14
B25073m15
B25073m16
B25073m17
B25073m18
B25073m19
B25073m20
B25073m21
B25073m22
B25073m23
B25073m24
B25073m25
B25073m26
B25073m27
B25073m28
B25073m29
B25073m30
B25073m31
B25073m32
B25073m33
B25073m34
B25073m35
B25073m36
B25073m37
B25073m38
B25073m39
B25073m40
B25073m41
B25073m42
B25073m43
B25073m44
B25073m45
B25073m46
B25073m47
B25073m48
B25073m49
B25073m50
 
B25074m1
B25074m2
B25074m3
B25074m4
B25074m5
B25074m6
B25074m7
B25074m8
B25074m9
B25074m10
B25074m11
B25074m12
B25074m13
B25074m14
B25074m15
B25074m16
B25074m17
B25074m18
B25074m19
B25074m20
B25074m21
B25074m22
B25074m23
B25074m24
B25074m25
B25074m26
B25074m27
B25074m28
B25074m29
B25074m30
B25074m31
B25074m32
B25074m33
B25074m34
B25074m35
B25074m36
B25074m37
B25074m38
B25074m39
B25074m40
B25074m41
B25074m42
B25074m43
B25074m44
B25074m45
B25074m46
B25074m47
B25074m48
B25074m49
B25074m50
;
RUN;
TITLE2;
