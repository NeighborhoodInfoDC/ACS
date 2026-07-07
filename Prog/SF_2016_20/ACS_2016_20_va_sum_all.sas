/**************************************************************************
 Program:  ACS_2016_20_VA_sum_all.sas
 Library:  ACS
 Project:  Urban-Greater DC
 Author:   Elizabeth Burton
 Created:  01/25/2023
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
  state_ab = VA,

  /** Census geographies used **/
  census_geo_year=2020,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2016_20,
  
  /** Description of latest file revisions for metadata **/
  revisions = %str(Create ANC2023 summary data sets.)


)

