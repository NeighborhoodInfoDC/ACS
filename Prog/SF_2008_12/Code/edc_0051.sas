TITLE2 "e20125dc0051000";
DATA work.SFe0051dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0051000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY PRESENCE OF RELATED CHILDREN UNDER 18 YEARS BY AGE OF RELATED CHILDREN (ASIAN ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is Asian alone */
 
B17010De1='Total:'
B17010De2='Income in the past 12 months below poverty level:'
B17010De3='Married-couple family:'
B17010De4='With related children under 18 years:'
B17010De5='Under 5 years only'
B17010De6='Under 5 years and 5 to 17 years'
B17010De7='5 to 17 years only'
B17010De8='No related children under 18 years'
B17010De9='Other family:'
B17010De10='Male householder, no wife present:'
B17010De11='With related children under 18 years:'
B17010De12='Under 5 years only'
B17010De13='Under 5 years and 5 to 17 years'
B17010De14='5 to 17 years only'
B17010De15='No related children under 18 years'
B17010De16='Female householder, no husband present:'
B17010De17='With related children under 18 years:'
B17010De18='Under 5 years only'
B17010De19='Under 5 years and 5 to 17 years'
B17010De20='5 to 17 years only'
B17010De21='No related children under 18 years'
B17010De22='Income in the past 12 months at or above poverty level:'
B17010De23='Married-couple family:'
B17010De24='With related children under 18 years:'
B17010De25='Under 5 years only'
B17010De26='Under 5 years and 5 to 17 years'
B17010De27='5 to 17 years only'
B17010De28='No related children under 18 years'
B17010De29='Other family:'
B17010De30='Male householder, no wife present:'
B17010De31='With related children under 18 years:'
B17010De32='Under 5 years only'
B17010De33='Under 5 years and 5 to 17 years'
B17010De34='5 to 17 years only'
B17010De35='No related children under 18 years'
B17010De36='Female householder, no husband present:'
B17010De37='With related children under 18 years:'
B17010De38='Under 5 years only'
B17010De39='Under 5 years and 5 to 17 years'
B17010De40='5 to 17 years only'
B17010De41='No related children under 18 years'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY PRESENCE OF RELATED CHILDREN UNDER 18 YEARS BY AGE OF RELATED CHILDREN (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is Native Hawaiian and Other Pacific Islander alone */
 
B17010Ee1='Total:'
B17010Ee2='Income in the past 12 months below poverty level:'
B17010Ee3='Married-couple family:'
B17010Ee4='With related children under 18 years:'
B17010Ee5='Under 5 years only'
B17010Ee6='Under 5 years and 5 to 17 years'
B17010Ee7='5 to 17 years only'
B17010Ee8='No related children under 18 years'
B17010Ee9='Other family:'
B17010Ee10='Male householder, no wife present:'
B17010Ee11='With related children under 18 years:'
B17010Ee12='Under 5 years only'
B17010Ee13='Under 5 years and 5 to 17 years'
B17010Ee14='5 to 17 years only'
B17010Ee15='No related children under 18 years'
B17010Ee16='Female householder, no husband present:'
B17010Ee17='With related children under 18 years:'
B17010Ee18='Under 5 years only'
B17010Ee19='Under 5 years and 5 to 17 years'
B17010Ee20='5 to 17 years only'
B17010Ee21='No related children under 18 years'
B17010Ee22='Income in the past 12 months at or above poverty level:'
B17010Ee23='Married-couple family:'
B17010Ee24='With related children under 18 years:'
B17010Ee25='Under 5 years only'
B17010Ee26='Under 5 years and 5 to 17 years'
B17010Ee27='5 to 17 years only'
B17010Ee28='No related children under 18 years'
B17010Ee29='Other family:'
B17010Ee30='Male householder, no wife present:'
B17010Ee31='With related children under 18 years:'
B17010Ee32='Under 5 years only'
B17010Ee33='Under 5 years and 5 to 17 years'
B17010Ee34='5 to 17 years only'
B17010Ee35='No related children under 18 years'
B17010Ee36='Female householder, no husband present:'
B17010Ee37='With related children under 18 years:'
B17010Ee38='Under 5 years only'
B17010Ee39='Under 5 years and 5 to 17 years'
B17010Ee40='5 to 17 years only'
B17010Ee41='No related children under 18 years'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY PRESENCE OF RELATED CHILDREN UNDER 18 YEARS BY AGE OF RELATED CHILDREN (SOME OTHER RACE ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is Some other race alone */
 
B17010Fe1='Total:'
B17010Fe2='Income in the past 12 months below poverty level:'
B17010Fe3='Married-couple family:'
B17010Fe4='With related children under 18 years:'
B17010Fe5='Under 5 years only'
B17010Fe6='Under 5 years and 5 to 17 years'
B17010Fe7='5 to 17 years only'
B17010Fe8='No related children under 18 years'
B17010Fe9='Other family:'
B17010Fe10='Male householder, no wife present:'
B17010Fe11='With related children under 18 years:'
B17010Fe12='Under 5 years only'
B17010Fe13='Under 5 years and 5 to 17 years'
B17010Fe14='5 to 17 years only'
B17010Fe15='No related children under 18 years'
B17010Fe16='Female householder, no husband present:'
B17010Fe17='With related children under 18 years:'
B17010Fe18='Under 5 years only'
B17010Fe19='Under 5 years and 5 to 17 years'
B17010Fe20='5 to 17 years only'
B17010Fe21='No related children under 18 years'
B17010Fe22='Income in the past 12 months at or above poverty level:'
B17010Fe23='Married-couple family:'
B17010Fe24='With related children under 18 years:'
B17010Fe25='Under 5 years only'
B17010Fe26='Under 5 years and 5 to 17 years'
B17010Fe27='5 to 17 years only'
B17010Fe28='No related children under 18 years'
B17010Fe29='Other family:'
B17010Fe30='Male householder, no wife present:'
B17010Fe31='With related children under 18 years:'
B17010Fe32='Under 5 years only'
B17010Fe33='Under 5 years and 5 to 17 years'
B17010Fe34='5 to 17 years only'
B17010Fe35='No related children under 18 years'
B17010Fe36='Female householder, no husband present:'
B17010Fe37='With related children under 18 years:'
B17010Fe38='Under 5 years only'
B17010Fe39='Under 5 years and 5 to 17 years'
B17010Fe40='5 to 17 years only'
B17010Fe41='No related children under 18 years'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY PRESENCE OF RELATED CHILDREN UNDER 18 YEARS BY AGE OF RELATED CHILDREN (TWO OR MORE RACES HOUSEHOLDER) */
/*Universe:  Families with a householder who is Two or more races */
 
B17010Ge1='Total:'
B17010Ge2='Income in the past 12 months below poverty level:'
B17010Ge3='Married-couple family:'
B17010Ge4='With related children under 18 years:'
B17010Ge5='Under 5 years only'
B17010Ge6='Under 5 years and 5 to 17 years'
B17010Ge7='5 to 17 years only'
B17010Ge8='No related children under 18 years'
B17010Ge9='Other family:'
B17010Ge10='Male householder, no wife present:'
B17010Ge11='With related children under 18 years:'
B17010Ge12='Under 5 years only'
B17010Ge13='Under 5 years and 5 to 17 years'
B17010Ge14='5 to 17 years only'
B17010Ge15='No related children under 18 years'
B17010Ge16='Female householder, no husband present:'
B17010Ge17='With related children under 18 years:'
B17010Ge18='Under 5 years only'
B17010Ge19='Under 5 years and 5 to 17 years'
B17010Ge20='5 to 17 years only'
B17010Ge21='No related children under 18 years'
B17010Ge22='Income in the past 12 months at or above poverty level:'
B17010Ge23='Married-couple family:'
B17010Ge24='With related children under 18 years:'
B17010Ge25='Under 5 years only'
B17010Ge26='Under 5 years and 5 to 17 years'
B17010Ge27='5 to 17 years only'
B17010Ge28='No related children under 18 years'
B17010Ge29='Other family:'
B17010Ge30='Male householder, no wife present:'
B17010Ge31='With related children under 18 years:'
B17010Ge32='Under 5 years only'
B17010Ge33='Under 5 years and 5 to 17 years'
B17010Ge34='5 to 17 years only'
B17010Ge35='No related children under 18 years'
B17010Ge36='Female householder, no husband present:'
B17010Ge37='With related children under 18 years:'
B17010Ge38='Under 5 years only'
B17010Ge39='Under 5 years and 5 to 17 years'
B17010Ge40='5 to 17 years only'
B17010Ge41='No related children under 18 years'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY PRESENCE OF RELATED CHILDREN UNDER 18 YEARS BY AGE OF RELATED CHILDREN (WHITE ALONE, NOT HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Families with a householder who is White alone, not Hispanic or Latino */
 
B17010He1='Total:'
B17010He2='Income in the past 12 months below poverty level:'
B17010He3='Married-couple family:'
B17010He4='With related children under 18 years:'
B17010He5='Under 5 years only'
B17010He6='Under 5 years and 5 to 17 years'
B17010He7='5 to 17 years only'
B17010He8='No related children under 18 years'
B17010He9='Other family:'
B17010He10='Male householder, no wife present:'
B17010He11='With related children under 18 years:'
B17010He12='Under 5 years only'
B17010He13='Under 5 years and 5 to 17 years'
B17010He14='5 to 17 years only'
B17010He15='No related children under 18 years'
B17010He16='Female householder, no husband present:'
B17010He17='With related children under 18 years:'
B17010He18='Under 5 years only'
B17010He19='Under 5 years and 5 to 17 years'
B17010He20='5 to 17 years only'
B17010He21='No related children under 18 years'
B17010He22='Income in the past 12 months at or above poverty level:'
B17010He23='Married-couple family:'
B17010He24='With related children under 18 years:'
B17010He25='Under 5 years only'
B17010He26='Under 5 years and 5 to 17 years'
B17010He27='5 to 17 years only'
B17010He28='No related children under 18 years'
B17010He29='Other family:'
B17010He30='Male householder, no wife present:'
B17010He31='With related children under 18 years:'
B17010He32='Under 5 years only'
B17010He33='Under 5 years and 5 to 17 years'
B17010He34='5 to 17 years only'
B17010He35='No related children under 18 years'
B17010He36='Female householder, no husband present:'
B17010He37='With related children under 18 years:'
B17010He38='Under 5 years only'
B17010He39='Under 5 years and 5 to 17 years'
B17010He40='5 to 17 years only'
B17010He41='No related children under 18 years'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B17010De1
B17010De2
B17010De3
B17010De4
B17010De5
B17010De6
B17010De7
B17010De8
B17010De9
B17010De10
B17010De11
B17010De12
B17010De13
B17010De14
B17010De15
B17010De16
B17010De17
B17010De18
B17010De19
B17010De20
B17010De21
B17010De22
B17010De23
B17010De24
B17010De25
B17010De26
B17010De27
B17010De28
B17010De29
B17010De30
B17010De31
B17010De32
B17010De33
B17010De34
B17010De35
B17010De36
B17010De37
B17010De38
B17010De39
B17010De40
B17010De41
 
B17010Ee1
B17010Ee2
B17010Ee3
B17010Ee4
B17010Ee5
B17010Ee6
B17010Ee7
B17010Ee8
B17010Ee9
B17010Ee10
B17010Ee11
B17010Ee12
B17010Ee13
B17010Ee14
B17010Ee15
B17010Ee16
B17010Ee17
B17010Ee18
B17010Ee19
B17010Ee20
B17010Ee21
B17010Ee22
B17010Ee23
B17010Ee24
B17010Ee25
B17010Ee26
B17010Ee27
B17010Ee28
B17010Ee29
B17010Ee30
B17010Ee31
B17010Ee32
B17010Ee33
B17010Ee34
B17010Ee35
B17010Ee36
B17010Ee37
B17010Ee38
B17010Ee39
B17010Ee40
B17010Ee41
 
B17010Fe1
B17010Fe2
B17010Fe3
B17010Fe4
B17010Fe5
B17010Fe6
B17010Fe7
B17010Fe8
B17010Fe9
B17010Fe10
B17010Fe11
B17010Fe12
B17010Fe13
B17010Fe14
B17010Fe15
B17010Fe16
B17010Fe17
B17010Fe18
B17010Fe19
B17010Fe20
B17010Fe21
B17010Fe22
B17010Fe23
B17010Fe24
B17010Fe25
B17010Fe26
B17010Fe27
B17010Fe28
B17010Fe29
B17010Fe30
B17010Fe31
B17010Fe32
B17010Fe33
B17010Fe34
B17010Fe35
B17010Fe36
B17010Fe37
B17010Fe38
B17010Fe39
B17010Fe40
B17010Fe41
 
B17010Ge1
B17010Ge2
B17010Ge3
B17010Ge4
B17010Ge5
B17010Ge6
B17010Ge7
B17010Ge8
B17010Ge9
B17010Ge10
B17010Ge11
B17010Ge12
B17010Ge13
B17010Ge14
B17010Ge15
B17010Ge16
B17010Ge17
B17010Ge18
B17010Ge19
B17010Ge20
B17010Ge21
B17010Ge22
B17010Ge23
B17010Ge24
B17010Ge25
B17010Ge26
B17010Ge27
B17010Ge28
B17010Ge29
B17010Ge30
B17010Ge31
B17010Ge32
B17010Ge33
B17010Ge34
B17010Ge35
B17010Ge36
B17010Ge37
B17010Ge38
B17010Ge39
B17010Ge40
B17010Ge41
 
B17010He1
B17010He2
B17010He3
B17010He4
B17010He5
B17010He6
B17010He7
B17010He8
B17010He9
B17010He10
B17010He11
B17010He12
B17010He13
B17010He14
B17010He15
B17010He16
B17010He17
B17010He18
B17010He19
B17010He20
B17010He21
B17010He22
B17010He23
B17010He24
B17010He25
B17010He26
B17010He27
B17010He28
B17010He29
B17010He30
B17010He31
B17010He32
B17010He33
B17010He34
B17010He35
B17010He36
B17010He37
B17010He38
B17010He39
B17010He40
B17010He41
;
RUN;
TITLE2;
