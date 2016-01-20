/**************************************************************************
 Program:  Upload_Acs_sf_2005_09_all.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  12/20/10
 Version:  SAS 9.1
 Environment:  Windows with SAS/Connect
 
 Description:  Upload 2005-09 ACS SF tables and register metadata.

 Modifications:
**************************************************************************/

%include "K:\Metro\PTatian\DCData\SAS\Inc\Stdhead.sas";
%include "K:\Metro\PTatian\DCData\SAS\Inc\AlphaSignon.sas" /nosource2;

** Define libraries **;
%DCData_lib( ACS )

** Start submitting commands to remote server **;

rsubmit;

/** Macro Upload - Start Definition **/

%macro Upload( data, revisions=New file. );

  proc upload status=no
    inlib=ACS 
    outlib=ACS memtype=(data);
    select &data;
  run;

  %Dc_update_meta_file(
    ds_lib=ACS,
    ds_name=&data,
    creator_process=Acs_sf_2005_09_all.sas,
    restrictions=None,
    revisions=%str(&revisions)
  )

  run;

%mend Upload;

/** End Macro Definition **/

**** Upload & register files ****;

%Upload( acs_sf_2005_09_bg00, revisions=Added margins of error. Deleted unreported vars. )
%Upload( acs_sf_2005_09_tr00, revisions=Added margins of error. )

run;

endrsubmit;

** End submitting commands to remote server **;

signoff;
