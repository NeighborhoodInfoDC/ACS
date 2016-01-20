TITLE2 "m20125md0005000";
DATA work.SFm0005md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0005000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*HISPANIC OR LATINO ORIGIN BY SPECIFIC ORIGIN */
/*Universe:  Total population */
 
B03001m1='Total:'
B03001m2='Not Hispanic or Latino'
B03001m3='Hispanic or Latino:'
B03001m4='Mexican'
B03001m5='Puerto Rican'
B03001m6='Cuban'
B03001m7='Dominican (Dominican Republic)'
B03001m8='Central American:'
B03001m9='Costa Rican'
B03001m10='Guatemalan'
B03001m11='Honduran'
B03001m12='Nicaraguan'
B03001m13='Panamanian'
B03001m14='Salvadoran'
B03001m15='Other Central American'
B03001m16='South American:'
B03001m17='Argentinean'
B03001m18='Bolivian'
B03001m19='Chilean'
B03001m20='Colombian'
B03001m21='Ecuadorian'
B03001m22='Paraguayan'
B03001m23='Peruvian'
B03001m24='Uruguayan'
B03001m25='Venezuelan'
B03001m26='Other South American'
B03001m27='Other Hispanic or Latino:'
B03001m28='Spaniard'
B03001m29='Spanish'
B03001m30='Spanish American'
B03001m31='All other Hispanic or Latino'
/*HISPANIC OR LATINO ORIGIN BY RACE */
/*Universe:  Total population */
 
B03002m1='Total:'
B03002m2='Not Hispanic or Latino:'
B03002m3='White alone'
B03002m4='Black or African American alone'
B03002m5='American Indian and Alaska Native alone'
B03002m6='Asian alone'
B03002m7='Native Hawaiian and Other Pacific Islander alone'
B03002m8='Some other race alone'
B03002m9='Two or more races:'
B03002m10='Two races including Some other race'
B03002m11='Two races excluding Some other race, and three or more races'
B03002m12='Hispanic or Latino:'
B03002m13='White alone'
B03002m14='Black or African American alone'
B03002m15='American Indian and Alaska Native alone'
B03002m16='Asian alone'
B03002m17='Native Hawaiian and Other Pacific Islander alone'
B03002m18='Some other race alone'
B03002m19='Two or more races:'
B03002m20='Two races including Some other race'
B03002m21='Two races excluding Some other race, and three or more races'
/*HISPANIC OR LATINO ORIGIN */
/*Universe:  Total population */
 
B03003m1='Total:'
B03003m2='Not Hispanic or Latino'
B03003m3='Hispanic or Latino'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B03001m1
B03001m2
B03001m3
B03001m4
B03001m5
B03001m6
B03001m7
B03001m8
B03001m9
B03001m10
B03001m11
B03001m12
B03001m13
B03001m14
B03001m15
B03001m16
B03001m17
B03001m18
B03001m19
B03001m20
B03001m21
B03001m22
B03001m23
B03001m24
B03001m25
B03001m26
B03001m27
B03001m28
B03001m29
B03001m30
B03001m31
 
B03002m1
B03002m2
B03002m3
B03002m4
B03002m5
B03002m6
B03002m7
B03002m8
B03002m9
B03002m10
B03002m11
B03002m12
B03002m13
B03002m14
B03002m15
B03002m16
B03002m17
B03002m18
B03002m19
B03002m20
B03002m21
 
B03003m1
B03003m2
B03003m3
;
RUN;
TITLE2;
