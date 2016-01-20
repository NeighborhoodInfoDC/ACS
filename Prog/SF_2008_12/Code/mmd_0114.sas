TITLE2 "m20125md0114000";
DATA work.SFm0114md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0114000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*PUBLIC HEALTH INSURANCE STATUS BY SEX BY AGE */
/*Universe:  Civilian noninstitutionalized population */
 
B27003m1='Total:'
B27003m2='Male:'
B27003m3='Under 6 years:'
B27003m4='With public coverage'
B27003m5='No public coverage'
B27003m6='6 to 17 years:'
B27003m7='With public coverage'
B27003m8='No public coverage'
B27003m9='18 to 24 years:'
B27003m10='With public coverage'
B27003m11='No public coverage'
B27003m12='25 to 34 years:'
B27003m13='With public coverage'
B27003m14='No public coverage'
B27003m15='35 to 44 years:'
B27003m16='With public coverage'
B27003m17='No public coverage'
B27003m18='45 to 54 years:'
B27003m19='With public coverage'
B27003m20='No public coverage'
B27003m21='55 to 64 years:'
B27003m22='With public coverage'
B27003m23='No public coverage'
B27003m24='65 to 74 years:'
B27003m25='With public coverage'
B27003m26='No public coverage'
B27003m27='75 years and over:'
B27003m28='With public coverage'
B27003m29='No public coverage'
B27003m30='Female:'
B27003m31='Under 6 years:'
B27003m32='With public coverage'
B27003m33='No public coverage'
B27003m34='6 to 17 years:'
B27003m35='With public coverage'
B27003m36='No public coverage'
B27003m37='18 to 24 years:'
B27003m38='With public coverage'
B27003m39='No public coverage'
B27003m40='25 to 34 years:'
B27003m41='With public coverage'
B27003m42='No public coverage'
B27003m43='35 to 44 years:'
B27003m44='With public coverage'
B27003m45='No public coverage'
B27003m46='45 to 54 years:'
B27003m47='With public coverage'
B27003m48='No public coverage'
B27003m49='55 to 64 years:'
B27003m50='With public coverage'
B27003m51='No public coverage'
B27003m52='65 to 74 years:'
B27003m53='With public coverage'
B27003m54='No public coverage'
B27003m55='75 years and over:'
B27003m56='With public coverage'
B27003m57='No public coverage'
/*HEALTH INSURANCE COVERAGE STATUS AND TYPE BY EMPLOYMENT STATUS BY AGE */
/*Universe:  Civilian noninstitutionalized population 18 years and over */
 
B27011m1='Total:'
B27011m2='In labor force:'
B27011m3='Employed:'
B27011m4='18 to 64 years:'
B27011m5='With health insurance coverage'
B27011m6='With private health insurance'
B27011m7='With public coverage'
B27011m8='No health insurance coverage'
B27011m9='65 years and over:'
B27011m10='With health insurance coverage'
B27011m11='With private health insurance'
B27011m12='With public coverage'
B27011m13='No health insurance coverage'
B27011m14='Unemployed:'
B27011m15='18 to 64 years:'
B27011m16='With health insurance coverage'
B27011m17='With private health insurance'
B27011m18='With public coverage'
B27011m19='No health insurance coverage'
B27011m20='65 years and over:'
B27011m21='With health insurance coverage'
B27011m22='With private health insurance'
B27011m23='With public coverage'
B27011m24='No health insurance coverage'
B27011m25='Not in labor force:'
B27011m26='18 to 64 years:'
B27011m27='With health insurance coverage'
B27011m28='With private health insurance'
B27011m29='With public coverage'
B27011m30='No health insurance coverage'
B27011m31='65 years and over:'
B27011m32='With health insurance coverage'
B27011m33='With private health insurance'
B27011m34='With public coverage'
B27011m35='No health insurance coverage'
/*EMPLOYER-BASED HEALTH INSURANCE  BY SEX BY AGE */
/*Universe:  Civilian noninstitutionalized population */
 
C27004m1='Total:'
C27004m2='Male:'
C27004m3='Under 18 years:'
C27004m4='With employer-based health insurance'
C27004m5='No employer-based health insurance'
C27004m6='18 to 64 years:'
C27004m7='With employer-based health insurance'
C27004m8='No employer-based health insurance'
C27004m9='65 years and over:'
C27004m10='With employer-based health insurance'
C27004m11='No employer-based health insurance'
C27004m12='Female:'
C27004m13='Under 18 years:'
C27004m14='With employer-based health insurance'
C27004m15='No employer-based health insurance'
C27004m16='18 to 64 years:'
C27004m17='With employer-based health insurance'
C27004m18='No employer-based health insurance'
C27004m19='65 years and over:'
C27004m20='With employer-based health insurance'
C27004m21='No employer-based health insurance'
/*DIRECT-PURCHASE HEALTH INSURANCE BY SEX BY AGE */
/*Universe:  Civilian noninstitutionalized population */
 
C27005m1='Total:'
C27005m2='Male:'
C27005m3='Under 18 years:'
C27005m4='With direct-purchase health insurance'
C27005m5='No direct-purchase health insurance'
C27005m6='18 to 64 years:'
C27005m7='With direct-purchase health insurance'
C27005m8='No direct-purchase health insurance'
C27005m9='65 years and over:'
C27005m10='With direct-purchase health insurance'
C27005m11='No direct-purchase health insurance'
C27005m12='Female:'
C27005m13='Under 18 years:'
C27005m14='With direct-purchase health insurance'
C27005m15='No direct-purchase health insurance'
C27005m16='18 to 64 years:'
C27005m17='With direct-purchase health insurance'
C27005m18='No direct-purchase health insurance'
C27005m19='65 years and over:'
C27005m20='With direct-purchase health insurance'
C27005m21='No direct-purchase health insurance'
/*MEDICARE COVERAGE BY SEX BY AGE */
/*Universe:  Civilian noninstitutionalized population */
 
C27006m1='Total:'
C27006m2='Male:'
C27006m3='Under 18 years:'
C27006m4='With Medicare coverage'
C27006m5='No Medicare coverage'
C27006m6='18 to 64 years:'
C27006m7='With Medicare coverage'
C27006m8='No Medicare coverage'
C27006m9='65 years and over:'
C27006m10='With Medicare coverage'
C27006m11='No Medicare coverage'
C27006m12='Female:'
C27006m13='Under 18 years:'
C27006m14='With Medicare coverage'
C27006m15='No Medicare coverage'
C27006m16='18 to 64 years:'
C27006m17='With Medicare coverage'
C27006m18='No Medicare coverage'
C27006m19='65 years and over:'
C27006m20='With Medicare coverage'
C27006m21='No Medicare coverage'
/*MEDICAID/MEANS-TESTED PUBLIC COVERAGE BY SEX BY AGE */
/*Universe:  Civilian noninstitutionalized population */
 
C27007m1='Total:'
C27007m2='Male:'
C27007m3='Under 18 years:'
C27007m4='With Medicaid/means-tested public coverage'
C27007m5='No Medicaid/means-tested public coverage'
C27007m6='18 to 64 years:'
C27007m7='With Medicaid/means-tested public coverage'
C27007m8='No Medicaid/means-tested public coverage'
C27007m9='65 years and over:'
C27007m10='With Medicaid/means-tested public coverage'
C27007m11='No Medicaid/means-tested public coverage'
C27007m12='Female:'
C27007m13='Under 18 years:'
C27007m14='With Medicaid/means-tested public coverage'
C27007m15='No Medicaid/means-tested public coverage'
C27007m16='18 to 64 years:'
C27007m17='With Medicaid/means-tested public coverage'
C27007m18='No Medicaid/means-tested public coverage'
C27007m19='65 years and over:'
C27007m20='With Medicaid/means-tested public coverage'
C27007m21='No Medicaid/means-tested public coverage'
/*TRICARE/MILITARY HEALTH COVERAGE BY SEX BY AGE */
/*Universe:  Civilian noninstitutionalized population */
 
C27008m1='Total:'
C27008m2='Male:'
C27008m3='Under 18 years:'
C27008m4='With TRICARE/military health coverage'
C27008m5='No TRICARE/military health coverage'
C27008m6='18 to 64 years:'
C27008m7='With TRICARE/military health coverage'
C27008m8='No TRICARE/military health coverage'
C27008m9='65 years and over:'
C27008m10='With TRICARE/military health coverage'
C27008m11='No TRICARE/military health coverage'
C27008m12='Female:'
C27008m13='Under 18 years:'
C27008m14='With TRICARE/military health coverage'
C27008m15='No TRICARE/military health coverage'
C27008m16='18 to 64 years:'
C27008m17='With TRICARE/military health coverage'
C27008m18='No TRICARE/military health coverage'
C27008m19='65 years and over:'
C27008m20='With TRICARE/military health coverage'
C27008m21='No TRICARE/military health coverage'
/*VA HEALTH CARE BY SEX BY AGE */
/*Universe:  Civilian noninstitutionalized population */
 
C27009m1='Total:'
C27009m2='Male:'
C27009m3='Under 18 years:'
C27009m4='With VA Health Care'
C27009m5='No VA Health Care'
C27009m6='18 to 64 years:'
C27009m7='With VA Health Care'
C27009m8='No VA Health Care'
C27009m9='65 years and over:'
C27009m10='With VA Health Care'
C27009m11='No VA Health Care'
C27009m12='Female:'
C27009m13='Under 18 years:'
C27009m14='With VA Health Care'
C27009m15='No VA Health Care'
C27009m16='18 to 64 years:'
C27009m17='With VA Health Care'
C27009m18='No VA Health Care'
C27009m19='65 years and over:'
C27009m20='With VA Health Care'
C27009m21='No VA Health Care'
/*TYPES OF HEALTH INSURANCE COVERAGE BY AGE */
/*Universe:  Civilian noninstitutionalized population */
 
C27010m1='Total:'
C27010m2='Under 18 years:'
C27010m3='With private health insurance  only'
C27010m4='With public coverage only'
C27010m5='With both private and public coverage'
C27010m6='No health insurance coverage'
C27010m7='18 to 34 years:'
C27010m8='With private health insurance  only'
C27010m9='With public coverage only'
C27010m10='With both private and public coverage'
C27010m11='No health insurance coverage'
C27010m12='35 to 64 years:'
C27010m13='With private health insurance  only'
C27010m14='With public coverage only'
C27010m15='With both private and public coverage'
C27010m16='No health insurance coverage'
C27010m17='65 years and over:'
C27010m18='With private health insurance  only'
C27010m19='With public coverage only'
C27010m20='With both private and public coverage'
C27010m21='No health insurance coverage'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B27003m1
B27003m2
B27003m3
B27003m4
B27003m5
B27003m6
B27003m7
B27003m8
B27003m9
B27003m10
B27003m11
B27003m12
B27003m13
B27003m14
B27003m15
B27003m16
B27003m17
B27003m18
B27003m19
B27003m20
B27003m21
B27003m22
B27003m23
B27003m24
B27003m25
B27003m26
B27003m27
B27003m28
B27003m29
B27003m30
B27003m31
B27003m32
B27003m33
B27003m34
B27003m35
B27003m36
B27003m37
B27003m38
B27003m39
B27003m40
B27003m41
B27003m42
B27003m43
B27003m44
B27003m45
B27003m46
B27003m47
B27003m48
B27003m49
B27003m50
B27003m51
B27003m52
B27003m53
B27003m54
B27003m55
B27003m56
B27003m57
 
B27011m1
B27011m2
B27011m3
B27011m4
B27011m5
B27011m6
B27011m7
B27011m8
B27011m9
B27011m10
B27011m11
B27011m12
B27011m13
B27011m14
B27011m15
B27011m16
B27011m17
B27011m18
B27011m19
B27011m20
B27011m21
B27011m22
B27011m23
B27011m24
B27011m25
B27011m26
B27011m27
B27011m28
B27011m29
B27011m30
B27011m31
B27011m32
B27011m33
B27011m34
B27011m35
 
C27004m1
C27004m2
C27004m3
C27004m4
C27004m5
C27004m6
C27004m7
C27004m8
C27004m9
C27004m10
C27004m11
C27004m12
C27004m13
C27004m14
C27004m15
C27004m16
C27004m17
C27004m18
C27004m19
C27004m20
C27004m21
 
C27005m1
C27005m2
C27005m3
C27005m4
C27005m5
C27005m6
C27005m7
C27005m8
C27005m9
C27005m10
C27005m11
C27005m12
C27005m13
C27005m14
C27005m15
C27005m16
C27005m17
C27005m18
C27005m19
C27005m20
C27005m21
 
C27006m1
C27006m2
C27006m3
C27006m4
C27006m5
C27006m6
C27006m7
C27006m8
C27006m9
C27006m10
C27006m11
C27006m12
C27006m13
C27006m14
C27006m15
C27006m16
C27006m17
C27006m18
C27006m19
C27006m20
C27006m21
 
C27007m1
C27007m2
C27007m3
C27007m4
C27007m5
C27007m6
C27007m7
C27007m8
C27007m9
C27007m10
C27007m11
C27007m12
C27007m13
C27007m14
C27007m15
C27007m16
C27007m17
C27007m18
C27007m19
C27007m20
C27007m21
 
C27008m1
C27008m2
C27008m3
C27008m4
C27008m5
C27008m6
C27008m7
C27008m8
C27008m9
C27008m10
C27008m11
C27008m12
C27008m13
C27008m14
C27008m15
C27008m16
C27008m17
C27008m18
C27008m19
C27008m20
C27008m21
 
C27009m1
C27009m2
C27009m3
C27009m4
C27009m5
C27009m6
C27009m7
C27009m8
C27009m9
C27009m10
C27009m11
C27009m12
C27009m13
C27009m14
C27009m15
C27009m16
C27009m17
C27009m18
C27009m19
C27009m20
C27009m21
 
C27010m1
C27010m2
C27010m3
C27010m4
C27010m5
C27010m6
C27010m7
C27010m8
C27010m9
C27010m10
C27010m11
C27010m12
C27010m13
C27010m14
C27010m15
C27010m16
C27010m17
C27010m18
C27010m19
C27010m20
C27010m21
;
RUN;
TITLE2;
