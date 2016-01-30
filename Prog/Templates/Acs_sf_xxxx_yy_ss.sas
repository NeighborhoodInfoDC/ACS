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

options mprint nosymbolgen nomlogic;

%Acs_sf(

  /** State abbreviation. Ex: DC **/
  state_ab = ,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = ,

  /** Geography file. Do NOT include filename extension (.txt/.csv). Ex: g20095dc **/
  geo_file = ,

  /** Maximum number of sequence files. Ex: 120 **/
  max_seqno = ,

  /** Year for census block group/tract defs. Should be 2010 for 2011 and later ACS releases. **/
  census_geo_year = 2010

)


  /*** TEST ***********************

  %let _seq_list = 0001 0002;

  %let _table_list = B00001 B00002 B01001;

  *********************************/

