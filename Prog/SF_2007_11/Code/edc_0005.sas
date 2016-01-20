TITLE2 "e20115dc0005000";
DATA work.SFe0005dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0005000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*HISPANIC OR LATINO ORIGIN BY SPECIFIC ORIGIN */
/*Universe:  Total population */
 
B03001e1='Total:'
B03001e2='Not Hispanic or Latino'
B03001e3='Hispanic or Latino:'
B03001e4='Mexican'
B03001e5='Puerto Rican'
B03001e6='Cuban'
B03001e7='Dominican (Dominican Republic)'
B03001e8='Central American:'
B03001e9='Costa Rican'
B03001e10='Guatemalan'
B03001e11='Honduran'
B03001e12='Nicaraguan'
B03001e13='Panamanian'
B03001e14='Salvadoran'
B03001e15='Other Central American'
B03001e16='South American:'
B03001e17='Argentinean'
B03001e18='Bolivian'
B03001e19='Chilean'
B03001e20='Colombian'
B03001e21='Ecuadorian'
B03001e22='Paraguayan'
B03001e23='Peruvian'
B03001e24='Uruguayan'
B03001e25='Venezuelan'
B03001e26='Other South American'
B03001e27='Other Hispanic or Latino:'
B03001e28='Spaniard'
B03001e29='Spanish'
B03001e30='Spanish American'
B03001e31='All other Hispanic or Latino'
 
/*HISPANIC OR LATINO ORIGIN BY RACE */
/*Universe:  Total population */
 
B03002e1='Total:'
B03002e2='Not Hispanic or Latino:'
B03002e3='White alone'
B03002e4='Black or African American alone'
B03002e5='American Indian and Alaska Native alone'
B03002e6='Asian alone'
B03002e7='Native Hawaiian and Other Pacific Islander alone'
B03002e8='Some other race alone'
B03002e9='Two or more races:'
B03002e10='Two races including Some other race'
B03002e11='Two races excluding Some other race, and three or more races'
B03002e12='Hispanic or Latino:'
B03002e13='White alone'
B03002e14='Black or African American alone'
B03002e15='American Indian and Alaska Native alone'
B03002e16='Asian alone'
B03002e17='Native Hawaiian and Other Pacific Islander alone'
B03002e18='Some other race alone'
B03002e19='Two or more races:'
B03002e20='Two races including Some other race'
B03002e21='Two races excluding Some other race, and three or more races'
 
/*HISPANIC OR LATINO ORIGIN */
/*Universe:  Total population */
 
B03003e1='Total:'
B03003e2='Not Hispanic or Latino'
B03003e3='Hispanic or Latino'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B03001e1
B03001e2
B03001e3
B03001e4
B03001e5
B03001e6
B03001e7
B03001e8
B03001e9
B03001e10
B03001e11
B03001e12
B03001e13
B03001e14
B03001e15
B03001e16
B03001e17
B03001e18
B03001e19
B03001e20
B03001e21
B03001e22
B03001e23
B03001e24
B03001e25
B03001e26
B03001e27
B03001e28
B03001e29
B03001e30
B03001e31
 
B03002e1
B03002e2
B03002e3
B03002e4
B03002e5
B03002e6
B03002e7
B03002e8
B03002e9
B03002e10
B03002e11
B03002e12
B03002e13
B03002e14
B03002e15
B03002e16
B03002e17
B03002e18
B03002e19
B03002e20
B03002e21
 
B03003e1
B03003e2
B03003e3
;
RUN;
TITLE2;
