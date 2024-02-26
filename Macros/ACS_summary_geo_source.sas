/**************************************************************************
 Program:  ACS_summary_geo_source.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  02/04/16
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Create source data for generating summary geogarphy
 data sets.

 Modifications:
  7/29/2016 - added additional variable calculations and labels, including racial breakdowns.
**************************************************************************/

%macro  ACS_summary_geo_source( source_geo );

  %global source_geo_var source_geo_suffix source_geo_wt_file_fmt source_ds source_ds_work source_geo_label;

  %if %upcase( &source_geo ) = BG00 %then %do;
     %let source_geo_var = GeoBg2000;
     %let source_geo_suffix = _bg;
     %let source_geo_wt_file_fmt = $geobw0f.;
     %let source_ds = Acs_sf_&_years._&_state_ab._bg00;
     %let source_geo_label = Block group;
  %end;
  %else %if %upcase( &source_geo ) = TR00 %then %do;
     %let source_geo_var = Geo2000;
     %let source_geo_suffix = _tr;
     %let source_geo_wt_file_fmt = $geotw0f.;
     %let source_ds = Acs_sf_&_years._&_state_ab._tr00;
     %let source_geo_label = Census tract;
  %end;
  %else %if %upcase( &source_geo ) = BG10 %then %do;
     %let source_geo_var = GeoBg2010;
     %let source_geo_suffix = _bg;
     %let source_geo_wt_file_fmt = $geobw1f.;
     %let source_ds = Acs_sf_&_years._&_state_ab._bg10;
     %let source_geo_label = Block group;
  %end;
  %else %if %upcase( &source_geo ) = TR10 %then %do;
     %let source_geo_var = Geo2010;
     %let source_geo_suffix = _tr;
     %let source_geo_wt_file_fmt = $geotw1f.;
     %let source_ds = Acs_sf_&_years._&_state_ab._tr10;
     %let source_geo_label = Census tract;
  %end;
  %else %if %upcase( &source_geo ) = BG20 %then %do;
     %let source_geo_var = GeoBg2020;
     %let source_geo_suffix = _bg;
     %let source_geo_wt_file_fmt = $geobw2f.;
     %let source_ds = Acs_sf_&_years._&_state_ab._bg20;
     %let source_geo_label = Block group;
  %end;
  %else %if %upcase( &source_geo ) = TR20 %then %do;
     %let source_geo_var = Geo2020;
     %let source_geo_suffix = _tr;
     %let source_geo_wt_file_fmt = $geotw2f.;
     %let source_ds = Acs_sf_&_years._&_state_ab._tr20;
     %let source_geo_label = Census tract;
  %end;
  %else %if %upcase( &source_geo ) = REGCOUNTY %then %do;
     %let source_geo_var = RegCounty;
     %let source_geo_suffix = _regcnt;
     %let source_geo_wt_file_fmt = $geotw1f.;
     %let source_ds = Acs_sf_&_years._&_state_ab._regcnt;
     %let source_geo_label = Regional county;
  %end;
  %else %if %upcase( &source_geo ) = UCOUNTY %then %do;
     %let source_geo_var = ucounty;
     %let source_geo_suffix = _cnty;
     %let source_geo_wt_file_fmt = ;  %** No weighting file needed **;
     %let source_ds = Acs_sf_&_years._&_state_ab._cnty;
     %let source_geo_label = County;
  %end;
  %else %do;
    %err_mput( macro= ACS_summary_geo_source, msg=Geography &source_geo is not supported. )
    %goto macro_exit;
  %end;
     
  %let source_ds_work = _ACS_&_years._&state_ab._sum&source_geo_suffix;

  %put _global_;

  ** Create new variables for summarizing **;

  data &source_ds_work;

    %if %upcase( &source_geo ) = REGCOUNTY %then %do;
      set ACS.&source_ds (drop=county);
      county = RegCounty;
      label county = "Regional county (2017)";
    %end;
    %else %do;
      set ACS.&source_ds;
    %end;
  
    ** Recode numeric special codes to missing.
    ** See https://www.census.gov/data/developers/data-sets/acs-1year/data-notes.html
    ** for code explanations.
    **;
    
    array a{*} _numeric_;
    
    do i = 1 to dim( a );
    
      select;
        when ( a{i} = -222222222 ) a{i} = .b;
        when ( a{i} = -333333333 ) a{i} = .c;
        when ( a{i} = -555555555 ) a{i} = .e;
        when ( a{i} = -666666666 ) a{i} = .f;
        when ( a{i} = -888888888 ) a{i} = .h;
        when ( a{i} = -999999999 ) a{i} = .i;
        when ( a{i} < 0 ) a{i} = .n;
        otherwise /** DO NOTHING **/;
      end;
      
    end;        
    
    ** Block group level variables **;
    
    %ACS_summary_geo_source_bg_vars()
    
    %if %upcase( &source_geo ) = TR00 or %upcase( &source_geo ) = TR10 or 
        %upcase( &source_geo ) = TR20 or %upcase( &source_geo ) = REGCOUNTY or 
        %upcase( &source_geo ) = UCOUNTY
      %then %do;
      
        ** Tract/county level variables **;
    
        %ACS_summary_geo_source_tr_vars()
        
    %end;

  %if &_state_ab = dc and (
    %upcase( &source_geo ) = BG00 or
    %upcase( &source_geo ) = BG10 or 
    %upcase( &source_geo ) = TR00 or
	%upcase( &source_geo ) = TR10 ) %then %do; 

	
  %** For DC, do full set of geographies **;

	    %ACS_summary_geo( anc2002, &source_geo )
	    %ACS_summary_geo( anc2012, &source_geo )
	    %ACS_summary_geo( city, &source_geo )
	    %ACS_summary_geo( cluster_tr2000, &source_geo )
	    %ACS_summary_geo( eor, &source_geo )
	    %ACS_summary_geo( psa2004, &source_geo )
	    %ACS_summary_geo( psa2012, &source_geo )
	    %ACS_summary_geo( psa2019, &source_geo )
	    %ACS_summary_geo( geo2000, &source_geo ) 
	    %ACS_summary_geo( geo2010, &source_geo ) 
	    %ACS_summary_geo( geo2020, &source_geo )
	    %ACS_summary_geo( voterpre2012, &source_geo )
	    %ACS_summary_geo( ward2002, &source_geo )
	    %ACS_summary_geo( ward2012, &source_geo )
	    %ACS_summary_geo( ward2022, &source_geo )
	    %ACS_summary_geo( zip, &source_geo )
	    %ACS_summary_geo( cluster2000, &source_geo )
	    %ACS_summary_geo( cluster2017, &source_geo )
	    %ACS_summary_geo( bridgepk, &source_geo )
	    %ACS_summary_geo( stantoncommons, &source_geo )
	    %ACS_summary_geo( npa2019, &source_geo )

 	 %end;
	
	
    %else %if &_state_ab = dc and (
    %upcase( &source_geo ) = BG20 or  
    %upcase( &source_geo ) = TR20 ) %then %do; 

    %** For DC, do full set of geographies **;

	    %ACS_summary_geo( anc2002, &source_geo )
	    %ACS_summary_geo( anc2012, &source_geo )
	    %ACS_summary_geo( city, &source_geo )
	    %ACS_summary_geo( cluster_tr2000, &source_geo )
	    %ACS_summary_geo( psa2004, &source_geo )
	    %ACS_summary_geo( psa2012, &source_geo )
	    %ACS_summary_geo( psa2019, &source_geo )
	    %ACS_summary_geo( geo2020, &source_geo )
	    %ACS_summary_geo( voterpre2012, &source_geo )
	    %ACS_summary_geo( ward2002, &source_geo )
	    %ACS_summary_geo( ward2012, &source_geo )
	    %ACS_summary_geo( ward2022, &source_geo )
	    %ACS_summary_geo( zip, &source_geo )
	    %ACS_summary_geo( cluster2000, &source_geo )
	    %ACS_summary_geo( cluster2017, &source_geo )
	    %ACS_summary_geo( bridgepk, &source_geo )
	    %ACS_summary_geo( stantoncommons, &source_geo )
	    %ACS_summary_geo( npa2019, &source_geo )

 	 %end;

  %else  %if &_state_ab = dc and %upcase( &source_geo ) = REGCOUNTY %then %do;
  %ACS_summary_geo( County, &source_geo )
  %end;

  %else  %if &_state_ab = dc and %upcase( &source_geo ) = UCOUNTY %then %do;
  %ACS_summary_geo( ucounty, &source_geo )
  %end;

  %else %do;
    %** For non-DC, do census tract, council district and county summary file **;
    
	%if %upcase( &source_geo ) = TR20 %then %do; 
      %ACS_summary_geo( geo2020, &source_geo )
    %** %ACS_summary_geo( councildist, &source_geo )**;
    %end;
    %else %if %upcase( &source_geo ) = TR10 %then %do; 
      %ACS_summary_geo( geo2010, &source_geo )
      %ACS_summary_geo( councildist, &source_geo )
    %end;
    %else %if %upcase( &source_geo ) = TR00 %then %do;
      %ACS_summary_geo( geo2000, &source_geo )
    %end;
  %else %if %upcase( &source_geo ) = REGCOUNTY %then %do;
      %ACS_summary_geo( County, &source_geo )
    %end;
  %else %if %upcase( &source_geo ) = UCOUNTY %then %do;
      %ACS_summary_geo( ucounty, &source_geo )
    %end;


  %end;
  
  ** Cleanup temporary data sets **;
  
  /*proc datasets library=work nolist;
    delete &source_ds_work /memtype=data;
  quit;*/
  
  %macro_exit:

%mend ACS_summary_geo_source;



