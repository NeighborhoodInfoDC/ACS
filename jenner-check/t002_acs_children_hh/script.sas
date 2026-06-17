/**************************************************************************
 Bundle:   t002_acs_children_hh
 Source:   Prog/Acs_comp_table_dat.sas (NeighborhoodInfoDC/ACS)
 Author:   P. Tatian, bundled for Jenner compatibility check

 Roll PUMS person records up to households for children under age 3 in
 the comparison cities. The comparison-city assignment (SELECT/WHEN),
 the BY-group accumulation (FIRST./LAST., RETAIN), the person/household
 dual OUTPUT, and the household-level summary indicators are the
 program's own code. Only the input/output librefs are WORK here.
**************************************************************************/

%let maxobs = 100000000;

data
  pers
    (compress=no
     keep=year userialno pwgtp count agep esp rel povpip cit is_foster )
  hh
    (compress=no
     keep=year userialno uplacefp wgtp comp_city hht npp
          num_persons num_children num_children_0_2 num_adults
          num_work_adults num_work_ft_adults num_hhs
          hh_earnings hh_income hh_pub_assist hh_ssi hh_gp
          hh_has_earn hh_has_pub_assist hh_has_ssi
          hhh_age hhh_educ hhh_citizen )
  ;

  set
    Acs_pums_2005_comp (obs=&maxobs)
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

run;

data Acs_comp_table;

  merge hh pers;
  by year userialno;

run;

proc print data=hh noobs;
  var userialno comp_city num_persons num_children num_adults
      num_work_adults num_work_ft_adults hh_income hh_has_earn;
  title 'Households with children under 3, by comparison city';
run;

proc freq data=Acs_comp_table;
  tables comp_city * ( hht hh_has_earn hh_has_ssi ) / missing list;
  title 'Comparison-city household indicators';
run;
