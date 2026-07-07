/**************************************************************************
 Program:  ACS_2011_15_wv_sum_all.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   Peter Tatian
 Created:  10/11/17
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Create all standard summary files from ACS 5-year data.
 
 Modifications:
**************************************************************************/

%include "L:\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )


%ACS_summary_all( 

  /** State abbreviation. Ex: DC **/
  state_ab = WV,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2011_15,

  /** Year for census block group/tract defs. **/  
  census_geo_year = 2010,

  /** Description of latest file revisions for metadata **/
  revisions = %str(Create Geo2020 summary data sets.)

)

