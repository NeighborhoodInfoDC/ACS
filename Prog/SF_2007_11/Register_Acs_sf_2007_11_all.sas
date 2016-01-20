/**************************************************************************
 Program:  Register_Acs_sf_2007_11_all.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  12/20/10
 Version:  SAS 9.1
 Environment:  Local Windows session (desktop)
 
 Description:  Register metadata for 2007-11 ACS SF tables.

 Modifications:
  01/21/14 PAT  Updated for new SAS1 server (not tested).
**************************************************************************/

%include "L:\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )

** Start submitting commands to remote server **;

/* rsubmit; */

/** Macro Upload - Start Definition **/

%macro Register( data, revisions=New file. );

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
    creator_process=Acs_sf_2007_11_all.sas,
    restrictions=None,
    revisions=%str(&revisions)
  )

  run;

%mend Register;

/** End Macro Definition **/

**** Register files ****;

%Register( acs_sf_2007_11_bg10 )
%Register( acs_sf_2007_11_tr10 )

run;

/* endrsubmit; */

** End submitting commands to remote server **;

/* signoff; */
