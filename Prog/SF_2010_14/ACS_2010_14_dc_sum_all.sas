/**************************************************************************
 Program:  ACS_2010_14_dc_sum_all.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   Carl Hedman
 Created:  5/27/2016
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Create all standard summary files from ACS 5-year data.
 
 Modifications:
**************************************************************************/

%include "\\sas1\DCDATA\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )


%ACS_summary_all( 

  /** State abbreviation. Ex: DC **/
  state_ab = DC,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2010_14,
  
  /** Year for census block group/tract defs. **/  
  census_geo_year = 2010,

  revisions = %str(Update with latest DC geos.)

)

