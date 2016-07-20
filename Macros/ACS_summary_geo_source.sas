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
**************************************************************************/

%macro ACS_summary_geo_source( source_geo );

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
  %else %do;
    %err_mput( macro=ACS_summary_geo_source, msg=Geography &source_geo is not supported. )
    %goto macro_exit;
  %end;
     
  %let source_ds_work = _ACS_&_years._&state_ab._sum&source_geo_suffix;

  %put _global_;

  ** Create new variables for summarizing **;

  data &source_ds_work;

    set ACS.&source_ds;
    
    ** Unweighted sample counts **;
    
    UnwtdPop_&_years. = B00001e1;
    UnwtdHsgUnits_&_years. = B00002e1;

    label
      UnwtdPop_&_years. = "Unweighted sample population, &_years_dash "
      UnwtdHsgUnits_&_years. = "Unweighted sample housing units, &_years_dash ";

    ** Demographics **;
    
    TotPop_&_years. = B01003e1;
    
    NumHshlds_&_years. = B11001e1;

    NumFamilies_&_years. = B11003e1;

    PopUnder5Years_&_years. = sum( B01001e3, B01001e27 );
    
    PopUnder18Years_&_years. = 
      sum( B01001e3, B01001e4, B01001e5, B01001e6, 
           B01001e27, B01001e28, B01001e29, B01001e30 );
    
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
    
    mPop65andOverYears_&_years. = 
      %moe_sum( var=B01001m20 B01001m21 B01001m22 B01001m23 B01001m24 B01001m25 
           B01001m44 B01001m45 B01001m46 B01001m47 B01001m48 B01001m49 );

    label
      TotPop_&_years. = "Total population, &_years_dash "
      NumHshlds_&_years. = "Total HHs, &_years_dash "
      NumFamilies_&_years. = "Family HHs, &_years_dash "
      PopUnder5Years_&_years. = "Persons under 5 years old, &_years_dash "
      PopUnder18Years_&_years. = "Persons under 18 years old, &_years_dash "
      Pop65andOverYears_&_years. = "Persons 65 years old and over, &_years_dash "
      mTotPop_&_years. = "Total population, MOE, &_years_dash "
      mNumHshlds_&_years. = "Total HHs, MOE, &_years_dash "
      mNumFamilies_&_years. = "Family HHs, MOE, &_years_dash "
      mPopUnder5Years_&_years. = "Persons under 5 years old, MOE, &_years_dash "
      mPopUnder18Years_&_years. = "Persons under 18 years old, MOE, &_years_dash "
      mPop65andOverYears_&_years. = "Persons 65 years old and over, MOE, &_years_dash "
    ;
    
    %if %upcase( &source_geo ) = TR00 or %upcase( &source_geo ) = TR10 %then %do;
    
      ** Foreign born **;

      PopForeignBorn_&_years. = B05002e13;
      mPopForeignBorn_&_years. = B05002m13;
      
      label 
        PopForeignBorn_&_years. = "Foreign born population, &_years_dash "
        mPopForeignBorn_&_years. = "Foreign born population, MOE, &_years_dash ";
    
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
    
    %if %upcase( &source_geo ) = TR00 or %upcase( &source_geo ) = TR10 %then %do;
    
      ** Poverty **;
      
      ChildrenPovertyDefined_&_years. = 
        sum( B17001e4, B17001e5, B17001e6, B17001e7, B17001e8, B17001e9, 
             B17001e18, B17001e19, B17001e20, B17001e21, B17001e22, B17001e23,
             B17001e33, B17001e34, B17001e35, B17001e36, B17001e37, B17001e38, 
             B17001e47, B17001e48, B17001e49, B17001e50, B17001e51, B17001e52
            );

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
      
      PopPoorChildren_&_years. = 
        sum( B17001e4, B17001e5, B17001e6, B17001e7, B17001e8, B17001e9, 
             B17001e18, B17001e19, B17001e20, B17001e21, B17001e22, B17001e23 );

	  PopPoorChildrenUnder5_&_years. = 
        sum( B17001e4,
             B17001e18);

      PopPoorElderly_&_years. = 
        sum( B17001e15, B17001e16, B17001e29, B17001e30 );

      PopPoorPersons_&_years. = B17001e2;

      mChildrenPovertyDefined_&_years. = 
        %moe_sum( var=B17001m4 B17001m5 B17001m6 B17001m7 B17001m8 B17001m9 
             B17001m18 B17001m19 B17001m20 B17001m21 B17001m22 B17001m23
             B17001m33 B17001m34 B17001m35 B17001m36 B17001m37 B17001m38 
             B17001m47 B17001m48 B17001m49 B17001m50 B17001m51 B17001m52
            );
 
      mChildPovertyUnder5Def_&_years. = 
        %moe_sum( var=B17001m4 
             B17001m18
             B17001m33 
             B17001m47
            );


      mElderlyPovertyDefined_&_years. = 
        %moe_sum( var=B17001m15 B17001m16 B17001m29 B17001m30
             B17001m44 B17001m45 B17001m58 B17001m59
        );

      mPersonsPovertyDefined_&_years. = B17001m1;
      
      mPopPoorChildren_&_years. = 
        %moe_sum( var=B17001m4 B17001m5 B17001m6 B17001m7 B17001m8 B17001m9 
             B17001m18 B17001m19 B17001m20 B17001m21 B17001m22 B17001m23 );

       mPopPoorChildrenUnder5_&_years. = 
        %moe_sum( var=B17001m4 
             B17001m18 );

      mPopPoorElderly_&_years. = 
        %moe_sum( var=B17001m15 B17001m16 B17001m29 B17001m30 );

      mPopPoorPersons_&_years. = B17001m2;
      
      label
        PopPoorPersons_&_years. = "Persons below the poverty level last year, &_years_dash "
        PersonsPovertyDefined_&_years. = "Persons with poverty status determined, &_years_dash "
        PopPoorChildren_&_years. = "Children under 18 years old below the poverty level last year, &_years_dash "
        PopPoorChildrenUnder5_&_years. = "Children under 5 years old below the poverty level last year, &_years_dash "
        ChildPovertyUnder5Def_&_years. = "Children under 5 years old with poverty status determined, &_years_dash "
        PopPoorElderly_&_years. = "Persons 65 years old and over below the poverty level last year, &_years_dash "
        ElderlyPovertyDefined_&_years. = "Persons 65 years old and over with poverty status determined, &_years_dash "
        mPopPoorPersons_&_years. = "Persons below the poverty level last year, MOE, &_years_dash "
        mPersonsPovertyDefined_&_years. = "Persons with poverty status determined, MOE, &_years_dash "
        mPopPoorChildren_&_years. = "Children under 18 years old below the poverty level last year, MOE, &_years_dash "
		mPopPoorChildrenUnder5_&_years. = "Children under 5 years old below the poverty level last year, MOE, &_years_dash "
		mChildrenPovertyDefined_&_years. = "Children under 18 years old with poverty status determined, MOE, &_years_dash "
		mChildPovertyUnder5Def_&_years. = "Children under 5 years old with poverty status determined, MOE, &_years_dash "
        mPopPoorElderly_&_years. = "Persons 65 years old and over below the poverty level last year, MOE, &_years_dash "
        mElderlyPovertyDefined_&_years. = "Persons 65 years old and over with poverty status determined, MOE, &_years_dash "
      ;

    %end;
    
    %if %upcase( &source_geo ) = TR00 or %upcase( &source_geo ) = TR10 %then %do;
    
      ** Employment **;
      
      PopCivilianEmployed_&_years. = 
        sum( B23001e7, B23001e14, B23001e21, B23001e28, B23001e35, B23001e42, B23001e49, 
             B23001e56, B23001e63, B23001e70, B23001e75, B23001e80, B23001e85,
             B23001e93, B23001e100, B23001e107, B23001e114, B23001e121, B23001e128, 
             B23001e135, B23001e142, B23001e149, B23001e156, B23001e161, B23001e166, B23001e171 );

      PopUnemployed_&_years. = 
        sum( B23001e8, B23001e15, B23001e22, B23001e29, B23001e36, B23001e43, B23001e50, 
             B23001e57, B23001e64, B23001e71, B23001e76, B23001e81, B23001e86, 
             B23001e94, B23001e101, B23001e108, B23001e115, B23001e122, B23001e129, 
             B23001e136, B23001e143, B23001e150, B23001e157, B23001e162, B23001e167, B23001e172 );
      
      PopInCivLaborForce_&_years. = sum( PopCivilianEmployed_&_years., PopUnemployed_&_years. );
      
      Pop16andOverEmployed_&_years. = PopCivilianEmployed_&_years. +
        sum( B23001e5, B23001e12, B23001e19, B23001e26, B23001e33, B23001e40, 
             B23001e47, B23001e54, B23001e61, B23001e68,
             B23001e91, B23001e98, B23001e105, B23001e112, B23001e119, B23001e126, 
             B23001e133, B23001e140, B23001e147, B23001e154 );

      Pop16andOverYears_&_years. = B23001e1;
      
      mPopCivilianEmployed_&_years. = 
        %moe_sum( var=B23001m7 B23001m14 B23001m21 B23001m28 B23001m35 B23001m42 B23001m49 
             B23001m56 B23001m63 B23001m70 B23001m75 B23001m80 B23001m85
             B23001m93 B23001m100 B23001m107 B23001m114 B23001m121 B23001m128 
             B23001m135 B23001m142 B23001m149 B23001m156 B23001m161 B23001m166 B23001m171 );

      mPopUnemployed_&_years. = 
        %moe_sum( var=B23001m8 B23001m15 B23001m22 B23001m29 B23001m36 B23001m43 B23001m50 
             B23001m57 B23001m64 B23001m71 B23001m76 B23001m81 B23001m86 
             B23001m94 B23001m101 B23001m108 B23001m115 B23001m122 B23001m129 
             B23001m136 B23001m143 B23001m150 B23001m157 B23001m162 B23001m167 B23001m172 );
      
      mPopInCivLaborForce_&_years. = %moe_sum( var=mPopCivilianEmployed_&_years. mPopUnemployed_&_years. );
      
      mPop16andOverEmployed_&_years. =
        %moe_sum( var=mPopCivilianEmployed_&_years. B23001m5 B23001m12 B23001m19 B23001m26 B23001m33 B23001m40 
             B23001m47 B23001m54 B23001m61 B23001m68
             B23001m91 B23001m98 B23001m105 B23001m112 B23001m119 B23001m126 
             B23001m133 B23001m140 B23001m147 B23001m154 );

      mPop16andOverYears_&_years. = B23001m1;
      
      label
        PopCivilianEmployed_&_years. = "Persons 16+ years old in the civilian labor force and employed, &_years_dash "
        PopUnemployed_&_years. = "Persons 16+ years old in the civilian labor force and unemployed, &_years_dash "
        PopInCivLaborForce_&_years. = "Persons 16+ years old in the civilian labor force, &_years_dash "
        Pop16andOverEmployed_&_years. = "Persons 16+ years old who are employed (includes armed forces), &_years_dash "
        Pop16andOverYears_&_years. = "Persons 16+ years old, &_years_dash "
        mPopCivilianEmployed_&_years. = "Persons 16+ years old in the civilian labor force and employed, &_years_dash "
        mPopUnemployed_&_years. = "Persons 16+ years old in the civilian labor force and unemployed, &_years_dash "
        mPopInCivLaborForce_&_years. = "Persons 16+ years old in the civilian labor force, &_years_dash "
        mPop16andOverEmployed_&_years. = "Persons 16+ years old who are employed (includes armed forces), &_years_dash "
        mPop16andOverYears_&_years. = "Persons 16+ years old, &_years_dash "
      ;
      
    %end;
    
    ** Education **;

    Pop25andOverYears_&_years. = B15002e1;
    
    Pop25andOverWoutHS_&_years. = 
      sum( B15002e3, B15002e4, B15002e5, B15002e6, B15002e7, B15002e8, B15002e9, B15002e10, 
           B15002e20, B15002e21, B15002e22, B15002e23, B15002e24, B15002e25, B15002e26, B15002e27 );
           
    Pop25andOverWHS_&_years. = 
      sum( B15002e11, B15002e12, B15002e13, B15002e14, B15002e28, B15002e29, B15002e30, B15002e31 );

    Pop25andOverWCollege_&_years. = 
      sum( B15002e15, B15002e16, B15002e17, B15002e18, B15002e32, B15002e33, B15002e34, B15002e35 );
    
    mPop25andOverYears_&_years. = B15002m1;
    
    mPop25andOverWoutHS_&_years. = 
      %moe_sum( var=B15002m3 B15002m4 B15002m5 B15002m6 B15002m7 B15002m8 B15002m9 B15002m10 
           B15002m20 B15002m21 B15002m22 B15002m23 B15002m24 B15002m25 B15002m26 B15002m27 );
           
    mPop25andOverWHS_&_years. = 
      %moe_sum( var=B15002m11 B15002m12 B15002m13 B15002m14 B15002m28 B15002m29 B15002m30 B15002m31 );

    mPop25andOverWCollege_&_years. = 
      %moe_sum( var=B15002m15 B15002m16 B15002m17 B15002m18 B15002m32 B15002m33 B15002m34 B15002m35 );
    
    label
      Pop25andOverWoutHS_&_years. = "Persons 25 years old and over without high school diploma, &_years_dash "
      Pop25andOverWCollege_&_years. = "Persons 25+ years old with a bachelors or graduate/prof degree, &_years_dash "
      Pop25andOverYears_&_years. = "Persons 25 years old and over, &_years_dash "
      Pop25andOverWHS_&_years. = "Persons 25 years old and over with a high school diploma or GED, &_years_dash "
      mPop25andOverWoutHS_&_years. = "Persons 25 years old and over without high school diploma, MOE, &_years_dash "
      mPop25andOverWCollege_&_years. = "Persons 25+ years old with a bachelors or graduate/prof degree, MOE, &_years_dash "
      mPop25andOverYears_&_years. = "Persons 25 years old and over, MOE, &_years_dash "
      mPop25andOverWHS_&_years. = "Persons 25 years old and over with a high school diploma or GED, MOE, &_years_dash "
      ;
      
    %if %upcase( &source_geo ) = TR00 or %upcase( &source_geo ) = TR10 %then %do;

      ** Household type **;

      NumFamiliesOwnChildren_&_years. = 
        sum( B11003e3, B11003e10, B11003e16 ) + 
        sum( B11013e3, B11013e5, B11013e6 );
      
      NumFamiliesOwnChildrenFH_&_years. = B11003e16 + B11013e5;

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
    
    AggFamilyIncome_&_years. = B19127e1;
    
    mAggFamilyIncome_&_years. = B19127m1;

    label 
      AggFamilyIncome_&_years. = "Aggregate family income ($ &_last_year), &_years_dash "
      mAggFamilyIncome_&_years. = "Aggregate family income ($ &_last_year), MOE, &_years_dash "
      ;
    
    ** Housing **;
    
    NumOccupiedHsgUnits_&_years. = B25003e1;
    NumOwnerOccupiedHsgUnits_&_years. = B25003e2;
    NumRenterOccupiedHsgUnit_&_years. = B25003e3;

    NumVacantHsgUnits_&_years. = B25004e1;
    NumVacantHsgUnitsForRent_&_years. = B25004e2;
    NumVacantHsgUnitsForSale_&_years. = B25004e4;
    
    NumRenterHsgUnits_&_years. = NumRenterOccupiedHsgUnit_&_years. + NumVacantHsgUnitsForRent_&_years.;

    mNumOccupiedHsgUnits_&_years. = B25003m1;
    mNumOwnerOccupiedHU_&_years. = B25003m2;
    mNumRenterOccupiedHU_&_years. = B25003m3;

    mNumVacantHsgUnits_&_years. = B25004m1;
    mNumVacantHUForRent_&_years. = B25004m2;
    mNumVacantHUForSale_&_years. = B25004m4;
    
    mNumRenterHsgUnits_&_years. = %moe_sum( var=mNumRenterOccupiedHU_&_years. mNumVacantHUForRent_&_years. );

    label
      NumOccupiedHsgUnits_&_years. = "Occupied housing units, &_years_dash "
      NumOwnerOccupiedHsgUnits_&_years. = "Owner-occupied housing units, &_years_dash "
      NumRenterOccupiedHsgUnit_&_years. = "Renter-occupied housing units, &_years_dash "
      NumVacantHsgUnits_&_years. = "Vacant housing units, &_years_dash "
      NumVacantHsgUnitsForRent_&_years. = "Vacant housing units for rent, &_years_dash "
      NumVacantHsgUnitsForSale_&_years. = "Vacant housing units for sale, &_years_dash "
      NumRenterHsgUnits_&_years. = "Total rental housing units, &_years_dash "
      mNumOccupiedHsgUnits_&_years. = "Occupied housing units, MOE, &_years_dash "
      mNumOwnerOccupiedHU_&_years. = "Owner-occupied housing units, MOE, &_years_dash "
      mNumRenterOccupiedHU_&_years. = "Renter-occupied housing units, MOE, &_years_dash "
      mNumVacantHsgUnits_&_years. = "Vacant housing units, MOE, &_years_dash "
      mNumVacantHUForRent_&_years. = "Vacant housing units for rent, MOE, &_years_dash "
      mNumVacantHUForSale_&_years. = "Vacant housing units for sale, MOE, &_years_dash "
      mNumRenterHsgUnits_&_years. = "Total rental housing units, MOE, &_years_dash "
    ;

  run;

  %if &_state_ab = dc %then %do;

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

  %end;
  %else %do;
  
    %** For non-DC, only do census tract summary file **;
    
    %if &source_geo = TR10 %then %do;
      %ACS_summary_geo( geo2010, &source_geo )
    %end;
    %else %if &source_geo = TR00 %then %do;
      %ACS_summary_geo( geo2000, &source_geo )
    %end;

  %end;
  
  ** Cleanup temporary data sets **;
  
  proc datasets library=work nolist;
    delete &source_ds_work /memtype=data;
  quit;
  
  %macro_exit:

%mend ACS_summary_geo_source;


