/**************************************************************************
 Bundle:   t005_acs_puma_to_place_format
 Source:   Prog/Puma_to_city_formats.sas (NeighborhoodInfoDC/ACS)
 Author:   P. Tatian, bundled for Jenner compatibility check

 Build the $pum0fpl correspondence format that converts Census 2000
 PUMA codes to FIPS place codes for the selected NeighborhoodInfo DC
 comparison cities. The city filter, the unique-key construction and
 the place-code list are the program's own; only the crosswalk source
 (inline rows here) and the format-build step are adapted for a
 self-contained run.
**************************************************************************/

data geocorr;

  length statecd $ 2 placefp $ 5 stab $ 2 placenm $ 40;

  input statecd $ placefp $ puma5 stab $ placenm $ pop2k afact;

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

  datalines;
11 50000 102 DC Washington 572059 0.98
24 04000 1002 MD Baltimore 651154 0.95
25 07000 3301 MA Boston 589141 0.93
26 22000 3201 MI Detroit 951270 0.91
39 16000 1901 OH Cleveland 478403 0.90
42 60000 4101 PA Philadelphia 1517550 0.97
55 53000 5301 WI Milwaukee 596974 0.88
51 01000 5101 VA Alexandria 128283 0.40
17 14000 3501 IL Chicago 2896016 0.80
06 44000 8001 CA LosAngeles 3694820 0.75
;
run;

proc print data=geocorr;
  var upuma5 uplacefp placenm;
  title 'Selected PUMA-to-place crosswalk rows';
run;

/* %Data_to_format( FmtLib=ACS, FmtName=$pum0fpl, Value=upuma5,
   Label=uplacefp, ... ) builds the format below via PROC FORMAT CNTLIN. */

data pum0fpl_cntlin;
  retain fmtname '$pum0fpl' type 'C';
  set geocorr;
  start = upuma5;
  label = uplacefp;
  keep fmtname type start label;
run;

proc sort data=pum0fpl_cntlin nodupkey;
  by start;
run;

proc format cntlin=pum0fpl_cntlin;
run;

** Demonstrate the format converting PUMA codes to place codes **;

data demo;
  length upuma5 $ 7 place $ 7;
  input upuma5 $;
  place = put( upuma5, $pum0fpl. );
  datalines;
1100102
2401002
2603201
4204101
;
run;

proc print data=demo noobs;
  title 'PUMA code translated to FIPS place via $pum0fpl';
run;
