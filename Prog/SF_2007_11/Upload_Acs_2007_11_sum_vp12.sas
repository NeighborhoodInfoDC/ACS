/**************************************************************************
 Program:  Upload_Acs_2007_11_sum_vp12.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  3/22/2013
 Version:  SAS 9.2
 Environment:  Windows with SAS/Connect
 
 Description:  Upload ACS 5-year summary files and register metadata.
               2007-11

 Modifications:
**************************************************************************/

%include "K:\Metro\PTatian\DCData\SAS\Inc\Stdhead.sas";
%include "K:\Metro\PTatian\DCData\SAS\Inc\AlphaSignon.sas" /nosource2;

** Define libraries **;
%DCData_lib( ACS )

** Start submitting commands to remote server **;

rsubmit;

/** Macro Upload - Start Definition **/

%macro Upload( data );

  proc upload status=no
    inlib=ACS 
    outlib=ACS memtype=(data);
    select &data;
  run;

  %Dc_update_meta_file(
    ds_lib=ACS,
    ds_name=&data,
    creator_process=Acs_2007_11_sum_all.sas,
    restrictions=None,
    revisions=%str(&revisions)
  )

  run;

%mend Upload;

/** End Macro Definition **/

**** Upload & register files ****;

%let revisions=%str(New file.);

%Upload( Acs_2007_11_sum_bg_vp12 )

x "purge [dcdata.acs.data]Acs_2007_11_sum_bg_*.*";

%let revisions=%str(New file.);

%Upload( Acs_2007_11_sum_tr_vp12 )

x "purge [dcdata.acs.data]Acs_2007_11_sum_tr_*.*";

run;

endrsubmit;

** End submitting commands to remote server **;

signoff;
