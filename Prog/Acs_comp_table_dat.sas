/**************************************************************************
 Program:  Acs_comp_table_dat.sas
 Library:  Acs
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  09/05/06
 Version:  SAS 8.2
 Environment:  Windows
 
 Description:  Create data file for table of indicators for 
 DC & comparison cities for households with children 0-3 years old.

 Modifications:
**************************************************************************/

%include "K:\Metro\PTatian\DCData\SAS\Inc\Stdhead.sas";

** Define libraries **;
%DCData_lib( Acs )

%let maxobs = 100000000;
/*%let maxobs = 100;*/

data 
  pers 
    (compress=no
     keep=year userialno pwgtp count agep esp rel povpip cit is_: ) 
  hh
    (compress=no
     keep=year userialno uplacefp wgtp comp_city hht npp num_: hh_: hhh_: ) 
  ;

  set 
    Acs.Acs_pums_2005_comp (obs=&maxobs)
  ;
  by year userialno;
  
  where uplacefp in ( 
    "1150000",  /** Washington, DC **/
    /**"2255000",  /** New Orleans **/
    "2404000",  /** Baltimore **/
    "2507000",  /** Boston **/
    "2622000",  /** Detroit **/
    /**"2965000",  /** St. Louis **/
    "3916000",  /** Cleveland **/
    "4260000",  /** Philadelphia **/
    "5553000"   /** Milwaukee **/
    );

  select ( uplacefp );
    when ( "1150000" ) comp_city = 1;  /** Washington, DC **/
    when ( "2404000" ) comp_city = 2;  /** Baltimore **/
    when ( "2507000" ) comp_city = 3;  /** Boston **/
    when ( "2622000" ) comp_city = 4;  /** Detroit **/
    when ( "3916000" ) comp_city = 5;  /** Cleveland **/
    when ( "4260000" ) comp_city = 6;  /** Philadelphia **/
    when ( "5553000" ) comp_city = 7;  /** Milwaukee **/
  end;
  
  retain num_persons num_children num_children_0_2 
         num_adults num_work_adults num_work_ft_adults
         hh_earnings hh_income hh_pub_assist hh_ssi
         hhh_age hhh_educ hhh_citizen;
  
  if first.userialno then do;
    num_persons = 0;
    num_children = 0;
    num_children_0_2 = 0;
    num_adults = 0;
    num_work_adults = 0;
    num_work_ft_adults = 0;
    hh_earnings = 0;
    hh_income = 0;
    hh_ssi = 0;
    hh_pub_assist = 0;
    hhh_age = agep;
    hhh_educ = 1 * schl;
    hhh_citizen = cit;
  end;
  
  count = 1;
  
  num_persons + 1;
  
  if 0 <= agep < 18 then num_children + 1;
  else do;
    num_adults + 1;
    if esr in ( '1', '2', '4', '5' ) then do;
      num_work_adults + 1;
      if wkhp >= 35 then num_work_ft_adults + 1;
    end;
  end;    
  
  if 0 <= agep < 3 then do;
    num_children_0_2 + 1;
    if rel = '11' then is_foster = 1;
    else is_foster = 0;
  end;
  
  hh_earnings = sum( hh_earnings, pernp );
  hh_income = sum( hh_income, pincp );
  hh_pub_assist = sum( hh_pub_assist, pap );
  hh_ssi = sum( hh_ssi, ssip );

  if 0 <= agep < 3 then output pers;
  
  if last.userialno and num_children_0_2 > 0 then do;
  
    num_hhs = 1 / num_children_0_2;
    
    hh_gp = 100 * npp;
  
    if hh_earnings > 0 then hh_has_earn = 100;
    else hh_has_earn = 0;

    if hh_pub_assist > 0 then hh_has_pub_assist = 100;
    else hh_has_pub_assist = 0;
    
    if hh_ssi > 0 then hh_has_ssi = 100;
    else hh_has_ssi = 0;
    
    output hh;
    
  end;
  
  /*
  keep year userialno uplacefp wgtp htotval hearnval hht 
       num_persons num_children num_children_0_2 num_foster_0_2 num_parents_0_2
       num_adults num_work_adults num_work_ft_adults 
       hh_has_earn hh_food_stamps hh_pub_assist hh_health hh_medicare hh_medicaid
       hhh_age hhh_poverty hhh_educ hhh_citizen;
  */
  
run;

data Acs.Acs_comp_table;

  merge hh pers;
  by year userialno;
  
run;

%File_info( data=Acs.Acs_comp_table, freqvars=uplacefp )

proc format;
  value ageg 
    0 -< 18 = '< 18'
    18 -< 30 = '18 - 29'
    30 -< 50 = '30 - 49'
    50 -< 70 = '50 - 69'
    70 - high = '70+';

proc freq data=Acs.Acs_comp_table;
  tables year * ( hht num_: hh_has_: hhh_: ) / missing list;
  format hhh_age ageg.;

run;
