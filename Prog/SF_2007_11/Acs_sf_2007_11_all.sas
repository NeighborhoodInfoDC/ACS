/**************************************************************************
 Program:  Acs_sf_2007_11_all.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  01/23/13
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Read selected tables for ACS Summary File, 2007-11.
 
 CREATE BLOCK GROUP LEVEL AND TRACT LEVEL FILES.
 
 Table	Seq	Title
 ------	----	-----
 B00001	0001	UNWEIGHTED SAMPLE COUNT OF THE POPULATION
 B00002	0001	UNWEIGHTED SAMPLE HOUSING UNITS
 B01001	0002	SEX BY AGE
 B01003	0003	TOTAL POPULATION
 B03002	0005	HISPANIC OR LATINO ORIGIN BY RACE
 B05002	0009	PLACE OF BIRTH BY CITIZENSHIP STATUS
 B11001	0036	HOUSEHOLD TYPE (INCLUDING LIVING ALONE)
 B11003	0036	FAMILY TYPE BY PRESENCE AND AGE OF OWN CHILDREN UNDER 18 YEARS 
 B11004	0037	FAMILY TYPE BY PRESENCE AND AGE OF RELATED CHILDREN UNDER 18 YEARS
 B11013	0037	SUBFAMILY TYPE BY PRESENCE OF OWN CHILDREN UNDER 18 YEARS
 B15002	0043	SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER
 B17001	0047	POVERTY STATUS IN THE PAST 12 MONTHS BY SEX BY AGE
 B19127	0061	AGGREGATE FAMILY INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS)
 B19131	0062	FAMILY TYPE BY PRESENCE OF OWN CHILDREN UNDER 18 YEARS BY FAMILY INCOME IN THE PAST 12 MONTHS (IN 2009 INFLATION-ADJUSTED DOLLARS)
 B23001	0072	SEX BY AGE BY EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER
 B25003	0099	TENURE
 B25004	0099	VACANCY STATUS
 B25043	0101	TENURE BY TELEPHONE SERVICE AVAILABLE BY AGE OF HOUSEHOLDER
 B25044	0101	TENURE BY VEHICLES AVAILABLE
 
 B16004     0044	AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER
 C24030	0078	SEX BY INDUSTRY FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER
 C24010	0076	SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER
 B19050	0060	AGGREGATE HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY AGE OF HOUSEHOLDER
 B19001	0056	HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS)
 B25063	0102	GROSS RENT
 B25065	0102	AGGREGATE GROSS RENT (DOLLARS)
 B25061	0102	RENT ASKED
 B25062	0102  AGGREGATE RENT ASKED (DOLLARS)
 B25070	0102	GROSS RENT AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS

 Modifications:
  03/20/13 PAT Added tables B16004 C24030 C24010 B19050 B19001 B25063 
               B25065 B25061 B25062 B25070.
  01/21/14 PAT Updated for new SAS1 server (not tested).
**************************************************************************/

%include "L:\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )

options mprint nosymbolgen nomlogic;

%** Global macro parameters **;

%global _acs_sf_raw_path _state_fips _state_ab 
        _years _geo_file _census_geo_year _max_seqno _years_dash rootdir
        _seq_list _table_list _drop_list _drop_bg_list;

%global table_file_e_list table_file_m_list;

%** Basic ACS file parameters **;

%let _state_fips = 11;           /** State FIPS code **/
%let _state_ab   = dc;           /** State abbreviation **/
%let _years      = 2007_11;      /** Year range: xxxx_yy **/
%let _geo_file   = g20115;       /** Name of geography file. Do NOT include filename extension (.txt/.csv). **/
%let _census_geo_year = 2010;    /** Year for census block group/tract defs. Should be 2010 for 2011 and later releases. **/
%let _max_seqno = 113;           /** Maximum number of sequence files **/

%** File sequence numbers to read **;

%let _seq_list = 0001 0002 0003 0005 0009 0036 0037 0043 0044 0047 0056 0060 
                 0061 0062 0072 0076 0078 0099 0101 0102;

%** Tables to read **;

%let _table_list = B00001 B00002 B01001 B01003 B03002 B05002 B11001 B11003
                   B11004 B11013 B15002 B16004 B17001 B19001 B19050 B19127
                   B19131 B23001 B25003 B25004 B25043 B25044 B25061 B25062
                   B25063 B25065 B25070 C24010 C24030;

%** Variables to drop from final block group and tract files **;

%let _drop_list = B01001Ee: B11001Ee: B19001Ee: B25003Ee: C24010Ee:
                 B01001Em: B11001Em: B19001Em: B25003Em: C24010Em: ;

%** Additional variables to drop from block group file **;

%let _drop_bg_list = B05002e: B05002m: B11013e: B11013m: B17001e: B17001m: 
                    B19131e: B19131m: B23001e: B23001m: ;

/*** TEST ***********************

%let _seq_list = 0001 0002;

%let _table_list = B00001 B00002 B01001;

*********************************/

%let rootdir = &_dcdata_path\ACS\Prog\SF_&_years.\Code\;
%let _years_dash = %sysfunc( tranwrd( "&_years", '_', '-' ) );

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

