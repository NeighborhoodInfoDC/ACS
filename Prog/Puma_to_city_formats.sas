/**************************************************************************
 Program:  Puma_to_city_formats.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  09/06/06
 Version:  SAS 8.2
 Environment:  Windows
 
 Description:  Create correspondence formats for converting Census
PUMA codes to place codes.

 Modifications:
**************************************************************************/

%include "K:\Metro\PTatian\DCData\SAS\Inc\Stdhead.sas";

** Define libraries **;
%DCData_lib( ACS )

*filename geocorr  "D:\DCData\Libraries\ACS\Raw\geocorr2k.csv" lrecl=256;

data geocorr;

  length fileloc myinfile $ 300;

  input fileloc $ ; /* read instream data       */

  *infile geocorr dsd stopover firstobs=3;
  infile geocorr dsd stopover firstobs=3 end=eof filevar=fileloc filename=myinfile;

  do while ( not eof );
  
    input 
      statecd : $2.
      placefp : $5.
      puma5
      stab    : $2.
      placenm : $40.
      pop2k
      afact
    ;
    
    placefp = put( 1 * placefp, z5. );
    
    length upuma5 uplacefp $ 7;
    
    upuma5 = statecd || put( puma5, z5. );
    uplacefp = statecd || placefp;
    
    ** Only keep selected cities **;
    
    if uplacefp in ( 
      "1150000",  /** Washington, DC **/
      "2255000",  /** New Orleans **/
      "2404000",  /** Baltimore **/
      "2507000",  /** Boston **/
      "2622000",  /** Detroit **/
      "2965000",  /** St. Louis **/
      "3916000",  /** Cleveland **/
      "4260000",  /** Philadelphia **/
      "5101000",  /** Alexandria city **/
      "5103000",  /** Arlington CDP **/
      "5553000"   /** Milwaukee **/
      )
      then output;

  end;
  
  put 'Finished reading ' myinfile=;

datalines;
D:\DCData\Libraries\ACS\Raw\geocorr2k.csv
D:\DCData\Libraries\ACS\Raw\geocorr2k_b.csv
D:\DCData\Libraries\ACS\Raw\geocorr2k_c.csv
;

run;

%File_info( data=geocorr, freqvars=uplacefp, printobs=100 )

%Data_to_format(
  FmtLib=ACS,
  FmtName=$pum0fpl,
  Desc=2000 5% PUMA to FIPS place,
  Data=geocorr,
  Value=upuma5,
  Label=uplacefp,
  OtherLabel='',
  DefaultLen=.,
  MaxLen=.,
  MinLen=.,
  Print=Y,
  Contents=Y
  )

