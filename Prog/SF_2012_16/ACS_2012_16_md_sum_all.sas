/**************************************************************************
 Program:  ACS_2012_16_md_sum_all.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   Carl Hedman
 Created:  12/20/17
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Create all standard summary files from ACS 5-year data.
 
 Modifications:
**************************************************************************/

%include "L:\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )


%ACS_summary_all( 

  /** State abbreviation. Ex: DC **/
  state_ab = MD,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2012_16,
  
   revisions=%str(Fixed proc compare issue #103 and moved all housing vars to tract source.)

)

