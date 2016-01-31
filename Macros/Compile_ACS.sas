/**************************************************************************
 Program:  Compile_ACS.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  01/30/16
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Compile ACS data tables.

 Modifications:
**************************************************************************/

/** Macro Compile_ACS - Start Definition **/

%macro Compile_ACS( geo );

  %local sum_level geo_suffix geo_var geo_label geo_length geo_format geo_vformat 
         i v;
  
  %let geo = %upcase( &geo );
  
  %if &geo = GEOBG2010 %then %do;
    %** Block group level **;
    %let _acs_sf_raw_path = &_acs_sf_raw_base_path\&_state_ab._Tracts_Block_Groups_Only;
    %let sum_level = 150;
    %let geo_suffix = bg10;
    %let geo_var = GeoBg2010;
  %end;
  %else %if &geo = GEO2010 %then %do;
    %** Census tract level **;
    %let _acs_sf_raw_path = &_acs_sf_raw_base_path\&_state_ab._Tracts_Block_Groups_Only;
    %let sum_level = 140;
    %let geo_suffix = tr10;
    %let geo_var = Geo2010;
  %end;
  %else %if &geo = GEOBG2000 %then %do;
    %** Block group level **;
    %let _acs_sf_raw_path = &_acs_sf_raw_base_path\&_state_ab._Tracts_Block_Groups_Only;
    %let sum_level = 150;
    %let geo_suffix = bg00;
    %let geo_var = GeoBg2000;
  %end;
  %else %if &geo = GEO2000 %then %do;
    %** Census tract level **;
    %let _acs_sf_raw_path = &_acs_sf_raw_base_path\&_state_ab._Tracts_Block_Groups_Only;
    %let sum_level = 140;
    %let geo_suffix = tr00;
    %let geo_var = Geo2000;
  %end;
  %else %do;
    %err_mput( macro=Compile_ACS, msg=Geography &geo not supported. )
    %goto exit_macro;
  %end;

  %let geo_label = %sysfunc( putc( &geo, $geodlbl. ) );
  %let geo_length = %sysfunc( putc( &geo, $geolen. ) );
  %let geo_format = %sysfunc( putc( &geo, $geoafmt. ) );
  %let geo_vformat = %sysfunc( putc( &geo, $geovfmt. ) );

  %push_option( msglevel )
  
  options msglevel=n;
  
  x "del /q &rootdir.*.*";

  %include "&_sf_macro_file_path";

  **** Read tables ****;
  
  %Read_seq_list( &_seq_list )

  %put table_file_e_list=&table_file_e_list;
  %put table_file_m_list=&table_file_m_list;


  **** Combine data table & margin of error files ****;

  %let table_e_list = %ListChangeDelim( &_table_list, new_delim=%str(e: ), quiet=y );
  %let table_e_list = %unquote(&table_e_list.e:);
  %put table_e_list=&table_e_list;

  %let table_m_list = %ListChangeDelim( &_table_list, new_delim=%str(m: ), quiet=y );
  %let table_m_list = %unquote(&table_m_list.m:);
  %put table_m_list=&table_m_list;

  %pop_option( msglevel )

  data _&_out_ds_base._&geo_suffix;

    merge
      &_geo_file 
        (keep=logrecno sumlevel state county tract blkgrp geoid
         where=(sumlevel="&sum_level") 
         in=inGeo)

      %let i = 1;
      %let v = %scan( &table_file_e_list, &i, %str( ) );

      %do %until ( &v = );

        &v (drop=FILEID FILETYPE STUSAB CHARITER SEQUENCE)

        %let i = %eval( &i + 1 );
        %let v = %scan( &table_file_e_list, &i, %str( ) );

      %end;

      %let i = 1;
      %let v = %scan( &table_file_m_list, &i, %str( ) );

      %do %until ( &v = );

        &v (drop=FILEID FILETYPE STUSAB CHARITER SEQUENCE)

        %let i = %eval( &i + 1 );
        %let v = %scan( &table_file_m_list, &i, %str( ) );

      %end;
     
      ;
    by logrecno;
    
    if inGeo;
    
    ** Create standard geography variable **;
    
    length &geo_var $ &geo_length;
  
    &geo_var = substr( left( geoid ), 8 );
  
    label &geo_var = "&geo_label";
  
    format &geo_var &geo_format;
    
    ** Check for invalid geo variable values **;
    
    if put( &geo_var, &geo_vformat ) = '' then do;
      %err_put( macro=Compile_ACS, msg="Invalid geography value: " _n_= geoid= &geo_var= )
    end;
    
    ** Recode margin of error = -1 to .N (not available) **;
    
    array moe{*} &table_m_list;
    
    do i = 1 to dim( moe );
    
      if moe{i} = -1 then moe{i} = .n;
      
    end;
    
    keep logrecno sumlevel state county tract blkgrp &geo_var 
         &table_e_list &table_m_list;

  run;

  ** Drop unneeded table cells **;
  
  data &_out_lib..&_out_ds_base._&geo_suffix (label="ACS SF 5-year tables, &_years_dash, %upcase(&_state_ab.), &geo_label");

    set _&_out_ds_base._&geo_suffix;

    drop &_drop_list 
      %if &geo = GEOBG2000 or &geo = GEOBG2010 %then %do;
        &_drop_bg_list
      %end;
    ;
      
  run;
  
  proc sort data=&_out_lib..&_out_ds_base._&geo_suffix;
    by &geo_var;
  run;

  %File_info( data=&_out_lib..&_out_ds_base._&geo_suffix, printobs=0, freqvars=sumlevel )
  
  %exit_macro:
  
%mend Compile_ACS;

/** End Macro Definition **/


