options obs=100;

/* --------------------------------------------------------------------
   Bundle setup for Acs_pums_2005 (population x housing merge).

   The library program reads zipped Census PUMS housing and population
   files from per-state libraries under &_dcdata_path, then merges them
   into the _WAS (Washington region) and _COMP (comparison cities)
   output data sets, applying the $pum0fpl PUMA-to-place format built by
   Puma_to_city_formats.sas.

   This setup supplies:
     - the $pum0fpl format (a small CNTLIN drawn from the program's own
       comparison-city place codes),
     - small population and housing work data sets shaped like the
       psam_p / psam_h PUMS extracts the merge consumes.
   The merge DATA step itself is the program's own code, unchanged.
   -------------------------------------------------------------------- */

%let year = 2005;

/* $pum0fpl: unique PUMA (statecd||z5 puma) -> unique FIPS place code */
data _pum0fpl;
  retain fmtname '$pum0fpl' type 'C';
  input start $ label $;
  datalines;
1100102 1150000
2401002 2404000
2503301 2507000
2603201 2622000
3901901 3916000
4204101 4260000
5505301 5553000
;
run;

proc format cntlin=_pum0fpl;
run;

/* Population extract (psam_p*) shape: state, serial, person, puma, weight, esr, agep */
data population;
  length Userialno $ 10;
  input st $ serialno sporder puma rt $ pwgtp esr $ agep;
  Userialno = put( 1 * st, z2. ) || put( 1 * serialno, z8. );
  datalines;
11 100 1 102 P 90 1 35
11 100 2 102 P 90 6 5
24 200 1 1002 P 60 2 40
26 300 1 3201 P 75 1 52
99 400 1 9901 P 30 1 41
;
run;

/* Housing extract (psam_h*) shape: state, serial, puma, weight, adjust */
data housing;
  length Userialno $ 10;
  input st $ serialno puma rt $ wgtp adjust;
  Userialno = put( 1 * st, z2. ) || put( 1 * serialno, z8. );
  datalines;
11 100 102 H 90 1000000
24 200 1002 H 60 1000000
26 300 3201 H 75 1000000
99 400 9901 H 30 1000000
;
run;

proc sort data=population; by Userialno sporder; run;
proc sort data=housing;    by Userialno; run;
