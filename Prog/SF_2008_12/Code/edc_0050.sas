TITLE2 "e20125dc0050000";
DATA work.SFe0050dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0050000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*POVERTY STATUS IN THE PAST 12 MONTHS OF UNRELATED INDIVIDUALS 15 YEARS AND OVER BY SEX BY AGE */
/*Universe:  Unrelated individuals 15 years and over for whom poverty status is determined */
 
B17007e1='Total:'
B17007e2='Income in the past 12 months below poverty level:'
B17007e3='Male:'
B17007e4='15 years'
B17007e5='16 and 17 years'
B17007e6='18 to 24 years'
B17007e7='25 to 34 years'
B17007e8='35 to 44 years'
B17007e9='45 to 54 years'
B17007e10='55 to 64 years'
B17007e11='65 to 74 years'
B17007e12='75 years and over'
B17007e13='Female:'
B17007e14='15 years'
B17007e15='16 and 17 years'
B17007e16='18 to 24 years'
B17007e17='25 to 34 years'
B17007e18='35 to 44 years'
B17007e19='45 to 54 years'
B17007e20='55 to 64 years'
B17007e21='65 to 74 years'
B17007e22='75 years and over'
B17007e23='Income in the past 12 months at or above poverty level:'
B17007e24='Male:'
B17007e25='15 years'
B17007e26='16 and 17 years'
B17007e27='18 to 24 years'
B17007e28='25 to 34 years'
B17007e29='35 to 44 years'
B17007e30='45 to 54 years'
B17007e31='55 to 64 years'
B17007e32='65 to 74 years'
B17007e33='75 years and over'
B17007e34='Female:'
B17007e35='15 years'
B17007e36='16 and 17 years'
B17007e37='18 to 24 years'
B17007e38='25 to 34 years'
B17007e39='35 to 44 years'
B17007e40='45 to 54 years'
B17007e41='55 to 64 years'
B17007e42='65 to 74 years'
B17007e43='75 years and over'
/*AGGREGATE INCOME DEFICIT (DOLLARS) IN THE PAST 12 MONTHS OF UNRELATED INDIVIDUALS BY SEX */
/*Universe:  Unrelated individuals 15 years and over for whom poverty status is determined */
 
B17008e1='Aggregate income deficit in the past 12 months of unrelated individuals (dollars):'
B17008e2='Male (dollars)'
B17008e3='Female (dollars)'
/*POVERTY STATUS BY WORK EXPERIENCE OF UNRELATED INDIVIDUALS BY HOUSEHOLDER STATUS */
/*Universe:  Unrelated individuals 15 years and over for whom poverty status is determined */
 
B17009e1='Total:'
B17009e2='Income in the past 12 months below the poverty level:'
B17009e3='Worked full-time, year-round:'
B17009e4='Nonfamily householder'
B17009e5='Other'
B17009e6='Worked less than full-time, year-round:'
B17009e7='Nonfamily householder'
B17009e8='Other'
B17009e9='Did not work:'
B17009e10='Nonfamily householder'
B17009e11='Other'
B17009e12='Income in the past 12 months at or above the poverty level:'
B17009e13='Worked full-time, year-round:'
B17009e14='Nonfamily householder'
B17009e15='Other'
B17009e16='Worked less than full-time, year-round:'
B17009e17='Nonfamily householder'
B17009e18='Other'
B17009e19='Did not work:'
B17009e20='Nonfamily householder'
B17009e21='Other'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY PRESENCE OF RELATED CHILDREN UNDER 18 YEARS BY AGE OF RELATED CHILDREN */
/*Universe:  Families */
 
B17010e1='Total:'
B17010e2='Income in the past 12 months below poverty level:'
B17010e3='Married-couple family:'
B17010e4='With related children under 18 years:'
B17010e5='Under 5 years only'
B17010e6='Under 5 years and 5 to 17 years'
B17010e7='5 to 17 years only'
B17010e8='No related children under 18 years'
B17010e9='Other family:'
B17010e10='Male householder, no wife present:'
B17010e11='With related children under 18 years:'
B17010e12='Under 5 years only'
B17010e13='Under 5 years and 5 to 17 years'
B17010e14='5 to 17 years only'
B17010e15='No related children under 18 years'
B17010e16='Female householder, no husband present:'
B17010e17='With related children under 18 years:'
B17010e18='Under 5 years only'
B17010e19='Under 5 years and 5 to 17 years'
B17010e20='5 to 17 years only'
B17010e21='No related children under 18 years'
B17010e22='Income in the past 12 months at or above poverty level:'
B17010e23='Married-couple family:'
B17010e24='With related children under 18 years:'
B17010e25='Under 5 years only'
B17010e26='Under 5 years and 5 to 17 years'
B17010e27='5 to 17 years only'
B17010e28='No related children under 18 years'
B17010e29='Other family:'
B17010e30='Male householder, no wife present:'
B17010e31='With related children under 18 years:'
B17010e32='Under 5 years only'
B17010e33='Under 5 years and 5 to 17 years'
B17010e34='5 to 17 years only'
B17010e35='No related children under 18 years'
B17010e36='Female householder, no husband present:'
B17010e37='With related children under 18 years:'
B17010e38='Under 5 years only'
B17010e39='Under 5 years and 5 to 17 years'
B17010e40='5 to 17 years only'
B17010e41='No related children under 18 years'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY PRESENCE OF RELATED CHILDREN UNDER 18 YEARS BY AGE OF RELATED CHILDREN (WHITE ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is White alone */
 
B17010Ae1='Total:'
B17010Ae2='Income in the past 12 months below poverty level:'
B17010Ae3='Married-couple family:'
B17010Ae4='With related children under 18 years:'
B17010Ae5='Under 5 years only'
B17010Ae6='Under 5 years and 5 to 17 years'
B17010Ae7='5 to 17 years only'
B17010Ae8='No related children under 18 years'
B17010Ae9='Other family:'
B17010Ae10='Male householder, no wife present:'
B17010Ae11='With related children under 18 years:'
B17010Ae12='Under 5 years only'
B17010Ae13='Under 5 years and 5 to 17 years'
B17010Ae14='5 to 17 years only'
B17010Ae15='No related children under 18 years'
B17010Ae16='Female householder, no husband present:'
B17010Ae17='With related children under 18 years:'
B17010Ae18='Under 5 years only'
B17010Ae19='Under 5 years and 5 to 17 years'
B17010Ae20='5 to 17 years only'
B17010Ae21='No related children under 18 years'
B17010Ae22='Income in the past 12 months at or above poverty level:'
B17010Ae23='Married-couple family:'
B17010Ae24='With related children under 18 years:'
B17010Ae25='Under 5 years only'
B17010Ae26='Under 5 years and 5 to 17 years'
B17010Ae27='5 to 17 years only'
B17010Ae28='No related children under 18 years'
B17010Ae29='Other family:'
B17010Ae30='Male householder, no wife present:'
B17010Ae31='With related children under 18 years:'
B17010Ae32='Under 5 years only'
B17010Ae33='Under 5 years and 5 to 17 years'
B17010Ae34='5 to 17 years only'
B17010Ae35='No related children under 18 years'
B17010Ae36='Female householder, no husband present:'
B17010Ae37='With related children under 18 years:'
B17010Ae38='Under 5 years only'
B17010Ae39='Under 5 years and 5 to 17 years'
B17010Ae40='5 to 17 years only'
B17010Ae41='No related children under 18 years'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY PRESENCE OF RELATED CHILDREN UNDER 18 YEARS BY AGE OF RELATED CHILDREN (BLACK OR AFRICAN AMERICAN ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is Black or African American alone */
 
B17010Be1='Total:'
B17010Be2='Income in the past 12 months below poverty level:'
B17010Be3='Married-couple family:'
B17010Be4='With related children under 18 years:'
B17010Be5='Under 5 years only'
B17010Be6='Under 5 years and 5 to 17 years'
B17010Be7='5 to 17 years only'
B17010Be8='No related children under 18 years'
B17010Be9='Other family:'
B17010Be10='Male householder, no wife present:'
B17010Be11='With related children under 18 years:'
B17010Be12='Under 5 years only'
B17010Be13='Under 5 years and 5 to 17 years'
B17010Be14='5 to 17 years only'
B17010Be15='No related children under 18 years'
B17010Be16='Female householder, no husband present:'
B17010Be17='With related children under 18 years:'
B17010Be18='Under 5 years only'
B17010Be19='Under 5 years and 5 to 17 years'
B17010Be20='5 to 17 years only'
B17010Be21='No related children under 18 years'
B17010Be22='Income in the past 12 months at or above poverty level:'
B17010Be23='Married-couple family:'
B17010Be24='With related children under 18 years:'
B17010Be25='Under 5 years only'
B17010Be26='Under 5 years and 5 to 17 years'
B17010Be27='5 to 17 years only'
B17010Be28='No related children under 18 years'
B17010Be29='Other family:'
B17010Be30='Male householder, no wife present:'
B17010Be31='With related children under 18 years:'
B17010Be32='Under 5 years only'
B17010Be33='Under 5 years and 5 to 17 years'
B17010Be34='5 to 17 years only'
B17010Be35='No related children under 18 years'
B17010Be36='Female householder, no husband present:'
B17010Be37='With related children under 18 years:'
B17010Be38='Under 5 years only'
B17010Be39='Under 5 years and 5 to 17 years'
B17010Be40='5 to 17 years only'
B17010Be41='No related children under 18 years'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY PRESENCE OF RELATED CHILDREN UNDER 18 YEARS BY AGE OF RELATED CHILDREN (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  Families with a householder who is American Indian and Alaska Native alone */
 
B17010Ce1='Total:'
B17010Ce2='Income in the past 12 months below poverty level:'
B17010Ce3='Married-couple family:'
B17010Ce4='With related children under 18 years:'
B17010Ce5='Under 5 years only'
B17010Ce6='Under 5 years and 5 to 17 years'
B17010Ce7='5 to 17 years only'
B17010Ce8='No related children under 18 years'
B17010Ce9='Other family:'
B17010Ce10='Male householder, no wife present:'
B17010Ce11='With related children under 18 years:'
B17010Ce12='Under 5 years only'
B17010Ce13='Under 5 years and 5 to 17 years'
B17010Ce14='5 to 17 years only'
B17010Ce15='No related children under 18 years'
B17010Ce16='Female householder, no husband present:'
B17010Ce17='With related children under 18 years:'
B17010Ce18='Under 5 years only'
B17010Ce19='Under 5 years and 5 to 17 years'
B17010Ce20='5 to 17 years only'
B17010Ce21='No related children under 18 years'
B17010Ce22='Income in the past 12 months at or above poverty level:'
B17010Ce23='Married-couple family:'
B17010Ce24='With related children under 18 years:'
B17010Ce25='Under 5 years only'
B17010Ce26='Under 5 years and 5 to 17 years'
B17010Ce27='5 to 17 years only'
B17010Ce28='No related children under 18 years'
B17010Ce29='Other family:'
B17010Ce30='Male householder, no wife present:'
B17010Ce31='With related children under 18 years:'
B17010Ce32='Under 5 years only'
B17010Ce33='Under 5 years and 5 to 17 years'
B17010Ce34='5 to 17 years only'
B17010Ce35='No related children under 18 years'
B17010Ce36='Female householder, no husband present:'
B17010Ce37='With related children under 18 years:'
B17010Ce38='Under 5 years only'
B17010Ce39='Under 5 years and 5 to 17 years'
B17010Ce40='5 to 17 years only'
B17010Ce41='No related children under 18 years'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B17007e1
B17007e2
B17007e3
B17007e4
B17007e5
B17007e6
B17007e7
B17007e8
B17007e9
B17007e10
B17007e11
B17007e12
B17007e13
B17007e14
B17007e15
B17007e16
B17007e17
B17007e18
B17007e19
B17007e20
B17007e21
B17007e22
B17007e23
B17007e24
B17007e25
B17007e26
B17007e27
B17007e28
B17007e29
B17007e30
B17007e31
B17007e32
B17007e33
B17007e34
B17007e35
B17007e36
B17007e37
B17007e38
B17007e39
B17007e40
B17007e41
B17007e42
B17007e43
 
B17008e1
B17008e2
B17008e3
 
B17009e1
B17009e2
B17009e3
B17009e4
B17009e5
B17009e6
B17009e7
B17009e8
B17009e9
B17009e10
B17009e11
B17009e12
B17009e13
B17009e14
B17009e15
B17009e16
B17009e17
B17009e18
B17009e19
B17009e20
B17009e21
 
B17010e1
B17010e2
B17010e3
B17010e4
B17010e5
B17010e6
B17010e7
B17010e8
B17010e9
B17010e10
B17010e11
B17010e12
B17010e13
B17010e14
B17010e15
B17010e16
B17010e17
B17010e18
B17010e19
B17010e20
B17010e21
B17010e22
B17010e23
B17010e24
B17010e25
B17010e26
B17010e27
B17010e28
B17010e29
B17010e30
B17010e31
B17010e32
B17010e33
B17010e34
B17010e35
B17010e36
B17010e37
B17010e38
B17010e39
B17010e40
B17010e41
 
B17010Ae1
B17010Ae2
B17010Ae3
B17010Ae4
B17010Ae5
B17010Ae6
B17010Ae7
B17010Ae8
B17010Ae9
B17010Ae10
B17010Ae11
B17010Ae12
B17010Ae13
B17010Ae14
B17010Ae15
B17010Ae16
B17010Ae17
B17010Ae18
B17010Ae19
B17010Ae20
B17010Ae21
B17010Ae22
B17010Ae23
B17010Ae24
B17010Ae25
B17010Ae26
B17010Ae27
B17010Ae28
B17010Ae29
B17010Ae30
B17010Ae31
B17010Ae32
B17010Ae33
B17010Ae34
B17010Ae35
B17010Ae36
B17010Ae37
B17010Ae38
B17010Ae39
B17010Ae40
B17010Ae41
 
B17010Be1
B17010Be2
B17010Be3
B17010Be4
B17010Be5
B17010Be6
B17010Be7
B17010Be8
B17010Be9
B17010Be10
B17010Be11
B17010Be12
B17010Be13
B17010Be14
B17010Be15
B17010Be16
B17010Be17
B17010Be18
B17010Be19
B17010Be20
B17010Be21
B17010Be22
B17010Be23
B17010Be24
B17010Be25
B17010Be26
B17010Be27
B17010Be28
B17010Be29
B17010Be30
B17010Be31
B17010Be32
B17010Be33
B17010Be34
B17010Be35
B17010Be36
B17010Be37
B17010Be38
B17010Be39
B17010Be40
B17010Be41
 
B17010Ce1
B17010Ce2
B17010Ce3
B17010Ce4
B17010Ce5
B17010Ce6
B17010Ce7
B17010Ce8
B17010Ce9
B17010Ce10
B17010Ce11
B17010Ce12
B17010Ce13
B17010Ce14
B17010Ce15
B17010Ce16
B17010Ce17
B17010Ce18
B17010Ce19
B17010Ce20
B17010Ce21
B17010Ce22
B17010Ce23
B17010Ce24
B17010Ce25
B17010Ce26
B17010Ce27
B17010Ce28
B17010Ce29
B17010Ce30
B17010Ce31
B17010Ce32
B17010Ce33
B17010Ce34
B17010Ce35
B17010Ce36
B17010Ce37
B17010Ce38
B17010Ce39
B17010Ce40
B17010Ce41
;
RUN;
TITLE2;
