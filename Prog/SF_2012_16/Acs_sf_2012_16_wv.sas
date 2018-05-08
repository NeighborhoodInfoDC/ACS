/**************************************************************************
 Program:  Acs_sf_2012_16_wv.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   Carl Hedman
 Created:  12/20/17
 Version:  SAS 9.2
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
  years = 2012_16,
  
  /** Description of latest file revisions for metadata **/
  revisions = %str(New file.)

)

