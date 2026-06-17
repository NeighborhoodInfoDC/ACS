options obs=100;

/* --------------------------------------------------------------------
   Bundle setup for Acs_comp_table_dat (household accumulator).

   The library program reads the comparison-city PUMS extract
   Acs.Acs_pums_2005_comp (built by Acs_pums_2005.sas) and rolls
   person records up to households for children under 3.

   This setup supplies a small Acs_pums_2005_comp work data set with the
   person-level columns the accumulator reads (year, userialno,
   uplacefp, weights, age, employment, earnings, etc.), shaped like the
   comparison-city extract. The accumulator DATA step is the program's
   own code; the only adaptation is that the output keep= lists name the
   household-summary variables explicitly rather than by num_:/hh_:/
   hhh_:/is_: name prefixes.
   -------------------------------------------------------------------- */

data Acs_pums_2005_comp;
  length userialno $ 10 uplacefp $ 7 esr $ 1 rel $ 2 cit $ 1;
  input year userialno $ uplacefp $ pwgtp wgtp npp hht $ agep esr $ wkhp
        rel $ cit $ schl pernp pincp pap ssip;
  datalines;
2005 1100000100 1150000 90 90 1 1 35 1 40 01 1 13 52000 55000 0 0
2005 1100000100 1150000 90 90 1 1 33 1 38 01 1 12 28000 30000 0 0
2005 1100000100 1150000 90 90 1 1 2 0 0 11 1 1 0 0 0 0
2005 2400000200 2404000 60 60 1 3 41 2 36 01 4 9 31000 33000 0 1200
2005 2400000200 2404000 60 60 1 3 1 0 0 02 4 1 0 0 0 0
2005 2600000300 2622000 75 75 1 1 52 1 45 01 1 16 70000 72000 0 0
2005 2600000300 2622000 75 75 1 1 1 0 0 02 1 1 0 0 0 0
;
run;
