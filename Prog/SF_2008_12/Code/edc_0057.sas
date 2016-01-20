TITLE2 "e20125dc0057000";
DATA work.SFe0057dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0057000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SEX BY AGE BY AMBULATORY DIFFICULTY */
/*Universe:  Civilian noninstitutionalized population 5 years and over */
 
B18105e1='Total:'
B18105e2='Male:'
B18105e3='5 to 17 years:'
B18105e4='With an ambulatory difficulty'
B18105e5='No ambulatory difficulty'
B18105e6='18 to 34 years:'
B18105e7='With an ambulatory difficulty'
B18105e8='No ambulatory difficulty'
B18105e9='35 to 64 years:'
B18105e10='With an ambulatory difficulty'
B18105e11='No ambulatory difficulty'
B18105e12='65 to 74 years:'
B18105e13='With an ambulatory difficulty'
B18105e14='No ambulatory difficulty'
B18105e15='75 years and over:'
B18105e16='With an ambulatory difficulty'
B18105e17='No ambulatory difficulty'
B18105e18='Female:'
B18105e19='5 to 17 years:'
B18105e20='With an ambulatory difficulty'
B18105e21='No ambulatory difficulty'
B18105e22='18 to 34 years:'
B18105e23='With an ambulatory difficulty'
B18105e24='No ambulatory difficulty'
B18105e25='35 to 64 years:'
B18105e26='With an ambulatory difficulty'
B18105e27='No ambulatory difficulty'
B18105e28='65 to 74 years:'
B18105e29='With an ambulatory difficulty'
B18105e30='No ambulatory difficulty'
B18105e31='75 years and over:'
B18105e32='With an ambulatory difficulty'
B18105e33='No ambulatory difficulty'
/*SEX BY AGE BY SELF-CARE DIFFICULTY */
/*Universe:  Civilian noninstitutionalized population 5 years and over */
 
B18106e1='Total:'
B18106e2='Male:'
B18106e3='5 to 17 years:'
B18106e4='With a self-care difficulty'
B18106e5='No self-care difficulty'
B18106e6='18 to 34 years:'
B18106e7='With a self-care difficulty'
B18106e8='No self-care difficulty'
B18106e9='35 to 64 years:'
B18106e10='With a self-care difficulty'
B18106e11='No self-care difficulty'
B18106e12='65 to 74 years:'
B18106e13='With a self-care difficulty'
B18106e14='No self-care difficulty'
B18106e15='75 years and over:'
B18106e16='With a self-care difficulty'
B18106e17='No self-care difficulty'
B18106e18='Female:'
B18106e19='5 to 17 years:'
B18106e20='With a self-care difficulty'
B18106e21='No self-care difficulty'
B18106e22='18 to 34 years:'
B18106e23='With a self-care difficulty'
B18106e24='No self-care difficulty'
B18106e25='35 to 64 years:'
B18106e26='With a self-care difficulty'
B18106e27='No self-care difficulty'
B18106e28='65 to 74 years:'
B18106e29='With a self-care difficulty'
B18106e30='No self-care difficulty'
B18106e31='75 years and over:'
B18106e32='With a self-care difficulty'
B18106e33='No self-care difficulty'
/*SEX BY AGE BY INDEPENDENT LIVING DIFFICULTY */
/*Universe:  Civilian noninstitutionalized population 18 years and over */
 
B18107e1='Total:'
B18107e2='Male:'
B18107e3='18 to 34 years:'
B18107e4='With an independent living difficulty'
B18107e5='No independent living difficulty'
B18107e6='35 to 64 years:'
B18107e7='With an independent living difficulty'
B18107e8='No independent living difficulty'
B18107e9='65 to 74 years:'
B18107e10='With an independent living difficulty'
B18107e11='No independent living difficulty'
B18107e12='75 years and over:'
B18107e13='With an independent living difficulty'
B18107e14='No independent living difficulty'
B18107e15='Female:'
B18107e16='18 to 34 years:'
B18107e17='With an independent living difficulty'
B18107e18='No independent living difficulty'
B18107e19='35 to 64 years:'
B18107e20='With an independent living difficulty'
B18107e21='No independent living difficulty'
B18107e22='65 to 74 years:'
B18107e23='With an independent living difficulty'
B18107e24='No independent living difficulty'
B18107e25='75 years and over:'
B18107e26='With an independent living difficulty'
B18107e27='No independent living difficulty'
/*AGE BY DISABILITY STATUS BY HEALTH INSURANCE COVERAGE STATUS */
/*Universe:  Civilian Noninstitutionalized Population */
 
B18135e1='Total:'
B18135e2='Under 18 years:'
B18135e3='With a disability:'
B18135e4='With health insurance coverage:'
B18135e5='With private health insurance coverage'
B18135e6='With public health coverage'
B18135e7='No health insurance coverage'
B18135e8='No disability:'
B18135e9='With health insurance coverage:'
B18135e10='With private health insurance coverage'
B18135e11='With public health coverage'
B18135e12='No health insurance coverage'
B18135e13='18 to 64 years:'
B18135e14='With a disability:'
B18135e15='With health insurance coverage:'
B18135e16='With private health insurance coverage'
B18135e17='With public health coverage'
B18135e18='No health insurance coverage'
B18135e19='No disability:'
B18135e20='With health insurance coverage:'
B18135e21='With private health insurance coverage'
B18135e22='With public health coverage'
B18135e23='No health insurance coverage'
B18135e24='65 years and over:'
B18135e25='With a disability:'
B18135e26='With health insurance coverage:'
B18135e27='With private health insurance coverage'
B18135e28='With public health coverage'
B18135e29='No health insurance coverage'
B18135e30='No disability:'
B18135e31='With health insurance coverage:'
B18135e32='With private health insurance coverage'
B18135e33='With public health coverage'
B18135e34='No health insurance coverage'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY DISABILITY STATUS BY SEX FOR THE CIVILIAN NONINSTITUTIONALIZED POPULATION 16 YEARS AND OVER WITH EARNINGS */
/*Universe:  Civilian Noninstitutionalized Population 16 Years and Over with Earnings in the Past 12 Months */
 
B18140e1='Total:'
B18140e2='With a disability:'
B18140e3='Male'
B18140e4='Female'
B18140e5='No disability:'
B18140e6='Male'
B18140e7='Female'
/*AGE BY NUMBER OF DISABILITIES */
/*Universe:  Civilian noninstitutionalized population */
 
C18108e1='Total:'
C18108e2='Under 18 years:'
C18108e3='With one type of disability'
C18108e4='With two or more types of disability'
C18108e5='No disability'
C18108e6='18 to 64 years:'
C18108e7='With one type of disability'
C18108e8='With two or more types of disability'
C18108e9='No disability'
C18108e10='65 years and over:'
C18108e11='With one type of disability'
C18108e12='With two or more types of disability'
C18108e13='No disability'
/*EMPLOYMENT STATUS BY DISABILITY STATUS */
/*Universe:  Civilian noninstitutionalized population 18 to 64 years */
 
C18120e1='Total:'
C18120e2='In the labor force:'
C18120e3='Employed:'
C18120e4='With a disability'
C18120e5='No disability'
C18120e6='Unemployed:'
C18120e7='With a disability'
C18120e8='No disability'
C18120e9='Not in labor force:'
C18120e10='With a disability'
C18120e11='No disability'
/*WORK EXPERIENCE BY DISABILITY STATUS */
/*Universe:  Civilian Noninstitutionalized Population 18 to 64 years */
 
C18121e1='Total:'
C18121e2='Worked full-time, year round:'
C18121e3='With a disability'
C18121e4='No disability'
C18121e5='Worked less than full-time, year round:'
C18121e6='With a disability'
C18121e7='No disability'
C18121e8='Did not work:'
C18121e9='With a disability'
C18121e10='No disability'
/*AGE BY DISABILITY STATUS BY POVERTY STATUS */
/*Universe:  Civilian noninstitutionalized population for whom poverty status is determined */
 
C18130e1='Total:'
C18130e2='Under 18 years:'
C18130e3='With a disability:'
C18130e4='Income in the past 12-months below poverty level'
C18130e5='Income in the past 12-months at or above poverty level'
C18130e6='No disability:'
C18130e7='Income in the past 12-months below poverty level'
C18130e8='Income in the past 12-months at or above poverty level'
C18130e9='18 to 64 years:'
C18130e10='With a disability:'
C18130e11='Income in the past 12-months below poverty level'
C18130e12='Income in the past 12-months at or above poverty level'
C18130e13='No disability:'
C18130e14='Income in the past 12-months below poverty level'
C18130e15='Income in the past 12-months at or above poverty level'
C18130e16='65 years and over:'
C18130e17='With a disability:'
C18130e18='Income in the past 12-months below poverty level'
C18130e19='Income in the past 12-months at or above poverty level'
C18130e20='No disability:'
C18130e21='Income in the past 12-months below poverty level'
C18130e22='Income in the past 12-months at or above poverty level'
/*RATIO OF INCOME TO POVERTY LEVEL IN THE PAST 12 MONTHS BY DISABILITY STATUS */
/*Universe:  Civilian Noninstitutionalized Population for Whom Poverty Status is Determined */
 
C18131e1='Total:'
C18131e2='Under .50:'
C18131e3='With a disability'
C18131e4='No disability'
C18131e5='.50 to .99:'
C18131e6='With a disability'
C18131e7='No disability'
C18131e8='1.00 to 1.49:'
C18131e9='With a disability'
C18131e10='No disability'
C18131e11='1.50 to 1.99:'
C18131e12='With a disability'
C18131e13='No disability'
C18131e14='2.00 and over:'
C18131e15='With a disability'
C18131e16='No disability'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B18105e1
B18105e2
B18105e3
B18105e4
B18105e5
B18105e6
B18105e7
B18105e8
B18105e9
B18105e10
B18105e11
B18105e12
B18105e13
B18105e14
B18105e15
B18105e16
B18105e17
B18105e18
B18105e19
B18105e20
B18105e21
B18105e22
B18105e23
B18105e24
B18105e25
B18105e26
B18105e27
B18105e28
B18105e29
B18105e30
B18105e31
B18105e32
B18105e33
 
B18106e1
B18106e2
B18106e3
B18106e4
B18106e5
B18106e6
B18106e7
B18106e8
B18106e9
B18106e10
B18106e11
B18106e12
B18106e13
B18106e14
B18106e15
B18106e16
B18106e17
B18106e18
B18106e19
B18106e20
B18106e21
B18106e22
B18106e23
B18106e24
B18106e25
B18106e26
B18106e27
B18106e28
B18106e29
B18106e30
B18106e31
B18106e32
B18106e33
 
B18107e1
B18107e2
B18107e3
B18107e4
B18107e5
B18107e6
B18107e7
B18107e8
B18107e9
B18107e10
B18107e11
B18107e12
B18107e13
B18107e14
B18107e15
B18107e16
B18107e17
B18107e18
B18107e19
B18107e20
B18107e21
B18107e22
B18107e23
B18107e24
B18107e25
B18107e26
B18107e27
 
B18135e1
B18135e2
B18135e3
B18135e4
B18135e5
B18135e6
B18135e7
B18135e8
B18135e9
B18135e10
B18135e11
B18135e12
B18135e13
B18135e14
B18135e15
B18135e16
B18135e17
B18135e18
B18135e19
B18135e20
B18135e21
B18135e22
B18135e23
B18135e24
B18135e25
B18135e26
B18135e27
B18135e28
B18135e29
B18135e30
B18135e31
B18135e32
B18135e33
B18135e34
 
B18140e1
B18140e2
B18140e3
B18140e4
B18140e5
B18140e6
B18140e7
 
C18108e1
C18108e2
C18108e3
C18108e4
C18108e5
C18108e6
C18108e7
C18108e8
C18108e9
C18108e10
C18108e11
C18108e12
C18108e13
 
C18120e1
C18120e2
C18120e3
C18120e4
C18120e5
C18120e6
C18120e7
C18120e8
C18120e9
C18120e10
C18120e11
 
C18121e1
C18121e2
C18121e3
C18121e4
C18121e5
C18121e6
C18121e7
C18121e8
C18121e9
C18121e10
 
C18130e1
C18130e2
C18130e3
C18130e4
C18130e5
C18130e6
C18130e7
C18130e8
C18130e9
C18130e10
C18130e11
C18130e12
C18130e13
C18130e14
C18130e15
C18130e16
C18130e17
C18130e18
C18130e19
C18130e20
C18130e21
C18130e22
 
C18131e1
C18131e2
C18131e3
C18131e4
C18131e5
C18131e6
C18131e7
C18131e8
C18131e9
C18131e10
C18131e11
C18131e12
C18131e13
C18131e14
C18131e15
C18131e16
;
RUN;
TITLE2;
