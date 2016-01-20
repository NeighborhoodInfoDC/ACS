/**************************************************************************
 Program:  Upload_Acs_2007_11_sum_all.sas
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

%let revisions=%str(Added variables for family type, English ability, high school dropout, out of school/work, and occupation.);

%Upload( Acs_2007_11_sum_bg_anc02 )
%Upload( Acs_2007_11_sum_bg_anc12 )
%Upload( Acs_2007_11_sum_bg_city )
%Upload( Acs_2007_11_sum_bg_cltr00 )
%Upload( Acs_2007_11_sum_bg_eor )
%Upload( Acs_2007_11_sum_bg_psa04 )
%Upload( Acs_2007_11_sum_bg_psa12 )
%Upload( Acs_2007_11_sum_bg_tr00 )
%Upload( Acs_2007_11_sum_bg_tr10 )
%Upload( Acs_2007_11_sum_bg_vp12 )
%Upload( Acs_2007_11_sum_bg_wd02 )
%Upload( Acs_2007_11_sum_bg_wd12 )
%Upload( Acs_2007_11_sum_bg_zip )

x "purge [dcdata.acs.data]Acs_2007_11_sum_bg_*.*";

%Upload( Acs_2007_11_sum_tr_anc02 )
%Upload( Acs_2007_11_sum_tr_anc12 )
%Upload( Acs_2007_11_sum_tr_city )
%Upload( Acs_2007_11_sum_tr_cltr00 )
%Upload( Acs_2007_11_sum_tr_eor )
%Upload( Acs_2007_11_sum_tr_psa04 )
%Upload( Acs_2007_11_sum_tr_psa12 )
%Upload( Acs_2007_11_sum_tr_tr00 )
%Upload( Acs_2007_11_sum_tr_tr10 )
%Upload( Acs_2007_11_sum_tr_vp12 )
%Upload( Acs_2007_11_sum_tr_wd02 )
%Upload( Acs_2007_11_sum_tr_wd12 )
%Upload( Acs_2007_11_sum_tr_zip )

x "purge [dcdata.acs.data]Acs_2007_11_sum_tr_*.*";

run;

endrsubmit;

** End submitting commands to remote server **;

signoff;
