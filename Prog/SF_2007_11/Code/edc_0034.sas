TITLE2 "e20115dc0034000";
DATA work.SFe0034dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0034000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
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
 
/*RELATIONSHIP TO HOUSEHOLDER FOR CHILDREN UNDER 18 YEARS IN HOUSEHOLDS */
/*Universe:  Population under 18 years in households (excluding householders, spouses, and unmarried partners) */
 
B09006e1='Total:'
B09006e2='Own child'
B09006e3='Grandchild'
B09006e4='Other relatives'
B09006e5='Foster child or other unrelated child'
 
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
 
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) BY RELATIONSHIP */
/*Universe:  Total population */
 
B09016e1='Total:'
B09016e2='In households:'
B09016e3='In family households:'
B09016e4='Householder:'
B09016e5='Male'
B09016e6='Female'
B09016e7='Spouse'
B09016e8='Child'
B09016e9='Grandchild'
B09016e10='Brother or sister'
B09016e11='Parent'
B09016e12='Other relatives'
B09016e13='Nonrelatives:'
B09016e14='Roomer or boarder'
B09016e15='Housemate or roommate'
B09016e16='Unmarried partner'
B09016e17='Foster child'
B09016e18='Other nonrelatives'
B09016e19='In nonfamily households:'
B09016e20='Householder:'
B09016e21='Male:'
B09016e22='Living alone'
B09016e23='Not living alone'
B09016e24='Female:'
B09016e25='Living alone'
B09016e26='Not living alone'
B09016e27='Nonrelatives:'
B09016e28='Roomer or boarder'
B09016e29='Housemate or roommate'
B09016e30='Unmarried partner'
B09016e31='Foster child'
B09016e32='Other nonrelatives'
B09016e33='In group quarters'
 
/*RELATIONSHIP BY HOUSEHOLD TYPE (INCLUDING LIVING ALONE) FOR THE POPULATION 65 YEARS AND OVER */
/*Universe:  Population 65 years and over */
 
B09017e1='Total:'
B09017e2='In households:'
B09017e3='In family households:'
B09017e4='Householder:'
B09017e5='Male'
B09017e6='Female'
B09017e7='Spouse'
B09017e8='Parent'
B09017e9='Other relatives'
B09017e10='Nonrelatives'
B09017e11='In nonfamily households:'
B09017e12='Householder:'
B09017e13='Male:'
B09017e14='Living alone'
B09017e15='Not living alone'
B09017e16='Female:'
B09017e17='Living alone'
B09017e18='Not living alone'
B09017e19='Nonrelatives'
B09017e20='In group quarters'
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
 
B09006e1
B09006e2
B09006e3
B09006e4
B09006e5
 
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
 
B09016e1
B09016e2
B09016e3
B09016e4
B09016e5
B09016e6
B09016e7
B09016e8
B09016e9
B09016e10
B09016e11
B09016e12
B09016e13
B09016e14
B09016e15
B09016e16
B09016e17
B09016e18
B09016e19
B09016e20
B09016e21
B09016e22
B09016e23
B09016e24
B09016e25
B09016e26
B09016e27
B09016e28
B09016e29
B09016e30
B09016e31
B09016e32
B09016e33
 
B09017e1
B09017e2
B09017e3
B09017e4
B09017e5
B09017e6
B09017e7
B09017e8
B09017e9
B09017e10
B09017e11
B09017e12
B09017e13
B09017e14
B09017e15
B09017e16
B09017e17
B09017e18
B09017e19
B09017e20
;
RUN;
TITLE2;
