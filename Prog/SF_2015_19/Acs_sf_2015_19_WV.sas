/**************************************************************************
 Program:  Acs_sf_2015_19_WV.sas
 Library:  ACS
 Project:  Urban-Greater DC
 Author:   Ananya Hariharan
 Created:  December 15, 2020
 Version:  SAS 9.4
 Environment:  Local Windows session (desktop)
 
 Description:  Read selected tables for ACS summary files.
 
 Modifications: 4/7/21: ALH added tables for regional AI analysis
                7/22/22: YS added gender breakdown for employment vars
**************************************************************************/

%include "\\sas1\DCdata\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )


%Acs_sf(

  /** State abbreviation. Ex: DC **/
  state_ab = WV,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2015_19,

  /** Description of latest file revisions for metadata **/
 revisions = %str(C23002 B20005 c24010 gender breakdown for employment vars)

);
