/**************************************************************************
 Program:  Acs_sf.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  01/29/16
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Autocall macro to read ACS SF data.

 Modifications:
**************************************************************************/

/** Macro Acs_sf - Start Definition **/

%macro Acs_sf( 
  state_ab = ,
  years = ,
  geo_file = ,
  max_seqno = ,
  census_geo_year = 2010,
  seq_list = 
    0001 0002 0003 0004 0005 0009 0013 0018 0034 0036 0037 0043 0044 0047 0056 0057 0058
    0061 0062 0063 0064 0072 0075 0078 0079 0081 0099 0101 0102 0103 0104 0105 0106 0107  
  ,
  table_list = 
    B00001 B00002 B01001 B01002 B01003 B02001 B03002 B05002 B06002 B07012 B09001
    B11001 B11003 B11004 B11005 B11007 B11010 B11013 B11016 B15002
    B15003 B16004 B17001 B18101 B18102 B18103 B18104 B18105 B18106
    B19001 B19013 B19050 B19056 B19057 B19058 B19059 B19127 B19131 B19113
    B23001 B23025 B25003 B25004 B25007 B25010 B25043 B25044 B25061
    B25062 B25063 B25065 B25070 B25014 B25024 B25041 B25049 B25052 
    B25070 B25091 B25105 B25088 B25064 C24010 C24030
  ,
  drop_list =
    B01001Ee: B01002Ee: B01002Em: B11001Ee: B19001Ee: B25003Ee: C24010Ee:
    B01001Em: B11001Em: B19001Em: B19013Ee: B19013Em: B25003Em: B25014Ee: B25014Em: C24010Em:
  ,
  drop_bg_list = 
    B00001m: B00002m: B05002e: B05002m: B07012e: B07012m: B11010e: B11010m: B11013e: B11013m: 
    B17001e: B17001m: B18101e: B18101m: B18101Ee: B18101Em: B18102e: B18102m: B18103e: B18103m: 
    B18104e: B18104m: B18105e: B18105m: B18106e: B18106m: B19058e: B19058m: B19131e: B19131m: 
    B23001e: B23001m: B25052m:  
);

  %** Global macro parameters **;

  %global _acs_sf_raw_path _state_fips _state_ab 
          _years _geo_file _census_geo_year _max_seqno _years_dash rootdir
          _seq_list _table_list _drop_list _drop_bg_list;

  %global table_file_e_list table_file_m_list;

  %** Basic ACS file parameters **;

  %let _state_ab   = %lowcase(&state_ab);           /** State abbreviation **/
  %let _state_fips = %sysfunc(stfips(&_state_ab));           /** State FIPS code **/
  %let _years      = &years;      /** Year range: xxxx_yy **/
  %let _geo_file   = &geo_file;       /** Name of geography file. Do NOT include filename extension (.txt/.csv). **/
  %let _census_geo_year = &census_geo_year;    /** Year for census block group/tract defs. Should be 2010 for 2011 and later releases. **/
  %let _max_seqno = &max_seqno;           /** Maximum number of sequence files **/

  %** File sequence numbers to read **;

  %let _seq_list = &seq_list;

  %** Tables to read **;

  %let _table_list = &table_list;
  
  %** Variables to drop from final block group and tract files **;

  %let _drop_list = &drop_list;

  %** Additional variables to drop from block group file **;

  %let _drop_bg_list = &drop_bg_list;

  %let rootdir = &_dcdata_path\ACS\Prog\SF_&_years.\Code\;
  %let _years_dash = %sysfunc( tranwrd( &_years, '_', '-' ) );

  %put _user_;

  libname stubs "&_dcdata_path\ACS\Raw\SF_&_years.";

  /** Macro Read_seq - Start Definition **/

  %macro Read_seq( seqno );

    %include "&_dcdata_path\ACS\Prog\SF_&_years.\Code\e&_state_ab._&seqno..sas";
    %include "&_dcdata_path\ACS\Prog\SF_&_years.\Code\m&_state_ab._&seqno..sas";

    %let table_file_e_list = &table_file_e_list SFe&seqno.&_state_ab.;
    %let table_file_m_list = &table_file_m_list SFm&seqno.&_state_ab.;
   
    /***%File_info( data=SFe&seqno.dc, printobs=0 )***/
    
    /***%File_info( data=SFm&seqno.dc, printobs=0 )***/

  %mend Read_seq;

  /** End Macro Definition **/


  /** Macro Read_seq_list - Start Definition **/

  %macro Read_seq_list( seq_list );

    %local i v;

    %let table_file_e_list = ;
    %let table_file_m_list = ;

    %let i = 1;
    %let v = %scan( &seq_list, &i, %str( ) );
    
    %do %until ( &v = );

      %Read_seq( &v )

      %let i = %eval( &i + 1 );
      %let v = %scan( &seq_list, &i, %str( ) );

    %end;

  %mend Read_seq_list;

  /** End Macro Definition **/



  /** Macro Compile_ACS - Start Definition **/

  %macro Compile_ACS( geo );

    %local sum_level geo_suffix geo_var geo_label geo_length geo_format geo_vformat 
           i v;
    
    %let geo = %upcase( &geo );
    
    %if &geo = GEOBG2010 %then %do;
      %** Block group level **;
      %let _acs_sf_raw_path = &_dcdata_path\ACS\Raw\SF_&_years.\&_state_ab._Tracts_Block_Groups_Only;
      %let sum_level = 150;
      %let geo_suffix = bg10;
      %let geo_var = GeoBg2010;
    %end;
    %else %if &geo = GEO2010 %then %do;
      %** Census tract level **;
      %let _acs_sf_raw_path = &_dcdata_path\ACS\Raw\SF_&_years.\&_state_ab._Tracts_Block_Groups_Only;
      %let sum_level = 140;
      %let geo_suffix = tr10;
      %let geo_var = Geo2010;
    %end;
    %else %if &geo = GEOBG2000 %then %do;
      %** Block group level **;
      %let _acs_sf_raw_path = &_dcdata_path\ACS\Raw\SF_&_years.\&_state_ab._Tracts_Block_Groups_Only;
      %let sum_level = 150;
      %let geo_suffix = bg00;
      %let geo_var = GeoBg2000;
    %end;
    %else %if &geo = GEO2000 %then %do;
      %** Census tract level **;
      %let _acs_sf_raw_path = &_dcdata_path\ACS\Raw\SF_&_years.\&_state_ab._Tracts_Block_Groups_Only;
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

    options msglevel=n;

    %include "&_dcdata_path\ACS\Prog\SF_&_years.\SF_All_Macro.sas";

    ** Geo file **;

    /***%File_info( data=g20095dc, printobs=0, stats= )***/

    /***
    proc print data=g20095dc noobs;
      id logrecno;
      var sumlevel state county cousub place tract blkgrp name;
      format name $50.;
      title2 "File = g20095dc";
    run;
    title2;
    ****/

    /*******
    filename fexport "&_dcdata_path\ACS\Raw\SF_&_years.\g20095dc.csv" lrecl=1000;

    proc export data=g20095dc
        outfile=fexport
        dbms=csv replace;

    run;

    filename fexport clear;
    ******/


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

    options msglevel=i;

    data Acs_sf_&_years._&geo_suffix;

      merge
        &_geo_file.&_state_ab 
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
    
    data ACS_r.Acs_sf_&_years._&geo_suffix (label="ACS SF 5-year tables, &_years_dash, %upcase(&_state_ab.), &geo_label");

      set Acs_sf_&_years._&geo_suffix;

      drop &_drop_list 
        %if &geo = GEOBG2000 or &geo = GEOBG2010 %then %do;
          &_drop_bg_list
        %end;
      ;
        
    run;
    
    proc sort data=ACS_r.Acs_sf_&_years._&geo_suffix;
      by &geo_var;
    run;

    %File_info( data=ACS_r.Acs_sf_&_years._&geo_suffix, printobs=0, freqvars=sumlevel )
    
    %exit_macro:
    
  %mend Compile_ACS;

  /** End Macro Definition **/


  **** Compile block group and tract files ****;

  %Compile_ACS( geobg2010 )

  %Compile_ACS( geo2010 )



%mend Acs_sf;

/** End Macro Definition **/

