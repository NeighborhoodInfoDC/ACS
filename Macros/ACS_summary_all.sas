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
  
  revisions = New file.,

  /** Year for census block group/tract defs. Should be 2010 for 2011 and later ACS releases. **/
  census_geo_year = 2010,

  );


  %global _state_ab _years _years_dash _last_year _revisions;

  %** Program parameters **;

  %let _state_ab   = %lowcase(&state_ab);
  %let _years = &years;
  %let _years_dash = %sysfunc( translate( &_years, '-', '_' ) );
  %let _last_year = 20%scan( &_years, 2, _ );
  %let _revisions = &revisions;

  %if &census_geo_year = 2010 %then %do;

  %ACS_summary_geo_source( bg10 )
  %ACS_summary_geo_source( tr10 )

  %end;

  %else %do;
  %ACS_summary_geo_source( bg20 )
  %ACS_summary_geo_source( tr20 )

  %end;

  %if &_last_year < 2022 %then %do;
    %ACS_summary_geo_source( regcounty )
  %end;
  %else %do;
    %ACS_summary_geo_source( ucounty )
  %end;

%mend ACS_summary_all;

