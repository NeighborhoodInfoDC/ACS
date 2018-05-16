/**************************************************************************
 Program:  Acs_sf_2006_10_wv.sas
 Library:  ACS
 Project:  Urban-Greater DC
 Author:   Wilton Oliver
 Created:  05/15/18
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
  state_ab = WV,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2006_10,
  
  /** Description of latest file revisions for metadata **/
  revisions = %str(New file.)

)

