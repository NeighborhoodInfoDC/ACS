/**************************************************************************
 Program:  Acs_sf_2013_17_dc.sas
 Library:  ACS
 Project:  Urban-Greater DC
 Author:   Olivia Arena
 Created:  12.13.2018
 Version:  SAS 9.4
 Environment:  Local Windows session (desktop)
 
 Description:  Read selected tables for ACS summary files.
 
 Modifications:
**************************************************************************/

%include "L:\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )


%Acs_sf(

  /** State abbreviation. Ex: DC **/
  state_ab = DC,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2013_17 ,
  
  /** Description of latest file revisions for metadata **/
  revisions = %str(Add table B19001A.)

)

