/**************************************************************************
 Program:  Register_Acs_2007_11_sum_all.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  3/22/2013
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Register ACS 5-year summary files and register metadata.
               2007-11

 Modifications:
  01/21/14 PAT  Updated for new SAS1 server (not tested).
**************************************************************************/

%include "L:\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )

** Start submitting commands to remote server **;

/* rsubmit; */

/** Macro Register - Start Definition **/

%macro Register( data );

/* 
  proc upload status=no
    inlib=ACS 
    outlib=ACS memtype=(data);
    select &data;
  run;
 */

  %Dc_update_meta_file(
    ds_lib=ACS,
    ds_name=&data,
    creator_process=Acs_2007_11_sum_all.sas,
    restrictions=None,
    revisions=%str(&revisions)
  )

  run;

%mend Register;

/** End Macro Definition **/

**** Upload & register files ****;

%let revisions=%str(New file.);

%Register( Acs_2007_11_sum_bg_anc02 )
%Register( Acs_2007_11_sum_bg_anc12 )
%Register( Acs_2007_11_sum_bg_city )
%Register( Acs_2007_11_sum_bg_cltr00 )
%Register( Acs_2007_11_sum_bg_eor )
%Register( Acs_2007_11_sum_bg_psa04 )
%Register( Acs_2007_11_sum_bg_psa12 )
%Register( Acs_2007_11_sum_bg_tr00 )
%Register( Acs_2007_11_sum_bg_tr10 )
%Register( Acs_2007_11_sum_bg_vp12 )
%Register( Acs_2007_11_sum_bg_wd02 )
%Register( Acs_2007_11_sum_bg_wd12 )
%Register( Acs_2007_11_sum_bg_zip )

/* x "purge [dcdata.acs.data]Acs_2007_11_sum_bg_*.*"; */

%let revisions=%str(New file.);

%Register( Acs_2007_11_sum_tr_anc02 )
%Register( Acs_2007_11_sum_tr_anc12 )
%Register( Acs_2007_11_sum_tr_city )
%Register( Acs_2007_11_sum_tr_cltr00 )
%Register( Acs_2007_11_sum_tr_eor )
%Register( Acs_2007_11_sum_tr_psa04 )
%Register( Acs_2007_11_sum_tr_psa12 )
%Register( Acs_2007_11_sum_tr_tr00 )
%Register( Acs_2007_11_sum_tr_tr10 )
%Register( Acs_2007_11_sum_tr_vp12 )
%Register( Acs_2007_11_sum_tr_wd02 )
%Register( Acs_2007_11_sum_tr_wd12 )
%Register( Acs_2007_11_sum_tr_zip )

/* x "purge [dcdata.acs.data]Acs_2007_11_sum_tr_*.*"; */

run;

/* endrsubmit; */

** End submitting commands to remote server **;

/* signoff; */
