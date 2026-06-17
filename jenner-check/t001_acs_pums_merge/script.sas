/**************************************************************************
 Bundle:   t001_acs_pums_merge
 Source:   Prog/Acs_pums_2005.sas (NeighborhoodInfoDC/ACS)
 Author:   P. Tatian, bundled for Jenner compatibility check

 Merge the PUMS population and housing extracts into the Washington
 region (_was) and comparison-city (_comp) data sets. The merge logic,
 unique-key and unique-PUMA construction, the $pum0fpl place lookup, the
 region/comparison-city output split, and the rename/label/format
 statements are the program's own. The output libref is WORK here (the
 ACS library is external) and the framework non-match diagnostic is
 written here as a plain PUT.
**************************************************************************/

data
  Acs_pums_&year._was
  Acs_pums_&year._comp ;

  retain Year &year;

  merge
    population (in=inP drop=rt serialno puma st)
    housing (in=inH drop=rt);
  by Userialno;

  if not( inH ) or ( not( inP ) and np > 0 ) then do;
    put "WARNING: Nonmatching population and housing records: "
        Userialno= st= serialno= sporder= inP= inH=;
  end;

  length Upuma Uplacefp $ 7;

  upuma = st || put( 1 * puma, z5. );

  uplacefp = put( upuma, $pum0fpl. );

  ** Washington region states (DC/MD/VA/WV) **;

  if st in ( '11', '24', '51', '54' ) then output Acs_pums_&year._was;

  ** Comparison cities **;

  if uplacefp in (
    "1150000",  /** Washington, DC **/
    "2255000",  /** New Orleans **/
    "2404000",  /** Baltimore **/
    "2507000",  /** Boston **/
    "2622000",  /** Detroit **/
    "2965000",  /** St. Louis **/
    "3916000",  /** Cleveland **/
    "4260000",  /** Philadelphia **/
    "5553000"   /** Milwaukee **/
    )
  then output Acs_pums_&year._comp;

  rename st=Statecd;

  label
    userialno = 'Unique serial number'
    year = 'Year of survey'
    upuma = 'Unique PUMA code (ssppppp)'
    uplacefp = 'Unique FIPS place code (ssppppp)';

run;

proc print data=Acs_pums_&year._was;
  var year userialno statecd upuma uplacefp agep;
  title "ACS PUMS &year - Washington region (DC/MD/VA/WV)";
run;

proc freq data=Acs_pums_&year._comp;
  tables uplacefp;
  title "ACS PUMS &year - comparison-city place codes";
run;
