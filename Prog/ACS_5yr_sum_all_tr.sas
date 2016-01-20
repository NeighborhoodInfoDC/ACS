/**************************************************************************
 Program:  ACS_5yr_sum_all.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  12/19/10
 Version:  SAS 9.1
 Environment:  Windows
 
 Description:  Create summary file from ACS 5-year data.

 Modifications:
**************************************************************************/

%include "K:\Metro\PTatian\DCData\SAS\Inc\Stdhead.sas";

** Define libraries **;
%DCData_lib( ACS )

data ACS_5yr_sum_tr00;

  set Acs.Acs_sf_2005_09_tr00;
  
  totpop_2005_09 = B01003e1;
  
  numhshlds_2005_09 = B11001e1;

  numfamilies_2005_09 = B11003e1;
  
  popunder18years_2005_09 = 
    sum( B01001e3, B01001e4, B01001e5, B01001e6, 
         B01001e27, B01001e28, B01001e29, B01001e30 );
  
  popforeignborn_2005_09 = B05002e13;
  
  ** Population by race/ethnicity **;
  
  PopWithRace_2005_09 = totpop_2005_09;
  PopBlackNonHispBridge_2005_09 = B03002e4;
  PopWhiteNonHispBridge_2005_09 = B03002e3;
  PopHisp_2005_09 = B03002e12;
  PopAsianPINonHispBridge_2005_09 = sum( B03002e6, B03002e7 );
  PopNativeAmNonHispBridge_2005_09 = B03002e5;
  PopOtherNonHispBridge_2005_09 = B03002e8;
  PopMultiracialNonHisp_2005_09 = B03002e9;
  
  PopOtherRaceNonHispBridge_ = PopWithRace_2005_09 - 
    sum( PopBlackNonHispBridge_2005_09, PopWhiteNonHispBridge_2005_09, PopHisp_2005_09, PopAsianPINonHispBridge_2005_09 );
    
  ** Poverty **;
  
  ChildrenPovertyDefined_2005_09 = 
    sum( B17001e4, B17001e5, B17001e6, B17001e7, B17001e8, B17001e9, 
         B17001e18, B17001e19, B17001e20, B17001e21, B17001e22, B17001e23,
         B17001e33, B17001e34, B17001e35, B17001e36, B17001e37, B17001e38, 
         B17001e47, B17001e48, B17001e49, B17001e50, B17001e51, B17001e52
        );

  ElderlyPovertyDefined_2005_09 = 
    sum( B17001e15, B17001e16, B17001e29, B17001e30,
         B17001e44, B17001e45, B17001e58, B17001e59
    );

  PersonsPovertyDefined_2005_09 = B17001e1;
  
  PopPoorChildren_2005_09 = 
    sum( B17001e4, B17001e5, B17001e6, B17001e7, B17001e8, B17001e9, 
         B17001e18, B17001e19, B17001e20, B17001e21, B17001e22, B17001e23 );

  PopPoorElderly_2005_09 = 
    sum( B17001e15, B17001e16, B17001e29, B17001e30 );

  PopPoorPersons_2005_09 = B17001e2;
  
run;

%let geo = ward2002;

  %let geo_name = %upcase( &geo );
  %put geo_name=&geo_name;

  %let geo_wt_file = %sysfunc( putc( &geo_name, $geotwtf. ) );;
  %put geo_wt_file=&geo_wt_file;
  
  %let geo_var = %sysfunc( putc( &geo_name, $geoval. ) );
  %put geo_var=&geo_var;

  %let geo_suffix = %sysfunc( putc( &geo_name, $geosuf. ) );
  %put geo_suffix=&geo_suffix;

  %let geo_label = %sysfunc( putc( &geo_name, $geodlbl. ) );
  %put geo_label=&geo_label;

%Transform_geo_data(
    dat_ds_name=ACS_5yr_sum_tr00,
    dat_org_geo=Geo2000,
    dat_count_vars=totpop_: numhshlds_: numfamilies_: popunder: pop:,
    dat_prop_vars=,
    wgt_ds_name=General.&geo_wt_file,
    wgt_org_geo=Geo2000,
    wgt_new_geo=&geo_var,
    wgt_id_vars=,
    wgt_wgt_var=popwt,
    out_ds_name=Acs.ACS_5yr_sum&geo_suffix._tr,
    out_ds_label=%str(ACS summary, 5-year, DC, &geo_label),
    calc_vars=,
    calc_vars_labels=,
    keep_nonmatch=N,
    show_warnings=10,
    print_diag=Y,
    full_diag=N
  )

%File_info( data=Acs.ACS_5yr_sum&geo_suffix._tr )

proc compare base=Acs.Acs_5yr_sum&geo_suffix compare=Acs.Acs_5yr_sum&geo_suffix._tr maxprint=(40,32000);
  id &geo_var;
run;
