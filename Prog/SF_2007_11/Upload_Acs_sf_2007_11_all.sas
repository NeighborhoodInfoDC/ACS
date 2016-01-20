/**************************************************************************
 Program:  Upload_Acs_sf_2007_11_all.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  12/20/10
 Version:  SAS 9.1
 Environment:  Windows with SAS/Connect
 
 Description:  Upload 2007-11 ACS SF tables and register metadata.

 Modifications:
**************************************************************************/

%include "K:\Metro\PTatian\DCData\SAS\Inc\Stdhead.sas";
%include "K:\Metro\PTatian\DCData\SAS\Inc\AlphaSignon.sas" /nosource2;

** Define libraries **;
%DCData_lib( ACS )

** Start submitting commands to remote server **;

rsubmit;

/** Macro Upload - Start Definition **/

%macro Upload( data, revisions=Added table B14005. );

  proc upload status=no
    inlib=ACS 
    outlib=ACS memtype=(data);
    select &data;
  run;

  %Dc_update_meta_file(
    ds_lib=ACS,
    ds_name=&data,
    creator_process=Acs_sf_2007_11_all.sas,
    restrictions=None,
    revisions=%str(&revisions)
  )

  run;

%mend Upload;

/** End Macro Definition **/

**** Upload & register files ****;

%Upload( acs_sf_2007_11_bg10 )
%Upload( acs_sf_2007_11_tr10 )

run;

endrsubmit;

** End submitting commands to remote server **;

signoff;
