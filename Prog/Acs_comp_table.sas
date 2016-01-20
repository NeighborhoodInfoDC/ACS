/**************************************************************************
 Program:  Acs_comp_table.sas
 Library:  Acs
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  09/07/06
 Version:  SAS 8.2
 Environment:  Windows
 
 Description:  Create table comparing characteristics of children < 3
for selected cities.

 Modifications:
**************************************************************************/

%include "K:\Metro\PTatian\DCData\SAS\Inc\Stdhead.sas";

** Define libraries **;
%DCData_lib( Acs )

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

%fdate()

options nodate nonumber missing='-' /*orientation=landscape*/;

ods rtf file="D:\DCData\Libraries\ACS\Prog\Acs_comp_table.rtf" style=Rtf_arial_9pt;

proc tabulate data=Acs.Acs_comp_table format=comma12.1 noseps missing;
  class comp_city;
  class hht / order=data preloadfmt;
  class hhh_age hhh_educ hhh_citizen povpip;
  var count num_hhs num_persons num_children num_adults hh_income hh_earnings 
      hh_has_earn hh_has_pub_assist hh_has_ssi num_work_adults num_work_ft_adults;
  weight wgtp;
  table 
    count='Number of children < 3 years old' * sum * f=comma12.0
    num_hhs='Number of HHs w/children < 3 years old' * sum * f=comma12.0
    num_persons='\line Avg. HH size' * mean
    /* num_children='Avg. num. children/HH' * mean */
    num_adults='Avg. num. adults/HH' * mean
    hht='\line\i % Children by household type' * colpctsum * count=' '
    hhh_age='\line\i % Children by age of HH head' * colpctsum * count=' '
    hhh_educ='\line\i % Children by education of HH head' * colpctsum * count=' '
    hhh_citizen='\line\i % Children by citizenship of HH head' * colpctsum * count=' '
    num_work_adults='\line Avg. num. working adults/HH' * mean
    num_work_ft_adults='Avg. num. FT working adults/HH' * mean
    hh_income='\line Median HH income ($)' * median * f=comma12.0
    hh_earnings='Median HH earnings ($)' * median * f=comma12.0
    hh_has_earn='\line % HHs w/earnings' * mean
    hh_has_pub_assist='% HHs w/pub. assistance' * mean
    hh_has_ssi='% HHs w/SSI' * mean
    povpip='\line\i % Children by poverty status' * colpctsum * count=' '
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
  footnote1 height=9pt "\b0\i Source:  American Community Survey Public Use Microdata, 2005, "
                       "tabulated by NeighborhoodInfo DC (&fdate).";
  footnote2 height=9pt ' ';
  *footnote3 height=9pt "\b0\i Notes:  &notes";
  footnote4 height=9pt j=r '{Page}\~{\field{\*\fldinst{\pard\b\i0\chcbpat8\qc\f1\fs19\cf1{PAGE }\cf0\chcbpat0}}}';

run;

/*
proc tabulate data=Acs.Acs_comp_table format=comma12.1 noseps missing;
  where agep < 1;
  class comp_city;
  class hht / order=data preloadfmt;
  class hhh_age hhh_educ hhh_citizen povpip;
  var count num_hhs num_persons num_children num_adults hh_income hh_earnings 
      hh_has_earn hh_has_pub_assist hh_has_ssi num_work_adults num_work_ft_adults;
  weight wgtp;
  table 
    n='Sample size'
    count='Number of children < 3 years old' * sum * f=comma12.0
    num_hhs='Number of HHs w/children < 3 years old' * sum * f=comma12.0
    num_adults='Avg. num. adults/HH' * mean
    num_work_adults='\line Avg. num. working adults/HH' * mean
    num_work_ft_adults='Avg. num. FT working adults/HH' * mean
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
  footnote1 height=9pt "\b0\i Source:  American Community Survey Public Use Microdata, 2005, "
                       "tabulated by NeighborhoodInfo DC (&fdate).";
  footnote2 height=9pt ' ';
  *footnote3 height=9pt "\b0\i Notes:  &notes";
  footnote4 height=9pt j=r '{Page}\~{\field{\*\fldinst{\pard\b\i0\chcbpat8\qc\f1\fs19\cf1{PAGE }\cf0\chcbpat0}}}';
  */

run;

ods rtf close;

