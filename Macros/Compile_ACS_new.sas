/**************************************************************************
 Program:  Compile_ACS_new.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  01/17/24
 Version:  SAS 9.4M4
 
 Description:  Compile ACS data tables.

 Modifications:
  01/17/24 PAT  NEW VERSION: Uses API calls to pull data.
**************************************************************************/

/** Macro Compile_ACS_new - Start Definition **/

%macro Compile_ACS_new( geo=, revisions= );

  %local api_geo_prefix api_in_clause geo_suffix geo_var geo_label geo_length geo_format geo_vformat 
         i v _table_datasets;
  
  %let geo = %upcase( &geo );
  %let state_ab = %upcase (&state_ab );
  
  %if &geo = GEOBG2020 %then %do;
    %** Block group level **;
    %let api_geo_prefix = 150;
    %let geo_suffix = bg20;
    %let geo_var = GeoBg2020;
  %end;
  %else %if &geo = GEO2020 %then %do;
    %** Census tract level **;
    %let api_geo_prefix = tract;
    %let api_in_clause = state:&_state_fips.&in=county:*;
    %let geo_suffix = tr20;
    %let geo_var = Geo2020;
  %end;
  %else %if &geo = GEOBG2010 %then %do;
    %** Block group level **;
    %let api_geo_prefix = 150;
    %let geo_suffix = bg10;
    %let geo_var = GeoBg2010;
  %end;
  %else %if &geo = GEO2010 %then %do;
    %** Census tract level **;
    %let api_geo_prefix = tract;
    %let api_in_clause = state:&_state_fips.&in=county:*;
    %let geo_suffix = tr10;
    %let geo_var = Geo2010;
  %end;
  %else %if &geo = GEOBG2000 %then %do;
    %** Block group level **;
    %let api_geo_prefix = 150;
    %let geo_suffix = bg00;
    %let geo_var = GeoBg2000;
  %end;
  %else %if &geo = GEO2000 %then %do;
    %** Census tract level **;
    %let api_geo_prefix = tract;
    %let api_in_clause = state:&_state_fips.&in=county:*;
    %let geo_suffix = tr00;
    %let geo_var = Geo2000;
  %end;
  %else %if &geo = CITY %then %do;
    %** city level - use only for DC **;
    %let api_geo_prefix = 040;
    %let geo_suffix = city;
    %let geo_var = city;
  %end;
  %else %if &geo = COUNTY %then %do;
    %** county level **;
    %let api_geo_prefix = 050;
    %let geo_suffix = regcnt;
    %let geo_var = RegCounty;
  %end;
  %else %if &geo = PLACE %then %do;
    %** place level **;
    %let api_geo_prefix = 160;
    %let geo_suffix = regpl;
    %let geo_var = RegPlace;
  %end;
  %else %do;
    %err_mput( macro=Compile_ACS_new, msg=Geography &geo not supported. )
    %goto exit_macro;
  %end;

  %let geo_label = %sysfunc( putc( &geo, $geodlbl. ) );
  %let geo_length = %sysfunc( putc( &geo, $geolen. ) );
  %let geo_format = %sysfunc( putc( &geo, $geoafmt. ) );
  %let geo_vformat = %sysfunc( putc( &geo, $geovfmt. ) );

  **** Read tables ****;
  
  %let i = 1;
  %let v = %scan( _table_list, &i, %str( ) );
  %let _table_datasets = ;

  %do %until ( %length( &v ) = 0 );

    %Get_acs_detailed_table_api( table=&v, out=_&v_tract, year=&_last_year, sample=acs5, for=&api_geo_prefix.:*, in=&api_in_clause )
    
    %let _table_datasets = &_table_datasets &v;

    %let i = %eval( &i + 1 );
    %let v = %scan( _table_list, &i, %str( ) );

  %end;


  **** Combine data table & margin of error files ****;

  data _&_out_ds_base._&geo_suffix;

    merge

      %let i = 1;
      %let v = %scan( &_table_datasets, &i, %str( ) );

      %do %until ( %length( &v ) = 0 );

        &v /**** (drop=FILEID FILETYPE STUSAB CHARITER SEQUENCE)   /**** NEW VARIABLES TO DROP? *****/

        %let i = %eval( &i + 1 );
        %let v = %scan( &_table_datasets, &i, %str( ) );

      %end;

      ;
      
    /****  by logrecno;  NO BY? OTHER VARS *******/
    
    ** Create standard geography variable **;

	%if &geo = CITY %then %do;
    length &geo_var $ 1;
  
    &geo_var = "1";
  
    label &geo_var = "&geo_label";
  
    format &geo_var &geo_format;
	%end;


	%if &geo = COUNTY %then %do;
    length &geo_var $ 5;
  
    &geo_var = state || county ;
  
    label &geo_var = "&geo_label";
  
    format &geo_var &geo_format;
	%end;

	%if &geo = PLACE %then %do;
    length &geo_var $ 7;
  
    &geo_var = state || place ;
  
    label &geo_var = "Regional places";
  
    format &geo_var &geo_format;
	%end;


    %else %do;
    length &geo_var $ &geo_length;
  
    &geo_var = substr( left( geoid ), 8 );
  
    label &geo_var = "&geo_label";
  
    format &geo_var &geo_format;
	%end;
    
    ** Check for invalid geo variable values **;
	** RP edited to only check for DC geographies **;

	%if &state_ab = DC %then %do;
    
    if put( &geo_var, &geo_vformat ) = '' then do;
      %err_put( macro=Compile_ACS_new, msg="Invalid geography value: " _n_= geoid= &geo_var= );
    end;

	%end;
    
    ** Recode margin of error = -1 to .N (not available) **;
    
    array moe{*} &table_m_list;
    
    do i = 1 to dim( moe );
    
      if moe{i} = -1 then moe{i} = .n;
      
    end;
    
    keep logrecno sumlevel state county tract blkgrp &geo_var 
         &table_e_list &table_m_list;

  run;

  ** Drop unneeded table cells **;
  
  data &_out_ds_base._&geo_suffix;

    set _&_out_ds_base._&geo_suffix;

    drop &_drop_list 
      %if &geo = GEOBG2000 or &geo = GEOBG2010 or &geo = GEOBG2020 %then %do;
        &_drop_bg_list
      %end;
    ;
      
  run;
  
  ** Finalize data set **;
  
  %Finalize_data_set( 
    /** Finalize data set parameters **/
    data=&_out_ds_base._&geo_suffix,
    out=&_out_ds_base._&geo_suffix,
    outlib=ACS,
    label="ACS SF 5-year tables, &_years_dash, %upcase(&_state_ab.), &geo_label",
    sortby=&geo_var,
    /** Metadata parameters **/
    revisions=%str(&revisions),
    /** File info parameters **/
    printobs=0,
    freqvars=sumlevel,
    stats=n sum mean stddev min max
  )

  ** Cleanup temporary data sets **;
  
  proc datasets library=WORK memtype=(data) nolist;
    delete &_table_datasets;
  quit;
  run; 
  
  
  %exit_macro:
  
%mend Compile_ACS_new;

/** End Macro Definition **/


