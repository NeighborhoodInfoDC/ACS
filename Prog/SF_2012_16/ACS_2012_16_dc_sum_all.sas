/**************************************************************************
 Program:  ACS_2012_16_dc_sum_all.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   Carl Hedman
 Created:  12/20/17
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Create all standard summary files from ACS 5-year data.
 
 Modifications:
 
 6/21/18 RP Fixed conflict with the ACS master branch that had previously caused issues.
 7/09/18 LH Added indicators for structure type. 
 8/30/18 RP Added tenure by household size. 
 9/20/18 YS added family by type and related child
 2/5/19 YS added median hh income
**************************************************************************/

%include "L:\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )


%ACS_summary_all( 

  /** State abbreviation. Ex: DC **/
  state_ab = DC,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2012_16,
  
  revisions=%str(Update the ACS var median household income . )

)

