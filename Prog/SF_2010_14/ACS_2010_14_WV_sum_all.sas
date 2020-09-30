/**************************************************************************
 Program:  ACS_2010_14_WV_sum_all.sas
 Library:  ACS
 Project:  Urban-Greater DC
 Author:   Ananya Hariharan
 Created:  September 30, 2020
 Version:  SAS 9.4
 Environment:  Local Windows session (desktop)
 
 Description:  Create all standard summary files from ACS 5-year data.
 
 Modifications:
**************************************************************************/

%include "\\sas1\DCDATA\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )


%ACS_summary_all( 

  /** State abbreviation. Ex: DC **/
  state_ab = WV,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2010_14,
  
  /** Description of latest file revisions for metadata **/
  revisions = %str(New file.)

)

