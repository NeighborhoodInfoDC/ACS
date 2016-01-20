TITLE2 "m20125dc0014000";
DATA work.SFm0014dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0014000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*PLACE OF BIRTH (HISPANIC OR LATINO) IN PUERTO RICO */
/*Universe:  Hispanic or Latino population in Puerto Rico */
 
B06004IPRm1='Total:'
B06004IPRm2='Born in Puerto Rico'
B06004IPRm3='Born in the United States'
B06004IPRm4='Native; born elsewhere'
B06004IPRm5='Foreign born'
/*PLACE OF BIRTH BY LANGUAGE SPOKEN AT HOME AND ABILITY TO SPEAK ENGLISH IN THE UNITED STATES */
/*Universe:  Population 5 years and over in the United States */
 
B06007m1='Total:'
B06007m2='Speak only English'
B06007m3='Speak Spanish:'
B06007m4='Speak English "very well"'
B06007m5='Speak English less than "very well"'
B06007m6='Speak other languages:'
B06007m7='Speak English "very well"'
B06007m8='Speak English less than "very well"'
B06007m9='Born in state of residence:'
B06007m10='Speak only English'
B06007m11='Speak Spanish:'
B06007m12='Speak English "very well"'
B06007m13='Speak English less than "very well"'
B06007m14='Speak other languages:'
B06007m15='Speak English "very well"'
B06007m16='Speak English less than "very well"'
B06007m17='Born in other state in the United States:'
B06007m18='Speak only English'
B06007m19='Speak Spanish:'
B06007m20='Speak English "very well"'
B06007m21='Speak English less than "very well"'
B06007m22='Speak other languages:'
B06007m23='Speak English "very well"'
B06007m24='Speak English less than "very well"'
B06007m25='Native; born outside the United States:'
B06007m26='Speak only English'
B06007m27='Speak Spanish:'
B06007m28='Speak English "very well"'
B06007m29='Speak English less than "very well"'
B06007m30='Speak other languages:'
B06007m31='Speak English "very well"'
B06007m32='Speak English less than "very well"'
B06007m33='Foreign born:'
B06007m34='Speak only English'
B06007m35='Speak Spanish:'
B06007m36='Speak English "very well"'
B06007m37='Speak English less than "very well"'
B06007m38='Speak other languages:'
B06007m39='Speak English "very well"'
B06007m40='Speak English less than "very well"'
/*PLACE OF BIRTH BY LANGUAGE SPOKEN AT HOME AND ABILITY TO SPEAK ENGLISH IN PUERTO RICO */
/*Universe:  Population 5 years and over in Puerto Rico */
 
B06007PRm1='Total:'
B06007PRm2='Speak only English'
B06007PRm3='Speak Spanish:'
B06007PRm4='Speak English "very well"'
B06007PRm5='Speak English less than "very well"'
B06007PRm6='Speak other languages:'
B06007PRm7='Speak English "very well"'
B06007PRm8='Speak English less than "very well"'
B06007PRm9='Born in Puerto Rico:'
B06007PRm10='Speak only English'
B06007PRm11='Speak Spanish:'
B06007PRm12='Speak English "very well"'
B06007PRm13='Speak English less than "very well"'
B06007PRm14='Speak other languages:'
B06007PRm15='Speak English "very well"'
B06007PRm16='Speak English less than "very well"'
B06007PRm17='Born in the United States:'
B06007PRm18='Speak only English'
B06007PRm19='Speak Spanish:'
B06007PRm20='Speak English "very well"'
B06007PRm21='Speak English less than "very well"'
B06007PRm22='Speak other languages:'
B06007PRm23='Speak English "very well"'
B06007PRm24='Speak English less than "very well"'
B06007PRm25='Native; born elsewhere:'
B06007PRm26='Speak only English'
B06007PRm27='Speak Spanish:'
B06007PRm28='Speak English "very well"'
B06007PRm29='Speak English less than "very well"'
B06007PRm30='Speak other languages:'
B06007PRm31='Speak English "very well"'
B06007PRm32='Speak English less than "very well"'
B06007PRm33='Foreign born:'
B06007PRm34='Speak only English'
B06007PRm35='Speak Spanish:'
B06007PRm36='Speak English "very well"'
B06007PRm37='Speak English less than "very well"'
B06007PRm38='Speak other languages:'
B06007PRm39='Speak English "very well"'
B06007PRm40='Speak English less than "very well"'
/*PLACE OF BIRTH BY MARITAL STATUS IN THE UNITED STATES */
/*Universe:  Population 15 years and over in the United States */
 
B06008m1='Total:'
B06008m2='Never married'
B06008m3='Now married, except separated'
B06008m4='Divorced'
B06008m5='Separated'
B06008m6='Widowed'
B06008m7='Born in state of residence:'
B06008m8='Never married'
B06008m9='Now married, except separated'
B06008m10='Divorced'
B06008m11='Separated'
B06008m12='Widowed'
B06008m13='Born in other state in the United States:'
B06008m14='Never married'
B06008m15='Now married, except separated'
B06008m16='Divorced'
B06008m17='Separated'
B06008m18='Widowed'
B06008m19='Native; born outside the United States:'
B06008m20='Never married'
B06008m21='Now married, except separated'
B06008m22='Divorced'
B06008m23='Separated'
B06008m24='Widowed'
B06008m25='Foreign born:'
B06008m26='Never married'
B06008m27='Now married, except separated'
B06008m28='Divorced'
B06008m29='Separated'
B06008m30='Widowed'
/*PLACE OF BIRTH BY MARITAL STATUS IN PUERTO RICO */
/*Universe:  Population 15 years and over in Puerto Rico */
 
B06008PRm1='Total:'
B06008PRm2='Never married'
B06008PRm3='Now married, except separated'
B06008PRm4='Divorced'
B06008PRm5='Separated'
B06008PRm6='Widowed'
B06008PRm7='Born in Puerto Rico:'
B06008PRm8='Never married'
B06008PRm9='Now married, except separated'
B06008PRm10='Divorced'
B06008PRm11='Separated'
B06008PRm12='Widowed'
B06008PRm13='Born in the United States:'
B06008PRm14='Never married'
B06008PRm15='Now married, except separated'
B06008PRm16='Divorced'
B06008PRm17='Separated'
B06008PRm18='Widowed'
B06008PRm19='Native; born elsewhere:'
B06008PRm20='Never married'
B06008PRm21='Now married, except separated'
B06008PRm22='Divorced'
B06008PRm23='Separated'
B06008PRm24='Widowed'
B06008PRm25='Foreign born:'
B06008PRm26='Never married'
B06008PRm27='Now married, except separated'
B06008PRm28='Divorced'
B06008PRm29='Separated'
B06008PRm30='Widowed'
/*PLACE OF BIRTH BY EDUCATIONAL ATTAINMENT IN THE UNITED STATES */
/*Universe:  Population 25 years and over in the United States */
 
B06009m1='Total:'
B06009m2='Less than high school graduate'
B06009m3='High school graduate (includes equivalency)'
B06009m4='Some college or associate''s degree'
B06009m5='Bachelor''s degree'
B06009m6='Graduate or professional degree'
B06009m7='Born in state of residence:'
B06009m8='Less than high school graduate'
B06009m9='High school graduate (includes equivalency)'
B06009m10='Some college or associate''s degree'
B06009m11='Bachelor''s degree'
B06009m12='Graduate or professional degree'
B06009m13='Born in other state in the United States:'
B06009m14='Less than high school graduate'
B06009m15='High school graduate (includes equivalency)'
B06009m16='Some college or associate''s degree'
B06009m17='Bachelor''s degree'
B06009m18='Graduate or professional degree'
B06009m19='Native; born outside the United States:'
B06009m20='Less than high school graduate'
B06009m21='High school graduate (includes equivalency)'
B06009m22='Some college or associate''s degree'
B06009m23='Bachelor''s degree'
B06009m24='Graduate or professional degree'
B06009m25='Foreign born:'
B06009m26='Less than high school graduate'
B06009m27='High school graduate (includes equivalency)'
B06009m28='Some college or associate''s degree'
B06009m29='Bachelor''s degree'
B06009m30='Graduate or professional degree'
/*PLACE OF BIRTH BY EDUCATIONAL ATTAINMENT IN PUERTO RICO */
/*Universe:  Population 25 years and over in Puerto Rico */
 
B06009PRm1='Total:'
B06009PRm2='Less than high school graduate'
B06009PRm3='High school graduate (includes equivalency)'
B06009PRm4='Some college or associate''s degree'
B06009PRm5='Bachelor''s degree'
B06009PRm6='Graduate or professional degree'
B06009PRm7='Born in Puerto Rico:'
B06009PRm8='Less than high school graduate'
B06009PRm9='High school graduate (includes equivalency)'
B06009PRm10='Some college or associate''s degree'
B06009PRm11='Bachelor''s degree'
B06009PRm12='Graduate or professional degree'
B06009PRm13='Born in the United States:'
B06009PRm14='Less than high school graduate'
B06009PRm15='High school graduate (includes equivalency)'
B06009PRm16='Some college or associate''s degree'
B06009PRm17='Bachelor''s degree'
B06009PRm18='Graduate or professional degree'
B06009PRm19='Native; born elsewhere:'
B06009PRm20='Less than high school graduate'
B06009PRm21='High school graduate (includes equivalency)'
B06009PRm22='Some college or associate''s degree'
B06009PRm23='Bachelor''s degree'
B06009PRm24='Graduate or professional degree'
B06009PRm25='Foreign born:'
B06009PRm26='Less than high school graduate'
B06009PRm27='High school graduate (includes equivalency)'
B06009PRm28='Some college or associate''s degree'
B06009PRm29='Bachelor''s degree'
B06009PRm30='Graduate or professional degree'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B06004IPRm1
B06004IPRm2
B06004IPRm3
B06004IPRm4
B06004IPRm5
 
B06007m1
B06007m2
B06007m3
B06007m4
B06007m5
B06007m6
B06007m7
B06007m8
B06007m9
B06007m10
B06007m11
B06007m12
B06007m13
B06007m14
B06007m15
B06007m16
B06007m17
B06007m18
B06007m19
B06007m20
B06007m21
B06007m22
B06007m23
B06007m24
B06007m25
B06007m26
B06007m27
B06007m28
B06007m29
B06007m30
B06007m31
B06007m32
B06007m33
B06007m34
B06007m35
B06007m36
B06007m37
B06007m38
B06007m39
B06007m40
 
B06007PRm1
B06007PRm2
B06007PRm3
B06007PRm4
B06007PRm5
B06007PRm6
B06007PRm7
B06007PRm8
B06007PRm9
B06007PRm10
B06007PRm11
B06007PRm12
B06007PRm13
B06007PRm14
B06007PRm15
B06007PRm16
B06007PRm17
B06007PRm18
B06007PRm19
B06007PRm20
B06007PRm21
B06007PRm22
B06007PRm23
B06007PRm24
B06007PRm25
B06007PRm26
B06007PRm27
B06007PRm28
B06007PRm29
B06007PRm30
B06007PRm31
B06007PRm32
B06007PRm33
B06007PRm34
B06007PRm35
B06007PRm36
B06007PRm37
B06007PRm38
B06007PRm39
B06007PRm40
 
B06008m1
B06008m2
B06008m3
B06008m4
B06008m5
B06008m6
B06008m7
B06008m8
B06008m9
B06008m10
B06008m11
B06008m12
B06008m13
B06008m14
B06008m15
B06008m16
B06008m17
B06008m18
B06008m19
B06008m20
B06008m21
B06008m22
B06008m23
B06008m24
B06008m25
B06008m26
B06008m27
B06008m28
B06008m29
B06008m30
 
B06008PRm1
B06008PRm2
B06008PRm3
B06008PRm4
B06008PRm5
B06008PRm6
B06008PRm7
B06008PRm8
B06008PRm9
B06008PRm10
B06008PRm11
B06008PRm12
B06008PRm13
B06008PRm14
B06008PRm15
B06008PRm16
B06008PRm17
B06008PRm18
B06008PRm19
B06008PRm20
B06008PRm21
B06008PRm22
B06008PRm23
B06008PRm24
B06008PRm25
B06008PRm26
B06008PRm27
B06008PRm28
B06008PRm29
B06008PRm30
 
B06009m1
B06009m2
B06009m3
B06009m4
B06009m5
B06009m6
B06009m7
B06009m8
B06009m9
B06009m10
B06009m11
B06009m12
B06009m13
B06009m14
B06009m15
B06009m16
B06009m17
B06009m18
B06009m19
B06009m20
B06009m21
B06009m22
B06009m23
B06009m24
B06009m25
B06009m26
B06009m27
B06009m28
B06009m29
B06009m30
 
B06009PRm1
B06009PRm2
B06009PRm3
B06009PRm4
B06009PRm5
B06009PRm6
B06009PRm7
B06009PRm8
B06009PRm9
B06009PRm10
B06009PRm11
B06009PRm12
B06009PRm13
B06009PRm14
B06009PRm15
B06009PRm16
B06009PRm17
B06009PRm18
B06009PRm19
B06009PRm20
B06009PRm21
B06009PRm22
B06009PRm23
B06009PRm24
B06009PRm25
B06009PRm26
B06009PRm27
B06009PRm28
B06009PRm29
B06009PRm30
;
RUN;
TITLE2;
