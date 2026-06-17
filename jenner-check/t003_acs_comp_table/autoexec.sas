options obs=100;

/* --------------------------------------------------------------------
   Bundle setup for Acs_comp_table (PROC TABULATE report).

   The library program builds an RTF table from Acs.Acs_comp_table (the
   household-level file produced by Acs_comp_table_dat.sas), classifying
   children under 3 by comparison city and household characteristics.

   This setup supplies a small Acs_comp_table work data set with the
   class/analysis columns the report consumes, and a no-op %fdate macro
   (the DCData macro that sets &fdate for the footnote). The PROC FORMAT
   value definitions and the PROC TABULATE statement are the program's
   own code, unchanged; output is the default listing rather than RTF.
   -------------------------------------------------------------------- */

%macro fdate;
%mend fdate;
%let fdate = ;

data Acs_comp_table;
  length hht $ 1 hhh_citizen $ 1;
  input comp_city hht $ hhh_age hhh_educ hhh_citizen $ povpip wgtp
        count num_hhs num_persons num_children num_adults
        hh_income hh_earnings hh_has_earn hh_has_pub_assist hh_has_ssi
        num_work_adults num_work_ft_adults;
  datalines;
1 1 33 13 1 175 90 1 1.0 3 1 2 85000 82000 100 0 0 2 2
1 3 41 9 4 150 60 1 1.0 2 1 1 33000 31000 100 0 100 1 1
2 1 52 16 1 250 75 1 1.0 2 1 1 72000 70000 100 0 0 1 1
2 1 29 10 1 90 80 1 1.0 4 2 2 41000 39000 100 100 0 2 1
3 3 38 12 5 60 70 1 1.0 3 2 1 22000 0 0 100 0 1 0
;
run;
