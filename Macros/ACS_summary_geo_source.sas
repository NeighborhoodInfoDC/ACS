/**************************************************************************
 Program:  ACS_summary_geo_source.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  02/04/16
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Create source data for generating summary geogarphy
 data sets.

 Modifications:
	7/29/2016 - added additional variable calculations and labels, including racial breakdowns.
**************************************************************************/

%macro  ACS_summary_geo_source( source_geo );

  %global source_geo_var source_geo_suffix source_geo_wt_file_fmt source_ds source_ds_work source_geo_label;

  %if %upcase( &source_geo ) = BG00 %then %do;
     %let source_geo_var = GeoBg2000;
     %let source_geo_suffix = _bg;
     %let source_geo_wt_file_fmt = $geobw0f.;
     %let source_ds = Acs_sf_&_years._&_state_ab._bg00;
     %let source_geo_label = Block group;
  %end;
  %else %if %upcase( &source_geo ) = TR00 %then %do;
     %let source_geo_var = Geo2000;
     %let source_geo_suffix = _tr;
     %let source_geo_wt_file_fmt = $geotw0f.;
     %let source_ds = Acs_sf_&_years._&_state_ab._tr00;
     %let source_geo_label = Census tract;
  %end;
  %else %if %upcase( &source_geo ) = BG10 %then %do;
     %let source_geo_var = GeoBg2010;
     %let source_geo_suffix = _bg;
     %let source_geo_wt_file_fmt = $geobw1f.;
     %let source_ds = Acs_sf_&_years._&_state_ab._bg10;
     %let source_geo_label = Block group;
  %end;
  %else %if %upcase( &source_geo ) = TR10 %then %do;
     %let source_geo_var = Geo2010;
     %let source_geo_suffix = _tr;
     %let source_geo_wt_file_fmt = $geotw1f.;
     %let source_ds = Acs_sf_&_years._&_state_ab._tr10;
     %let source_geo_label = Census tract;
  %end;
  %else %if %upcase( &source_geo ) = REGCOUNTY %then %do;
     %let source_geo_var = RegCounty;
     %let source_geo_suffix = _regcnt;
     %let source_geo_wt_file_fmt = $geotw1f.;
     %let source_ds = Acs_sf_&_years._&_state_ab._regcnt;
     %let source_geo_label = Regional county;
  %end;
  %else %do;
    %err_mput( macro= ACS_summary_geo_source, msg=Geograpy &source_geo is not supported. )
    %goto macro_exit;
  %end;
     
  %let source_ds_work = _ACS_&_years._&state_ab._sum&source_geo_suffix;

  %put _global_;

  ** Create new variables for summarizing **;

  data &source_ds_work;

  %if %upcase( &source_geo ) = REGCOUNTY %then %do;
	 set ACS.&source_ds (drop=county);
	 county = RegCounty;
	 label county = "Regional county (2017)";
  %end;
  %else %do;
     set ACS.&source_ds;
  %end;
    
    ** Unweighted sample counts **;
    
    UnwtdPop_&_years. = B00001e1;
    UnwtdHsgUnits_&_years. = B00002e1;

    label
      UnwtdPop_&_years. = "Unweighted sample population, &_years_dash "
      UnwtdHsgUnits_&_years. = "Unweighted sample housing units, &_years_dash ";


    ** Demographics **;

    ** Demographics - Block group-level variables **;

	TotPop_&_years. = B01003e1;
    
    NumHshlds_&_years. = B11001e1;

    NumFamilies_&_years. = B11003e1;
	
    PopUnder5Years_&_years. = sum( B01001e3, B01001e27 );

	PopUnder18Years_&_years. = 
		sum( B01001e3, B01001e4, B01001e5, B01001e6, 
             B01001e27, B01001e28, B01001e29, B01001e30 );

	Pop18_34Years_&_years. = 
		sum(B01001e7, B01001e8, B01001e9, B01001e10, B01001e11, B01001e12, 
			B01001e31, B01001e32, B01001e33, B01001e34, B01001e35, B01001e36 );

	Pop35_64Years_&_years. = 
		sum(B01001e13, B01001e14, B01001e15, B01001e16, B01001e17, B01001e18, B01001e19, 
			B01001e37, B01001e38, B01001e39, B01001e40, B01001e41, B01001e42, B01001e43 );

    Pop65andOverYears_&_years. = 
      sum( B01001e20, B01001e21, B01001e22, B01001e23, B01001e24, B01001e25, 
           B01001e44, B01001e45, B01001e46, B01001e47, B01001e48, B01001e49 );

    mTotPop_&_years. = B01003m1;

    mNumHshlds_&_years. = B11001m1;

    mNumFamilies_&_years. = B11003m1;

    mPopUnder5Years_&_years. = %moe_sum( var=B01001m3 B01001m27 );

	mPopUnder18Years_&_years. = 
      %moe_sum( var=B01001m3 B01001m4 B01001m5 B01001m6 
           			B01001m27 B01001m28 B01001m29 B01001m30 );

	mPop18_34Years_&_years.	 = 
		%moe_sum( var=B01001m7 B01001m8 B01001m9 B01001m10 B01001m11 B01001m12 
					  B01001m31 B01001m32 B01001m33 B01001m34 B01001m35 B01001m36 );

    mPop35_64Years_&_years. = 
	 %moe_sum( var=B01001m13 B01001m14 B01001m15 B01001m16 B01001m17 B01001m18 B01001m19 
				   B01001m37 B01001m38 B01001m39 B01001m40 B01001m41 B01001m42 B01001m43 );

    mPop65andOverYears_&_years. = 
      %moe_sum( var=B01001m20 B01001m21 B01001m22 B01001m23 B01001m24 B01001m25 
           B01001m44 B01001m45 B01001m46 B01001m47 B01001m48 B01001m49 );

	label
	  TotPop_&_years. = "Total population, &_years_dash "
      NumHshlds_&_years. = "Total HHs, &_years_dash "
      NumFamilies_&_years. = "Family HHs, &_years_dash "
      PopUnder5Years_&_years. = "Persons under 5 years old, &_years_dash "
	  PopUnder18Years_&_years. = "Persons under 18 years old, &_years_dash "
	  Pop18_34Years_&_years. = "Persons 18-34 years old, &_years_dash "
	  Pop35_64Years_&_years. = "Persons 35-64 years old, &_years_dash "
	  Pop65andOverYears_&_years. = "Persons 65 years old and over, &_years_dash "
      mTotPop_&_years. = "Total population, MOE, &_years_dash "
      mNumHshlds_&_years. = "Total HHs, MOE, &_years_dash "
      mNumFamilies_&_years. = "Family HHs, MOE, &_years_dash "
      mPopUnder5Years_&_years. = "Persons under 5 years old, MOE, &_years_dash "
	  mPopUnder18Years_&_years. = "Persons under 18 years old, MOE, &_years_dash "
	  mPop18_34Years_&_years. = "Persons 18-34 years old, MOE, &_years_dash "
	  mPop35_64Years_&_years. = "Persons 35-64 years old, MOE,&_years_dash "
	  mPop65andOverYears_&_years. = "Persons 65 years old and over, MOE, &_years_dash "
	  ;

    ** Demographics - Non block group (tract,county) variables **;

	%if %upcase( &source_geo ) = TR00 or %upcase( &source_geo ) = TR10 
		or %upcase( &source_geo ) = REGCOUNTY 
	%then %do;

	NumFamiliesB_&_years. = B19101Be1;
	NumFamiliesW_&_years. = B19101He1;
	NumFamiliesH_&_years. = B19101Ie1;
	NumFamiliesA_&_years. = sum(B19101De1, B19101Ee1 );
	NumFamiliesIOM_&_years. = sum(B19101Ce1, B19101Fe1, B19101Ge1 );
	NumFamiliesAIOM_&_years. = sum(B19101Ce1, B19101De1, B19101Ee1, B19101Fe1, B19101Ge1 );

	NumHshldsB_&_years. = B19001Be1;
	NumHshldsW_&_years. = B19001He1;
	NumHshldsH_&_years. = B19001Ie1;
	NumHshldsA_&_years. = sum(B19001De1, B19001Ee1 );
	NumHshldsIOM_&_years. = sum(B19001Ce1, B19001Fe1, B19001Ge1 );
	NumHshldsAIOM_&_years. = sum(B19001Ce1, B19001De1, B19001Ee1, B19001Fe1, B19001Ge1 );

	Pop5andOverYears_&_years. = B06007e1;
    
	PopUnder18YearsB_&_years. =  
		sum( B01001Be3, B01001Be4, B01001Be5, B01001Be6, 
			 B01001Be18, B01001Be19, B01001Be20, B01001Be21 );

	PopUnder18YearsW_&_years. = 
		sum( B01001He3, B01001He4, B01001He5, B01001He6, 
			 B01001He18, B01001He19, B01001He20, B01001He21 );

	PopUnder18YearsH_&_years. =
		sum( B01001Ie3, B01001Ie4, B01001Ie5, B01001Ie6, 
			 B01001Ie18, B01001Ie19, B01001Ie20, B01001Ie21 );

	PopUnder18YearsA_&_years. =
		sum( B01001De3, B01001De4, B01001De5, B01001De6, 
			 B01001De18, B01001De19, B01001De20, B01001De21,  
			 B01001Ee3, B01001Ee4, B01001Ee5, B01001Ee6, 
			 B01001Ee18, B01001Ee19, B01001Ee20, B01001Ee21 );

	PopUnder18YearsIOM_&_years. = 
		sum(B01001Ce3, B01001Ce4, B01001Ce5, B01001Ce6, 
			B01001Ce18, B01001Ce19, B01001Ce20, B01001Ce21, 
			B01001Fe3, B01001Fe4, B01001Fe5, B01001Fe6, 
			B01001Fe18, B01001Fe19, B01001Fe20, B01001Fe21, 
			B01001Ge3, B01001Ge4, B01001Ge5, B01001Ge6, 
			B01001Ge18, B01001Ge19, B01001Ge20, B01001Ge21 );

	PopUnder18YearsAIOM_&_years. = 
		sum(B01001Ce3, B01001Ce4, B01001Ce5, B01001Ce6,
			B01001Ce18, B01001Ce19, B01001Ce20, B01001Ce21, 
			B01001De3, B01001De4, B01001De5, B01001De6, 
			B01001De18, B01001De19, B01001De20, B01001De21,  
			B01001Ee3, B01001Ee4, B01001Ee5, B01001Ee6, 
			B01001Ee18, B01001Ee19, B01001Ee20, B01001Ee21, 
			B01001Fe3, B01001Fe4, B01001Fe5, B01001Fe6, 
			B01001Fe18, B01001Fe19, B01001Fe20, B01001Fe21, 
			B01001Ge3, B01001Ge4, B01001Ge5, B01001Ge6, 
			B01001Ge18, B01001Ge19, B01001Ge20, B01001Ge21 );

	Pop18_34YearsB_&_years.	= 
		sum(B01001Be7, B01001Be8, B01001Be9, B01001Be10, 
			B01001Be22, B01001Be23, B01001Be24, B01001Be25);

	Pop18_34YearsW_&_years.	= 
		sum(B01001He7, B01001He8, B01001He9, B01001He10, 
			B01001He22, B01001He23, B01001He24, B01001He25);

	Pop18_34YearsH_&_years.	= 
		sum(B01001Ie7, B01001Ie8, B01001Ie9, B01001Ie10, 
			B01001Ie22, B01001Ie23, B01001Ie24, B01001Ie25);

	Pop18_34YearsA_&_years.	= 
		sum(B01001De7, B01001De8, B01001De9, B01001De10, 
			B01001De22, B01001De23, B01001De24, B01001De25, 
			B01001Ee7, B01001Ee8, B01001Ee9, B01001Ee10, 
			B01001Ee22, B01001Ee23, B01001Ee24, B01001Ee25 );

	Pop18_34YearsIOM_&_years. = 
		sum(B01001Ce7, B01001Ce8, B01001Ce9, B01001Ce10, 
			B01001Ce22, B01001Ce23, B01001Ce24, B01001Ce25, 
			B01001Fe7, B01001Fe8, B01001Fe9, B01001Fe10, 
			B01001Fe22, B01001Fe23, B01001Fe24, B01001Fe25, 
			B01001Ge7, B01001Ge8, B01001Ge9, B01001Ge10, 
			B01001Ge22, B01001Ge23, B01001Ge24, B01001Ge25);

	Pop18_34YearsAIOM_&_years. = 
		sum(B01001Ce7, B01001Ce8, B01001Ce9, B01001Ce10, 
			B01001Ce22, B01001Ce23, B01001Ce24, B01001Ce25, 
			B01001De7, B01001De8, B01001De9, B01001De10, 
			B01001De22, B01001De23, B01001De24, B01001De25, 
			B01001Ee7, B01001Ee8, B01001Ee9, B01001Ee10, 
			B01001Ee22, B01001Ee23, B01001Ee24, B01001Ee25, 
			B01001Fe7, B01001Fe8, B01001Fe9, B01001Fe10, 
			B01001Fe22, B01001Fe23, B01001Fe24, B01001Fe25, 
			B01001Ge7, B01001Ge8, B01001Ge9, B01001Ge10, 
			B01001Ge22, B01001Ge23, B01001Ge24, B01001Ge25);

	Pop35_64YearsB_&_years.	= sum(B01001Be11, B01001Be12, B01001Be13, B01001Be26, B01001Be27, B01001Be28);

	Pop35_64YearsW_&_years.	= sum(B01001He11, B01001He12, B01001He13, B01001He26, B01001He27, B01001He28);

	Pop35_64YearsH_&_years.	= sum(B01001Ie11, B01001Ie12, B01001Ie13, B01001Ie26, B01001Ie27, B01001Ie28 );

	Pop35_64YearsA_&_years.	= 
		sum(B01001De11, B01001De12, B01001De13, B01001De26, B01001De27, B01001De28, 
			B01001Ee11, B01001Ee12, B01001Ee13, B01001Ee26, B01001Ee27, B01001Ee28 );

	Pop35_64YearsIOM_&_years. = 
		sum(B01001Ce11, B01001Ce12, B01001Ce13, B01001Ce26, B01001Ce27, B01001Ce28, 
			B01001Fe11, B01001Fe12, B01001Fe13, B01001Fe26, B01001Fe27, B01001Fe28, 
			B01001Ge11, B01001Ge12, B01001Ge13, B01001Ge26, B01001Ge27, B01001Ge28 );

	Pop35_64YearsAIOM_&_years. = 
		sum(B01001Ce11, B01001Ce12, B01001Ce13, B01001Ce26, B01001Ce27, B01001Ce28, 
			B01001De11, B01001De12, B01001De13, B01001De26, B01001De27, B01001De28, 
			B01001Ee11, B01001Ee12, B01001Ee13, B01001Ee26, B01001Ee27, B01001Ee28, 
			B01001Fe11, B01001Fe12, B01001Fe13, B01001Fe26, B01001Fe27, B01001Fe28, 
			B01001Ge11, B01001Ge12, B01001Ge13, B01001Ge26, B01001Ge27, B01001Ge28 );


	Pop65andOverYearsB_&_years.	= sum(B01001Be14, B01001Be15, B01001Be16, B01001Be29, B01001Be30, B01001Be31 );

	Pop65andOverYearsW_&_years.	= sum(B01001He14, B01001He15, B01001He16, B01001He29, B01001He30, B01001He31 );

	Pop65andOverYearsH_&_years.	= sum(B01001Ie14, B01001Ie15, B01001Ie16, B01001Ie29, B01001Ie30, B01001Ie31 );

	Pop65andOverYearsA_&_years.	= 
		sum(B01001De14, B01001De15, B01001De16, B01001De29, B01001De30, B01001De31, 
			B01001Ee14, B01001Ee15, B01001Ee16, B01001Ee29, B01001Ee30, B01001Ee31 );

	Pop65andOverYearsIOM_&_years. = 
		sum(B01001Ce14, B01001Ce15, B01001Ce16, B01001Ce29, B01001Ce30, B01001Ce31, 
			B01001Fe14, B01001Fe15, B01001Fe16, B01001Fe29, B01001Fe30, B01001Fe31, 
			B01001Ge14, B01001Ge15, B01001Ge16, B01001Ge29, B01001Ge30, B01001Ge31 );

	Pop65andOverYearsAIOM_&_years. = 
		sum(B01001Ce14, B01001Ce15, B01001Ce16, B01001Ce29, B01001Ce30, B01001Ce31, 
			B01001De14, B01001De15, B01001De16, B01001De29, B01001De30, B01001De31, 
			B01001Ee14, B01001Ee15, B01001Ee16, B01001Ee29, B01001Ee30, B01001Ee31, 
			B01001Fe14, B01001Fe15, B01001Fe16, B01001Fe29, B01001Fe30, B01001Fe31, 
			B01001Ge14, B01001Ge15, B01001Ge16, B01001Ge29, B01001Ge30, B01001Ge31 );

    mNumFamiliesB_&_years. = B19101Bm1;
	mNumFamiliesW_&_years. = B19101Hm1;
	mNumFamiliesH_&_years. = B19101Im1;
	mNumFamiliesA_&_years. = %moe_sum( var=B19101Dm1 B19101Em1);
	mNumFamiliesIOM_&_years. = %moe_sum( var=B19101Cm1 B19101Fm1 B19101Gm1);
	mNumFamiliesAIOM_&_years. = %moe_sum( var=B19101Cm1 B19101Dm1 B19101Em1 B19101Fm1 B19101Gm1);

	mNumHshldsB_&_years. = B19001Bm1;
	mNumHshldsW_&_years. = B19001Hm1;
	mNumHshldsH_&_years. = B19001Im1;
	mNumHshldsA_&_years. = %moe_sum( var=B19001Dm1 B19001Em1);
	mNumHshldsIOM_&_years. = %moe_sum( var=B19001Cm1 B19001Fm1 B19001Gm1);
	mNumHshldsAIOM_&_years. = %moe_sum( var= B19001Cm1 B19001Dm1 B19001Em1 B19001Fm1 B19001Gm1);

	mPop5andOverYears_&_years. = B06007m1; 

	mPopUnder18YearsB_&_years. = 
		%moe_sum( var= B01001Bm3 B01001Bm4 B01001Bm5 B01001Bm6 
			B01001Bm18 B01001Bm19 B01001Bm20 B01001Bm21 );

	mPopUnder18YearsW_&_years. = 
		%moe_sum( var= B01001Hm3 B01001Hm4 B01001Hm5 B01001Hm6 
			B01001Hm18 B01001Hm19 B01001Hm20 B01001Hm21 );

	mPopUnder18YearsH_&_years. = 
		%moe_sum( var= B01001Im3 B01001Im4 B01001Im5 B01001Im6 
			B01001Im18 B01001Im19 B01001Im20 B01001Im21 );

	mPopUnder18YearsA_&_years. = 
		%moe_sum( var= B01001Dm3 B01001Dm4 B01001Dm5 B01001Dm6 
			B01001Dm18 B01001Dm19 B01001Dm20 B01001Dm21  
			B01001Em3 B01001Em4 B01001Em5 B01001Em6 
			B01001Em18 B01001Em19 B01001Em20 B01001Em21 );

	mPopUnder18YearsIOM_&_years. = 
		%moe_sum( var=B01001Cm3 B01001Cm4 B01001Cm5 B01001Cm6 
			B01001Cm18 B01001Cm19 B01001Cm20 B01001Cm21 
			B01001Fm3 B01001Fm4 B01001Fm5 B01001Fm6 
			B01001Fm18 B01001Fm19 B01001Fm20 B01001Fm21 
			B01001Gm3 B01001Gm4 B01001Gm5 B01001Gm6 
			B01001Gm18 B01001Gm19 B01001Gm20 B01001Gm21 );

	mPopUnder18YearsAIOM_&_years. = 
		%moe_sum( var=B01001Cm3 B01001Cm4 B01001Cm5 B01001Cm6 
			B01001Cm18 B01001Cm19 B01001Cm20 B01001Cm21 
			B01001Dm3 B01001Dm4 B01001Dm5 B01001Dm6 
			B01001Dm18 B01001Dm19 B01001Dm20 B01001Dm21  
			B01001Em3 B01001Em4 B01001Em5 B01001Em6 
			B01001Em18 B01001Em19 B01001Em20 B01001Em21 
			B01001Fm3 B01001Fm4 B01001Fm5 B01001Fm6 
			B01001Fm18 B01001Fm19 B01001Fm20 B01001Fm21 
			B01001Gm3 B01001Gm4 B01001Gm5 B01001Gm6 
			B01001Gm18 B01001Gm19 B01001Gm20 B01001Gm21 );

	mPop18_34YearsB_&_years. = 
		%moe_sum( var=B01001Bm7 B01001Bm8 B01001Bm9 B01001Bm10 
			B01001Bm22 B01001Bm23 B01001Bm24 B01001Bm25 );

	mPop18_34YearsW_&_years. = 
		%moe_sum( var=B01001Hm7 B01001Hm8 B01001Hm9 B01001Hm10 
			B01001Hm22 B01001Hm23 B01001Hm24 B01001Hm25 );

	mPop18_34YearsH_&_years. = 
		%moe_sum( var=B01001Im7 B01001Im8 B01001Im9 B01001Im10 
			B01001Im22 B01001Im23 B01001Im24 B01001Im25 );

	mPop18_34YearsA_&_years. = 
		%moe_sum( var=B01001Dm7 B01001Dm8 B01001Dm9 B01001Dm10 
			B01001Dm22 B01001Dm23 B01001Dm24 B01001Dm25 
			B01001Em7 B01001Em8 B01001Em9 B01001Em10 
			B01001Em22 B01001Em23 B01001Em24 B01001Em25 );

	mPop18_34YearsIOM_&_years. = 
		%moe_sum( var=B01001Cm7 B01001Cm8 B01001Cm9 B01001Cm10 
			B01001Cm22 B01001Cm23 B01001Cm24 B01001Cm25 
			B01001Fm7 B01001Fm8 B01001Fm9 B01001Fm10 
			B01001Fm22 B01001Fm23 B01001Fm24 B01001Fm25 
			B01001Gm7 B01001Gm8 B01001Gm9 B01001Gm10 
			B01001Gm22 B01001Gm23 B01001Gm24 B01001Gm25 );

	mPop18_34YearsAIOM_&_years. = 
		%moe_sum( var=B01001Cm7 B01001Cm8 B01001Cm9 B01001Cm10 
			B01001Cm22 B01001Cm23 B01001Cm24 B01001Cm25
			B01001Dm7 B01001Dm8 B01001Dm9 B01001Dm10 
			B01001Dm22 B01001Dm23 B01001Dm24 B01001Dm25 
			B01001Em7 B01001Em8 B01001Em9 B01001Em10 
			B01001Em22 B01001Em23 B01001Em24 B01001Em25 
			B01001Fm7 B01001Fm8 B01001Fm9 B01001Fm10 
			B01001Fm22 B01001Fm23 B01001Fm24 B01001Fm25 
			B01001Gm7 B01001Gm8 B01001Gm9 B01001Gm10 
			B01001Gm22 B01001Gm23 B01001Gm24 B01001Gm25 );

	mPop35_64YearsB_&_years. = 
		%moe_sum( var=B01001Bm11 B01001Bm12 B01001Bm13 B01001Bm26 B01001Bm27 B01001Bm28 );

	mPop35_64YearsW_&_years. = 
		%moe_sum( var=B01001Hm11 B01001Hm12 B01001Hm13 B01001Hm26 B01001Hm27 B01001Hm28 );

	mPop35_64YearsH_&_years. =  
		%moe_sum( var=B01001Im11 B01001Im12 B01001Im13 B01001Im26 B01001Im27 B01001Im28 );

	mPop35_64YearsA_&_years. =  
		%moe_sum( var=B01001Dm11 B01001Dm12 B01001Dm13 B01001Dm26 B01001Dm27 B01001Dm28 
					B01001Em11 B01001Em12 B01001Em13 B01001Em26 B01001Em27 B01001Em28 );

	mPop35_64YearsIOM_&_years. =  
		%moe_sum( var=B01001Cm11 B01001Cm12 B01001Cm13 B01001Cm26 B01001Cm27 B01001Cm28 
					B01001Fm11 B01001Fm12 B01001Fm13 B01001Fm26 B01001Fm27 B01001Fm28 
					B01001Gm11 B01001Gm12 B01001Gm13 B01001Gm26 B01001Gm27 B01001Gm28 );

	mPop35_64YearsAIOM_&_years. = 
		%moe_sum( var=B01001Cm11 B01001Cm12 B01001Cm13 B01001Cm26 B01001Cm27 B01001Cm28 
					B01001Dm11 B01001Dm12 B01001Dm13 B01001Dm26 B01001Dm27 B01001Dm28 
					B01001Em11 B01001Em12 B01001Em13 B01001Em26 B01001Em27 B01001Em28 
					B01001Fm11 B01001Fm12 B01001Fm13 B01001Fm26 B01001Fm27 B01001Fm28 
					B01001Gm11 B01001Gm12 B01001Gm13 B01001Gm26 B01001Gm27 B01001Gm28 );

	mPop65andOverYearsB_&_years. = 
		%moe_sum( var=B01001Bm14 B01001Bm15 B01001Bm16 B01001Bm29 B01001Bm30 B01001Bm31 );

	mPop65andOverYearsW_&_years. = 
		%moe_sum( var=B01001Hm14 B01001Hm15 B01001Hm16 B01001Hm29 B01001Hm30 B01001Hm31 );

	mPop65andOverYearsH_&_years. = 
		%moe_sum( var=B01001Im14 B01001Im15 B01001Im16 B01001Im29 B01001Im30 B01001Im31 );

	mPop65andOverYearsA_&_years. = 
		%moe_sum( var=B01001Dm14 B01001Dm15 B01001Dm16 B01001Dm29 B01001Dm30 B01001Dm31 
					B01001Em14 B01001Em15 B01001Em16 B01001Em29 B01001Em30 B01001Em31 );

	mPop65andOverYearsIOM_&_years. = 
		%moe_sum( var=B01001Cm14 B01001Cm15 B01001Cm16 B01001Cm29 B01001Cm30 B01001Cm31 
					B01001Fm14 B01001Fm15 B01001Fm16 B01001Fm29 B01001Fm30 B01001Fm31 
					B01001Gm14 B01001Gm15 B01001Gm16 B01001Gm29 B01001Gm30 B01001Gm31 );

	mPop65andOverYearsAIOM_&_years. = 
		%moe_sum( var=B01001Cm14 B01001Cm15 B01001Cm16 B01001Cm29 B01001Cm30 B01001Cm31 
					 B01001Dm14 B01001Dm15 B01001Dm16 B01001Dm29 B01001Dm30 B01001Dm31 
					 B01001Em14 B01001Em15 B01001Em16 B01001Em29 B01001Em30 B01001Em31 
					 B01001Fm14 B01001Fm15 B01001Fm16 B01001Fm29 B01001Fm30 B01001Fm31 
					 B01001Gm14 B01001Gm15 B01001Gm16 B01001Gm29 B01001Gm30 B01001Gm31 );

    label
		NumFamiliesB_&_years. = "Family HHs, Black/African American, &_years_dash "
		NumFamiliesW_&_years. = "Family HHs, Non-Hispanic White, &_years_dash "
		NumFamiliesH_&_years. = "Family HHs, Hispanic/Latino, &_years_dash "
		NumFamiliesA_&_years. = "Family HHs, Asian, Hawaiian, and other Pacific Islander, &_years_dash "
		NumFamiliesIOM_&_years. = "Family HHs, American Indian/Alaska Native, other race, two or more races, &_years_dash "
		NumFamiliesAIOM_&_years. = "Family HHs,All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
		NumHshldsB_&_years. = "Total HHs, Black/African American, &_years_dash "
		NumHshldsW_&_years. = "Total HHs, Non-Hispanic White, &_years_dash "
		NumHshldsH_&_years. = "Total HHs, Hispanic/Latino, &_years_dash "
		NumHshldsA_&_years. = "Total HHs, Asian, Hawaiian, and other Pacific Islander, &_years_dash "
		NumHshldsIOM_&_years. = "Total HHs, American Indian/Alaska Native, other race, two or more races, &_years_dash "
		NumHshldsAIOM_&_years. = "Total HHs,All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
	    Pop5andOverYears_&_years. = "Persons 5 years old and over, &_years_dash"
		PopUnder18YearsB_&_years. = "Persons under 18 years old, Black/African American, &_years_dash "
		PopUnder18YearsW_&_years. = "Persons under 18 years old,Non-Hispanic White, &_years_dash "
		PopUnder18YearsH_&_years. = "Persons under 18 years old, Hispanic/Latino, &_years_dash "
		PopUnder18YearsA_&_years. = "Persons under 18 years old, Asian, Hawaiian and other Pacific Islander, &_years_dash"
		PopUnder18YearsIOM_&_years. = "Persons under 18 years old, American Indian/Alaska Native, other race, two or more races, &_years_dash "
		PopUnder18YearsAIOM_&_years. = "Persons under 18 years old, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
		Pop18_34YearsB_&_years. = "Persons 18-34 years old, Black/African American, &_years_dash "
		Pop18_34YearsW_&_years. = "Persons 18-34 years old, Non-Hispanic Non-Hispanic White, &_years_dash "
		Pop18_34YearsH_&_years. = "Persons 18-34 years old, Hispanic/Latino, &_years_dash "
		Pop18_34YearsA_&_years. = "Persons 18-34 years old, Asian, Hawaiian and other Pacific Islander, &_years_dash "
		Pop18_34YearsIOM_&_years. = "Persons 18-34 years old, American Indian/Alask Native, other race, two or more races, &_years_dash "
		Pop18_34YearsAIOM_&_years. = "Persons 18-34 years old, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
		Pop35_64YearsB_&_years. = "Persons 35-64 years old, Black/African American, &_years_dash "
		Pop35_64YearsW_&_years. = "Persons 35-64 years old, Non-Hispanic White, &_years_dash "
		Pop35_64YearsH_&_years. = "Persons 35-64 years old, Hispanic/Latino, &_years_dash "
		Pop35_64YearsA_&_years. = "Persons 35-64 years old, Asian, Hawaiian and other Pacific Islander, &_years_dash "
		Pop35_64YearsIOM_&_years. = "Persons 35-64 years old, American Indian/Alask Native, other race, two or more races, &_years_dash "
		Pop35_64YearsAIOM_&_years. = "Persons 35-64 years old, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
	 	Pop65andOverYearsB_&_years. = "Persons 65 years old and over, Black/African American, &_years_dash "
		Pop65andOverYearsW_&_years. = "Persons 65 years old and over, Non-Hispanic White, &_years_dash "
		Pop65andOverYearsH_&_years. = "Persons 65 years old and over, Hispanic/Latino, &_years_dash "
		Pop65andOverYearsA_&_years. = "Persons 65 years old and over, Asian, Hawaiian and other Pacific Islander, &_years_dash "
		Pop65andOverYearsIOM_&_years. = "Persons 65 years old and over, American Indian/Alaska Native, other race, two or more races, &_years_dash "
		Pop65andOverYearsAIOM_&_years. = "Persons 65 years old and over, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
		mNumFamiliesB_&_years. = "Family HHs, Black/African American, MOE, &_years_dash "
		mNumFamiliesW_&_years. = "Family HHs, Non-Hispanic White, MOE, &_years_dash "
		mNumFamiliesH_&_years. = "Family HHs, Hispanic/Latino, MOE, &_years_dash "
		mNumFamiliesA_&_years. = "Family HHs, Asian, Hawaiian, and other Pacific Islander, MOE, &_years_dash "
		mNumFamiliesIOM_&_years. = "Family HHs, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
		mNumFamiliesAIOM_&_years. = "Family HHs,All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
		mNumHshldsB_&_years. = "Total HHs, Black/African American, MOE, &_years_dash "
		mNumHshldsW_&_years. = "Total HHs, Non-Hispanic White, MOE, &_years_dash "
		mNumHshldsH_&_years. = "Total HHs, Hispanic/Latino, MOE, &_years_dash "
		mNumHshldsA_&_years. = "Total HHs, Asian, Hawaiian, and other Pacific Islander, MOE, &_years_dash "
		mNumHshldsIOM_&_years. = "Total HHs, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
		mNumHshldsAIOM_&_years. = "Total HHs,All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
	    mPop5andOverYears_&_years. = "Persons 5 years old and over, &_years_dash "
	  	mPopUnder18YearsB_&_years. = "Persons under 18 years old, Black/African American, MOE, &_years_dash "
		mPopUnder18YearsW_&_years. = "Persons under 18 years old, Non-Hispanic Non-Hispanic White, MOE, &_years_dash "
		mPopUnder18YearsH_&_years. = "Persons under 18 years old, Hispanic/Latino, MOE, &_years_dash "
		mPopUnder18YearsA_&_years. = "Persons under 18 years old, Asian, Hawaiian and other Pacific Islander, MOE, &_years_dash "
		mPopUnder18YearsIOM_&_years. = "Persons under 18 years old, American Indian/Alask Native, other race, two or more races, MOE, &_years_dash "
		mPopUnder18YearsAIOM_&_years. = "Persons under 18 years old, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE &_years_dash "
		mPop18_34YearsB_&_years. = "Persons 18-34 years old, Black/African American, MOE, &_years_dash " 
		mPop18_34YearsW_&_years. = "Persons 18-34 years old,Non-Hispanic Non-Hispanic White, MOE, &_years_dash "
		mPop18_34YearsH_&_years. = "Persons 18-34 years old, Hispanic/Latino, MOE, &_years_dash "
		mPop18_34YearsA_&_years. = "Persons 18-34 years old, Asian, Hawaiian and other Pacific Islander, MOE, &_years_dash "
		mPop18_34YearsIOM_&_years. = "Persons 18-34 years old, American Indian/Alask Native, other race, two or more races, MOE, &_years_dash " 
		mPop18_34YearsAIOM_&_years. = "Persons 18-34 years old, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
		mPop35_64YearsB_&_years. = "Persons 35-64 years old, Black/African American, MOE, &_years_dash "
		mPop35_64YearsW_&_years. = "Persons 35-64 years old,Non-Hispanic White, MOE, &_years_dash "
		mPop35_64YearsH_&_years. = "Persons 35-64 years old, Hispanic/Latino, MOE, &_years_dash "
		mPop35_64YearsA_&_years. = "Persons 35-64 years old, Asian, Hawaiian and other Pacific Islander, MOE, &_years_dash "
		mPop35_64YearsIOM_&_years. = "Persons 35-64 years old, American Indian/Alask Native, other race, two or more races, MOE, &_years_dash "
		mPop35_64YearsAIOM_&_years. = "Persons 35-64 years old, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
		mPop65andOverYearsB_&_years. = "Persons 65 years old and over,Black/African American, MOE, &_years_dash "
		mPop65andOverYearsW_&_years. = "Persons 65 years old and over, Non-Hispanic White, MOE, &_years_dash "
		mPop65andOverYearsH_&_years. = "Persons 65 years old and over, Hispanic/Latino, MOE, &_years_dash "
		mPop65andOverYearsA_&_years. = "Persons 65 years old and over,Asian, Hawaiian and other Pacific Islander, MOE, &_years_dash "
		mPop65andOverYearsIOM_&_years. = "Persons 65 years old and over, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
		mPop65andOverYearsAIOM_&_years. = "Persons 65 years old and over, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
    ;
    
	%end;

	%if %upcase( &source_geo ) = TR00 or %upcase( &source_geo ) = TR10 
		or %upcase( &source_geo ) = REGCOUNTY 
	%then %do;
    
      ** Foreign born **;

      PopForeignBorn_&_years. = B05002e13;
	  PopNativeBorn_&_years. = B05002e2;
	  PopNonEnglish_&_years. = sum(B06007e3, B06007e6 );

	  PopForeignBornB_&_years. = B06004Be5;
	  PopForeignBornW_&_years. = B06004He5;
	  PopForeignBornH_&_years. = B06004Ie5;
	  PopForeignBornA_&_years. = sum(B06004De5, B06004Ee5);
	  PopForeignBornIOM_&_years. = sum(B06004Ce5, B06004Fe5, B06004Ge5);
	  PopForeignBornAIOM_&_years. = sum(B06004Ce5, B06004De5, B06004Ee5, B06004Fe5, B06004Ge5);


      mPopForeignBorn_&_years. = B05002m13;
	  mPopNativeBorn_&_years. = B05002m2;
	  mPopNonEnglish_&_years. = %moe_sum( var=B06007m3 B06007m6 );

	  mPopForeignBornB_&_years. = B06004Bm5;
	  mPopForeignBornW_&_years. = B06004Hm5;
	  mPopForeignBornH_&_years. = B06004Im5;
	  mPopForeignBornA_&_years. = %moe_sum( var=B06004Dm5 B06004Em5);
	  mPopForeignBornIOM_&_years. = %moe_sum( var=B06004Cm5 B06004Fm5 B06004Gm5);
	  mPopForeignBornAIOM_&_years. = %moe_sum( var=B06004Cm5 B06004Dm5 B06004Em5 B06004Fm5 B06004Gm5);

      label 
        PopForeignBorn_&_years. = "Foreign born population, &_years_dash "
		PopNativeBorn_&_years. = "Native born persons, &_years_dash "
		PopNonEnglish_&_years. = "Speak a language other than English at home, &_years_dash "
		PopForeignBornB_&_years. = "Foreign-born persons, Black/African American, &_years_dash "
		PopForeignBornW_&_years. = "Foreign-born persons,Non-Hispanic White, &_years_dash "
		PopForeignBornH_&_years. = "Foreign-born persons, Hispanic/Latino, &_years_dash "
		PopForeignBornA_&_years. = "Foreign-born persons, Asian, Hawaiian and other Pacific Islander, &_years_dash "
		PopForeignBornIOM_&_years. = "Foreign-born persons, American Indian/Alaska Native, other race, two or more races, &_years_dash "
		PopForeignBornAIOM_&_years. = "Foreign-born persons, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
        mPopForeignBorn_&_years. = "Foreign born population, MOE, &_years_dash "
		mPopNativeBorn_&_years. = "Native born persons, &_years_dash "
		mPopNonEnglish_&_years. = "Speak a language other than English at home, MOE, &_years_dash "
    	mPopForeignBornB_&_years. = "Foreign-born persons, Black/African American, MOE, &_years_dash "
		mPopForeignBornW_&_years. = "Foreign-born persons, Non-Hispanic Non-Hispanic White, MOE, &_years_dash "
		mPopForeignBornH_&_years. = "Foreign-born persons, Hispanic/Latino, MOE, &_years_dash "
		mPopForeignBornA_&_years. = "Foreign-born persons, Asian, Hawaiian and other Pacific Islander, MOE, &_years_dash "
		mPopForeignBornIOM_&_years. = "Foreign-born persons, American Indian/Alask Native, other race, two or more races, MOE, &_years_dash "
		mPopForeignBornAIOM_&_years. = "Foreign-born persons, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE &_years_dash "

    %end;
    
    ** Population by race/ethnicity **;
    
    PopWithRace_&_years. = totpop_&_years.;
    PopBlackNonHispBridge_&_years. = B03002e4;
    PopWhiteNonHispBridge_&_years. = B03002e3;
    PopHisp_&_years. = B03002e12;
    PopAsianPINonHispBridge_&_years. = sum( B03002e6, B03002e7 );
    PopNativeAmNonHispBridge_&_years. = B03002e5;
    PopOtherNonHispBridge_&_years. = B03002e8;
    PopMultiracialNonHisp_&_years. = B03002e9;
    
    PopOtherRaceNonHispBridg_&_years. = PopWithRace_&_years. - 
      sum( PopBlackNonHispBridge_&_years., PopWhiteNonHispBridge_&_years., PopHisp_&_years., PopAsianPINonHispBridge_&_years. );

    mPopWithRace_&_years. = mtotpop_&_years.;
    mPopBlackNonHispBridge_&_years. = B03002m4;
    mPopWhiteNonHispBridge_&_years. = B03002m3;
    mPopHisp_&_years. = B03002m12;
    mPopAsianPINonHispBridge_&_years. = %moe_sum( var=B03002m6 B03002m7 );
    mPopNativeAmNonHispBr_&_years. = B03002m5;
    mPopOtherNonHispBridge_&_years. = B03002m8;
    mPopMultiracialNonHisp_&_years. = B03002m9;
    
    mPopOtherRaceNonHispBr_&_years. = 
      %moe_sum( var=B03002m5 B03002m8 B03002m9 );

    label
      PopWithRace_&_years. = "Total population for race/ethnicity, &_years_dash "
      PopBlackNonHispBridge_&_years. = "Non-Hispanic Black/African American population, &_years_dash "
      PopWhiteNonHispBridge_&_years. = "Non-Hispanic White population, &_years_dash "
      PopAsianPINonHispBridge_&_years. = "Non-Hispanic Asian, Hawaiian and other Pacific Islander pop., &_years_dash "
      PopHisp_&_years. = "Hispanic/Latino population, &_years_dash "
      PopNativeAmNonHispBridge_&_years. = "Non-Hispanic American Indian/Alaska Native population, &_years_dash "
      PopOtherNonHispBridge_&_years. = "Non-Hispanic other race population, &_years_dash "
      PopMultiracialNonHisp_&_years. = "Non-Hispanic multiracial population, &_years_dash "
      PopOtherRaceNonHispBridg_&_years. = "All remaining groups other than black, white, Hispanic, and Asian/PI, &_years_dash "
      mPopWithRace_&_years. = "Total population for race/ethnicity, MOE, &_years_dash "
      mPopBlackNonHispBridge_&_years. = "Non-Hispanic Black/African American population, MOE, &_years_dash "
      mPopWhiteNonHispBridge_&_years. = "Non-Hispanic White population, MOE, &_years_dash "
      mPopAsianPINonHispBridge_&_years. = "Non-Hispanic Asian, Hawaiian and other Pacific Islander pop., MOE, &_years_dash "
      mPopHisp_&_years. = "Hispanic/Latino population, MOE, &_years_dash "
      mPopNativeAmNonHispBr_&_years. = "Non-Hispanic American Indian/Alaska Native population, MOE, &_years_dash "
      mPopOtherNonHispBridge_&_years. = "Non-Hispanic other race population, MOE, &_years_dash "
      mPopMultiracialNonHisp_&_years. = "Non-Hispanic multiracial population, MOE, &_years_dash "
      mPopOtherRaceNonHispBr_&_years. = "All remaining groups other than black, white, Hispanic, and Asian/PI, MOE, &_years_dash "
    ;
    
	  ** Population by race/ethnicity alone**;

    PopAloneB_&_years. = sum(B03002e4, B03002e14 );
	PopAloneW_&_years. = sum(B03002e3, B03002e13 );
	PopAloneH_&_years. = B03002e12;
	PopAloneA_&_years. = sum(B03002e6, B03002e7, B03002e16, B03002e17 );
	PopAloneI_&_years. = sum(B03002e5, B03002e15 );
	PopAloneO_&_years. = sum(B03002e8, B03002e18 );
	PopAloneM_&_years. = sum(B03002e9, B03002e19 );
	PopAloneIOM_&_years. = sum(B03002e5, B03002e15, B03002e8, B03002e18, B03002e9, B03002e19 );
	PopAloneAIOM_&_years. = sum(B03002e5, B03002e15, B03002e6, B03002e7, B03002e16, B03002e17, B03002e8, B03002e18, B03002e9, B03002e19 );
	mPopAloneB_&_years.	= %moe_sum( var=B03002m4 B03002m14 );
	mPopAloneW_&_years.	= %moe_sum( var=B03002m3 B03002m13 );
	mPopAloneH_&_years.	= B03002m12;
	mPopAloneA_&_years.	= %moe_sum( var=B03002m6 B03002m7 B03002m16 B03002m17 );
	mPopAloneI_&_years.	= %moe_sum( var=B03002m5 B03002m15 );
	mPopAloneO_&_years.	= %moe_sum( var=B03002m8 B03002m18 );
	mPopAloneM_&_years.	= %moe_sum( var=B03002m9 B03002m19 );
	mPopAloneIOM_&_years. = %moe_sum( var=B03002m5 B03002m15 B03002m8 B03002m18 B03002m9 B03002m19 );
	mPopAloneAIOM_&_years. = %moe_sum( var=B03002m5 B03002m15 B03002m6 B03002m7 B03002m16 B03002m17 B03002m8 B03002m18 B03002m9 B03002m19 );

	label
	  
	  PopAloneB_&_years. = "Black alone population, &_years_dash "
	  PopAloneW_&_years. = "White alone population, &_years_dash "
	  PopAloneH_&_years. = "Hispanic/Latino alone population, &_years_dash "
	  PopAloneA_&_years. = "Asian alone and Native Hawaiian and Other Pacific Islander alone, &_years_dash "
	  PopAloneI_&_years. = "American Indian and Alaska Native alone, &_years_dash "
	  PopAloneO_&_years. = "Some other race alone, &_years_dash "
	  PopAloneM_&_years. = "Two or more races alone, &_years_dash "
	  PopAloneIOM_&_years. = "American Indian/Alaska Native, other race, two or more races, &_years_dash "
	  PopAloneAIOM_&_years.	= "All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
	  mPopAloneB_&_years. = "Black alone population, MOE, &_years_dash "
	  mPopAloneW_&_years. = "White alone population, MOE, &_years_dash "
	  mPopAloneH_&_years. = "Hispanic/Latino alone population, MOE, &_years_dash "
	  mPopAloneA_&_years. = "Asian alone and Native Hawaiian and Other Pacific Islander alone, MOE, &_years_dash "
	  mPopAloneI_&_years. = "American Indian and Alaska Native alone, MOE, &_years_dash "
	  mPopAloneO_&_years. = "Some other race alone, MOE, &_years_dash "
	  mPopAloneM_&_years. = "Two or more races alone, MOE, &_years_dash "
	  mPopAloneIOM_&_years. = "American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
	  mPopAloneAIOM_&_years. = "All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
	  ;

	%if %upcase( &source_geo ) = TR00 or %upcase( &source_geo ) = TR10 
		or %upcase( &source_geo ) = REGCOUNTY 
	%then %do;

      ** Poverty **;

	**renamed the following to maintain 32 characters:
	PersonsPovertyDefinedIOM = PersonsPovertyDefIOM
	ChildrenPovertyDefinedIOM = ChildrenPovertyDefIOM
	PersonsPovertyDefinedAIOM = PersonsPovertyDefAIOM
	ChildrenPovertyDefinedAIOM = ChildrenPovertyDefAIOM**;

      ChildrenPovertyDefined_&_years. = 
        sum( B17001e4, B17001e5, B17001e6, B17001e7, B17001e8, B17001e9, 
             B17001e18, B17001e19, B17001e20, B17001e21, B17001e22, B17001e23,
             B17001e33, B17001e34, B17001e35, B17001e36, B17001e37, B17001e38, 
             B17001e47, B17001e48, B17001e49, B17001e50, B17001e51, B17001e52
            );
			ChildrenPovertyDefinedB_&_years. = 
				sum(B17001Be4, B17001Be5, B17001Be6, B17001Be7, B17001Be8, B17001Be9, 
					B17001Be18, B17001Be19, B17001Be20, B17001Be21, B17001Be22, B17001Be23, 
					B17001Be33, B17001Be34, B17001Be35, B17001Be36, B17001Be37, B17001Be38, 
					B17001Be47, B17001Be48, B17001Be49, B17001Be50, B17001Be51, B17001Be52 );
			ChildrenPovertyDefinedW_&_years. = 
				sum(B17001He4, B17001He5, B17001He6, B17001He7, B17001He8, B17001He9, 
					B17001He18, B17001He19, B17001He20, B17001He21, B17001He22, B17001He23, 
					B17001He33, B17001He34, B17001He35, B17001He36, B17001He37, B17001He38, 
					B17001He47, B17001He48, B17001He49, B17001He50, B17001He51, B17001He52);
			ChildrenPovertyDefinedH_&_years. = 
				sum(B17001Ie4, B17001Ie5, B17001Ie6, B17001Ie7, B17001Ie8, B17001Ie9, 
					B17001Ie18, B17001Ie19, B17001Ie20, B17001Ie21, B17001Ie22, B17001Ie23, 
					B17001Ie33, B17001Ie34, B17001Ie35, B17001Ie36, B17001Ie37, B17001Ie38, 
					B17001Ie47, B17001Ie48, B17001Ie49, B17001Ie50, B17001Ie51, B17001Ie52);
			ChildrenPovertyDefinedA_&_years. = 
				sum(B17001De4, B17001De5, B17001De6, B17001De7, B17001De8, B17001De9, 
					B17001De18, B17001De19, B17001De20, B17001De21, B17001De22, B17001De23, 
					B17001De33, B17001De34, B17001De35, B17001De36, B17001De37, B17001De38, 
					B17001De47, B17001De48, B17001De49, B17001De50, B17001De51, B17001De52,
					B17001Ee4, B17001Ee5, B17001Ee6, B17001Ee7, B17001Ee8, B17001Ee9, 
					B17001Ee18, B17001Ee19, B17001Ee20, B17001Ee21, B17001Ee22, B17001Ee23, 
					B17001Ee33, B17001Ee34, B17001Ee35, B17001Ee36, B17001Ee37, B17001Ee38, 
					B17001Ee47, B17001Ee48, B17001Ee49, B17001Ee50, B17001Ee51, B17001Ee52 );
			ChildrenPovertyDefIOM_&_years. = 
				sum(B17001Ce4, B17001Ce5, B17001Ce6, B17001Ce7, B17001Ce8, B17001Ce9, 
					B17001Ce18, B17001Ce19, B17001Ce20, B17001Ce21, B17001Ce22, B17001Ce23, 
					B17001Ce33, B17001Ce34, B17001Ce35, B17001Ce36, B17001Ce37, B17001Ce38, 
					B17001Ce47, B17001Ce48, B17001Ce49, B17001Ce50, B17001Ce51, B17001Ce52,
					B17001Fe4, B17001Fe5, B17001Fe6, B17001Fe7, B17001Fe8, B17001Fe9, 
					B17001Fe18, B17001Fe19, B17001Fe20, B17001Fe21, B17001Fe22, B17001Fe23, 
					B17001Fe33, B17001Fe34, B17001Fe35, B17001Fe36, B17001Fe37, B17001Fe38, 
					B17001Fe47, B17001Fe48, B17001Fe49, B17001Fe50, B17001Fe51, B17001Fe52,
					B17001Ge4, B17001Ge5, B17001Ge6, B17001Ge7, B17001Ge8, B17001Ge9, 
					B17001Ge18, B17001Ge19, B17001Ge20, B17001Ge21, B17001Ge22, B17001Ge23, 
					B17001Ge33, B17001Ge34, B17001Ge35, B17001Ge36, B17001Ge37, B17001Ge38, 
					B17001Ge47, B17001Ge48, B17001Ge49, B17001Ge50, B17001Ge51, B17001Ge52 );
			ChildrenPovertyDefAIOM_&_years. = 
				sum(B17001Ce4, B17001Ce5, B17001Ce6, B17001Ce7, B17001Ce8, B17001Ce9, 
					B17001Ce18, B17001Ce19, B17001Ce20, B17001Ce21, B17001Ce22, B17001Ce23, 
					B17001Ce33, B17001Ce34, B17001Ce35, B17001Ce36, B17001Ce37, B17001Ce38, 
					B17001Ce47, B17001Ce48, B17001Ce49, B17001Ce50, B17001Ce51, B17001Ce52,
					B17001De4, B17001De5, B17001De6, B17001De7, B17001De8, B17001De9, 
					B17001De18, B17001De19, B17001De20, B17001De21, B17001De22, B17001De23, 
					B17001De33, B17001De34, B17001De35, B17001De36, B17001De37, B17001De38, 
					B17001De47, B17001De48, B17001De49, B17001De50, B17001De51, B17001De52,
					B17001Ee4, B17001Ee5, B17001Ee6, B17001Ee7, B17001Ee8, B17001Ee9, 
					B17001Ee18, B17001Ee19, B17001Ee20, B17001Ee21, B17001Ee22, B17001Ee23, 
					B17001Ee33, B17001Ee34, B17001Ee35, B17001Ee36, B17001Ee37, B17001Ee38, 
					B17001Ee47, B17001Ee48, B17001Ee49, B17001Ee50, B17001Ee51, B17001Ee52,
					B17001Fe4, B17001Fe5, B17001Fe6, B17001Fe7, B17001Fe8, B17001Fe9, 
					B17001Fe18, B17001Fe19, B17001Fe20, B17001Fe21, B17001Fe22, B17001Fe23, 
					B17001Fe33, B17001Fe34, B17001Fe35, B17001Fe36, B17001Fe37, B17001Fe38, 
					B17001Fe47, B17001Fe48, B17001Fe49, B17001Fe50, B17001Fe51, B17001Fe52,
					B17001Ge4, B17001Ge5, B17001Ge6, B17001Ge7, B17001Ge8, B17001Ge9, 
					B17001Ge18, B17001Ge19, B17001Ge20, B17001Ge21, B17001Ge22, B17001Ge23, 
					B17001Ge33, B17001Ge34, B17001Ge35, B17001Ge36, B17001Ge37, B17001Ge38, 
					B17001Ge47, B17001Ge48, B17001Ge49, B17001Ge50, B17001Ge51, B17001Ge52 );

	ChildPovertyUnder5Def_&_years. = 
        sum( B17001e4, 
             B17001e18,
             B17001e33,
             B17001e47
            );

      ElderlyPovertyDefined_&_years. = 
        sum( B17001e15, B17001e16, B17001e29, B17001e30,
             B17001e44, B17001e45, B17001e58, B17001e59
        );

	  
	  PersonsPovertyDefined_&_years. = B17001e1;

			PersonsPovertyDefinedB_&_years. = B17001Be1;
			PersonsPovertyDefinedW_&_years. = B17001He1;
			PersonsPovertyDefinedH_&_years. = B17001Ie1;
			PersonsPovertyDefinedA_&_years. = sum(B17001De1, B17001Ee1 );
			PersonsPovertyDefIOM_&_years. = sum(B17001Ce1, B17001Fe1, B17001Ge1 );
			PersonsPovertyDefAIOM_&_years. = sum(B17001Ce1, B17001De1, B17001Ee1, B17001Fe1, B17001Ge1 );
			PersonsPovertyDefinedFB_&_years. = sum(B17025e6, B17025e13 );

		PopPoorChildrenUnder5_&_years. =
			sum( B17001e4,B17001e18);
      
      PopPoorChildren_&_years. = 
        sum( B17001e4, B17001e5, B17001e6, B17001e7, B17001e8, B17001e9, 
             B17001e18, B17001e19, B17001e20, B17001e21, B17001e22, B17001e23 );
			PopPoorChildrenB_&_years. = 
				sum( B17001Be4, B17001Be5, B17001Be6, B17001Be7, B17001Be8, B17001Be9, 
					 B17001Be18, B17001Be19, B17001Be20, B17001Be21, B17001Be22, B17001Be23 );
			PopPoorChildrenW_&_years. = 
				sum( B17001He4, B17001He5, B17001He6, B17001He7, B17001He8, B17001He9, 
					 B17001He18, B17001He19, B17001He20, B17001He21, B17001He22, B17001He23 );
			PopPoorChildrenH_&_years. = 
				sum( B17001Ie4, B17001Ie5, B17001Ie6, B17001Ie7, B17001Ie8, B17001Ie9, 
					 B17001Ie18, B17001Ie19, B17001Ie20, B17001Ie21, B17001Ie22, B17001Ie23 );
			PopPoorChildrenA_&_years. = 
				sum( B17001De4, B17001De5, B17001De6, B17001De7, B17001De8, B17001De9, 
					 B17001De18, B17001De19, B17001De20, B17001De21, B17001De22, B17001De23, 
					 B17001Ee4, B17001Ee5, B17001Ee6, B17001Ee7, B17001Ee8, B17001Ee9, 
					 B17001Ee18, B17001Ee19, B17001Ee20, B17001Ee21, B17001Ee22, B17001Ee23);
			PopPoorChildrenIOM_&_years. = 
				sum( B17001Ce4, B17001Ce5, B17001Ce6, B17001Ce7, B17001Ce8, B17001Ce9, 
					 B17001Ce18, B17001Ce19, B17001Ce20, B17001Ce21, B17001Ce22, B17001Ce23, 
					 B17001Fe4, B17001Fe5, B17001Fe6, B17001Fe7, B17001Fe8, B17001Fe9, 
					 B17001Fe18, B17001Fe19, B17001Fe20, B17001Fe21, B17001Fe22, B17001Fe23, 
					 B17001Ge4, B17001Ge5, B17001Ge6, B17001Ge7, B17001Ge8, B17001Ge9, 
					 B17001Ge18, B17001Ge19, B17001Ge20, B17001Ge21, B17001Ge22, B17001Ge23 );
			PopPoorChildrenAIOM_&_years. = 
				sum( B17001Ce4, B17001Ce5, B17001Ce6, B17001Ce7, B17001Ce8, B17001Ce9, 
					 B17001Ce18, B17001Ce19, B17001Ce20, B17001Ce21, B17001Ce22, B17001Ce23, 
					 B17001De4, B17001De5, B17001De6, B17001De7, B17001De8, B17001De9, 
					 B17001De18, B17001De19, B17001De20, B17001De21, B17001De22, B17001De23, 
					 B17001Ee4, B17001Ee5, B17001Ee6, B17001Ee7, B17001Ee8, B17001Ee9, 
					 B17001Ee18, B17001Ee19, B17001Ee20, B17001Ee21, B17001Ee22, B17001Ee23, 
					 B17001Fe4, B17001Fe5, B17001Fe6, B17001Fe7, B17001Fe8, B17001Fe9, 
					 B17001Fe18, B17001Fe19, B17001Fe20, B17001Fe21, B17001Fe22, B17001Fe23, 
					 B17001Ge4, B17001Ge5, B17001Ge6, B17001Ge7, B17001Ge8, B17001Ge9, 
					 B17001Ge18, B17001Ge19, B17001Ge20, B17001Ge21, B17001Ge22, B17001Ge23 );

      PopPoorElderly_&_years. = 
        sum( B17001e15, B17001e16, B17001e29, B17001e30 );

	  

      PopPoorPersons_&_years. = B17001e2;
			PopPoorPersonsB_&_years. = B17001Be2;
			PopPoorPersonsW_&_years. = B17001He2;
			PopPoorPersonsH_&_years. = B17001Ie2;
			PopPoorPersonsA_&_years. = sum(B17001De2, B17001Ee2 );
			PopPoorPersonsIOM_&_years. = sum(B17001Ce2, B17001Fe2, B17001Ge2 );
			PopPoorPersonsAIOM_&_years. = sum(B17001Ce2, B17001De2, b17001Ee2, B17001Fe2, B17001Ge2 );
			PopPoorPersonsFB_&_years. = B17025e6;

      
      mChildrenPovertyDefined_&_years. = 
        %moe_sum( var=B17001m4 B17001m5 B17001m6 B17001m7 B17001m8 B17001m9 
             B17001m18 B17001m19 B17001m20 B17001m21 B17001m22 B17001m23
             B17001m33 B17001m34 B17001m35 B17001m36 B17001m37 B17001m38 
             B17001m47 B17001m48 B17001m49 B17001m50 B17001m51 B17001m52
            );

	   mChildPovertyUnder5Def_&_years. =
		 %moe_sum( var=B17001m4 B17001m18 B17001m33 B17001m47);


			mChildrenPovertyDefinedB_&_years. = 
				%moe_sum(var=B17001Bm4 B17001Bm5 B17001Bm6 B17001Bm7 B17001Bm8 B17001Bm9 
							B17001Bm18 B17001Bm19 B17001Bm20 B17001Bm21 B17001Bm22 B17001Bm23 
							B17001Bm33 B17001Bm34 B17001Bm35 B17001Bm36 B17001Bm37 B17001Bm38 
							B17001Bm47 B17001Bm48 B17001Bm49 B17001Bm50 B17001Bm51 B17001Bm52);
			mChildrenPovertyDefinedW_&_years. = 
				%moe_sum(var=B17001Hm4 B17001Hm5 B17001Hm6 B17001Hm7 B17001Hm8 B17001Hm9 
							B17001Hm18 B17001Hm19 B17001Hm20 B17001Hm21 B17001Hm22 B17001Hm23 
							B17001Hm33 B17001Hm34 B17001Hm35 B17001Hm36 B17001Hm37 B17001Hm38 
							B17001Hm47 B17001Hm48 B17001Hm49 B17001Hm50 B17001Hm51 B17001Hm52);
			mChildrenPovertyDefinedH_&_years. = 
				%moe_sum(var=B17001Im4 B17001Im5 B17001Im6 B17001Im7 B17001Im8 B17001Im9 
							B17001Im18 B17001Im19 B17001Im20 B17001Im21 B17001Im22 B17001Im23 
							B17001Im33 B17001Im34 B17001Im35 B17001Im36 B17001Im37 B17001Im38 
							B17001Im47 B17001Im48 B17001Im49 B17001Im50 B17001Im51 B17001Im52);
			mChildrenPovertyDefinedA_&_years. = 
				%moe_sum(var=B17001Dm4 B17001Dm5 B17001Dm6 B17001Dm7 B17001Dm8 B17001Dm9 
							B17001Dm18 B17001Dm19 B17001Dm20 B17001Dm21 B17001Dm22 B17001Dm23 
							B17001Dm33 B17001Dm34 B17001Dm35 B17001Dm36 B17001Dm37 B17001Dm38 
							B17001Dm47 B17001Dm48 B17001Dm49 B17001Dm50 B17001Dm51 B17001Dm52 
							B17001Em4 B17001Em5 B17001Em6 B17001Em7 B17001Em8 B17001Em9 
							B17001Em18 B17001Em19 B17001Em20 B17001Em21 B17001Em22 B17001Em23 
							B17001Em33 B17001Em34 B17001Em35 B17001Em36 B17001Em37 B17001Em38 
							B17001Em47 B17001Em48 B17001Em49 B17001Em50 B17001Em51 B17001Em52);
			mChildrenPovertyDefIOM_&_years. = 
				%moe_sum(var=B17001Cm4 B17001Cm5 B17001Cm6 B17001Cm7 B17001Cm8 B17001Cm9 
							B17001Cm18 B17001Cm19 B17001Cm20 B17001Cm21 B17001Cm22 B17001Cm23 
							B17001Cm33 B17001Cm34 B17001Cm35 B17001Cm36 B17001Cm37 B17001Cm38 
							B17001Cm47 B17001Cm48 B17001Cm49 B17001Cm50 B17001Cm51 B17001Cm52 
							B17001Fm4 B17001Fm5 B17001Fm6 B17001Fm7 B17001Fm8 B17001Fm9 
							B17001Fm18 B17001Fm19 B17001Fm20 B17001Fm21 B17001Fm22 B17001Fm23 
							B17001Fm33 B17001Fm34 B17001Fm35 B17001Fm36 B17001Fm37 B17001Fm38 
							B17001Fm47 B17001Fm48 B17001Fm49 B17001Fm50 B17001Fm51 B17001Fm52 
							B17001Gm4 B17001Gm5 B17001Gm6 B17001Gm7 B17001Gm8  B17001Gm9 
							B17001Gm18 B17001Gm19 B17001Gm20 B17001Gm21 B17001Gm22 B17001Gm23 
							B17001Gm33 B17001Gm34 B17001Gm35 B17001Gm36 B17001Gm37 B17001Gm38 
							B17001Gm47 B17001Gm48 B17001Gm49 B17001Gm50 B17001Gm51 B17001Gm52);
			mChildrenPovertyDefAIOM_&_years. = 
				%moe_sum(var=B17001Cm4 B17001Cm5 B17001Cm6 B17001Cm7 B17001Cm8 B17001Cm9 
							B17001Cm18 B17001Cm19 B17001Cm20 B17001Cm21 B17001Cm22 B17001Cm23 
							B17001Cm33 B17001Cm34 B17001Cm35 B17001Cm36 B17001Cm37 B17001Cm38 
							B17001Cm47 B17001Cm48 B17001Cm49 B17001Cm50 B17001Cm51 B17001Cm52 
							B17001Dm4 B17001Dm5 B17001Dm6 B17001Dm7 B17001Dm8 B17001Dm9 
							B17001Dm18 B17001Dm19 B17001Dm20 B17001Dm21 B17001Dm22 B17001Dm23 
							B17001Dm33 B17001Dm34 B17001Dm35 B17001Dm36 B17001Dm37 B17001Dm38 
							B17001Dm47 B17001Dm48 B17001Dm49 B17001Dm50 B17001Dm51 B17001Dm52 
							B17001Em4 B17001Em5 B17001Em6 B17001Em7 B17001Em8 B17001Em9 
							B17001Em18 B17001Em19 B17001Em20 B17001Em21 B17001Em22 B17001Em23 
							B17001Em33 B17001Em34 B17001Em35 B17001Em36 B17001Em37 B17001Em38 
							B17001Em47 B17001Em48 B17001Em49 B17001Em50 B17001Em51 B17001Em52 
							B17001Fm4 B17001Fm5 B17001Fm6 B17001Fm7 B17001Fm8 B17001Fm9 
							B17001Fm18 B17001Fm19 B17001Fm20 B17001Fm21 B17001Fm22 B17001Fm23 
							B17001Fm33 B17001Fm34 B17001Fm35 B17001Fm36 B17001Fm37 B17001Fm38 
							B17001Fm47 B17001Fm48 B17001Fm49 B17001Fm50 B17001Fm51 B17001Fm52 
							B17001Gm4 B17001Gm5 B17001Gm6 B17001Gm7 B17001Gm8 B17001Gm9 
							B17001Gm18 B17001Gm19 B17001Gm20 B17001Gm21 B17001Gm22 B17001Gm23 
							B17001Gm33 B17001Gm34 B17001Gm35 B17001Gm36 B17001Gm37 B17001Gm38 
							B17001Gm47 B17001Gm48 B17001Gm49 B17001Gm50 B17001Gm51 B17001Gm52);


      mElderlyPovertyDefined_&_years. = 
        %moe_sum( var=B17001m15 B17001m16 B17001m29 B17001m30
             B17001m44 B17001m45 B17001m58 B17001m59
        );

      mPersonsPovertyDefined_&_years. = B17001m1;
			mPersonsPovertyDefinedB_&_years. = B17001Bm1;
			mPersonsPovertyDefinedW_&_years. = B17001Hm1;
			mPersonsPovertyDefinedH_&_years. = B17001Im1;
			mPersonsPovertyDefinedA_&_years. = %moe_sum( var=B17001Dm1 B17001Em1);
			mPersonsPovertyDefIOM_&_years. = %moe_sum( var=B17001Cm1 B17001Fm1 B17001Gm1);
			mPersonsPovertyDefAIOM_&_years. = %moe_sum( var=B17001Cm1 B17001Dm1 B17001Em1 B17001Fm1 B17001Gm1);
			mPersonsPovertyDefinedFB_&_years. = %moe_sum( var=B17025m6 B17025m13);

      
      mPopPoorChildren_&_years. = 
        %moe_sum( var=B17001m4 B17001m5 B17001m6 B17001m7 B17001m8 B17001m9 
             B17001m18 B17001m19 B17001m20 B17001m21 B17001m22 B17001m23 );

	   mPopPoorChildrenUnder5_&_years. = 
			%moe_sum( var=B17001m4 B17001m18 );

			mPopPoorChildrenB_&_years. = 
				%moe_sum( var= B17001Bm4 B17001Bm5 B17001Bm6 B17001Bm7 B17001Bm8 B17001Bm9 
							   B17001Bm18 B17001Bm19 B17001Bm20 B17001Bm21 B17001Bm22 B17001Bm23 );
			mPopPoorChildrenW_&_years. = 
				%moe_sum( var= B17001Hm4 B17001Hm5 B17001Hm6 B17001Hm7 B17001Hm8 B17001Hm9 
							   B17001Hm18 B17001Hm19 B17001Hm20 B17001Hm21 B17001Hm22 B17001Hm23 );
			mPopPoorChildrenH_&_years. = 
				%moe_sum( var= B17001Im4 B17001Im5 B17001Im6 B17001Im7 B17001Im8 B17001Im9 
							   B17001Im18 B17001Im19 B17001Im20 B17001Im21 B17001Im22 B17001Im23 );
			mPopPoorChildrenA_&_years. = 
				%moe_sum( var= B17001Dm4 B17001Dm5 B17001Dm6 B17001Dm7 B17001Dm8 B17001Dm9 
							   B17001Dm18 B17001Dm19 B17001Dm20 B17001Dm21 B17001Dm22 B17001Dm23 
							   B17001Em4 B17001Em5 B17001Em6 B17001Em7 B17001Em8 B17001Em9 
							   B17001Em18 B17001Em19 B17001Em20 B17001Em21 B17001Em22 B17001Em23 );
			mPopPoorChildrenIOM_&_years. = 
				%moe_sum( var= B17001Cm4 B17001Cm5 B17001Cm6 B17001Cm7 B17001Cm8 B17001Cm9 
							   B17001Cm18 B17001Cm19 B17001Cm20 B17001Cm21 B17001Cm22 B17001Cm23 
							   B17001Fm4 B17001Fm5 B17001Fm6 B17001Fm7 B17001Fm8 B17001Fm9 
							   B17001Fm18 B17001Fm19 B17001Fm20 B17001Fm21 B17001Fm22 B17001Fm23 
							   B17001Gm4 B17001Gm5 B17001Gm6 B17001Gm7 B17001Gm8 B17001Gm9 
							   B17001Gm18 B17001Gm19 B17001Gm20 B17001Gm21 B17001Gm22 B17001Gm23 );
			mPopPoorChildrenAIOM_&_years. = 
				%moe_sum( var= B17001Cm4 B17001Cm5 B17001Cm6 B17001Cm7 B17001Cm8 B17001Cm9 
							   B17001Cm18 B17001Cm19 B17001Cm20 B17001Cm21 B17001Cm22 B17001Cm23 
							   B17001Dm4 B17001Dm5 B17001Dm6 B17001Dm7 B17001Dm8 B17001Dm9 
							   B17001Dm18 B17001Dm19 B17001Dm20 B17001Dm21 B17001Dm22 B17001Dm23 
							   B17001Em4 B17001Em5 B17001Em6 B17001Em7 B17001Em8 B17001Em9 
							   B17001Em18 B17001Em19 B17001Em20 B17001Em21 B17001Em22 B17001Em23 
							   B17001Fm4 B17001Fm5 B17001Fm6 B17001Fm7 B17001Fm8 B17001Fm9 
							   B17001Fm18 B17001Fm19 B17001Fm20 B17001Fm21 B17001Fm22 B17001Fm23 
							   B17001Gm4 B17001Gm5 B17001Gm6 B17001Gm7 B17001Gm8 B17001Gm9 
							   B17001Gm18 B17001Gm19 B17001Gm20 B17001Gm21 B17001Gm22 B17001Gm23 );

      mPopPoorElderly_&_years. = 
        %moe_sum( var=B17001m15 B17001m16 B17001m29 B17001m30 );


      mPopPoorPersons_&_years. = B17001m2;
			mPopPoorPersonsB_&_years. = B17001Bm2;
			mPopPoorPersonsW_&_years. = B17001Hm2;
			mPopPoorPersonsH_&_years. = B17001Im2;
			mPopPoorPersonsA_&_years. = %moe_sum( var=B17001Dm2 b17001Em2);
			mPopPoorPersonsIOM_&_years. = %moe_sum( var=B17001Cm2 B17001Fm2 B17001Gm2);
			mPopPoorPersonsAIOM_&_years. = %moe_sum( var=B17001Cm2 B17001Dm2 B17001Em2 B17001Fm2 B17001Gm2);
			mPopPoorPersonsFB_&_years. = B17025m6;

      
      label
        PopPoorPersons_&_years. = "Persons below the poverty level last year, &_years_dash "
			PopPoorPersonsB_&_years. = "Persons below the poverty level last year, Black/African American, &_years_dash "
			PopPoorPersonsW_&_years. = "Persons below the poverty level last year, Non-Hispanic White, &_years_dash " 
			PopPoorPersonsH_&_years. = "Persons below the poverty level last year,Hispanic/Latino, &_years_dash " 
			PopPoorPersonsA_&_years. = "Persons below the poverty level last year, Asian, Hawaiian, and other Pacific Islander &_years_dash " 
			PopPoorPersonsIOM_&_years. = "Persons below the poverty level last year, American Indian/Alaska Native, other race, two or more races&_years_dash " 
			PopPoorPersonsAIOM_&_years. = "Persons below the poverty level last year, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash " 
			PopPoorPersonsFB_&_years. = "Foreign born persons below the poverty level last year, &_years_dash"
        PersonsPovertyDefined_&_years. = "Persons with poverty status determined, &_years_dash "
			PersonsPovertyDefinedB_&_years. = "Persons with poverty status determined, Black/African American, &_years_dash "
			PersonsPovertyDefinedW_&_years. = "Persons with poverty status determined, Non-Hispanic White, &_years_dash " 
			PersonsPovertyDefinedH_&_years. = "Persons below the poverty level last year,Hispanic/Latino, &_years_dash " 
			PersonsPovertyDefinedA_&_years. = "Persons with poverty status determined, Asian, Hawaiian, and other Pacific Islander &_years_dash " 
			PersonsPovertyDefIOM_&_years. = "Persons with poverty status determined, American Indian/Alaska Native, other race, two or more races&_years_dash " 
			PersonsPovertyDefAIOM_&_years. = "Persons with poverty status determined, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash " 
			PersonsPovertyDefinedFB_&_years. = "Foreign born persons with poverty status determined, &_years_dash"
        PopPoorChildren_&_years. = "Children under 18 years old below the poverty level last year, &_years_dash "
			PopPoorChildrenUnder5_&_years. = "Children under 5 years old below the poverty level last year, &_years_dash "
			PopPoorChildrenB_&_years. = "Children under 18 years old below the poverty level last year, Black/African American, &_years_dash " 
			PopPoorChildrenW_&_years. = "Children under 18 years old below the poverty level last year, Non-Hispanic White, &_years_dash " 
			PopPoorChildrenH_&_years. = "Children under 18 years old below the poverty level last year, Hispanic/Latino, &_years_dash " 
			PopPoorChildrenA_&_years. = "Children under 18 years old below the poverty level last year,Asian, Native Hawaiian, and other Pacific Islander, &_years_dash " 
			PopPoorChildrenIOM_&_years. = "Children under 18 years old below the poverty level last year, American Indian/Alaska Native, other race, two or more races, &_years_dash " 
			PopPoorChildrenAIOM_&_years. = "Children under 18 years old below the poverty level last year, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash " 
        ChildrenPovertyDefined_&_years. = "Children under 18 years old with poverty status determined, &_years_dash "
			ChildPovertyUnder5Def_&_years. = "Children under 5 years old with poverty status determined, &_years_dash "
			ChildrenPovertyDefinedB_&_years. = "Children under 18 years old with poverty status determined, Black/African American, &_years_dash "
			ChildrenPovertyDefinedW_&_years. = "Children under 18 years old with poverty status determined, Non-Hispanic White, &_years_dash " 
			ChildrenPovertyDefinedH_&_years. = "Persons below the poverty level last year,Hispanic/Latino, &_years_dash " 
			ChildrenPovertyDefinedA_&_years. = "Children under 18 years old with poverty status determined, Asian, Hawaiian, and other Pacific Islander &_years_dash " 
			ChildrenPovertyDefIOM_&_years. = "Children under 18 years old with poverty status determined, American Indian/Alaska Native, other race, two or more races, &_years_dash " 
			ChildrenPovertyDefAIOM_&_years. = "Children under 18 years old with poverty status determined, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash " 
        PopPoorElderly_&_years. = "Persons 65 years old and over below the poverty level last year, &_years_dash "
        ElderlyPovertyDefined_&_years. = "Persons 65 years old and over with poverty status determined, &_years_dash "
		mPopPoorPersons_&_years. = "Persons below the poverty level last year, MOE, &_years_dash "
			mPopPoorPersonsB_&_years. = "Persons below the poverty level last year, Black/African American, MOE, &_years_dash "
			mPopPoorPersonsW_&_years. = "Persons below the poverty level last year, Non-Hispanic White, MOE, &_years_dash " 
			mPopPoorPersonsH_&_years. = "Persons below the poverty level last year,Hispanic/Latino, MOE, &_years_dash " 
			mPopPoorPersonsA_&_years. = "Persons below the poverty level last year, Asian, Hawaiian, and other Pacific Islander MOE, &_years_dash " 
			mPopPoorPersonsIOM_&_years. = "Persons below the poverty level last year, American Indian/Alaska Native, other race, two or more racesMOE, &_years_dash " 
			mPopPoorPersonsAIOM_&_years. = "Persons below the poverty level last year, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash " 
			mPopPoorPersonsFB_&_years. = "Foreign born persons below the poverty level last year, MOE, &_years_dash"
        mPersonsPovertyDefined_&_years. = "Persons with poverty status determined, MOE, &_years_dash "
			mPersonsPovertyDefinedB_&_years. = "Persons with poverty status determined, Black/African American, MOE, &_years_dash " 
			mPersonsPovertyDefinedW_&_years. = "Persons with poverty status determined, Non-Hispanic White, MOE, &_years_dash " 
			mPersonsPovertyDefinedH_&_years. = "Persons below the poverty level last year,Hispanic/Latino, MOE, &_years_dash " 
			mPersonsPovertyDefinedA_&_years. = "Persons with poverty status determined, Asian, Hawaiian, and other Pacific Islander MOE, &_years_dash " 
			mPersonsPovertyDefIOM_&_years. = "Persons with poverty status determined, American Indian/Alaska Native, other race, two or more racesMOE, &_years_dash " 
			mPersonsPovertyDefAIOM_&_years. = "Persons with poverty status determined, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash " 
			mPersonsPovertyDefinedFB_&_years. = "Foreign born persons with poverty status determined, MOE, &_years_dash"
        mPopPoorChildren_&_years. = "Children under 18 years old below the poverty level last year, MOE, &_years_dash "
			mPopPoorChildrenUnder5_&_years. = "Children under 5 years old below the poverty level last year, MOE, &_years_dash "
			mPopPoorChildrenB_&_years. = "Children under 18 years old below the poverty level last year, Black/African American, MOE, &_years_dash " 
			mPopPoorChildrenW_&_years. = "Children under 18 years old below the poverty level last year, Non-Hispanic White, MOE, &_years_dash " 
			mPopPoorChildrenH_&_years. = "Children under 18 years old below the poverty level last year, Hispanic/Latino, MOE, &_years_dash " 
			mPopPoorChildrenA_&_years. = "Children under 18 years old below the poverty level last year,Asian, Native Hawaiian, and other Pacific Islander, MOE, &_years_dash " 
			mPopPoorChildrenIOM_&_years. = "Children under 18 years old below the poverty level last year, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash " 
			mPopPoorChildrenAIOM_&_years. = "Children under 18 years old below the poverty level last year, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash " 
        mChildrenPovertyDefined_&_years. = "Children under 18 years old with poverty status determined, MOE, &_years_dash "
			mChildrenPovertyDefined_&_years. = "Children under 18 years old with poverty status determined, MOE, &_years_dash "
			mChildrenPovertyDefinedB_&_years. = "Children under 18 years old with poverty status determined, Black/African American, MOE, &_years_dash "
			mChildrenPovertyDefinedW_&_years. = "Children under 18 years old with poverty status determined, Non-Hispanic White, MOE, &_years_dash " 
			mChildrenPovertyDefinedH_&_years. = "Persons below the poverty level last year,Hispanic/Latino, MOE, &_years_dash " 
			mChildrenPovertyDefinedA_&_years. = "Children under 18 years old with poverty status determined, Asian, Hawaiian, and other Pacific Islander MOE, &_years_dash " 
			mChildrenPovertyDefIOM_&_years. = "Children under 18 years old with poverty status determined, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash " 
			mChildrenPovertyDefAIOM_&_years. = "Children under 18 years old with poverty status determined, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash " 
        mPopPoorElderly_&_years. = "Persons 65 years old and over below the poverty level last year, MOE, &_years_dash "
        mElderlyPovertyDefined_&_years. = "Persons 65 years old and over with poverty status determined, MOE, &_years_dash "
		mChildPovertyUnder5Def_&_years. = "Children under 5 years old with poverty status determined, MOE, &_years_dash "
	;

    %end;
    
   
      ** Employment **;

	%if %upcase( &source_geo ) = TR00 or %upcase( &source_geo ) = TR10 
		or %upcase( &source_geo ) = REGCOUNTY 
	%then %do;
 
	** Employment - Non block group (tract,county) variables **;

	  PopCivilianEmployed_&_years. = 
        sum( B23001e7, B23001e14, B23001e21, B23001e28, B23001e35, B23001e42, B23001e49, 
             B23001e56, B23001e63, B23001e70, B23001e75, B23001e80, B23001e85,
             B23001e93, B23001e100, B23001e107, B23001e114, B23001e121, B23001e128, 
             B23001e135, B23001e142, B23001e149, B23001e156, B23001e161, B23001e166, B23001e171 );

			PopCivilianEmployedB_&_years. = sum(C23002Be7, C23002Be12, C23002Be20, C23002Be25 );
			PopCivilianEmployedW_&_years. = sum(C23002He7, C23002He12, C23002He20, C23002He25 );
			PopCivilianEmployedH_&_years. = sum(C23002Ie7, C23002Ie12, C23002Ie20, C23002Ie25 );
			PopCivilianEmployedA_&_years. = 
				sum(C23002De7, C23002De12, C23002De20, C23002De25, 
					C23002Ee7, C23002Ee12, C23002Ee20, C23002Ee25 );
			PopCivilianEmployedIOM_&_years. = 
				sum(C23002Ce7, C23002Ce12, C23002Ce20, C23002Ce25, 
					C23002Fe7, C23002Fe12, C23002Fe20, C23002Fe25, 
					C23002Ge7, C23002Ge12, C23002Ge20, C23002Ge25 );
			PopCivilianEmployedAIOM_&_years. = 
				sum(C23002Ce7, C23002Ce12, C23002Ce20, C23002Ce25,
					C23002De7, C23002De12, C23002De20, C23002De25, 
					C23002Ee7, C23002Ee12, C23002Ee20, C23002Ee25, 
					C23002Fe7, C23002Fe12, C23002Fe20, C23002Fe25, 
					C23002Ge7, C23002Ge12, C23002Ge20, C23002Ge25 );

      PopUnemployed_&_years. = 
        sum( B23001e8, B23001e15, B23001e22, B23001e29, B23001e36, B23001e43, B23001e50, 
             B23001e57, B23001e64, B23001e71, B23001e76, B23001e81, B23001e86, 
             B23001e94, B23001e101, B23001e108, B23001e115, B23001e122, B23001e129, 
             B23001e136, B23001e143, B23001e150, B23001e157, B23001e162, B23001e167, B23001e172 );
      
			PopUnemployedB_&_years. = sum(C23002Be8, C23002Be13, C23002Be21, C23002Be26 );
			PopUnemployedW_&_years. = sum(C23002He8, C23002He13, C23002He21, C23002He26 );
			PopUnemployedH_&_years. = sum(C23002Ie8, C23002Ie13, C23002Ie21, C23002Ie26 );
			PopUnemployedA_&_years. = 
				sum(C23002De8, C23002De13, C23002De21, C23002De26, 
					C23002Ee8, C23002Ee13, C23002Ee21, C23002Ee26 );
			PopUnemployedIOM_&_years. = 
				sum(C23002Ce8, C23002Ce13, C23002Ce21, C23002Ce26, 
					C23002Fe8, C23002Fe13, C23002Fe21, C23002Fe26, 
					C23002Ge8, C23002Ge13, C23002Ge21, C23002Ge26 );
			PopUnemployedAIOM_&_years. = 
				sum(C23002Ce8, C23002Ce13, C23002Ce21, C23002Ce26, 
					C23002De8, C23002De13, C23002De21, C23002De26, 
					C23002Ee8, C23002Ee13, C23002Ee21, C23002Ee26, 
					C23002Fe8, C23002Fe13, C23002Fe21, C23002Fe26, 
					C23002Ge8, C23002Ge13, C23002Ge21, C23002Ge26 );

      PopInCivLaborForce_&_years. = sum( PopCivilianEmployed_&_years., PopUnemployed_&_years. );
			PopInCivLaborForceB_&_years. = sum(PopCivilianEmployedB_&_years., PopUnemployedB_&_years.);
			PopInCivLaborForceW_&_years. = sum(PopCivilianEmployedW_&_years., PopUnemployedW_&_years.);
			PopInCivLaborForceH_&_years. = sum(PopCivilianEmployedH_&_years., PopUnemployedH_&_years.);
			PopInCivLaborForceA_&_years. = sum(PopCivilianEmployedA_&_years., PopUnemployedA_&_years.);
			PopInCivLaborForceIOM_&_years. = sum(PopCivilianEmployedIOM_&_years., PopUnemployedIOM_&_years.);
			PopInCivLaborForceAIOM_&_years. = sum(PopCivilianEmployedAIOM_&_years., PopUnemployedAIOM_&_years.);

	Pop16andOverEmployed_&_years. = PopCivilianEmployed_&_years. +
        sum( B23001e5, B23001e12, B23001e19, B23001e26, B23001e33, B23001e40, 
             B23001e47, B23001e54, B23001e61, B23001e68,
             B23001e91, B23001e98, B23001e105, B23001e112, B23001e119, B23001e126, 
             B23001e133, B23001e140, B23001e147, B23001e154 );

      Pop16andOverEmploy_&_years. = PopCivilianEmployed_&_years. +
        sum( B23001e5, B23001e12, B23001e19, B23001e26, B23001e33, B23001e40, 
             B23001e47, B23001e54, B23001e61, B23001e68,
             B23001e91, B23001e98, B23001e105, B23001e112, B23001e119, B23001e126, 
             B23001e133, B23001e140, B23001e147, B23001e154 );

		Pop16andOverEmployB_&_years. = PopCivilianEmployedB_&_years. + sum(C23002Be5, C23002Be18);
		Pop16andOverEmployW_&_years. = PopCivilianEmployedW_&_years. + sum(C23002He5, C23002He18);
		Pop16andOverEmployH_&_years. = PopCivilianEmployedH_&_years. + sum(C23002Ie5, C23002Ie18);
		Pop16andOverEmployA_&_years. = PopCivilianEmployedA_&_years. + sum(C23002De5, C23002De18, C23002Ee5, C23002Ee18);
		Pop16andOverEmployIOM_&_years. = PopCivilianEmployedIOM_&_years. + 
			sum(C23002Ce5, C23002Ce18, C23002Fe5, C23002Fe18, C23002Ge5, C23002Ge18);
		Pop16andOverEmployAIOM_&_years. = PopCivilianEmployedAIOM_&_years. + 
			sum(C23002Ce5, C23002Ce18, C23002De5, C23002De18, C23002Ee5, C23002Ee18, C23002Fe5, C23002Fe18, C23002Ge5, C23002Ge18);

	  Pop16_64Employed_&_years. = 
			sum(B23001e5, B23001e7, B23001e12, B23001e14, B23001e19, B23001e21, B23001e26, B23001e28, 
				B23001e33, B23001e35, B23001e40, B23001e42, B23001e47, B23001e49, B23001e54, B23001e56, 
				B23001e61, B23001e63, B23001e68, B23001e70, B23001e91, B23001e93, B23001e98, B23001e100, 
				B23001e105, B23001e107, B23001e112, B23001e114, B23001e119, B23001e121, B23001e126, B23001e128, 
				B23001e133, B23001e135, B23001e140, B23001e142, B23001e147, B23001e149, B23001e154, B23001e156 );
			Pop16_64EmployedB_&_years. = sum(C23002Be5, C23002Be7, C23002Be18, C23002Be20 );
			Pop16_64EmployedW_&_years. = sum(C23002He5, C23002He7, C23002He18, C23002He20 );
			Pop16_64EmployedH_&_years. = sum(C23002Ie5, C23002Ie7, C23002Ie18, C23002Ie20 );
			Pop16_64EmployedA_&_years. = 
				sum(C23002De5, C23002De7, C23002De18, C23002De20,
					C23002Ee5, C23002Ee7, C23002Ee18, C23002Ee20 );
			Pop16_64EmployedIOM_&_years. = 
				sum(C23002Ce5, C23002Ce7, C23002Ce18, C23002Ce20, 
					C23002Fe5, C23002Fe7, C23002Fe18, C23002Fe20, 
					C23002Ge5, C23002Ge7, C23002Ge18, C23002Ge20 );
			Pop16_64EmployedAIOM_&_years. = 
				sum(C23002Ce5, C23002Ce7, C23002Ce18, C23002Ce20, 
					C23002De5, C23002De7, C23002De18, C23002De20,
					C23002Ee5, C23002Ee7, C23002Ee18, C23002Ee20, 
					C23002Fe5, C23002Fe7, C23002Fe18, C23002Fe20, 
					C23002Ge5, C23002Ge7, C23002Ge18, C23002Ge20 );

	  Pop25_64Employed_&_years. = 
				sum(B23001e26, B23001e28, B23001e33, B23001e35, B23001e40, B23001e42, B23001e47, B23001e49, 
					B23001e54, B23001e56, B23001e61, B23001e63, B23001e68, B23001e70, B23001e112, B23001e114, 
					B23001e119, B23001e121, B23001e126, B23001e128, B23001e133, B23001e135, B23001e140, B23001e142, 
					B23001e147, B23001e149, B23001e154, B23001e156 );

      Pop16andOverYears_&_years. = B23001e1;

			Pop16andOverYearsB_&_years.	= B20005Be1;
			Pop16andOverYearsW_&_years.	= B20005He1;
			Pop16andOverYearsH_&_years.	= B20005Ie1;
			Pop16andOverYearsA_&_years.	= sum(B20005De1, B20005Ee1);
			Pop16andOverYearsIOM_&_years. = sum(B20005Ce1, B20005Fe1, B20005Ge1);
			Pop16andOverYearsAIOM_&_years. = sum(B20005Ce1, B20005De1, B20005Ee1, B20005Fe1, B20005Ge1 );

	  Pop16_64years_&_years. = 
			sum(B23001e3, B23001e10, B23001e17, B23001e24, B23001e31, B23001e38, B23001e45, B23001e52, 
				B23001e59, B23001e66, B23001e89, B23001e96, B23001e103, B23001e110, B23001e117, B23001e124, 
				B23001e131, B23001e138, B23001e145, B23001e152 );
			Pop16_64yearsB_&_years. = sum(C23002Be3, C23002Be16 );
			Pop16_64yearsW_&_years.	= sum(C23002He3, C23002He16 );
			Pop16_64yearsH_&_years.	= sum(C23002Ie3, C23002Ie16 );
			Pop16_64yearsA_&_years.	= sum(C23002De3, C23002De16, C23002Ee3, C23002Ee16 );
			Pop16_64yearsIOM_&_years. = sum(C23002Ce3, C23002Ce16, C23002Fe3, C23002Fe16, C23002Ge3, C23002Ge16 );
			Pop16_64yearsAIOM_&_years. = sum(C23002Ce3, C23002Ce16, C23002De3, C23002De16, C23002Ee3, C23002Ee16, 
											 C23002Fe3, C23002Fe16, C23002Ge3, C23002Ge16 );

	  Pop25_64years_&_years. = 
			sum(B01001e11, B01001e12, B01001e13, B01001e14, B01001e15, B01001e16, B01001e17, 
				B01001e18, B01001e19, B01001e35, B01001e36, B01001e37, B01001e38, B01001e39, 
				B01001e40, B01001e41, B01001e42, B01001e43 );
			Pop25_64yearsB_&_years. = 
				sum(B01001Be9, B01001Be10, B01001Be11, B01001Be12, B01001Be13, 
					B01001Be24, B01001Be25, B01001Be26, B01001Be27, B01001Be28 );
			Pop25_64yearsW_&_years.	= 
				sum(B01001He9, B01001He10, B01001He11, B01001He12, B01001He13, 
					B01001He24, B01001He25, B01001He26, B01001He27, B01001He28 ); 
			Pop25_64yearsH_&_years.	= 
				sum(B01001Ie9, B01001Ie10, B01001Ie11, B01001Ie12, B01001Ie13, 
					B01001Ie24, B01001Ie25, B01001Ie26, B01001Ie27, B01001Ie28 );
			Pop25_64yearsA_&_years.	= 
				sum(B01001De9, B01001De10, B01001De11, B01001De12, B01001De13, 
					B01001De24, B01001De25, B01001De26, B01001De27, B01001De28, 
					B01001Ee9, B01001Ee10, B01001Ee11, B01001Ee12, B01001Ee13, 
					B01001Ee24, B01001Ee25, B01001Ee26, B01001Ee27, B01001Ee28 );
			Pop25_64yearsIOM_&_years. = 
				sum(B01001Ce9, B01001Ce10, B01001Ce11, B01001Ce12, B01001Ce13, 
					B01001Ce24, B01001Ce25, B01001Ce26, B01001Ce27, B01001Ce28, 
					B01001Fe9, B01001Fe10, B01001Fe11, B01001Fe12, B01001Fe13, 
					B01001Fe24, B01001Fe25, B01001Fe26, B01001Fe27, B01001Fe28, 
					B01001Ge9, B01001Ge10, B01001Ge11, B01001Ge12, B01001Ge13, 
					B01001Ge24, B01001Ge25, B01001Ge26, B01001Ge27, B01001Ge28 );
			Pop25_64yearsAIOM_&_years. = 
				sum(B01001Ce9, B01001Ce10, B01001Ce11, B01001Ce12, B01001Ce13, 
					B01001Ce24, B01001Ce25, B01001Ce26, B01001Ce27, B01001Ce28, 
					B01001De9, B01001De10, B01001De11, B01001De12, B01001De13, 
					B01001De24, B01001De25, B01001De26, B01001De27, B01001De28, 
					B01001Ee9, B01001Ee10, B01001Ee11, B01001Ee12, B01001Ee13, 
					B01001Ee24, B01001Ee25, B01001Ee26, B01001Ee27, B01001Ee28, 
					B01001Fe9, B01001Fe10, B01001Fe11, B01001Fe12, B01001Fe13, 
					B01001Fe24, B01001Fe25, B01001Fe26, B01001Fe27, B01001Fe28, 
					B01001Ge9, B01001Ge10, B01001Ge11, B01001Ge12, B01001Ge13, 
					B01001Ge24, B01001Ge25, B01001Ge26, B01001Ge27, B01001Ge28 );

	  PopWorkFT_&_years. = sum(B20005e3, B20005e50 );
			PopWorkFTB_&_years. = sum(B20005Be3, B20005Be50 );
			PopWorkFTW_&_years. = sum(B20005He3, B20005He50 );
			PopWorkFTH_&_years. = sum(B20005Ie3, B20005Ie50 );
			PopWorkFTA_&_years. = sum(B20005De3, B20005De50, B20005Ee3, B20005Ee50 );
			PopWorkFTIOM_&_years. = sum(B20005Ce3, B20005Ce50, B20005Fe3, B20005Fe50, B20005Ge3, B20005Ge50 );
			PopWorkFTAIOM_&_years. = sum(B20005Ce3, B20005Ce50, B20005De3, B20005De50, B20005Ee3, B20005Ee50,
										 B20005Fe3, B20005Fe50, B20005Ge3, B20005Ge50 );

	  PopWorkEarn_&_years. = sum(B20005e5, B20005e28, B20005e52, B20005e75 );
			PopWorkEarnB_&_years. = sum(B20005Be5, B20005Be28, B20005Be52, B20005Be75 );
			PopWorkEarnW_&_years. = sum(B20005He5, B20005He28, B20005He52, B20005He75 );
			PopWorkEarnH_&_years. = sum(B20005Ie5, B20005Ie28, B20005Ie52, B20005Ie75 );
			PopWorkEarnA_&_years. = 
				sum(B20005De5,  B20005De28, B20005De52, B20005De75, 
					B20005Ee5, B20005Ee28, B20005Ee52, B20005Ee75 );
			PopWorkEarnIOM_&_years. = 
				sum(B20005Ce5, B20005Ce28, B20005Ce52, B20005Ce75, 
					B20005Fe5, B20005Fe28, B20005Fe52, B20005Fe75, 
					B20005Ge5, B20005Ge28, B20005Ge52, B20005Ge75 );
			PopWorkEarnAIOM_&_years. = 
				sum(B20005Ce5, B20005Ce28, B20005Ce52, B20005Ce75, 
					B20005De5,  B20005De28, B20005De52, B20005De75, 
					B20005Ee5, B20005Ee28, B20005Ee52, B20005Ee75, 
					B20005Fe5, B20005Fe28, B20005Fe52, B20005Fe75, 
					B20005Ge5, B20005Ge28, B20005Ge52, B20005Ge75 );

	  PopWorkFTLT35K_&_years. = 
		sum(B20005e4, B20005e6, B20005e7, B20005e8, B20005e9, B20005e10, B20005e11, 
			B20005e12, B20005e13, B20005e14, B20005e15, B20005e16, B20005e17, 
			B20005e51, B20005e53, B20005e54, B20005e55, B20005e56, B20005e57, 
			B20005e58, B20005e59, B20005e60, B20005e61, B20005e62, B20005e63, B20005e64 );
			PopWorkFTLT35KB_&_years. = 
				sum(B20005Be4, B20005Be6, B20005Be7, B20005Be8, B20005Be9, B20005Be10, B20005Be11,
					B20005Be12, B20005Be13, B20005Be14, B20005Be15, B20005Be16, B20005Be17, 
					B20005Be51, B20005Be53, B20005Be54, B20005Be55, B20005Be56, B20005Be57, 
					B20005Be58, B20005Be59, B20005Be60, B20005Be61, B20005Be62, B20005Be63, B20005Be64 );
			PopWorkFTLT35KW_&_years. = 
				sum(B20005He4, B20005He6, B20005He7, B20005He8, B20005He9, B20005He10, B20005He11,
					B20005He12, B20005He13, B20005He14, B20005He15, B20005He16, B20005He17, 
					B20005He51, B20005He53, B20005He54, B20005He55, B20005He56, B20005He57, 
					B20005He58, B20005He59, B20005He60, B20005He61, B20005He62, B20005He63, B20005He64 );
			PopWorkFTLT35KH_&_years. = 
				sum(B20005Ie4, B20005Ie6, B20005Ie7, B20005Ie8, B20005Ie9, B20005Ie10, B20005Ie11,
					B20005Ie12, B20005Ie13, B20005Ie14, B20005Ie15, B20005Ie16, B20005Ie17, 
					B20005Ie51, B20005Ie53, B20005Ie54, B20005Ie55, B20005Ie56, B20005Ie57, 
					B20005Ie58, B20005Ie59, B20005Ie60, B20005Ie61, B20005Ie62, B20005Ie63, B20005Ie64 );
			PopWorkFTLT35KA_&_years. = 
				sum(B20005De4, B20005De6, B20005De7, B20005De8, B20005De9, B20005De10, B20005De11,
					B20005De12, B20005De13, B20005De14, B20005De15, B20005De16, B20005De17, 
					B20005De51, B20005De53, B20005De54, B20005De55, B20005De56, B20005De57, 
					B20005De58, B20005De59, B20005De60, B20005De61, B20005De62, B20005De63, B20005De64,
					B20005Ee4, B20005Ee6, B20005Ee7, B20005Ee8, B20005Ee9, B20005Ee10, B20005Ee11,
					B20005Ee12, B20005Ee13, B20005Ee14, B20005Ee15, B20005Ee16, B20005Ee17, 
					B20005Ee51, B20005Ee53, B20005Ee54, B20005Ee55, B20005Ee56, B20005Ee57, 
					B20005Ee58, B20005Ee59, B20005Ee60, B20005Ee61, B20005Ee62, B20005Ee63, B20005Ee64 );
			PopWorkFTLT35KIOM_&_years. = 
				sum(B20005Ce4, B20005Ce6, B20005Ce7, B20005Ce8, B20005Ce9, B20005Ce10, B20005Ce11,
					B20005Ce12, B20005Ce13, B20005Ce14, B20005Ce15, B20005Ce16, B20005Ce17, 
					B20005Ce51, B20005Ce53, B20005Ce54, B20005Ce55, B20005Ce56, B20005Ce57, 
					B20005Ce58, B20005Ce59, B20005Ce60, B20005Ce61, B20005Ce62, B20005Ce63, B20005Ce64,
					B20005Fe4, B20005Fe6, B20005Fe7, B20005Fe8, B20005Fe9, B20005Fe10, B20005Fe11,
					B20005Fe12, B20005Fe13, B20005Fe14, B20005Fe15, B20005Fe16, B20005Fe17, 
					B20005Fe51, B20005Fe53, B20005Fe54, B20005Fe55, B20005Fe56, B20005Fe57, 
					B20005Fe58, B20005Fe59, B20005Fe60, B20005Fe61, B20005Fe62, B20005Fe63, B20005Fe64,
					B20005Ge4, B20005Ge6, B20005Ge7, B20005Ge8, B20005Ge9, B20005Ge10, B20005Ge11,
					B20005Ge12, B20005Ge13, B20005Ge14, B20005Ge15, B20005Ge16, B20005Ge17, 
					B20005Ge51, B20005Ge53, B20005Ge54, B20005Ge55, B20005Ge56, B20005Ge57, 
					B20005Ge58, B20005Ge59, B20005Ge60, B20005Ge61, B20005Ge62, B20005Ge63, B20005Ge64 );

			PopWorkFTLT35KAIOM_&_years. = 
				sum(B20005Ce4, B20005Ce6, B20005Ce7, B20005Ce8, B20005Ce9, B20005Ce10, B20005Ce11,
					B20005Ce12, B20005Ce13, B20005Ce14, B20005Ce15, B20005Ce16, B20005Ce17, 
					B20005Ce51, B20005Ce53, B20005Ce54, B20005Ce55, B20005Ce56, B20005Ce57, 
					B20005Ce58, B20005Ce59, B20005Ce60, B20005Ce61, B20005Ce62, B20005Ce63, B20005Ce64,
					B20005De4, B20005De6, B20005De7, B20005De8, B20005De9, B20005De10, B20005De11,
					B20005De12, B20005De13, B20005De14, B20005De15, B20005De16, B20005De17, 
					B20005De51, B20005De53, B20005De54, B20005De55, B20005De56, B20005De57, 
					B20005De58, B20005De59, B20005De60, B20005De61, B20005De62, B20005De63, B20005De64,
					B20005Ee4, B20005Ee6, B20005Ee7, B20005Ee8, B20005Ee9, B20005Ee10, B20005Ee11,
					B20005Ee12, B20005Ee13, B20005Ee14, B20005Ee15, B20005Ee16, B20005Ee17, 
					B20005Ee51, B20005Ee53, B20005Ee54, B20005Ee55, B20005Ee56, B20005Ee57, 
					B20005Ee58, B20005Ee59, B20005Ee60, B20005Ee61, B20005Ee62, B20005Ee63, B20005Ee64,
					B20005Fe4, B20005Fe6, B20005Fe7, B20005Fe8, B20005Fe9, B20005Fe10, B20005Fe11,
					B20005Fe12, B20005Fe13, B20005Fe14, B20005Fe15, B20005Fe16, B20005Fe17, 
					B20005Fe51, B20005Fe53, B20005Fe54, B20005Fe55, B20005Fe56, B20005Fe57, 
					B20005Fe58, B20005Fe59, B20005Fe60, B20005Fe61, B20005Fe62, B20005Fe63, B20005Fe64,
					B20005Ge4, B20005Ge6, B20005Ge7, B20005Ge8, B20005Ge9, B20005Ge10, B20005Ge11,
					B20005Ge12, B20005Ge13, B20005Ge14, B20005Ge15, B20005Ge16, B20005Ge17, 
					B20005Ge51, B20005Ge53, B20005Ge54, B20005Ge55, B20005Ge56, B20005Ge57, 
					B20005Ge58, B20005Ge59, B20005Ge60, B20005Ge61, B20005Ge62, B20005Ge63, B20005Ge64 );

	  PopWorkFTLT75K_&_years. = 
		sum(B20005e4, B20005e6, B20005e7, B20005e8, B20005e9, B20005e10, B20005e11, B20005e12, 
			B20005e13, B20005e14, B20005e15, B20005e16, B20005e17, B20005e18, B20005e19, B20005e20, 
			B20005e21, B20005e22, B20005e23, B20005e51, B20005e53, B20005e54, B20005e55, B20005e56, 
			B20005e57, B20005e58, B20005e59, B20005e60, B20005e61, B20005e62, B20005e63, B20005e64, 
			B20005e65, B20005e66, B20005e67, B20005e68, B20005e69, B20005e70 );

			PopWorkFTLT75KB_&_years. = 
				sum(B20005Be4, B20005Be6, B20005Be7, B20005Be8, B20005Be9, B20005Be10, B20005Be11, B20005Be12, 
					B20005Be13, B20005Be14, B20005Be15, B20005Be16, B20005Be17, B20005Be18, B20005Be19, B20005Be20, 
					B20005Be21, B20005Be22, B20005Be23, B20005Be51, B20005Be53, B20005Be54, B20005Be55, B20005Be56, 
					B20005Be57, B20005Be58, B20005Be59, B20005Be60, B20005Be61, B20005Be62, B20005Be63, B20005Be64, 
					B20005Be65, B20005Be66, B20005Be67, B20005Be68, B20005Be69, B20005Be70 );

			PopWorkFTLT75KW_&_years. = 
				sum(B20005He4, B20005He6, B20005He7, B20005He8, B20005He9, B20005He10, B20005He11, B20005He12, 
					B20005He13, B20005He14, B20005He15, B20005He16, B20005He17, B20005He18, B20005He19, B20005He20, 
					B20005He21, B20005He22, B20005He23, B20005He51, B20005He53, B20005He54, B20005He55, B20005He56, 
					B20005He57, B20005He58, B20005He59, B20005He60, B20005He61, B20005He62, B20005He63, B20005He64, 
					B20005He65, B20005He66, B20005He67, B20005He68, B20005He69, B20005He70 );

			PopWorkFTLT75KH_&_years. = 
				sum(B20005Ie4, B20005Ie6, B20005Ie7, B20005Ie8, B20005Ie9, B20005Ie10, B20005Ie11, B20005Ie12, 
					B20005Ie13, B20005Ie14, B20005Ie15, B20005Ie16, B20005Ie17, B20005Ie18, B20005Ie19, B20005Ie20, 
					B20005Ie21, B20005Ie22, B20005Ie23, B20005Ie51, B20005Ie53, B20005Ie54, B20005Ie55, B20005Ie56, 
					B20005Ie57, B20005Ie58, B20005Ie59, B20005Ie60, B20005Ie61, B20005Ie62, B20005Ie63, B20005Ie64, 
					B20005Ie65, B20005Ie66, B20005Ie67, B20005Ie68, B20005Ie69, B20005Ie70 );

			PopWorkFTLT75KA_&_years. = 
				sum(B20005De4, B20005De6, B20005De7, B20005De8, B20005De9, B20005De10, B20005De11, B20005De12, 
					B20005De13, B20005De14, B20005De15, B20005De16, B20005De17, B20005De18, B20005De19, B20005De20, 
					B20005De21, B20005De22, B20005De23, B20005De51, B20005De53, B20005De54, B20005De55, B20005De56, 
					B20005De57, B20005De58, B20005De59, B20005De60, B20005De61, B20005De62, B20005De63, B20005De64, 
					B20005De65, B20005De66, B20005De67, B20005De68, B20005De69, B20005De70,
					B20005Ee4, B20005Ee6, B20005Ee7, B20005Ee8, B20005Ee9, B20005Ee10, B20005Ee11, B20005Ee12, 
					B20005Ee13, B20005Ee14, B20005Ee15, B20005Ee16, B20005Ee17, B20005Ee18, B20005Ee19, B20005Ee20, 
					B20005Ee21, B20005Ee22, B20005Ee23, B20005Ee51, B20005Ee53, B20005Ee54, B20005Ee55, B20005Ee56, 
					B20005Ee57, B20005Ee58, B20005Ee59, B20005Ee60, B20005Ee61, B20005Ee62, B20005Ee63, B20005Ee64, 
					B20005Ee65, B20005Ee66, B20005Ee67, B20005Ee68, B20005Ee69, B20005Ee70 );

			PopWorkFTLT75KIOM_&_years. = 
				sum(B20005Ce4, B20005Ce6, B20005Ce7, B20005Ce8, B20005Ce9, B20005Ce10, B20005Ce11, B20005Ce12, 
					B20005Ce13, B20005Ce14, B20005Ce15, B20005Ce16, B20005Ce17, B20005Ce18, B20005Ce19, B20005Ce20, 
					B20005Ce21, B20005Ce22, B20005Ce23, B20005Ce51, B20005Ce53, B20005Ce54, B20005Ce55, B20005Ce56, 
					B20005Ce57, B20005Ce58, B20005Ce59, B20005Ce60, B20005Ce61, B20005Ce62, B20005Ce63, B20005Ce64, 
					B20005Ce65, B20005Ce66, B20005Ce67, B20005Ce68, B20005Ce69, B20005Ce70,
					B20005Fe4, B20005Fe6, B20005Fe7, B20005Fe8, B20005Fe9, B20005Fe10, B20005Fe11, B20005Fe12, 
					B20005Fe13, B20005Fe14, B20005Fe15, B20005Fe16, B20005Fe17, B20005Fe18, B20005Fe19, B20005Fe20, 
					B20005Fe21, B20005Fe22, B20005Fe23, B20005Fe51, B20005Fe53, B20005Fe54, B20005Fe55, B20005Fe56, 
					B20005Fe57, B20005Fe58, B20005Fe59, B20005Fe60, B20005Fe61, B20005Fe62, B20005Fe63, B20005Fe64, 
					B20005Fe65, B20005Fe66, B20005Fe67, B20005Fe68, B20005Fe69, B20005Fe70,
					B20005Ge4, B20005Ge6, B20005Ge7, B20005Ge8, B20005Ge9, B20005Ge10, B20005Ge11, B20005Ge12, 
					B20005Ge13, B20005Ge14, B20005Ge15, B20005Ge16, B20005Ge17, B20005Ge18, B20005Ge19, B20005Ge20, 
					B20005Ge21, B20005Ge22, B20005Ge23, B20005Ge51, B20005Ge53, B20005Ge54, B20005Ge55, B20005Ge56, 
					B20005Ge57, B20005Ge58, B20005Ge59, B20005Ge60, B20005Ge61, B20005Ge62, B20005Ge63, B20005Ge64, 
					B20005Ge65, B20005Ge66, B20005Ge67, B20005Ge68, B20005Ge69, B20005Ge70 );

			PopWorkFTLT75KAIOM_&_years. = 
				sum(B20005Ce4, B20005Ce6, B20005Ce7, B20005Ce8, B20005Ce9, B20005Ce10, B20005Ce11, B20005Ce12, 
					B20005Ce13, B20005Ce14, B20005Ce15, B20005Ce16, B20005Ce17, B20005Ce18, B20005Ce19, B20005Ce20, 
					B20005Ce21, B20005Ce22, B20005Ce23, B20005Ce51, B20005Ce53, B20005Ce54, B20005Ce55, B20005Ce56, 
					B20005Ce57, B20005Ce58, B20005Ce59, B20005Ce60, B20005Ce61, B20005Ce62, B20005Ce63, B20005Ce64, 
					B20005Ce65, B20005Ce66, B20005Ce67, B20005Ce68, B20005Ce69, B20005Ce70,
					B20005De4, B20005De6, B20005De7, B20005De8, B20005De9, B20005De10, B20005De11, B20005De12, 
					B20005De13, B20005De14, B20005De15, B20005De16, B20005De17, B20005De18, B20005De19, B20005De20, 
					B20005De21, B20005De22, B20005De23, B20005De51, B20005De53, B20005De54, B20005De55, B20005De56, 
					B20005De57, B20005De58, B20005De59, B20005De60, B20005De61, B20005De62, B20005De63, B20005De64, 
					B20005De65, B20005De66, B20005De67, B20005De68, B20005De69, B20005De70,
					B20005Ee4, B20005Ee6, B20005Ee7, B20005Ee8, B20005Ee9, B20005Ee10, B20005Ee11, B20005Ee12, 
					B20005Ee13, B20005Ee14, B20005Ee15, B20005Ee16, B20005Ee17, B20005Ee18, B20005Ee19, B20005Ee20, 
					B20005Ee21, B20005Ee22, B20005Ee23, B20005Ee51, B20005Ee53, B20005Ee54, B20005Ee55, B20005Ee56, 
					B20005Ee57, B20005Ee58, B20005Ee59, B20005Ee60, B20005Ee61, B20005Ee62, B20005Ee63, B20005Ee64, 
					B20005Ee65, B20005Ee66, B20005Ee67, B20005Ee68, B20005Ee69, B20005Ee70,
					B20005Fe4, B20005Fe6, B20005Fe7, B20005Fe8, B20005Fe9, B20005Fe10, B20005Fe11, B20005Fe12, 
					B20005Fe13, B20005Fe14, B20005Fe15, B20005Fe16, B20005Fe17, B20005Fe18, B20005Fe19, B20005Fe20, 
					B20005Fe21, B20005Fe22, B20005Fe23, B20005Fe51, B20005Fe53, B20005Fe54, B20005Fe55, B20005Fe56, 
					B20005Fe57, B20005Fe58, B20005Fe59, B20005Fe60, B20005Fe61, B20005Fe62, B20005Fe63, B20005Fe64, 
					B20005Fe65, B20005Fe66, B20005Fe67, B20005Fe68, B20005Fe69, B20005Fe70,
					B20005Ge4, B20005Ge6, B20005Ge7, B20005Ge8, B20005Ge9, B20005Ge10, B20005Ge11, B20005Ge12, 
					B20005Ge13, B20005Ge14, B20005Ge15, B20005Ge16, B20005Ge17, B20005Ge18, B20005Ge19, B20005Ge20, 
					B20005Ge21, B20005Ge22, B20005Ge23, B20005Ge51, B20005Ge53, B20005Ge54, B20005Ge55, B20005Ge56, 
					B20005Ge57, B20005Ge58, B20005Ge59, B20005Ge60, B20005Ge61, B20005Ge62, B20005Ge63, B20005Ge64, 
					B20005Ge65, B20005Ge66, B20005Ge67, B20005Ge68, B20005Ge69, B20005Ge70 );

      mPopCivilianEmployed_&_years. = 
        %moe_sum( var=B23001m7 B23001m14 B23001m21 B23001m28 B23001m35 B23001m42 B23001m49 
             B23001m56 B23001m63 B23001m70 B23001m75 B23001m80 B23001m85
             B23001m93 B23001m100 B23001m107 B23001m114 B23001m121 B23001m128 
             B23001m135 B23001m142 B23001m149 B23001m156 B23001m161 B23001m166 B23001m171 );

			mPopCivilianEmployedB_&_years. = %moe_sum( var=C23002Bm7 C23002Bm12 C23002Bm20 C23002Bm25);
			mPopCivilianEmployedW_&_years. = %moe_sum( var=C23002Hm7 C23002Hm12 C23002Hm20 C23002Hm25);
			mPopCivilianEmployedH_&_years. = %moe_sum( var=C23002Im7 C23002Im12 C23002Im20 C23002Im25);
			mPopCivilianEmployedA_&_years. = %moe_sum( var=C23002Dm7 C23002Dm12 C23002Dm20 C23002Dm25 C23002Em7 C23002Em12 C23002Em20 C23002Em25);
			mPopCivilianEmployedIOM_&_years. = 
				%moe_sum( var=C23002Cm7 C23002Cm12 C23002Cm20 C23002Cm25 
							C23002Fm7 C23002Fm12 C23002Fm20 C23002Fm25 
							C23002Gm7 C23002Gm12 C23002Gm20 C23002Gm25);
			mPopCivilianEmployedAIOM_&_years. = 
				%moe_sum( var=C23002Cm7 C23002Cm12 C23002Cm20 C23002Cm25 
							C23002Dm7 C23002Dm12 C23002Dm20 C23002Dm25 
							C23002Em7 C23002Em12 C23002Em20 C23002Em25 
							C23002Fm7 C23002Fm12 C23002Fm20 C23002Fm25 
							C23002Gm7 C23002Gm12 C23002Gm20 C23002Gm25);

      mPopUnemployed_&_years. = 
        %moe_sum( var=B23001m8 B23001m15 B23001m22 B23001m29 B23001m36 B23001m43 B23001m50 
             B23001m57 B23001m64 B23001m71 B23001m76 B23001m81 B23001m86 
             B23001m94 B23001m101 B23001m108 B23001m115 B23001m122 B23001m129 
             B23001m136 B23001m143 B23001m150 B23001m157 B23001m162 B23001m167 B23001m172 );

			mPopUnemployedB_&_years. = %moe_sum( var=C23002Bm8 C23002Bm13 C23002Bm21 C23002Bm26);
			mPopUnemployedW_&_years. = %moe_sum( var=C23002Hm8 C23002Hm13 C23002Hm21 C23002Hm26);
			mPopUnemployedH_&_years. = %moe_sum( var=C23002Im8 C23002Im13 C23002Im21 C23002Im26);
			mPopUnemployedA_&_years. = %moe_sum( var=C23002Dm8 C23002Dm13 C23002Dm21 C23002Dm26 C23002Em8 C23002Em13 C23002Em21 C23002Em26);
			mPopUnemployedIOM_&_years. = 
				%moe_sum( var=C23002Cm8 C23002Cm13 C23002Cm21 C23002Cm26 
				C23002Fm8 C23002Fm13 C23002Fm21 C23002Fm26 
				C23002Gm8 C23002Gm13 C23002Gm21 C23002Gm26);
			mPopUnemployedAIOM_&_years. = 
				%moe_sum( var=C23002Cm8 C23002Cm13 C23002Cm21 C23002Cm26 
				C23002Dm8 C23002Dm13 C23002Dm21 C23002Dm26 
				C23002Em8 C23002Em13 C23002Em21 C23002Em26 
				C23002Fm8 C23002Fm13 C23002Fm21 C23002Fm26 
				C23002Gm8 C23002Gm13 C23002Gm21 C23002Gm26);

	   mPopInCivLaborForce_&_years. = %moe_sum( var=mPopCivilianEmployed_&_years. mPopUnemployed_&_years. );
      
			mPopInCivLaborForceB_&_years. = %moe_sum( var=mPopCivilianEmployedB_&_years. mPopUnemployedB_&_years. );
			mPopInCivLaborForceW_&_years. = %moe_sum( var=mPopCivilianEmployedW_&_years. mPopUnemployedW_&_years. );
			mPopInCivLaborForceH_&_years. = %moe_sum( var=mPopCivilianEmployedH_&_years. mPopUnemployedH_&_years. );
			mPopInCivLaborForceA_&_years. = %moe_sum( var=mPopCivilianEmployedA_&_years. mPopUnemployedA_&_years. );
			mPopInCivLaborForceIOM_&_years. = %moe_sum( var=mPopCivilianEmployedIOM_&_years. mPopUnemployedIOM_&_years. );
			mPopInCivLaborForceAIOM_&_years. = %moe_sum( var=mPopCivilianEmployedAIOM_&_years. mPopUnemployedAIOM_&_years. );

      mPop16andOverEmployed_&_years. =
        %moe_sum( var=mPopCivilianEmployed_&_years. B23001m5 B23001m12 B23001m19 B23001m26 B23001m33 B23001m40 
             B23001m47 B23001m54 B23001m61 B23001m68
             B23001m91 B23001m98 B23001m105 B23001m112 B23001m119 B23001m126 
             B23001m133 B23001m140 B23001m147 B23001m154 );

      mPop16andOverEmploy_&_years. =
        %moe_sum( var=mPopCivilianEmployed_&_years. B23001m5 B23001m12 B23001m19 B23001m26 B23001m33 B23001m40 
             B23001m47 B23001m54 B23001m61 B23001m68
             B23001m91 B23001m98 B23001m105 B23001m112 B23001m119 B23001m126 
             B23001m133 B23001m140 B23001m147 B23001m154 );

		mPop16andOverEmployB_&_years. = %moe_sum( var=mPopCivilianEmployedB_&_years. C23002Bm5 C23002Bm18 );
		mPop16andOverEmployW_&_years. =
		        %moe_sum( var=mPopCivilianEmployedW_&_years. C23002Hm5 C23002Hm18 );
		mPop16andOverEmployH_&_years. =
		        %moe_sum( var=mPopCivilianEmployedH_&_years. C23002Im5 C23002Im18 );
		mPop16andOverEmployA_&_years. = 
				%moe_sum( var=mPopCivilianEmployedA_&_years. C23002Dm5 C23002Dm18 C23002Em5 C23002Em18 );
		mPop16andOverEmployIOM_&_years. =
		        %moe_sum( var=mPopCivilianEmployedIOM_&_years. C23002Cm5 C23002Cm18 C23002Fm5 C23002Fm18 C23002Gm5 C23002Gm18 );
		mPop16andOverEmployAIOM_&_years. =
		        %moe_sum( var=mPopCivilianEmployedAIOM_&_years. C23002Cm5 C23002Cm18 C23002Dm5 C23002Dm18 
								C23002Em5 C23002Em18 C23002Fm5 C23002Fm18 C23002Gm5 C23002Gm18 );

	  mPop16_64Employed_&_years. = 
		%moe_sum( var=B23001m5 B23001m7 B23001m12 B23001m14 B23001m19 B23001m21 B23001m26 B23001m28 
					B23001m33 B23001m35 B23001m40 B23001m42 B23001m47 B23001m49 B23001m54 B23001m56 
					B23001m61 B23001m63 B23001m68 B23001m70 B23001m91 B23001m93 B23001m98 B23001m100 
					B23001m105 B23001m107 B23001m112 B23001m114 B23001m119 B23001m121 B23001m126 B23001m128 
					B23001m133 B23001m135 B23001m140 B23001m142 B23001m147 B23001m149 B23001m154 B23001m156);
			mPop16_64EmployedB_&_years. = %moe_sum( var=C23002Be5 C23002Be7 C23002Be18 C23002Be20);
			mPop16_64EmployedW_&_years. = %moe_sum( var=C23002He5 C23002He7 C23002He18 C23002He20);
			mPop16_64EmployedH_&_years. = %moe_sum( var=C23002Ie5 C23002Ie7 C23002Ie18 C23002Ie20);
			mPop16_64EmployedA_&_years. = 
				%moe_sum( var=C23002De5 C23002De7 C23002De18 C23002De20 
							C23002Ee5 C23002Ee7 C23002Ee18 C23002Ee20);
			mPop16_64EmployedIOM_&_years. = 
				%moe_sum( var=C23002Ce5 C23002Ce7 C23002Ce18 C23002Ce20 
							C23002Fe5 C23002Fe7 C23002Fe18 C23002Fe20 
							C23002Ge5 C23002Ge7 C23002Ge18 C23002Ge20);
			mPop16_64EmployedAIOM_&_years. = 
				%moe_sum( var=C23002Ce5 C23002Ce7 C23002Ce18 C23002Ce20 
							C23002De5 C23002De7 C23002De18 C23002De20 
							C23002Ee5 C23002Ee7 C23002Ee18 C23002Ee20 
							C23002Fe5 C23002Fe7 C23002Fe18 C23002Fe20 
							C23002Ge5 C23002Ge7 C23002Ge18 C23002Ge20);

	  mPop25_64Employed_&_years. = 
		%moe_sum( var=B23001m26 B23001m28 B23001m33 B23001m35 B23001m40 B23001m42 B23001m47 B23001m49 
					B23001m54 B23001m56 B23001m61 B23001m63 B23001m68 B23001m70 B23001m112 B23001m114 
					B23001m119 B23001m121 B23001m126 B23001m128 B23001m133 B23001m135 B23001m140 B23001m142 
					B23001m147 B23001m149 B23001m154 B23001m156);

      mPop16andOverYears_&_years. = B23001m1;
		  	mPop16andOverYearsB_&_years. = B20005Bm1;
			mPop16andOverYearsW_&_years. = B20005Hm1;
			mPop16andOverYearsH_&_years. = B20005Im1;
			mPop16andOverYearsA_&_years. = %moe_sum( var=B20005Dm1 B20005Em1);
			mPop16andOverYearsIOM_&_years. = %moe_sum( var=B20005Cm1 B20005Fm1 B20005Gm1);
			mPop16andOverYearsAIOM_&_years. = %moe_sum( var=B20005Cm1 B20005Dm1 B20005Em1 B20005Fm1 B20005Gm1);

	  mPop16_64years_&_years. = 
		%moe_sum( var=B23001m3 B23001m10 B23001m17 B23001m24 B23001m31 B23001m38 B23001m45 B23001m52 
			B23001m59 B23001m66 B23001m89 B23001m96 B23001m103 B23001m110 B23001m117 B23001m124 
			B23001m131 B23001m138 B23001m145 B23001m152);
			mPop16_64yearsB_&_years. = %moe_sum( var=C23002Bm3 C23002Bm16);
			mPop16_64yearsW_&_years. = %moe_sum( var=C23002Hm3 C23002Hm16);
			mPop16_64yearsH_&_years. = %moe_sum( var=C23002Im3 C23002Im16);
			mPop16_64yearsA_&_years. = %moe_sum( var=C23002Dm3 C23002Dm16 C23002Em3 C23002Em16);
			mPop16_64yearsIOM_&_years. = %moe_sum( var=C23002Cm3 C23002Cm16 C23002Fm3 C23002Fm16 C23002Gm3 C23002Gm16) ; 
			mPop16_64yearsAIOM_&_years. = %moe_sum( var=C23002Cm3 C23002Cm16 C23002Dm3 C23002Dm16 C23002Em3 C23002Em16 
														C23002Fm3 C23002Fm16 C23002Gm3 C23002Gm16);


	  mPop25_64years_&_years. = 
		%moe_sum( var=B01001m11 B01001m12 B01001m13 B01001m14 B01001m15 B01001m16 
					B01001m17 B01001m18 B01001m19 B01001m35 B01001m36 B01001m37 
					B01001m38 B01001m39 B01001m40 B01001m41 B01001m42 B01001m43);

			mPop25_64yearsB_&_years. = 
				%moe_sum( var=B01001Bm9 B01001Bm10 B01001Bm11 B01001Bm12 B01001Bm13 
							B01001Bm24 B01001Bm25 B01001Bm26 B01001Bm27 B01001Bm28);
			mPop25_64yearsW_&_years. = 
				%moe_sum( var=B01001Hm9 B01001Hm10 B01001Hm11 B01001Hm12 B01001Hm13 
							B01001Hm24 B01001Hm25 B01001Hm26 B01001Hm27 B01001Hm28);
			mPop25_64yearsH_&_years. = 
				%moe_sum( var=B01001Im9 B01001Im10 B01001Im11 B01001Im12 B01001Im13 
							B01001Im24 B01001Im25 B01001Im26 B01001Im27 B01001Im28);
			mPop25_64yearsA_&_years. = 
				%moe_sum( var=B01001Dm9 B01001Dm10 B01001Dm11 B01001Dm12 B01001Dm13 
							B01001Dm24 B01001Dm25 B01001Dm26 B01001Dm27 B01001Dm28 
							B01001Em9 B01001Em10 B01001Em11 B01001Em12 B01001Em13 
							B01001Em24 B01001Em25 B01001Em26 B01001Em27 B01001Em28);
			mPop25_64yearsIOM_&_years. = 
				%moe_sum( var=B01001Cm9 B01001Cm10 B01001Cm11 B01001Cm12 B01001Cm13 
							B01001Cm24 B01001Cm25 B01001Cm26 B01001Cm27 B01001Cm28 
							B01001Fm9 B01001Fm10 B01001Fm11 B01001Fm12 B01001Fm13 
							B01001Fm24 B01001Fm25 B01001Fm26 B01001Fm27 B01001Fm28 
							B01001Gm9 B01001Gm10 B01001Gm11 B01001Gm12 B01001Gm13 
							B01001Gm24 B01001Gm25 B01001Gm26 B01001Gm27 B01001Gm28);
			mPop25_64yearsAIOM_&_years. = 
				%moe_sum( var=B01001Cm9 B01001Cm10 B01001Cm11 B01001Cm12 B01001Cm13 
							B01001Cm24 B01001Cm25 B01001Cm26 B01001Cm27 B01001Cm28 
							B01001Dm9 B01001Dm10 B01001Dm11 B01001Dm12 B01001Dm13 
							B01001Dm24 B01001Dm25 B01001Dm26 B01001Dm27 B01001Dm28 
							B01001Em9 B01001Em10 B01001Em11 B01001Em12 B01001Em13 
							B01001Em24 B01001Em25 B01001Em26 B01001Em27 B01001Em28 
							B01001Fm9 B01001Fm10 B01001Fm11 B01001Fm12 B01001Fm13 
							B01001Fm24 B01001Fm25 B01001Fm26 B01001Fm27 B01001Fm28 
							B01001Gm9 B01001Gm10 B01001Gm11 B01001Gm12 B01001Gm13 
							B01001Gm24 B01001Gm25 B01001Gm26 B01001Gm27 B01001Gm28);

	  mPopWorkFT_&_years. = %moe_sum( var=B20005m3 B20005m50);
			mPopWorkFTB_&_years. = %moe_sum( var=B20005Bm3 B20005Bm50);
			mPopWorkFTW_&_years. = %moe_sum( var=B20005Hm3 B20005Hm50);
			mPopWorkFTH_&_years. = %moe_sum( var=B20005Im3 B20005Im50);
			mPopWorkFTA_&_years. = %moe_sum( var=B20005Dm3 B20005Dm50 B20005Em3 B20005Em50);
			mPopWorkFTIOM_&_years. = %moe_sum( var=B20005Cm3 B20005Cm50 B20005Fm3 B20005Fm50 B20005Gm3 B20005Gm50);
			mPopWorkFTAIOM_&_years. = %moe_sum( var=B20005Cm3 B20005Cm50 B20005Dm3 B20005Dm50 B20005Em3 B20005Em50
													B20005Fm3 B20005Fm50 B20005Gm3 B20005Gm50);

	  mPopWorkEarn_&_years. = %moe_sum( var=B20005m5 B20005m28 B20005m52 B20005m75);
			mPopWorkEarnB_&_years. = %moe_sum( var=B20005Bm5 B20005Bm28 B20005Bm52 B20005Bm75);
			mPopWorkEarnW_&_years. = %moe_sum( var=B20005Hm5 B20005Hm28 B20005Hm52 B20005Hm75);
			mPopWorkEarnH_&_years. = %moe_sum( var=B20005Im5 B20005Im28 B20005Im52 B20005Im75);
			mPopWorkEarnA_&_years. = %moe_sum( var=B20005Dm5  B20005Dm28 B20005Dm52 B20005Dm75 B20005Em5 B20005Em28 B20005Em52 B20005Em75);
			mPopWorkEarnIOM_&_years. = 
				%moe_sum( var=B20005Cm5 B20005Cm28 B20005Cm52 B20005Cm75 
							B20005Fm5 B20005Fm28 B20005Fm52 B20005Fm75 
							B20005Gm5 B20005Gm28 B20005Gm52 B20005Gm75);
			mPopWorkEarnAIOM_&_years. = 
				%moe_sum( var=B20005Cm5 B20005Cm28 B20005Cm52 B20005Cm75 
							B20005Dm5  B20005Dm28 B20005Dm52 B20005Dm75 
							B20005Em5 B20005Em28 B20005Em52 B20005Em75 
							B20005Fm5 B20005Fm28 B20005Fm52 B20005Fm75 
							B20005Gm5 B20005Gm28 B20005Gm52 B20005Gm75);

	  mPopWorkFTLT35K_&_years = 
			%moe_sum( var=B20005m4 B20005m6 B20005m7 B20005m8 B20005m9 B20005m10 B20005m11 
						B20005m12 B20005m13 B20005m14 B20005m15 B20005m16 B20005m17 
						B20005m51 B20005m53 B20005m54 B20005m55 B20005m56 B20005m57 
						B20005m58 B20005m59 B20005m60 B20005m61 B20005m62 B20005m63 B20005m64);
			mPopWorkFTLT35KB_&_years. = 
				%moe_sum( var=B20005Bm4 B20005Bm6 B20005Bm7 B20005Bm8 B20005Bm9 B20005Bm10 B20005Bm11 
								B20005Bm12 B20005Bm13 B20005Bm14 B20005Bm15 B20005Bm16 B20005Bm17 
								B20005Bm51 B20005Bm53 B20005Bm54 B20005Bm55 B20005Bm56 B20005Bm57 
								B20005Bm58 B20005Bm59 B20005Bm60 B20005Bm61 B20005Bm62 B20005Bm63 B20005Bm64);
			mPopWorkFTLT35KW_&_years. = 
			%moe_sum( var=B20005Hm4 B20005Hm6 B20005Hm7 B20005Hm8 B20005Hm9 B20005Hm10 B20005Hm11 
				B20005Hm12 B20005Hm13 B20005Hm14 B20005Hm15 B20005Hm16 B20005Hm17 
				B20005Hm51 B20005Hm53 B20005Hm54 B20005Hm55 B20005Hm56 B20005Hm57 
				B20005Hm58 B20005Hm59 B20005Hm60 B20005Hm61 B20005Hm62 B20005Hm63 B20005Hm64);
			mPopWorkFTLT35KH_&_years. = 
			%moe_sum( var=B20005Im4 B20005Im6 B20005Im7 B20005Im8 B20005Im9 B20005Im10 B20005Im11 
				B20005Im12 B20005Im13 B20005Im14 B20005Im15 B20005Im16 B20005Im17 
				B20005Im51 B20005Im53 B20005Im54 B20005Im55 B20005Im56 B20005Im57 
				B20005Im58 B20005Im59 B20005Im60 B20005Im61 B20005Im62 B20005Im63 B20005Im64);
			mPopWorkFTLT35KA_&_years. = 
			%moe_sum( var=B20005Dm4 B20005Dm6 B20005Dm7 B20005Dm8 B20005Dm9 B20005Dm10 B20005Dm11 
				B20005Dm12 B20005Dm13 B20005Dm14 B20005Dm15 B20005Dm16 B20005Dm17 
				B20005Dm51 B20005Dm53 B20005Dm54 B20005Dm55 B20005Dm56 B20005Dm57 
				B20005Dm58 B20005Dm59 B20005Dm60 B20005Dm61 B20005Dm62 B20005Dm63 B20005Dm64 
				B20005Em4 B20005Em6 B20005Em7 B20005Em8 B20005Em9 B20005Em10 B20005Em11 
				B20005Em12 B20005Em13 B20005Em14 B20005Em15 B20005Em16 B20005Em17 
				B20005Em51 B20005Em53 B20005Em54 B20005Em55 B20005Em56 B20005Em57 
				B20005Em58 B20005Em59 B20005Em60 B20005Em61 B20005Em62 B20005Em63 B20005Em64);
			mPopWorkFTLT35KIOM_&_years. = 
			%moe_sum( var=B20005Cm4 B20005Cm6 B20005Cm7 B20005Cm8 B20005Cm9 B20005Cm10 B20005Cm11 
				B20005Cm12 B20005Cm13 B20005Cm14 B20005Cm15 B20005Cm16 B20005Cm17 
				B20005Cm51 B20005Cm53 B20005Cm54 B20005Cm55 B20005Cm56 B20005Cm57 
				B20005Cm58 B20005Cm59 B20005Cm60 B20005Cm61 B20005Cm62 B20005Cm63 B20005Cm64 
				B20005Fm4 B20005Fm6 B20005Fm7 B20005Fm8 B20005Fm9 B20005Fm10 B20005Fm11 
				B20005Fm12 B20005Fm13 B20005Fm14 B20005Fm15 B20005Fm16 B20005Fm17 
				B20005Fm51 B20005Fm53 B20005Fm54 B20005Fm55 B20005Fm56 B20005Fm57 
				B20005Fm58 B20005Fm59 B20005Fm60 B20005Fm61 B20005Fm62 B20005Fm63 B20005Fm64 
				B20005Gm4 B20005Gm6 B20005Gm7 B20005Gm8 B20005Gm9 B20005Gm10 B20005Gm11 
				B20005Gm12 B20005Gm13 B20005Gm14 B20005Gm15 B20005Gm16 B20005Gm17 
				B20005Gm51 B20005Gm53 B20005Gm54 B20005Gm55 B20005Gm56 B20005Gm57 
				B20005Gm58 B20005Gm59 B20005Gm60 B20005Gm61 B20005Gm62 B20005Gm63 B20005Gm64);
			mPopWorkFTLT35KAIOM_&_years. = 
			%moe_sum( var=B20005Cm4 B20005Cm6 B20005Cm7 B20005Cm8 B20005Cm9 B20005Cm10 B20005Cm11 
				B20005Cm12 B20005Cm13 B20005Cm14 B20005Cm15 B20005Cm16 B20005Cm17 
				B20005Cm51 B20005Cm53 B20005Cm54 B20005Cm55 B20005Cm56 B20005Cm57 
				B20005Cm58 B20005Cm59 B20005Cm60 B20005Cm61 B20005Cm62 B20005Cm63 B20005Cm64 
				B20005Dm4 B20005Dm6 B20005Dm7 B20005Dm8 B20005Dm9 B20005Dm10 B20005Dm11 
				B20005Dm12 B20005Dm13 B20005Dm14 B20005Dm15 B20005Dm16 B20005Dm17 
				B20005Dm51 B20005Dm53 B20005Dm54 B20005Dm55 B20005Dm56 B20005Dm57 
				B20005Dm58 B20005Dm59 B20005Dm60 B20005Dm61 B20005Dm62 B20005Dm63 B20005Dm64 
				B20005Em4 B20005Em6 B20005Em7 B20005Em8 B20005Em9 B20005Em10 B20005Em11 
				B20005Em12 B20005Em13 B20005Em14 B20005Em15 B20005Em16 B20005Em17 
				B20005Em51 B20005Em53 B20005Em54 B20005Em55 B20005Em56 B20005Em57 
				B20005Em58 B20005Em59 B20005Em60 B20005Em61 B20005Em62 B20005Em63 B20005Em64 
				B20005Fm4 B20005Fm6 B20005Fm7 B20005Fm8 B20005Fm9 B20005Fm10 B20005Fm11 
				B20005Fm12 B20005Fm13 B20005Fm14 B20005Fm15 B20005Fm16 B20005Fm17 
				B20005Fm51 B20005Fm53 B20005Fm54 B20005Fm55 B20005Fm56 B20005Fm57 
				B20005Fm58 B20005Fm59 B20005Fm60 B20005Fm61 B20005Fm62 B20005Fm63 B20005Fm64 
				B20005Gm4 B20005Gm6 B20005Gm7 B20005Gm8 B20005Gm9 B20005Gm10 B20005Gm11 
				B20005Gm12 B20005Gm13 B20005Gm14 B20005Gm15 B20005Gm16 B20005Gm17 
				B20005Gm51 B20005Gm53 B20005Gm54 B20005Gm55 B20005Gm56 B20005Gm57 
				B20005Gm58 B20005Gm59 B20005Gm60 B20005Gm61 B20005Gm62 B20005Gm63 B20005Gm64);

	  mPopWorkFTLT75K_&_years. = 
		%moe_sum( var=B20005m4 B20005m6 B20005m7 B20005m8 B20005m9 B20005m10 B20005m11 B20005m12 
				B20005m13 B20005m14 B20005m15 B20005m16 B20005m17 B20005m18 B20005m19 B20005m20 
				B20005m21 B20005m22 B20005m23 B20005m51 B20005m53 B20005m54 B20005m55 B20005m56 
				B20005m57 B20005m58 B20005m59 B20005m60 B20005m61 B20005m62 B20005m63 B20005m64 
				B20005m65 B20005m66 B20005m67 B20005m68 B20005m69 B20005m70);

			mPopWorkFTLT75KB_&_years. = 
				%moe_sum( var=B20005Bm4 B20005Bm6 B20005Bm7 B20005Bm8 B20005Bm9 B20005Bm10 B20005Bm11 B20005Bm12 
							B20005Bm13 B20005Bm14 B20005Bm15 B20005Bm16 B20005Bm17 B20005Bm18 B20005Bm19 B20005Bm20 
							B20005Bm21 B20005Bm22 B20005Bm23 B20005Bm51 B20005Bm53 B20005Bm54 B20005Bm55 B20005Bm56 
							B20005Bm57 B20005Bm58 B20005Bm59 B20005Bm60 B20005Bm61 B20005Bm62 B20005Bm63 B20005Bm64 
							B20005Bm65 B20005Bm66 B20005Bm67 B20005Bm68 B20005Bm69 B20005Bm70);
			mPopWorkFTLT75KW_&_years. = 
				%moe_sum( var=B20005Hm4 B20005Hm6 B20005Hm7 B20005Hm8 B20005Hm9 B20005Hm10 B20005Hm11 B20005Hm12 
							B20005Hm13 B20005Hm14 B20005Hm15 B20005Hm16 B20005Hm17 B20005Hm18 B20005Hm19 B20005Hm20 
							B20005Hm21 B20005Hm22 B20005Hm23 B20005Hm51 B20005Hm53 B20005Hm54 B20005Hm55 B20005Hm56 
							B20005Hm57 B20005Hm58 B20005Hm59 B20005Hm60 B20005Hm61 B20005Hm62 B20005Hm63 B20005Hm64
							B20005Hm65 B20005Hm66 B20005Hm67 B20005Hm68 B20005Hm69 B20005Hm70);
			mPopWorkFTLT75KH_&_years. = 
				%moe_sum( var=B20005Im4 B20005Im6 B20005Im7 B20005Im8 B20005Im9 B20005Im10 B20005Im11 B20005Im12 
							B20005Im13 B20005Im14 B20005Im15 B20005Im16 B20005Im17 B20005Im18 B20005Im19 B20005Im20 
							B20005Im21 B20005Im22 B20005Im23 B20005Im51 B20005Im53 B20005Im54 B20005Im55 B20005Im56 
							B20005Im57 B20005Im58 B20005Im59 B20005Im60 B20005Im61 B20005Im62 B20005Im63 B20005Im64 
							B20005Im65 B20005Im66 B20005Im67 B20005Im68 B20005Im69 B20005Im70);
			mPopWorkFTLT75KA_&_years. = 
				%moe_sum( var=B20005Dm4 B20005Dm6 B20005Dm7 B20005Dm8 B20005Dm9 B20005Dm10 B20005Dm11 B20005Dm12 
							B20005Dm13 B20005Dm14 B20005Dm15 B20005Dm16 B20005Dm17 B20005Dm18 B20005Dm19 B20005Dm20 
							B20005Dm21 B20005Dm22 B20005Dm23 B20005Dm51 B20005Dm53 B20005Dm54 B20005Dm55 B20005Dm56 
							B20005Dm57 B20005Dm58 B20005Dm59 B20005Dm60 B20005Dm61 B20005Dm62 B20005Dm63 B20005Dm64 
							B20005Dm65 B20005Dm66 B20005Dm67 B20005Dm68 B20005Dm69 B20005Dm70 
							B20005Em4 B20005Em6 B20005Em7 B20005Em8 B20005Em9 B20005Em10 B20005Em11 B20005Em12 
							B20005Em13 B20005Em14 B20005Em15 B20005Em16 B20005Em17 B20005Em18 B20005Em19 B20005Em20 
							B20005Em21 B20005Em22 B20005Em23 B20005Em51 B20005Em53 B20005Em54 B20005Em55 B20005Em56 
							B20005Em57 B20005Em58 B20005Em59 B20005Em60 B20005Em61 B20005Em62 B20005Em63 B20005Em64 
							B20005Em65 B20005Em66 B20005Em67 B20005Em68 B20005Em69 B20005Em70);
			mPopWorkFTLT75KIOM_&_years. = 
				%moe_sum( var=B20005Cm4 B20005Cm6 B20005Cm7 B20005Cm8 B20005Cm9 B20005Cm10 B20005Cm11 B20005Cm12 
							B20005Cm13 B20005Cm14 B20005Cm15 B20005Cm16 B20005Cm17 B20005Cm18 B20005Cm19 B20005Cm20 
							B20005Cm21 B20005Cm22 B20005Cm23 B20005Cm51 B20005Cm53 B20005Cm54 B20005Cm55 B20005Cm56 
							B20005Cm57 B20005Cm58 B20005Cm59 B20005Cm60 B20005Cm61 B20005Cm62 B20005Cm63 B20005Cm64 
							B20005Cm65 B20005Cm66 B20005Cm67 B20005Cm68 B20005Cm69 B20005Cm70 
							B20005Fm4 B20005Fm6 B20005Fm7 B20005Fm8 B20005Fm9 B20005Fm10 B20005Fm11 B20005Fm12 
							B20005Fm13 B20005Fm14 B20005Fm15 B20005Fm16 B20005Fm17 B20005Fm18 B20005Fm19 B20005Fm20 
							B20005Fm21 B20005Fm22 B20005Fm23 B20005Fm51 B20005Fm53 B20005Fm54 B20005Fm55 B20005Fm56 
							B20005Fm57 B20005Fm58 B20005Fm59 B20005Fm60 B20005Fm61 B20005Fm62 B20005Fm63 B20005Fm64 
							B20005Fm65 B20005Fm66 B20005Fm67 B20005Fm68 B20005Fm69 B20005Fm70 
							B20005Gm4 B20005Gm6 B20005Gm7 B20005Gm8 B20005Gm9 B20005Gm10 B20005Gm11 B20005Gm12 
							B20005Gm13 B20005Gm14 B20005Gm15 B20005Gm16 B20005Gm17 B20005Gm18 B20005Gm19 B20005Gm20 
							B20005Gm21 B20005Gm22 B20005Gm23 B20005Gm51 B20005Gm53 B20005Gm54 B20005Gm55 B20005Gm56 
							B20005Gm57 B20005Gm58 B20005Gm59 B20005Gm60 B20005Gm61 B20005Gm62 B20005Gm63 B20005Gm64 
							B20005Gm65 B20005Gm66 B20005Gm67 B20005Gm68 B20005Gm69 B20005Gm70);
			mPopWorkFTLT75KAIOM_&_years. = 
				%moe_sum( var=B20005Cm4 B20005Cm6 B20005Cm7 B20005Cm8 B20005Cm9 B20005Cm10 B20005Cm11 B20005Cm12 
							B20005Cm13 B20005Cm14 B20005Cm15 B20005Cm16 B20005Cm17 B20005Cm18 B20005Cm19 B20005Cm20 
							B20005Cm21 B20005Cm22 B20005Cm23 B20005Cm51 B20005Cm53 B20005Cm54 B20005Cm55 B20005Cm56 
							B20005Cm57 B20005Cm58 B20005Cm59 B20005Cm60 B20005Cm61 B20005Cm62 B20005Cm63 B20005Cm64 
							B20005Cm65 B20005Cm66 B20005Cm67 B20005Cm68 B20005Cm69 B20005Cm70 
							B20005Dm4 B20005Dm6 B20005Dm7 B20005Dm8 B20005Dm9 B20005Dm10 B20005Dm11 B20005Dm12 
							B20005Dm13 B20005Dm14 B20005Dm15 B20005Dm16 B20005Dm17 B20005Dm18 B20005Dm19 B20005Dm20 
							B20005Dm21 B20005Dm22 B20005Dm23 B20005Dm51 B20005Dm53 B20005Dm54 B20005Dm55 B20005Dm56 
							B20005Dm57 B20005Dm58 B20005Dm59 B20005Dm60 B20005Dm61 B20005Dm62 B20005Dm63 B20005Dm64 
							B20005Dm65 B20005Dm66 B20005Dm67 B20005Dm68 B20005Dm69 B20005Dm70 
							B20005Em4 B20005Em6 B20005Em7 B20005Em8 B20005Em9 B20005Em10 B20005Em11 B20005Em12 
							B20005Em13 B20005Em14 B20005Em15 B20005Em16 B20005Em17 B20005Em18 B20005Em19 B20005Em20 
							B20005Em21 B20005Em22 B20005Em23 B20005Em51 B20005Em53 B20005Em54 B20005Em55 B20005Em56 
							B20005Em57 B20005Em58 B20005Em59 B20005Em60 B20005Em61 B20005Em62 B20005Em63 B20005Em64 
							B20005Em65 B20005Em66 B20005Em67 B20005Em68 B20005Em69 B20005Em70 
							B20005Fm4 B20005Fm6 B20005Fm7 B20005Fm8 B20005Fm9 B20005Fm10 B20005Fm11 B20005Fm12 
							B20005Fm13 B20005Fm14 B20005Fm15 B20005Fm16 B20005Fm17 B20005Fm18 B20005Fm19 B20005Fm20 
							B20005Fm21 B20005Fm22 B20005Fm23 B20005Fm51 B20005Fm53 B20005Fm54 B20005Fm55 B20005Fm56 
							B20005Fm57 B20005Fm58 B20005Fm59 B20005Fm60 B20005Fm61 B20005Fm62 B20005Fm63 B20005Fm64 
							B20005Fm65 B20005Fm66 B20005Fm67 B20005Fm68 B20005Fm69 B20005Fm70 
							B20005Gm4 B20005Gm6 B20005Gm7 B20005Gm8 B20005Gm9 B20005Gm10 B20005Gm11 B20005Gm12 
							B20005Gm13 B20005Gm14 B20005Gm15 B20005Gm16 B20005Gm17 B20005Gm18 B20005Gm19 B20005Gm20 
							B20005Gm21 B20005Gm22 B20005Gm23 B20005Gm51 B20005Gm53 B20005Gm54 B20005Gm55 B20005Gm56 
							B20005Gm57 B20005Gm58 B20005Gm59 B20005Gm60 B20005Gm61 B20005Gm62 B20005Gm63 B20005Gm64 
							B20005Gm65 B20005Gm66 B20005Gm67 B20005Gm68 B20005Gm69 B20005Gm70);


      label
	  	PopCivilianEmployed_&_years. = "Persons 16+ years old in the civilian labor force and employed, &_years_dash "
			PopCivilianEmployedB_&_years. = "Persons 16+ years old in the civilian labor force and employed, Black/African American, &_years_dash "
			PopCivilianEmployedW_&_years. = "Persons 16+ years old in the civilian labor force and employed, Non-Hispanic White, &_years_dash "
			PopCivilianEmployedH_&_years. = "Persons 16+ years old in the civilian labor force and employed, Hispanic/Latino, &_years_dash "
			PopCivilianEmployedA_&_years. = "Persons 16+ years old in the civilian labor force and employed, Asian and Native Hawaiian and Other Pacific Islander, &_years_dash "
			PopCivilianEmployedIOM_&_years. = "Persons 16+ years old in the civilian labor force and employed, American Indian/Alaska Native, Some other race, Two or more races, &_years_dash "
			PopCivilianEmployedAIOM_&_years. = "Persons 16+ years old in the civilian labor force and employed, All remaining groups other than Black, Non-Hispanic White, Hispanic/Latino, &_years_dash "
	    PopUnemployed_&_years. = "Persons 16+ years old in the civilian labor force and unemployed, &_years_dash "
			PopUnemployedB_&_years. = "Persons 16+ years old in the civilian labor force and unemployed, Black/African American, &_years_dash "
			PopUnemployedW_&_years. = "Persons 16+ years old in the civilian labor force and unemployed, Non-Hispanic White, &_years_dash "
			PopUnemployedH_&_years. = "Persons 16+ years old in the civilian labor force and unemployed, Hispanic/Latino, &_years_dash "
			PopUnemployedA_&_years. = "Persons 16+ years old in the civilian labor force and unemployed, Asian and Native Hawaiian and Other Pacific Islander, &_years_dash "
			PopUnemployedIOM_&_years. = "Persons 16+ years old in the civilian labor force and unemployed, American Indian/Alaska Native, Some other race, Two or more races, &_years_dash "
			PopUnemployedAIOM_&_years. = "Persons 16+ years old in the civilian labor force and unemployed, All remaining groups other than Black, Non-Hispanic White, Hispanic/Latino, &_years_dash "
        PopInCivLaborForce_&_years. = "Persons 16+ years old in the civilian labor force, &_years_dash "
			PopInCivLaborForceB_&_years. = "Persons 16+ years old in the civilian labor force, Black/African American, &_years_dash "
			PopInCivLaborForceW_&_years. = "Persons 16+ years old in the civilian labor force, Non-Hispanic White, &_years_dash "
			PopInCivLaborForceH_&_years. = "Persons 16+ years old in the civilian labor force, Hispanic/Latino, &_years_dash "
			PopInCivLaborForceA_&_years. = "Persons 16+ years old in the civilian labor force, Asian and Native Hawaiian and Other Pacific Islander, &_years_dash "
			PopInCivLaborForceIOM_&_years. = "Persons 16+ years old in the civilian labor force, American Indian/Alaska Native, Some other race, Two or more races, &_years_dash "
			PopInCivLaborForceAIOM_&_years. = "Persons 16+ years old in the civilian labor force, All remaining groups other than Black, Non-Hispanic White, Hispanic/Latino, &_years_dash "
        Pop16andOverEmploy_&_years. = "Persons 16+ years old who are employed (includes armed forces), &_years_dash "
	        Pop16andOverEmployed_&_years. = "Persons 16+ years old who are employed (includes armed forces), &_years_dash "
			Pop16andOverEmployB_&_years. = "Persons 16+ years old who are employed (includes armed forces), Black/African American, &_years_dash "
			Pop16andOverEmployW_&_years. = "Persons 16+ years old who are employed (includes armed forces), Non-Hispanic White, &_years_dash "
			Pop16andOverEmployH_&_years. = "Persons 16+ years old who are employed (includes armed forces), Hispanic/Latino, &_years_dash "
			Pop16andOverEmployA_&_years. = "Persons 16+ years old who are employed (includes armed forces), Asian and Native Hawaiian and Other Pacific Islander, &_years_dash "
			Pop16andOverEmployIOM_&_years. = "Persons 16+ years old who are employed (includes armed forces), American Indian/Alaska Native, Some other race, Two or more races, &_years_dash "
			Pop16andOverEmployAIOM_&_years. = "Persons 16+ years old who are employed (includes armed forces), All remaining groups other than Black, Non-Hispanic White, Hispanic/Latino, &_years_dash "
		Pop16_64Employed_&_years. = "Persons 16-64 years old who are employed (includes armed forces), &_years_dash "
			Pop16_64EmployedB_&_years. = "Persons 16-64 years old who are employed (includes armed forces), Black/African American, &_years_dash "
			Pop16_64EmployedW_&_years. = "Persons 16-64 years old who are employed (includes armed forces), Non-Hispanic White, &_years_dash "
			Pop16_64EmployedH_&_years. = "Persons 16-64 years old who are employed (includes armed forces), Hispanic/Latino, &_years_dash "
			Pop16_64EmployedA_&_years. = "Persons 16-64 years old who are employed (includes armed forces), Asian and Native Hawaiian and Other Pacific Islander, &_years_dash "
			Pop16_64EmployedIOM_&_years. = "Persons 16-64 years old who are employed (includes armed forces), American Indian/Alaska Native, Some other race, Two or more races, &_years_dash "
			Pop16_64EmployedAIOM_&_years. = "Persons 16-64 years old who are employed (includes armed forces), All remaining groups other than Black, Non-Hispanic White, Hispanic/Latino, &_years_dash "
		Pop25_64Employed_&_years. = "Persons 25-64 years old who are employed (includes armed forces), &_years_dash "
        Pop16andOverYears_&_years. = "Persons 16+ years old, &_years_dash "
			Pop16andOverYearsB_&_years. = "	Persons 16 years old and over, Black/African American, &_years_dash "
			Pop16andOverYearsW_&_years. = "Persons 16 years old and over, Non-Hispanic White, &_years_dash "
			Pop16andOverYearsH_&_years. = "Persons 16 years old and over, Hispanic/Latino, &_years_dash "
			Pop16andOverYearsA_&_years. = "Persons 16 years old and over, Asian, Hawaiian and other Pacific Islander, &_years_dash "
			Pop16andOverYearsIOM_&_years. = "Persons 16 years old and over, American Indian/Alaska Native, other race, two or more races, &_years_dash "
			Pop16andOverYearsAIOM_&_years. = "Persons 16 years old and over, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
		Pop16_64years_&_years. = "Persons 16-64 years old, &_years_dash "
			Pop16_64yearsB_&_years. = "Persons 16-64 years old, Black/African American, &_years_dash "
			Pop16_64yearsW_&_years. = "Persons 16-64 years old, Non-Hispanic White, &_years_dash "
			Pop16_64yearsH_&_years. = "Persons 16-64 years old, Hispanic/Latino, &_years_dash "
			Pop16_64yearsA_&_years. = "Persons 16-64 years old, Asian, Native Hawaiian, and other Pacific Islander, &_years_dash "
			Pop16_64yearsIOM_&_years. = "Persons 16-64 years old,  American Indian/Alaska Native, some other race, two or more races, &_years_dash "
			Pop16_64yearsAIOM_&_years. = "Persons 16-64 years old, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
		Pop25_64years_&_years. = "Persons 25-64 years old, &_years_dash"
			Pop25_64yearsB_&_years. = "Persons 25-64 years old, Black/African American, &_years_dash"
			Pop25_64yearsW_&_years. = "Persons 25-64 years old, Non-Hispanic White, &_years_dash"
			Pop25_64yearsH_&_years. = "Persons 25-64 years old, Hispanic/Latino, &_years_dash"
			Pop25_64yearsA_&_years. = "Persons 25-64 years old, Asian, Native Hawaiian, and other Pacific Islander, &_years_dash "
			Pop25_64yearsIOM_&_years. = "Persons 25-64 years old,  American Indian/Alaska Native, some other race, two or more races, &_years_dash "
			Pop25_64yearsAIOM_&_years. = "Persons 25-64 years old, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
		PopWorkFT_&_years. = "Worked full-time, &_years_dash "
			PopWorkFTB_&_years. = "Worked full-time Black/African American, &_years_dash "
			PopWorkFTW_&_years. = "Worked full-time, Non-Hispanic White, &_years_dash "
			PopWorkFTH_&_years. = "Worked full-time, Hispanic/Latino, &_years_dash "
			PopWorkFTA_&_years. = "Worked full-time, Asian, Native Hawaiian, and other Pacific Islander, &_years_dash "
			PopWorkFTIOM_&_years. = "Worked full-time, American Indian/Alaska Native, some other race, two or more races, &_years_dash "
			PopWorkFTAIOM_&_years. = "Worked full-time, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
		PopWorkEarn_&_years. = "Worked with earnings, &_years_dash "
			PopWorkEarnB_&_years. = "Worked with earnings Black/African American, &_years_dash "
			PopWorkEarnW_&_years. = "Worked with earnings, Non-Hispanic White, &_years_dash "
			PopWorkEarnH_&_years. = "Worked with earnings, Hispanic/Latino, &_years_dash "
			PopWorkEarnA_&_years. = "Worked with earnings, Asian, Native Hawaiian, and other Pacific Islander, &_years_dash "
			PopWorkEarnIOM_&_years. = "Worked with earnings, American Indian/Alaska Native, some other race, two or more races, &_years_dash "
			PopWorkEarnAIOM_&_years. = "Worked with earnings, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
		PopWorkFTLT35K_&_years. = "Worked full-time with earnings less than $35000, &_years_dash "
			PopWorkFTLT35KB_&_years. = "Worked full-time with earning less than $35000, Black/African American, &_years_dash "
			PopWorkFTLT35KW_&_years. = "Worked full-time with earnings less than $35000, Non-Hispanic White, &_years_dash "
			PopWorkFTLT35KH_&_years. = "Worked full-time with earnings less than $35000, Hispanic/Latino, &_years_dash "
			PopWorkFTLT35KA_&_years. = "Worked full-time with earnings less than $35000, Asian, Native Hawaiian, and other Pacific Islander, &_years_dash "
			PopWorkFTLT35KIOM_&_years. = "Worked full-time with earnings less than $35000, American Indian/Alaska Native, some other race, two or more races, &_years_dash "
			PopWorkFTLT35KAIOM_&_years. = "Worked full-time with earnings less than $35000, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
			PopWorkFTLT75K_&_years. = "Worked full-time with earnings less than $75000, &_years_dash "
		PopWorkFTLT75KB_&_years. = "Worked full-time with earning less than $75000, Black/African American, &_years_dash "
			PopWorkFTLT75KW_&_years. = "Worked full-time with earnings less than $75000, Non-Hispanic White, &_years_dash "
			PopWorkFTLT75KH_&_years. = "Worked full-time with earnings less than $75000, Hispanic/Latino, &_years_dash "
			PopWorkFTLT75KA_&_years. = "Worked full-time with earnings less than $75000, Asian, Native Hawaiian, and other Pacific Islander, &_years_dash "
			PopWorkFTLT75KIOM_&_years. = "Worked full-time with earnings less than $75000, American Indian/Alaska Native, some other race, two or more races, &_years_dash "
			PopWorkFTLT75KAIOM_&_years. = "Worked full-time with earnings less than $75000, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
		mPopCivilianEmployed_&_years. = "Persons 16+ years old in the civilian labor force and employed, MOE, &_years_dash "
			mPopCivilianEmployedB_&_years. = "Persons 16+ years old in the civilian labor force and employed, Black/African American, MOE, &_years_dash "
			mPopCivilianEmployedW_&_years. = "Persons 16+ years old in the civilian labor force and employed, Non-Hispanic White, MOE, &_years_dash "
			mPopCivilianEmployedH_&_years. = "Persons 16+ years old in the civilian labor force and employed, Hispanic/Latino, MOE, &_years_dash "
			mPopCivilianEmployedA_&_years. = "Persons 16+ years old in the civilian labor force and employed, Asian and Native Hawaiian and Other Pacific Islander, MOE, &_years_dash "
			mPopCivilianEmployedIOM_&_years. = "Persons 16+ years old in the civilian labor force and employed, American Indian/Alaska Native, Some other race, Two or more races, MOE, &_years_dash "
			mPopCivilianEmployedAIOM_&_years. = "Persons 16+ years old in the civilian labor force and employed, All remaining groups other than Black, Non-Hispanic White, Hispanic/Latino, MOE, &_years_dash "
        mPopUnemployed_&_years. = "Persons 16+ years old in the civilian labor force and unemployed, MOE, &_years_dash "
			mPopUnemployedB_&_years. = "Persons 16+ years old in the civilian labor force and unemployed, Black/African American, MOE, &_years_dash "
			mPopUnemployedW_&_years. = "Persons 16+ years old in the civilian labor force and unemployed, Non-Hispanic White, MOE, &_years_dash "
			mPopUnemployedH_&_years. = "Persons 16+ years old in the civilian labor force and unemployed, Hispanic/Latino, MOE, &_years_dash "
			mPopUnemployedA_&_years. = "Persons 16+ years old in the civilian labor force and unemployed, Asian and Native Hawaiian and Other Pacific Islander, MOE, &_years_dash "
			mPopUnemployedIOM_&_years. = "Persons 16+ years old in the civilian labor force and unemployed, American Indian/Alaska Native, Some other race, Two or more races, MOE, &_years_dash "
			mPopUnemployedAIOM_&_years. = "Persons 16+ years old in the civilian labor force and unemployed, All remaining groups other than Black, Non-Hispanic White, Hispanic/Latino, MOE, &_years_dash "
		mPopInCivLaborForce_&_years. = "Persons 16+ years old in the civilian labor force, MOE, &_years_dash "
			mPopInCivLaborForceB_&_years. = "Persons 16+ years old in the civilian labor force, Black/African American, MOE, &_years_dash "
			mPopInCivLaborForceW_&_years. = "Persons 16+ years old in the civilian labor force, Non-Hispanic White, MOE, &_years_dash "
			mPopInCivLaborForceH_&_years. = "Persons 16+ years old in the civilian labor force, Hispanic/Latino, MOE, &_years_dash "
			mPopInCivLaborForceA_&_years. = "Persons 16+ years old in the civilian labor force, Asian and Native Hawaiian and Other Pacific Islander, MOE, &_years_dash "
			mPopInCivLaborForceIOM_&_years. = "Persons 16+ years old in the civilian labor force, American Indian/Alaska Native, Some other race, Two or more races, MOE, &_years_dash "
			mPopInCivLaborForceAIOM_&_years. = "Persons 16+ years old in the civilian labor force, All remaining groups other than Black, Non-Hispanic White, Hispanic/Latino, MOE, &_years_dash "
        mPop16andOverEmploy_&_years. = "Persons 16+ years old who are employed (includes armed forces), MOE, &_years_dash "
			mPop16andOverEmployed_&_years. = "Persons 16+ years old who are employed (includes armed forces), &_years_dash "
			mPop16andOverEmployB_&_years. = "Persons 16+ years old who are employed (includes armed forces), Black/African American, MOE, &_years_dash "
			mPop16andOverEmployW_&_years. = "Persons 16+ years old who are employed (includes armed forces), Non-Hispanic White, MOE, &_years_dash "
			mPop16andOverEmployH_&_years. = "Persons 16+ years old who are employed (includes armed forces), Hispanic/Latino, MOE, &_years_dash "
			mPop16andOverEmployA_&_years. = "Persons 16+ years old who are employed (includes armed forces), Asian and Native Hawaiian and Other Pacific Islander, MOE, &_years_dash "
			mPop16andOverEmployIOM_&_years. = "Persons 16+ years old who are employed (includes armed forces), American Indian/Alaska Native, Some other race, Two or more races, MOE, &_years_dash "
			mPop16andOverEmployAIOM_&_years. = "Persons 16+ years old who are employed (includes armed forces), All remaining groups other than Black, Non-Hispanic White, Hispanic/Latino, MOE, &_years_dash "
		mPop16_64Employed_&_years. = "Persons 16-64 years old who are employed (includes armed forces), MOE, &_years_dash "
			mPop16_64EmployedB_&_years. = "Persons 16-64 years old who are employed (includes armed forces), Black/African American, MOE, &_years_dash "
			mPop16_64EmployedW_&_years. = "Persons 16-64 years old who are employed (includes armed forces), Non-Hispanic White, MOE, &_years_dash "
			mPop16_64EmployedH_&_years. = "Persons 16-64 years old who are employed (includes armed forces), Hispanic/Latino, MOE, &_years_dash "
			mPop16_64EmployedA_&_years. = "Persons 16-64 years old who are employed (includes armed forces), Asian and Native Hawaiian and Other Pacific Islander, MOE, &_years_dash "
			mPop16_64EmployedIOM_&_years. = "Persons 16-64 years old who are employed (includes armed forces), American Indian/Alaska Native, Some other race, Two or more races, MOE, &_years_dash "
			mPop16_64EmployedAIOM_&_years. = "Persons 16-64 years old who are employed (includes armed forces), All remaining groups other than Black, Non-Hispanic White, Hispanic/Latino, MOE, &_years_dash "
		mPop25_64Employed_&_years. = "Persons 25-64 years old who are employed (includes armed forces), MOE, &_years_dash "
        mPop16andOverYears_&_years. = "Persons 16+ years old, MOE, &_years_dash "
			mPop16andOverYearsB_&_years. = "Persons 16 years old and over, Black/African American, MOE, &_years_dash"
			mPop16andOverYearsW_&_years. = "Persons 16 years old and over, Non-Hispanic White, MOE, &_years_dash"
			mPop16andOverYearsH_&_years. = "Persons 16 years old and over, Hispanic/Latino, MOE, &_years_dash "
			mPop16andOverYearsA_&_years. = "Persons 16 years old and over, Asian, Hawaiian and other Pacific Islander, MOE, &_years_dash "
			mPop16andOverYearsIOM_&_years. = "Persons 16 years old and over, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
			mPop16andOverYearsAIOM_&_years. = "Persons 16 years old and over, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
		mPop16_64years_&_years. = "Persons 16-64 years old, MOE, &_years_dash "
			mPop16_64yearsB_&_years. = "Persons 16-64 years old, Black/African American, MOE, &_years_dash "
			mPop16_64yearsW_&_years. = "Persons 16-64 years old, Non-Hispanic White, MOE, &_years_dash "
			mPop16_64yearsH_&_years. = "Persons 16-64 years old, Hispanic/Latino, MOE, &_years_dash "
			mPop16_64yearsA_&_years. = "Persons 16-64 years old, Asian, Native Hawaiian, and other Pacific Islander, MOE, &_years_dash "
			mPop16_64yearsIOM_&_years. = "Persons 16-64 years old,  American Indian/Alaska Native, some other race, two or more races, MOE, &_years_dash "
			mPop16_64yearsAIOM_&_years. = "Persons 16-64 years old, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
	 	mPop25_64years_&_years. = "Persons 25-64 years old, MOE, &_years_dash"
			mPop25_64yearsB_&_years. = "Persons 25-64 years old, Black/African American, MOE, &_years_dash"
			mPop25_64yearsW_&_years. = "Persons 25-64 years old, Non-Hispanic White, MOE, &_years_dash"
			mPop25_64yearsH_&_years. = "Persons 25-64 years old, Hispanic/Latino, MOE, &_years_dash"
			mPop25_64yearsA_&_years. = "Persons 25-64 years old, Asian, Native Hawaiian, and other Pacific Islander, MOE, &_years_dash"
			mPop25_64yearsIOM_&_years. = "Persons 25-64 years old,  American Indian/Alaska Native, some other race, two or more races, MOE, &_years_dash"
			mPop25_64yearsAIOM_&_years. = "Persons 25-64 years old, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash"
		mPopWorkFT_&_years. = "Worked full-time, MOE, &_years_dash "
			mPopWorkFTB_&_years. = "Worked full-time Black/African American, MOE, &_years_dash "
			mPopWorkFTW_&_years. = "Worked full-time, Non-Hispanic White, MOE, &_years_dash "
			mPopWorkFTH_&_years. = "Worked full-time, Hispanic/Latino, MOE, &_years_dash "
			mPopWorkFTA_&_years. = "Worked full-time, Asian, Native Hawaiian, and other Pacific Islander, MOE, &_years_dash "
			mPopWorkFTIOM_&_years. = "Worked full-time, American Indian/Alaska Native, some other race, two or more races, MOE, &_years_dash "
			mPopWorkFTAIOM_&_years. = "Worked full-time, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
		mPopWorkEarn_&_years. = "Worked with earnings, MOE, &_years_dash "
			mPopWorkEarnB_&_years. = "Worked with earnings Black/African American, MOE, &_years_dash "
			mPopWorkEarnW_&_years. = "Worked with earnings, Non-Hispanic White, MOE, &_years_dash "
			mPopWorkEarnH_&_years. = "Worked with earnings, Hispanic/Latino, MOE, &_years_dash "
			mPopWorkEarnA_&_years. = "Worked with earnings, Asian, Native Hawaiian, and other Pacific Islander, MOE, &_years_dash "
			mPopWorkEarnIOM_&_years. = "Worked with earnings, American Indian/Alaska Native, some other race, two or more races, MOE, &_years_dash "
			mPopWorkEarnAIOM_&_years. = "Worked with earnings, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
		mPopWorkFTLT35K_&_years. = "Worked full-time with earnings less than $35000, MOE, &_years_dash "
			mPopWorkFTLT35KB_&_years. = "Worked full-time with earning less than $35000, Black/African American, MOE, &_years_dash "
			mPopWorkFTLT35KW_&_years. = "Worked full-time with earnings less than $35000, Non-Hispanic White, MOE, &_years_dash "
			mPopWorkFTLT35KH_&_years. = "Worked full-time with earnings less than $35000, Hispanic/Latino, MOE, &_years_dash "
			mPopWorkFTLT35KA_&_years. = "Worked full-time with earnings less than $35000, Asian, Native Hawaiian, and other Pacific Islander, MOE, &_years_dash "
			mPopWorkFTLT35KIOM_&_years. = "Worked full-time with earnings less than $35000, American Indian/Alaska Native, some other race, two or more races, MOE, &_years_dash "
			mPopWorkFTLT35KAIOM_&_years. = "Worked full-time with earnings less than $35000, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
		mPopWorkFTLT75K_&_years. = "Worked full-time with earnings less than $75000, MOE, &_years_dash "
			mPopWorkFTLT75KB_&_years. = "Worked full-time with earning less than $75000, Black/African American, MOE, &_years_dash "
			mPopWorkFTLT75KW_&_years. = "Worked full-time with earnings less than $75000, Non-Hispanic White, MOE, MOE, &_years_dash "
			mPopWorkFTLT75KH_&_years. = "Worked full-time with earnings less than $75000, Hispanic/Latino, MOE, &_years_dash "
			mPopWorkFTLT75KA_&_years. = "Worked full-time with earnings less than $75000, Asian, Native Hawaiian, and other Pacific Islander, MOE, &_years_dash "
			mPopWorkFTLT75KIOM_&_years. = "Worked full-time with earnings less than $75000, American Indian/Alaska Native, some other race, two or more races, MOE, &_years_dash "
			mPopWorkFTLT75KAIOM_&_years. = "Worked full-time with earnings less than $75000, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
      ;
      
    %end;
    
	   **Employment - Block group-level variables**;

		PopEmployedByInd_&_years. = C24030e1;
			PopEmployedAgric_&_years. = sum(C24030e3, C24030e30 );
			PopEmployedConstr_&_years. = sum(C24030e6, C24030e33 );
			PopEmployedManuf_&_years. = sum(C24030e7, C24030e34 );
			PopEmployedWhlsale_&_years. = sum(C24030e8, C24030e35 );
			PopEmployedRetail_&_years. = sum(C24030e9, C24030e36 );
			PopEmployedTransprt_&_years. = sum(C24030e10, C24030e37 );
			PopEmployedInfo_&_years. = sum(C24030e13, C24030e40 );
			PopEmployedFinance_&_years. = sum(C24030e14, C24030e41 );
			PopEmployedProfServ_&_years. = sum(C24030e17, C24030e44 );
			PopEmployedEduction_&_years. = sum(C24030e21, C24030e48 );
			PopEmployedArts_&_years. = sum(C24030e24, C24030e51 );
			PopEmployedOther_&_years. = sum(C24030e27, C24030e54 );
			PopEmployedPubAdmin_&_years. = sum(C24030e28, C24030e55 );

 	  	PopEmployedByOcc_&_years. = C24010e1;
			PopEmployedMngmt_&_years. = sum(C24010e3, C24010e39 );
			PopEmployedServ_&_years. = sum(C24010e19, C24010e55 );
			PopEmployedSales_&_years. = sum(C24010e27, C24010e63 );
			PopEmployedNatRes_&_years. = sum(C24010e30, C24010e66 );
			PopEmployedProd_&_years. = sum(C24010e34, C24010e70 );

		  PopEmployedByOccB_&_years. = C24010Be1;
				PopEmployedMngmtB_&_years. = sum(C24010Be3, C24010Be9 );
				PopEmployedServB_&_years. = sum(C24010Be4, C24010Be10 );
				PopEmployedSalesB_&_years. = sum(C24010Be5, C24010Be11 );
				PopEmployedNatResB_&_years. = sum(C24010Be6, C24010Be12 );
				PopEmployedProdB_&_years. = sum(C24010Be7, C24010Be13 );

		  PopEmployedByOccW_&_years. = C24010He1;
				PopEmployedMngmtW_&_years. = sum(C24010He3, C24010He9 );
				PopEmployedServW_&_years. = sum(C24010He4, C24010He10 );
				PopEmployedSalesW_&_years. = sum(C24010He5, C24010He11 );
				PopEmployedNatResW_&_years. = sum(C24010He6, C24010He12 );
				PopEmployedProdW_&_years. = sum(C24010He7, C24010He13 );

		  PopEmployedByOccH_&_years. = C24010Ie1;
				PopEmployedMngmtH_&_years. = sum(C24010Ie3, C24010Ie9 );
				PopEmployedServH_&_years. = sum(C24010Ie4, C24010Ie10 );
				PopEmployedSalesH_&_years. = sum(C24010Ie5, C24010Ie11 );
				PopEmployedNatResH_&_years. = sum(C24010Ie6, C24010Ie12 );
				PopEmployedProdH_&_years. = sum(C24010Ie7, C24010Ie13 );

		  PopEmployedByOccA_&_years. = sum(C24010De1, C24010Ee1);
				PopEmployedMngmtA_&_years. = sum(C24010De3, C24010De9, C24010Ee3, C24010Ee9 );
				PopEmployedServA_&_years. = sum(C24010De4, C24010De10, C24010Ee4, C24010Ee10 );
				PopEmployedSalesA_&_years. = sum(C24010De5, C24010De11, C24010Ee5, C24010Ee11 );
				PopEmployedNatResA_&_years. = sum(C24010De6, C24010De12, C24010Ee6, C24010Ee12 );
				PopEmployedProdA_&_years. = sum(C24010De7, C24010De13, C24010Ee7, C24010Ee13 );

		  PopEmployedByOccIOM_&_years. = sum(C24010Ce1, C24010Fe1, C24010Ge1 );
				PopEmployedMngmtIOM_&_years. = sum(C24010Ce3, C24010Ce9, C24010Fe3, C24010Fe9, C24010Ge3, C24010Ge9);
				PopEmployedServIOM_&_years. = sum(C24010Ce4, C24010Ce10, C24010Fe4, C24010Fe10, C24010Ge4, C24010Ge10);
				PopEmployedSalesIOM_&_years. = sum(C24010Ce5, C24010Ce11, C24010Fe5, C24010Fe11, C24010Ge5, C24010Ge11);
				PopEmployedNatResIOM_&_years. = sum(C24010Ce6, C24010Ce12, C24010Fe6, C24010Fe12, C24010Ge6, C24010Ge12);
				PopEmployedProdIOM_&_years. = sum(C24010Ce7, C24010Ce13, C24010Fe7, C24010Fe13, C24010Ge7, C24010Ge13);

		  PopEmployedByOccAIOM_&_years. = sum(C24010Ce1, C24010De1, C24010Ee1, C24010Fe1, C24010Ge1 );
				PopEmployedMngmtAIOM_&_years. = 
					sum(C24010Ce3, C24010Ce9, C24010De3, C24010De9, C24010Ee3, C24010Ee9, 
						C24010Fe3, C24010Fe9, C24010Ge3, C24010Ge9 );
				PopEmployedServAIOM_&_years. = 
					sum(C24010Ce4, C24010Ce10, C24010De4, C24010De10, C24010Ee4, C24010Ee10, 
						C24010Fe4, C24010Fe10, C24010Ge4, C24010Ge10 );
				PopEmployedSalesAIOM_&_years. = 
					sum(C24010Ce5, C24010Ce11, C24010De5, C24010De11, C24010Ee5, C24010Ee11, 
						C24010Fe5, C24010Fe11, C24010Ge5, C24010Ge11 );
				PopEmployedNatResAIOM_&_years. = 
					sum(C24010Ce6, C24010Ce12, C24010De6, C24010De12, C24010Ee6, C24010Ee12, 
						C24010Fe6, C24010Fe12, C24010Ge6, C24010Ge12 );
				PopEmployedProdAIOM_&_years. = 
					sum(C24010Ce7, C24010Ce13, C24010De7, C24010De13, C24010Ee7, C24010Ee13, 
						C24010Fe7, C24010Fe13, C24010Ge7, C24010Ge13 );


		mPopEmployedByInd_&_years. = C24030m1;
			mPopEmployedAgric_&_years. = %moe_sum( var=C24030m3 C24030m30 );
			mPopEmployedConstr_&_years. = %moe_sum( var=C24030m6 C24030m33 );
			mPopEmployedManuf_&_years. = %moe_sum( var=C24030m7 C24030m34 );
			mPopEmployedWhlsale_&_years. = %moe_sum( var=C24030m8 C24030m35 );
			mPopEmployedRetail_&_years. = %moe_sum( var=C24030m9 C24030m36 );
			mPopEmployedTransprt_&_years. = %moe_sum( var=C24030m10 C24030m37 );
			mPopEmployedInfo_&_years. = %moe_sum( var=C24030m13 C24030m40 );
			mPopEmployedFinance_&_years. = %moe_sum( var=C24030m14 C24030m41 );
			mPopEmployedProfServ_&_years. = %moe_sum( var=C24030m17 C24030m44 );
			mPopEmployedEduction_&_years. = %moe_sum( var=C24030m21 C24030m48 );
			mPopEmployedArts_&_years. = %moe_sum( var=C24030m24 C24030m51 );
			mPopEmployedOther_&_years. = %moe_sum( var=C24030m27 C24030m54 );
			mPopEmployedPubAdmin_&_years. = %moe_sum( var=C24030m28 C24030m55 );

	   mPopEmployedByOcc_&_years. = C24010m1;
			mPopEmployedMngmt_&_years. = %moe_sum( var=C24010m3 C24010m39);
			mPopEmployedServ_&_years. = %moe_sum( var=C24010m19 C24010m55);
			mPopEmployedSales_&_years. = %moe_sum( var=C24010m27 C24010m63);
			mPopEmployedNatRes_&_years. = %moe_sum( var=C24010m30 C24010m66);
			mPopEmployedProd_&_years. = %moe_sum( var=C24010m34 C24010m70);

		  mPopEmployedByOccB_&_years. = C24010Bm1;
				mPopEmployedMngmtB_&_years. = %moe_sum( var=C24010Bm3 C24010Bm9);
				mPopEmployedServB_&_years. = %moe_sum( var=C24010Bm4 C24010Bm10);
				mPopEmployedSalesB_&_years. = %moe_sum( var=C24010Bm5 C24010Bm11);
				mPopEmployedNatResB_&_years. = %moe_sum( var=C24010Bm6 C24010Bm12);
				mPopEmployedProdB_&_years. = %moe_sum( var=C24010Bm7 C24010Bm13);

		  mPopEmployedByOccW_&_years. = C24010Hm1;
				mPopEmployedMngmtW_&_years. = %moe_sum( var=C24010Hm3 C24010Hm9);
				mPopEmployedServW_&_years. = %moe_sum( var=C24010Hm4 C24010Hm10);
				mPopEmployedSalesW_&_years. = %moe_sum( var=C24010Hm5 C24010Hm11);
				mPopEmployedNatResW_&_years. =  %moe_sum( var=C24010Hm6 C24010Hm12);
				mPopEmployedProdW_&_years. = %moe_sum( var=C24010Hm7 C24010Hm13);

		  mPopEmployedByOccH_&_years. = C24010Im1;
				mPopEmployedMngmtH_&_years. = %moe_sum( var=C24010Im3 C24010Im9);
				mPopEmployedServH_&_years. = %moe_sum( var=C24010Im4 C24010Im10);
				mPopEmployedSalesH_&_years. = %moe_sum( var=C24010Im5 C24010Im11);
				mPopEmployedNatResH_&_years. = %moe_sum( var=C24010Im6 C24010Im12);
				mPopEmployedProdH_&_years. = %moe_sum( var=C24010Im7 C24010Im13);

		  mPopEmployedByOccA_&_years. = %moe_sum( var=C24010Dm1 C24010Em1);
				mPopEmployedMngmtA_&_years. = %moe_sum( var=C24010Dm3 C24010Dm9 C24010Em3 C24010Em9);
				mPopEmployedServA_&_years. = %moe_sum( var=C24010Dm4 C24010Dm10 C24010Em4 C24010Em10);
				mPopEmployedSalesA_&_years. = %moe_sum( var=C24010Dm5 C24010Dm11 C24010Em5 C24010Em11);
				mPopEmployedNatResA_&_years. = %moe_sum( var=C24010Dm6 C24010Dm12 C24010Em6 C24010Em12);
				mPopEmployedProdA_&_years. = %moe_sum( var=C24010Dm7 C24010Dm13 C24010Em7 C24010Em13);

		  mPopEmployedByOccIOM_&_years. = %moe_sum( var=C24010Cm1 C24010Fm1 C24010Gm1);
				mPopEmployedMngmtIOM_&_years. = %moe_sum( var=C24010Cm3 C24010Cm9 C24010Fm3 C24010Fm9 C24010Gm3 C24010Gm9);
				mPopEmployedServIOM_&_years. = %moe_sum( var=C24010Cm4 C24010Cm10 C24010Fm4 C24010Fm10 C24010Gm4 C24010Gm10);
				mPopEmployedSalesIOM_&_years. = %moe_sum( var=C24010Cm5 C24010Cm11 C24010Fm5 C24010Fm11 C24010Gm5 C24010Gm11);
				mPopEmployedNatResIOM_&_years. = %moe_sum( var=C24010Cm6 C24010Cm12 C24010Cm6 C24010Cm12 C24010Fm6 C24010Fm12 C24010Gm6 C24010Gm12);
				mPopEmployedProdIOM_&_years. = %moe_sum( var=C24010Cm7 C24010Cm13 C24010Fm7 C24010Fm13 C24010Gm7 C24010Gm13);

		  mPopEmployedByOccAIOM_&_years. = %moe_sum( var=C24010Cm1 C24010Dm1 C24010Em1 C24010Fm1 C24010Gm1);
				mPopEmployedMngmtAIOM_&_years. = %moe_sum( var=C24010Cm3 C24010Cm9 C24010Dm3 C24010Dm9 C24010Em3 C24010Em9 C24010Fm3 C24010Fm9 C24010Gm3 C24010Gm9);
				mPopEmployedServAIOM_&_years. = %moe_sum( var=C24010Cm4 C24010Cm10 C24010Dm4 C24010Dm10 C24010Em4 C24010Em10 C24010Fm4 C24010Fm10 C24010Gm4 C24010Gm10);
				mPopEmployedSalesAIOM_&_years. = %moe_sum( var=C24010Cm5 C24010Cm11 C24010Dm5 C24010Dm11 C24010Em5 C24010Em11 C24010Fm5 C24010Fm11 C24010Gm5 C24010Gm11);
				mPopEmployedNatResAIOM_&_years. = %moe_sum( var=C24010Cm6 C24010Cm12 C24010Cm6 C24010Cm12 C24010Dm6 C24010Dm12 C24010Em6 C24010Em12 C24010Fm6 C24010Fm12 C24010Gm6 C24010Gm12);
				mPopEmployedProdAIOM_&_years. = %moe_sum( var=C24010Cm7 C24010Cm13 C24010Dm7 C24010Dm13 C24010Em7 C24010Em13 C24010Fm7 C24010Fm13 C24010Gm7 C24010Gm13);

	label
		PopEmployedByInd_&_years. = "Persons 16+ years old employed in civilian industries, &_years_dash "
			PopEmployedAgric_&_years. = "Persons 16+ years old employed in agriculture, forestry, fishing and hunting, and mining, &_years_dash "
			PopEmployedConstr_&_years. = "Persons 16+ years old employed in construction, &_years_dash "
			PopEmployedManuf_&_years. = "Persons 16+ years old employed in manufacturing, &_years_dash "
			PopEmployedWhlsale_&_years. = "Persons 16+ years old employed in wholesale trade, &_years_dash "
			PopEmployedRetail_&_years. = "Persons 16+ years old employed in retail trade, &_years_dash "
			PopEmployedTransprt_&_years. = "Persons 16+ years old employed in transportation and warehousing, and utilities, &_years_dash "
			PopEmployedInfo_&_years. = "Persons 16+ years old employed in information, &_years_dash "
			PopEmployedFinance_&_years. = "Persons 16+ years old employed in finance and insurance, and real estate and rental and leasing, &_years_dash "
			PopEmployedProfServ_&_years. = "Persons 16+ years old employed in professional, scientific, and management, and administrative and waste management services, &_years_dash "
			PopEmployedEduction_&_years. = "Persons 16+ years old employed in educational services, and health care and social assistance, &_years_dash "
			PopEmployedArts_&_years. = "Persons 16+ years old employed in arts, entertainment, and recreation, and accommodation and food services, &_years_dash "
			PopEmployedOther_&_years. = "Persons 16+ years old employed in other services, except public administration, &_years_dash "
			PopEmployedPubAdmin_&_years. = "Persons 16+ years old employed in public administration, &_years_dash "
		PopEmployedByOcc_&_years. = "Persons 16+ years old employed in civilian occupations, &_years_dash "
			PopEmployedMngmt_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, &_years_dash "
			PopEmployedServ_&_years. = "Persons 16+ years old employed in service occupations, &_years_dash "
			PopEmployedSales_&_years. = "Persons 16+ years old employed in sales and office occupations, &_years_dash "
			PopEmployedNatRes_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, &_years_dash "
			PopEmployedProd_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, &_years_dash "
		PopEmployedByOccB_&_years. = "Persons 16+ years old employed in civilian occupations, Black/African American, &_years_dash "
			PopEmployedMngmtB_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, Black/African American, &_years_dash "
			PopEmployedServB_&_years. = "Persons 16+ years old employed in service occupations, Black/African American, &_years_dash "
			PopEmployedSalesB_&_years. = "Persons 16+ years old employed in sales and office occupations, Black/African American, &_years_dash "
			PopEmployedNatResB_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, Black/African American, &_years_dash "
			PopEmployedProdB_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, Black/African American, &_years_dash "
		PopEmployedByOccW_&_years. = "Persons 16+ years old employed in civilian occupations, Non-Hispanic White, &_years_dash "
			PopEmployedMngmtW_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, Non-Hispanic White, &_years_dash "
			PopEmployedServW_&_years. = "Persons 16+ years old employed in service occupations, Non-Hispanic White, &_years_dash "
			PopEmployedSalesW_&_years. = "Persons 16+ years old employed in sales and office occupations, Non-Hispanic White, &_years_dash "
			PopEmployedNatResW_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, Non-Hispanic White, &_years_dash "
			PopEmployedProdW_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, Non-Hispanic White, &_years_dash "
		PopEmployedByOccH_&_years. = "Persons 16+ years old employed in civilian occupations, Hispanic/Latino, &_years_dash "
			PopEmployedMngmtH_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, Hispanic/Latino, &_years_dash "
			PopEmployedServH_&_years. = "Persons 16+ years old employed in service occupations, Hispanic/Latino, &_years_dash "
			PopEmployedSalesH_&_years. = "Persons 16+ years old employed in sales and office occupations, Hispanic/Latino, &_years_dash "
			PopEmployedNatResH_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, Hispanic/Latino, &_years_dash "
			PopEmployedProdH_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, Hispanic/Latino, &_years_dash "
		PopEmployedByOccA_&_years. = "Persons 16+ years old employed in civilian occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
			PopEmployedMngmtA_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
			PopEmployedServA_&_years. = "Persons 16+ years old employed in service occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
			PopEmployedSalesA_&_years. = "Persons 16+ years old employed in sales and office occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
			PopEmployedNatResA_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
			PopEmployedProdA_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
		PopEmployedByOccIOM_&_years. = "Persons 16+ years old employed in civilian occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
			PopEmployedMngmtIOM_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
			PopEmployedServIOM_&_years. = "Persons 16+ years old employed in service occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
			PopEmployedSalesIOM_&_years. = "Persons 16+ years old employed in sales and office occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
			PopEmployedNatResIOM_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
			PopEmployedProdIOM_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
		PopEmployedByOccAIOM_&_years. = "Persons 16+ years old employed in civilian occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
			PopEmployedMngmtAIOM_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
			PopEmployedServAIOM_&_years. = "Persons 16+ years old employed in service occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
			PopEmployedSalesAIOM_&_years. = "Persons 16+ years old employed in sales and office occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
			PopEmployedNatResAIOM_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
			PopEmployedProdAIOM_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
		mPopEmployedByInd_&_years. = "Persons 16+ years old employed in civilian industries, MOE, &_years_dash "
			mPopEmployedAgric_&_years. = "Persons 16+ years old employed in agriculture, forestry, fishing and hunting, and mining, MOE, &_years_dash "
			mPopEmployedConstr_&_years. = "Persons 16+ years old employed in construction, MOE, &_years_dash "
			mPopEmployedManuf_&_years. = "Persons 16+ years old employed in manufacturing, MOE, &_years_dash "
			mPopEmployedWhlsale_&_years. = "Persons 16+ years old employed in wholesale trade, MOE, &_years_dash "
			mPopEmployedRetail_&_years. = "Persons 16+ years old employed in retail trade, MOE, &_years_dash "
			mPopEmployedTransprt_&_years. = "Persons 16+ years old employed in transportation and warehousing, and utilities, MOE, &_years_dash "
			mPopEmployedInfo_&_years. = "Persons 16+ years old employed in information, MOE, &_years_dash "
			mPopEmployedFinance_&_years. = "Persons 16+ years old employed in finance and insurance, and real estate and rental and leasing, MOE, &_years_dash "
			mPopEmployedProfServ_&_years. = "Persons 16+ years old employed in professional, scientific, and management, and administrative and waste management services, MOE, &_years_dash "
			mPopEmployedEduction_&_years. = "Persons 16+ years old employed in educational services, and health care and social assistance, MOE, &_years_dash "
			mPopEmployedArts_&_years. = "Persons 16+ years old employed in arts, entertainment, and recreation, and accommodation and food services, MOE, &_years_dash "
			mPopEmployedOther_&_years. = "Persons 16+ years old employed in other services, except public administration, MOE, &_years_dash "
			mPopEmployedPubAdmin_&_years. = "Persons 16+ years old employed in public administration, MOE, &_years_dash "
		mPopEmployedByOcc_&_years. = "Persons 16+ years old employed in civilian occupations, MOE, &_years_dash "
			mPopEmployedMngmt_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, MOE, &_years_dash "
			mPopEmployedServ_&_years. = "Persons 16+ years old employed in service occupations, MOE, &_years_dash "
			mPopEmployedSales_&_years. = "Persons 16+ years old employed in sales and office occupations, MOE, &_years_dash "
			mPopEmployedNatRes_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, MOE, &_years_dash "
			mPopEmployedProd_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, MOE, &_years_dash "
		mPopEmployedByOccB_&_years. = "Persons 16+ years old employed in civilian occupations, Black/African American, MOE, &_years_dash "
			mPopEmployedMngmtB_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, Black/African American, MOE, &_years_dash "
			mPopEmployedServB_&_years. = "Persons 16+ years old employed in service occupations, Black/African American, MOE, &_years_dash "
			mPopEmployedSalesB_&_years. = "Persons 16+ years old employed in sales and office occupations, Black/African American, MOE, &_years_dash "
			mPopEmployedNatResB_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, Black/African American, MOE, &_years_dash "
			mPopEmployedProdB_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, Black/African American, MOE, &_years_dash "
		mPopEmployedByOccW_&_years. = "Persons 16+ years old employed in civilian occupations, Non-Hispanic White, MOE, &_years_dash "
			mPopEmployedMngmtW_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, Non-Hispanic White, MOE, &_years_dash "
			mPopEmployedServW_&_years. = "Persons 16+ years old employed in service occupations, Non-Hispanic White, MOE, &_years_dash "
			mPopEmployedSalesW_&_years. = "Persons 16+ years old employed in sales and office occupations, Non-Hispanic White, MOE, &_years_dash "
			mPopEmployedNatResW_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, Non-Hispanic White, MOE, &_years_dash "
			mPopEmployedProdW_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, Non-Hispanic White, MOE, &_years_dash "
		mPopEmployedByOccH_&_years. = "Persons 16+ years old employed in civilian occupations, Hispanic/Latino, MOE, &_years_dash "
			mPopEmployedMngmtH_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, Hispanic/Latino, MOE, &_years_dash "
			mPopEmployedServH_&_years. = "Persons 16+ years old employed in service occupations, Hispanic/Latino, MOE, &_years_dash "
			mPopEmployedSalesH_&_years. = "Persons 16+ years old employed in sales and office occupations, Hispanic/Latino, MOE, &_years_dash "
			mPopEmployedNatResH_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, Hispanic/Latino, MOE, &_years_dash "
			mPopEmployedProdH_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, Hispanic/Latino, MOE, &_years_dash "
	  	mPopEmployedByOccA_&_years. = "Persons 16+ years old employed in civilian occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
			mPopEmployedMngmtA_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
			mPopEmployedServA_&_years. = "Persons 16+ years old employed in service occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
			mPopEmployedSalesA_&_years. = "Persons 16+ years old employed in sales and office occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
			mPopEmployedNatResA_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
			mPopEmployedProdA_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
	  	mPopEmployedByOccIOM_&_years. = "Persons 16+ years old employed in civilian occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
			mPopEmployedMngmtIOM_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
			mPopEmployedServIOM_&_years. = "Persons 16+ years old employed in service occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
			mPopEmployedSalesIOM_&_years. = "Persons 16+ years old employed in sales and office occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
			mPopEmployedNatResIOM_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
			mPopEmployedProdIOM_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
	  	mPopEmployedByOccAIOM_&_years. = "Persons 16+ years old employed in civilian occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
			mPopEmployedMngmtAIOM_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
			mPopEmployedServAIOM_&_years. = "Persons 16+ years old employed in service occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
			mPopEmployedSalesAIOM_&_years. = "Persons 16+ years old employed in sales and office occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
			mPopEmployedNatResAIOM_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
			mPopEmployedProdAIOM_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
			;

    ** Education **;

    ** Education - Block group-level variables**;

	Pop25andOverYears_&_years. = B15002e1;

	Pop25andOverWoutHS_&_years. = 
      sum( B15002e3, B15002e4, B15002e5, B15002e6, B15002e7, B15002e8, B15002e9, B15002e10, 
           B15002e20, B15002e21, B15002e22, B15002e23, B15002e24, B15002e25, B15002e26, B15002e27 );

    Pop25andOverWHS_&_years. = 
      sum( B15002e11, B15002e12, B15002e13, B15002e14, B15002e15, B15002e16, B15002e17, B15002e18, 
		   B15002e28, B15002e29, B15002e30, B15002e31, B15002e32, B15002e33, B15002e34, B15002e35 );

	Pop25andOverWSC_&_years. = 
		sum(B15002e12, B15002e13, B15002e14, B15002e15, B15002e16, B15002e17, B15002e18, B15002e29, 
			B15002e30, B15002e31, B15002e32, B15002e33, B15002e34, B15002e35 );

	Pop25andOverWCollege_&_years. = 
      sum( B15002e15, B15002e16, B15002e17, B15002e18, B15002e32, B15002e33, B15002e34, B15002e35 );


	mPop25andOverYears_&_years. = B15002m1;

    mPop25andOverWoutHS_&_years. = 
      %moe_sum( var=B15002m3 B15002m4 B15002m5 B15002m6 B15002m7 B15002m8 B15002m9 B15002m10 
           B15002m20 B15002m21 B15002m22 B15002m23 B15002m24 B15002m25 B15002m26 B15002m27 );

    mPop25andOverWHS_&_years. = 
      %moe_sum( var=B15002m11 B15002m12 B15002m13 B15002m14 B15002m15 B15002m16 B15002m17 B15002m18
					B15002m28 B15002m29 B15002m30 B15002m31 B15002m32 B15002m33 B15002m34 B15002m35 );

	mPop25andOverWSC_&_years. = 
		%moe_sum( var=B15002m12 B15002m13 B15002m14 B15002m15 B15002m16 B15002m17 B15002m18 
					  B15002m29 B15002m30 B15002m31 B15002m32 B15002m33 B15002m34 B15002m35);

    mPop25andOverWCollege_&_years. = 
      %moe_sum( var=B15002m15 B15002m16 B15002m17 B15002m18 B15002m32 B15002m33 B15002m34 B15002m35 );


 label
	  Pop25andOverWoutHS_&_years. = "Persons 25 years old and over without high school diploma, &_years_dash "
	  Pop25andOverWHS_&_years. = "Persons 25 years old and over with a high school diploma or GED, &_years_dash "
	  Pop25andOverWSC_&_years. = "Persons 25 years old and over with some college, &_years_dash "
	  Pop25andOverWCollege_&_years. = "Persons 25+ years old with a bachelors or graduate/prof degree, &_years_dash "
      Pop25andOverYears_&_years. = "Persons 25 years old and over, &_years_dash "
	  mPop25andOverWoutHS_&_years. = "Persons 25 years old and over without high school diploma, MOE, &_years_dash "
      mPop25andOverWHS_&_years. = "Persons 25 years old and over with a high school diploma or GED, MOE, &_years_dash "
	  mPop25andOverWSC_&_years. = "Persons 25 years old and over with some college, MOE, &_years_dash "
	  mPop25andOverWCollege_&_years. = "Persons 25+ years old with a bachelors or graduate/prof degree, MOE, &_years_dash "
      mPop25andOverYears_&_years. = "Persons 25 years old and over, MOE, &_years_dash "
	  ;


	%if %upcase( &source_geo ) = TR00 or %upcase( &source_geo ) = TR10 
		or %upcase( &source_geo ) = REGCOUNTY 
	%then %do;

    ** Education - Non block group (tract,county) variables **;

    
	Pop25andOverYearsB_&_years.	= C15002Be1;
	Pop25andOverYearsW_&_years.	= C15002He1;
	Pop25andOverYearsH_&_years.	= C15002Ie1;
	Pop25andOverYearsA_&_years.	= sum(C15002De1, C15002Ee1 );
	Pop25andOverYearsIOM_&_years. = sum(C15002Ce1, C15002Fe1, C15002Ge1 );
	Pop25andOverYearsAIOM_&_years. = sum(C15002Ce1, C15002De1, C15002Ee1, C15002Fe1, C15002Ge1 );
	Pop25andOverYearsFB_&_years.	= B06009e25;
	Pop25andOverYearsNB_&_years. = sum(B06009e7, B06009e13, B06009e19 );


	Pop25andOverWoutHSB_&_years. = sum(C15002Be3, C15002Be8 );
	Pop25andOverWoutHSW_&_years.	= sum(C15002He3, C15002He8 );
	Pop25andOverWoutHSH_&_years. = sum(C15002Ie3, C15002Ie8 );
	Pop25andOverWoutHSA_&_years.	= sum(C15002De3, C15002De8, C15002Ee3, C15002Ee8 );
	Pop25andOverWoutHSIOM_&_years. = sum(C15002Ce3, C15002Ce8, C15002Fe3, C15002Fe8, C15002Ge3, C15002Ge8 );
	Pop25andOverWoutHSAIOM_&_years. = 
		sum(C15002Ce3, C15002Ce8, C15002De3, C15002De8, C15002Ee3, C15002Ee8, 
			C15002Fe3, C15002Fe8, C15002Ge3, C15002Ge8 );
	Pop25andOverWoutHSFB_&_years. = B06009e26;
	Pop25andOverWoutHSNB_&_years. = sum(B06009e8, B06009e14, B06009e20 );

   
	Pop25andOverWHSB_&_years. = sum(C15002Be4, C15002Be5, C15002Be6,  C15002Be9, C15002Be10, C15002Be11 );
	Pop25andOverWHSW_&_years. = sum(C15002He4, C15002He5, C15002He6,  C15002He9, C15002He10, C15002He11 );
	Pop25andOverWHSH_&_years. = sum(C15002Ie4, C15002Ie5, C15002Ie6 , C15002Ie9, C15002Ie10, C15002Ie11 );
	Pop25andOverWHSA_&_years. = 
		sum(C15002De4, C15002De5, C15002De6, C15002De9, C15002De10, C15002De11, 
			C15002Ee4, C15002Ee5, C15002Ee6, C15002Ee9, C15002Ee10, C15002Ee11 );
	Pop25andOverWHSIOM_&_years. = 
		sum(C15002Ce4, C15002Ce5, C15002Ce6,  C15002Ce9, C15002Ce10, C15002Ce11, 
			C15002Fe4, C15002Fe5, C15002Fe6,  C15002Fe9, C15002Fe10, C15002Fe11, 
			C15002Ge4, C15002Ge5, C15002Ge6,  C15002Ge9, C15002Ge10, C15002Ge11 );
	Pop25andOverWHSAIOM_&_years. = 
		sum(C15002Ce4, C15002Ce5, C15002Ce6,  C15002Ce9, C15002Ce10, C15002Ce11, 
			C15002De4, C15002De5, C15002De6, C15002De9, C15002De10, C15002De11, 
			C15002Ee4, C15002Ee5, C15002Ee6, C15002Ee9, C15002Ee10, C15002Ee11, 
			C15002Fe4, C15002Fe5, C15002Fe6,  C15002Fe9, C15002Fe10, C15002Fe11, 
			C15002Ge4, C15002Ge5, C15002Ge6,  C15002Ge9, C15002Ge10, C15002Ge11 );
	Pop25andOverWHSFB_&_years. = sum(B06009e27, B06009e28, B06009e29, B06009e30 );
	Pop25andOverWHSNB_&_years. = 
		sum(B06009e9, B06009e10, B06009e11, B06009e12, B06009e15, B06009e16, 
			B06009e17, B06009e18, B06009e21, B06009e22, B06009e23, B06009e24 );

	Pop25andOverWSCB_&_years. = sum(C15002Be5, C15002Be6, C15002Be10, C15002Be11 );
	Pop25andOverWSCW_&_years. = sum(C15002He5, C15002He6, C15002He10, C15002He11 );
	Pop25andOverWSCH_&_years. = sum(C15002Ie5, C15002Ie6, C15002Ie10, C15002Ie11 );
	Pop25andOverWSCA_&_years. = 
		sum(C15002De5, C15002De6, C15002De10, C15002De11,
			C15002Ee5, C15002Ee6, C15002Ee10, C15002Ee11 );
	Pop25andOverWSCIOM_&_years. = 
		sum(C15002Ce5, C15002Ce6, C15002Ce10, C15002Ce11, 
			C15002Fe5, C15002Fe6, C15002Fe10, C15002Fe11, 
			C15002Ge5, C15002Ge6, C15002Ge10, C15002Ge11 );
	Pop25andOverWSCAIOM_&_years. = 
		sum(C15002Ce5, C15002Ce6, C15002Ce10, C15002Ce11, 
			C15002De5, C15002De6, C15002De10, C15002De11, 
			C15002Ee5, C15002Ee6, C15002Ee10, C15002Ee11, 
			C15002Fe5, C15002Fe6, C15002Fe10, C15002Fe11,
			C15002Ge5, C15002Ge6, C15002Ge10, C15002Ge11 );
	Pop25andOverWSCFB_&_years. = sum(B06009e28, B06009e29, B06009e30 );
	Pop25andOverWSCNB_&_years. = 
		sum(B06009e10, B06009e11, B06009e12, 
			B06009e16, B06009e17, B06009e18, 
			B06009e22, B06009e23, B06009e24 );
    

	mPop25andOverYearsB_&_years. = C15002Bm1;
	mPop25andOverYearsW_&_years. = C15002Hm1;
	mPop25andOverYearsH_&_years. = C15002Im1;
	mPop25andOverYearsA_&_years. = %moe_sum( var=C15002Dm1 C15002Em1);
	mPop25andOverYearsIOM_&_years. = %moe_sum( var=C15002Cm1 C15002Fm1 C15002Gm1);
	mPop25andOverYearsAIOM_&_years. = %moe_sum( var=C15002Cm1 C15002Dm1 C15002Em1 C15002Fm1 C15002Gm1);
	mPop25andOverYearsFB_&_years. = B06009m25;
	mPop25andOverYearsNB_&_years. = %moe_sum( var=B06009m7 B06009m13 B06009m19);

   
	mPop25andOverWoutHSB_&_years. = %moe_sum( var=C15002Bm3 C15002Bm8);
	mPop25andOverWoutHSW_&_years. = %moe_sum( var=C15002Hm3 C15002Hm8);
	mPop25andOverWoutHSH_&_years. = %moe_sum( var=C15002Im3 C15002Im8);
	mPop25andOverWoutHSA_&_years. = %moe_sum( var=C15002Dm3 C15002Dm8 C15002Em3 C15002Em8);
	mPop25andOverWoutHSIOM_&_years. = %moe_sum( var=C15002Cm3 C15002Cm8 C15002Fm3 C15002Fm8 C15002Gm3 C15002Gm8);
	mPop25andOverWoutHSAIOM_&_years.	= 
		%moe_sum( var=C15002Cm3 C15002Cm8 C15002Dm3 C15002Dm8 
			C15002Em3 C15002Em8 C15002Fm3 C15002Fm8 C15002Gm3 C15002Gm8);
	mPop25andOverWoutHSFB_&_years. = B06009m26;
	mPop25andOverWoutHSNB_&_years. = %moe_sum( var=B06009m8 B06009m14 B06009m20);

 

	mPop25andOverWHSB_&_years. = %moe_sum( var=C15002Bm4 C15002Bm5 C15002Bm6  C15002Bm9 C15002Bm10 C15002Bm11);
	mPop25andOverWHSW_&_years. = %moe_sum( var=C15002Hm4 C15002Hm5 C15002Hm6  C15002Hm9 C15002Hm10 C15002Hm11);
	mPop25andOverWHSH_&_years. = %moe_sum( var=C15002Im4 C15002Im5 C15002Im6  C15002Im9 C15002Im10 C15002Im11);
	mPop25andOverWHSA_&_years. = 
		%moe_sum( var=C15002Dm4 C15002Dm5 C15002Dm6 C15002Dm9 C15002Dm10 C15002Dm11 
							  C15002Em4 C15002Em5 C15002Em6 C15002Em9 C15002Em10 C15002Em11);
	mPop25andOverWHSIOM_&_years. = 
		%moe_sum( var=C15002Cm4 C15002Cm5 C15002Cm6  C15002Cm9 C15002Cm10 C15002Cm11 
							  C15002Fm4 C15002Fm5 C15002Fm6  C15002Fm9 C15002Fm10 C15002Fm11 
							  C15002Gm4 C15002Gm5 C15002Gm6  C15002Gm9 C15002Gm10 C15002Gm11);
	mPop25andOverWHSAIOM_&_years. = 
		%moe_sum( var=C15002Cm4 C15002Cm5 C15002Cm6  C15002Cm9 C15002Cm10 C15002Cm11 
							  C15002Dm4 C15002Dm5 C15002Dm6 C15002Dm9 C15002Dm10 C15002Dm11 
							  C15002Em4 C15002Em5 C15002Em6 C15002Em9 C15002Em10 C15002Em11 
							  C15002Fm4 C15002Fm5 C15002Fm6  C15002Fm9 C15002Fm10 C15002Fm11 
							  C15002Gm4 C15002Gm5 C15002Gm6  C15002Gm9 C15002Gm10 C15002Gm11);
	mPop25andOverWHSFB_&_years. = %moe_sum( var=B06009m27 B06009m28 B06009m29 B06009m30);
	mPop25andOverWHSNB_&_years. = 
		%moe_sum( var=B06009m9 B06009m10 B06009m11 B06009m12 B06009m15 B06009m16 
							  B06009m17 B06009m18 B06009m21 B06009m22 B06009m23 B06009m24);


	mPop25andOverWSCB_&_years. = %moe_sum( var=C15002Bm5 C15002Bm6 C15002Bm10 C15002Bm11);
	mPop25andOverWSCW_&_years. = %moe_sum( var=C15002Hm5 C15002Hm6 C15002Hm10 C15002Hm11);
	mPop25andOverWSCH_&_years. = %moe_sum( var=C15002Im5 C15002Im6 C15002Im10 C15002Im11);
	mPop25andOverWSCA_&_years. = 
		%moe_sum( var=C15002Dm5 C15002Dm6 C15002Dm10 C15002Dm11 C15002Em5 C15002Em6 C15002Em10 C15002Em11);
	mPop25andOverWSCIOM_&_years. = 
		%moe_sum( var=C15002Cm5 C15002Cm6 C15002Cm10 C15002Cm11 
					C15002Fm5 C15002Fm6 C15002Fm10 C15002Fm11 
					C15002Gm5 C15002Gm6 C15002Gm10 C15002Gm11);
	mPop25andOverWSCAIOM_&_years. = 
		%moe_sum( var=C15002Cm5 C15002Cm6 C15002Cm10 C15002Cm11 
					C15002Dm5 C15002Dm6 C15002Dm10 C15002Dm11 
					C15002Em5 C15002Em6 C15002Em10 C15002Em11 
					C15002Fm5 C15002Fm6 C15002Fm10 C15002Fm11
					C15002Gm5 C15002Gm6 C15002Gm10 C15002Gm11);
	mPop25andOverWSCFB_&_years. = %moe_sum( var=B06009m28 B06009m29 B06009m30);
	mPop25andOverWSCNB_&_years. = 
		%moe_sum( var=B06009m10 B06009m11 B06009m12 B06009m16 B06009m17 
					B06009m18 B06009m22 B06009m23 B06009m24);

    
    label
			Pop25andOverWoutHSB_&_years. = "Persons 25 years old and over without a high school diploma or GED, Black/African American, &_years_dash "
			Pop25andOverWoutHSW_&_years. = "Persons 25 years old and over without a high school diploma or GED, Non-Hispanic White, &_years_dash "
			Pop25andOverWoutHSH_&_years. = "Persons 25 years old and over without a high school diploma or GED, Hispanic/Latino, &_years_dash "
			Pop25andOverWoutHSA_&_years. = "Persons 25 years old and over without a high school diploma or GED, Asian, Hawaiian and other Pacific Islander, &_years_dash "
			Pop25andOverWoutHSIOM_&_years. = "Persons 25 years old and over without a high school diploma or GED, American Indian/Alaska Native, other race, two or more races, &_years_dash "
			Pop25andOverWoutHSAIOM_&_years. = "Persons 25 years old and over without a high school diploma or GED, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
			Pop25andOverWoutHSFB_&_years. = "Foreign born 25 years and over without high school diploma or GED, &_years_dash "
			Pop25andOverWoutHSNB_&_years. = "Native born persons 25 years and over with some college, &_years_dash"
			Pop25andOverWHSB_&_years. = "Persons 25 years old and over with a high school diploma or GED, Black/African American, &_years_dash "
			Pop25andOverWHSW_&_years. = "Persons 25 years old and over with a high school diploma or GED, Non-Hispanic White, &_years_dash "
			Pop25andOverWHSH_&_years. = "Persons 25 years old and over with a high school diploma or GED, Hispanic/Latino, &_years_dash "
			Pop25andOverWHSA_&_years. = "Persons 25 years old and over with a high school diploma or GED, Asian, Hawaiian and other Pacific Islander, &_years_dash "
			Pop25andOverWHSIOM_&_years. = "Persons 25 years old and over with a high school diploma or GED, American Indian/Alaska Native, other race, two or more races, &_years_dash "
			Pop25andOverWHSAIOM_&_years. = "Persons 25 years old and over with a high school diploma or GED, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
			Pop25andOverWHSFB_&_years. = "Foreign born persons 25 years and over with a high school diploma or GED,  &_years_dash "
			Pop25andOverWHSNB_&_years. = "Native born persons 25 years and over with a high school diploma or GED, &_years_dash"
			Pop25andOverWSCB_&_years. = "Persons 25 years old and over with some college, Black/African American , &_years_dash "
			Pop25andOverWSCW_&_years. = "Persons 25 years old and over with some college, Non-Hispanic White, &_years_dash "
			Pop25andOverWSCH_&_years. = "Persons 25 years old and over with some college, Hispanic/Latino, &_years_dash "
			Pop25andOverWSCA_&_years. = "Persons 25 years old and over with some college, Asian, Hawaiian and other Pacific Islander, &_years_dash "
			Pop25andOverWSCIOM_&_years. = "Persons 25 years old and over with some college, American Indian/Alaska Native, other race, two or more races, &_years_dash "
			Pop25andOverWSCAIOM_&_years. = "Persons 25 years old and over with some college, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
		    Pop25andOverWSCFB_&_years. = "Foreign born 25 years and over with some college "
		 	Pop25andOverWSCNB_&_years. = "Native born persons 25 years and over without a high school diploma or GED, &_years_dash"
		  	Pop25andOverYearsB_&_years. = "Persons 25 years old and over, Black/African American, &_years_dash"
			Pop25andOverYearsW_&_years. = "Persons 25 years old and over, Non-Hispanic White, &_years_dash"
			Pop25andOverYearsH_&_years. = "Persons 25 years old and over, Hispanic/Latino, &_years_dash"
			Pop25andOverYearsA_&_years. = "Persons 25 years old and over, Asian, Hawaiian and other Pacific Islander, &_years_dash"
			Pop25andOverYearsIOM_&_years. = "Persons 25 years old and over, American Indian/Alaska Native, other race, two or more races, &_years_dash"
			Pop25andOverYearsAIOM_&_years. = "Persons 25 years old and over, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash"
	  		Pop25andOverYearsFB_&_years. = "Foreign born persons 25 years and over, &_years_dash "
			Pop25andOverYearsNB_&_years. = "Native born persons 25 years and over with a high school diploma or GED, &_years_dash "
			mPop25andOverWoutHSB_&_years. = "Persons 25 years old and over without a high school diploma or GED, Black/African American, MOE, &_years_dash "
			mPop25andOverWoutHSW_&_years. = "Persons 25 years old and over without a high school diploma or GED, Non-Hispanic White, MOE, &_years_dash "
			mPop25andOverWoutHSH_&_years. = "Persons 25 years old and over without a high school diploma or GED, Hispanic/Latino, MOE, &_years_dash "
			mPop25andOverWoutHSA_&_years. = "Persons 25 years old and over without a high school diploma or GED, Asian, Hawaiian and other Pacific Islander, MOE, &_years_dash "
			mPop25andOverWoutHSIOM_&_years. = "Persons 25 years old and over without a high school diploma or GED, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
			mPop25andOverWoutHSAIOM_&_years. = "Persons 25 years old and over without a high school diploma or GED, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
			mPop25andOverWoutHSFB_&_years. = "Foreign born 25 years and over without high school diploma or GED, MOE, &_years_dash"
			mPop25andOverWoutHSNB_&_years. = "Native born persons 25 years and over without a high school diploma or GED, MOE, &_years_dash"
			mPop25andOverWHSB_&_years. = "Persons 25 years old and over with a high school diploma or GED, Black/African American, MOE, &_years_dash "
			mPop25andOverWHSW_&_years. = "Persons 25 years old and over with a high school diploma or GED, Non-Hispanic White, MOE, &_years_dash "
			mPop25andOverWHSH_&_years. = "Persons 25 years old and over with a high school diploma or GED, Hispanic/Latino, MOE, &_years_dash "
			mPop25andOverWHSA_&_years. = "Persons 25 years old and over with a high school diploma or GED, Asian, Hawaiian and other Pacific Islander, MOE, &_years_dash "
			mPop25andOverWHSIOM_&_years. = "Persons 25 years old and over with a high school diploma or GED, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
			mPop25andOverWHSAIOM_&_years. = "Persons 25 years old and over with a high school diploma or GED, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
		  	mPop25andOverWHSFB_&_years. = "Foreign born persons 25 years and over with a high school diploma or GED,  MOE, &_years_dash"
			mPop25andOverWHSNB_&_years. = "Native born persons 25 years and over with a high school diploma or GED, MOE, &_years_dash"
			mPop25andOverWSCB_&_years. = "Persons 25 years old and over with some college, Black/African American , MOE, &_years_dash "
			mPop25andOverWSCW_&_years. = "Persons 25 years old and over with some college, Non-Hispanic White, MOE, &_years_dash "
			mPop25andOverWSCH_&_years. = "Persons 25 years old and over with some college, Hispanic/Latino, MOE, &_years_dash "
			mPop25andOverWSCA_&_years. = "Persons 25 years old and over with some college, Asian, Hawaiian and other Pacific Islander, MOE, &_years_dash "
			mPop25andOverWSCIOM_&_years. = "Persons 25 years old and over with some college, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
			mPop25andOverWSCAIOM_&_years. = "Persons 25 years old and over with some college, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
			mPop25andOverWSCFB_&_years. = "Foreign born 25 years and over with some college"
			mPop25andOverWSCNB_&_years. = "Native born persons 25 years and over with some college, MOE, &_years_dash"
			mPop25andOverYearsB_&_years. = "Persons 25 years old and over, Black/African American, MOE, &_years_dash "
			mPop25andOverYearsW_&_years. = "Persons 25 years old and over, Non-Hispanic White, MOE, &_years_dash "
			mPop25andOverYearsH_&_years. = "Persons 25 years old and over, Hispanic/Latino, MOE, &_years_dash "
			mPop25andOverYearsA_&_years. = "Persons 25 years old and over, Asian, Hawaiian and other Pacific Islander, MOE, &_years_dash "
			mPop25andOverYearsIOM_&_years. = "Persons 25 years old and over, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
			mPop25andOverYearsAIOM_&_years. = "Persons 25 years old and over, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
			mPop25andOverYearsFB_&_years. = "Foreign born persons 25 years and over, &_years_dash "
			mPop25andOverYearsNB_&_years. = "Native born persons 25 years and over, MOE, &_years_dash "
		;

	%end;

	%if %upcase( &source_geo ) = TR00 or %upcase( &source_geo ) = TR10 
		or %upcase( &source_geo ) = REGCOUNTY 
	%then %do;

	** Household type **;

      NumFamiliesOwnChildren_&_years. = 
        sum( B11003e3, B11003e10, B11003e16, B11013e3, B11013e5, B11013e6);
      
      NumFamiliesOwnChildrenFH_&_years. = sum(B11003e16, B11013e5);

      mNumFamiliesOwnChildren_&_years. = 
        %moe_sum( var=B11003m3 B11003m10 B11003m16 B11013m3 B11013m5 B11013m6 );
      
      mNumFamiliesOwnChildFH_&_years. = %moe_sum( var=B11003m16 B11013m5 );

      label
        NumFamiliesOwnChildren_&_years. = "Total families and subfamilies with own children, &_years_dash "
        NumFamiliesOwnChildrenFH_&_years. = "Female-headed families and subfamilies with own children, &_years_dash "
        mNumFamiliesOwnChildren_&_years. = "Total families and subfamilies with own children, MOE, &_years_dash "
        mNumFamiliesOwnChildFH_&_years. = "Female-headed families and subfamilies with own children, MOE, &_years_dash "
      ;
          
	  %end;

    ** Isolation **;
    
    NumHshldPhone_&_years. = sum( B25043e3, B25043e12 );
    
    NumHshldCar_&_years. = 
      sum( B25044e4, B25044e5, B25044e6, B25044e7, B25044e8, 
           B25044e11, B25044e12, B25044e13, B25044e14, B25044e15 );

    mNumHshldPhone_&_years. = %moe_sum( var=B25043m3 B25043m12 );
    
    mNumHshldCar_&_years. = 
      %moe_sum( var=B25044m4 B25044m5 B25044m6 B25044m7 B25044m8 
           B25044m11 B25044m12 B25044m13 B25044m14 B25044m15 );

    label
      NumHshldPhone_&_years. = "Occupied housing units with a telephone, &_years_dash "
      NumHshldCar_&_years. = "Occupied housing units with at least one vehicle available, &_years_dash "
      mNumHshldPhone_&_years. = "Occupied housing units with a telephone, MOE, &_years_dash "
      mNumHshldCar_&_years. = "Occupied housing units with at least one vehicle available, MOE, &_years_dash "
     ;
  
    ** Income **;

	%if %upcase( &source_geo ) = TR00 or %upcase( &source_geo ) = TR10 
		or %upcase( &source_geo ) = REGCOUNTY 
	%then %do;

	** Income - non block group (tract,county) variables **;
    

		FamIncomeLT75kB_&_years. = 
			sum(B19101Be2, B19101Be3, B19101Be4, B19101Be5, B19101Be6, B19101Be7, 
				B19101Be8, B19101Be9, B19101Be10, B19101Be11, B19101Be12 );
		FamIncomeLT75kW_&_years. = 
			sum(B19101He2, B19101He3, B19101He4, B19101He5, B19101He6, B19101He7, 
				B19101He8, B19101He9, B19101He10, B19101He11, B19101He12 );
		FamIncomeLT75kH_&_years. = 
			sum(B19101Ie2, B19101Ie3, B19101Ie4, B19101Ie5, B19101Ie6, B19101Ie7, 
				B19101Ie8, B19101Ie9, B19101Ie10, B19101Ie11, B19101Ie12 );
		FamIncomeLT75kA_&_years. = 
			sum(B19101De2, B19101De3, B19101De4, B19101De5, B19101De6, B19101De7, 
				B19101De8, B19101De9, B19101De10, B19101De11, B19101De12, 
				B19101Ee2, B19101Ee3, B19101Ee4, B19101Ee5, B19101Ee6, B19101Ee7, 
				B19101Ee8, B19101Ee9, B19101Ee10, B19101Ee11, B19101Ee12 );
		FamIncomeLT75kIOM_&_years. = 
			sum(B19101Ce2, B19101Ce3, B19101Ce4, B19101Ce5, B19101Ce6, B19101Ce7, 
				B19101Ce8, B19101Ce9, B19101Ce10, B19101Ce11, B19101Ce12, 
				B19101Fe2, B19101Fe3, B19101Fe4, B19101Fe5, B19101Fe6, B19101Fe7, 
				B19101Fe8, B19101Fe9, B19101Fe10, B19101Fe11, B19101Fe12, 
				B19101Ge2, B19101Ge3, B19101Ge4, B19101Ge5, B19101Ge6, B19101Ge7, 
				B19101Ge8, B19101Ge9, B19101Ge10, B19101Ge11, B19101Ge12 );
		FamIncomeLT75kAIOM_&_years. = 
			sum(B19101Ce2, B19101Ce3, B19101Ce4, B19101Ce5, B19101Ce6, B19101Ce7, 
				B19101Ce8, B19101Ce9, B19101Ce10, B19101Ce11, B19101Ce12, 
				B19101De2, B19101De3, B19101De4, B19101De5, B19101De6, B19101De7, 
				B19101De8, B19101De9, B19101De10, B19101De11, B19101De12, 
				B19101Ee2, B19101Ee3, B19101Ee4, B19101Ee5, B19101Ee6, B19101Ee7, 
				B19101Ee8, B19101Ee9, B19101Ee10, B19101Ee11, B19101Ee12,
				B19101Fe2, B19101Fe3, B19101Fe4, B19101Fe5, B19101Fe6, B19101Fe7, 
				B19101Fe8, B19101Fe9, B19101Fe10, B19101Fe11, B19101Fe12, 
				B19101Ge2, B19101Ge3, B19101Ge4, B19101Ge5, B19101Ge6, B19101Ge7, 
				B19101Ge8, B19101Ge9, B19101Ge10, B19101Ge11, B19101Ge12 );

		FamIncomeGT200kB_&_years. = B19101Be17;
		FamIncomeGT200kW_&_years. = B19101He17;
		FamIncomeGT200kH_&_years. = B19101Ie17;
		FamIncomeGT200kA_&_years. = sum(B19101De17, B19101Ee17 );
		FamIncomeGT200kIOM_&_years. = sum(B19101Ce17, B19101Fe17, B19101Ge17 );
		FamIncomeGT200kAIOM_&_years. = sum(B19101Ce17, B19101De17, B19101Ee17, B19101Fe17, B19101Ge17 );

		mFamIncomeLT75kB_&_years. = 
			%moe_sum( var=B19101Bm2 B19101Bm3 B19101Bm4 B19101Bm5 B19101Bm6 B19101Bm7 
			B19101Bm8 B19101Bm9 B19101Bm10 B19101Bm11 B19101Bm12);
		mFamIncomeLT75kW_&_years. = 
			%moe_sum( var=B19101Hm2 B19101Hm3 B19101Hm4 B19101Hm5 B19101Hm6 B19101Hm7 
			B19101Hm8 B19101Hm9 B19101Hm10 B19101Hm11 B19101Hm12);
		mFamIncomeLT75kH_&_years. = 
			%moe_sum( var=B19101Im2 B19101Im3 B19101Im4 B19101Im5 B19101Im6 B19101Im7 
			B19101Im8 B19101Im9 B19101Im10 B19101Im11 B19101Im12);
		mFamIncomeLT75kA_&_years. = 
			%moe_sum( var=B19101Dm2 B19101Dm3 B19101Dm4 B19101Dm5 B19101Dm6 B19101Dm7 
			B19101Dm8 B19101Dm9 B19101Dm10 B19101Dm11 B19101Dm12 
			B19101Em2 B19101Em3 B19101Em4 B19101Em5 B19101Em6 B19101Em7 
			B19101Em8 B19101Em9 B19101Em10 B19101Em11 B19101Em12);
		mFamIncomeLT75kIOM_&_years. = 
			%moe_sum( var=B19101Cm2 B19101Cm3 B19101Cm4 B19101Cm5 B19101Cm6 B19101Cm7 
			B19101Cm8 B19101Cm9 B19101Cm10 B19101Cm11 B19101Cm12 
			B19101Fm2 B19101Fm3 B19101Fm4 B19101Fm5 B19101Fm6 B19101Fm7 
			B19101Fm8 B19101Fm9 B19101Fm10 B19101Fm11 B19101Fm12 
			B19101Gm2 B19101Gm3 B19101Gm4 B19101Gm5 B19101Gm6 B19101Gm7 
			B19101Gm8 B19101Gm9 B19101Gm10 B19101Gm11 B19101Gm12);
		mFamIncomeLT75kAIOM_&_years. = 
			%moe_sum( var=B19101Cm2 B19101Cm3 B19101Cm4 B19101Cm5 B19101Cm6 B19101Cm7 
			B19101Cm8 B19101Cm9 B19101Cm10 B19101Cm11 B19101Cm12 
			B19101Dm2 B19101Dm3 B19101Dm4 B19101Dm5 B19101Dm6 B19101Dm7 
			B19101Dm8 B19101Dm9 B19101Dm10 B19101Dm11 B19101Dm12 
			B19101Em2 B19101Em3 B19101Em4 B19101Em5 B19101Em6 B19101Em7 
			B19101Em8 B19101Em9 B19101Em10 B19101Em11 B19101Em12 
			B19101Fm2 B19101Fm3 B19101Fm4 B19101Fm5 B19101Fm6 B19101Fm7 
			B19101Fm8 B19101Fm9 B19101Fm10 B19101Fm11 B19101Fm12 
			B19101Gm2 B19101Gm3 B19101Gm4 B19101Gm5 B19101Gm6 B19101Gm7 
			B19101Gm8 B19101Gm9 B19101Gm10 B19101Gm11 B19101Gm12);

		mFamIncomeGT200kB_&_years. = B19101Bm17;
		mFamIncomeGT200kW_&_years. = B19101Hm17;
		mFamIncomeGT200kH_&_years. = B19101Im17;
		mFamIncomeGT200kA_&_years. = %moe_sum( var=B19101Dm17 B19101Em17);
		mFamIncomeGT200kIOM_&_years. = %moe_sum( var=B19101Cm17 B19101Fm17 B19101Gm17);
		mFamIncomeGT200kAIOM_&_years. = %moe_sum( var=B19101Cm17 B19101Dm17 B19101Em17 B19101Fm17 B19101Gm17);

		label

			FamIncomeLT75kB_&_years. = "Family income less than $75000, Black/African American, &_years_dash "
			FamIncomeLT75kW_&_years. = "Family income less than $75000, Non-Hispanic White, &_years_dash "
			FamIncomeLT75kH_&_years. = "Family income less than $75000, Hispanic/Latino, &_years_dash "
			FamIncomeLT75kA_&_years. = "Family income less than $75000, Asian, Hawaiian, and other Pacific Islander, &_years_dash "
			FamIncomeLT75kIOM_&_years. = "Family income less than $75000, American Indian/Alaska Native, other race, two or more races, &_years_dash "
			FamIncomeLT75kAIOM_&_years. = "Family income less than $75000,All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
			FamIncomeGT200kB_&_years. = "Family income more than $200,000, Black or African American, &_years_dash "
			FamIncomeGT200kW_&_years. = "Family income more than $200,000, Non-Hispanic White, &_years_dash "
			FamIncomeGT200kH_&_years. = "Family income more than $200,000, Hispanic or Latino, &_years_dash "
			FamIncomeGT200kA_&_years. = "Family income more than $200,000, Asian, Native Hawaiian, and other Pacific Islander, &_years_dash "
			FamIncomeGT200kIOM_&_years. = "Family income more than $200,000, American Indian/Alaska Native, other race, two or more races, &_years_dash "
			FamIncomeGT200kAIOM_&_years. = "Family income more than $200,000, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
			mFamIncomeLT75kB_&_years. = "Family income less than $75000, Black/African American, MOE, &_years_dash "
			mFamIncomeLT75kW_&_years. = "Family income less than $75000, Non-Hispanic White, MOE, &_years_dash "
			mFamIncomeLT75kH_&_years. = "Family income less than $75000, Hispanic/Latino, MOE, &_years_dash "
			mFamIncomeLT75kA_&_years. = "Family income less than $75000, Asian, Hawaiian, and other Pacific Islander, MOE, &_years_dash "
			mFamIncomeLT75kIOM_&_years. = "Family income less than $75000, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
			mFamIncomeLT75kAIOM_&_years. = "Family income less than $75000,All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
			mFamIncomeGT200kB_&_years. = "Family income more than $200,000, Black or African American, MOE, &_years_dash "
			mFamIncomeGT200kW_&_years. = "Family income more than $200,000, Non-Hispanic White, MOE, &_years_dash "
			mFamIncomeGT200kH_&_years. = "Family income more than $200,000, Hispanic or Latino, MOE, &_years_dash "
			mFamIncomeGT200kA_&_years. = "Family income more than $200,000, Asian, Native Hawaiian, and other Pacific Islander, MOE, &_years_dash "
			mFamIncomeGT200kIOM_&_years. = "Family income more than $200,000, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
			mFamIncomeGT200kAIOM_&_years. = "Family income more than $200,000, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
			;

	%end;

    ** Income - Block group-level variables **;

    AggFamilyIncome_&_years. = B19127e1;
    
	FamIncomeLT75k_&_years. = 
		sum(B19101e2, B19101e3, B19101e4, B19101e5, B19101e6, B19101e7, 
			B19101e8, B19101e9, B19101e10, B19101e11, B19101e12 );

	FamIncomeGT200k_&_years. = B19101e17;

	MedFamIncm_&_years. = B19113e1;
		MedFamIncmB_&_years. = B19113Be1;
		MedFamIncmW_&_years. = B19113He1;
		MedFamIncmH_&_years. = B19113Ie1;
		MedFamIncmA_&_years. = sum(B19113De1, B19113Ee1 );
		MedFamIncmIOM_&_years. = sum(B19113Ce1, B19113Fe1, B19113Ge1 );
		MedFamIncmAIOM_&_years. = sum(B19113Ce1, B19113De1, B19113Ee1, B19113Fe1, B19113Ge1 );

	AggIncome_&_years. = B19313e1;
		AggIncomeB_&_years. = B19313Be1;
		AggIncomeW_&_years. = B19313He1;
		AggIncomeH_&_years. = B19313Ie1;
		AggIncomeA_&_years. = sum(B19313De1, B19313Ee1 );
		AggIncomeIOM_&_years. = sum(B19313Ce1, B19313Fe1, B19313Ge1 );
		AggIncomeAIOM_&_years. = sum(B19313Ce1, B19313De1, B19313Ee1, B19313Fe1, B19313Ge1 );

	AggHshldIncome_&_years. = B19025e1;
		AggHshldIncomeB_&_years. = B19025Be1;
		AggHshldIncomeW_&_years. = B19025He1;
		AggHshldIncomeH_&_years. = B19025Ie1;
		AggHshldIncomeA_&_years. = sum(B19025De1, B19025Ee1 );
		AggHshldIncomeIOM_&_years. = sum(B19025Ce1, B19025Fe1, B19025Ge1 );
		AggHshldIncomeAIOM_&_years. = sum(B19025Ce1, B19025De1, B19025Ee1, B19025Fe1, B19025Ge1 );

    mAggFamilyIncome_&_years. = B19127m1;

	mFamIncomeLT75k_&_years. = 
		%moe_sum( var=B19101m2 B19101m3 B19101m4 B19101m5 B19101m6 B19101m7 
		B19101m8 B19101m9 B19101m10 B19101m11 B19101m12);

	mFamIncomeGT200k_&_years. = B19101m17;

	mMedFamIncm_&_years. = B19113m1;
			mMedFamIncmB_&_years. = B19113Bm1;
			mMedFamIncmW_&_years. = B19113Hm1;
			mMedFamIncmH_&_years. = B19113Im1;
			mMedFamIncmA_&_years. = %moe_sum( var=B19113Dm1 B19113Em1);
			mMedFamIncmIOM_&_years. = %moe_sum( var=B19113Cm1 B19113Fm1 B19113Gm1);
			mMedFamIncmAIOM_&_years. = %moe_sum( var=B19113Cm1 B19113Dm1 B19113Em1 B19113Fm1 B19113Gm1);

	mAggIncome_&_years. = B19313m1;
			mAggIncomeB_&_years. = B19313Bm1;
			mAggIncomeW_&_years. = B19313Hm1;
			mAggIncomeH_&_years. = B19313Im1;
			mAggIncomeA_&_years. = %moe_sum( var=B19313Dm1 B19313Em1);
			mAggIncomeIOM_&_years. = %moe_sum( var=B19313Cm1 B19313Fm1 B19313Gm1);
			mAggIncomeAIOM_&_years. = %moe_sum( var=B19313Cm1 B19313Dm1 B19313Em1 B19313Fm1 B19313Gm1);

	mAggHshldIncome_&_years. = B19025m1;
		mAggHshldIncomeB_&_years. = B19025Bm1;
		mAggHshldIncomeW_&_years. = B19025Hm1;
		mAggHshldIncomeH_&_years. = B19025Im1;
		mAggHshldIncomeA_&_years. = %moe_sum( var=B19025Dm1 B19025Em1 );
		mAggHshldIncomeIOM_&_years. = %moe_sum( var=B19025Cm1 B19025Fm1 B19025Gm1 );
		mAggHshldIncomeAIOM_&_years. = %moe_sum( var=B19025Cm1 B19025Dm1 B19025Em1 B19025Fm1 B19025Gm1 );

    label 
      AggFamilyIncome_&_years. = "Aggregate family income ($ &_last_year), &_years_dash "
	  FamIncome_&_years. = "Family income, &_years_dash "
	  FamIncomeLT75k_&_years. = "Family income less than $75000, &_years_dash "
	  FamIncomeGT200k_&_years. = "Family income more than $200,000, &_years_dash "
	  MedFamIncm_&_years. = "Median family income, &_years_dash "
			MedFamIncmB_&_years. = "Median family income, Black/African American, &_years_dash "
			MedFamIncmW_&_years. = "Median family income, Non-Hispanic White, &_years_dash "
			MedFamIncmH_&_years. = "Median family income, Hispanic/Latino, &_years_dash "
			MedFamIncmA_&_years. = "Median family income, Asian, Native Hawaiian, and other Pacific Islander, &_years_dash "
			MedFamIncmIOM_&_years. = "Median family income, American Indian/Alaska Native, some other race, two or more races, &_years_dash "
			MedFamIncmAIOM_&_years. = "Median family income, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
	  AggIncome_&_years. = "Aggregate income, &_years_dash "
			AggIncomeB_&_years. = "Aggregate income, Black, &_years_dash "
			AggIncomeW_&_years. = "Aggregate income, Non-Hispanic White, &_years_dash "
			AggIncomeH_&_years. = "Aggregate income, Hispanic/Latino, &_years_dash "
			AggIncomeA_&_years. = "Aggregate income, Asian, Native Hawaiian, and other Pacific Islander, &_years_dash "
			AggIncomeIOM_&_years. = "Aggregate income, American Indian/Alaska Native, some other race, two or more races, &_years_dash "
			AggIncomeAIOM_&_years. = "Aggregate income, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
	  AggHshldIncome_&_years. = "Aggregate household income, &_years_dash "
		  AggHshldIncomeB_&_years. = "Aggregate household income, Black/African American, &_years_dash "
		  AggHshldIncomeW_&_years. = "Aggregate household income, Non-Hispanic White, &_years_dash "
		  AggHshldIncomeH_&_years. = "Aggregate household income, Hispanic/Latino, &_years_dash "
		  AggHshldIncomeA_&_years. = "Aggregate household income, Asian, Native Hawaiian, and other Pacific Islander, &_years_dash "
		  AggHshldIncomeIOM_&_years. = "Aggregate household income, American Indian/Alaska Native, some other race, two or more races, &_years_dash "
		  AggHshldIncomeAIOM_&_years. = "Aggregate household income, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
	  mAggFamilyIncome_&_years. = "Aggregate family income ($ &_last_year), MOE, &_years_dash "
	  mFamIncome_&_years. = "Family income, MOE, &_years_dash "
	  mFamIncomeLT75k_&_years. = "Family income less than $75000, MOE, &_years_dash "
	  mFamIncomeGT200k_&_years. = "Family income more than $200,000, MOE, &_years_dash "
	  mMedFamIncm_&_years. = "Median family income, MOE, &_years_dash "
			mMedFamIncmB_&_years. = "Median family income, Black/African American, MOE, &_years_dash "
			mMedFamIncmW_&_years. = "Median family income, Non-Hispanic White, MOE, &_years_dash "
			mMedFamIncmH_&_years. = "Median family income, Hispanic/Latino, MOE, &_years_dash "
			mMedFamIncmA_&_years. = "Median family income, Asian, Native Hawaiian, and other Pacific Islander, MOE, &_years_dash "
			mMedFamIncmIOM_&_years. = "Median family income, American Indian/Alaska Native, some other race, two or more races, MOE, &_years_dash "
			mMedFamIncmAIOM_&_years. = "Median family income, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
	  mAggIncome_&_years. = "Aggregate income, MOE, &_years_dash "
			mAggIncomeB_&_years. = "Aggregate income, Black, MOE, &_years_dash "
			mAggIncomeW_&_years. = "Aggregate income, Non-Hispanic White, MOE, &_years_dash "
			mAggIncomeH_&_years. = "Aggregate income, Hispanic/Latino, MOE, &_years_dash "
			mAggIncomeA_&_years. = "Aggregate income, Asian, Native Hawaiian, and other Pacific Islander, MOE, &_years_dash "
			mAggIncomeIOM_&_years. = "Aggregate income, American Indian/Alaska Native, some other race, two or more races, MOE, &_years_dash "
			mAggIncomeAIOM_&_years. = "Aggregate income, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
	  mAggHshldIncome_&_years. = "Aggregate household income, MOE, &_years_dash "
			mAggHshldIncomeB_&_years. = "Aggregate household income, Black/African American, MOE, &_years_dash "
			mAggHshldIncomeW_&_years. = "Aggregate household income, Non-Hispanic White, MOE, &_years_dash "
			mAggHshldIncomeH_&_years. = "Aggregate household income, Hispanic/Latino, MOE, &_years_dash "
			mAggHshldIncomeA_&_years. = "Aggregate household income, Asian, Native Hawaiian, and other Pacific Islander, MOE, &_years_dash "
			mAggHshldIncomeIOM_&_years. = "Aggregate household income, American Indian/Alaska Native, some other race, two or more races, MOE, &_years_dash "
			mAggHshldIncomeAIOM_&_years. = "Aggregate household income, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
      ;

    ** Housing **;    

	NumOccupiedHsgUnits_&_years. = B25003e1;
		NumOccupiedHsgUnitsB_&_years. = B25003Be1;
		NumOccupiedHsgUnitsW_&_years. = B25003He1;
		NumOccupiedHsgUnitsH_&_years. = B25003Ie1;
		NumOccupiedHsgUnitsA_&_years. = sum(B25003De1, B25003Ee1 );
		NumOccupiedHsgUnitsIOM_&_years. = sum(B25003Ce1, B25003Fe1, B25003Ge1 );
		NumOccupiedHsgUnitsAIOM_&_years. = sum(B25003Ce1, B25003De1, B25003Ee1, B25003Fe1, B25003Ge1 );

    NumOwnerOccupiedHU_&_years. = B25003e2;
	NumOwnerOccupiedHsgUnits_&_years. = B25003e2;
		NumOwnerOccupiedHUB_&_years. = B25003Be2;
		NumOwnerOccupiedHUW_&_years. = B25003He2;
		NumOwnerOccupiedHUH_&_years. = B25003Ie2;
		NumOwnerOccupiedHUA_&_years. = sum(B25003De2, B25003Ee2 );
		NumOwnerOccupiedHUIOM_&_years. = sum(B25003Ce2, B25003Fe2, B25003Ge2 );
		NumOwnerOccupiedHUAIOM_&_years. = sum(B25003Ce2, B25003De2, B25003Ee2, B25003Fe2, B25003Ge2 );

    NumRenterOccupiedHU_&_years. = B25003e3;
	NumRenterOccupiedHsgUnit_&_years. = B25003e3;

    NumVacantHsgUnits_&_years. = B25004e1;
    NumVacantHsgUnitsForRent_&_years. = B25004e2;
    NumVacantHsgUnitsForSale_&_years. = B25004e4;
    
    NumRenterHsgUnits_&_years. = NumRenterOccupiedHU_&_years. + NumVacantHsgUnitsForRent_&_years.;

	NumRenterCostBurden_&_years. = sum(B25070e7, B25070e8, B25070e9, B25070e10);
	NumRentSevereCostBurden_&_years. = B25070e10;
	NumOwnerCostBurden_&_years. = sum(B25091e8, B25091e9, B25091e10, B25091e11, B25091e19, B25091e20, B25091e21, B25091e22);
	NumOwnSevereCostBurden_&_years. = sum(B25091e11, B25091e22);

	RentCostBurdenDenom_&_years. = NumRenterOccupiedHU_&_years. - B25070e11;
	OwnerCostBurdenDenom_&_years. = NumOwnerOccupiedHU_&_years. - sum(B25091e12, B25091e23);

	GrossRentLT100_499_&_years. = sum(B25063e3, B25063e4, B25063e5, B25063e6, B25063e7, B25063e8, B25063e9, B25063e10, B25063e11);
	GrossRent500_799_&_years. = sum(B25063e12, B25063e13, B2506314, B25063e15, B25063e16, B25063e17);
	GrossRent800_899_&_years. = B25063e18;
	GrossRent900_999&_years. = B25063e19;
	GrossRent1000_1249_&_years. = B25063e20;
	GrossRent1250_1499_&_years. = B25063e21;
	GrossRent1500_1999_&_years. = B25063e22;
	GrossRent2000_2499_&_years. = B25063e23;
	GrossRent2500_2999_&_years. = B25063e24;
	GrossRent3000_3499_&_years. = B25063e25;
	GrossRentGT3500_&_years. = B25063e26;

    mNumOccupiedHsgUnits_&_years. = B25003m1;
		mNumOccupiedHsgUnitsB_&_years. = B25003Bm1;
		mNumOccupiedHsgUnitsW_&_years. = B25003Hm1;
		mNumOccupiedHsgUnitsH_&_years. = B25003Im1;
		mNumOccupiedHsgUnitsA_&_years. = %moe_sum( var=B25003Dm1 B25003Em1);
		mNumOccupiedHsgUnitsIOM_&_years. = %moe_sum( var=B25003Cm1 B25003Fm1 B25003Gm1);
		mNumOccupiedHsgUnitsAIOM_&_years. = %moe_sum( var=B25003Cm1 B25003Dm1 B25003Em1 B25003Fm1 B25003Gm1);

    mNumOwnerOccupiedHU_&_years. = B25003m2;
		mNumOwnerOccupiedHUB_&_years. = B25003Bm2;
		mNumOwnerOccupiedHUW_&_years. = B25003Hm2;
		mNumOwnerOccupiedHUH_&_years. = B25003Im2;
		mNumOwnerOccupiedHUA_&_years. = %moe_sum( var=B25003Dm2 B25003Em2);
		mNumOwnerOccupiedHUIOM_&_years. = %moe_sum( var=B25003Cm2 B25003Fm2 B25003Gm2);
		mNumOwnerOccupiedHUAIOM_&_years. = %moe_sum( var=B25003Cm2 B25003Dm2 B25003Em2 B25003Fm2 B25003Gm2);

    mNumRenterOccupiedHU_&_years. = B25003m3;

    mNumVacantHsgUnits_&_years. = B25004m1;
    mNumVacantHUForRent_&_years. = B25004m2;
    mNumVacantHUForSale_&_years. = B25004m4;
    
    mNumRenterHsgUnits_&_years. = %moe_sum( var=mNumRenterOccupiedHU_&_years. mNumVacantHUForRent_&_years. );
	
	mNumRenterCostBurden_&_years. = %moe_sum( var=B25070m7 B25070m8 B25070m9 B25070m10);
	mNumRentSevereCostBurden_&_years. = B25070m10;
	mNumOwnerCostBurden_&_years. = %moe_sum( var=B25091m8 B25091m9 B25091m10 B25091m11 B25091m19 B25091m20 B25091m21 B25091m22);
	mNumOwnSevereCostBurden_&_years. = %moe_sum( var=B25091m11 B25091m22);

	mRentCostBurdenDenom_&_years. = %moe_sum( var=NumRenterOccupiedHU_&_years. B25070e11);
	mOwnerCostBurdenDenom_&_years. =  %moe_sum( var=NumOwnerOccupiedHU_&_years. B25091e12 B25091e23);

	mGrossRentLT100_499_&_years. = %moe_sum( var=B25063m3 B25063m4 B25063m5 B25063m6 B25063m7 B25063m8 B25063m9 B25063m10 B25063m11);
	mGrossRent500_799_&_years. = %moe_sum( var=B25063m12 B25063m13 B2506314 B25063m15 B25063m16 B25063m17);
	mGrossRent800_899_&_years. = B25063m18;
	mGrossRent900_999&_years. = B25063m19;
	mGrossRent1000_1249_&_years. = B25063m20;
	mGrossRent1250_1499_&_years. = B25063m21;
	mGrossRent1500_1999_&_years. = B25063m22;
	mGrossRent2000_2499_&_years. = B25063m23;
	mGrossRent2500_2999_&_years. = B25063m24;
	mGrossRent3000_3499_&_years. = B25063m25;
	mGrossRentGT3500_&_years. = B25063m26;

	medianhomevalue_&_years. = B25077e1;
	mmedianhomevalue_&_years. = B25077m1;


    label
	  NumOccupiedHsgUnits_&_years. = "Occupied housing units, &_years_dash "
		    NumOwnerOccupiedHsgUnits_&_years. = "Owner-occupied housing units, &_years_dash "
			NumOccupiedHsgUnitsB_&_years. = "Occupied housing units, Black/African American, &_years_dash "
			NumOccupiedHsgUnitsW_&_years. = "Occupied housing units, Non-Hispanic White, &_years_dash "
			NumOccupiedHsgUnitsH_&_years. = "Occupied housing units, Hispanic/Latino, &_years_dash "
			NumOccupiedHsgUnitsA_&_years. = "Occupied housing units, Asian and Native Hawaiian and Other Pacific Islander, &_years_dash "
			NumOccupiedHsgUnitsIOM_&_years. = "Occupied housing units,  American Indian/Alaska Native, Some other race, Two or more races, &_years_dash "
			NumOccupiedHsgUnitsAIOM_&_years. = "Occupied housing units, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
      NumOwnerOccupiedHU_&_years. = "Owner-occupied housing units, &_years_dash "
	  		NumRenterOccupiedHsgUnit_&_years. = "Renter-occupied housing units, &_years_dash "
			NumOwnerOccupiedHUB_&_years. = "Owner-occupied housing units, Black/African American, &_years_dash "
			NumOwnerOccupiedHUW_&_years. = "Owner-occupied housing units, Non-Hispanic White, &_years_dash "
			NumOwnerOccupiedHUH_&_years. = "Owner-occupied housing units, Hispanic/Latino, &_years_dash "
			NumOwnerOccupiedHUA_&_years. = "Owner-occupied housing units, Asian and Native Hawaiian and Other Pacific Islander, &_years_dash "
			NumOwnerOccupiedHUIOM_&_years. = "Owner-occupied housing units, American Indian/Alaska Native, Some other race, Two or more races, &_years_dash "
			NumOwnerOccupiedHUAIOM_&_years. = "Owner-occupied housing units, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
      NumRenterOccupiedHU_&_years. = "Renter-occupied housing units, &_years_dash "
      NumVacantHsgUnits_&_years. = "Vacant housing units, &_years_dash "
      NumVacantHsgUnitsForRent_&_years. = "Vacant housing units for rent, &_years_dash "
      NumVacantHsgUnitsForSale_&_years. = "Vacant housing units for sale, &_years_dash "
      NumRenterHsgUnits_&_years. = "Total rental housing units, &_years_dash "
	  NumRenterCostBurden_&_years. = "Renter-occupied housing units with housing cost burden (housing costs are or exceed 30% of household income), &_years_dash "
	  NumRentSevereCostBurden_&_years. = "Renter-occupied housing units with severe housing cost burden (housing costs are or exceed 50% of household income), &_years_dash "
	  NumOwnerCostBurden_&_years. = "Owner-occupied housing units with and without a mortgage with housing cost burden (owner costs are or exceed 30% of household income), &_years_dash "
	  NumOwnSevereCostBurden_&_years. = "Owner-occupied housing units with severe housing cost burden (housing costs are or exceed 50% of household income), &_years_dash "
	  RentCostBurdenDenom_&_years. = "Renter-occupied housing units, excluding units where renter cost burden is not computed "
	  OwnerCostBurdenDenom_&_years. = "Owner-occupied housing units, excluding units where owner cost burden is not computed "
	  GrossRentLT100_499_&_years. = "Renter-occupied housing units where gross rent is less than $100 to $499, &_years_dash "
			GrossRent500_799_&_years. = "Renter-occupied housing units where gross rent is $500 to $799, &_years_dash "
			GrossRent800_899_&_years. = "Renter-occupied housing units where gross rent is $800 to $899, &_years_dash "
			GrossRent900_999&_years. = "Renter-occupied housing units where gross rent is $900 to $999, &_years_dash "
			GrossRent1000_1249_&_years. = "Renter-occupied housing units where gross rent is $1000 to $1249, &_years_dash "
			GrossRent1250_1499_&_years. = "Renter-occupied housing units where gross rent is $1250 to $1499, &_years_dash "
			GrossRent1500_1999_&_years. = "Renter-occupied housing units where gross rent is $1500 to $1999, &_years_dash "
			GrossRent2000_2499_&_years. = "Renter-occupied housing units where gross rent is $2000 to $2499, &_years_dash "
			GrossRent2500_2999_&_years. = "Renter-occupied housing units where gross rent is $2500 to $2999, &_years_dash "
			GrossRent3000_3499_&_years. = "Renter-occupied housing units where gross rent is $3000 to $3499, &_years_dash "
			GrossRentGT3500_&_years. = = "Renter-occupied housing units where gross rent is greater than $3500, &_years_dash "
	  mNumOccupiedHsgUnits_&_years. = "Occupied housing units, MOE, &_years_dash "
		    mNumOccupiedHsgUnitsB_&_years. = "Occupied housing units, Black/African American, &_years_dash "
			mNumOccupiedHsgUnitsW_&_years. = "Occupied housing units, Non-Hispanic White, &_years_dash "
			mNumOccupiedHsgUnitsH_&_years. = "Occupied housing units, Hispanic/Latino, &_years_dash "
			mNumOccupiedHsgUnitsA_&_years. = "Occupied housing units, Asian and Native Hawaiian and Other Pacific Islander, &_years_dash "
			mNumOccupiedHsgUnitsIOM_&_years. = "Occupied housing units,  American Indian/Alaska Native, Some other race, Two or more races, &_years_dash "
			mNumOccupiedHsgUnitsAIOM_&_years. = "Occupied housing units, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
      mNumOwnerOccupiedHU_&_years. = "Owner-occupied housing units, MOE, &_years_dash "
			mNumOwnerOccupiedHUB_&_years. = "Owner-occupied housing units, Black/African American, MOE, &_years_dash "
			mNumOwnerOccupiedHUW_&_years. = "Owner-occupied housing units, Non-Hispanic White, MOE, &_years_dash "
			mNumOwnerOccupiedHUH_&_years. = "Owner-occupied housing units, Hispanic/Latino, MOE, &_years_dash "
			mNumOwnerOccupiedHUA_&_years. = "Owner-occupied housing units, Asian and Native Hawaiian and Other Pacific Islander, MOE, &_years_dash "
			mNumOwnerOccupiedHUIOM_&_years. = "Owner-occupied housing units, American Indian/Alaska Native, Some other race, Two or more races, MOE, &_years_dash "
			mNumOwnerOccupiedHUAIOM_&_years. = "Owner-occupied housing units, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
      mNumRenterOccupiedHU_&_years. = "Renter-occupied housing units, MOE, &_years_dash "
      mNumVacantHsgUnits_&_years. = "Vacant housing units, MOE, &_years_dash "
      mNumVacantHUForRent_&_years. = "Vacant housing units for rent, MOE, &_years_dash "
      mNumVacantHUForSale_&_years. = "Vacant housing units for sale, MOE, &_years_dash "
      mNumRenterHsgUnits_&_years. = "Total rental housing units, MOE, &_years_dash "
	  mNumRenterCostBurden_&_years. = "Renter-occupied housing units with housing cost burden (housing costs are or exceed 30% of household income), MOE, &_years_dash "
	  mNumRentSevereCostBurden_&_years. = "Renter-occupied housing units with severe housing cost burden (housing costs are or exceed 50% of household income), MOE, &_years_dash "
	  mNumOwnerCostBurden_&_years. = "Owner-occupied housing units with and without a mortgage with housing cost burden (owner costs are or exceed 30% of household income), MOE, &_years_dash "
	  mNumOwnSevereCostBurden_&_years. = "Owner-occupied housing units with severe housing cost burden (housing costs are or exceed 50% of household income), MOE, &_years_dash "
	  mRentCostBurdenDenom_&_years. = "Renter-occupied housing units, excluding units where renter cost burden is not computed, MOE, &_years_dash  "
	  mOwnerCostBurdenDenom_&_years. = "Owner-occupied housing units, excluding units where owner cost burden is not computed, MOE, &_years_dash  "
	  mGrossRentLT100_499_&_years. = "Renter-occupied housing units where gross rent is less than $100 to $499, MOE, &_years_dash "
			mGrossRent500_799_&_years. = "Renter-occupied housing units where gross rent is $500 to $799, MOE, &_years_dash "
			mGrossRent800_899_&_years. = "Renter-occupied housing units where gross rent is $800 to $899, MOE, &_years_dash "
			mGrossRent900_999&_years. = "Renter-occupied housing units where gross rent is $900 to $999, MOE, &_years_dash "
			mGrossRent1000_1249_&_years. = "Renter-occupied housing units where gross rent is $1000 to $1249, MOE, &_years_dash "
			mGrossRent1250_1499_&_years. = "Renter-occupied housing units where gross rent is $1250 to $1499, MOE, &_years_dash "
			mGrossRent1500_1999_&_years. = "Renter-occupied housing units where gross rent is $1500 to $1999, MOE, &_years_dash "
			mGrossRent2000_2499_&_years. = "Renter-occupied housing units where gross rent is $2000 to $2499, MOE, &_years_dash "
			mGrossRent2500_2999_&_years. = "Renter-occupied housing units where gross rent is $2500 to $2999, MOE, &_years_dash "
			mGrossRent3000_3499_&_years. = "Renter-occupied housing units where gross rent is $3000 to $3499, MOE, &_years_dash "
			mGrossRentGT3500_&_years. = "Renter-occupied housing units where gross rent is greater than $3500, MOE, &_years_dash "
	medianhomevalue_&_years. = "Median value of owner-occupied housing units ($),&_years_dash"
	mmedianhomevalue_&_years.="Median value of owner-occupied housing units ($), MOE, &_years_dash"

      ;

  run;

  %if &_state_ab = dc and (
 	%upcase( &source_geo ) = BG00 or
	%upcase( &source_geo ) = BG10 or 
	%upcase( &source_geo ) = TR00 or
	%upcase( &source_geo ) = TR10 ) %then %do; 

    %** For DC, do full set of geographies **;
    
    %ACS_summary_geo( anc2002, &source_geo )
    %ACS_summary_geo( anc2012, &source_geo )
    %ACS_summary_geo( city, &source_geo )
    %ACS_summary_geo( cluster_tr2000, &source_geo )
    %ACS_summary_geo( eor, &source_geo )
    %ACS_summary_geo( psa2004, &source_geo )
    %ACS_summary_geo( psa2012, &source_geo )
    %ACS_summary_geo( geo2000, &source_geo )
    %ACS_summary_geo( geo2010, &source_geo )
    %ACS_summary_geo( voterpre2012, &source_geo )
    %ACS_summary_geo( ward2002, &source_geo )
    %ACS_summary_geo( ward2012, &source_geo )
    %ACS_summary_geo( zip, &source_geo )
	%ACS_summary_geo( cluster2000, &source_geo )
	%ACS_summary_geo( bridgepk, &source_geo )

  %end;

  %else	%if &_state_ab = dc and %upcase( &source_geo ) = REGCOUNTY %then %do;
	%ACS_summary_geo( County, &source_geo )
  %end;

  %else %do;
    %** For non-DC, do census tract, council district and county summary file **;
    
    %if %upcase( &source_geo ) = TR10 %then %do; 
      %ACS_summary_geo( geo2010, &source_geo )
	  %ACS_summary_geo( councildist, &source_geo )
    %end;
    %else %if %upcase( &source_geo ) = TR00 %then %do;
      %ACS_summary_geo( geo2000, &source_geo )
    %end;
	%else %if %upcase( &source_geo ) = REGCOUNTY %then %do;
      %ACS_summary_geo( County, &source_geo )
    %end;

  %end;
  
  ** Cleanup temporary data sets **;
  
  proc datasets library=work nolist;
    delete &source_ds_work /memtype=data;
  quit;
  
  %macro_exit:

%mend ACS_summary_geo_source;



