/**************************************************************************
 Program:  Upload_Acs_5yr_sum_vp12.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   S. Zhang
 Created:  12/19/12
 Version:  SAS 9.1
 Environment:  Windows with SAS/Connect
 
 Description:  Upload ACS 5-year summary files and register metadata for 2012 
 Voting Precincts.

 Modifications:
  12/19/12 SXZ Summary files for 2012 Voting Precincts only 
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
    creator_process=Acs_5yr_sum_vp12.sas,
    restrictions=None,
    revisions=%str(&revisions)
  )

  run;

%mend Upload;

/** End Macro Definition **/

**** Upload & register files ****;

%let revisions=%str(New file.);

%Upload( acs_5yr_sum_bg_vp12 )
/*
%Upload( acs_5yr_sum_bg_anc02 )
%Upload( acs_5yr_sum_bg_anc12 )
%Upload( acs_5yr_sum_bg_city )
%Upload( acs_5yr_sum_bg_cltr00 )
%Upload( acs_5yr_sum_bg_eor )
%Upload( acs_5yr_sum_bg_psa04 )
%Upload( acs_5yr_sum_bg_psa12 )
%Upload( acs_5yr_sum_bg_tr00 )
%Upload( acs_5yr_sum_bg_tr10 )
%Upload( acs_5yr_sum_bg_wd02 )
%Upload( acs_5yr_sum_bg_wd12 )
%Upload( acs_5yr_sum_bg_zip )
*/
x "purge [dcdata.acs.data]acs_5yr_sum_bg_*.*";

%let revisions=%str(New file.);

%Upload( acs_5yr_sum_tr_vp12 )
/*
%Upload( acs_5yr_sum_tr_anc02 )
%Upload( acs_5yr_sum_tr_anc12 )
%Upload( acs_5yr_sum_tr_city )
%Upload( acs_5yr_sum_tr_cltr00 )
%Upload( acs_5yr_sum_tr_eor )
%Upload( acs_5yr_sum_tr_psa04 )
%Upload( acs_5yr_sum_tr_psa12 )
%Upload( acs_5yr_sum_tr_tr00 )
%Upload( acs_5yr_sum_tr_tr10 )
%Upload( acs_5yr_sum_tr_wd02 )
%Upload( acs_5yr_sum_tr_wd12 )
%Upload( acs_5yr_sum_tr_zip )
*/
x "purge [dcdata.acs.data]acs_5yr_sum_tr_*.*";

run;

endrsubmit;

** End submitting commands to remote server **;

signoff;
