/**************************************************************************
 Bundle:   t003_acs_comp_table
 Source:   Prog/Acs_comp_table.sas (NeighborhoodInfoDC/ACS)
 Author:   P. Tatian, bundled for Jenner compatibility check

 Tabulate characteristics of children under age 3 and their households
 for Washington, D.C. and comparison cities. The PROC FORMAT value
 definitions and the PROC TABULATE class/var/weight/table specification
 are the program's own code. Output is the default listing here (rather
 than the RTF destination); RTF-only footnote markup is omitted.
**************************************************************************/

  proc format;
   value city
     1 = 'Washington, DC'
     2 = 'Baltimore'
     3 = 'Boston'
     4 = 'Detroit'
     5 = 'Cleveland'
     6 = 'Philadelphia'
     7 = 'Milwaukee';
  value $hht (notsorted)
    '1' = 'Married-couple family'
    '3' = 'Female-headed family'
    other = 'Other';
  value agep
    0-<65 = 'Under 65'
    65-high = '65+';
  value educ
    1-8 = 'No HS diploma'
    9 = 'HS graduate'
    10-12 = 'Some college'
    13 = 'Bachelors degree'
    14-16 = 'Advanced degree';
  value $cit
    '1','2','3' = 'Native born citizen'
    '4' = 'Naturalized citizen'
    '5' = 'Not a US citizen';
  value pov
    . = 'Unknown'
    0 -< 50  = 'Below 50% poverty'
    50 -< 100 = '50-99% poverty'
    100 -< 200 = '100-199% poverty'
    200 - high = '200% poverty or higher';
run;

%fdate

options nodate nonumber missing='-';

proc tabulate data=Acs_comp_table format=comma12.1 noseps missing;
  class comp_city;
  class hht / order=data preloadfmt;
  class hhh_age hhh_educ hhh_citizen povpip;
  var count num_hhs num_persons num_children num_adults hh_income hh_earnings
      hh_has_earn hh_has_pub_assist hh_has_ssi num_work_adults num_work_ft_adults;
  weight wgtp;
  table
    count='Number of children < 3 years old' * sum * f=comma12.0
    num_hhs='Number of HHs w/children < 3 years old' * sum * f=comma12.0
    num_persons='Avg. HH size' * mean
    num_adults='Avg. num. adults/HH' * mean
    hht='% Children by household type' * colpctsum * count=' '
    hhh_age='% Children by age of HH head' * colpctsum * count=' '
    hhh_educ='% Children by education of HH head' * colpctsum * count=' '
    hhh_citizen='% Children by citizenship of HH head' * colpctsum * count=' '
    num_work_adults='Avg. num. working adults/HH' * mean
    num_work_ft_adults='Avg. num. FT working adults/HH' * mean
    hh_income='Median HH income ($)' * median * f=comma12.0
    hh_earnings='Median HH earnings ($)' * median * f=comma12.0
    hh_has_earn='% HHs w/earnings' * mean
    hh_has_pub_assist='% HHs w/pub. assistance' * mean
    hh_has_ssi='% HHs w/SSI' * mean
    povpip='% Children by poverty status' * colpctsum * count=' '
    ,
    comp_city=' '
   ;
  format comp_city city. hht $hht. hhh_age agep. hhh_educ educ. hhh_citizen $cit.
         povpip pov.;
  keylabel
    sum=' '
    mean=' '
    median=' '
    colpctsum=' ';
  title1 "Characteristics of Children Under Age 3 Years and Their Households";
  title2 "For Washington, D.C. and Comparison Cities, 2005";

run;
