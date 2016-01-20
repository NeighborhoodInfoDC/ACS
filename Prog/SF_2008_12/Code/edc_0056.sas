TITLE2 "e20125dc0056000";
DATA work.SFe0056dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0056000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*SEX BY AGE BY DISABILITY STATUS */
/*Universe:  Civilian noninstitutionalized population */
 
B18101e1='Total:'
B18101e2='Male:'
B18101e3='Under 5 years:'
B18101e4='With a disability'
B18101e5='No disability'
B18101e6='5 to 17 years:'
B18101e7='With a disability'
B18101e8='No disability'
B18101e9='18 to 34 years:'
B18101e10='With a disability'
B18101e11='No disability'
B18101e12='35 to 64 years:'
B18101e13='With a disability'
B18101e14='No disability'
B18101e15='65 to 74 years:'
B18101e16='With a disability'
B18101e17='No disability'
B18101e18='75 years and over:'
B18101e19='With a disability'
B18101e20='No disability'
B18101e21='Female:'
B18101e22='Under 5 years:'
B18101e23='With a disability'
B18101e24='No disability'
B18101e25='5 to 17 years:'
B18101e26='With a disability'
B18101e27='No disability'
B18101e28='18 to 34 years:'
B18101e29='With a disability'
B18101e30='No disability'
B18101e31='35 to 64 years:'
B18101e32='With a disability'
B18101e33='No disability'
B18101e34='65 to 74 years:'
B18101e35='With a disability'
B18101e36='No disability'
B18101e37='75 years and over:'
B18101e38='With a disability'
B18101e39='No disability'
/*AGE BY DISABILITY STATUS (WHITE ALONE) */
/*Universe:  White alone civilian noninstitutionalized population */
 
B18101Ae1='Total:'
B18101Ae2='Under 18 years:'
B18101Ae3='With a disability'
B18101Ae4='No disability'
B18101Ae5='18 to 64 years:'
B18101Ae6='With a disability'
B18101Ae7='No disability'
B18101Ae8='65 years and over:'
B18101Ae9='With a disability'
B18101Ae10='No disability'
/*AGE BY DISABILITY STATUS (BLACK OR AFRICAN AMERICAN ALONE) */
/*Universe:  Black or African American alone civilian noninstitutionalized population */
 
B18101Be1='Total:'
B18101Be2='Under 18 years:'
B18101Be3='With a disability'
B18101Be4='No disability'
B18101Be5='18 to 64 years:'
B18101Be6='With a disability'
B18101Be7='No disability'
B18101Be8='65 years and over:'
B18101Be9='With a disability'
B18101Be10='No disability'
/*AGE BY DISABILITY STATUS (AMERICAN INDIAN AND ALASKA NATIVE ALONE) */
/*Universe:  American Indian and Alaska Native alone civilian noninstitutionalized population */
 
B18101Ce1='Total:'
B18101Ce2='Under 18 years:'
B18101Ce3='With a disability'
B18101Ce4='No disability'
B18101Ce5='18 to 64 years:'
B18101Ce6='With a disability'
B18101Ce7='No disability'
B18101Ce8='65 years and over:'
B18101Ce9='With a disability'
B18101Ce10='No disability'
/*AGE BY DISABILITY STATUS (ASIAN ALONE) */
/*Universe:  Asian alone civilian noninstitutionalized population */
 
B18101De1='Total:'
B18101De2='Under 18 years:'
B18101De3='With a disability'
B18101De4='No disability'
B18101De5='18 to 64 years:'
B18101De6='With a disability'
B18101De7='No disability'
B18101De8='65 years and over:'
B18101De9='With a disability'
B18101De10='No disability'
/*AGE BY DISABILITY STATUS (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE) */
/*Universe:  Native Hawaiian and other Pacific Islander alone civilian noninstitutionalized population */
 
B18101Ee1='Total:'
B18101Ee2='Under 18 years:'
B18101Ee3='With a disability'
B18101Ee4='No disability'
B18101Ee5='18 to 64 years:'
B18101Ee6='With a disability'
B18101Ee7='No disability'
B18101Ee8='65 years and over:'
B18101Ee9='With a disability'
B18101Ee10='No disability'
/*AGE BY DISABILITY STATUS (SOME OTHER RACE ALONE) */
/*Universe:  Some other race alone civilian noninstitutionalized population */
 
B18101Fe1='Total:'
B18101Fe2='Under 18 years:'
B18101Fe3='With a disability'
B18101Fe4='No disability'
B18101Fe5='18 to 64 years:'
B18101Fe6='With a disability'
B18101Fe7='No disability'
B18101Fe8='65 years and over:'
B18101Fe9='With a disability'
B18101Fe10='No disability'
/*AGE BY DISABILITY STATUS (TWO OR MORE RACES) */
/*Universe:  Two or more races civilian noninstitutionalized population */
 
B18101Ge1='Total:'
B18101Ge2='Under 18 years:'
B18101Ge3='With a disability'
B18101Ge4='No disability'
B18101Ge5='18 to 64 years:'
B18101Ge6='With a disability'
B18101Ge7='No disability'
B18101Ge8='65 years and over:'
B18101Ge9='With a disability'
B18101Ge10='No disability'
/*AGE BY DISABILITY STATUS (WHITE ALONE, NOT HISPANIC OR LATINO) */
/*Universe:  White alone, not Hispanic or Latino civilian noninstitutionalized population */
 
B18101He1='Total:'
B18101He2='Under 18 years:'
B18101He3='With a disability'
B18101He4='No disability'
B18101He5='18 to 64 years:'
B18101He6='With a disability'
B18101He7='No disability'
B18101He8='65 years and over:'
B18101He9='With a disability'
B18101He10='No disability'
/*AGE BY DISABILITY STATUS (HISPANIC OR LATINO) */
/*Universe:  Hispanic or Latino civilian noninstitutionalized population */
 
B18101Ie1='Total:'
B18101Ie2='Under 18 years:'
B18101Ie3='With a disability'
B18101Ie4='No disability'
B18101Ie5='18 to 64 years:'
B18101Ie6='With a disability'
B18101Ie7='No disability'
B18101Ie8='65 years and over:'
B18101Ie9='With a disability'
B18101Ie10='No disability'
/*SEX BY AGE BY HEARING DIFFICULTY */
/*Universe:  Civilian noninstitutionalized population */
 
B18102e1='Total:'
B18102e2='Male:'
B18102e3='Under 5 years:'
B18102e4='With a hearing difficulty'
B18102e5='No hearing difficulty'
B18102e6='5 to 17 years:'
B18102e7='With a hearing difficulty'
B18102e8='No hearing difficulty'
B18102e9='18 to 34 years:'
B18102e10='With a hearing difficulty'
B18102e11='No hearing difficulty'
B18102e12='35 to 64 years:'
B18102e13='With a hearing difficulty'
B18102e14='No hearing difficulty'
B18102e15='65 to 74 years:'
B18102e16='With a hearing difficulty'
B18102e17='No hearing difficulty'
B18102e18='75 years and over:'
B18102e19='With a hearing difficulty'
B18102e20='No hearing difficulty'
B18102e21='Female:'
B18102e22='Under 5 years:'
B18102e23='With a hearing difficulty'
B18102e24='No hearing difficulty'
B18102e25='5 to 17 years:'
B18102e26='With a hearing difficulty'
B18102e27='No hearing difficulty'
B18102e28='18 to 34 years:'
B18102e29='With a hearing difficulty'
B18102e30='No hearing difficulty'
B18102e31='35 to 64 years:'
B18102e32='With a hearing difficulty'
B18102e33='No hearing difficulty'
B18102e34='65 to 74 years:'
B18102e35='With a hearing difficulty'
B18102e36='No hearing difficulty'
B18102e37='75 years and over:'
B18102e38='With a hearing difficulty'
B18102e39='No hearing difficulty'
/*SEX BY AGE BY VISION DIFFICULTY */
/*Universe:  Civilian noninstitutionalized population */
 
B18103e1='Total:'
B18103e2='Male:'
B18103e3='Under 5 years:'
B18103e4='With a vision difficulty'
B18103e5='No vision difficulty'
B18103e6='5 to 17 years:'
B18103e7='With a vision difficulty'
B18103e8='No vision difficulty'
B18103e9='18 to 34 years:'
B18103e10='With a vision difficulty'
B18103e11='No vision difficulty'
B18103e12='35 to 64 years:'
B18103e13='With a vision difficulty'
B18103e14='No vision difficulty'
B18103e15='65 to 74 years:'
B18103e16='With a vision difficulty'
B18103e17='No vision difficulty'
B18103e18='75 years and over:'
B18103e19='With a vision difficulty'
B18103e20='No vision difficulty'
B18103e21='Female:'
B18103e22='Under 5 years:'
B18103e23='With a vision difficulty'
B18103e24='No vision difficulty'
B18103e25='5 to 17 years:'
B18103e26='With a vision difficulty'
B18103e27='No vision difficulty'
B18103e28='18 to 34 years:'
B18103e29='With a vision difficulty'
B18103e30='No vision difficulty'
B18103e31='35 to 64 years:'
B18103e32='With a vision difficulty'
B18103e33='No vision difficulty'
B18103e34='65 to 74 years:'
B18103e35='With a vision difficulty'
B18103e36='No vision difficulty'
B18103e37='75 years and over:'
B18103e38='With a vision difficulty'
B18103e39='No vision difficulty'
/*SEX BY AGE BY COGNITIVE DIFFICULTY */
/*Universe:  Civilian noninstitutionalized population 5 years and over */
 
B18104e1='Total:'
B18104e2='Male:'
B18104e3='5 to 17 years:'
B18104e4='With a cognitive difficulty'
B18104e5='No cognitive difficulty'
B18104e6='18 to 34 years:'
B18104e7='With a cognitive difficulty'
B18104e8='No cognitive difficulty'
B18104e9='35 to 64 years:'
B18104e10='With a cognitive difficulty'
B18104e11='No cognitive difficulty'
B18104e12='65 to 74 years:'
B18104e13='With a cognitive difficulty'
B18104e14='No cognitive difficulty'
B18104e15='75 years and over:'
B18104e16='With a cognitive difficulty'
B18104e17='No cognitive difficulty'
B18104e18='Female:'
B18104e19='5 to 17 years:'
B18104e20='With a cognitive difficulty'
B18104e21='No cognitive difficulty'
B18104e22='18 to 34 years:'
B18104e23='With a cognitive difficulty'
B18104e24='No cognitive difficulty'
B18104e25='35 to 64 years:'
B18104e26='With a cognitive difficulty'
B18104e27='No cognitive difficulty'
B18104e28='65 to 74 years:'
B18104e29='With a cognitive difficulty'
B18104e30='No cognitive difficulty'
B18104e31='75 years and over:'
B18104e32='With a cognitive difficulty'
B18104e33='No cognitive difficulty'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B18101e1
B18101e2
B18101e3
B18101e4
B18101e5
B18101e6
B18101e7
B18101e8
B18101e9
B18101e10
B18101e11
B18101e12
B18101e13
B18101e14
B18101e15
B18101e16
B18101e17
B18101e18
B18101e19
B18101e20
B18101e21
B18101e22
B18101e23
B18101e24
B18101e25
B18101e26
B18101e27
B18101e28
B18101e29
B18101e30
B18101e31
B18101e32
B18101e33
B18101e34
B18101e35
B18101e36
B18101e37
B18101e38
B18101e39
 
B18101Ae1
B18101Ae2
B18101Ae3
B18101Ae4
B18101Ae5
B18101Ae6
B18101Ae7
B18101Ae8
B18101Ae9
B18101Ae10
 
B18101Be1
B18101Be2
B18101Be3
B18101Be4
B18101Be5
B18101Be6
B18101Be7
B18101Be8
B18101Be9
B18101Be10
 
B18101Ce1
B18101Ce2
B18101Ce3
B18101Ce4
B18101Ce5
B18101Ce6
B18101Ce7
B18101Ce8
B18101Ce9
B18101Ce10
 
B18101De1
B18101De2
B18101De3
B18101De4
B18101De5
B18101De6
B18101De7
B18101De8
B18101De9
B18101De10
 
B18101Ee1
B18101Ee2
B18101Ee3
B18101Ee4
B18101Ee5
B18101Ee6
B18101Ee7
B18101Ee8
B18101Ee9
B18101Ee10
 
B18101Fe1
B18101Fe2
B18101Fe3
B18101Fe4
B18101Fe5
B18101Fe6
B18101Fe7
B18101Fe8
B18101Fe9
B18101Fe10
 
B18101Ge1
B18101Ge2
B18101Ge3
B18101Ge4
B18101Ge5
B18101Ge6
B18101Ge7
B18101Ge8
B18101Ge9
B18101Ge10
 
B18101He1
B18101He2
B18101He3
B18101He4
B18101He5
B18101He6
B18101He7
B18101He8
B18101He9
B18101He10
 
B18101Ie1
B18101Ie2
B18101Ie3
B18101Ie4
B18101Ie5
B18101Ie6
B18101Ie7
B18101Ie8
B18101Ie9
B18101Ie10
 
B18102e1
B18102e2
B18102e3
B18102e4
B18102e5
B18102e6
B18102e7
B18102e8
B18102e9
B18102e10
B18102e11
B18102e12
B18102e13
B18102e14
B18102e15
B18102e16
B18102e17
B18102e18
B18102e19
B18102e20
B18102e21
B18102e22
B18102e23
B18102e24
B18102e25
B18102e26
B18102e27
B18102e28
B18102e29
B18102e30
B18102e31
B18102e32
B18102e33
B18102e34
B18102e35
B18102e36
B18102e37
B18102e38
B18102e39
 
B18103e1
B18103e2
B18103e3
B18103e4
B18103e5
B18103e6
B18103e7
B18103e8
B18103e9
B18103e10
B18103e11
B18103e12
B18103e13
B18103e14
B18103e15
B18103e16
B18103e17
B18103e18
B18103e19
B18103e20
B18103e21
B18103e22
B18103e23
B18103e24
B18103e25
B18103e26
B18103e27
B18103e28
B18103e29
B18103e30
B18103e31
B18103e32
B18103e33
B18103e34
B18103e35
B18103e36
B18103e37
B18103e38
B18103e39
 
B18104e1
B18104e2
B18104e3
B18104e4
B18104e5
B18104e6
B18104e7
B18104e8
B18104e9
B18104e10
B18104e11
B18104e12
B18104e13
B18104e14
B18104e15
B18104e16
B18104e17
B18104e18
B18104e19
B18104e20
B18104e21
B18104e22
B18104e23
B18104e24
B18104e25
B18104e26
B18104e27
B18104e28
B18104e29
B18104e30
B18104e31
B18104e32
B18104e33
;
RUN;
TITLE2;
