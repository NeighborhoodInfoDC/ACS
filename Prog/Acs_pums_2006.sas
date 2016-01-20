/**************************************************************************
 Program:  Acs_pums_2006.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  01/07/08
 Version:  SAS 9.1
 Environment:  Windows
 
 Description:  Copy ACS data to create _WAS and _COMP data sets.
 Data read from zipped raw files in D:\DCData\Libraries\ACS\Raw\2006.
 
 NB:  ZipMagic must be turned ON before running this program.

 Modifications:
**************************************************************************/

%include "K:\Metro\PTatian\DCData\SAS\Inc\Stdhead.sas";

** Define libraries **;
%DCData_lib( ACS )

%let year = 2006;
%let states = dc md va wv;
%let maxobs = 100000000;

/** Macro Pums_raw_libs - Start Definition **/

%macro Pums_raw_libs( states );

  %let i = 1;
  %let st = %scan( &states, &i  );
  
  %do %until ( &st =  );
    libname h&year.&st "&_dcdata_path\acs\raw\&year\pc_h&st..zip";
    libname p&year.&st "&_dcdata_path\acs\raw\&year\pc_p&st..zip";
    %let i = %eval( &i + 1 );
    %let st = %scan( &states, &i  );
  %end;

%mend Pums_raw_libs;

/** End Macro Definition **/

/** Macro Pums_raw_ds - Start Definition **/

%macro Pums_raw_ds( type, states );

  %let i = 1;
  %let st = %scan( &states, &i  );
  
  %do %until ( &st =  );
    %let stfp = %sysfunc( putn( %sysfunc( stfips( &st ) ), z2. ) );
    &type.&year.&st..psam_&type.&stfp (obs=&maxobs) 
    %let i = %eval( &i + 1 );
    %let st = %scan( &states, &i  );
  %end;

%mend Pums_raw_ds;

/** End Macro Definition **/

%Pums_raw_libs( &states )

** Read housing & population files and combine states together **;

** Turn off MSGLEVEL option to suppress "foreign host format" messages **;

%push_option( msglevel, quiet=N )

options msglevel=n;

data housing (compress=no);

  length Userialno $ 10;
  
  set %Pums_raw_ds( h, &states );
  
  Userialno = put( 1 * st, z2. ) || put( 1 * serialno, z8. );
  
  ** Correct implied decimal point in ADJUST **;
  
  nadjust = adjust / 1e6;
  
  format _all_ ;
  
  label nadjust = 'PUMS adjustment factor';
  
  drop adjust;
  rename nadjust = ADJUST;
  
run;

proc sort data=housing;
  by Userialno;

/*%File_info( data=housing, printobs=10 )*/

data population (compress=no);

  length Userialno $ 10;
  
  set %Pums_raw_ds( p, &states );

  Userialno = put( 1 * st, z2. ) || put( 1 * serialno, z8. );
  
  format _all_ ;
  
run;

proc sort data=population;
  by Userialno sporder;

%pop_option( msglevel, quiet=N )

** Merge population & housing files together to create output data sets **;

/*%File_info( data=population, printobs=10 )*/

data 
  Acs.Acs_pums_&year._was
  Acs.Acs_pums_&year._comp ;
  
  retain Year &year;
  
  merge
    population (in=inP drop=rt serialno puma st adjust)
    housing (in=inH drop=rt);
  by Userialno;
  
  if not( inH ) or ( not( inP ) and np > 0 ) then do;
    %warn_put( msg='Nonmatching population and housing records: ' Userialno= st= $2. serialno= sporder= inP= inH= )
  end;
  
  length Upuma Uplacefp $ 7;
  
  upuma = st || put( 1 * puma, z5. );
  
  uplacefp = put( upuma, $pum0fpl. );
  
  ** Washington region states (DC/MD/VA/WV) **;
  
  if st in ( '11', '24', '51', '54' ) then output Acs.Acs_pums_&year._was;
  
  ** Comparison cities **;

  if uplacefp in ( 
    "1150000",  /** Washington, DC **/
    "2255000",  /** New Orleans **/
    "2404000",  /** Baltimore **/
    "2507000",  /** Boston **/
    "2622000",  /** Detroit **/
    "2965000",  /** St. Louis **/
    "3916000",  /** Cleveland **/
    "4260000",  /** Philadelphia **/
    "5553000"   /** Milwaukee **/
    )
  then output Acs.Acs_pums_&year._comp;
  
  rename st=Statecd;
  
  format st $fstname. uplacefp $plac98f.;

  label 
    userialno = 'Unique serial number'
    year = 'Year of survey'
    upuma = 'Unique PUMA code (ssppppp)'
    uplacefp = 'Unique FIPS place code (ssppppp)';

run;

%File_info( data=Acs.Acs_pums_&year._was, printobs=5, freqvars=statecd uplacefp vacs )

/*
proc freq data=Acs.Acs_pums_&year._comp;
  tables uplacefp;
*/

run;

proc print data=Acs.Acs_pums_&year._was (obs=10);
  where vacs ~= '';
  id year userialno sporder vacs;
  title2 'Vacant units only';
  
run;

