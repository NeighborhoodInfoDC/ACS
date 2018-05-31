/**************************************************************************
 Program:  ACS_2006_10_va_sum_all.sas
 Library:  ACS
 Project:  Urban-Greater DC
 Author:   W. Oliver
 Created:  05/30/18
 Version:  SAS 9.4
 Environment:  Local Windows session (desktop)
 
 Description:  Create all standard summary files from ACS 5-year data.
 
 Modifications:
**************************************************************************/

%include "L:\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )


%ACS_summary_all( 

  /** State abbreviation. Ex: DC **/
  state_ab = VA,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2006_10,
  
  /** Description of latest file revisions for metadata **/
  revisions = %str(New file.)

)

