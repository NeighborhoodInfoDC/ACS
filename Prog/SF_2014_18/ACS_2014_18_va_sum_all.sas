/**************************************************************************
 Program:  ACS_2014_18_va_sum_all.sas
 Library:  ACS
 Project:  Urban-Greater DC
 Author:   Rob Pitingolo
 Created:  12/23/2019
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
  state_ab = VA ,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2014_18 ,
  
  /** Year for census block group/tract defs. **/  
  census_geo_year = 2010,

  /** Description of latest file revisions for metadata **/
  revisions = %str(Create Geo2020 summary data sets.)


)

