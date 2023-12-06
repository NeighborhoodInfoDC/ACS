/**************************************************************************
 Program:  Acs_sf_xxxx_yy_ss.sas
 Library:  ACS
 Project:  Urban-Greater DC
 Author:   
 Created:  
 Version:  SAS 9.4
 Environment:  Local Windows session (desktop)
 
 Description:  Read selected tables for ACS summary files.
 
 Modifications: 12/06/23 LH Added census_geo_year parameter, Update include statement for SAS1 network location.
**************************************************************************/

%include "\\sas1\DCdata\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )


%Acs_sf(

  /** State abbreviation. Ex: DC **/
  state_ab = ,
      
    /** Census geographies used **/
  census_geo_year=2020,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = ,
  
  /** Description of latest file revisions for metadata **/
  revisions = %str(New file.)

)

