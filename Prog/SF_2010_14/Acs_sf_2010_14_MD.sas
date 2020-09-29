/**************************************************************************
 Program:  Acs_sf_2010_14_MD.sas
 Library:  ACS
 Project:  Urban-Greater DC
 Author: Ananya Hariharan  
 Created:  September 28, 2020
 Version:  SAS 9.4
 Environment:  Local Windows session (desktop)
 
 Description:  Read selected tables for ACS summary files.
 
 Modifications: September 28, 2020 - AH personalized file to read in MD data for 2010-2014 ACS
**************************************************************************/

%include "\\sas1\DCDATA\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )


%Acs_sf(

  /** State abbreviation. Ex: DC **/
  state_ab = MD,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2010_14,
  
  /** Description of latest file revisions for metadata **/
  revisions = %str(New file.)

)

