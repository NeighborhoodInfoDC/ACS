/**************************************************************************
 Program:  Acs_sf_2011_15_dc.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   Carl Hedman
 Created:  12/23/16
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
  state_ab = DC,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2011_15

)

