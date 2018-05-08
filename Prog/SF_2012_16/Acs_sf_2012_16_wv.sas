/**************************************************************************
 Program:  Acs_sf_2012_16_wv.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   Wilton Oliver
 Created:  05/08/18
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

  revisions=%str(Add B25072, B25074, B25093, B25095, B08007, and B08012 tables.)

)

