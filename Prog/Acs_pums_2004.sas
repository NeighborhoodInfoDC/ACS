/**************************************************************************
 Program:  Acs_pums_2004.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  09/06/06
 Version:  SAS 8.2
 Environment:  Windows
 
 Description:  Copy ACS data to create _WAS and _COMP data sets.

 Modifications:
**************************************************************************/

%include "K:\Metro\PTatian\DCData\SAS\Inc\Stdhead.sas";

** Define libraries **;
%DCData_lib( ACS )

%let year = 2004;
%let maxobs = 100000000;
%let maxobs = 5;

libname h&year.dc "&_dcdata_path\acs\raw\&year\pc_hdc.zip";
libname p&year.dc "&_dcdata_path\acs\raw\&year\pc_pdc.zip";

libname h&year.md "&_dcdata_path\acs\raw\&year\pc_hmd.zip";
libname p&year.md "&_dcdata_path\acs\raw\&year\pc_pmd.zip";

data housing (compress=no);

  length Userialno $ 10;
  
  set h&year.dc.psam_h11 (obs=&maxobs) h&year.md.psam_h24 (obs=&maxobs);
  
  Userialno = put( 1 * st, z2. ) || put( 1 * serialno, z8. );
  
  ** Correct implied decimal point in ADJUST **;
  
  adjust = adjust / 1e6;
  
  format _all_ ;
  
run;

proc sort data=housing;
  by Userialno;

%File_info( data=housing, printobs=10 )

data population (compress=no);

  length Userialno $ 10;
  
  set p&year.dc.psam_p11 (obs=&maxobs) p&year.md.psam_p24 (obs=&maxobs);
  
  Userialno = put( 1 * st, z2. ) || put( 1 * serialno, z8. );
  
  format _all_ ;
  
run;

proc sort data=population;
  by Userialno sporder;

%File_info( data=population, printobs=10 )

data 
  Acs.Acs_pums_&year._was
  Acs.Acs_pums_&year._comp ;
  
  retain Year &year;
  
  merge
    population (drop=rt serialno puma st adjust)
    housing (drop=rt);
  by Userialno;
  
  length Upuma Uplacefp $ 7;
  
  upuma = st || put( puma, z5. );
  
  uplacefp = put( upuma, $pum0fpl. );
  
  if st in ( '11', '24', '51', '54' ) then output Acs.Acs_pums_&year._was;
  
  if not( missing( uplacefp ) ) then output Acs.Acs_pums_&year._comp;
  
  rename st=Statecd;
  
  format st $fstname. uplacefp $plac98f.;

  label 
    year = 'Year of survey'
    upuma = 'Unique PUMA code (ssppppp)'
    uplacefp = 'Unique FIPS place code (ssppppp)';

run;

%File_info( data=Acs.Acs_pums_&year._was, freqvars=statecd uplacefp )

proc freq data=Acs.Acs_pums_&year._comp;
  tables uplacefp;
  
run;
