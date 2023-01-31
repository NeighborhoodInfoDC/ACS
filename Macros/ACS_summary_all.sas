/**************************************************************************
 Program:  ACS_summary_all.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  02/04/16
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Main macro for generating all ACS summary files.

 Modifications:
**************************************************************************/

%macro ACS_summary_all( 

  /** State abbreviation. Ex: DC **/
  state_ab = ,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = ,
  
  finalize = Y,
  revisions = New file.,

  /** Year for census block group/tract defs. Should be 2010 for 2011 and later ACS releases. **/
  census_geo_year = 2010,

  );


  %global _state_ab _years _years_dash _last_year _out_lib _finalize _revisions;

  %** Program parameters **;

  %let _state_ab   = %lowcase(&state_ab);
  %let _years = &years;
  %let _years_dash = %sysfunc( translate( &_years, '-', '_' ) );
  %let _last_year = 20%scan( &_years, 2, _ );
  %let _finalize = &finalize;
  %let _revisions = &revisions;


  %** Check if OK to run finalized data sets **;

  %if %mparam_is_yes( &_finalize ) and not &_remote_batch_submit %then %do;
    %warn_mput( macro=ACS_summary_all, msg=%str(Not a remote batch submit session. Finalize will be set to N.) )
    %let _finalize = N;
  %end;

  %if %mparam_is_yes( &_finalize ) %then %do;
    %let _out_lib = ACS;
  %end;
  %else %do;
    %let _out_lib = WORK;
  %end;
  

  %if &census_geo_year = 2010 %then %do;

  %ACS_summary_geo_source( bg10 )
  %ACS_summary_geo_source( tr10 )

  %end;

  %else %do;
  %ACS_summary_geo_source( bg20 )
  %ACS_summary_geo_source( tr20 )

  %end;

  %ACS_summary_geo_source( regcounty )

%mend ACS_summary_all;

