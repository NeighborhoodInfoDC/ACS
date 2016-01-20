TITLE2 "m20125md0051000";
DATA work.SFm0051md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0051000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY PRESENCE OF RELATED CHILDREN UNDER 18 YEARS BY AGE OF RELATED CHILDREN (ASIAN ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is Asian alone */
 
B17010Dm1='Total:'
B17010Dm2='Income in the past 12 months below poverty level:'
B17010Dm3='Married-couple family:'
B17010Dm4='With related children under 18 years:'
B17010Dm5='Under 5 years only'
B17010Dm6='Under 5 years and 5 to 17 years'
B17010Dm7='5 to 17 years only'
B17010Dm8='No related children under 18 years'
B17010Dm9='Other family:'
B17010Dm10='Male householder, no wife present:'
B17010Dm11='With related children under 18 years:'
B17010Dm12='Under 5 years only'
B17010Dm13='Under 5 years and 5 to 17 years'
B17010Dm14='5 to 17 years only'
B17010Dm15='No related children under 18 years'
B17010Dm16='Female householder, no husband present:'
B17010Dm17='With related children under 18 years:'
B17010Dm18='Under 5 years only'
B17010Dm19='Under 5 years and 5 to 17 years'
B17010Dm20='5 to 17 years only'
B17010Dm21='No related children under 18 years'
B17010Dm22='Income in the past 12 months at or above poverty level:'
B17010Dm23='Married-couple family:'
B17010Dm24='With related children under 18 years:'
B17010Dm25='Under 5 years only'
B17010Dm26='Under 5 years and 5 to 17 years'
B17010Dm27='5 to 17 years only'
B17010Dm28='No related children under 18 years'
B17010Dm29='Other family:'
B17010Dm30='Male householder, no wife present:'
B17010Dm31='With related children under 18 years:'
B17010Dm32='Under 5 years only'
B17010Dm33='Under 5 years and 5 to 17 years'
B17010Dm34='5 to 17 years only'
B17010Dm35='No related children under 18 years'
B17010Dm36='Female householder, no husband present:'
B17010Dm37='With related children under 18 years:'
B17010Dm38='Under 5 years only'
B17010Dm39='Under 5 years and 5 to 17 years'
B17010Dm40='5 to 17 years only'
B17010Dm41='No related children under 18 years'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY PRESENCE OF RELATED CHILDREN UNDER 18 YEARS BY AGE OF RELATED CHILDREN (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is Native Hawaiian and Other Pacific Islander alone */
 
B17010Em1='Total:'
B17010Em2='Income in the past 12 months below poverty level:'
B17010Em3='Married-couple family:'
B17010Em4='With related children under 18 years:'
B17010Em5='Under 5 years only'
B17010Em6='Under 5 years and 5 to 17 years'
B17010Em7='5 to 17 years only'
B17010Em8='No related children under 18 years'
B17010Em9='Other family:'
B17010Em10='Male householder, no wife present:'
B17010Em11='With related children under 18 years:'
B17010Em12='Under 5 years only'
B17010Em13='Under 5 years and 5 to 17 years'
B17010Em14='5 to 17 years only'
B17010Em15='No related children under 18 years'
B17010Em16='Female householder, no husband present:'
B17010Em17='With related children under 18 years:'
B17010Em18='Under 5 years only'
B17010Em19='Under 5 years and 5 to 17 years'
B17010Em20='5 to 17 years only'
B17010Em21='No related children under 18 years'
B17010Em22='Income in the past 12 months at or above poverty level:'
B17010Em23='Married-couple family:'
B17010Em24='With related children under 18 years:'
B17010Em25='Under 5 years only'
B17010Em26='Under 5 years and 5 to 17 years'
B17010Em27='5 to 17 years only'
B17010Em28='No related children under 18 years'
B17010Em29='Other family:'
B17010Em30='Male householder, no wife present:'
B17010Em31='With related children under 18 years:'
B17010Em32='Under 5 years only'
B17010Em33='Under 5 years and 5 to 17 years'
B17010Em34='5 to 17 years only'
B17010Em35='No related children under 18 years'
B17010Em36='Female householder, no husband present:'
B17010Em37='With related children under 18 years:'
B17010Em38='Under 5 years only'
B17010Em39='Under 5 years and 5 to 17 years'
B17010Em40='5 to 17 years only'
B17010Em41='No related children under 18 years'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY PRESENCE OF RELATED CHILDREN UNDER 18 YEARS BY AGE OF RELATED CHILDREN (SOME OTHER RACE ALONE HOUSEHOLDER) */
/*Universe:  Families with a householder who is Some other race alone */
 
B17010Fm1='Total:'
B17010Fm2='Income in the past 12 months below poverty level:'
B17010Fm3='Married-couple family:'
B17010Fm4='With related children under 18 years:'
B17010Fm5='Under 5 years only'
B17010Fm6='Under 5 years and 5 to 17 years'
B17010Fm7='5 to 17 years only'
B17010Fm8='No related children under 18 years'
B17010Fm9='Other family:'
B17010Fm10='Male householder, no wife present:'
B17010Fm11='With related children under 18 years:'
B17010Fm12='Under 5 years only'
B17010Fm13='Under 5 years and 5 to 17 years'
B17010Fm14='5 to 17 years only'
B17010Fm15='No related children under 18 years'
B17010Fm16='Female householder, no husband present:'
B17010Fm17='With related children under 18 years:'
B17010Fm18='Under 5 years only'
B17010Fm19='Under 5 years and 5 to 17 years'
B17010Fm20='5 to 17 years only'
B17010Fm21='No related children under 18 years'
B17010Fm22='Income in the past 12 months at or above poverty level:'
B17010Fm23='Married-couple family:'
B17010Fm24='With related children under 18 years:'
B17010Fm25='Under 5 years only'
B17010Fm26='Under 5 years and 5 to 17 years'
B17010Fm27='5 to 17 years only'
B17010Fm28='No related children under 18 years'
B17010Fm29='Other family:'
B17010Fm30='Male householder, no wife present:'
B17010Fm31='With related children under 18 years:'
B17010Fm32='Under 5 years only'
B17010Fm33='Under 5 years and 5 to 17 years'
B17010Fm34='5 to 17 years only'
B17010Fm35='No related children under 18 years'
B17010Fm36='Female householder, no husband present:'
B17010Fm37='With related children under 18 years:'
B17010Fm38='Under 5 years only'
B17010Fm39='Under 5 years and 5 to 17 years'
B17010Fm40='5 to 17 years only'
B17010Fm41='No related children under 18 years'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY PRESENCE OF RELATED CHILDREN UNDER 18 YEARS BY AGE OF RELATED CHILDREN (TWO OR MORE RACES HOUSEHOLDER) */
/*Universe:  Families with a householder who is Two or more races */
 
B17010Gm1='Total:'
B17010Gm2='Income in the past 12 months below poverty level:'
B17010Gm3='Married-couple family:'
B17010Gm4='With related children under 18 years:'
B17010Gm5='Under 5 years only'
B17010Gm6='Under 5 years and 5 to 17 years'
B17010Gm7='5 to 17 years only'
B17010Gm8='No related children under 18 years'
B17010Gm9='Other family:'
B17010Gm10='Male householder, no wife present:'
B17010Gm11='With related children under 18 years:'
B17010Gm12='Under 5 years only'
B17010Gm13='Under 5 years and 5 to 17 years'
B17010Gm14='5 to 17 years only'
B17010Gm15='No related children under 18 years'
B17010Gm16='Female householder, no husband present:'
B17010Gm17='With related children under 18 years:'
B17010Gm18='Under 5 years only'
B17010Gm19='Under 5 years and 5 to 17 years'
B17010Gm20='5 to 17 years only'
B17010Gm21='No related children under 18 years'
B17010Gm22='Income in the past 12 months at or above poverty level:'
B17010Gm23='Married-couple family:'
B17010Gm24='With related children under 18 years:'
B17010Gm25='Under 5 years only'
B17010Gm26='Under 5 years and 5 to 17 years'
B17010Gm27='5 to 17 years only'
B17010Gm28='No related children under 18 years'
B17010Gm29='Other family:'
B17010Gm30='Male householder, no wife present:'
B17010Gm31='With related children under 18 years:'
B17010Gm32='Under 5 years only'
B17010Gm33='Under 5 years and 5 to 17 years'
B17010Gm34='5 to 17 years only'
B17010Gm35='No related children under 18 years'
B17010Gm36='Female householder, no husband present:'
B17010Gm37='With related children under 18 years:'
B17010Gm38='Under 5 years only'
B17010Gm39='Under 5 years and 5 to 17 years'
B17010Gm40='5 to 17 years only'
B17010Gm41='No related children under 18 years'
/*POVERTY STATUS IN THE PAST 12 MONTHS OF FAMILIES BY FAMILY TYPE BY PRESENCE OF RELATED CHILDREN UNDER 18 YEARS BY AGE OF RELATED CHILDREN (WHITE ALONE, NOT HISPANIC OR LATINO HOUSEHOLDER) */
/*Universe:  Families with a householder who is White alone, not Hispanic or Latino */
 
B17010Hm1='Total:'
B17010Hm2='Income in the past 12 months below poverty level:'
B17010Hm3='Married-couple family:'
B17010Hm4='With related children under 18 years:'
B17010Hm5='Under 5 years only'
B17010Hm6='Under 5 years and 5 to 17 years'
B17010Hm7='5 to 17 years only'
B17010Hm8='No related children under 18 years'
B17010Hm9='Other family:'
B17010Hm10='Male householder, no wife present:'
B17010Hm11='With related children under 18 years:'
B17010Hm12='Under 5 years only'
B17010Hm13='Under 5 years and 5 to 17 years'
B17010Hm14='5 to 17 years only'
B17010Hm15='No related children under 18 years'
B17010Hm16='Female householder, no husband present:'
B17010Hm17='With related children under 18 years:'
B17010Hm18='Under 5 years only'
B17010Hm19='Under 5 years and 5 to 17 years'
B17010Hm20='5 to 17 years only'
B17010Hm21='No related children under 18 years'
B17010Hm22='Income in the past 12 months at or above poverty level:'
B17010Hm23='Married-couple family:'
B17010Hm24='With related children under 18 years:'
B17010Hm25='Under 5 years only'
B17010Hm26='Under 5 years and 5 to 17 years'
B17010Hm27='5 to 17 years only'
B17010Hm28='No related children under 18 years'
B17010Hm29='Other family:'
B17010Hm30='Male householder, no wife present:'
B17010Hm31='With related children under 18 years:'
B17010Hm32='Under 5 years only'
B17010Hm33='Under 5 years and 5 to 17 years'
B17010Hm34='5 to 17 years only'
B17010Hm35='No related children under 18 years'
B17010Hm36='Female householder, no husband present:'
B17010Hm37='With related children under 18 years:'
B17010Hm38='Under 5 years only'
B17010Hm39='Under 5 years and 5 to 17 years'
B17010Hm40='5 to 17 years only'
B17010Hm41='No related children under 18 years'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B17010Dm1
B17010Dm2
B17010Dm3
B17010Dm4
B17010Dm5
B17010Dm6
B17010Dm7
B17010Dm8
B17010Dm9
B17010Dm10
B17010Dm11
B17010Dm12
B17010Dm13
B17010Dm14
B17010Dm15
B17010Dm16
B17010Dm17
B17010Dm18
B17010Dm19
B17010Dm20
B17010Dm21
B17010Dm22
B17010Dm23
B17010Dm24
B17010Dm25
B17010Dm26
B17010Dm27
B17010Dm28
B17010Dm29
B17010Dm30
B17010Dm31
B17010Dm32
B17010Dm33
B17010Dm34
B17010Dm35
B17010Dm36
B17010Dm37
B17010Dm38
B17010Dm39
B17010Dm40
B17010Dm41
 
B17010Em1
B17010Em2
B17010Em3
B17010Em4
B17010Em5
B17010Em6
B17010Em7
B17010Em8
B17010Em9
B17010Em10
B17010Em11
B17010Em12
B17010Em13
B17010Em14
B17010Em15
B17010Em16
B17010Em17
B17010Em18
B17010Em19
B17010Em20
B17010Em21
B17010Em22
B17010Em23
B17010Em24
B17010Em25
B17010Em26
B17010Em27
B17010Em28
B17010Em29
B17010Em30
B17010Em31
B17010Em32
B17010Em33
B17010Em34
B17010Em35
B17010Em36
B17010Em37
B17010Em38
B17010Em39
B17010Em40
B17010Em41
 
B17010Fm1
B17010Fm2
B17010Fm3
B17010Fm4
B17010Fm5
B17010Fm6
B17010Fm7
B17010Fm8
B17010Fm9
B17010Fm10
B17010Fm11
B17010Fm12
B17010Fm13
B17010Fm14
B17010Fm15
B17010Fm16
B17010Fm17
B17010Fm18
B17010Fm19
B17010Fm20
B17010Fm21
B17010Fm22
B17010Fm23
B17010Fm24
B17010Fm25
B17010Fm26
B17010Fm27
B17010Fm28
B17010Fm29
B17010Fm30
B17010Fm31
B17010Fm32
B17010Fm33
B17010Fm34
B17010Fm35
B17010Fm36
B17010Fm37
B17010Fm38
B17010Fm39
B17010Fm40
B17010Fm41
 
B17010Gm1
B17010Gm2
B17010Gm3
B17010Gm4
B17010Gm5
B17010Gm6
B17010Gm7
B17010Gm8
B17010Gm9
B17010Gm10
B17010Gm11
B17010Gm12
B17010Gm13
B17010Gm14
B17010Gm15
B17010Gm16
B17010Gm17
B17010Gm18
B17010Gm19
B17010Gm20
B17010Gm21
B17010Gm22
B17010Gm23
B17010Gm24
B17010Gm25
B17010Gm26
B17010Gm27
B17010Gm28
B17010Gm29
B17010Gm30
B17010Gm31
B17010Gm32
B17010Gm33
B17010Gm34
B17010Gm35
B17010Gm36
B17010Gm37
B17010Gm38
B17010Gm39
B17010Gm40
B17010Gm41
 
B17010Hm1
B17010Hm2
B17010Hm3
B17010Hm4
B17010Hm5
B17010Hm6
B17010Hm7
B17010Hm8
B17010Hm9
B17010Hm10
B17010Hm11
B17010Hm12
B17010Hm13
B17010Hm14
B17010Hm15
B17010Hm16
B17010Hm17
B17010Hm18
B17010Hm19
B17010Hm20
B17010Hm21
B17010Hm22
B17010Hm23
B17010Hm24
B17010Hm25
B17010Hm26
B17010Hm27
B17010Hm28
B17010Hm29
B17010Hm30
B17010Hm31
B17010Hm32
B17010Hm33
B17010Hm34
B17010Hm35
B17010Hm36
B17010Hm37
B17010Hm38
B17010Hm39
B17010Hm40
B17010Hm41
;
RUN;
TITLE2;
