/**************************************************************************
 Program:  Acs_sf_2016_20_WV.sas
 Library:  ACS
 Project:  Urban-Greater DC
 Author:   Elizabeth Burton
 Created:  12/12/22
 Version:  SAS 9.4
 Environment:  Local Windows session (desktop)
 
 Description:  Read selected tables for ACS summary files.
 
 Modifications:
**************************************************************************/

%include "\\sas1\DCdata\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )


%Acs_sf(

  /** State abbreviation. Ex: DC **/
  state_ab = WV,

   /** Census geographies used **/
  census_geo_year=2020,

  /** Year range (2016_20)**/
  years = 2016_20,
  
  /** Description of latest file revisions for metadata **/
  revisions = %str(New file.)

)

