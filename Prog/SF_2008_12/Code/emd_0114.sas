TITLE2 "e20125md0114000";
DATA work.SFe0114md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0114000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*PUBLIC HEALTH INSURANCE STATUS BY SEX BY AGE */
/*Universe:  Civilian noninstitutionalized population */
 
B27003e1='Total:'
B27003e2='Male:'
B27003e3='Under 6 years:'
B27003e4='With public coverage'
B27003e5='No public coverage'
B27003e6='6 to 17 years:'
B27003e7='With public coverage'
B27003e8='No public coverage'
B27003e9='18 to 24 years:'
B27003e10='With public coverage'
B27003e11='No public coverage'
B27003e12='25 to 34 years:'
B27003e13='With public coverage'
B27003e14='No public coverage'
B27003e15='35 to 44 years:'
B27003e16='With public coverage'
B27003e17='No public coverage'
B27003e18='45 to 54 years:'
B27003e19='With public coverage'
B27003e20='No public coverage'
B27003e21='55 to 64 years:'
B27003e22='With public coverage'
B27003e23='No public coverage'
B27003e24='65 to 74 years:'
B27003e25='With public coverage'
B27003e26='No public coverage'
B27003e27='75 years and over:'
B27003e28='With public coverage'
B27003e29='No public coverage'
B27003e30='Female:'
B27003e31='Under 6 years:'
B27003e32='With public coverage'
B27003e33='No public coverage'
B27003e34='6 to 17 years:'
B27003e35='With public coverage'
B27003e36='No public coverage'
B27003e37='18 to 24 years:'
B27003e38='With public coverage'
B27003e39='No public coverage'
B27003e40='25 to 34 years:'
B27003e41='With public coverage'
B27003e42='No public coverage'
B27003e43='35 to 44 years:'
B27003e44='With public coverage'
B27003e45='No public coverage'
B27003e46='45 to 54 years:'
B27003e47='With public coverage'
B27003e48='No public coverage'
B27003e49='55 to 64 years:'
B27003e50='With public coverage'
B27003e51='No public coverage'
B27003e52='65 to 74 years:'
B27003e53='With public coverage'
B27003e54='No public coverage'
B27003e55='75 years and over:'
B27003e56='With public coverage'
B27003e57='No public coverage'
/*HEALTH INSURANCE COVERAGE STATUS AND TYPE BY EMPLOYMENT STATUS BY AGE */
/*Universe:  Civilian noninstitutionalized population 18 years and over */
 
B27011e1='Total:'
B27011e2='In labor force:'
B27011e3='Employed:'
B27011e4='18 to 64 years:'
B27011e5='With health insurance coverage'
B27011e6='With private health insurance'
B27011e7='With public coverage'
B27011e8='No health insurance coverage'
B27011e9='65 years and over:'
B27011e10='With health insurance coverage'
B27011e11='With private health insurance'
B27011e12='With public coverage'
B27011e13='No health insurance coverage'
B27011e14='Unemployed:'
B27011e15='18 to 64 years:'
B27011e16='With health insurance coverage'
B27011e17='With private health insurance'
B27011e18='With public coverage'
B27011e19='No health insurance coverage'
B27011e20='65 years and over:'
B27011e21='With health insurance coverage'
B27011e22='With private health insurance'
B27011e23='With public coverage'
B27011e24='No health insurance coverage'
B27011e25='Not in labor force:'
B27011e26='18 to 64 years:'
B27011e27='With health insurance coverage'
B27011e28='With private health insurance'
B27011e29='With public coverage'
B27011e30='No health insurance coverage'
B27011e31='65 years and over:'
B27011e32='With health insurance coverage'
B27011e33='With private health insurance'
B27011e34='With public coverage'
B27011e35='No health insurance coverage'
/*EMPLOYER-BASED HEALTH INSURANCE  BY SEX BY AGE */
/*Universe:  Civilian noninstitutionalized population */
 
C27004e1='Total:'
C27004e2='Male:'
C27004e3='Under 18 years:'
C27004e4='With employer-based health insurance'
C27004e5='No employer-based health insurance'
C27004e6='18 to 64 years:'
C27004e7='With employer-based health insurance'
C27004e8='No employer-based health insurance'
C27004e9='65 years and over:'
C27004e10='With employer-based health insurance'
C27004e11='No employer-based health insurance'
C27004e12='Female:'
C27004e13='Under 18 years:'
C27004e14='With employer-based health insurance'
C27004e15='No employer-based health insurance'
C27004e16='18 to 64 years:'
C27004e17='With employer-based health insurance'
C27004e18='No employer-based health insurance'
C27004e19='65 years and over:'
C27004e20='With employer-based health insurance'
C27004e21='No employer-based health insurance'
/*DIRECT-PURCHASE HEALTH INSURANCE BY SEX BY AGE */
/*Universe:  Civilian noninstitutionalized population */
 
C27005e1='Total:'
C27005e2='Male:'
C27005e3='Under 18 years:'
C27005e4='With direct-purchase health insurance'
C27005e5='No direct-purchase health insurance'
C27005e6='18 to 64 years:'
C27005e7='With direct-purchase health insurance'
C27005e8='No direct-purchase health insurance'
C27005e9='65 years and over:'
C27005e10='With direct-purchase health insurance'
C27005e11='No direct-purchase health insurance'
C27005e12='Female:'
C27005e13='Under 18 years:'
C27005e14='With direct-purchase health insurance'
C27005e15='No direct-purchase health insurance'
C27005e16='18 to 64 years:'
C27005e17='With direct-purchase health insurance'
C27005e18='No direct-purchase health insurance'
C27005e19='65 years and over:'
C27005e20='With direct-purchase health insurance'
C27005e21='No direct-purchase health insurance'
/*MEDICARE COVERAGE BY SEX BY AGE */
/*Universe:  Civilian noninstitutionalized population */
 
C27006e1='Total:'
C27006e2='Male:'
C27006e3='Under 18 years:'
C27006e4='With Medicare coverage'
C27006e5='No Medicare coverage'
C27006e6='18 to 64 years:'
C27006e7='With Medicare coverage'
C27006e8='No Medicare coverage'
C27006e9='65 years and over:'
C27006e10='With Medicare coverage'
C27006e11='No Medicare coverage'
C27006e12='Female:'
C27006e13='Under 18 years:'
C27006e14='With Medicare coverage'
C27006e15='No Medicare coverage'
C27006e16='18 to 64 years:'
C27006e17='With Medicare coverage'
C27006e18='No Medicare coverage'
C27006e19='65 years and over:'
C27006e20='With Medicare coverage'
C27006e21='No Medicare coverage'
/*MEDICAID/MEANS-TESTED PUBLIC COVERAGE BY SEX BY AGE */
/*Universe:  Civilian noninstitutionalized population */
 
C27007e1='Total:'
C27007e2='Male:'
C27007e3='Under 18 years:'
C27007e4='With Medicaid/means-tested public coverage'
C27007e5='No Medicaid/means-tested public coverage'
C27007e6='18 to 64 years:'
C27007e7='With Medicaid/means-tested public coverage'
C27007e8='No Medicaid/means-tested public coverage'
C27007e9='65 years and over:'
C27007e10='With Medicaid/means-tested public coverage'
C27007e11='No Medicaid/means-tested public coverage'
C27007e12='Female:'
C27007e13='Under 18 years:'
C27007e14='With Medicaid/means-tested public coverage'
C27007e15='No Medicaid/means-tested public coverage'
C27007e16='18 to 64 years:'
C27007e17='With Medicaid/means-tested public coverage'
C27007e18='No Medicaid/means-tested public coverage'
C27007e19='65 years and over:'
C27007e20='With Medicaid/means-tested public coverage'
C27007e21='No Medicaid/means-tested public coverage'
/*TRICARE/MILITARY HEALTH COVERAGE BY SEX BY AGE */
/*Universe:  Civilian noninstitutionalized population */
 
C27008e1='Total:'
C27008e2='Male:'
C27008e3='Under 18 years:'
C27008e4='With TRICARE/military health coverage'
C27008e5='No TRICARE/military health coverage'
C27008e6='18 to 64 years:'
C27008e7='With TRICARE/military health coverage'
C27008e8='No TRICARE/military health coverage'
C27008e9='65 years and over:'
C27008e10='With TRICARE/military health coverage'
C27008e11='No TRICARE/military health coverage'
C27008e12='Female:'
C27008e13='Under 18 years:'
C27008e14='With TRICARE/military health coverage'
C27008e15='No TRICARE/military health coverage'
C27008e16='18 to 64 years:'
C27008e17='With TRICARE/military health coverage'
C27008e18='No TRICARE/military health coverage'
C27008e19='65 years and over:'
C27008e20='With TRICARE/military health coverage'
C27008e21='No TRICARE/military health coverage'
/*VA HEALTH CARE BY SEX BY AGE */
/*Universe:  Civilian noninstitutionalized population */
 
C27009e1='Total:'
C27009e2='Male:'
C27009e3='Under 18 years:'
C27009e4='With VA Health Care'
C27009e5='No VA Health Care'
C27009e6='18 to 64 years:'
C27009e7='With VA Health Care'
C27009e8='No VA Health Care'
C27009e9='65 years and over:'
C27009e10='With VA Health Care'
C27009e11='No VA Health Care'
C27009e12='Female:'
C27009e13='Under 18 years:'
C27009e14='With VA Health Care'
C27009e15='No VA Health Care'
C27009e16='18 to 64 years:'
C27009e17='With VA Health Care'
C27009e18='No VA Health Care'
C27009e19='65 years and over:'
C27009e20='With VA Health Care'
C27009e21='No VA Health Care'
/*TYPES OF HEALTH INSURANCE COVERAGE BY AGE */
/*Universe:  Civilian noninstitutionalized population */
 
C27010e1='Total:'
C27010e2='Under 18 years:'
C27010e3='With private health insurance  only'
C27010e4='With public coverage only'
C27010e5='With both private and public coverage'
C27010e6='No health insurance coverage'
C27010e7='18 to 34 years:'
C27010e8='With private health insurance  only'
C27010e9='With public coverage only'
C27010e10='With both private and public coverage'
C27010e11='No health insurance coverage'
C27010e12='35 to 64 years:'
C27010e13='With private health insurance  only'
C27010e14='With public coverage only'
C27010e15='With both private and public coverage'
C27010e16='No health insurance coverage'
C27010e17='65 years and over:'
C27010e18='With private health insurance  only'
C27010e19='With public coverage only'
C27010e20='With both private and public coverage'
C27010e21='No health insurance coverage'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B27003e1
B27003e2
B27003e3
B27003e4
B27003e5
B27003e6
B27003e7
B27003e8
B27003e9
B27003e10
B27003e11
B27003e12
B27003e13
B27003e14
B27003e15
B27003e16
B27003e17
B27003e18
B27003e19
B27003e20
B27003e21
B27003e22
B27003e23
B27003e24
B27003e25
B27003e26
B27003e27
B27003e28
B27003e29
B27003e30
B27003e31
B27003e32
B27003e33
B27003e34
B27003e35
B27003e36
B27003e37
B27003e38
B27003e39
B27003e40
B27003e41
B27003e42
B27003e43
B27003e44
B27003e45
B27003e46
B27003e47
B27003e48
B27003e49
B27003e50
B27003e51
B27003e52
B27003e53
B27003e54
B27003e55
B27003e56
B27003e57
 
B27011e1
B27011e2
B27011e3
B27011e4
B27011e5
B27011e6
B27011e7
B27011e8
B27011e9
B27011e10
B27011e11
B27011e12
B27011e13
B27011e14
B27011e15
B27011e16
B27011e17
B27011e18
B27011e19
B27011e20
B27011e21
B27011e22
B27011e23
B27011e24
B27011e25
B27011e26
B27011e27
B27011e28
B27011e29
B27011e30
B27011e31
B27011e32
B27011e33
B27011e34
B27011e35
 
C27004e1
C27004e2
C27004e3
C27004e4
C27004e5
C27004e6
C27004e7
C27004e8
C27004e9
C27004e10
C27004e11
C27004e12
C27004e13
C27004e14
C27004e15
C27004e16
C27004e17
C27004e18
C27004e19
C27004e20
C27004e21
 
C27005e1
C27005e2
C27005e3
C27005e4
C27005e5
C27005e6
C27005e7
C27005e8
C27005e9
C27005e10
C27005e11
C27005e12
C27005e13
C27005e14
C27005e15
C27005e16
C27005e17
C27005e18
C27005e19
C27005e20
C27005e21
 
C27006e1
C27006e2
C27006e3
C27006e4
C27006e5
C27006e6
C27006e7
C27006e8
C27006e9
C27006e10
C27006e11
C27006e12
C27006e13
C27006e14
C27006e15
C27006e16
C27006e17
C27006e18
C27006e19
C27006e20
C27006e21
 
C27007e1
C27007e2
C27007e3
C27007e4
C27007e5
C27007e6
C27007e7
C27007e8
C27007e9
C27007e10
C27007e11
C27007e12
C27007e13
C27007e14
C27007e15
C27007e16
C27007e17
C27007e18
C27007e19
C27007e20
C27007e21
 
C27008e1
C27008e2
C27008e3
C27008e4
C27008e5
C27008e6
C27008e7
C27008e8
C27008e9
C27008e10
C27008e11
C27008e12
C27008e13
C27008e14
C27008e15
C27008e16
C27008e17
C27008e18
C27008e19
C27008e20
C27008e21
 
C27009e1
C27009e2
C27009e3
C27009e4
C27009e5
C27009e6
C27009e7
C27009e8
C27009e9
C27009e10
C27009e11
C27009e12
C27009e13
C27009e14
C27009e15
C27009e16
C27009e17
C27009e18
C27009e19
C27009e20
C27009e21
 
C27010e1
C27010e2
C27010e3
C27010e4
C27010e5
C27010e6
C27010e7
C27010e8
C27010e9
C27010e10
C27010e11
C27010e12
C27010e13
C27010e14
C27010e15
C27010e16
C27010e17
C27010e18
C27010e19
C27010e20
C27010e21
;
RUN;
TITLE2;
