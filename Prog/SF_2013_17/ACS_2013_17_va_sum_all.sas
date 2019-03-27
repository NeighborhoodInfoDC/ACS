/**************************************************************************
 Program:  ACS_2013_17_va_sum_all.sas
 Library:  ACS
 Project:  Urban-Greater DC
 Author:   Olivia Arena
 Created:  12.19.2018
 Version:  SAS 9.4
 Environment:  Local Windows session (desktop)
 
 Description:  Create all standard summary files from ACS 5-year data.
 
 Modifications:12/24/18 by Yipeng Su Add new access to internet variables
 	       02/16/19 LH Add Median HH Income
 	       02/21/19 LH Fix MOEs and add internet indicator total
			02/27/19 YS add table B28001
            03/27/19 YS add rows from table B28002
**************************************************************************/

%include "L:\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )


%ACS_summary_all( 

  /** State abbreviation. Ex: DC **/
  state_ab = VA,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2013_17 ,
  
  /** Description of latest file revisions for metadata **/
  revisions = %str(Add table 28001 TYPES OF COMPUTERS IN HOUSEHOLD)

)

