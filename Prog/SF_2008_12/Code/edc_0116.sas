TITLE2 "e20125dc0116000";
DATA work.SFe0116dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0116000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*UNWEIGHTED HOUSING UNIT SAMPLE */
/*Universe: Housing Units */
 
B98001e1='Initial addresses selected'
B98001e2='Final number of housing unit interviews'
/*UNWEIGHTED GROUP QUARTERS POPULATION SAMPLE */
/*Universe: Population in Group Quarters */
 
B98002e1='Initial sample selected'
B98002e2='Final actual interviews'
B98002e3='Final synthetic interviews'
/*HOUSING UNIT COVERAGE RATE */
/*Universe: Housing Units */
 
B98011e1='Total'
/*TOTAL POPULATION COVERAGE RATE BY SEX */
/*Universe: Total Population */
 
B98012e1='Total:'
B98012e2='Male'
B98012e3='Female'
/*TOTAL POPULATION COVERAGE RATE BY WEIGHTING RACE AND HISPANIC OR LATINO GROUPS */
/*Universe: Total Population */
 
B98013e1='Total:'
/*Not Hispanic or Latino: */
B98013e2='White'
B98013e3='Black or African American'
B98013e4='American Indian and Alaska Native'
B98013e5='Asian'
B98013e6='Native Hawaiian and Other Pacific Islander'
B98013e7='Hispanic or Latino'
/*GROUP QUARTERS POPULATION COVERAGE RATE */
/*Universe: Population in Group Quarters */
 
B98014e1='Total'
/*HOUSING UNIT RESPONSE AND NONRESPONSE RATES WITH REASONS FOR NONINTERVIEWS */
/*Universe: Housing Units */
 
B98021e1='Response Rate'
B98021e2='Nonresponse Rate:'
B98021e3='Refusal'
B98021e4='Unable To Locate'
B98021e5='No One Home'
B98021e6='Temporarily Absent'
B98021e7='Language Problem'
B98021e8='Insufficient Data'
B98021e9='Other Reason'
/*GROUP QUARTERS POPULATION RESPONSE AND NONRESPONSE RATES WITH REASONS FOR NONINTERVIEWS */
/*Universe: Population in Group Quarters */
 
B98022e1='Response Rate'
B98022e2='Nonresponse Rate:'
B98022e3='Group Quarters Person Refusal'
B98022e4='Unable To Locate Group Quarters Person'
B98022e5='Resident Temporarily Absent'
B98022e6='Language Problem'
B98022e7='Insufficient Data'
B98022e8='Group Quarters Person Other Reason'
B98022e9='Whole Group Quarters Refusal'
B98022e10='Whole Group Quarters Other Reason'
/*OVERALL PERSON CHARACTERISTIC IMPUTATION RATE */
/*Universe: Total Population */
 
B98031e1='Total'
/*OVERALL HOUSING UNIT CHARACTERISTIC IMPUTATION RATE */
/*Universe: Total Population */
 
B98032e1='Total'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B98001e1
B98001e2
 
B98002e1
B98002e2
B98002e3
 
B98011e1
 
B98012e1
B98012e2
B98012e3
 
B98013e1
B98013e2
B98013e3
B98013e4
B98013e5
B98013e6
B98013e7
 
B98014e1
 
B98021e1
B98021e2
B98021e3
B98021e4
B98021e5
B98021e6
B98021e7
B98021e8
B98021e9
 
B98022e1
B98022e2
B98022e3
B98022e4
B98022e5
B98022e6
B98022e7
B98022e8
B98022e9
B98022e10
 
B98031e1
 
B98032e1
;
RUN;
TITLE2;
