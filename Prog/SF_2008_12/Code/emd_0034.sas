TITLE2 "e20125md0034000";
DATA work.SFe0034md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0034000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*POPULATION UNDER 18 YEARS BY AGE */
/*Universe:  Population under 18 years */
 
B09001e1='Total:'
B09001e2='In households:'
B09001e3='Under 3 years'
B09001e4='3 and 4 years'
B09001e5='5 years'
B09001e6='6 to 8 years'
B09001e7='9 to 11 years'
B09001e8='12 to 14 years'
B09001e9='15 to 17 years'
B09001e10='In group quarters'
/*OWN CHILDREN UNDER 18 YEARS BY FAMILY TYPE AND AGE */
/*Universe:  Own children under 18 years */
 
B09002e1='Total:'
B09002e2='In married-couple families:'
B09002e3='Under 3 years'
B09002e4='3 and 4 years'
B09002e5='5 years'
B09002e6='6 to 11 years'
B09002e7='12 to 17 years'
B09002e8='In other families:'
B09002e9='Male householder, no wife present:'
B09002e10='Under 3 years'
B09002e11='3 and 4 years'
B09002e12='5 years'
B09002e13='6 to 11 years'
B09002e14='12 to 17 years'
B09002e15='Female householder, no husband present:'
B09002e16='Under 3 years'
B09002e17='3 and 4 years'
B09002e18='5 years'
B09002e19='6 to 11 years'
B09002e20='12 to 17 years'
/*HOUSEHOLD TYPE FOR CHILDREN UNDER 18 YEARS IN HOUSEHOLDS (EXCLUDING HOUSEHOLDERS, SPOUSES, AND UNMARRIED PARTNERS) */
/*Universe:  Population under 18 years in households (excluding householders, spouses, and unmarried partners) */
 
B09005e1='Total:'
B09005e2='In family households:'
B09005e3='In married-couple family'
B09005e4='In male householder, no wife present, family'
B09005e5='In female householder, no husband present, family'
B09005e6='In nonfamily households'
/*PRESENCE OF UNMARRIED PARTNER OF HOUSEHOLDER BY HOUSEHOLD TYPE FOR CHILDREN UNDER 18 YEARS IN HOUSEHOLDS */
/*Universe:  Population under 18 years in households (excluding householders, spouses, and unmarried partners) */
 
B09008e1='Total:'
B09008e2='Unmarried partner of householder present:'
B09008e3='In family households:'
B09008e4='In male householder, no wife present, family'
B09008e5='In female householder, no husband present, family'
B09008e6='In nonfamily households'
B09008e7='No unmarried partner of householder present:'
B09008e8='In family households:'
B09008e9='In married-couple family'
B09008e10='In male householder, no wife present, family'
B09008e11='In female householder, no husband present, family'
B09008e12='In nonfamily households'
/*RECEIPT OF SUPPLEMENTAL SECURITY INCOME (SSI), CASH PUBLIC ASSISTANCE INCOME, OR FOOD STAMPS/SNAP IN THE PAST 12 MONTHS BY HOUSEHOLD TYPE FOR CHILDREN UNDER 18 YEARS IN HOUSEHOLDS */
/*Universe:  Population under 18 years in households */
 
B09010e1='Total:'
B09010e2='Living in household with Supplemental Security Income (SSI), cash public assistance income, or Food Stamps/SNAP in the past 12 months:'
B09010e3='In family households:'
B09010e4='In married-couple family'
B09010e5='In male householder, no wife present, family'
B09010e6='In female householder, no husband present, family'
B09010e7='In nonfamily households'
B09010e8='Living in household with no Supplemental Security Income (SSI), cash public assistance income, or Food Stamps/SNAP in the past 12 months:'
B09010e9='In family households:'
B09010e10='In married-couple family'
B09010e11='In male householder, no wife present, family'
B09010e12='In female householder, no husband present, family'
B09010e13='In nonfamily households'
/*RELATIONSHIP TO HOUSEHOLDER FOR CHILDREN UNDER 18 YEARS IN HOUSEHOLDS */
/*Universe:  Population under 18 years in households (excluding householders, spouses, and unmarried partners) */
 
B09018e1='Total:'
B09018e2='Own child:'
B09018e3='Biological child'
B09018e4='Adopted child'
B09018e5='Stepchild'
B09018e6='Grandchild'
B09018e7='Other relatives'
B09018e8='Foster child or other unrelated child'
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) BY RELATIONSHIP */
/*Universe:  Total population */
 
B09019e1='Total:'
B09019e2='In households:'
B09019e3='In family households:'
B09019e4='Householder:'
B09019e5='Male'
B09019e6='Female'
B09019e7='Spouse'
B09019e8='Child:'
B09019e9='Biological child'
B09019e10='Adopted child'
B09019e11='Stepchild'
B09019e12='Grandchild'
B09019e13='Brother or sister'
B09019e14='Parent'
B09019e15='Parent-in-law'
B09019e16='Son-in-law or daughter-in-law'
B09019e17='Other relatives'
B09019e18='Nonrelatives:'
B09019e19='Roomer or boarder'
B09019e20='Housemate or roommate'
B09019e21='Unmarried partner'
B09019e22='Foster child'
B09019e23='Other nonrelatives'
B09019e24='In nonfamily households:'
B09019e25='Householder:'
B09019e26='Male:'
B09019e27='Living alone'
B09019e28='Not living alone'
B09019e29='Female:'
B09019e30='Living alone'
B09019e31='Not living alone'
B09019e32='Nonrelatives:'
B09019e33='Roomer or boarder'
B09019e34='Housemate or roommate'
B09019e35='Unmarried partner'
B09019e36='Foster child'
B09019e37='Other nonrelatives'
B09019e38='In group quarters'
/*RELATIONSHIP BY HOUSEHOLD TYPE (INCLUDING LIVING ALONE) FOR THE POPULATION 65 YEARS AND OVER */
/*Universe:  Population 65 years and over */
 
B09020e1='Total:'
B09020e2='In households:'
B09020e3='In family households:'
B09020e4='Householder:'
B09020e5='Male'
B09020e6='Female'
B09020e7='Spouse'
B09020e8='Parent'
B09020e9='Parent-in-law'
B09020e10='Other relatives'
B09020e11='Nonrelatives'
B09020e12='In nonfamily households:'
B09020e13='Householder:'
B09020e14='Male:'
B09020e15='Living alone'
B09020e16='Not living alone'
B09020e17='Female:'
B09020e18='Living alone'
B09020e19='Not living alone'
B09020e20='Nonrelatives'
B09020e21='In group quarters'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B09001e1
B09001e2
B09001e3
B09001e4
B09001e5
B09001e6
B09001e7
B09001e8
B09001e9
B09001e10
 
B09002e1
B09002e2
B09002e3
B09002e4
B09002e5
B09002e6
B09002e7
B09002e8
B09002e9
B09002e10
B09002e11
B09002e12
B09002e13
B09002e14
B09002e15
B09002e16
B09002e17
B09002e18
B09002e19
B09002e20
 
B09005e1
B09005e2
B09005e3
B09005e4
B09005e5
B09005e6
 
B09008e1
B09008e2
B09008e3
B09008e4
B09008e5
B09008e6
B09008e7
B09008e8
B09008e9
B09008e10
B09008e11
B09008e12
 
B09010e1
B09010e2
B09010e3
B09010e4
B09010e5
B09010e6
B09010e7
B09010e8
B09010e9
B09010e10
B09010e11
B09010e12
B09010e13
 
B09018e1
B09018e2
B09018e3
B09018e4
B09018e5
B09018e6
B09018e7
B09018e8
 
B09019e1
B09019e2
B09019e3
B09019e4
B09019e5
B09019e6
B09019e7
B09019e8
B09019e9
B09019e10
B09019e11
B09019e12
B09019e13
B09019e14
B09019e15
B09019e16
B09019e17
B09019e18
B09019e19
B09019e20
B09019e21
B09019e22
B09019e23
B09019e24
B09019e25
B09019e26
B09019e27
B09019e28
B09019e29
B09019e30
B09019e31
B09019e32
B09019e33
B09019e34
B09019e35
B09019e36
B09019e37
B09019e38
 
B09020e1
B09020e2
B09020e3
B09020e4
B09020e5
B09020e6
B09020e7
B09020e8
B09020e9
B09020e10
B09020e11
B09020e12
B09020e13
B09020e14
B09020e15
B09020e16
B09020e17
B09020e18
B09020e19
B09020e20
B09020e21
;
RUN;
TITLE2;
