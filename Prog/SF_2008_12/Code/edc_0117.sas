TITLE2 "e20125dc0117000";
DATA work.SFe0117dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0117000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*IMPUTATION OF SEX */
/*Universe:  Total population */
 
B99011e1='Total:'
B99011e2='Imputed'
B99011e3='Not imputed'
/*IMPUTATION OF AGE */
/*Universe:  Total population */
 
B99012e1='Total:'
B99012e2='Imputed'
B99012e3='Not imputed'
/*IMPUTATION OF RACE */
/*Universe:  Total population */
 
B99021e1='Total:'
B99021e2='Imputed'
B99021e3='Not imputed'
/*IMPUTATION OF HISPANIC OR LATINO ORIGIN */
/*Universe:  Total population */
 
B99031e1='Total:'
B99031e2='Imputed'
B99031e3='Not imputed'
/*IMPUTATION OF CITIZENSHIP STATUS */
/*Universe:  Total population */
 
B99051e1='Total:'
B99051e2='Native:'
B99051e3='Imputed'
B99051e4='Not imputed'
B99051e5='Foreign born:'
B99051e6='Imputed'
B99051e7='Not imputed'
/*IMPUTATION OF YEAR OF ENTRY */
/*Universe:  Population born outside the United States */
 
B99052e1='Total:'
B99052e2='Native:'
B99052e3='Imputed'
B99052e4='Not imputed'
B99052e5='Foreign born:'
B99052e6='Imputed'
B99052e7='Not imputed'
/*IMPUTATION OF YEAR OF ENTRY FOR POPULATION BORN OUTSIDE PUERTO RICO */
/*Universe:  Population born outside Puerto Rico */
 
B99052PRe1='Total:'
B99052PRe2='Native:'
B99052PRe3='Imputed'
B99052PRe4='Not imputed'
B99052PRe5='Foreign born:'
B99052PRe6='Imputed'
B99052PRe7='Not imputed'
/*IMPUTATION OF PLACE OF BIRTH */
/*Universe:  Total population */
 
B99061e1='Total:'
B99061e2='Imputed'
B99061e3='Not imputed'
/*IMPUTATION OF MOBILITY STATUS FOR THE POPULATION 1 YEAR AND OVER */
/*Universe:  Population 1 year and over */
 
B99071e1='Total:'
B99071e2='Imputed'
B99071e3='Not imputed'
/*IMPUTATION OF RESIDENCE 1 YEAR AGO FOR THE POPULATION 1 YEAR AND OVER */
/*Universe:  Population 1 year and over */
 
B99072e1='Total:'
B99072e2='Different house:'
B99072e3='Imputed:'
B99072e4='One or more but not all geographic parts imputed'
B99072e5='All geographic parts imputed'
B99072e6='Not imputed'
B99072e7='Same house'
/*IMPUTATION OF MEANS OF TRANSPORTATION TO WORK */
/*Universe:  Workers 16 years and over */
 
B99080e1='Total:'
B99080e2='Imputed'
B99080e3='Not imputed'
/*IMPUTATION OF PLACE OF WORK */
/*Universe:  Workers 16 years and over */
 
B99081e1='Total:'
B99081e2='Imputed:'
B99081e3='One or more but not all geographic parts imputed'
B99081e4='All geographic parts imputed'
B99081e5='Not imputed'
/*IMPUTATION OF PRIVATE VEHICLE OCCUPANCY */
/*Universe:  Workers 16 years and over */
 
B99082e1='Total:'
B99082e2='Car, truck, or van:'
B99082e3='Imputed'
B99082e4='Not imputed'
B99082e5='Other means (including those who worked at home)'
/*IMPUTATION OF TIME LEAVING HOME TO GO TO WORK */
/*Universe:  Workers 16 years and over */
 
B99083e1='Total:'
B99083e2='Did not work at home:'
/*Time leaving home to go to work -- */
B99083e3='Imputed'
B99083e4='Not imputed'
B99083e5='Worked at home'
/*IMPUTATION OF TRAVEL TIME TO WORK */
/*Universe:  Workers 16 years and over */
 
B99084e1='Total:'
B99084e2='Did not work at home:'
/*Travel time to work -- */
B99084e3='Imputed'
B99084e4='Not imputed'
B99084e5='Worked at home'
/*IMPUTATION OF VEHICLES AVAILABLE FOR WORKERS */
/*Universe:  Workers 16 years and over in households */
 
B99085e1='Total:'
B99085e2='Imputed'
B99085e3='Not imputed'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B99011e1
B99011e2
B99011e3
 
B99012e1
B99012e2
B99012e3
 
B99021e1
B99021e2
B99021e3
 
B99031e1
B99031e2
B99031e3
 
B99051e1
B99051e2
B99051e3
B99051e4
B99051e5
B99051e6
B99051e7
 
B99052e1
B99052e2
B99052e3
B99052e4
B99052e5
B99052e6
B99052e7
 
B99052PRe1
B99052PRe2
B99052PRe3
B99052PRe4
B99052PRe5
B99052PRe6
B99052PRe7
 
B99061e1
B99061e2
B99061e3
 
B99071e1
B99071e2
B99071e3
 
B99072e1
B99072e2
B99072e3
B99072e4
B99072e5
B99072e6
B99072e7
 
B99080e1
B99080e2
B99080e3
 
B99081e1
B99081e2
B99081e3
B99081e4
B99081e5
 
B99082e1
B99082e2
B99082e3
B99082e4
B99082e5
 
B99083e1
B99083e2
B99083e3
B99083e4
B99083e5
 
B99084e1
B99084e2
B99084e3
B99084e4
B99084e5
 
B99085e1
B99085e2
B99085e3
;
RUN;
TITLE2;
