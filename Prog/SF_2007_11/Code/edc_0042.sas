TITLE2 "e20115dc0042000";
DATA work.SFe0042dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0042000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (TWO OR MORE RACES) */
/*Universe:  Two or more races population 3 years and over */
 
C14007Ge1='Total:'
C14007Ge2='Enrolled in school:'
C14007Ge3='Enrolled in nursery school, preschool, kindergarten'
C14007Ge4='Enrolled in grade 1 to grade 8'
C14007Ge5='Enrolled in grade 9 to grade 12'
C14007Ge6='Enrolled in college or graduate school'
C14007Ge7='Not enrolled in school'
 
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino, population 3 years and over */
 
C14007He1='Total:'
C14007He2='Enrolled in school:'
C14007He3='Enrolled in nursery school, preschool, kindergarten'
C14007He4='Enrolled in grade 1 to grade 8'
C14007He5='Enrolled in grade 9 to grade 12'
C14007He6='Enrolled in college or graduate school'
C14007He7='Not enrolled in school'
 
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population 3 years and over */
 
C14007Ie1='Total:'
C14007Ie2='Enrolled in school:'
C14007Ie3='Enrolled in nursery school, preschool, kindergarten'
C14007Ie4='Enrolled in grade 1 to grade 8'
C14007Ie5='Enrolled in grade 9 to grade 12'
C14007Ie6='Enrolled in college or graduate school'
C14007Ie7='Not enrolled in school'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
C14007Ge1
C14007Ge2
C14007Ge3
C14007Ge4
C14007Ge5
C14007Ge6
C14007Ge7
 
C14007He1
C14007He2
C14007He3
C14007He4
C14007He5
C14007He6
C14007He7
 
C14007Ie1
C14007Ie2
C14007Ie3
C14007Ie4
C14007Ie5
C14007Ie6
C14007Ie7
;
RUN;
TITLE2;
