/**************************************************************************
 Program:  Acs_sf_xxxx_yy_ss.sas
 Library:  ACS
 Project:  Urban-Greater DC
 Author:   
 Created:  
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
  state_ab = ,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = ,
  
  /** Description of latest file revisions for metadata **/
  revisions = %str(New file.)

)

