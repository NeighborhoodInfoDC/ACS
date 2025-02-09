/**************************************************************************
 Program:  ACS_2011_15_dc_sum_all.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   Carl Hedman
 Created:  1/5/17
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Create all standard summary files from ACS 5-year data.
 
 Modifications: 12/10/24 update inslude statement for SAS1 and add 2020 geographies
**************************************************************************/

%include "\\sas1\DCdata\SAS\Inc\StdLocal.sas";


** Define libraries **;
%DCData_lib( ACS )


%ACS_summary_all( 

  /** State abbreviation. Ex: DC **/
  state_ab = DC,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2011_15,

  revisions=%str(Add 2020 geographies.)

)

