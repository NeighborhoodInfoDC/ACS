/**************************************************************************
 Program:  Acs_sf_2008_12_all.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   M. Woluchem
 Created:  01/27/14
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Read selected tables for ACS Summary File, 2008-12.
 
 CREATE BLOCK GROUP LEVEL AND TRACT LEVEL FILES.
 
 Table	Seq	Title
 ------	----	-----
 B00001	0001	UNWEIGHTED SAMPLE COUNT OF THE POPULATION
 B00002	0001	UNWEIGHTED SAMPLE HOUSING UNITS
 B01001	0002	SEX BY AGE
 B01003	0003	TOTAL POPULATION
 B03002	0005	HISPANIC OR LATINO ORIGIN BY RACE
 B05002	0009	PLACE OF BIRTH BY CITIZENSHIP STATUS
 B09001    0034 POPULATION UNDER 18 BY AGE
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
 
 B16004 0044	AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER
 C24030	0081	SEX BY INDUSTRY FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER
 C24010	0079	SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER
 B19050	0062	AGGREGATE HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY AGE OF HOUSEHOLDER
 B19001	0058	HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS)
 B25063	0105	GROSS RENT
 B25065	0105	AGGREGATE GROSS RENT (DOLLARS)
 B25061	0105	RENT ASKED
 B25062	0105    AGGREGATE RENT ASKED (DOLLARS)
 B25070	0105	GROSS RENT AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS

 B01002 0003	MEDIAN AGE BY SEX
 B02001 0004	RACE
 B06002 0013	MEDIAN AGE BY PLACE OF BIRTH IN THE UNITED STATES
 B07012 0018	GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY POVERTY STATUS IN THE PAST 12 MONTHS FOR CURRENT RESIDENCE IN THE UNITED STATES
 B11004 0037	FAMILY TYPE BY PRESENCE AND AGE OF RELATED CHILDREN UNDER 18 YEARS
 B11005 0037	HOUSEHOLDS BY PRESENCE OF PEOPLE UNDER 18 YEARS BY HOUSEHOLD TYPE
 B11007	0037	HOUSEHOLDS BY PRESENCE OF PEOPLE 65 YEARS AND OVER, HOUSEHOLD SIZE AND HOUSEHOLD TYPE
 B11010 0037	NONFAMILY HOUSEHOLDS BY SEX OF HOUSEHOLDER BY LIVING ALONE BY AGE OF HOUSEHOLDER
 B11016 0037	HOUSEHOLD TYPE BY HOUSEHOLD SIZE
 B15003 0043	EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER
 B18101 0056	SEX BY AGE BY DISABILITY STATUS
 B18102 0056	SEX BY AGE BY HEARING DIFFICULTY
 B18103 0056	SEX BY AGE BY VISION DIFFICULTY
 B18104 0056	SEX BY AGE BY COGNITIVE DIFFICULTY
 B18105 0057	SEX BY AGE BY AMBULATORY DIFFICULTY
 B18106 0057	SEX BY AGE BY SELF-CARE DIFFICULTY
 B19013 0058	MEDIAN HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS)
 B19056 0062	SUPPLEMENTAL SECURITY INCOME (SSI) IN THE PAST 12 MONTHS FOR HOUSEHOLDS
 B19057	0062	PUBLIC ASSISTANCE INCOME IN THE PAST 12 MONTHS FOR HOUSEHOLDS
 B19058 0062	PUBLIC ASSISTANCE INCOME OR FOOD STAMPS/SNAP IN THE PAST 12 MONTHS FOR HOUSEHOLDS
 B19059 0062	RETIREMENT INCOME IN THE PAST 12 MONTHS FOR HOUSEHOLDS
 B19113  0061 MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS)
 B23025 0078	EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER
 B25007 0102	TENURE BY AGE OF HOUSEHOLDER
 B25010 0102	AVERAGE HOUSEHOLD SIZE OF OCCUPIED HOUSING UNITS BY TENURE
 B25014	0102	TENURE BY OCCUPANTS PER ROOM
 B25024 0103	UNITS IN STRUCTURE
 B25041 0104	BEDROOMS
 B25049	0104	TENURE BY PLUMBING FACILITIES
 B25052	0104	KITCHEN FACILITIES FOR OCCUPIED HOUSING UNITS
 B25064	0105	MEDIAN GROSS RENT (DOLLARS)
 B25070	0105	GROSS RENT AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS
 B25088	0106	MEDIAN SELECTED MONTHLY OWNER COSTS (DOLLARS) BY MORTGAGE STATUS
 B25091	0106	MORTGAGE STATUS BY SELECTED MONTHLY OWNER COSTS AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS
 B25105 0107	MEDIAN MONTHLY HOUSING COSTS (DOLLARS)




 Modifications:
  11/5/2014 SXZ Added Table B19113 B09001
  03/20/13 PAT Added tables B16004 C24030 C24010 B19050 B19001 B25063 
               B25065 B25061 B25062 B25070.
  01/21/14 PAT Updated for new SAS1 server (not tested).
  01/28/14 MSW Added tables B01002 B02001 B07012 B11005 B11007 B11010 B11016 B15003 B18101 B18102 
			   B18103 B18104 B18105 B18106 B19013 B19056 B19057 B19058 B19059 B23025 B25007 B25010
  02/4/14  MSW Added tables B25014 B25049 B25052 B25070 B25091
  02/6/14  MSW Added tables B11004 B25105 B25088 B25064 B06002
  02/28/14 PAT Corrected _years_dash value. 
  03/04/14 MSW Added sequence numbers 0063, 0064 and 0075. Added  B01002Ee/m, B25014Ee/m, and B19013Ee/m to drop list. 
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
%let _years      = 2008_12;      /** Year range: xxxx_yy **/
%let _geo_file   = g20125;       /** Name of geography file. Do NOT include filename extension (.txt/.csv). **/
%let _census_geo_year = 2010;    /** Year for census block group/tract defs. Should be 2010 for 2011 and later releases. **/
%let _max_seqno = 120;           /** Maximum number of sequence files **/

%** File sequence numbers to read **;

%let _seq_list = 0001 0002 0003 0004 0005 0009 0013 0018 0034 0036 0037 0043 0044 0047 0056 0057 0058
                 0061 0062 0063 0064 0072 0075 0078 0079 0081 0099 0101 0102 0103 0104 0105 0106 0107;

%** Tables to read **;

%let _table_list = B00001 B00002 B01001 B01002 B01003 B02001 B03002 B05002 B06002 B07012 B09001
				   B11001 B11003 B11004 B11005 B11007 B11010 B11013 B11016 B15002
				   B15003 B16004 B17001 B18101 B18102 B18103 B18104 B18105 B18106
				   B19001 B19013 B19050 B19056 B19057 B19058 B19059 B19127 B19131 B19113
				   B23001 B23025 B25003 B25004 B25007 B25010 B25043 B25044 B25061
				   B25062 B25063 B25065 B25070 B25014 B25024 B25041 B25049 B25052 
				   B25070 B25091 B25105 B25088 B25064 C24010 C24030;

%** Variables to drop from final block group and tract files **;

%let _drop_list = B01001Ee: B01002Ee: B01002Em: B11001Ee: B19001Ee: B25003Ee: C24010Ee:
                 B01001Em: B11001Em: B19001Em: B19013Ee: B19013Em: B25003Em: B25014Ee: B25014Em: C24010Em: ;

%** Additional variables to drop from block group file **;

%let _drop_bg_list = B00001m: B00002m: B05002e: B05002m: B07012e: B07012m: B11010e: B11010m: B11013e: B11013m: 
					 B17001e: B17001m: B18101e: B18101m: B18101Ee: B18101Em: B18102e: B18102m: B18103e: B18103m: 
					 B18104e: B18104m: B18105e: B18105m: B18106e: B18106m: B19058e: B19058m: B19131e: B19131m: 
					 B23001e: B23001m: B25052m:;

/*** TEST ***********************

%let _seq_list = 0001 0002;

%let _table_list = B00001 B00002 B01001;

*********************************/

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

