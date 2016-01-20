/**************************************************************************
 Program:  ACS_2007_11_sum_all.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  03/21/13
 Version:  SAS 9.2
 Environment:  Windows
 
 Description:  Create summary file from ACS 5-year data: 2007-11.
 
 Modifications:
**************************************************************************/

%include "K:\Metro\PTatian\DCData\SAS\Inc\Stdhead.sas";

** Define libraries **;
%DCData_lib( ACS )

%global year year_lbl year_dollar;

%let year = 2007_11;
%let year_lbl = 2007-11;
%let year_dollar = 2011;

/** Macro Summary_geo - Start Definition **/

%macro Summary_geo( geo, source_geo );

  %local geo_name geo_wt_file geo_var geo_suffix geo_label count_vars moe_vars;

  %let geo_name = %upcase( &geo );
  %let geo_wt_file = %sysfunc( putc( &geo_name, &source_geo_wt_file_fmt ) );;
  %let geo_var = %sysfunc( putc( &geo_name, $geoval. ) );
  %let geo_suffix = %sysfunc( putc( &geo_name, $geosuf. ) );
  %let geo_label = %sysfunc( putc( &geo_name, $geodlbl. ) );

  %if %upcase( &source_geo ) = BG00 or %upcase( &source_geo ) = BG10 %then %do;
  
    %** Count and MOE variables for block group data **;

    %let count_vars = 
           Unwtd: TotPop: PopUnder: Pop25: Pop65: 
           PopWithRace: PopBlack: PopWhite: PopHisp: PopAsian: PopNative: PopOther: PopMulti: 
           Num: Agg: ;
           
    %let moe_vars =
           mTotPop_&year mNumHshlds_&year mNumFamilies_&year
           mPopUnder5Years_&year mPopUnder18Years_&year mPop65andOverYears_&year
           mPopWithRace_&year mPopBlackNonHispBridge_&year
           mPopWhiteNonHispBridge_&year
           mPopAsianPINonHispBridge_&year mPopHisp_&year
           mPopNativeAmNonHispBr_&year
           mPopOtherNonHispBridge_&year
           mPopMultiracialNonHisp_&year
           mPopOtherRaceNonHispBr_&year
           mPop25andOverWoutHS_&year mPop25andOverWCollege_&year
           mPop25andOverYears_&year mPop25andOverWHS_&year
           mNumHshldPhone_&year
           mNumHshldCar_&year mAggFamilyIncome_&year
           mNumOccupiedHsgUnits_&year
           mNumOwnerOccupiedHU_&year
           mNumRenterOccupiedHU_&year mNumVacantHsgUnits_&year
           mNumVacantHUForRent_&year
           mNumVacantHUForSale_&year mNumRenterHsgUnits_&year           
           ;
               
  %end;
  %else %do;
  
    %** Count and MOE variables for tract data **;
  
    %let count_vars = 
           Unwtd: TotPop: PopUnder: Pop16: Pop25: Pop65: PopForeignBorn: 
           PopWithRace: PopBlack: PopWhite: PopHisp: PopAsian: PopNative: PopOther: PopMulti: 
           PopPoor: PopInCivLaborForce: PopCivilian: PopUnemployed:
           Persons: Children: Elderly: Num: Agg: ;
           
    %let moe_vars =
           mTotPop_&year mNumHshlds_&year mNumFamilies_&year
           mPopUnder5Years_&year mPopUnder18Years_&year mPop65andOverYears_&year
           mPopForeignBorn_&year
           mPopWithRace_&year mPopBlackNonHispBridge_&year
           mPopWhiteNonHispBridge_&year
           mPopAsianPINonHispBridge_&year mPopHisp_&year
           mPopNativeAmNonHispBr_&year
           mPopOtherNonHispBridge_&year
           mPopMultiracialNonHisp_&year
           mPopOtherRaceNonHispBr_&year mPopPoorPersons_&year
           mPersonsPovertyDefined_&year mPopPoorChildren_&year
           mChildrenPovertyDefined_&year mPopPoorElderly_&year
           mElderlyPovertyDefined_&year mPopCivilianEmployed_&year
           mPopUnemployed_&year mPopInCivLaborForce_&year
           mPop16andOverEmployed_&year mPop16andOverYears_&year
           mPop25andOverWoutHS_&year mPop25andOverWCollege_&year
           mPop25andOverYears_&year mPop25andOverWHS_&year
           mNumFamiliesOwnChildren_&year
           mNumFamiliesOwnChildFH_&year mNumHshldPhone_&year
           mNumHshldCar_&year mAggFamilyIncome_&year
           mNumOccupiedHsgUnits_&year
           mNumOwnerOccupiedHU_&year
           mNumRenterOccupiedHU_&year mNumVacantHsgUnits_&year
           mNumVacantHUForRent_&year
           mNumVacantHUForSale_&year mNumRenterHsgUnits_&year           
           ;
               
  %end;
  
  %put _local_;
  
  %if ( &geo_name = GEO2000 and %upcase( &source_geo_var ) = GEO2000 ) or 
      ( &geo_name = GEO2010 and %upcase( &source_geo_var ) = GEO2010 ) %then %do;

    ** Census tracts from census tract source: just recopy selected vars **;
    
    data Acs.&source_ds_work&geo_suffix (label="ACS summary, &year_lbl, &source_geo_label source, DC, &geo_label");
    
      set &source_ds_work (keep=&geo_var &count_vars &moe_vars);

    run;

  %end;
  %else %do;
  
    ** Transform data from source geography (&source_geo_var) to target geography (&geo_var) **;
    
    OPTIONS MPRINT SYMBOLGEN MLOGIC;
  
    %Transform_geo_data(
      dat_ds_name=&source_ds_work,
      dat_org_geo=&source_geo_var,
      dat_count_vars=&count_vars,
      dat_count_moe_vars=&moe_vars,
      dat_prop_vars=,
      wgt_ds_name=General.&geo_wt_file,
      wgt_org_geo=&source_geo_var,
      wgt_new_geo=&geo_var,
      wgt_id_vars=,
      wgt_wgt_var=popwt,
      out_ds_name=Acs.&source_ds_work&geo_suffix,
      out_ds_label=%str(ACS summary, &year_lbl, &source_geo_label source, DC, &geo_label),
      calc_vars=,
      calc_vars_labels=,
      keep_nonmatch=N,
      show_warnings=10,
      print_diag=Y,
      full_diag=N
    )
    
  %end;  

  proc datasets library=ACS memtype=(data) nolist;
    modify &source_ds_work&geo_suffix (sortedby=&geo_var);
  quit;

  %File_info( data=Acs.&source_ds_work&geo_suffix, printobs=0 )

%mend Summary_geo;

/** End Macro Definition **/


/** Macro Summary_geo_source - Start Definition **/

%macro Summary_geo_source( source_geo );

  %global source_geo_var source_geo_suffix source_geo_wt_file_fmt source_ds source_ds_work source_geo_label;

  %if %upcase( &source_geo ) = BG00 %then %do;
     %let source_geo_var = GeoBg2000;
     %let source_geo_suffix = _bg;
     %let source_geo_wt_file_fmt = $geobw0f.;
     %let source_ds = Acs_sf_&year._bg00;
     %let source_geo_label = Block group;
  %end;
  %else %if %upcase( &source_geo ) = TR00 %then %do;
     %let source_geo_var = Geo2000;
     %let source_geo_suffix = _tr;
     %let source_geo_wt_file_fmt = $geotw0f.;
     %let source_ds = Acs_sf_&year._tr00;
     %let source_geo_label = Census tract;
  %end;
  %else %if %upcase( &source_geo ) = BG10 %then %do;
     %let source_geo_var = GeoBg2010;
     %let source_geo_suffix = _bg;
     %let source_geo_wt_file_fmt = $geobw1f.;
     %let source_ds = Acs_sf_&year._bg10;
     %let source_geo_label = Block group;
  %end;
  %else %if %upcase( &source_geo ) = TR10 %then %do;
     %let source_geo_var = Geo2010;
     %let source_geo_suffix = _tr;
     %let source_geo_wt_file_fmt = $geotw1f.;
     %let source_ds = Acs_sf_&year._tr10;
     %let source_geo_label = Census tract;
  %end;
  %else %do;
    %err_mput( macro=Summary_geo_source, msg=Geograpy &source_geo is not supported. )
    %goto macro_exit;
  %end;
     
  %let source_ds_work = ACS_&year._sum&source_geo_suffix;

  %put _global_;

  ** Create new variables for summarizing **;

  data &source_ds_work;

    set Acs.&source_ds;
    
    ** Unweighted sample counts **;
    
    UnwtdPop_&year = B00001e1;
    UnwtdHsgUnits_&year = B00002e1;

    label
      UnwtdPop_&year = "Unweighted sample population, &year_lbl"
      UnwtdHsgUnits_&year = "Unweighted sample housing units, &year_lbl";

    ** Demographics **;
    
    TotPop_&year = B01003e1;
    
    NumHshlds_&year = B11001e1;

    NumFamilies_&year = B11003e1;

    PopUnder5Years_&year = sum( B01001e3, B01001e27 );
    
    PopUnder18Years_&year = 
      sum( B01001e3, B01001e4, B01001e5, B01001e6, 
           B01001e27, B01001e28, B01001e29, B01001e30 );
    
    Pop65andOverYears_&year = 
      sum( B01001e20, B01001e21, B01001e22, B01001e23, B01001e24, B01001e25, 
           B01001e44, B01001e45, B01001e46, B01001e47, B01001e48, B01001e49 );

    mTotPop_&year = B01003m1;

    mNumHshlds_&year = B11001m1;

    mNumFamilies_&year = B11003m1;

    mPopUnder5Years_&year = %moe_sum( var=B01001m3 B01001m27 );
    
    mPopUnder18Years_&year = 
      %moe_sum( var=B01001m3 B01001m4 B01001m5 B01001m6 
           B01001m27 B01001m28 B01001m29 B01001m30 );
    
    mPop65andOverYears_&year = 
      %moe_sum( var=B01001m20 B01001m21 B01001m22 B01001m23 B01001m24 B01001m25 
           B01001m44 B01001m45 B01001m46 B01001m47 B01001m48 B01001m49 );

    label
      TotPop_&year = "Total population, &year_lbl"
      NumHshlds_&year = "Total HHs, &year_lbl"
      NumFamilies_&year = "Family HHs, &year_lbl"
      PopUnder5Years_&year = "Persons under 5 years old, &year_lbl"
      PopUnder18Years_&year = "Persons under 18 years old, &year_lbl"
      Pop65andOverYears_&year = "Persons 65 years old and over, &year_lbl"
      mTotPop_&year = "Total population, MOE, &year_lbl"
      mNumHshlds_&year = "Total HHs, MOE, &year_lbl"
      mNumFamilies_&year = "Family HHs, MOE, &year_lbl"
      mPopUnder5Years_&year = "Persons under 5 years old, MOE, &year_lbl"
      mPopUnder18Years_&year = "Persons under 18 years old, MOE, &year_lbl"
      mPop65andOverYears_&year = "Persons 65 years old and over, MOE, &year_lbl"
    ;
    
    %if %upcase( &source_geo ) = TR00 or %upcase( &source_geo ) = TR10 %then %do;
    
      ** Foreign born **;

      PopForeignBorn_&year = B05002e13;
      mPopForeignBorn_&year = B05002m13;
      
      label 
        PopForeignBorn_&year = "Foreign born population, &year_lbl"
        mPopForeignBorn_&year = "Foreign born population, MOE, &year_lbl";
    
    %end;
    
    ** Population by race/ethnicity **;
    
    PopWithRace_&year = totpop_&year;
    PopBlackNonHispBridge_&year = B03002e4;
    PopWhiteNonHispBridge_&year = B03002e3;
    PopHisp_&year = B03002e12;
    PopAsianPINonHispBridge_&year = sum( B03002e6, B03002e7 );
    PopNativeAmNonHispBridge_&year = B03002e5;
    PopOtherNonHispBridge_&year = B03002e8;
    PopMultiracialNonHisp_&year = B03002e9;
    
    PopOtherRaceNonHispBridg_&year = PopWithRace_&year - 
      sum( PopBlackNonHispBridge_&year, PopWhiteNonHispBridge_&year, PopHisp_&year, PopAsianPINonHispBridge_&year );

    mPopWithRace_&year = mtotpop_&year;
    mPopBlackNonHispBridge_&year = B03002m4;
    mPopWhiteNonHispBridge_&year = B03002m3;
    mPopHisp_&year = B03002m12;
    mPopAsianPINonHispBridge_&year = %moe_sum( var=B03002m6 B03002m7 );
    mPopNativeAmNonHispBr_&year = B03002m5;
    mPopOtherNonHispBridge_&year = B03002m8;
    mPopMultiracialNonHisp_&year = B03002m9;
    
    mPopOtherRaceNonHispBr_&year = 
      %moe_sum( var=B03002m5 B03002m8 B03002m9 );

    label
      PopWithRace_&year = "Total population for race/ethnicity, &year_lbl"
      PopBlackNonHispBridge_&year = "Non-Hispanic Black/African American population, &year_lbl"
      PopWhiteNonHispBridge_&year = "Non-Hispanic White population, &year_lbl"
      PopAsianPINonHispBridge_&year = "Non-Hispanic Asian, Hawaiian and other Pacific Islander pop., &year_lbl"
      PopHisp_&year = "Hispanic/Latino population, &year_lbl"
      PopNativeAmNonHispBridge_&year = "Non-Hispanic American Indian/Alaska Native population, &year_lbl"
      PopOtherNonHispBridge_&year = "Non-Hispanic other race population, &year_lbl"
      PopMultiracialNonHisp_&year = "Non-Hispanic multiracial population, &year_lbl"
      PopOtherRaceNonHispBridg_&year = "All remaining groups other than black, white, Hispanic, and Asian/PI, &year_lbl"
      mPopWithRace_&year = "Total population for race/ethnicity, MOE, &year_lbl"
      mPopBlackNonHispBridge_&year = "Non-Hispanic Black/African American population, MOE, &year_lbl"
      mPopWhiteNonHispBridge_&year = "Non-Hispanic White population, MOE, &year_lbl"
      mPopAsianPINonHispBridge_&year = "Non-Hispanic Asian, Hawaiian and other Pacific Islander pop., MOE, &year_lbl"
      mPopHisp_&year = "Hispanic/Latino population, MOE, &year_lbl"
      mPopNativeAmNonHispBr_&year = "Non-Hispanic American Indian/Alaska Native population, MOE, &year_lbl"
      mPopOtherNonHispBridge_&year = "Non-Hispanic other race population, MOE, &year_lbl"
      mPopMultiracialNonHisp_&year = "Non-Hispanic multiracial population, MOE, &year_lbl"
      mPopOtherRaceNonHispBr_&year = "All remaining groups other than black, white, Hispanic, and Asian/PI, MOE, &year_lbl"
    ;
    
    %if %upcase( &source_geo ) = TR00 or %upcase( &source_geo ) = TR10 %then %do;
    
      ** Poverty **;
      
      ChildrenPovertyDefined_&year = 
        sum( B17001e4, B17001e5, B17001e6, B17001e7, B17001e8, B17001e9, 
             B17001e18, B17001e19, B17001e20, B17001e21, B17001e22, B17001e23,
             B17001e33, B17001e34, B17001e35, B17001e36, B17001e37, B17001e38, 
             B17001e47, B17001e48, B17001e49, B17001e50, B17001e51, B17001e52
            );

      ElderlyPovertyDefined_&year = 
        sum( B17001e15, B17001e16, B17001e29, B17001e30,
             B17001e44, B17001e45, B17001e58, B17001e59
        );

      PersonsPovertyDefined_&year = B17001e1;
      
      PopPoorChildren_&year = 
        sum( B17001e4, B17001e5, B17001e6, B17001e7, B17001e8, B17001e9, 
             B17001e18, B17001e19, B17001e20, B17001e21, B17001e22, B17001e23 );

      PopPoorElderly_&year = 
        sum( B17001e15, B17001e16, B17001e29, B17001e30 );

      PopPoorPersons_&year = B17001e2;
      
      mChildrenPovertyDefined_&year = 
        %moe_sum( var=B17001m4 B17001m5 B17001m6 B17001m7 B17001m8 B17001m9 
             B17001m18 B17001m19 B17001m20 B17001m21 B17001m22 B17001m23
             B17001m33 B17001m34 B17001m35 B17001m36 B17001m37 B17001m38 
             B17001m47 B17001m48 B17001m49 B17001m50 B17001m51 B17001m52
            );

      mElderlyPovertyDefined_&year = 
        %moe_sum( var=B17001m15 B17001m16 B17001m29 B17001m30
             B17001m44 B17001m45 B17001m58 B17001m59
        );

      mPersonsPovertyDefined_&year = B17001m1;
      
      mPopPoorChildren_&year = 
        %moe_sum( var=B17001m4 B17001m5 B17001m6 B17001m7 B17001m8 B17001m9 
             B17001m18 B17001m19 B17001m20 B17001m21 B17001m22 B17001m23 );

      mPopPoorElderly_&year = 
        %moe_sum( var=B17001m15 B17001m16 B17001m29 B17001m30 );

      mPopPoorPersons_&year = B17001m2;
      
      label
        PopPoorPersons_&year = "Persons below the poverty level last year, &year_lbl"
        PersonsPovertyDefined_&year = "Persons with poverty status determined, &year_lbl"
        PopPoorChildren_&year = "Children under 18 years old below the poverty level last year, &year_lbl"
        ChildrenPovertyDefined_&year = "Children under 18 years old with poverty status determined, &year_lbl"
        PopPoorElderly_&year = "Persons 65 years old and over below the poverty level last year, &year_lbl"
        ElderlyPovertyDefined_&year = "Persons 65 years old and over with poverty status determined, &year_lbl"
        mPopPoorPersons_&year = "Persons below the poverty level last year, MOE, &year_lbl"
        mPersonsPovertyDefined_&year = "Persons with poverty status determined, MOE, &year_lbl"
        mPopPoorChildren_&year = "Children under 18 years old below the poverty level last year, MOE, &year_lbl"
        mChildrenPovertyDefined_&year = "Children under 18 years old with poverty status determined, MOE, &year_lbl"
        mPopPoorElderly_&year = "Persons 65 years old and over below the poverty level last year, MOE, &year_lbl"
        mElderlyPovertyDefined_&year = "Persons 65 years old and over with poverty status determined, MOE, &year_lbl"
      ;

    %end;
    
    %if %upcase( &source_geo ) = TR00 or %upcase( &source_geo ) = TR10 %then %do;
    
      ** Employment **;
      
      PopCivilianEmployed_&year = 
        sum( B23001e7, B23001e14, B23001e21, B23001e28, B23001e35, B23001e42, B23001e49, 
             B23001e56, B23001e63, B23001e70, B23001e75, B23001e80, B23001e85,
             B23001e93, B23001e100, B23001e107, B23001e114, B23001e121, B23001e128, 
             B23001e135, B23001e142, B23001e149, B23001e156, B23001e161, B23001e166, B23001e171 );

      PopUnemployed_&year = 
        sum( B23001e8, B23001e15, B23001e22, B23001e29, B23001e36, B23001e43, B23001e50, 
             B23001e57, B23001e64, B23001e71, B23001e76, B23001e81, B23001e86, 
             B23001e94, B23001e101, B23001e108, B23001e115, B23001e122, B23001e129, 
             B23001e136, B23001e143, B23001e150, B23001e157, B23001e162, B23001e167, B23001e172 );
      
      PopInCivLaborForce_&year = sum( PopCivilianEmployed_&year, PopUnemployed_&year );
      
      Pop16andOverEmployed_&year = PopCivilianEmployed_&year +
        sum( B23001e5, B23001e12, B23001e19, B23001e26, B23001e33, B23001e40, 
             B23001e47, B23001e54, B23001e61, B23001e68,
             B23001e91, B23001e98, B23001e105, B23001e112, B23001e119, B23001e126, 
             B23001e133, B23001e140, B23001e147, B23001e154 );

      Pop16andOverYears_&year = B23001e1;
      
      mPopCivilianEmployed_&year = 
        %moe_sum( var=B23001m7 B23001m14 B23001m21 B23001m28 B23001m35 B23001m42 B23001m49 
             B23001m56 B23001m63 B23001m70 B23001m75 B23001m80 B23001m85
             B23001m93 B23001m100 B23001m107 B23001m114 B23001m121 B23001m128 
             B23001m135 B23001m142 B23001m149 B23001m156 B23001m161 B23001m166 B23001m171 );

      mPopUnemployed_&year = 
        %moe_sum( var=B23001m8 B23001m15 B23001m22 B23001m29 B23001m36 B23001m43 B23001m50 
             B23001m57 B23001m64 B23001m71 B23001m76 B23001m81 B23001m86 
             B23001m94 B23001m101 B23001m108 B23001m115 B23001m122 B23001m129 
             B23001m136 B23001m143 B23001m150 B23001m157 B23001m162 B23001m167 B23001m172 );
      
      mPopInCivLaborForce_&year = %moe_sum( var=mPopCivilianEmployed_&year mPopUnemployed_&year );
      
      mPop16andOverEmployed_&year =
        %moe_sum( var=mPopCivilianEmployed_&year B23001m5 B23001m12 B23001m19 B23001m26 B23001m33 B23001m40 
             B23001m47 B23001m54 B23001m61 B23001m68
             B23001m91 B23001m98 B23001m105 B23001m112 B23001m119 B23001m126 
             B23001m133 B23001m140 B23001m147 B23001m154 );

      mPop16andOverYears_&year = B23001m1;
      
      label
        PopCivilianEmployed_&year = "Persons 16+ years old in the civilian labor force and employed, &year_lbl"
        PopUnemployed_&year = "Persons 16+ years old in the civilian labor force and unemployed, &year_lbl"
        PopInCivLaborForce_&year = "Persons 16+ years old in the civilian labor force, &year_lbl"
        Pop16andOverEmployed_&year = "Persons 16+ years old who are employed (includes armed forces), &year_lbl"
        Pop16andOverYears_&year = "Persons 16+ years old, &year_lbl"
        mPopCivilianEmployed_&year = "Persons 16+ years old in the civilian labor force and employed, &year_lbl"
        mPopUnemployed_&year = "Persons 16+ years old in the civilian labor force and unemployed, &year_lbl"
        mPopInCivLaborForce_&year = "Persons 16+ years old in the civilian labor force, &year_lbl"
        mPop16andOverEmployed_&year = "Persons 16+ years old who are employed (includes armed forces), &year_lbl"
        mPop16andOverYears_&year = "Persons 16+ years old, &year_lbl"
      ;
      
    %end;
    
    ** Education **;

    Pop25andOverYears_&year = B15002e1;
    
    Pop25andOverWoutHS_&year = 
      sum( B15002e3, B15002e4, B15002e5, B15002e6, B15002e7, B15002e8, B15002e9, B15002e10, 
           B15002e20, B15002e21, B15002e22, B15002e23, B15002e24, B15002e25, B15002e26, B15002e27 );
           
    Pop25andOverWHS_&year = 
      sum( B15002e11, B15002e12, B15002e13, B15002e14, B15002e28, B15002e29, B15002e30, B15002e31 );

    Pop25andOverWCollege_&year = 
      sum( B15002e15, B15002e16, B15002e17, B15002e18, B15002e32, B15002e33, B15002e34, B15002e35 );
    
    mPop25andOverYears_&year = B15002m1;
    
    mPop25andOverWoutHS_&year = 
      %moe_sum( var=B15002m3 B15002m4 B15002m5 B15002m6 B15002m7 B15002m8 B15002m9 B15002m10 
           B15002m20 B15002m21 B15002m22 B15002m23 B15002m24 B15002m25 B15002m26 B15002m27 );
           
    mPop25andOverWHS_&year = 
      %moe_sum( var=B15002m11 B15002m12 B15002m13 B15002m14 B15002m28 B15002m29 B15002m30 B15002m31 );

    mPop25andOverWCollege_&year = 
      %moe_sum( var=B15002m15 B15002m16 B15002m17 B15002m18 B15002m32 B15002m33 B15002m34 B15002m35 );
    
    label
      Pop25andOverWoutHS_&year = "Persons 25 years old and over without high school diploma, &year_lbl"
      Pop25andOverWCollege_&year = "Persons 25+ years old with a bachelors or graduate/prof degree, &year_lbl"
      Pop25andOverYears_&year = "Persons 25 years old and over, &year_lbl"
      Pop25andOverWHS_&year = "Persons 25 years old and over with a high school diploma or GED, &year_lbl"
      mPop25andOverWoutHS_&year = "Persons 25 years old and over without high school diploma, MOE, &year_lbl"
      mPop25andOverWCollege_&year = "Persons 25+ years old with a bachelors or graduate/prof degree, MOE, &year_lbl"
      mPop25andOverYears_&year = "Persons 25 years old and over, MOE, &year_lbl"
      mPop25andOverWHS_&year = "Persons 25 years old and over with a high school diploma or GED, MOE, &year_lbl"
      ;
      
    %if %upcase( &source_geo ) = TR00 or %upcase( &source_geo ) = TR10 %then %do;

      ** Household type **;

      NumFamiliesOwnChildren_&year = 
        sum( B11003e3, B11003e10, B11003e16 ) + 
        sum( B11013e3, B11013e5, B11013e6 );
      
      NumFamiliesOwnChildrenFH_&year = B11003e16 + B11013e5;

      mNumFamiliesOwnChildren_&year = 
        %moe_sum( var=B11003m3 B11003m10 B11003m16 B11013m3 B11013m5 B11013m6 );
      
      mNumFamiliesOwnChildFH_&year = %moe_sum( var=B11003m16 B11013m5 );

      label
        NumFamiliesOwnChildren_&year = "Total families and subfamilies with own children, &year_lbl"
        NumFamiliesOwnChildrenFH_&year = "Female-headed families and subfamilies with own children, &year_lbl"
        mNumFamiliesOwnChildren_&year = "Total families and subfamilies with own children, MOE, &year_lbl"
        mNumFamiliesOwnChildFH_&year = "Female-headed families and subfamilies with own children, MOE, &year_lbl"
      ;
      
    %end;
    
    ** Isolation **;
    
    NumHshldPhone_&year = sum( B25043e3, B25043e12 );
    
    NumHshldCar_&year = 
      sum( B25044e4, B25044e5, B25044e6, B25044e7, B25044e8, 
           B25044e11, B25044e12, B25044e13, B25044e14, B25044e15 );

    mNumHshldPhone_&year = %moe_sum( var=B25043m3 B25043m12 );
    
    mNumHshldCar_&year = 
      %moe_sum( var=B25044m4 B25044m5 B25044m6 B25044m7 B25044m8 
           B25044m11 B25044m12 B25044m13 B25044m14 B25044m15 );

    label
      NumHshldPhone_&year = "Occupied housing units with a telephone, &year_lbl"
      NumHshldCar_&year = "Occupied housing units with at least one vehicle available, &year_lbl"
      mNumHshldPhone_&year = "Occupied housing units with a telephone, MOE, &year_lbl"
      mNumHshldCar_&year = "Occupied housing units with at least one vehicle available, MOE, &year_lbl"
      ;
  
    ** Income **;
    
    AggFamilyIncome_&year = B19127e1;
    
    mAggFamilyIncome_&year = B19127m1;

    label 
      AggFamilyIncome_&year = "Aggregate family income ($ &year_dollar), &year_lbl"
      mAggFamilyIncome_&year = "Aggregate family income ($ &year_dollar), MOE, &year_lbl"
      ;
    
    ** Housing **;
    
    NumOccupiedHsgUnits_&year = B25003e1;
    NumOwnerOccupiedHsgUnits_&year = B25003e2;
    NumRenterOccupiedHsgUnit_&year = B25003e3;

    NumVacantHsgUnits_&year = B25004e1;
    NumVacantHsgUnitsForRent_&year = B25004e2;
    NumVacantHsgUnitsForSale_&year = B25004e4;
    
    NumRenterHsgUnits_&year = NumRenterOccupiedHsgUnit_&year + NumVacantHsgUnitsForRent_&year;

    mNumOccupiedHsgUnits_&year = B25003m1;
    mNumOwnerOccupiedHU_&year = B25003m2;
    mNumRenterOccupiedHU_&year = B25003m3;

    mNumVacantHsgUnits_&year = B25004m1;
    mNumVacantHUForRent_&year = B25004m2;
    mNumVacantHUForSale_&year = B25004m4;
    
    mNumRenterHsgUnits_&year = %moe_sum( var=mNumRenterOccupiedHU_&year mNumVacantHUForRent_&year );

    label
      NumOccupiedHsgUnits_&year = "Occupied housing units, &year_lbl"
      NumOwnerOccupiedHsgUnits_&year = "Owner-occupied housing units, &year_lbl"
      NumRenterOccupiedHsgUnit_&year = "Renter-occupied housing units, &year_lbl"
      NumVacantHsgUnits_&year = "Vacant housing units, &year_lbl"
      NumVacantHsgUnitsForRent_&year = "Vacant housing units for rent, &year_lbl"
      NumVacantHsgUnitsForSale_&year = "Vacant housing units for sale, &year_lbl"
      NumRenterHsgUnits_&year = "Total rental housing units, &year_lbl"
      mNumOccupiedHsgUnits_&year = "Occupied housing units, MOE, &year_lbl"
      mNumOwnerOccupiedHU_&year = "Owner-occupied housing units, MOE, &year_lbl"
      mNumRenterOccupiedHU_&year = "Renter-occupied housing units, MOE, &year_lbl"
      mNumVacantHsgUnits_&year = "Vacant housing units, MOE, &year_lbl"
      mNumVacantHUForRent_&year = "Vacant housing units for rent, MOE, &year_lbl"
      mNumVacantHUForSale_&year = "Vacant housing units for sale, MOE, &year_lbl"
      mNumRenterHsgUnits_&year = "Total rental housing units, MOE, &year_lbl"
    ;

  run;

  %Summary_geo( voterpre2012, &source_geo )
  
  proc datasets library=work nolist;
    delete &source_ds_work /memtype=data;
  quit;
  
  %macro_exit:

%mend Summary_geo_source;

/** End Macro Definition **/


**** Create summary files from block group source ****;

%Summary_geo_source( bg10 )


**** Create summary files from census tract source ****;

%Summary_geo_source( tr10 )


