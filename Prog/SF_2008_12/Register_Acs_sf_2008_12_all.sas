/**************************************************************************
 Program:  Register_Acs_sf_2008_12_all.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   M. Woluchem
 Created:  01/31/14
 Version:  SAS 9.1
 Environment:  Local Windows session (desktop)
 
 Description:  Register metadata for 2008-12 ACS SF tables.

 Modifications:
  01/21/14 PAT  Updated for new SAS1 server (not tested).
  01/31/14 MSW	Modified from Register_Acs_sf_2007_11_all.sas
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
    creator_process=Acs_sf_2008_12_all.sas,
    restrictions=None,
    revisions=%str(&revisions)
  )

  run;

%mend Register;

/** End Macro Definition **/

**** Register files ****;

%Register( acs_sf_2008_12_bg10 )
%Register( acs_sf_2008_12_tr10 )

run;

/* endrsubmit; */

** End submitting commands to remote server **;

/* signoff; */
