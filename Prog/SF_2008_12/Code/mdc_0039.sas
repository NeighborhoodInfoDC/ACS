TITLE2 "m20125dc0039000";
DATA work.SFm0039dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0039000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SEX BY MARITAL STATUS FOR THE POPULATION 15 YEARS AND OVER (ASIAN ALONE) */
/*Universe:  Asian alone population 15 years and over */
 
B12002Dm1='Total:'
B12002Dm2='Male:'
B12002Dm3='Never married'
B12002Dm4='Now married (except separated)'
B12002Dm5='Separated'
B12002Dm6='Widowed'
B12002Dm7='Divorced'
B12002Dm8='Female:'
B12002Dm9='Never married'
B12002Dm10='Now married (except separated)'
B12002Dm11='Separated'
B12002Dm12='Widowed'
B12002Dm13='Divorced'
/*SEX BY MARITAL STATUS FOR THE POPULATION 15 YEARS AND OVER (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 15 years and over */
 
B12002Em1='Total:'
B12002Em2='Male:'
B12002Em3='Never married'
B12002Em4='Now married (except separated)'
B12002Em5='Separated'
B12002Em6='Widowed'
B12002Em7='Divorced'
B12002Em8='Female:'
B12002Em9='Never married'
B12002Em10='Now married (except separated)'
B12002Em11='Separated'
B12002Em12='Widowed'
B12002Em13='Divorced'
/*SEX BY MARITAL STATUS FOR THE POPULATION 15 YEARS AND OVER (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone population 15 years and over */
 
B12002Fm1='Total:'
B12002Fm2='Male:'
B12002Fm3='Never married'
B12002Fm4='Now married (except separated)'
B12002Fm5='Separated'
B12002Fm6='Widowed'
B12002Fm7='Divorced'
B12002Fm8='Female:'
B12002Fm9='Never married'
B12002Fm10='Now married (except separated)'
B12002Fm11='Separated'
B12002Fm12='Widowed'
B12002Fm13='Divorced'
/*SEX BY MARITAL STATUS FOR THE POPULATION 15 YEARS AND OVER (TWO OR MORE RACES) */
/*Universe:  Two or more races population 15 years and over */
 
B12002Gm1='Total:'
B12002Gm2='Male:'
B12002Gm3='Never married'
B12002Gm4='Now married (except separated)'
B12002Gm5='Separated'
B12002Gm6='Widowed'
B12002Gm7='Divorced'
B12002Gm8='Female:'
B12002Gm9='Never married'
B12002Gm10='Now married (except separated)'
B12002Gm11='Separated'
B12002Gm12='Widowed'
B12002Gm13='Divorced'
/*SEX BY MARITAL STATUS FOR THE POPULATION 15 YEARS AND OVER (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population 15 years and over */
 
B12002Hm1='Total:'
B12002Hm2='Male:'
B12002Hm3='Never married'
B12002Hm4='Now married (except separated)'
B12002Hm5='Separated'
B12002Hm6='Widowed'
B12002Hm7='Divorced'
B12002Hm8='Female:'
B12002Hm9='Never married'
B12002Hm10='Now married (except separated)'
B12002Hm11='Separated'
B12002Hm12='Widowed'
B12002Hm13='Divorced'
/*SEX BY MARITAL STATUS FOR THE POPULATION 15 YEARS AND OVER (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population 15 years and over */
 
B12002Im1='Total:'
B12002Im2='Male:'
B12002Im3='Never married'
B12002Im4='Now married (except separated)'
B12002Im5='Separated'
B12002Im6='Widowed'
B12002Im7='Divorced'
B12002Im8='Female:'
B12002Im9='Never married'
B12002Im10='Now married (except separated)'
B12002Im11='Separated'
B12002Im12='Widowed'
B12002Im13='Divorced'
/*MARITAL STATUS BY NATIVITY */
/*Universe:  Population 15 years and over */
 
B12005m1='Total:'
B12005m2='Never married:'
B12005m3='Native'
B12005m4='Foreign born'
B12005m5='Now married (except separated):'
B12005m6='Native'
B12005m7='Foreign born'
B12005m8='Separated:'
B12005m9='Native'
B12005m10='Foreign born'
B12005m11='Widowed:'
B12005m12='Native'
B12005m13='Foreign born'
B12005m14='Divorced:'
B12005m15='Native'
B12005m16='Foreign born'
/*MARITAL STATUS BY SEX BY LABOR FORCE PARTICIPATION */
/*Universe:  Population 16 years and over */
 
B12006m1='Total:'
B12006m2='Never married:'
B12006m3='Male:'
B12006m4='In labor force:'
B12006m5='Employed or in Armed Forces'
B12006m6='Unemployed'
B12006m7='Not in labor force'
B12006m8='Female:'
B12006m9='In labor force:'
B12006m10='Employed or in Armed Forces'
B12006m11='Unemployed'
B12006m12='Not in labor force'
B12006m13='Now married (except separated):'
B12006m14='Male:'
B12006m15='In labor force:'
B12006m16='Employed or in Armed Forces'
B12006m17='Unemployed'
B12006m18='Not in labor force'
B12006m19='Female:'
B12006m20='In labor force:'
B12006m21='Employed or in Armed Forces'
B12006m22='Unemployed'
B12006m23='Not in labor force'
B12006m24='Separated:'
B12006m25='Male:'
B12006m26='In labor force:'
B12006m27='Employed or in Armed Forces'
B12006m28='Unemployed'
B12006m29='Not in labor force'
B12006m30='Female:'
B12006m31='In labor force:'
B12006m32='Employed or in Armed Forces'
B12006m33='Unemployed'
B12006m34='Not in labor force'
B12006m35='Widowed:'
B12006m36='Male:'
B12006m37='In labor force:'
B12006m38='Employed or in Armed Forces'
B12006m39='Unemployed'
B12006m40='Not in labor force'
B12006m41='Female:'
B12006m42='In labor force:'
B12006m43='Employed or in Armed Forces'
B12006m44='Unemployed'
B12006m45='Not in labor force'
B12006m46='Divorced:'
B12006m47='Male:'
B12006m48='In labor force:'
B12006m49='Employed or in Armed Forces'
B12006m50='Unemployed'
B12006m51='Not in labor force'
B12006m52='Female:'
B12006m53='In labor force:'
B12006m54='Employed or in Armed Forces'
B12006m55='Unemployed'
B12006m56='Not in labor force'
/*MEDIAN AGE AT FIRST MARRIAGE */
/*Universe:  Population 15 to 54 years */
/*Median age at first marriage -- */
 
B12007m1='Male'
B12007m2='Female'
/*MEDIAN AGE AT FIRST MARRIAGE (WHITE ALONE) */
/*Universe:  White alone population 15 to 54 years */
/*Median age at first marriage -- */
 
B12007Am1='Male'
B12007Am2='Female'
/*MEDIAN AGE AT FIRST MARRIAGE (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone population 15 to 54 years */
/*Median age at first marriage -- */
 
B12007Bm1='Male'
B12007Bm2='Female'
/*MEDIAN AGE AT FIRST MARRIAGE (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone population 15 to 54 years */
/*Median age at first marriage -- */
 
B12007Cm1='Male'
B12007Cm2='Female'
/*MEDIAN AGE AT FIRST MARRIAGE (ASIAN ALONE) */
/*Universe:  Asian alone population 15 to 54 years */
/*Median age at first marriage -- */
 
B12007Dm1='Male'
B12007Dm2='Female'
/*MEDIAN AGE AT FIRST MARRIAGE (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and Other Pacific Islander alone population 15 to 54 years */
/*Median age at first marriage -- */
 
B12007Em1='Male'
B12007Em2='Female'
/*MEDIAN AGE AT FIRST MARRIAGE (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone population 15 to 54 years */
/*Median age at first marriage -- */
 
B12007Fm1='Male'
B12007Fm2='Female'
/*MEDIAN AGE AT FIRST MARRIAGE (TWO OR MORE RACES) */
/*Universe:  Two or more races population 15 to 54 years */
/*Median age at first marriage -- */
 
B12007Gm1='Male'
B12007Gm2='Female'
/*MEDIAN AGE AT FIRST MARRIAGE (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino population 15 to 54 years */
/*Median age at first marriage -- */
 
B12007Hm1='Male'
B12007Hm2='Female'
/*MEDIAN AGE AT FIRST MARRIAGE (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population 15 to 54 years */
/*Median age at first marriage -- */
 
B12007Im1='Male'
B12007Im2='Female'
/*MARRIAGES IN THE LAST YEAR BY SEX BY MARITAL STATUS FOR THE POPULATION 15 YEARS AND OVER */
/*Universe: Population 15 Years and over */
 
B12501m1='Total:'
B12501m2='Male:'
B12501m3='Never married'
B12501m4='Ever married:'
B12501m5='Married last year'
B12501m6='Not married last year'
B12501m7='Female:'
B12501m8='Never married'
B12501m9='Ever married:'
B12501m10='Married last year'
B12501m11='Not married last year'
/*MARRIAGES ENDING IN WIDOWHOOD IN THE LAST YEAR BY SEX BY MARITAL STATUS FOR THE POPULATION 15 YEARS AND OVER */
/*Universe: Population 15 Years and over */
 
B12502m1='Total:'
B12502m2='Male:'
B12502m3='Never married'
B12502m4='Ever married:'
B12502m5='Widowed last year'
B12502m6='Not widowed last year'
B12502m7='Female:'
B12502m8='Never married'
B12502m9='Ever married:'
B12502m10='Widowed last year'
B12502m11='Not widowed last year'
/*DIVORCES IN THE LAST YEAR BY SEX BY MARITAL STATUS FOR THE POPULATION 15 YEARS AND OVER */
/*Universe: Population 15 Years and over */
 
B12503m1='Total:'
B12503m2='Male:'
B12503m3='Never married'
B12503m4='Ever married:'
B12503m5='Divorced last year'
B12503m6='Not divorced last year'
B12503m7='Female:'
B12503m8='Never married'
B12503m9='Ever married:'
B12503m10='Divorced last year'
B12503m11='Not divorced last year'
/*MEDIAN DURATION OF CURRENT MARRIAGE IN YEARS BY SEX BY MARITAL STATUS FOR THE MARRIED POPULATION 15 YEARS AND OVER */
/*Universe: Population 15 Years and Over Who Are Now Married or Separated */
 
B12504m1='Total:'
B12504m2='Male:'
B12504m3='Married, spouse present'
B12504m4='Married, spouse absent'
B12504m5='Separated'
B12504m6='Female:'
B12504m7='Married, spouse present'
B12504m8='Married, spouse absent'
B12504m9='Separated'
/*NUMBER OF TIMES MARRIED BY SEX BY MARITAL STATUS FOR THE POPULATION 15 YEARS AND OVER */
/*Universe: Population 15 Years and Over */
 
B12505m1='Total:'
B12505m2='Male:'
B12505m3='Never married'
B12505m4='Ever married:'
B12505m5='Once'
B12505m6='Two times'
B12505m7='Three or more times'
B12505m8='Female:'
B12505m9='Never married'
B12505m10='Ever married:'
B12505m11='Once'
B12505m12='Two times'
B12505m13='Three or more times'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B12002Dm1
B12002Dm2
B12002Dm3
B12002Dm4
B12002Dm5
B12002Dm6
B12002Dm7
B12002Dm8
B12002Dm9
B12002Dm10
B12002Dm11
B12002Dm12
B12002Dm13
 
B12002Em1
B12002Em2
B12002Em3
B12002Em4
B12002Em5
B12002Em6
B12002Em7
B12002Em8
B12002Em9
B12002Em10
B12002Em11
B12002Em12
B12002Em13
 
B12002Fm1
B12002Fm2
B12002Fm3
B12002Fm4
B12002Fm5
B12002Fm6
B12002Fm7
B12002Fm8
B12002Fm9
B12002Fm10
B12002Fm11
B12002Fm12
B12002Fm13
 
B12002Gm1
B12002Gm2
B12002Gm3
B12002Gm4
B12002Gm5
B12002Gm6
B12002Gm7
B12002Gm8
B12002Gm9
B12002Gm10
B12002Gm11
B12002Gm12
B12002Gm13
 
B12002Hm1
B12002Hm2
B12002Hm3
B12002Hm4
B12002Hm5
B12002Hm6
B12002Hm7
B12002Hm8
B12002Hm9
B12002Hm10
B12002Hm11
B12002Hm12
B12002Hm13
 
B12002Im1
B12002Im2
B12002Im3
B12002Im4
B12002Im5
B12002Im6
B12002Im7
B12002Im8
B12002Im9
B12002Im10
B12002Im11
B12002Im12
B12002Im13
 
B12005m1
B12005m2
B12005m3
B12005m4
B12005m5
B12005m6
B12005m7
B12005m8
B12005m9
B12005m10
B12005m11
B12005m12
B12005m13
B12005m14
B12005m15
B12005m16
 
B12006m1
B12006m2
B12006m3
B12006m4
B12006m5
B12006m6
B12006m7
B12006m8
B12006m9
B12006m10
B12006m11
B12006m12
B12006m13
B12006m14
B12006m15
B12006m16
B12006m17
B12006m18
B12006m19
B12006m20
B12006m21
B12006m22
B12006m23
B12006m24
B12006m25
B12006m26
B12006m27
B12006m28
B12006m29
B12006m30
B12006m31
B12006m32
B12006m33
B12006m34
B12006m35
B12006m36
B12006m37
B12006m38
B12006m39
B12006m40
B12006m41
B12006m42
B12006m43
B12006m44
B12006m45
B12006m46
B12006m47
B12006m48
B12006m49
B12006m50
B12006m51
B12006m52
B12006m53
B12006m54
B12006m55
B12006m56
 
B12007m1
B12007m2
 
B12007Am1
B12007Am2
 
B12007Bm1
B12007Bm2
 
B12007Cm1
B12007Cm2
 
B12007Dm1
B12007Dm2
 
B12007Em1
B12007Em2
 
B12007Fm1
B12007Fm2
 
B12007Gm1
B12007Gm2
 
B12007Hm1
B12007Hm2
 
B12007Im1
B12007Im2
 
B12501m1
B12501m2
B12501m3
B12501m4
B12501m5
B12501m6
B12501m7
B12501m8
B12501m9
B12501m10
B12501m11
 
B12502m1
B12502m2
B12502m3
B12502m4
B12502m5
B12502m6
B12502m7
B12502m8
B12502m9
B12502m10
B12502m11
 
B12503m1
B12503m2
B12503m3
B12503m4
B12503m5
B12503m6
B12503m7
B12503m8
B12503m9
B12503m10
B12503m11
 
B12504m1
B12504m2
B12504m3
B12504m4
B12504m5
B12504m6
B12504m7
B12504m8
B12504m9
 
B12505m1
B12505m2
B12505m3
B12505m4
B12505m5
B12505m6
B12505m7
B12505m8
B12505m9
B12505m10
B12505m11
B12505m12
B12505m13
;
RUN;
TITLE2;
