TITLE2 "e20115dc0036000";
DATA work.SFe0036dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0036000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) */
/*Universe:  Households */
 
B11001e1='Total:'
B11001e2='Family households:'
B11001e3='Married-couple family'
B11001e4='Other family:'
B11001e5='Male householder, no wife present'
B11001e6='Female householder, no husband present'
B11001e7='Nonfamily households:'
B11001e8='Householder living alone'
B11001e9='Householder not living alone'
 
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) (WHITE ALONE) */
/*Universe:  Households with a householder who is White alone */
 
B11001Ae1='Total:'
B11001Ae2='Family households:'
B11001Ae3='Married-couple family'
B11001Ae4='Other family:'
B11001Ae5='Male householder, no wife present'
B11001Ae6='Female householder, no husband present'
B11001Ae7='Nonfamily households:'
B11001Ae8='Householder living alone'
B11001Ae9='Householder not living alone'
 
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Households with a householder who is Black or African American alone */
 
B11001Be1='Total:'
B11001Be2='Family households:'
B11001Be3='Married-couple family'
B11001Be4='Other family:'
B11001Be5='Male householder, no wife present'
B11001Be6='Female householder, no husband present'
B11001Be7='Nonfamily households:'
B11001Be8='Householder living alone'
B11001Be9='Householder not living alone'
 
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  Households with a householder who is American Indian and Alaska Native alone */
 
B11001Ce1='Total:'
B11001Ce2='Family households:'
B11001Ce3='Married-couple family'
B11001Ce4='Other family:'
B11001Ce5='Male householder, no wife present'
B11001Ce6='Female householder, no husband present'
B11001Ce7='Nonfamily households:'
B11001Ce8='Householder living alone'
B11001Ce9='Householder not living alone'
 
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) (ASIAN ALONE) */
/*Universe:  Households with a householder who is Asian alone */
 
B11001De1='Total:'
B11001De2='Family households:'
B11001De3='Married-couple family'
B11001De4='Other family:'
B11001De5='Male householder, no wife present'
B11001De6='Female householder, no husband present'
B11001De7='Nonfamily households:'
B11001De8='Householder living alone'
B11001De9='Householder not living alone'
 
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Households with a householder who is Native Hawaiian and Other Pacific Islander alone */
 
B11001Ee1='Total:'
B11001Ee2='Family households:'
B11001Ee3='Married-couple family'
B11001Ee4='Other family:'
B11001Ee5='Male householder, no wife present'
B11001Ee6='Female householder, no husband present'
B11001Ee7='Nonfamily households:'
B11001Ee8='Householder living alone'
B11001Ee9='Householder not living alone'
 
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) (SOME OTHER RACE ALONE) */
/*Universe:  Households with a householder who is Some other race alone */
 
B11001Fe1='Total:'
B11001Fe2='Family households:'
B11001Fe3='Married-couple family'
B11001Fe4='Other family:'
B11001Fe5='Male householder, no wife present'
B11001Fe6='Female householder, no husband present'
B11001Fe7='Nonfamily households:'
B11001Fe8='Householder living alone'
B11001Fe9='Householder not living alone'
 
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) (TWO OR MORE RACES) */
/*Universe:  Households with a householder who is Two or more races */
 
B11001Ge1='Total:'
B11001Ge2='Family households:'
B11001Ge3='Married-couple family'
B11001Ge4='Other family:'
B11001Ge5='Male householder, no wife present'
B11001Ge6='Female householder, no husband present'
B11001Ge7='Nonfamily households:'
B11001Ge8='Householder living alone'
B11001Ge9='Householder not living alone'
 
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  Households with a householder who is White alone, not Hispanic or Latino */
 
B11001He1='Total:'
B11001He2='Family households:'
B11001He3='Married-couple family'
B11001He4='Other family:'
B11001He5='Male householder, no wife present'
B11001He6='Female householder, no husband present'
B11001He7='Nonfamily households:'
B11001He8='Householder living alone'
B11001He9='Householder not living alone'
 
/*HOUSEHOLD TYPE (INCLUDING LIVING ALONE) (HISPANIC OR LATINO) */
/*Universe:  Households with a householder who is Hispanic or Latino */
 
B11001Ie1='Total:'
B11001Ie2='Family households:'
B11001Ie3='Married-couple family'
B11001Ie4='Other family:'
B11001Ie5='Male householder, no wife present'
B11001Ie6='Female householder, no husband present'
B11001Ie7='Nonfamily households:'
B11001Ie8='Householder living alone'
B11001Ie9='Householder not living alone'
 
/*HOUSEHOLD TYPE BY RELATIVES AND NONRELATIVES FOR POPULATION IN HOUSEHOLDS */
/*Universe:  Population in households */
 
B11002e1='Total:'
B11002e2='In family households:'
B11002e3='In married-couple family:'
B11002e4='Relatives'
B11002e5='Nonrelatives'
B11002e6='In male householder, no wife present, family:'
B11002e7='Relatives'
B11002e8='Nonrelatives'
B11002e9='In female householder, no husband present, family:'
B11002e10='Relatives'
B11002e11='Nonrelatives'
B11002e12='In nonfamily households'
 
/*HOUSEHOLD TYPE BY RELATIVES AND NONRELATIVES FOR POPULATION IN HOUSEHOLDS (WHITE ALONE) */
/*Universe:  Population in households with a householder who is White alone */
 
B11002Ae1='Total:'
B11002Ae2='In family households:'
B11002Ae3='In married-couple family:'
B11002Ae4='Relatives'
B11002Ae5='Nonrelatives'
B11002Ae6='In male householder, no wife present, family:'
B11002Ae7='Relatives'
B11002Ae8='Nonrelatives'
B11002Ae9='In female householder, no husband present, family:'
B11002Ae10='Relatives'
B11002Ae11='Nonrelatives'
B11002Ae12='In nonfamily households'
 
/*HOUSEHOLD TYPE BY RELATIVES AND NONRELATIVES FOR POPULATION IN HOUSEHOLDS (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Population in households with a householder who is Black or African American alone */
 
B11002Be1='Total:'
B11002Be2='In family households:'
B11002Be3='In married-couple family:'
B11002Be4='Relatives'
B11002Be5='Nonrelatives'
B11002Be6='In male householder, no wife present, family:'
B11002Be7='Relatives'
B11002Be8='Nonrelatives'
B11002Be9='In female householder, no husband present, family:'
B11002Be10='Relatives'
B11002Be11='Nonrelatives'
B11002Be12='In nonfamily households'
 
/*HOUSEHOLD TYPE BY RELATIVES AND NONRELATIVES FOR POPULATION IN HOUSEHOLDS (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  Population in households with a householder who is American Indian and Alaska Native alone */
 
B11002Ce1='Total:'
B11002Ce2='In family households:'
B11002Ce3='In married-couple family:'
B11002Ce4='Relatives'
B11002Ce5='Nonrelatives'
B11002Ce6='In male householder, no wife present, family:'
B11002Ce7='Relatives'
B11002Ce8='Nonrelatives'
B11002Ce9='In female householder, no husband present, family:'
B11002Ce10='Relatives'
B11002Ce11='Nonrelatives'
B11002Ce12='In nonfamily households'
 
/*HOUSEHOLD TYPE BY RELATIVES AND NONRELATIVES FOR POPULATION IN HOUSEHOLDS (ASIAN ALONE) */
/*Universe:  Population in households with a householder who is Asian alone */
 
B11002De1='Total:'
B11002De2='In family households:'
B11002De3='In married-couple family:'
B11002De4='Relatives'
B11002De5='Nonrelatives'
B11002De6='In male householder, no wife present, family:'
B11002De7='Relatives'
B11002De8='Nonrelatives'
B11002De9='In female householder, no husband present, family:'
B11002De10='Relatives'
B11002De11='Nonrelatives'
B11002De12='In nonfamily households'
 
/*HOUSEHOLD TYPE BY RELATIVES AND NONRELATIVES FOR POPULATION IN HOUSEHOLDS (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Population in households with a householder who is Native Hawaiian and Other Pacific Islander alone */
 
B11002Ee1='Total:'
B11002Ee2='In family households:'
B11002Ee3='In married-couple family:'
B11002Ee4='Relatives'
B11002Ee5='Nonrelatives'
B11002Ee6='In male householder, no wife present, family:'
B11002Ee7='Relatives'
B11002Ee8='Nonrelatives'
B11002Ee9='In female householder, no husband present, family:'
B11002Ee10='Relatives'
B11002Ee11='Nonrelatives'
B11002Ee12='In nonfamily households'
 
/*HOUSEHOLD TYPE BY RELATIVES AND NONRELATIVES FOR POPULATION IN HOUSEHOLDS (SOME OTHER RACE ALONE) */
/*Universe:  Population in households with a householder who is Some other race alone */
 
B11002Fe1='Total:'
B11002Fe2='In family households:'
B11002Fe3='In married-couple family:'
B11002Fe4='Relatives'
B11002Fe5='Nonrelatives'
B11002Fe6='In male householder, no wife present, family:'
B11002Fe7='Relatives'
B11002Fe8='Nonrelatives'
B11002Fe9='In female householder, no husband present, family:'
B11002Fe10='Relatives'
B11002Fe11='Nonrelatives'
B11002Fe12='In nonfamily households'
 
/*HOUSEHOLD TYPE BY RELATIVES AND NONRELATIVES FOR POPULATION IN HOUSEHOLDS (TWO OR MORE RACES) */
/*Universe:  Population in households with a householder who is Two or more races */
 
B11002Ge1='Total:'
B11002Ge2='In family households:'
B11002Ge3='In married-couple family:'
B11002Ge4='Relatives'
B11002Ge5='Nonrelatives'
B11002Ge6='In male householder, no wife present, family:'
B11002Ge7='Relatives'
B11002Ge8='Nonrelatives'
B11002Ge9='In female householder, no husband present, family:'
B11002Ge10='Relatives'
B11002Ge11='Nonrelatives'
B11002Ge12='In nonfamily households'
 
/*HOUSEHOLD TYPE BY RELATIVES AND NONRELATIVES FOR POPULATION IN HOUSEHOLDS (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  Population in households with a householder who is White alone, not Hispanic or Latino */
 
B11002He1='Total:'
B11002He2='In family households:'
B11002He3='In married-couple family:'
B11002He4='Relatives'
B11002He5='Nonrelatives'
B11002He6='In male householder, no wife present, family:'
B11002He7='Relatives'
B11002He8='Nonrelatives'
B11002He9='In female householder, no husband present, family:'
B11002He10='Relatives'
B11002He11='Nonrelatives'
B11002He12='In nonfamily households'
 
/*HOUSEHOLD TYPE BY RELATIVES AND NONRELATIVES FOR POPULATION IN HOUSEHOLDS (HISPANIC OR LATINO) */
/*Universe:  Population in households with a householder who is Hispanic or Latino */
 
B11002Ie1='Total:'
B11002Ie2='In family households:'
B11002Ie3='In married-couple family:'
B11002Ie4='Relatives'
B11002Ie5='Nonrelatives'
B11002Ie6='In male householder, no wife present, family:'
B11002Ie7='Relatives'
B11002Ie8='Nonrelatives'
B11002Ie9='In female householder, no husband present, family:'
B11002Ie10='Relatives'
B11002Ie11='Nonrelatives'
B11002Ie12='In nonfamily households'
 
/*FAMILY TYPE BY PRESENCE AND AGE OF OWN CHILDREN UNDER 18 YEARS */
/*Universe:  Families */
 
B11003e1='Total:'
B11003e2='Married-couple family:'
B11003e3='With own children under 18 years:'
B11003e4='Under 6 years only'
B11003e5='Under 6 years and 6 to 17 years'
B11003e6='6 to 17 years only'
B11003e7='No own children under 18 years'
B11003e8='Other family:'
B11003e9='Male householder, no wife present:'
B11003e10='With own children under 18 years:'
B11003e11='Under 6 years only'
B11003e12='Under 6 years and 6 to 17 years'
B11003e13='6 to 17 years only'
B11003e14='No own children under 18 years'
B11003e15='Female householder, no husband present:'
B11003e16='With own children under 18 years:'
B11003e17='Under 6 years only'
B11003e18='Under 6 years and 6 to 17 years'
B11003e19='6 to 17 years only'
B11003e20='No own children under 18 years'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B11001e1
B11001e2
B11001e3
B11001e4
B11001e5
B11001e6
B11001e7
B11001e8
B11001e9
 
B11001Ae1
B11001Ae2
B11001Ae3
B11001Ae4
B11001Ae5
B11001Ae6
B11001Ae7
B11001Ae8
B11001Ae9
 
B11001Be1
B11001Be2
B11001Be3
B11001Be4
B11001Be5
B11001Be6
B11001Be7
B11001Be8
B11001Be9
 
B11001Ce1
B11001Ce2
B11001Ce3
B11001Ce4
B11001Ce5
B11001Ce6
B11001Ce7
B11001Ce8
B11001Ce9
 
B11001De1
B11001De2
B11001De3
B11001De4
B11001De5
B11001De6
B11001De7
B11001De8
B11001De9
 
B11001Ee1
B11001Ee2
B11001Ee3
B11001Ee4
B11001Ee5
B11001Ee6
B11001Ee7
B11001Ee8
B11001Ee9
 
B11001Fe1
B11001Fe2
B11001Fe3
B11001Fe4
B11001Fe5
B11001Fe6
B11001Fe7
B11001Fe8
B11001Fe9
 
B11001Ge1
B11001Ge2
B11001Ge3
B11001Ge4
B11001Ge5
B11001Ge6
B11001Ge7
B11001Ge8
B11001Ge9
 
B11001He1
B11001He2
B11001He3
B11001He4
B11001He5
B11001He6
B11001He7
B11001He8
B11001He9
 
B11001Ie1
B11001Ie2
B11001Ie3
B11001Ie4
B11001Ie5
B11001Ie6
B11001Ie7
B11001Ie8
B11001Ie9
 
B11002e1
B11002e2
B11002e3
B11002e4
B11002e5
B11002e6
B11002e7
B11002e8
B11002e9
B11002e10
B11002e11
B11002e12
 
B11002Ae1
B11002Ae2
B11002Ae3
B11002Ae4
B11002Ae5
B11002Ae6
B11002Ae7
B11002Ae8
B11002Ae9
B11002Ae10
B11002Ae11
B11002Ae12
 
B11002Be1
B11002Be2
B11002Be3
B11002Be4
B11002Be5
B11002Be6
B11002Be7
B11002Be8
B11002Be9
B11002Be10
B11002Be11
B11002Be12
 
B11002Ce1
B11002Ce2
B11002Ce3
B11002Ce4
B11002Ce5
B11002Ce6
B11002Ce7
B11002Ce8
B11002Ce9
B11002Ce10
B11002Ce11
B11002Ce12
 
B11002De1
B11002De2
B11002De3
B11002De4
B11002De5
B11002De6
B11002De7
B11002De8
B11002De9
B11002De10
B11002De11
B11002De12
 
B11002Ee1
B11002Ee2
B11002Ee3
B11002Ee4
B11002Ee5
B11002Ee6
B11002Ee7
B11002Ee8
B11002Ee9
B11002Ee10
B11002Ee11
B11002Ee12
 
B11002Fe1
B11002Fe2
B11002Fe3
B11002Fe4
B11002Fe5
B11002Fe6
B11002Fe7
B11002Fe8
B11002Fe9
B11002Fe10
B11002Fe11
B11002Fe12
 
B11002Ge1
B11002Ge2
B11002Ge3
B11002Ge4
B11002Ge5
B11002Ge6
B11002Ge7
B11002Ge8
B11002Ge9
B11002Ge10
B11002Ge11
B11002Ge12
 
B11002He1
B11002He2
B11002He3
B11002He4
B11002He5
B11002He6
B11002He7
B11002He8
B11002He9
B11002He10
B11002He11
B11002He12
 
B11002Ie1
B11002Ie2
B11002Ie3
B11002Ie4
B11002Ie5
B11002Ie6
B11002Ie7
B11002Ie8
B11002Ie9
B11002Ie10
B11002Ie11
B11002Ie12
 
B11003e1
B11003e2
B11003e3
B11003e4
B11003e5
B11003e6
B11003e7
B11003e8
B11003e9
B11003e10
B11003e11
B11003e12
B11003e13
B11003e14
B11003e15
B11003e16
B11003e17
B11003e18
B11003e19
B11003e20
;
RUN;
TITLE2;
