/**************************************************************************
 Program:  ACS_2015_19_VA_sum_all.sas
 Library:  ACS
 Project:  Urban-Greater DC
 Author:   Ananya Hariharan
 Created:  December 18, 2020
 Version:  SAS 9.4
 Environment:  Local Windows session (desktop)
 
 Description:  Create all standard summary files from ACS 5-year data.
 
 Modifications:
**************************************************************************/

%include "\\sas1\DCdata\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )


%ACS_summary_all( 

  /** State abbreviation. Ex: DC **/
  state_ab = VA,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2015_19,
  
  /** Description of latest file revisions for metadata **/
  revisions = %str(Corrections for gender breakouts for employment vars.)

)

