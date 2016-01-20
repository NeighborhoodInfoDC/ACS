/**************************************************************************
 Program:  Acs_sf_2005_09_all.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  12/16/10
 Version:  SAS 9.1
 Environment:  Windows
 
 Description:  Read selected tables for ACS Summary File, 2005-09.
 
 CREATE BLOCK GROUP LEVEL AND TRACT LEVEL FILES.
 
 Table	Seq	Title
 ------	----	-----
 B00001	0009	UNWEIGHTED SAMPLE COUNT OF THE POPULATION
 B00002	0009	UNWEIGHTED SAMPLE HOUSING UNITS
 B01001	0010	SEX BY AGE
 B01003	0011	TOTAL POPULATION
 B03002	0013	HISPANIC OR LATINO ORIGIN BY RACE
 B05002	0017	PLACE OF BIRTH BY CITIZENSHIP STATUS
 B17001	0044	POVERTY STATUS IN THE PAST 12 MONTHS BY SEX BY AGE
 B23001	0069	SEX BY AGE BY EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER
 B15002	0040	SEX BY EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER
 B11001	0033	HOUSEHOLD TYPE (INCLUDING LIVING ALONE)
 B11003	0034	FAMILY TYPE BY PRESENCE AND AGE OF OWN CHILDREN UNDER 18 YEARS 
 B11004	0034	FAMILY TYPE BY PRESENCE AND AGE OF RELATED CHILDREN UNDER 18 YEARS
 B11013	0033	SUBFAMILY TYPE BY PRESENCE OF OWN CHILDREN UNDER 18 YEARS
 B25043	0098	TENURE BY TELEPHONE SERVICE AVAILABLE BY AGE OF HOUSEHOLDER
 B25044	0098	TENURE BY VEHICLES AVAILABLE
 B19127	0058	AGGREGATE FAMILY INCOME IN THE PAST 12 MONTHS (IN 2009 INFLATION-ADJUSTED DOLLARS)
 B19131	0059	FAMILY TYPE BY PRESENCE OF OWN CHILDREN UNDER 18 YEARS BY FAMILY INCOME IN THE PAST 12 MONTHS (IN 2009 INFLATION-ADJUSTED DOLLARS)
 B25003	0096	TENURE
 B25004	0096	VACANCY STATUS

 Modifications:
**************************************************************************/

%include "K:\Metro\PTatian\DCData\SAS\Inc\Stdhead.sas";

** Define libraries **;
%DCData_lib( ACS )

libname stubs "&_dcdata_path\ACS\Raw\SF_2005_09";

%global table_file_e_list;

/** Macro Read_seq - Start Definition **/

%macro Read_seq( seqno );

  %include "&_dcdata_path\ACS\Raw\SF_2005_09\Code\edc_&seqno..sas";
  
  /***%File_info( data=SFe&seqno.dc, printobs=0 )***/
  
  %let table_file_e_list = &table_file_e_list SFe&seqno.dc;

  /***
  %include "&_dcdata_path\ACS\Raw\SF_2005_09\Code\mdc_&seqno..sas";
  %File_info( data=SFm&seqno.dc, printobs=0 )
  ***/

%mend Read_seq;

/** End Macro Definition **/


/** Macro Read_seq_list - Start Definition **/

%macro Read_seq_list( seq_list );

  %let table_file_e_list = ;

  %let i = 1;
  %let v = %scan( &seq_list, &i, %str( ) );
  
  %do %until ( &v = );

    %Read_seq( &v )

    %let i = %eval( &i + 1 );
    %let v = %scan( &seq_list, &i, %str( ) );

  %end;

%mend Read_seq_list;

/** End Macro Definition **/



/** Macro Compile_ACS_2005_09 - Start Definition **/

%macro Compile_ACS_2005_09( geo );
  
  %global _acs_sf_raw_path _state_fips _merge_5_6 rootdir;

  %let _state_fips = 11;
  %let _merge_5_6 = Sequence_Number_and_Table_Number;
  %let rootdir = &_dcdata_path\ACS\Raw\SF_2005_09\Code\;
  
  %let geo = %upcase( &geo );
  
  %if &geo = GEOBG2000 %then %do;
    %** Block group level **;
    %let _acs_sf_raw_path = &_dcdata_path\ACS\Raw\SF_2005_09\DistrictofColumbia_Tracts_Block_Groups_Only;
    %let sum_level = 150;
    %let geo_suffix = bg00;
    %let geo_var = GeoBg2000;
    %let geo_label = %sysfunc( putc( &geo, $geodlbl. ) );
  %end;
  %else %if &geo = GEO2000 %then %do;
    %** Census tract level **;
    %let _acs_sf_raw_path = &_dcdata_path\ACS\Raw\SF_2005_09\DistrictofColumbia_Tracts_Block_Groups_Only;
    %let sum_level = 140;
    %let geo_suffix = tr00;
    %let geo_var = Geo2000;
    %let geo_label = %sysfunc( putc( &geo, $geodlbl. ) );
  %end;
  %else %do;
    %err_mput( macro=Compile_ACS_2005_09, msg=Geography &geo not supported. )
    %goto exit_macro;
  %end;

  %let seq_list = 0009 0010 0011 0013 0017 0033 0034 0040 0044 0058 0059 0069 0096 0098;

  %let table_list = B00001 B00002 B01001 B01003 B03002 B05002 B17001 B23001 B15002 B11001
                    B11003 B11004 B11013 B25043 B25044 B19127 B19131 B25003 B25004;

  %let drop_list = B01001Ee: B11001Ee: B25003Ee: ;

  /*** TEST ***********************

  %let seq_list = 0009 0010;

  %let table_list = B00001 B00002 B01001;

  *********************************/

  options msglevel=n;

  %include "&_dcdata_path\ACS\Prog\SF_2005_09\SF_All_Macro.sas";

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
  filename fexport "&_dcdata_path\ACS\Raw\SF_2005_09\g20095dc.csv" lrecl=1000;

  proc export data=g20095dc
      outfile=fexport
      dbms=csv replace;

  run;

  filename fexport clear;
  ******/


  **** Read tables ****;
  
  %Read_seq_list( &seq_list )

  %put table_file_e_list=&table_file_e_list;


  **** Combine files for block groups ****;

  %let table_e_list = %ListChangeDelim( &table_list, new_delim=%str(e: ), quiet=y );
  %let table_e_list = %unquote(&table_e_list.e:);
  %put table_e_list=&table_e_list;

  options msglevel=i;

  data Acs_sf_2005_09_&geo_suffix;

    merge
      g20095dc 
        (keep=logrecno sumlevel state county tract blkgrp geoid
         where=(sumlevel="&sum_level") 
         in=inGeo)
      &table_file_e_list;
    by logrecno;
    
    if inGeo;
    
    %Block00_to_&geo_suffix( invar=substr( geoid, 8 ) )
    
    keep logrecno sumlevel state county tract blkgrp &geo_var 
         &table_e_list;

  run;

  ** Drop unneeded table cells **;

  data Acs.Acs_sf_2005_09_&geo_suffix (label="ACS SF 5-year tables, 2005-09, DC, &geo_label");

    set Acs_sf_2005_09_&geo_suffix;

    drop &drop_list ;
      
  run;
  
  proc sort data=Acs.Acs_sf_2005_09_&geo_suffix;
    by &geo_var;

  %File_info( data=Acs.Acs_sf_2005_09_&geo_suffix, printobs=0, freqvars=sumlevel )
  
  %exit_macro:
  
%mend Compile_ACS_2005_09;

/** End Macro Definition **/


**** Compile block group and tract files ****;

%Compile_ACS_2005_09( geobg2000 )

%Compile_ACS_2005_09( geo2000 )

