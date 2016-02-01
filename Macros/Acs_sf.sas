/**************************************************************************
 Program:  Acs_sf.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  01/29/16
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Autocall macro to read ACS SF data and create block group 
 and tract level files for the following summary tabulations.
 Currently supports 5-year data  
 
 Table	Seq	Title
 ------	----	-----
 B00001	0001	UNWEIGHTED SAMPLE COUNT OF THE POPULATION
 B00002	0001	UNWEIGHTED SAMPLE HOUSING UNITS
 B01001	0002	SEX BY AGE
 B01003	0003	TOTAL POPULATION
 B03002	0005	HISPANIC OR LATINO ORIGIN BY RACE
 B05002	0009	PLACE OF BIRTH BY CITIZENSHIP STATUS
 B09001	0034	POPULATION UNDER 18 BY AGE
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
 
 B16004	0044	AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER
 C24030	0081	SEX BY INDUSTRY FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER
 C24010	0079	SEX BY OCCUPATION FOR THE CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER
 B19050	0062	AGGREGATE HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) BY AGE OF HOUSEHOLDER
 B19001	0058	HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS)
 B25063	0105	GROSS RENT
 B25065	0105	AGGREGATE GROSS RENT (DOLLARS)
 B25061	0105	RENT ASKED
 B25062	0105    AGGREGATE RENT ASKED (DOLLARS)
 B25070	0105	GROSS RENT AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS

 B01002 	0003	MEDIAN AGE BY SEX
 B02001 	0004	RACE
 B06002 	0013	MEDIAN AGE BY PLACE OF BIRTH IN THE UNITED STATES
 B07012 	0018	GEOGRAPHICAL MOBILITY IN THE PAST YEAR BY POVERTY STATUS IN THE PAST 12 MONTHS FOR CURRENT RESIDENCE IN THE UNITED STATES
 B11004 	0037	FAMILY TYPE BY PRESENCE AND AGE OF RELATED CHILDREN UNDER 18 YEARS
 B11005 	0037	HOUSEHOLDS BY PRESENCE OF PEOPLE UNDER 18 YEARS BY HOUSEHOLD TYPE
 B11007	0037	HOUSEHOLDS BY PRESENCE OF PEOPLE 65 YEARS AND OVER, HOUSEHOLD SIZE AND HOUSEHOLD TYPE
 B11010 	0037	NONFAMILY HOUSEHOLDS BY SEX OF HOUSEHOLDER BY LIVING ALONE BY AGE OF HOUSEHOLDER
 B11016 	0037	HOUSEHOLD TYPE BY HOUSEHOLD SIZE
 B15003 	0043	EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER
 B18101 	0056	SEX BY AGE BY DISABILITY STATUS
 B18102 	0056	SEX BY AGE BY HEARING DIFFICULTY
 B18103 	0056	SEX BY AGE BY VISION DIFFICULTY
 B18104 	0056	SEX BY AGE BY COGNITIVE DIFFICULTY
 B18105 	0057	SEX BY AGE BY AMBULATORY DIFFICULTY
 B18106 	0057	SEX BY AGE BY SELF-CARE DIFFICULTY
 B19013 	0058	MEDIAN HOUSEHOLD INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS)
 B19056 	0062	SUPPLEMENTAL SECURITY INCOME (SSI) IN THE PAST 12 MONTHS FOR HOUSEHOLDS
 B19057	0062	PUBLIC ASSISTANCE INCOME IN THE PAST 12 MONTHS FOR HOUSEHOLDS
 B19058 	0062	PUBLIC ASSISTANCE INCOME OR FOOD STAMPS/SNAP IN THE PAST 12 MONTHS FOR HOUSEHOLDS
 B19059 	0062	RETIREMENT INCOME IN THE PAST 12 MONTHS FOR HOUSEHOLDS
 B19113  	0061	MEDIAN FAMILY INCOME IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS)
 B23025 	0078	EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER
 B25007 	0102	TENURE BY AGE OF HOUSEHOLDER
 B25010 	0102	AVERAGE HOUSEHOLD SIZE OF OCCUPIED HOUSING UNITS BY TENURE
 B25014	0102	TENURE BY OCCUPANTS PER ROOM
 B25024 	0103	UNITS IN STRUCTURE
 B25041 	0104	BEDROOMS
 B25049	0104	TENURE BY PLUMBING FACILITIES
 B25052	0104	KITCHEN FACILITIES FOR OCCUPIED HOUSING UNITS
 B25064	0105	MEDIAN GROSS RENT (DOLLARS)
 B25070	0105	GROSS RENT AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS
 B25088	0106	MEDIAN SELECTED MONTHLY OWNER COSTS (DOLLARS) BY MORTGAGE STATUS
 B25091	0106	MORTGAGE STATUS BY SELECTED MONTHLY OWNER COSTS AS A PERCENTAGE OF HOUSEHOLD INCOME IN THE PAST 12 MONTHS
 B25105 	0107	MEDIAN MONTHLY HOUSING COSTS (DOLLARS)

 Modifications:
  03/20/13 PAT Added tables B16004 C24030 C24010 B19050 B19001 B25063 
               B25065 B25061 B25062 B25070.
  01/21/14 PAT Updated for new SAS1 server (not tested).
  01/28/14 MSW Added tables B01002 B02001 B07012 B11005 B11007 B11010 B11016 B15003 B18101 B18102 
			   B18103 B18104 B18105 B18106 B19013 B19056 B19057 B19058 B19059 B23025 B25007 B25010
  02/04/14 MSW Added tables B25014 B25049 B25052 B25070 B25091
  02/06/14 MSW Added tables B11004 B25105 B25088 B25064 B06002
  02/28/14 PAT Corrected _years_dash value. 
  03/04/14 MSW Added sequence numbers 0063, 0064 and 0075. Added  B01002Ee/m, B25014Ee/m, and B19013Ee/m to drop list. 
  11/05/14 SXZ Added Table B19113 B09001
**************************************************************************/

/** Macro Acs_sf - Start Definition **/

%macro Acs_sf( 
  state_ab = ,
  years = ,
  geo_file = ,
  max_seqno = ,
  
  finalize = Y,
  
  revisions = New file.,
  
  /** Year for census block group/tract defs. Should be 2010 for 2011 and later ACS releases. **/
  census_geo_year = 2010,
  
  /** Update these parameters to add new tabulations to data set **/
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
    B01001Ee: B01002Ee: B11001Ee: B19001Ee: B19013Ee: B25003Ee: B25014Ee: C24010Ee:
    B01001Em: B01002Em: B11001Em: B19001Em: B19013Em: B25003Em: B25014Em: C24010Em:
  ,
  drop_bg_list = 
    B00001e: B00002e: B05002e: B07012e: B11010e: B11013e: B17001e: 
    B00001m: B00002m: B05002m: B07012m: B11010m: B11013m: B17001m:  
    B18101e: B18102e: B18103e: B18104e: B18105e: B18106e: 
    B18101m: B18102m: B18103m: B18104m: B18105m: B18106m: 
    B18101Ee: B19058e: B19131e: B23001e: B25052e:
    B18101Em: B19058m: B19131m: B23001m: B25052m:
);

  %if %mparam_is_yes( &Finalize ) and not &_remote_batch_submit %then %do;
    %warn_mput( macro=Acs_sf, msg=%str(Not a remote batch submit session. Finalize will be set to N.) )
    %let Finalize = N;
  %end;

  %** Global macro parameters **;

  %global _acs_sf_raw_base_path _acs_sf_raw_path _state_fips _state_ab _state_name
          _years _last_year _geo_file _census_geo_year _max_seqno _years_dash 
          _seq_list _table_list _drop_list _drop_bg_list
          _sf_macro_file_path _out_ds_base _out_lib;
          
  %global rootdir;

  %global table_file_e_list table_file_m_list;

  %** Basic ACS file parameters **;

  %let _state_ab   = %lowcase(&state_ab);
  %let _state_fips = %sysfunc(stfips(&_state_ab));
  %let _state_name = %sysfunc(compress(%sysfunc(stnamel(&_state_ab))));
  %let _years      = &years;
  %let _geo_file   = &geo_file;
  %let _census_geo_year = &census_geo_year;
  %let _max_seqno = %scan( &seq_list, -1 );
  %let _acs_sf_raw_base_path = &_dcdata_r_path\ACS\Raw\SF_&_years.;
  %let _years_dash = %sysfunc( tranwrd( &_years, '_', '-' ) );
  %let _last_year = 20%scan( &_years, 2, _ );
  
  %let _out_ds_base = Acs_sf_&_years._&_state_ab;

  %if %mparam_is_yes( &Finalize ) %then %do;
    %let _out_lib = ACS;
  %end;
  %else %do;
    %let _out_lib = WORK;
  %end;
  
  %if &_remote_batch_submit %then 
    %let _sf_macro_file_path = &_dcdata_r_path\ACS\Prog\SF_&_years.\SummaryFile_All_Macro.sas;
  %else
    /**FOR DEBUGGING***%let _sf_macro_file_path = &_dcdata_l_path\ACS\Prog\SF_&_years.\SummaryFile_All_Macro.sas;**/
    %let _sf_macro_file_path = &_dcdata_l_path\ACS\Prog\Temp\SummaryFile_All_Macro.sas;

  %** Rootdir global variable used in SummaryFile_All_Macro.sas (must end with \) **;
  
  %if &_remote_batch_submit %then 
    %let rootdir = &_dcdata_r_path\ACS\Raw\SF_&_years.\Code\;
  %else
    %let rootdir = &_dcdata_l_path\ACS\Raw\SF_&_years.\Code\;
    
  options noxwait;
  x "md &rootdir";
  
  %** File sequence numbers to read **;

  %let _seq_list = &seq_list;

  %** Tables to read **;

  %let _table_list = &table_list;
  
  %** Variables to drop from final block group and tract files **;

  %let _drop_list = &drop_list;

  %** Additional variables to drop from block group file **;

  %let _drop_bg_list = &drop_bg_list;

  %put _user_;
  
  
  ** Location of table lookup files **;

  libname stubs "&_acs_sf_raw_base_path";


  **** Compile block group and tract files ****;

  %Compile_ACS( geo=geobg2010, finalize=&finalize, revisions=&revisions )

  %Compile_ACS( geo=geo2010, finalize=&finalize, revisions=&revisions )


%mend Acs_sf;

/** End Macro Definition **/

