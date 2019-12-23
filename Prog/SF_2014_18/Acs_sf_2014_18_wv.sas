/**************************************************************************
 Program:  Acs_sf_2014_18_wv.sas
 Library:  ACS
 Project:  Urban-Greater DC
 Author:   Rob Pitingolo
 Created:  12/23/2019
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
  years = 2014_18 ,
  
  /** Description of latest file revisions for metadata **/

  revisions = %str(New File.)

)

