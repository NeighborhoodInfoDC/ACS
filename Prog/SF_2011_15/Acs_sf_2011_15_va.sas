/**************************************************************************
 Program:  Acs_sf_2011_15_va.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   Lily Posey
 Created:  06/29/17
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
  state_ab = VA,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2011_15

)

