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
 B08119       PERSON BY EARNING
 B25032       TENURE BY UNITS IN STRUCTURE
 
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
  06/26/17 LH and RP Added Tables for racial equity work.
  06/05/18 Yipeng Su Added tables for pop by sex and age, insurance coverage, family type, earnings for Stanton Commons 
  07/09/18 LH Added B25032 
  08/30/18 RP ADded B25009
**************************************************************************/

/** Macro Acs_sf - Start Definition **/

%macro Acs_sf( 
  state_ab = ,
  years = ,
  finalize = Y,
  revisions = New file.,
  
  /** Year for census block group/tract defs. Should be 2010 for 2011 and later ACS releases. **/
  census_geo_year = 2010,
  
  /** Update table_list=, drop_list=, and drop_bg_list= parameters to add new tabulations to data set **/
  
  /** List of tables to include in data sets **/
 table_list = 
  	B00001 B00002 B01002 B01003 
	B01001 B01001B B01001C B01001D B01001E B01001F B01001G B01001H B01001I
	B02001 B03001 B03002 B05002 
	B05003 B05003A B05003B B05003C B05003D B05003E B05003F B05003G B05003H B05003I 
	B06002 B06007 B06009 B07012 B09001
      B06004B B06004C B06004D B06004E B06004F B06004G B06004H B06004I
	B08007 B08012
	B11001 B11003 B11004 B11005 B11007 B11010 B11013 B11016 
	B15002 C15002B C15002C C15002D C15002E C15002F C15002G C15002H C15002I
	B15003 B16004 B16006
	B17001 B17001B B17001C B17001D B17001E B17001F B17001G B17001H B17001I
	B17025 B18101 B18102 B18103 B18104 B18105 B18106
    B19013 B19050 B19056 B19057 B19058 B19059
	B19001 B19001B B19001C B19001D B19001E B19001F B19001G B19001H B19001I 
	B19025 B19025B B19025C B19025D B19025E B19025F B19025G B19025H B19025I  
	B19101 B19101B B19101C B19101D B19101E B19101F B19101G B19101H B19101I
	B19113 B19113B B19113C B19113D B19113E B19113F B19113G B19113H B19113I
	B19127 B19131
	B19313 B19313B B19313C B19313D B19313E B19313F B19313G B19313H B19313I
	B20005 B20005B B20005C B20005D B20005E B20005F B20005G B20005H B20005I
	B23001 B23025
	C23002B C23002C C23002D C23002E C23002F C23002G C23002H C23002I 
	B23003 
	C24010 C24010B C24010C C24010D C24010E C24010F C24010G C24010H C24010I
	C24030 B25004 B25007 B25010 B25014 B25024 B25041
	B25003 B25003B B25003C B25003D B25003E B25003F B25003G B25003H B25003I
	B25043 B25044 B25049 B25052 B25061 B25062 B25063 B25065 B25070    
    B25070 B25072 B25074 B25091 B25105 B25088 B25064 B25093 B25095
	B07003
	B07004A B07004B B07004C B07004D B07004E B07004F B07004G B07004H B07004I
	B25079 B25080 B25082
	B25077
	B25106
	B25031 B25042 B25068 B05006 B27001 B25095 B25074 B14001 B08119 B25032
	B25009
,
  
  /** List of table estimate (e:) and margin of error (m:) cells that should be excluded from all data sets **/
  drop_list =
    B00001m: B00002m:
    B01002Ee: B11001Ee: B19013Ee: B25014Ee: 
    B01002Em: B11001Em: B19013Em: B25014Em: 
    B18101Ee: 
    B18101Em: 
,
  
  /** List of table estimate (e:) and margin of error (m:) cells that should be excluded from BLOCK GROUP data sets only **/
  drop_bg_list = 
  	B01001Be: B01001Ce: B01001De: B01001Ee: B01001Fe: B01001Ge: B01001He: B01001Ie:
	B01001Bm: B01001Cm: B01001Dm: B01001Em: B01001Fm: B01001Gm: B01001Hm: B01001Im:
    B03001e: B05002e: B05003: B06002e: B06007e: B06009e: B07012e: B09001e: B11010e: B11013e: B16006e:
    B03001m: B05002m: B05003: B06002m: B06007m: B06009m: B07012m: B09001m: B11010m: B11013m: B16006m:
	B06004Be: B06004Ce: B06004De: B06004Ee: B06004Fe: B06004Ge: B06004He: B06004Ie: 
	B06004Bm: B06004Cm: B06004Dm: B06004Em: B06004Fm: B06004Gm: B06004Hm: B06004Im:
	B07003e: B07003m:
	B07004Ae: B07004Be: B07004Ce: B07004De: B07004Ee: B07004Fe: B07004Ge: B07004He: B07004Ie: 
	B07004Am: B07004Bm: B07004Cm: B07004Dm: B07004Em: B07004Fm: B07004Gm: B07004Hm: B07004Im: 
	B08012:
	C15002Be: C15002Ce: C15002De: C15002Ee: C15002Fe: C15002Ge: C15002He: C15002Ie:
	C15002Bm: C15002Cm: C15002Dm: C15002Em: C15002Fm: C15002Gm: C15002Hm: C15002Im:
	B17001e: B17001Be: B17001Ce: B17001De: B17001Ee: B17001Fe: B17001Ge: B17001He: B17001Ie:
	B17001m: B17001Bm: B17001Cm: B17001Dm: B17001Em: B17001Fm: B17001Gm: B17001Hm: B17001Im:
    B17025e: B18101e: B18102e: B18103e: B18104e: B18105e: B18106e: B19058e:
    B17025m: B18101m: B18102m: B18103m: B18104m: B18105m: B18106m: B19058m:
	B19001Be: B19001Ce: B19001De: B19001Ee: B19001Fe: B19001Ge: B19001He: B19001Ie:
	B19001Bm: B19001Cm: B19001Dm: B19001Em: B19001Fm: B19001Gm: B19001Hm: B19001Im:
	B19101Be: B19101Ce: B19101De: B19101Ee: B19101Fe: B19101Ge: B19101He: B19101Ie:
	B19101Bm: B19101Cm: B19101Dm: B19101Em: B19101Fm: B19101Gm: B19101Hm: B19101Im:
      B19113e1 B19113Be1 B19113Ce1 B19113De1 B19113Ee1 B19113Fe1 B19113Ge1 B19113He1 B19113Ie1
      B19113m1 B19113Bm1 B19113Cm1 B19113Dm1 B19113Em1 B19113Fm1 B19113Gm1 B19113Hm1 B19113Im1
    B19131e: B23001e: B25052e: B25105e:
    B19131m: B23001m: B25052m: B25105m:
	B20005e: B20005Be: B20005Ce: B20005De: B20005Ee: B20005Fe: B20005Ge: B20005He: B20005Ie:
	B20005m: B20005Bm: B20005Cm: B20005Dm: B20005Em: B20005Fm: B20005Gm: B20005Hm: B20005Im:
	B25095e:
	B25095m:
	B25106e: B25106m:
	C23002Be: C23002Ce: C23002De: C23002Ee: C23002Fe: C23002Ge: C23002He: C23002Ie:
	C23002Bm: C23002Cm: C23002Dm: C23002Em: C23002Fm: C23002Gm: C23002Hm: C23002Im:
);


  %** Global macro parameters **;

  %global _acs_sf_raw_base_path _acs_sf_raw_path _state_fips _state_ab _state_name
          _years _last_year _geo_file _census_geo_year _years_dash 
          _seq_list _table_list _drop_list _drop_bg_list
          _sf_macro_file_path _out_ds_base _out_lib;
          
  %global rootdir;

  %global table_file_e_list table_file_m_list;

  %** Basic ACS file parameters **;

  %let _state_ab   = %lowcase(&state_ab);
  %let _state_fips = %sysfunc(stfips(&_state_ab));
  %let _state_name = %sysfunc(compress(%sysfunc(stnamel(&_state_ab))));
  %let _years      = &years;
  %let _census_geo_year = &census_geo_year;
  %let _acs_sf_raw_base_path = &_dcdata_r_path\ACS\Raw\SF_&_years.;
  %let _years_dash = %sysfunc( translate( &_years, '-', '_' ) );
  %let _last_year = 20%scan( &_years, 2, _ );
  %let _geo_file   = g&_last_year.5&_state_ab;
  
  %let _out_ds_base = Acs_sf_&_years._&_state_ab;

  %if &_remote_batch_submit %then 
    %let _sf_macro_file_path = &_dcdata_r_path\ACS\Prog\SF_&_years.\SummaryFile_All_Macro.sas;
  %else
    %let _sf_macro_file_path = &_dcdata_l_path\ACS\Prog\SF_&_years.\SummaryFile_All_Macro.sas;

  %** Rootdir global variable used in SummaryFile_All_Macro.sas (must end with \) **;
  
  %if &_remote_batch_submit %then 
    %let rootdir = &_dcdata_r_path\ACS\Raw\SF_&_years.\Code\;
  %else
    %let rootdir = &_dcdata_l_path\ACS\Raw\SF_&_years.\Code\;
    
  options noxwait;
  x "md &rootdir";
  
  
  ** Location of table lookup file **;

  libname stubs "&_acs_sf_raw_base_path";


  %** Create list of file sequence numbers to read based on list of tables **;
  
  %push_option( quotelenmax )
  
  options noquotelenmax;
  
  proc sql noprint;
    select seq into :_seq_list separated by ' ' from stubs.SequenceNumberTableNumberLookup
      where cells ~= '' and indexw("%upcase(&table_list)", upcase( tblid ), ' ' )
      order by seq;
  quit;
  run;
  
  %pop_option( quotelenmax )

  %let _seq_list = %ListNoDup( &_seq_list );


  %** Tables to read **;

  %let _table_list = &table_list;
  
  %** Variables to drop from final block group and tract files **;

  %let _drop_list = &drop_list;

  %** Additional variables to drop from block group file **;

  %let _drop_bg_list = &drop_bg_list;
  

  %put _user_;
  
  
  **** Compile block group, tract and county files ****;

  %Compile_ACS( geo=geobg2010, revisions=&revisions ) 

  %Compile_ACS( geo=geo2010, revisions=&revisions )

  %Compile_ACS( geo=county, revisions=&revisions )

/*
  %Compile_ACS( geo=place, revisions=&revisions )
*/


%mend Acs_sf;

/** End Macro Definition **/

