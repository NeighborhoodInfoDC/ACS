/**************************************************************************
 Program:  ACS_summary_geo.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  02/04/16
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Macro to create ACS summary files for a specified
 geography.

 Modifications:
**************************************************************************/

%macro ACS_summary_geo( geo, source_geo );

  %local geo_name geo_wt_file geo_var geo_suffix geo_label count_vars moe_vars
         out_ds;

  %let geo_name = %upcase( &geo );
  %let geo_wt_file = %sysfunc( putc( &geo_name, &source_geo_wt_file_fmt ) );;
  %let geo_var = %sysfunc( putc( &geo_name, $geoval. ) );
  %let geo_suffix = %sysfunc( putc( &geo_name, $geosuf. ) );
  %let geo_label = %sysfunc( putc( &geo_name, $geodlbl. ) );
  
  %let out_ds = ACS_&_years._&state_ab._sum&source_geo_suffix.&geo_suffix;

  %if %upcase( &source_geo ) = BG00 or %upcase( &source_geo ) = BG10 %then %do;
  
    %** Count and MOE variables for block group data **;

    %let count_vars = 
           Unwtd: TotPop: PopUnder: Pop25: Pop65: 
           PopWithRace: PopBlack: PopWhite: PopHisp: PopAsian: PopNative: PopOther: PopMulti: 
           Num: Agg: ;
           
    %let moe_vars =
           mTotPop_&_years. mNumHshlds_&_years. mNumFamilies_&_years.
           mPopUnder5Years_&_years. mPopUnder18Years_&_years. mPop65andOverYears_&_years.
           mPopWithRace_&_years. mPopBlackNonHispBridge_&_years.
           mPopWhiteNonHispBridge_&_years.
           mPopAsianPINonHispBridge_&_years. mPopHisp_&_years.
           mPopNativeAmNonHispBr_&_years.
           mPopOtherNonHispBridge_&_years.
           mPopMultiracialNonHisp_&_years.
           mPopOtherRaceNonHispBr_&_years.
           mPop25andOverWoutHS_&_years. mPop25andOverWCollege_&_years.
           mPop25andOverYears_&_years. mPop25andOverWHS_&_years.
           mNumHshldPhone_&_years.
           mNumHshldCar_&_years. mAggFamilyIncome_&_years.
           mNumOccupiedHsgUnits_&_years.
           mNumOwnerOccupiedHU_&_years.
           mNumRenterOccupiedHU_&_years. mNumVacantHsgUnits_&_years.
           mNumVacantHUForRent_&_years.
           mNumVacantHUForSale_&_years. mNumRenterHsgUnits_&_years.           
           ;
               
  %end;
  %else %do;
  
    %** Count and MOE variables for tract data **;
  
    %let count_vars = 
           Unwtd: TotPop: PopUnder: Pop16: Pop25: Pop65: PopForeignBorn: 
           PopWithRace: PopBlack: PopWhite: PopHisp: PopAsian: PopNative: PopOther: PopMulti: 
           PopPoor: PopInCivLaborForce: PopCivilian: PopUnemployed:
           Persons: Children: ChildPoverty: Elderly: Num: Agg: ;
           
    %let moe_vars =
           mTotPop_&_years. mNumHshlds_&_years. mNumFamilies_&_years.
           mPopUnder5Years_&_years. mPopUnder18Years_&_years. mPop65andOverYears_&_years.
           mPopForeignBorn_&_years.
           mPopWithRace_&_years. mPopBlackNonHispBridge_&_years.
           mPopWhiteNonHispBridge_&_years.
           mPopAsianPINonHispBridge_&_years. mPopHisp_&_years.
           mPopNativeAmNonHispBr_&_years.
           mPopOtherNonHispBridge_&_years.
           mPopMultiracialNonHisp_&_years.
           mPopOtherRaceNonHispBr_&_years. mPopPoorPersons_&_years.
           mPersonsPovertyDefined_&_years. mPopPoorChildren_&_years.
           mChildrenPovertyDefined_&_years. mPopPoorElderly_&_years.
           mChildPovertyUnder5Def_&_years. mPopPoorChildrenUnder5_&_years.
           mElderlyPovertyDefined_&_years. mPopCivilianEmployed_&_years.
           mPopUnemployed_&_years. mPopInCivLaborForce_&_years.
           mPop16andOverEmployed_&_years. mPop16andOverYears_&_years.
           mPop25andOverWoutHS_&_years. mPop25andOverWCollege_&_years.
           mPop25andOverYears_&_years. mPop25andOverWHS_&_years.
           mNumFamiliesOwnChildren_&_years.
           mNumFamiliesOwnChildFH_&_years. mNumHshldPhone_&_years.
           mNumHshldCar_&_years. mAggFamilyIncome_&_years.
           mNumOccupiedHsgUnits_&_years.
           mNumOwnerOccupiedHU_&_years.
           mNumRenterOccupiedHU_&_years. mNumVacantHsgUnits_&_years.
           mNumVacantHUForRent_&_years.
           mNumVacantHUForSale_&_years. mNumRenterHsgUnits_&_years.           
           ;
               
  %end;
  
  %put _local_;
  
  %if ( &geo_name = GEO2000 and %upcase( &source_geo_var ) = GEO2000 ) or 
      ( &geo_name = GEO2010 and %upcase( &source_geo_var ) = GEO2010 ) %then %do;

    ** Census tracts from census tract source (same year): just recopy selected vars **;
    
    data &_out_lib..&out_ds (label="ACS summary, &_years_dash, %upcase(&_state_ab), &source_geo_label source, &geo_label");
    
      set &source_ds_work (keep=&geo_var &count_vars &moe_vars);

    run;

  %end;
  %else %do;
  
    ** Transform data from source geography (&source_geo_var) to target geography (&geo_var) **;
    
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
      out_ds_name=&_out_lib..&out_ds,
      out_ds_label=%str(ACS summary, &_years_dash, %upcase(&_state_ab), &source_geo_label source, &geo_label),
      calc_vars=,
      calc_vars_labels=,
      keep_nonmatch=N,
      show_warnings=10,
      print_diag=Y,
      full_diag=N
    )
    
  %end;  


  ** Add sortedby= to data set descriptor **;

  proc datasets library=&_out_lib memtype=(data) nolist;
    modify &out_ds (sortedby=&geo_var);
  quit;


  %File_info( data=&_out_lib..&out_ds, printobs=0 )

  
  %if %mparam_is_yes( &_finalize ) %then %do;
  
    ** Register metadata **;
    
    %Dc_update_meta_file(
      ds_lib=&_out_lib,
      ds_name=&out_ds,
      creator_process=ACS_&_years._&state_ab._sum_all.sas,
      restrictions=None,
      revisions=%str(&_revisions)
    )

  %end;



%mend ACS_summary_geo;


