/**************************************************************************
 Program:  ACS_2006_10_dc_sum_all.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   Rob Pitingolo
 Created:  7/13/18
 Version:  SAS 9.4
 Environment:  Local Windows session (desktop)
 
 Description:  Create all standard summary files from ACS 5-year data.
 
 Modifications:
 
 6/21/18 RP Fixed conflict with the ACS master branch that had previously caused issues.
 7/09/18 LH Added indicators for structure type. 
 7/13/18 RP Fixed master branch issue again. 
**************************************************************************/

%include "L:\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )


%ACS_summary_all( 

  /** State abbreviation. Ex: DC **/
  state_ab = DC,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2006_10,
  
  revisions=%str(Added indicators for structure type.)

)

