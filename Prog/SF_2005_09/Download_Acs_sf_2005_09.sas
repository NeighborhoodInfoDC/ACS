/**************************************************************************
 Program:  Download_Acs_sf_2005_09.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  12/17/12
 Version:  SAS 9.1
 Environment:  Windows with SAS/Connect
 
 Description:  Download acs_sf_2005_09_bg00 and acs_sf_2005_09_tr00
 from Alpha ACS library.

 Modifications:
**************************************************************************/

%include "K:\Metro\PTatian\DCData\SAS\Inc\Stdhead.sas";
%include "K:\Metro\PTatian\DCData\SAS\Inc\AlphaSignon.sas" /nosource2;

** Define libraries **;
%DCData_lib( ACS )

** Start submitting commands to remote server **;

rsubmit;

proc download status=no
  inlib=ACS 
  outlib=ACS memtype=(data);
  select acs_sf_2005_09_bg00 acs_sf_2005_09_tr00;
run;

endrsubmit;

** End submitting commands to remote server **;

run;

signoff;
