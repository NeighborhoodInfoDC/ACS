/**************************************************************************
 Program:  Upload_Acs_5yr_sum_all.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  12/20/10
 Version:  SAS 9.1
 Environment:  Windows with SAS/Connect
 
 Description:  Upload ACS 5-year summary files and register metadata.

 Modifications:
  09/11/12 PAT Added new 2010/2012 geos.
               Removed cluster2000, casey_nbr2003 and casey_ta2003.
               Dropped missing vars from files created from block group.
  10/19/12 PAT Added missing MOE vars.
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
    creator_process=Acs_5yr_sum_all.sas,
    restrictions=None,
    revisions=%str(&revisions)
  )

  run;

%mend Upload;

/** End Macro Definition **/

**** Upload & register files ****;

%let revisions=%str(Added missing MOE vars.);

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

x "purge [dcdata.acs.data]acs_5yr_sum_bg_*.*";

%let revisions=%str(Added missing MOE vars.);

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

x "purge [dcdata.acs.data]acs_5yr_sum_tr_*.*";

run;

endrsubmit;

** End submitting commands to remote server **;

signoff;
