/**************************************************************************
 Program:  Acs_sf_xxxx_yy_ss_remote.sas
 Library:  ACS
 Project:  Urban-Greater DC
 Author:   
 Created:  
 Version:  SAS 9.4M4 or later
 Environment:  Remote Windows session (SAS1)
 GitHub issue:  
 
 Description:  Read selected tables for ACS summary files.
 
 Modifications: 
   12/06/23 LH Added census_geo_year parameter. 
               Update include statement for SAS1 network location.
   01/24/24 PT New template for API-based code on SAS1.
**************************************************************************/

%include "F:\DCData\SAS\Inc\StdRemote.sas";

** Define libraries **;
%DCData_lib( ACS )


%Acs_sf_new(

  /** Finalize data sets (N for testing, Y for final batch submit) **/
  finalize = N,
  
  /** State abbreviation. (DC, MD, VA, or WV) **/
  state_ab = ,
      
  /** Year range (xxxx_yy). Ex: 2018_22 **/
  years = ,
  
  /** Census geographies used (2020 or 2010) **/
  census_geo_year=2020,

  /** List of tables to download. Use list below for testing. Comment out for final batch submit **/
  table_list = B01001 B01002 B01003,
  
  /** List of geographic summary levels to download. Possible values=BG TRACT COUNTY PLACE. **/
  geo_levels = BG TRACT COUNTY PLACE,
  
  /** Description of latest file revisions for metadata **/
  revisions = %str(New file.)

)

