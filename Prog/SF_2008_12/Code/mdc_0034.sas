TITLE2 "m20125dc0034000";
DATA work.SFm0034dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0034000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
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
/*RELATIONSHIP TO HOUSEHOLDER FOR CHILDREN UNDER 18 YEARS IN HOUSEHOLDS */
/*Universe:  Population under 18 years in households (excluding householders, spouses, and unmarried partners) */
 
B09018m1='Total:'
B09018m2='Own child:'
B09018m3='Biological child'
B09018m4='Adopted child'
B09018m5='Stepchild'
B09018m6='Grandchild'
B09018m7='Other relatives'
B09018m8='Foster child or other unrelated child'
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) BY RELATIONSHIP */
/*Universe:  Total population */
 
B09019m1='Total:'
B09019m2='In households:'
B09019m3='In family households:'
B09019m4='Householder:'
B09019m5='Male'
B09019m6='Female'
B09019m7='Spouse'
B09019m8='Child:'
B09019m9='Biological child'
B09019m10='Adopted child'
B09019m11='Stepchild'
B09019m12='Grandchild'
B09019m13='Brother or sister'
B09019m14='Parent'
B09019m15='Parent-in-law'
B09019m16='Son-in-law or daughter-in-law'
B09019m17='Other relatives'
B09019m18='Nonrelatives:'
B09019m19='Roomer or boarder'
B09019m20='Housemate or roommate'
B09019m21='Unmarried partner'
B09019m22='Foster child'
B09019m23='Other nonrelatives'
B09019m24='In nonfamily households:'
B09019m25='Householder:'
B09019m26='Male:'
B09019m27='Living alone'
B09019m28='Not living alone'
B09019m29='Female:'
B09019m30='Living alone'
B09019m31='Not living alone'
B09019m32='Nonrelatives:'
B09019m33='Roomer or boarder'
B09019m34='Housemate or roommate'
B09019m35='Unmarried partner'
B09019m36='Foster child'
B09019m37='Other nonrelatives'
B09019m38='In group quarters'
/*RELATIONSHIP BY HOUSEHOLD TYPE (INCLUDING LIVING ALONE) FOR THE POPULATION 65 YEARS AND OVER */
/*Universe:  Population 65 years and over */
 
B09020m1='Total:'
B09020m2='In households:'
B09020m3='In family households:'
B09020m4='Householder:'
B09020m5='Male'
B09020m6='Female'
B09020m7='Spouse'
B09020m8='Parent'
B09020m9='Parent-in-law'
B09020m10='Other relatives'
B09020m11='Nonrelatives'
B09020m12='In nonfamily households:'
B09020m13='Householder:'
B09020m14='Male:'
B09020m15='Living alone'
B09020m16='Not living alone'
B09020m17='Female:'
B09020m18='Living alone'
B09020m19='Not living alone'
B09020m20='Nonrelatives'
B09020m21='In group quarters'
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
 
B09018m1
B09018m2
B09018m3
B09018m4
B09018m5
B09018m6
B09018m7
B09018m8
 
B09019m1
B09019m2
B09019m3
B09019m4
B09019m5
B09019m6
B09019m7
B09019m8
B09019m9
B09019m10
B09019m11
B09019m12
B09019m13
B09019m14
B09019m15
B09019m16
B09019m17
B09019m18
B09019m19
B09019m20
B09019m21
B09019m22
B09019m23
B09019m24
B09019m25
B09019m26
B09019m27
B09019m28
B09019m29
B09019m30
B09019m31
B09019m32
B09019m33
B09019m34
B09019m35
B09019m36
B09019m37
B09019m38
 
B09020m1
B09020m2
B09020m3
B09020m4
B09020m5
B09020m6
B09020m7
B09020m8
B09020m9
B09020m10
B09020m11
B09020m12
B09020m13
B09020m14
B09020m15
B09020m16
B09020m17
B09020m18
B09020m19
B09020m20
B09020m21
;
RUN;
TITLE2;
