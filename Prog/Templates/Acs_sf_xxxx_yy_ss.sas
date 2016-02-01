/**************************************************************************
 Program:  Acs_sf_xxxx_yy_ss.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   
 Created:  
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Read selected tables for ACS summary files.
 
 Modifications:
**************************************************************************/

%include "L:\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )


%Acs_sf(

  /** State abbreviation. Ex: DC **/
  state_ab = ,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = ,

  /** Geography file. Do NOT include filename extension (.txt/.csv). Ex: g20095dc **/
  geo_file = ,

  /** Maximum number of sequence files. Ex: 120 **/
  max_seqno = 

)

