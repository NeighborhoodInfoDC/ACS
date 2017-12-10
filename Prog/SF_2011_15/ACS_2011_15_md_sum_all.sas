/**************************************************************************
 Program:  ACS_2011_15_md_sum_all.sas
 Library:  ACS
 Project:  NeighborhoodInfo MD
 Author:   Carl Hedman
 Created:  1/5/17
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Create all standard summary files from ACS 5-year data.
 
 Modifications:
**************************************************************************/

%include "L:\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )


%ACS_summary_all( 

  /** State abbreviation. Ex: MD **/
  state_ab = MD,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2011_15,

  revisions=%str(Rerun for new tr10_regcd weights.)

)

