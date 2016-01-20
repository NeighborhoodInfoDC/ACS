TITLE2 "m20125dc0057000";
DATA work.SFm0057dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0057000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SEX BY AGE BY AMBULATORY DIFFICULTY */
/*Universe:  Civilian noninstitutionalized population 5 years and over */
 
B18105m1='Total:'
B18105m2='Male:'
B18105m3='5 to 17 years:'
B18105m4='With an ambulatory difficulty'
B18105m5='No ambulatory difficulty'
B18105m6='18 to 34 years:'
B18105m7='With an ambulatory difficulty'
B18105m8='No ambulatory difficulty'
B18105m9='35 to 64 years:'
B18105m10='With an ambulatory difficulty'
B18105m11='No ambulatory difficulty'
B18105m12='65 to 74 years:'
B18105m13='With an ambulatory difficulty'
B18105m14='No ambulatory difficulty'
B18105m15='75 years and over:'
B18105m16='With an ambulatory difficulty'
B18105m17='No ambulatory difficulty'
B18105m18='Female:'
B18105m19='5 to 17 years:'
B18105m20='With an ambulatory difficulty'
B18105m21='No ambulatory difficulty'
B18105m22='18 to 34 years:'
B18105m23='With an ambulatory difficulty'
B18105m24='No ambulatory difficulty'
B18105m25='35 to 64 years:'
B18105m26='With an ambulatory difficulty'
B18105m27='No ambulatory difficulty'
B18105m28='65 to 74 years:'
B18105m29='With an ambulatory difficulty'
B18105m30='No ambulatory difficulty'
B18105m31='75 years and over:'
B18105m32='With an ambulatory difficulty'
B18105m33='No ambulatory difficulty'
/*SEX BY AGE BY SELF-CARE DIFFICULTY */
/*Universe:  Civilian noninstitutionalized population 5 years and over */
 
B18106m1='Total:'
B18106m2='Male:'
B18106m3='5 to 17 years:'
B18106m4='With a self-care difficulty'
B18106m5='No self-care difficulty'
B18106m6='18 to 34 years:'
B18106m7='With a self-care difficulty'
B18106m8='No self-care difficulty'
B18106m9='35 to 64 years:'
B18106m10='With a self-care difficulty'
B18106m11='No self-care difficulty'
B18106m12='65 to 74 years:'
B18106m13='With a self-care difficulty'
B18106m14='No self-care difficulty'
B18106m15='75 years and over:'
B18106m16='With a self-care difficulty'
B18106m17='No self-care difficulty'
B18106m18='Female:'
B18106m19='5 to 17 years:'
B18106m20='With a self-care difficulty'
B18106m21='No self-care difficulty'
B18106m22='18 to 34 years:'
B18106m23='With a self-care difficulty'
B18106m24='No self-care difficulty'
B18106m25='35 to 64 years:'
B18106m26='With a self-care difficulty'
B18106m27='No self-care difficulty'
B18106m28='65 to 74 years:'
B18106m29='With a self-care difficulty'
B18106m30='No self-care difficulty'
B18106m31='75 years and over:'
B18106m32='With a self-care difficulty'
B18106m33='No self-care difficulty'
/*SEX BY AGE BY INDEPENDENT LIVING DIFFICULTY */
/*Universe:  Civilian noninstitutionalized population 18 years and over */
 
B18107m1='Total:'
B18107m2='Male:'
B18107m3='18 to 34 years:'
B18107m4='With an independent living difficulty'
B18107m5='No independent living difficulty'
B18107m6='35 to 64 years:'
B18107m7='With an independent living difficulty'
B18107m8='No independent living difficulty'
B18107m9='65 to 74 years:'
B18107m10='With an independent living difficulty'
B18107m11='No independent living difficulty'
B18107m12='75 years and over:'
B18107m13='With an independent living difficulty'
B18107m14='No independent living difficulty'
B18107m15='Female:'
B18107m16='18 to 34 years:'
B18107m17='With an independent living difficulty'
B18107m18='No independent living difficulty'
B18107m19='35 to 64 years:'
B18107m20='With an independent living difficulty'
B18107m21='No independent living difficulty'
B18107m22='65 to 74 years:'
B18107m23='With an independent living difficulty'
B18107m24='No independent living difficulty'
B18107m25='75 years and over:'
B18107m26='With an independent living difficulty'
B18107m27='No independent living difficulty'
/*AGE BY DISABILITY STATUS BY HEALTH INSURANCE COVERAGE STATUS */
/*Universe:  Civilian Noninstitutionalized Population */
 
B18135m1='Total:'
B18135m2='Under 18 years:'
B18135m3='With a disability:'
B18135m4='With health insurance coverage:'
B18135m5='With private health insurance coverage'
B18135m6='With public health coverage'
B18135m7='No health insurance coverage'
B18135m8='No disability:'
B18135m9='With health insurance coverage:'
B18135m10='With private health insurance coverage'
B18135m11='With public health coverage'
B18135m12='No health insurance coverage'
B18135m13='18 to 64 years:'
B18135m14='With a disability:'
B18135m15='With health insurance coverage:'
B18135m16='With private health insurance coverage'
B18135m17='With public health coverage'
B18135m18='No health insurance coverage'
B18135m19='No disability:'
B18135m20='With health insurance coverage:'
B18135m21='With private health insurance coverage'
B18135m22='With public health coverage'
B18135m23='No health insurance coverage'
B18135m24='65 years and over:'
B18135m25='With a disability:'
B18135m26='With health insurance coverage:'
B18135m27='With private health insurance coverage'
B18135m28='With public health coverage'
B18135m29='No health insurance coverage'
B18135m30='No disability:'
B18135m31='With health insurance coverage:'
B18135m32='With private health insurance coverage'
B18135m33='With public health coverage'
B18135m34='No health insurance coverage'
/*MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) BY DISABILITY STATUS BY SEX FOR THE CIVILIAN NONINSTITUTIONALIZED POPULATION 16 YEARS AND OVER WITH EARNINGS */
/*Universe:  Civilian Noninstitutionalized Population 16 Years and Over with Earnings in the Past 12 Months */
 
B18140m1='Total:'
B18140m2='With a disability:'
B18140m3='Male'
B18140m4='Female'
B18140m5='No disability:'
B18140m6='Male'
B18140m7='Female'
/*AGE BY NUMBER OF DISABILITIES */
/*Universe:  Civilian noninstitutionalized population */
 
C18108m1='Total:'
C18108m2='Under 18 years:'
C18108m3='With one type of disability'
C18108m4='With two or more types of disability'
C18108m5='No disability'
C18108m6='18 to 64 years:'
C18108m7='With one type of disability'
C18108m8='With two or more types of disability'
C18108m9='No disability'
C18108m10='65 years and over:'
C18108m11='With one type of disability'
C18108m12='With two or more types of disability'
C18108m13='No disability'
/*EMPLOYMENT STATUS BY DISABILITY STATUS */
/*Universe:  Civilian noninstitutionalized population 18 to 64 years */
 
C18120m1='Total:'
C18120m2='In the labor force:'
C18120m3='Employed:'
C18120m4='With a disability'
C18120m5='No disability'
C18120m6='Unemployed:'
C18120m7='With a disability'
C18120m8='No disability'
C18120m9='Not in labor force:'
C18120m10='With a disability'
C18120m11='No disability'
/*WORK EXPERIENCE BY DISABILITY STATUS */
/*Universe:  Civilian Noninstitutionalized Population 18 to 64 years */
 
C18121m1='Total:'
C18121m2='Worked full-time, year round:'
C18121m3='With a disability'
C18121m4='No disability'
C18121m5='Worked less than full-time, year round:'
C18121m6='With a disability'
C18121m7='No disability'
C18121m8='Did not work:'
C18121m9='With a disability'
C18121m10='No disability'
/*AGE BY DISABILITY STATUS BY POVERTY STATUS */
/*Universe:  Civilian noninstitutionalized population for whom poverty status is determined */
 
C18130m1='Total:'
C18130m2='Under 18 years:'
C18130m3='With a disability:'
C18130m4='Income in the past 12-months below poverty level'
C18130m5='Income in the past 12-months at or above poverty level'
C18130m6='No disability:'
C18130m7='Income in the past 12-months below poverty level'
C18130m8='Income in the past 12-months at or above poverty level'
C18130m9='18 to 64 years:'
C18130m10='With a disability:'
C18130m11='Income in the past 12-months below poverty level'
C18130m12='Income in the past 12-months at or above poverty level'
C18130m13='No disability:'
C18130m14='Income in the past 12-months below poverty level'
C18130m15='Income in the past 12-months at or above poverty level'
C18130m16='65 years and over:'
C18130m17='With a disability:'
C18130m18='Income in the past 12-months below poverty level'
C18130m19='Income in the past 12-months at or above poverty level'
C18130m20='No disability:'
C18130m21='Income in the past 12-months below poverty level'
C18130m22='Income in the past 12-months at or above poverty level'
/*RATIO OF INCOME TO POVERTY LEVEL IN THE PAST 12 MONTHS BY DISABILITY STATUS */
/*Universe:  Civilian Noninstitutionalized Population for Whom Poverty Status is Determined */
 
C18131m1='Total:'
C18131m2='Under .50:'
C18131m3='With a disability'
C18131m4='No disability'
C18131m5='.50 to .99:'
C18131m6='With a disability'
C18131m7='No disability'
C18131m8='1.00 to 1.49:'
C18131m9='With a disability'
C18131m10='No disability'
C18131m11='1.50 to 1.99:'
C18131m12='With a disability'
C18131m13='No disability'
C18131m14='2.00 and over:'
C18131m15='With a disability'
C18131m16='No disability'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B18105m1
B18105m2
B18105m3
B18105m4
B18105m5
B18105m6
B18105m7
B18105m8
B18105m9
B18105m10
B18105m11
B18105m12
B18105m13
B18105m14
B18105m15
B18105m16
B18105m17
B18105m18
B18105m19
B18105m20
B18105m21
B18105m22
B18105m23
B18105m24
B18105m25
B18105m26
B18105m27
B18105m28
B18105m29
B18105m30
B18105m31
B18105m32
B18105m33
 
B18106m1
B18106m2
B18106m3
B18106m4
B18106m5
B18106m6
B18106m7
B18106m8
B18106m9
B18106m10
B18106m11
B18106m12
B18106m13
B18106m14
B18106m15
B18106m16
B18106m17
B18106m18
B18106m19
B18106m20
B18106m21
B18106m22
B18106m23
B18106m24
B18106m25
B18106m26
B18106m27
B18106m28
B18106m29
B18106m30
B18106m31
B18106m32
B18106m33
 
B18107m1
B18107m2
B18107m3
B18107m4
B18107m5
B18107m6
B18107m7
B18107m8
B18107m9
B18107m10
B18107m11
B18107m12
B18107m13
B18107m14
B18107m15
B18107m16
B18107m17
B18107m18
B18107m19
B18107m20
B18107m21
B18107m22
B18107m23
B18107m24
B18107m25
B18107m26
B18107m27
 
B18135m1
B18135m2
B18135m3
B18135m4
B18135m5
B18135m6
B18135m7
B18135m8
B18135m9
B18135m10
B18135m11
B18135m12
B18135m13
B18135m14
B18135m15
B18135m16
B18135m17
B18135m18
B18135m19
B18135m20
B18135m21
B18135m22
B18135m23
B18135m24
B18135m25
B18135m26
B18135m27
B18135m28
B18135m29
B18135m30
B18135m31
B18135m32
B18135m33
B18135m34
 
B18140m1
B18140m2
B18140m3
B18140m4
B18140m5
B18140m6
B18140m7
 
C18108m1
C18108m2
C18108m3
C18108m4
C18108m5
C18108m6
C18108m7
C18108m8
C18108m9
C18108m10
C18108m11
C18108m12
C18108m13
 
C18120m1
C18120m2
C18120m3
C18120m4
C18120m5
C18120m6
C18120m7
C18120m8
C18120m9
C18120m10
C18120m11
 
C18121m1
C18121m2
C18121m3
C18121m4
C18121m5
C18121m6
C18121m7
C18121m8
C18121m9
C18121m10
 
C18130m1
C18130m2
C18130m3
C18130m4
C18130m5
C18130m6
C18130m7
C18130m8
C18130m9
C18130m10
C18130m11
C18130m12
C18130m13
C18130m14
C18130m15
C18130m16
C18130m17
C18130m18
C18130m19
C18130m20
C18130m21
C18130m22
 
C18131m1
C18131m2
C18131m3
C18131m4
C18131m5
C18131m6
C18131m7
C18131m8
C18131m9
C18131m10
C18131m11
C18131m12
C18131m13
C18131m14
C18131m15
C18131m16
;
RUN;
TITLE2;
