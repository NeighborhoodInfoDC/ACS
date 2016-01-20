TITLE2 "m20115dc0042000";
DATA work.SFm0042dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0042000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (TWO OR MORE RACES) */
/*Universe:  Two or more races population 3 years and over */
 
C14007Gm1='Total:'
C14007Gm2='Enrolled in school:'
C14007Gm3='Enrolled in nursery school, preschool, kindergarten'
C14007Gm4='Enrolled in grade 1 to grade 8'
C14007Gm5='Enrolled in grade 9 to grade 12'
C14007Gm6='Enrolled in college or graduate school'
C14007Gm7='Not enrolled in school'
 
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino, population 3 years and over */
 
C14007Hm1='Total:'
C14007Hm2='Enrolled in school:'
C14007Hm3='Enrolled in nursery school, preschool, kindergarten'
C14007Hm4='Enrolled in grade 1 to grade 8'
C14007Hm5='Enrolled in grade 9 to grade 12'
C14007Hm6='Enrolled in college or graduate school'
C14007Hm7='Not enrolled in school'
 
/*SCHOOL ENROLLMENT BY DETAILED LEVEL OF SCHOOL FOR THE POPULATION 3 YEARS AND OVER (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino population 3 years and over */
 
C14007Im1='Total:'
C14007Im2='Enrolled in school:'
C14007Im3='Enrolled in nursery school, preschool, kindergarten'
C14007Im4='Enrolled in grade 1 to grade 8'
C14007Im5='Enrolled in grade 9 to grade 12'
C14007Im6='Enrolled in college or graduate school'
C14007Im7='Not enrolled in school'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
C14007Gm1
C14007Gm2
C14007Gm3
C14007Gm4
C14007Gm5
C14007Gm6
C14007Gm7
 
C14007Hm1
C14007Hm2
C14007Hm3
C14007Hm4
C14007Hm5
C14007Hm6
C14007Hm7
 
C14007Im1
C14007Im2
C14007Im3
C14007Im4
C14007Im5
C14007Im6
C14007Im7
;
RUN;
TITLE2;
