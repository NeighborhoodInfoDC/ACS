/**************************************************************************
 Program:  Acs_sf_2012_16_dc.sas
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
  state_ab = DC,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2012_16,
  
  /** Description of latest file revisions for metadata **/
  revisions = %str(Added tables B25031 B25041 B25042 B25068 B05006 B27001 B25095 B25074 B14001.)

)

