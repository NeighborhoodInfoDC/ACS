/**************************************************************************
 Program:  ACS_2015_19_DC_sum_all.sas
 Library:  ACS
 Project:  Urban-Greater DC
 Author:   Ananya Hariharan
 Created:  December 18, 2020
 Version:  SAS 9.4
 Environment:  Local Windows session (desktop)
 
 Description:  Create all standard summary files from ACS 5-year data.
 
 Modifications:
**************************************************************************/

%include "F:\DCDATA\SAS\Inc\StdRemote.sas";

** Define libraries **;
%DCData_lib( ACS )


%ACS_summary_all( 

  /** State abbreviation. Ex: DC **/
  state_ab = DC,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2015_19,
  
  /** Year for census block group/tract defs. **/  
  census_geo_year = 2010,

  revisions = %str(Update with latest DC geos.)

)
