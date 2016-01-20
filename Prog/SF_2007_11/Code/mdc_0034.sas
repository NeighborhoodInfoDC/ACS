TITLE2 "m20115dc0034000";
DATA work.SFm0034dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0034000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*POPULATION UNDER 18 YEARS BY AGE */
/*Universe:  Population under 18 years */
 
B09001m1='Total:'
B09001m2='In households:'
B09001m3='Under 3 years'
B09001m4='3 and 4 years'
B09001m5='5 years'
B09001m6='6 to 8 years'
B09001m7='9 to 11 years'
B09001m8='12 to 14 years'
B09001m9='15 to 17 years'
B09001m10='In group quarters'
 
/*OWN CHILDREN UNDER 18 YEARS BY FAMILY TYPE AND AGE */
/*Universe:  Own children under 18 years */
 
B09002m1='Total:'
B09002m2='In married-couple families:'
B09002m3='Under 3 years'
B09002m4='3 and 4 years'
B09002m5='5 years'
B09002m6='6 to 11 years'
B09002m7='12 to 17 years'
B09002m8='In other families:'
B09002m9='Male householder, no wife present:'
B09002m10='Under 3 years'
B09002m11='3 and 4 years'
B09002m12='5 years'
B09002m13='6 to 11 years'
B09002m14='12 to 17 years'
B09002m15='Female householder, no husband present:'
B09002m16='Under 3 years'
B09002m17='3 and 4 years'
B09002m18='5 years'
B09002m19='6 to 11 years'
B09002m20='12 to 17 years'
 
/*HOUSEHOLD TYPE FOR CHILDREN UNDER 18 YEARS IN HOUSEHOLDS (EXCLUDING HOUSEHOLDERS, SPOUSES, AND UNMARRIED PARTNERS) */
/*Universe:  Population under 18 years in households (excluding householders, spouses, and unmarried partners) */
 
B09005m1='Total:'
B09005m2='In family households:'
B09005m3='In married-couple family'
B09005m4='In male householder, no wife present, family'
B09005m5='In female householder, no husband present, family'
B09005m6='In nonfamily households'
 
/*RELATIONSHIP TO HOUSEHOLDER FOR CHILDREN UNDER 18 YEARS IN HOUSEHOLDS */
/*Universe:  Population under 18 years in households (excluding householders, spouses, and unmarried partners) */
 
B09006m1='Total:'
B09006m2='Own child'
B09006m3='Grandchild'
B09006m4='Other relatives'
B09006m5='Foster child or other unrelated child'
 
/*PRESENCE OF UNMARRIED PARTNER OF HOUSEHOLDER BY HOUSEHOLD TYPE FOR CHILDREN UNDER 18 YEARS IN HOUSEHOLDS */
/*Universe:  Population under 18 years in households (excluding householders, spouses, and unmarried partners) */
 
B09008m1='Total:'
B09008m2='Unmarried partner of householder present:'
B09008m3='In family households:'
B09008m4='In male householder, no wife present, family'
B09008m5='In female householder, no husband present, family'
B09008m6='In nonfamily households'
B09008m7='No unmarried partner of householder present:'
B09008m8='In family households:'
B09008m9='In married-couple family'
B09008m10='In male householder, no wife present, family'
B09008m11='In female householder, no husband present, family'
B09008m12='In nonfamily households'
 
/*RECEIPT OF SUPPLEMENTAL SECURITY INCOME (SSI), CASH PUBLIC ASSISTANCE INCOME, OR FOOD STAMPS/SNAP IN THE PAST 12 MONTHS BY HOUSEHOLD TYPE FOR CHILDREN UNDER 18 YEARS IN HOUSEHOLDS */
/*Universe:  Population under 18 years in households */
 
B09010m1='Total:'
B09010m2='Living in household with Supplemental Security Income (SSI), cash public assistance income, or Food Stamps/SNAP in the past 12 months:'
B09010m3='In family households:'
B09010m4='In married-couple family'
B09010m5='In male householder, no wife present, family'
B09010m6='In female householder, no husband present, family'
B09010m7='In nonfamily households'
B09010m8='Living in household with no Supplemental Security Income (SSI), cash public assistance income, or Food Stamps/SNAP in the past 12 months:'
B09010m9='In family households:'
B09010m10='In married-couple family'
B09010m11='In male householder, no wife present, family'
B09010m12='In female householder, no husband present, family'
B09010m13='In nonfamily households'
 
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) BY RELATIONSHIP */
/*Universe:  Total population */
 
B09016m1='Total:'
B09016m2='In households:'
B09016m3='In family households:'
B09016m4='Householder:'
B09016m5='Male'
B09016m6='Female'
B09016m7='Spouse'
B09016m8='Child'
B09016m9='Grandchild'
B09016m10='Brother or sister'
B09016m11='Parent'
B09016m12='Other relatives'
B09016m13='Nonrelatives:'
B09016m14='Roomer or boarder'
B09016m15='Housemate or roommate'
B09016m16='Unmarried partner'
B09016m17='Foster child'
B09016m18='Other nonrelatives'
B09016m19='In nonfamily households:'
B09016m20='Householder:'
B09016m21='Male:'
B09016m22='Living alone'
B09016m23='Not living alone'
B09016m24='Female:'
B09016m25='Living alone'
B09016m26='Not living alone'
B09016m27='Nonrelatives:'
B09016m28='Roomer or boarder'
B09016m29='Housemate or roommate'
B09016m30='Unmarried partner'
B09016m31='Foster child'
B09016m32='Other nonrelatives'
B09016m33='In group quarters'
 
/*RELATIONSHIP BY HOUSEHOLD TYPE (INCLUDING LIVING ALONE) FOR THE POPULATION 65 YEARS AND OVER */
/*Universe:  Population 65 years and over */
 
B09017m1='Total:'
B09017m2='In households:'
B09017m3='In family households:'
B09017m4='Householder:'
B09017m5='Male'
B09017m6='Female'
B09017m7='Spouse'
B09017m8='Parent'
B09017m9='Other relatives'
B09017m10='Nonrelatives'
B09017m11='In nonfamily households:'
B09017m12='Householder:'
B09017m13='Male:'
B09017m14='Living alone'
B09017m15='Not living alone'
B09017m16='Female:'
B09017m17='Living alone'
B09017m18='Not living alone'
B09017m19='Nonrelatives'
B09017m20='In group quarters'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B09001m1
B09001m2
B09001m3
B09001m4
B09001m5
B09001m6
B09001m7
B09001m8
B09001m9
B09001m10
 
B09002m1
B09002m2
B09002m3
B09002m4
B09002m5
B09002m6
B09002m7
B09002m8
B09002m9
B09002m10
B09002m11
B09002m12
B09002m13
B09002m14
B09002m15
B09002m16
B09002m17
B09002m18
B09002m19
B09002m20
 
B09005m1
B09005m2
B09005m3
B09005m4
B09005m5
B09005m6
 
B09006m1
B09006m2
B09006m3
B09006m4
B09006m5
 
B09008m1
B09008m2
B09008m3
B09008m4
B09008m5
B09008m6
B09008m7
B09008m8
B09008m9
B09008m10
B09008m11
B09008m12
 
B09010m1
B09010m2
B09010m3
B09010m4
B09010m5
B09010m6
B09010m7
B09010m8
B09010m9
B09010m10
B09010m11
B09010m12
B09010m13
 
B09016m1
B09016m2
B09016m3
B09016m4
B09016m5
B09016m6
B09016m7
B09016m8
B09016m9
B09016m10
B09016m11
B09016m12
B09016m13
B09016m14
B09016m15
B09016m16
B09016m17
B09016m18
B09016m19
B09016m20
B09016m21
B09016m22
B09016m23
B09016m24
B09016m25
B09016m26
B09016m27
B09016m28
B09016m29
B09016m30
B09016m31
B09016m32
B09016m33
 
B09017m1
B09017m2
B09017m3
B09017m4
B09017m5
B09017m6
B09017m7
B09017m8
B09017m9
B09017m10
B09017m11
B09017m12
B09017m13
B09017m14
B09017m15
B09017m16
B09017m17
B09017m18
B09017m19
B09017m20
;
RUN;
TITLE2;
