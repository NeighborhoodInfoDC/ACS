TITLE2 "m20125dc0117000";
DATA work.SFm0117dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0117000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*IMPUTATION OF SEX */
/*Universe:  Total population */
 
B99011m1='Total:'
B99011m2='Imputed'
B99011m3='Not imputed'
/*IMPUTATION OF AGE */
/*Universe:  Total population */
 
B99012m1='Total:'
B99012m2='Imputed'
B99012m3='Not imputed'
/*IMPUTATION OF RACE */
/*Universe:  Total population */
 
B99021m1='Total:'
B99021m2='Imputed'
B99021m3='Not imputed'
/*IMPUTATION OF HISPANIC OR LATINO ORIGIN */
/*Universe:  Total population */
 
B99031m1='Total:'
B99031m2='Imputed'
B99031m3='Not imputed'
/*IMPUTATION OF CITIZENSHIP STATUS */
/*Universe:  Total population */
 
B99051m1='Total:'
B99051m2='Native:'
B99051m3='Imputed'
B99051m4='Not imputed'
B99051m5='Foreign born:'
B99051m6='Imputed'
B99051m7='Not imputed'
/*IMPUTATION OF YEAR OF ENTRY */
/*Universe:  Population born outside the United States */
 
B99052m1='Total:'
B99052m2='Native:'
B99052m3='Imputed'
B99052m4='Not imputed'
B99052m5='Foreign born:'
B99052m6='Imputed'
B99052m7='Not imputed'
/*IMPUTATION OF YEAR OF ENTRY FOR POPULATION BORN OUTSIDE PUERTO RICO */
/*Universe:  Population born outside Puerto Rico */
 
B99052PRm1='Total:'
B99052PRm2='Native:'
B99052PRm3='Imputed'
B99052PRm4='Not imputed'
B99052PRm5='Foreign born:'
B99052PRm6='Imputed'
B99052PRm7='Not imputed'
/*IMPUTATION OF PLACE OF BIRTH */
/*Universe:  Total population */
 
B99061m1='Total:'
B99061m2='Imputed'
B99061m3='Not imputed'
/*IMPUTATION OF MOBILITY STATUS FOR THE POPULATION 1 YEAR AND OVER */
/*Universe:  Population 1 year and over */
 
B99071m1='Total:'
B99071m2='Imputed'
B99071m3='Not imputed'
/*IMPUTATION OF RESIDENCE 1 YEAR AGO FOR THE POPULATION 1 YEAR AND OVER */
/*Universe:  Population 1 year and over */
 
B99072m1='Total:'
B99072m2='Different house:'
B99072m3='Imputed:'
B99072m4='One or more but not all geographic parts imputed'
B99072m5='All geographic parts imputed'
B99072m6='Not imputed'
B99072m7='Same house'
/*IMPUTATION OF MEANS OF TRANSPORTATION TO WORK */
/*Universe:  Workers 16 years and over */
 
B99080m1='Total:'
B99080m2='Imputed'
B99080m3='Not imputed'
/*IMPUTATION OF PLACE OF WORK */
/*Universe:  Workers 16 years and over */
 
B99081m1='Total:'
B99081m2='Imputed:'
B99081m3='One or more but not all geographic parts imputed'
B99081m4='All geographic parts imputed'
B99081m5='Not imputed'
/*IMPUTATION OF PRIVATE VEHICLE OCCUPANCY */
/*Universe:  Workers 16 years and over */
 
B99082m1='Total:'
B99082m2='Car, truck, or van:'
B99082m3='Imputed'
B99082m4='Not imputed'
B99082m5='Other means (including those who worked at home)'
/*IMPUTATION OF TIME LEAVING HOME TO GO TO WORK */
/*Universe:  Workers 16 years and over */
 
B99083m1='Total:'
B99083m2='Did not work at home:'
/*Time leaving home to go to work -- */
B99083m3='Imputed'
B99083m4='Not imputed'
B99083m5='Worked at home'
/*IMPUTATION OF TRAVEL TIME TO WORK */
/*Universe:  Workers 16 years and over */
 
B99084m1='Total:'
B99084m2='Did not work at home:'
/*Travel time to work -- */
B99084m3='Imputed'
B99084m4='Not imputed'
B99084m5='Worked at home'
/*IMPUTATION OF VEHICLES AVAILABLE FOR WORKERS */
/*Universe:  Workers 16 years and over in households */
 
B99085m1='Total:'
B99085m2='Imputed'
B99085m3='Not imputed'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B99011m1
B99011m2
B99011m3
 
B99012m1
B99012m2
B99012m3
 
B99021m1
B99021m2
B99021m3
 
B99031m1
B99031m2
B99031m3
 
B99051m1
B99051m2
B99051m3
B99051m4
B99051m5
B99051m6
B99051m7
 
B99052m1
B99052m2
B99052m3
B99052m4
B99052m5
B99052m6
B99052m7
 
B99052PRm1
B99052PRm2
B99052PRm3
B99052PRm4
B99052PRm5
B99052PRm6
B99052PRm7
 
B99061m1
B99061m2
B99061m3
 
B99071m1
B99071m2
B99071m3
 
B99072m1
B99072m2
B99072m3
B99072m4
B99072m5
B99072m6
B99072m7
 
B99080m1
B99080m2
B99080m3
 
B99081m1
B99081m2
B99081m3
B99081m4
B99081m5
 
B99082m1
B99082m2
B99082m3
B99082m4
B99082m5
 
B99083m1
B99083m2
B99083m3
B99083m4
B99083m5
 
B99084m1
B99084m2
B99084m3
B99084m4
B99084m5
 
B99085m1
B99085m2
B99085m3
;
RUN;
TITLE2;
