/**************************************************************************
 Program:  ACS_summary_geo_source_bg_vars.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  10/04/17
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Put definitions of ACS variables that can be
 summarized at the BLOCK GROUP level (and higher) here. 
 
 Variables that cannot be summarized at the block group level should
 be added to the %ACS_summary_geo_source_tr_vars() macro. 
 No variable should be added to both macros. 

 Modifications: RP 12/18/20 B00001 and B00002 were replacd with B98003 and B98001 starting with 2015-19
7/21/21 YS add employment related variable broken down by gender
**************************************************************************/


%macro ACS_summary_geo_source_bg_vars(  );

    ** Unweighted sample counts - Census discontinued these in 2019 **;
    
	%if &_last_year. <=2018 %then %do;  
    UnwtdPop_&_years. = B00001e1;
    UnwtdHsgUnits_&_years. = B00002e1;

    label
      UnwtdPop_&_years. = "Unweighted sample population, &_years_dash "
      UnwtdHsgUnits_&_years. = "Unweighted sample housing units, &_years_dash ";

	%end;

    ** Demographics **;

    ** Demographics - Block group-level variables **;

  TotPop_&_years. = B01003e1;
    
    NumHshlds_&_years. = B11001e1;

    NumFamilies_&_years. = B11003e1;
  
    PopUnder5Years_&_years. = sum( B01001e3, B01001e27 );

  PopUnder18Years_&_years. = 
    sum( B01001e3, B01001e4, B01001e5, B01001e6, 
             B01001e27, B01001e28, B01001e29, B01001e30 );

  Pop18_34Years_&_years. = 
    sum(B01001e7, B01001e8, B01001e9, B01001e10, B01001e11, B01001e12, 
      B01001e31, B01001e32, B01001e33, B01001e34, B01001e35, B01001e36 );

  Pop35_64Years_&_years. = 
    sum(B01001e13, B01001e14, B01001e15, B01001e16, B01001e17, B01001e18, B01001e19, 
      B01001e37, B01001e38, B01001e39, B01001e40, B01001e41, B01001e42, B01001e43 );

    Pop65andOverYears_&_years. = 
      sum( B01001e20, B01001e21, B01001e22, B01001e23, B01001e24, B01001e25, 
           B01001e44, B01001e45, B01001e46, B01001e47, B01001e48, B01001e49 );

    mTotPop_&_years. = B01003m1;

    mNumHshlds_&_years. = B11001m1;

    mNumFamilies_&_years. = B11003m1;

    mPopUnder5Years_&_years. = %moe_sum( var=B01001m3 B01001m27 );

  mPopUnder18Years_&_years. = 
      %moe_sum( var=B01001m3 B01001m4 B01001m5 B01001m6 
                 B01001m27 B01001m28 B01001m29 B01001m30 );

  mPop18_34Years_&_years.   = 
    %moe_sum( var=B01001m7 B01001m8 B01001m9 B01001m10 B01001m11 B01001m12 
            B01001m31 B01001m32 B01001m33 B01001m34 B01001m35 B01001m36 );

    mPop35_64Years_&_years. = 
   %moe_sum( var=B01001m13 B01001m14 B01001m15 B01001m16 B01001m17 B01001m18 B01001m19 
           B01001m37 B01001m38 B01001m39 B01001m40 B01001m41 B01001m42 B01001m43 );

    mPop65andOverYears_&_years. = 
      %moe_sum( var=B01001m20 B01001m21 B01001m22 B01001m23 B01001m24 B01001m25 
           B01001m44 B01001m45 B01001m46 B01001m47 B01001m48 B01001m49 );

  label
    TotPop_&_years. = "Total population, &_years_dash "
      NumHshlds_&_years. = "Total HHs, &_years_dash "
      NumFamilies_&_years. = "Family HHs, &_years_dash "
      PopUnder5Years_&_years. = "Persons under 5 years old, &_years_dash "
    PopUnder18Years_&_years. = "Persons under 18 years old, &_years_dash "
    Pop18_34Years_&_years. = "Persons 18-34 years old, &_years_dash "
    Pop35_64Years_&_years. = "Persons 35-64 years old, &_years_dash "
    Pop65andOverYears_&_years. = "Persons 65 years old and over, &_years_dash "
      mTotPop_&_years. = "Total population, MOE, &_years_dash "
      mNumHshlds_&_years. = "Total HHs, MOE, &_years_dash "
      mNumFamilies_&_years. = "Family HHs, MOE, &_years_dash "
      mPopUnder5Years_&_years. = "Persons under 5 years old, MOE, &_years_dash "
    mPopUnder18Years_&_years. = "Persons under 18 years old, MOE, &_years_dash "
    mPop18_34Years_&_years. = "Persons 18-34 years old, MOE, &_years_dash "
    mPop35_64Years_&_years. = "Persons 35-64 years old, MOE,&_years_dash "
    mPop65andOverYears_&_years. = "Persons 65 years old and over, MOE, &_years_dash "
    ;

    ** Population by race/ethnicity **;
    
    PopWithRace_&_years. = totpop_&_years.;
    PopBlackNonHispBridge_&_years. = B03002e4;
    PopWhiteNonHispBridge_&_years. = B03002e3;
    PopHisp_&_years. = B03002e12;
    PopAsianPINonHispBridge_&_years. = sum( B03002e6, B03002e7 );
    PopNativeAmNonHispBridge_&_years. = B03002e5;
    PopOtherNonHispBridge_&_years. = B03002e8;
    PopMultiracialNonHisp_&_years. = B03002e9;
    
    PopOtherRaceNonHispBridg_&_years. = PopWithRace_&_years. - 
      sum( PopBlackNonHispBridge_&_years., PopWhiteNonHispBridge_&_years., PopHisp_&_years., PopAsianPINonHispBridge_&_years. );

    mPopWithRace_&_years. = mtotpop_&_years.;
    mPopBlackNonHispBridge_&_years. = B03002m4;
    mPopWhiteNonHispBridge_&_years. = B03002m3;
    mPopHisp_&_years. = B03002m12;
    mPopAsianPINonHispBridge_&_years. = %moe_sum( var=B03002m6 B03002m7 );
    mPopNativeAmNonHispBr_&_years. = B03002m5;
    mPopOtherNonHispBridge_&_years. = B03002m8;
    mPopMultiracialNonHisp_&_years. = B03002m9;
    
    mPopOtherRaceNonHispBr_&_years. = 
      %moe_sum( var=B03002m5 B03002m8 B03002m9 );

    label
      PopWithRace_&_years. = "Total population for race/ethnicity, &_years_dash "
      PopBlackNonHispBridge_&_years. = "Non-Hispanic Black/African American population, &_years_dash "
      PopWhiteNonHispBridge_&_years. = "Non-Hispanic White population, &_years_dash "
      PopAsianPINonHispBridge_&_years. = "Non-Hispanic Asian, Hawaiian and other Pacific Islander pop., &_years_dash "
      PopHisp_&_years. = "Hispanic/Latino population, &_years_dash "
      PopNativeAmNonHispBridge_&_years. = "Non-Hispanic American Indian/Alaska Native population, &_years_dash "
      PopOtherNonHispBridge_&_years. = "Non-Hispanic other race population, &_years_dash "
      PopMultiracialNonHisp_&_years. = "Non-Hispanic multiracial population, &_years_dash "
      PopOtherRaceNonHispBridg_&_years. = "All remaining groups other than black, white, Hispanic, and Asian/PI, &_years_dash "
      mPopWithRace_&_years. = "Total population for race/ethnicity, MOE, &_years_dash "
      mPopBlackNonHispBridge_&_years. = "Non-Hispanic Black/African American population, MOE, &_years_dash "
      mPopWhiteNonHispBridge_&_years. = "Non-Hispanic White population, MOE, &_years_dash "
      mPopAsianPINonHispBridge_&_years. = "Non-Hispanic Asian, Hawaiian and other Pacific Islander pop., MOE, &_years_dash "
      mPopHisp_&_years. = "Hispanic/Latino population, MOE, &_years_dash "
      mPopNativeAmNonHispBr_&_years. = "Non-Hispanic American Indian/Alaska Native population, MOE, &_years_dash "
      mPopOtherNonHispBridge_&_years. = "Non-Hispanic other race population, MOE, &_years_dash "
      mPopMultiracialNonHisp_&_years. = "Non-Hispanic multiracial population, MOE, &_years_dash "
      mPopOtherRaceNonHispBr_&_years. = "All remaining groups other than black, white, Hispanic, and Asian/PI, MOE, &_years_dash "
    ;
    
    ** Population by race/ethnicity alone**;

  PopAloneB_&_years. = sum(B03002e4, B03002e14 );
  PopAloneW_&_years. = sum(B03002e3, B03002e13 );
  PopAloneH_&_years. = B03002e12;
  PopAloneA_&_years. = sum(B03002e6, B03002e7, B03002e16, B03002e17 );
  PopAloneI_&_years. = sum(B03002e5, B03002e15 );
  PopAloneO_&_years. = sum(B03002e8, B03002e18 );
  PopAloneM_&_years. = sum(B03002e9, B03002e19 );
  PopAloneIOM_&_years. = sum(B03002e5, B03002e15, B03002e8, B03002e18, B03002e9, B03002e19 );
  PopAloneAIOM_&_years. = sum(B03002e5, B03002e15, B03002e6, B03002e7, B03002e16, B03002e17, B03002e8, B03002e18, B03002e9, B03002e19 );
  mPopAloneB_&_years.  = %moe_sum( var=B03002m4 B03002m14 );
  mPopAloneW_&_years.  = %moe_sum( var=B03002m3 B03002m13 );
  mPopAloneH_&_years.  = B03002m12;
  mPopAloneA_&_years.  = %moe_sum( var=B03002m6 B03002m7 B03002m16 B03002m17 );
  mPopAloneI_&_years.  = %moe_sum( var=B03002m5 B03002m15 );
  mPopAloneO_&_years.  = %moe_sum( var=B03002m8 B03002m18 );
  mPopAloneM_&_years.  = %moe_sum( var=B03002m9 B03002m19 );
  mPopAloneIOM_&_years. = %moe_sum( var=B03002m5 B03002m15 B03002m8 B03002m18 B03002m9 B03002m19 );
  mPopAloneAIOM_&_years. = %moe_sum( var=B03002m5 B03002m15 B03002m6 B03002m7 B03002m16 B03002m17 B03002m8 B03002m18 B03002m9 B03002m19 );

  label
    
    PopAloneB_&_years. = "Black alone population, &_years_dash "
    PopAloneW_&_years. = "White alone population, &_years_dash "
    PopAloneH_&_years. = "Hispanic/Latino alone population, &_years_dash "
    PopAloneA_&_years. = "Asian alone and Native Hawaiian and Other Pacific Islander alone, &_years_dash "
    PopAloneI_&_years. = "American Indian and Alaska Native alone, &_years_dash "
    PopAloneO_&_years. = "Some other race alone, &_years_dash "
    PopAloneM_&_years. = "Two or more races alone, &_years_dash "
    PopAloneIOM_&_years. = "American Indian/Alaska Native, other race, two or more races, &_years_dash "
    PopAloneAIOM_&_years.  = "All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
    mPopAloneB_&_years. = "Black alone population, MOE, &_years_dash "
    mPopAloneW_&_years. = "White alone population, MOE, &_years_dash "
    mPopAloneH_&_years. = "Hispanic/Latino alone population, MOE, &_years_dash "
    mPopAloneA_&_years. = "Asian alone and Native Hawaiian and Other Pacific Islander alone, MOE, &_years_dash "
    mPopAloneI_&_years. = "American Indian and Alaska Native alone, MOE, &_years_dash "
    mPopAloneO_&_years. = "Some other race alone, MOE, &_years_dash "
    mPopAloneM_&_years. = "Two or more races alone, MOE, &_years_dash "
    mPopAloneIOM_&_years. = "American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
    mPopAloneAIOM_&_years. = "All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
    ;

     **Employment - Block group-level variables**;

  PopEmployedWorkers_&_years. = B08007e1;
    PopEmployedWorkInState_&_years. = B08007e2;
      PopEmployedWorkInCnty_&_years. = B08007e3;
      PopEmployedWorkOutCnty_&_years. = B08007e4;
    PopEmployedWorkOutState_&_years. = B08007e5;

    PopEmployedByInd_&_years. = C24030e1;
      PopEmployedAgric_&_years. = sum(C24030e3, C24030e30 );
      PopEmployedConstr_&_years. = sum(C24030e6, C24030e33 );
      PopEmployedManuf_&_years. = sum(C24030e7, C24030e34 );
      PopEmployedWhlsale_&_years. = sum(C24030e8, C24030e35 );
      PopEmployedRetail_&_years. = sum(C24030e9, C24030e36 );
      PopEmployedTransprt_&_years. = sum(C24030e10, C24030e37 );
      PopEmployedInfo_&_years. = sum(C24030e13, C24030e40 );
      PopEmployedFinance_&_years. = sum(C24030e14, C24030e41 );
      PopEmployedProfServ_&_years. = sum(C24030e17, C24030e44 );
      PopEmployedEduction_&_years. = sum(C24030e21, C24030e48 );
      PopEmployedArts_&_years. = sum(C24030e24, C24030e51 );
      PopEmployedOther_&_years. = sum(C24030e27, C24030e54 );
      PopEmployedPubAdmin_&_years. = sum(C24030e28, C24030e55 );

       PopEmployedByOcc_&_years. = C24010e1;
      PopEmployedMngmt_&_years. = sum(C24010e3, C24010e39 );
      PopEmployedServ_&_years. = sum(C24010e19, C24010e55 );
      PopEmployedSales_&_years. = sum(C24010e27, C24010e63 );
      PopEmployedNatRes_&_years. = sum(C24010e30, C24010e66 );
      PopEmployedProd_&_years. = sum(C24010e34, C24010e70 );

      PopEmployedByOccB_&_years. = C24010Be1;
        PopEmployedMngmtB_&_years. = sum(C24010Be3, C24010Be9 );
        PopEmployedServB_&_years. = sum(C24010Be4, C24010Be10 );
        PopEmployedSalesB_&_years. = sum(C24010Be5, C24010Be11 );
        PopEmployedNatResB_&_years. = sum(C24010Be6, C24010Be12 );
        PopEmployedProdB_&_years. = sum(C24010Be7, C24010Be13 );

      PopEmployedByOccW_&_years. = C24010He1;
        PopEmployedMngmtW_&_years. = sum(C24010He3, C24010He9 );
        PopEmployedServW_&_years. = sum(C24010He4, C24010He10 );
        PopEmployedSalesW_&_years. = sum(C24010He5, C24010He11 );
        PopEmployedNatResW_&_years. = sum(C24010He6, C24010He12 );
        PopEmployedProdW_&_years. = sum(C24010He7, C24010He13 );

      PopEmployedByOccH_&_years. = C24010Ie1;
        PopEmployedMngmtH_&_years. = sum(C24010Ie3, C24010Ie9 );
        PopEmployedServH_&_years. = sum(C24010Ie4, C24010Ie10 );
        PopEmployedSalesH_&_years. = sum(C24010Ie5, C24010Ie11 );
        PopEmployedNatResH_&_years. = sum(C24010Ie6, C24010Ie12 );
        PopEmployedProdH_&_years. = sum(C24010Ie7, C24010Ie13 );

      PopEmployedByOccA_&_years. = sum(C24010De1, C24010Ee1);
        PopEmployedMngmtA_&_years. = sum(C24010De3, C24010De9, C24010Ee3, C24010Ee9 );
        PopEmployedServA_&_years. = sum(C24010De4, C24010De10, C24010Ee4, C24010Ee10 );
        PopEmployedSalesA_&_years. = sum(C24010De5, C24010De11, C24010Ee5, C24010Ee11 );
        PopEmployedNatResA_&_years. = sum(C24010De6, C24010De12, C24010Ee6, C24010Ee12 );
        PopEmployedProdA_&_years. = sum(C24010De7, C24010De13, C24010Ee7, C24010Ee13 );

      PopEmployedByOccIOM_&_years. = sum(C24010Ce1, C24010Fe1, C24010Ge1 );
        PopEmployedMngmtIOM_&_years. = sum(C24010Ce3, C24010Ce9, C24010Fe3, C24010Fe9, C24010Ge3, C24010Ge9);
        PopEmployedServIOM_&_years. = sum(C24010Ce4, C24010Ce10, C24010Fe4, C24010Fe10, C24010Ge4, C24010Ge10);
        PopEmployedSalesIOM_&_years. = sum(C24010Ce5, C24010Ce11, C24010Fe5, C24010Fe11, C24010Ge5, C24010Ge11);
        PopEmployedNatResIOM_&_years. = sum(C24010Ce6, C24010Ce12, C24010Fe6, C24010Fe12, C24010Ge6, C24010Ge12);
        PopEmployedProdIOM_&_years. = sum(C24010Ce7, C24010Ce13, C24010Fe7, C24010Fe13, C24010Ge7, C24010Ge13);

      PopEmployedByOccAIOM_&_years. = sum(C24010Ce1, C24010De1, C24010Ee1, C24010Fe1, C24010Ge1 );
        PopEmployedMngmtAIOM_&_years. = 
          sum(C24010Ce3, C24010Ce9, C24010De3, C24010De9, C24010Ee3, C24010Ee9, 
            C24010Fe3, C24010Fe9, C24010Ge3, C24010Ge9 );
        PopEmployedServAIOM_&_years. = 
          sum(C24010Ce4, C24010Ce10, C24010De4, C24010De10, C24010Ee4, C24010Ee10, 
            C24010Fe4, C24010Fe10, C24010Ge4, C24010Ge10 );
        PopEmployedSalesAIOM_&_years. = 
          sum(C24010Ce5, C24010Ce11, C24010De5, C24010De11, C24010Ee5, C24010Ee11, 
            C24010Fe5, C24010Fe11, C24010Ge5, C24010Ge11 );
        PopEmployedNatResAIOM_&_years. = 
          sum(C24010Ce6, C24010Ce12, C24010De6, C24010De12, C24010Ee6, C24010Ee12, 
            C24010Fe6, C24010Fe12, C24010Ge6, C24010Ge12 );
        PopEmployedProdAIOM_&_years. = 
          sum(C24010Ce7, C24010Ce13, C24010De7, C24010De13, C24010Ee7, C24010Ee13, 
            C24010Fe7, C24010Fe13, C24010Ge7, C24010Ge13 );

/*gender*/

			
        PopEmployedByOcc_M_&_years. = C24010e2;
        PopEmployedMngmt_M_&_years. = C24010e3;
        PopEmployedServ_M_&_years. = C24010e19;
        PopEmployedSales_M_&_years. = C24010e27;
        PopEmployedNatRes_M_&_years. = C24010e30;
        PopEmployedProd_M_&_years. = C24010e34;
      	PopEmployedByOcc_F_&_years. = C24010e38;
        PopEmployedMngmt_F_&_years. = C24010e39;
        PopEmployedServ_F_&_years. = C24010e55;
        PopEmployedSales_F_&_years. = C24010e63;
        PopEmployedNatRes_F_&_years. = C24010e66;
        PopEmployedProd_F_&_years. = C24010e70;

        PopEmployedByOccB_M_&_years. = C24010Be2;
        PopEmployedMngmtB_M_&_years. = C24010Be3;
        PopEmployedServB_M_&_years. = C24010Be4;
        PopEmployedSalesB_M_&_years. = C24010Be5;
        PopEmployedNatResB_M_&_years. = C24010Be6;
        PopEmployedProdB_M_&_years. = C24010Be7;

		PopEmployedByOccB_F_&_years. = C24010Be8;
        PopEmployedMngmtB_F_&_years. = C24010Be9;
        PopEmployedServB_F_&_years. = C24010Be10;
        PopEmployedSalesB_F_&_years. = C24010Be11;
        PopEmployedNatResB_F_&_years. = C24010Be12;
        PopEmployedProdB_F_&_years. = C24010Be13;

      PopEmployedByOccW_M_&_years. = C24010He2;
        PopEmployedMngmtW_M_&_years. = C24010He3;
        PopEmployedServW_M_&_years. = C24010He4;
        PopEmployedSalesW_M_&_years. = C24010He5;
        PopEmployedNatResW_M_&_years. = C24010He6;
        PopEmployedProdW_M_&_years. = C24010He7;

      PopEmployedByOccW_F_&_years. = C24010He8;
        PopEmployedMngmtW_F_&_years. = C24010He9;
        PopEmployedServW_F_&_years. = C24010He10;
        PopEmployedSalesW_F_&_years. = C24010He11;
        PopEmployedNatResW_F_&_years. = C24010He12;
        PopEmployedProdW_F_&_years. = C24010He13;

      PopEmployedByOccH_M_&_years. = C24010Ie2;
        PopEmployedMngmtH_M_&_years. = C24010Ie3;
        PopEmployedServH_M_&_years. = C24010Ie4;
        PopEmployedSalesH_M_&_years. = C24010Ie5;
        PopEmployedNatResH_M_&_years. = C24010Ie6;
        PopEmployedProdH_M_&_years. = C24010Ie7;

      PopEmployedByOccH_F_&_years. = C24010Ie8;
        PopEmployedMngmtH_F_&_years. = C24010Ie9;
        PopEmployedServH_F_&_years. = C24010Ie10;
        PopEmployedSalesH_F_&_years. = C24010Ie11;
        PopEmployedNatResH_F_&_years. = C24010Ie12;
        PopEmployedProdH_F_&_years. = C24010Ie13;

      PopEmployedByOccA_M_&_years. = sum(C24010De2, C24010Ee2);
        PopEmployedMngmtA_M_&_years. = sum( C24010De3,  C24010Ee3 );
        PopEmployedServA_M_&_years. = sum(C24010De4, C24010Ee4 );
        PopEmployedSalesA_M_&_years. = sum(C24010De5, C24010Ee5 );
        PopEmployedNatResA_M_&_years. = sum(C24010De6, C24010Ee6 );
        PopEmployedProdA_M_&_years. = sum(C24010De7, C24010Ee7 );

      PopEmployedByOccA_F_&_years. = sum(C24010De8, C24010Ee8);
        PopEmployedMngmtA_F_&_years. = sum(C24010De9, C24010Ee9 );
        PopEmployedServA_F_&_years. = sum(C24010De10, C24010Ee10 );
        PopEmployedSalesA_F_&_years. = sum(C24010De11, C24010Ee11 );
        PopEmployedNatResA_F_&_years. = sum(C24010De12, C24010Ee12 );
        PopEmployedProdA_F_&_years. = sum(C24010De13, C24010Ee13 );

      PopEmployedByOccIOM_M_&_years. = sum(C24010Ce2, C24010Fe2, C24010Ge2 );
        PopEmployedMngmtIOM_M_&_years. = sum(C24010Ce3, C24010Fe3,C24010Ge3);
        PopEmployedServIOM_M_&_years. = sum(C24010Ce4, C24010Fe4, C24010Ge4);
        PopEmployedSalesIOM_M_&_years. = sum(C24010Ce5, C24010Fe5, C24010Ge5);
        PopEmployedNatResIOM_M_&_years. = sum(C24010Ce6, C24010Fe6, C24010Ge6 );
        PopEmployedProdIOM_M_&_years. = sum(C24010Ce7, C24010Fe7, C24010Ge7);

      PopEmployedByOccIOM_F_&_years. = sum(C24010Ce8, C24010Fe8, C24010Ge8 );
        PopEmployedMngmtIOM_F_&_years. = sum(C24010Ce9, C24010Fe9, C24010Ge9);
        PopEmployedServIOM_F_&_years. = sum(C24010Ce10, C24010Fe10, C24010Ge10 );
        PopEmployedSalesIOM_F_&_years. = sum(C24010Ce11, C24010Fe11, C24010Ge11 );
        PopEmployedNatResIOM_F_&_years. = sum(C24010Ce12, C24010Fe12, C24010Ge12);
        PopEmployedProdIOM_F_&_years. = sum(C24010Ce13, C24010Fe13, C24010Ge13 );

      PopEmployedByOccAIOM_M_&_years. = sum(C24010De2, C24010Ee2, C24010Ce2, C24010Fe2, C24010Ge2  );
        PopEmployedMngmtAIOM_M_&_years. = 
          sum(C24010De3,  C24010Ee3, C24010Ce3, C24010Fe3,C24010Ge3 );
        PopEmployedServAIOM_M_&_years. = 
          sum(C24010De4, C24010Ee4, C24010Ce4, C24010Fe4, C24010Ge4 );
        PopEmployedSalesAIOM_M_&_years. = 
          sum(C24010De5, C24010Ee5, C24010Ce5, C24010Fe5, C24010Ge5);
        PopEmployedNatResAIOM_M_&_years. = 
          sum(C24010De6, C24010Ee6, C24010Ce6, C24010Fe6, C24010Ge6 );
        PopEmployedProdAIOM_M_&_years. = 
          sum(C24010De7, C24010Ee7, C24010Ce7, C24010Fe7, C24010Ge7 );

      PopEmployedByOccAIOM_F_&_years. = sum(C24010De8, C24010Ee8, C24010Ce8, C24010Fe8, C24010Ge8 );
        PopEmployedMngmtAIOM_F_&_years. = 
          sum(C24010De9, C24010Ee9, C24010Ce9, C24010Fe9, C24010Ge9 );
        PopEmployedServAIOM_F_&_years. = 
          sum(C24010De10, C24010Ee10, C24010Ce10, C24010Fe10, C24010Ge10 );
        PopEmployedSalesAIOM_F_&_years. = 
          sum(C24010e11, C24010Ee11, C24010Ce11, C24010Fe11, C24010Ge11 );
        PopEmployedNatResAIOM_F_&_years. = 
          sum(C24010De12, C24010Ee12, C24010Ce12, C24010Fe12, C24010Ge12);
        PopEmployedProdAIOM_F_&_years. = 
          sum(C24010De13, C24010Ee13, C24010Ce13, C24010Fe13, C24010Ge13  );

    mPopEmployedWorkers_&_years. = B08007m1;
      mPopEmployedWorkInState_&_years. = B08007m2;
      mPopEmployedWorkInCnty_&_years. = B08007m3;
      mPopEmployedWorkOutCnty_&_years. = B08007m4;
      mPopEmployedWorkOutState_&_years. = B08007m5;

    mPopEmployedByInd_&_years. = C24030m1;
      mPopEmployedAgric_&_years. = %moe_sum( var=C24030m3 C24030m30 );
      mPopEmployedConstr_&_years. = %moe_sum( var=C24030m6 C24030m33 );
      mPopEmployedManuf_&_years. = %moe_sum( var=C24030m7 C24030m34 );
      mPopEmployedWhlsale_&_years. = %moe_sum( var=C24030m8 C24030m35 );
      mPopEmployedRetail_&_years. = %moe_sum( var=C24030m9 C24030m36 );
      mPopEmployedTransprt_&_years. = %moe_sum( var=C24030m10 C24030m37 );
      mPopEmployedInfo_&_years. = %moe_sum( var=C24030m13 C24030m40 );
      mPopEmployedFinance_&_years. = %moe_sum( var=C24030m14 C24030m41 );
      mPopEmployedProfServ_&_years. = %moe_sum( var=C24030m17 C24030m44 );
      mPopEmployedEduction_&_years. = %moe_sum( var=C24030m21 C24030m48 );
      mPopEmployedArts_&_years. = %moe_sum( var=C24030m24 C24030m51 );
      mPopEmployedOther_&_years. = %moe_sum( var=C24030m27 C24030m54 );
      mPopEmployedPubAdmin_&_years. = %moe_sum( var=C24030m28 C24030m55 );

     mPopEmployedByOcc_&_years. = C24010m1;
      mPopEmployedMngmt_&_years. = %moe_sum( var=C24010m3 C24010m39);
      mPopEmployedServ_&_years. = %moe_sum( var=C24010m19 C24010m55);
      mPopEmployedSales_&_years. = %moe_sum( var=C24010m27 C24010m63);
      mPopEmployedNatRes_&_years. = %moe_sum( var=C24010m30 C24010m66);
      mPopEmployedProd_&_years. = %moe_sum( var=C24010m34 C24010m70);

      mPopEmployedByOccB_&_years. = C24010Bm1;
        mPopEmployedMngmtB_&_years. = %moe_sum( var=C24010Bm3 C24010Bm9);
        mPopEmployedServB_&_years. = %moe_sum( var=C24010Bm4 C24010Bm10);
        mPopEmployedSalesB_&_years. = %moe_sum( var=C24010Bm5 C24010Bm11);
        mPopEmployedNatResB_&_years. = %moe_sum( var=C24010Bm6 C24010Bm12);
        mPopEmployedProdB_&_years. = %moe_sum( var=C24010Bm7 C24010Bm13);

      mPopEmployedByOccW_&_years. = C24010Hm1;
        mPopEmployedMngmtW_&_years. = %moe_sum( var=C24010Hm3 C24010Hm9);
        mPopEmployedServW_&_years. = %moe_sum( var=C24010Hm4 C24010Hm10);
        mPopEmployedSalesW_&_years. = %moe_sum( var=C24010Hm5 C24010Hm11);
        mPopEmployedNatResW_&_years. =  %moe_sum( var=C24010Hm6 C24010Hm12);
        mPopEmployedProdW_&_years. = %moe_sum( var=C24010Hm7 C24010Hm13);

      mPopEmployedByOccH_&_years. = C24010Im1;
        mPopEmployedMngmtH_&_years. = %moe_sum( var=C24010Im3 C24010Im9);
        mPopEmployedServH_&_years. = %moe_sum( var=C24010Im4 C24010Im10);
        mPopEmployedSalesH_&_years. = %moe_sum( var=C24010Im5 C24010Im11);
        mPopEmployedNatResH_&_years. = %moe_sum( var=C24010Im6 C24010Im12);
        mPopEmployedProdH_&_years. = %moe_sum( var=C24010Im7 C24010Im13);

      mPopEmployedByOccA_&_years. = %moe_sum( var=C24010Dm1 C24010Em1);
        mPopEmployedMngmtA_&_years. = %moe_sum( var=C24010Dm3 C24010Dm9 C24010Em3 C24010Em9);
        mPopEmployedServA_&_years. = %moe_sum( var=C24010Dm4 C24010Dm10 C24010Em4 C24010Em10);
        mPopEmployedSalesA_&_years. = %moe_sum( var=C24010Dm5 C24010Dm11 C24010Em5 C24010Em11);
        mPopEmployedNatResA_&_years. = %moe_sum( var=C24010Dm6 C24010Dm12 C24010Em6 C24010Em12);
        mPopEmployedProdA_&_years. = %moe_sum( var=C24010Dm7 C24010Dm13 C24010Em7 C24010Em13);

      mPopEmployedByOccIOM_&_years. = %moe_sum( var=C24010Cm1 C24010Fm1 C24010Gm1);
        mPopEmployedMngmtIOM_&_years. = %moe_sum( var=C24010Cm3 C24010Cm9 C24010Fm3 C24010Fm9 C24010Gm3 C24010Gm9);
        mPopEmployedServIOM_&_years. = %moe_sum( var=C24010Cm4 C24010Cm10 C24010Fm4 C24010Fm10 C24010Gm4 C24010Gm10);
        mPopEmployedSalesIOM_&_years. = %moe_sum( var=C24010Cm5 C24010Cm11 C24010Fm5 C24010Fm11 C24010Gm5 C24010Gm11);
        mPopEmployedNatResIOM_&_years. = %moe_sum( var=C24010Cm6 C24010Cm12 C24010Cm6 C24010Cm12 C24010Fm6 C24010Fm12 C24010Gm6 C24010Gm12);
        mPopEmployedProdIOM_&_years. = %moe_sum( var=C24010Cm7 C24010Cm13 C24010Fm7 C24010Fm13 C24010Gm7 C24010Gm13);

      mPopEmployedByOccAIOM_&_years. = %moe_sum( var=C24010Cm1 C24010Dm1 C24010Em1 C24010Fm1 C24010Gm1);
        mPopEmployedMngmtAIOM_&_years. = %moe_sum( var=C24010Cm3 C24010Cm9 C24010Dm3 C24010Dm9 C24010Em3 C24010Em9 C24010Fm3 C24010Fm9 C24010Gm3 C24010Gm9);
        mPopEmployedServAIOM_&_years. = %moe_sum( var=C24010Cm4 C24010Cm10 C24010Dm4 C24010Dm10 C24010Em4 C24010Em10 C24010Fm4 C24010Fm10 C24010Gm4 C24010Gm10);
        mPopEmployedSalesAIOM_&_years. = %moe_sum( var=C24010Cm5 C24010Cm11 C24010Dm5 C24010Dm11 C24010Em5 C24010Em11 C24010Fm5 C24010Fm11 C24010Gm5 C24010Gm11);
        mPopEmployedNatResAIOM_&_years. = %moe_sum( var=C24010Cm6 C24010Cm12 C24010Cm6 C24010Cm12 C24010Dm6 C24010Dm12 C24010Em6 C24010Em12 C24010Fm6 C24010Fm12 C24010Gm6 C24010Gm12);
        mPopEmployedProdAIOM_&_years. = %moe_sum( var=C24010Cm7 C24010Cm13 C24010Dm7 C24010Dm13 C24010Em7 C24010Em13 C24010Fm7 C24010Fm13 C24010Gm7 C24010Gm13);


/*gender*/

        mPopEmployedByOcc_M_&_years. = C24010m2;
        mPopEmployedMngmt_M_&_years. = C24010m3;
        mPopEmployedServ_M_&_years. = C24010m19;
        mPopEmployedSales_M_&_years. = C24010m27;
        mPopEmployedNatRes_M_&_years. = C24010m30;
        mPopEmployedProd_M_&_years. = C24010m34;

      mPopEmployedByOcc_F_&_years. = C24010m38;
        mPopEmployedMngmt_F_&_years. = C24010m39;
        mPopEmployedServ_F_&_years. = C24010m55;
        mPopEmployedSales_F_&_years. = C24010m63;
        mPopEmployedNatRes_F_&_years. = C24010m66;
        mPopEmployedProd_F_&_years. = C24010m70;

        mPopEmployedByOccB_M_&_years. = C24010Bm2;
        mPopEmployedMngmtB_M_&_years. = C24010Bm3;
        mPopEmployedServB_M_&_years. = C24010Bm4;
        mPopEmployedSalesB_M_&_years. = C24010Bm5;
        mPopEmployedNatResB_M_&_years. = C24010Bm6;
        mPopEmployedProdB_M_&_years. = C24010Bm7;

      mPopEmployedByOccB_F_&_years. = C24010Bm8;
        mPopEmployedMngmtB_F_&_years. = C24010Bm9;
        mPopEmployedServB_F_&_years. = C24010Bm10;
        mPopEmployedSalesB_F_&_years. = C24010Bm11;
        mPopEmployedNatResB_F_&_years. = C24010Bm12;
        mPopEmployedProdB_F_&_years. = C24010Bm13;

      mPopEmployedByOccW_M_&_years. = C24010Hm2;
        mPopEmployedMngmtW_M_&_years. = C24010Hm3;
        mPopEmployedServW_M_&_years. = C24010Hm4;
        mPopEmployedSalesW_M_&_years. = C24010Hm5;
        mPopEmployedNatResW_M_&_years. = C24010Hm6;
        mPopEmployedProdW_M_&_years. = C24010Hm7;


      mPopEmployedByOccW_F_&_years. = C24010Hm8;
        mPopEmployedMngmtW_F_&_years. = C24010Hm9;
        mPopEmployedServW_F_&_years. = C24010Hm10;
        mPopEmployedSalesW_F_&_years. = C24010Hm11;
        mPopEmployedNatResW_F_&_years. = C24010Hm12;
        mPopEmployedProdW_F_&_years. = C24010Hm13;

      mPopEmployedByOccH_M_&_years. = C24010Im2;
        mPopEmployedMngmtH_M_&_years. = C24010Im3;
        mPopEmployedServH_M_&_years. = C24010Im4;
        mPopEmployedSalesH_M_&_years. = C24010Im5;
        mPopEmployedNatResH_M_&_years. = C24010Im6;
        mPopEmployedProdH_M_&_years. = C24010Im7;

      mPopEmployedByOccH_F_&_years. = C24010Im8;
        mPopEmployedMngmtH_F_&_years. = C24010Im9;
        mPopEmployedServH_F_&_years. = C24010Im10;
        mPopEmployedSalesH_F_&_years. = C24010Im11;
        mPopEmployedNatResH_F_&_years. = C24010Im12;
        mPopEmployedProdH_F_&_years. = C24010Im13;

       mPopEmployedByOccA_M_&_years. = %moe_sum( var=C24010Dm2 C24010Em2);
        mPopEmployedMngmtA_M_&_years. = %moe_sum( var= C24010Dm3  C24010Em3 );
        mPopEmployedServA_M_&_years. = %moe_sum( var=C24010Dm4 C24010Em4 );
        mPopEmployedSalesA_M_&_years. = %moe_sum( var=C24010Dm5 C24010Em5 );
        mPopEmployedNatResA_M_&_years. = %moe_sum( var=C24010Dm6 C24010Em6 );
        mPopEmployedProdA_M_&_years. = %moe_sum( var=C24010Dm7 C24010Em7 );

      mPopEmployedByOccA_F_&_years. = %moe_sum( var=C24010Dm8 C24010Em8);
        mPopEmployedMngmtA_F_&_years. = %moe_sum( var=C24010Dm9 C24010Em9 );
        mPopEmployedServA_F_&_years. = %moe_sum( var=C24010Dm10 C24010Em10 );
        mPopEmployedSalesA_F_&_years. = %moe_sum( var=C24010Dm11 C24010Em11 );
        mPopEmployedNatResA_F_&_years. = %moe_sum( var=C24010Dm12 C24010Em12 );
        mPopEmployedProdA_F_&_years. = %moe_sum( var=C24010Dm13 C24010Em13 );

      mPopEmployedByOccIOM_M_&_years. = %moe_sum( var=C24010Cm2 C24010Fm2 C24010Gm2 );
        mPopEmployedMngmtIOM_M_&_years. = %moe_sum( var=C24010Cm3 C24010Fm3 C24010Gm3);
        mPopEmployedServIOM_M_&_years. = %moe_sum( var=C24010Cm4 C24010Fm4 C24010Gm4);
        mPopEmployedSalesIOM_M_&_years. = %moe_sum( var=C24010Cm5 C24010Fm5 C24010Gm5);
        mPopEmployedNatResIOM_M_&_years. = %moe_sum( var=C24010Cm6 C24010Fm6 C24010Gm6 );
        mPopEmployedProdIOM_M_&_years. = %moe_sum( var=C24010Cm7 C24010Fm7 C24010Gm7);

      mPopEmployedByOccIOM_F_&_years. = %moe_sum( var=C24010Cm8 C24010Fm8 C24010Gm8 );
        mPopEmployedMngmtIOM_F_&_years. = %moe_sum( var=C24010Cm9 C24010Fm9 C24010Gm9);
        mPopEmployedServIOM_F_&_years. = %moe_sum( var=C24010Cm10 C24010Fm10 C24010Gm10 );
        mPopEmployedSalesIOM_F_&_years. = %moe_sum( var=C24010Cm11 C24010Fm11 C24010Gm11 );
        mPopEmployedNatResIOM_F_&_years. = %moe_sum( var=C24010Cm12 C24010Fm12 C24010Gm12);
        mPopEmployedProdIOM_F_&_years. = %moe_sum( var=C24010Cm13 C24010Fm13 C24010Gm13 );

      mPopEmployedByOccAIOM_M_&_years. = %moe_sum( var=C24010Dm2 C24010Em2 C24010Cm2 C24010Fm2 C24010Gm2  );
        mPopEmployedMngmtAIOM_M_&_years. = 
          %moe_sum( var=C24010Dm3  C24010Em3 C24010Cm3 C24010Fm3 C24010Gm3 );
        mPopEmployedServAIOM_M_&_years. = 
          %moe_sum( var=C24010Dm4 C24010Em4 C24010Cm4 C24010Fm4 C24010Gm4 );
        mPopEmployedSalesAIOM_M_&_years. = 
          %moe_sum( var=C24010De5 C24010Em5 C24010Cm5 C24010Fm5 C24010Gm5);
        mPopEmployedNatResAIOM_M_&_years. = 
          %moe_sum( var=C24010Dm6 C24010Em6 C24010Cm6 C24010Fm6 C24010Gm6 );
        mPopEmployedProdAIOM_M_&_years. = 
          %moe_sum( var=C24010Dm7 C24010Em7 C24010Cm7 C24010Fm7 C24010Gm7 );

      mPopEmployedByOccAIOM_F_&_years. = %moe_sum( var=C24010Dm8 C24010Em8 C24010Cm8 C24010Fm8 C24010Gm8 );
        mPopEmployedMngmtAIOM_F_&_years. = 
          %moe_sum( var=C24010Dm9 C24010Em9 C24010Cm9 C24010Fm9 C24010Gm9 );
        mPopEmployedServAIOM_F_&_years. = 
          %moe_sum( var=C24010Dm10 C24010Em10 C24010Cm10 C24010Fm10 C24010Gm10 );
        mPopEmployedSalesAIOM_F_&_years. = 
          %moe_sum( var=C24010m11 C24010Em11 C24010Cm11 C24010Fm11 C24010Gm11 );
        mPopEmployedNatResAIOM_F_&_years. = 
          %moe_sum( var=C24010Dm12 C24010Em12 C24010Cm12 C24010Fm12 C24010Gm12);
        mPopEmployedProdAIOM_F_&_years. = 
          %moe_sum( var=C24010Dm13 C24010Em13 C24010Cm13 C24010Fm13 C24010Gm13  );


  label
    PopEmployedWorkers_&_years. = "Workers 16+ years, &_years_dash "
      PopEmployedWorkInState_&_years. = "Workers 16+ years who worked in state of residence, &_years_dash "
      PopEmployedWorkInCnty_&_years. = "Workers 16+ years who worked in county of residence, &_years_dash "
      PopEmployedWorkOutCnty_&_years. = "Workers 16+ years who worked outside county of residence, &_years_dash "
      PopEmployedWorkOutState_&_years. = "Workers 16+ years who worked outside state of residence, &_years_dash "
    PopEmployedByInd_&_years. = "Persons 16+ years old employed in civilian industries, &_years_dash "
      PopEmployedAgric_&_years. = "Persons 16+ years old employed in agriculture, forestry, fishing and hunting, and mining, &_years_dash "
      PopEmployedConstr_&_years. = "Persons 16+ years old employed in construction, &_years_dash "
      PopEmployedManuf_&_years. = "Persons 16+ years old employed in manufacturing, &_years_dash "
      PopEmployedWhlsale_&_years. = "Persons 16+ years old employed in wholesale trade, &_years_dash "
      PopEmployedRetail_&_years. = "Persons 16+ years old employed in retail trade, &_years_dash "
      PopEmployedTransprt_&_years. = "Persons 16+ years old employed in transportation and warehousing, and utilities, &_years_dash "
      PopEmployedInfo_&_years. = "Persons 16+ years old employed in information, &_years_dash "
      PopEmployedFinance_&_years. = "Persons 16+ years old employed in finance and insurance, and real estate and rental and leasing, &_years_dash "
      PopEmployedProfServ_&_years. = "Persons 16+ years old employed in professional, scientific, and management, and administrative and waste management services, &_years_dash "
      PopEmployedEduction_&_years. = "Persons 16+ years old employed in educational services, and health care and social assistance, &_years_dash "
      PopEmployedArts_&_years. = "Persons 16+ years old employed in arts, entertainment, and recreation, and accommodation and food services, &_years_dash "
      PopEmployedOther_&_years. = "Persons 16+ years old employed in other services, except public administration, &_years_dash "
      PopEmployedPubAdmin_&_years. = "Persons 16+ years old employed in public administration, &_years_dash "
    PopEmployedByOcc_&_years. = "Persons 16+ years old employed in civilian occupations, &_years_dash "
      PopEmployedMngmt_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, &_years_dash "
      PopEmployedServ_&_years. = "Persons 16+ years old employed in service occupations, &_years_dash "
      PopEmployedSales_&_years. = "Persons 16+ years old employed in sales and office occupations, &_years_dash "
      PopEmployedNatRes_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, &_years_dash "
      PopEmployedProd_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, &_years_dash "
    PopEmployedByOccB_&_years. = "Persons 16+ years old employed in civilian occupations, Black/African American, &_years_dash "
      PopEmployedMngmtB_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, Black/African American, &_years_dash "
      PopEmployedServB_&_years. = "Persons 16+ years old employed in service occupations, Black/African American, &_years_dash "
      PopEmployedSalesB_&_years. = "Persons 16+ years old employed in sales and office occupations, Black/African American, &_years_dash "
      PopEmployedNatResB_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, Black/African American, &_years_dash "
      PopEmployedProdB_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, Black/African American, &_years_dash "
    PopEmployedByOccW_&_years. = "Persons 16+ years old employed in civilian occupations, Non-Hispanic White, &_years_dash "
      PopEmployedMngmtW_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, Non-Hispanic White, &_years_dash "
      PopEmployedServW_&_years. = "Persons 16+ years old employed in service occupations, Non-Hispanic White, &_years_dash "
      PopEmployedSalesW_&_years. = "Persons 16+ years old employed in sales and office occupations, Non-Hispanic White, &_years_dash "
      PopEmployedNatResW_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, Non-Hispanic White, &_years_dash "
      PopEmployedProdW_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, Non-Hispanic White, &_years_dash "
    PopEmployedByOccH_&_years. = "Persons 16+ years old employed in civilian occupations, Hispanic/Latino, &_years_dash "
      PopEmployedMngmtH_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, Hispanic/Latino, &_years_dash "
      PopEmployedServH_&_years. = "Persons 16+ years old employed in service occupations, Hispanic/Latino, &_years_dash "
      PopEmployedSalesH_&_years. = "Persons 16+ years old employed in sales and office occupations, Hispanic/Latino, &_years_dash "
      PopEmployedNatResH_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, Hispanic/Latino, &_years_dash "
      PopEmployedProdH_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, Hispanic/Latino, &_years_dash "
    PopEmployedByOccA_&_years. = "Persons 16+ years old employed in civilian occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
      PopEmployedMngmtA_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
      PopEmployedServA_&_years. = "Persons 16+ years old employed in service occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
      PopEmployedSalesA_&_years. = "Persons 16+ years old employed in sales and office occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
      PopEmployedNatResA_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
      PopEmployedProdA_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
    PopEmployedByOccIOM_&_years. = "Persons 16+ years old employed in civilian occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
      PopEmployedMngmtIOM_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
      PopEmployedServIOM_&_years. = "Persons 16+ years old employed in service occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
      PopEmployedSalesIOM_&_years. = "Persons 16+ years old employed in sales and office occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
      PopEmployedNatResIOM_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
      PopEmployedProdIOM_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
    PopEmployedByOccAIOM_&_years. = "Persons 16+ years old employed in civilian occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
      PopEmployedMngmtAIOM_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
      PopEmployedServAIOM_&_years. = "Persons 16+ years old employed in service occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
      PopEmployedSalesAIOM_&_years. = "Persons 16+ years old employed in sales and office occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
      PopEmployedNatResAIOM_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
      PopEmployedProdAIOM_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
    mPopEmployedWorkers_&_years. = "Workers 16+ years, MOE, &_years_dash "
      mPopEmployedWorkInState_&_years. = "Workers 16+ years who worked in state of residence, MOE, &_years_dash "
      mPopEmployedWorkInCnty_&_years. = "Workers 16+ years who worked in county of residence, MOE, &_years_dash "
      mPopEmployedWorkOutCnty_&_years. = "Workers 16+ years who worked outside county of residence, MOE, &_years_dash "
      mPopEmployedWorkOutState_&_years. = "Workers 16+ years who worked outside state of residence, MOE, &_years_dash "
    mPopEmployedByInd_&_years. = "Persons 16+ years old employed in civilian industries, MOE, &_years_dash "
      mPopEmployedAgric_&_years. = "Persons 16+ years old employed in agriculture, forestry, fishing and hunting, and mining, MOE, &_years_dash "
      mPopEmployedConstr_&_years. = "Persons 16+ years old employed in construction, MOE, &_years_dash "
      mPopEmployedManuf_&_years. = "Persons 16+ years old employed in manufacturing, MOE, &_years_dash "
      mPopEmployedWhlsale_&_years. = "Persons 16+ years old employed in wholesale trade, MOE, &_years_dash "
      mPopEmployedRetail_&_years. = "Persons 16+ years old employed in retail trade, MOE, &_years_dash "
      mPopEmployedTransprt_&_years. = "Persons 16+ years old employed in transportation and warehousing, and utilities, MOE, &_years_dash "
      mPopEmployedInfo_&_years. = "Persons 16+ years old employed in information, MOE, &_years_dash "
      mPopEmployedFinance_&_years. = "Persons 16+ years old employed in finance and insurance, and real estate and rental and leasing, MOE, &_years_dash "
      mPopEmployedProfServ_&_years. = "Persons 16+ years old employed in professional, scientific, and management, and administrative and waste management services, MOE, &_years_dash "
      mPopEmployedEduction_&_years. = "Persons 16+ years old employed in educational services, and health care and social assistance, MOE, &_years_dash "
      mPopEmployedArts_&_years. = "Persons 16+ years old employed in arts, entertainment, and recreation, and accommodation and food services, MOE, &_years_dash "
      mPopEmployedOther_&_years. = "Persons 16+ years old employed in other services, except public administration, MOE, &_years_dash "
      mPopEmployedPubAdmin_&_years. = "Persons 16+ years old employed in public administration, MOE, &_years_dash "
    mPopEmployedByOcc_&_years. = "Persons 16+ years old employed in civilian occupations, MOE, &_years_dash "
      mPopEmployedMngmt_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, MOE, &_years_dash "
      mPopEmployedServ_&_years. = "Persons 16+ years old employed in service occupations, MOE, &_years_dash "
      mPopEmployedSales_&_years. = "Persons 16+ years old employed in sales and office occupations, MOE, &_years_dash "
      mPopEmployedNatRes_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, MOE, &_years_dash "
      mPopEmployedProd_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, MOE, &_years_dash "
    mPopEmployedByOccB_&_years. = "Persons 16+ years old employed in civilian occupations, Black/African American, MOE, &_years_dash "
      mPopEmployedMngmtB_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, Black/African American, MOE, &_years_dash "
      mPopEmployedServB_&_years. = "Persons 16+ years old employed in service occupations, Black/African American, MOE, &_years_dash "
      mPopEmployedSalesB_&_years. = "Persons 16+ years old employed in sales and office occupations, Black/African American, MOE, &_years_dash "
      mPopEmployedNatResB_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, Black/African American, MOE, &_years_dash "
      mPopEmployedProdB_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, Black/African American, MOE, &_years_dash "
    mPopEmployedByOccW_&_years. = "Persons 16+ years old employed in civilian occupations, Non-Hispanic White, MOE, &_years_dash "
      mPopEmployedMngmtW_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, Non-Hispanic White, MOE, &_years_dash "
      mPopEmployedServW_&_years. = "Persons 16+ years old employed in service occupations, Non-Hispanic White, MOE, &_years_dash "
      mPopEmployedSalesW_&_years. = "Persons 16+ years old employed in sales and office occupations, Non-Hispanic White, MOE, &_years_dash "
      mPopEmployedNatResW_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, Non-Hispanic White, MOE, &_years_dash "
      mPopEmployedProdW_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, Non-Hispanic White, MOE, &_years_dash "
    mPopEmployedByOccH_&_years. = "Persons 16+ years old employed in civilian occupations, Hispanic/Latino, MOE, &_years_dash "
      mPopEmployedMngmtH_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, Hispanic/Latino, MOE, &_years_dash "
      mPopEmployedServH_&_years. = "Persons 16+ years old employed in service occupations, Hispanic/Latino, MOE, &_years_dash "
      mPopEmployedSalesH_&_years. = "Persons 16+ years old employed in sales and office occupations, Hispanic/Latino, MOE, &_years_dash "
      mPopEmployedNatResH_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, Hispanic/Latino, MOE, &_years_dash "
      mPopEmployedProdH_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, Hispanic/Latino, MOE, &_years_dash "
      mPopEmployedByOccA_&_years. = "Persons 16+ years old employed in civilian occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
      mPopEmployedMngmtA_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
      mPopEmployedServA_&_years. = "Persons 16+ years old employed in service occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
      mPopEmployedSalesA_&_years. = "Persons 16+ years old employed in sales and office occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
      mPopEmployedNatResA_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
      mPopEmployedProdA_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
      mPopEmployedByOccIOM_&_years. = "Persons 16+ years old employed in civilian occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
      mPopEmployedMngmtIOM_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
      mPopEmployedServIOM_&_years. = "Persons 16+ years old employed in service occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
      mPopEmployedSalesIOM_&_years. = "Persons 16+ years old employed in sales and office occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
      mPopEmployedNatResIOM_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
      mPopEmployedProdIOM_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
      mPopEmployedByOccAIOM_&_years. = "Persons 16+ years old employed in civilian occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
      mPopEmployedMngmtAIOM_&_years. = "Persons 16+ years old employed in management, business, science and arts occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
      mPopEmployedServAIOM_&_years. = "Persons 16+ years old employed in service occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
      mPopEmployedSalesAIOM_&_years. = "Persons 16+ years old employed in sales and office occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
      mPopEmployedNatResAIOM_&_years. = "Persons 16+ years old employed in natural resources, construction, and maintenance occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
      mPopEmployedProdAIOM_&_years. = "Persons 16+ years old employed in production, transportation, and material moving occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "

/*gender*/

     PopEmployedByOcc_M_&_years. = "Male 16+ years old employed in civilian occupations, &_years_dash "
      PopEmployedMngmt_M_&_years. = "Male 16+ years old employed in management, business, science and arts occupations,&_years_dash "
      PopEmployedServ_M_&_years. = "Male 16+ years old employed in service occupations,  &_years_dash "
      PopEmployedSales_M_&_years. = "Male 16+ years old employed in sales and office occupations,  &_years_dash "
      PopEmployedNatRes_M_&_years. = "Male 16+ years old employed in natural resources, construction, and maintenance occupations, &_years_dash "
      PopEmployedProd_M_&_years. = "Male 16+ years old employed in production, transportation, and material moving occupations, &_years_dash "
     PopEmployedByOcc_F_&_years. = "Female 16+ years old employed in civilian occupations, &_years_dash "
      PopEmployedMngmt_F_&_years. = "Female 16+ years old employed in management, business, science and arts occupations,&_years_dash "
      PopEmployedServ_F_&_years. = "Female 16+ years old employed in service occupations,  &_years_dash "
      PopEmployedSales_F_&_years. = "Female 16+ years old employed in sales and office occupations,  &_years_dash "
      PopEmployedNatRes_F_&_years. = "Female 16+ years old employed in natural resources, construction, and maintenance occupations, &_years_dash "
      PopEmployedProd_F_&_years. = "Female 16+ years old employed in production, transportation, and material moving occupations, &_years_dash "

   PopEmployedByOccB_M_&_years. = "Male 16+ years old employed in civilian occupations, Black/African American, &_years_dash "
      PopEmployedMngmtB_M_&_years. = "Male 16+ years old employed in management, business, science and arts occupations, Black/African American, &_years_dash "
      PopEmployedServB_M_&_years. = "Male 16+ years old employed in service occupations, Black/African American, &_years_dash "
      PopEmployedSalesB_M_&_years. = "Male 16+ years old employed in sales and office occupations, Black/African American, &_years_dash "
      PopEmployedNatResB_M_&_years. = "Male 16+ years old employed in natural resources, construction, and maintenance occupations, Black/African American, &_years_dash "
      PopEmployedProdB_M_&_years. = "Male 16+ years old employed in production, transportation, and material moving occupations, Black/African American, &_years_dash "
    PopEmployedByOccW_M_&_years. = "Male 16+ years old employed in civilian occupations, Non-Hispanic White, &_years_dash "
      PopEmployedMngmtW_M_&_years. = "Male 16+ years old employed in management, business, science and arts occupations, Non-Hispanic White, &_years_dash "
      PopEmployedServW_M_&_years. = "Male 16+ years old employed in service occupations, Non-Hispanic White, &_years_dash "
      PopEmployedSalesW_M_&_years. = "Male 16+ years old employed in sales and office occupations, Non-Hispanic White, &_years_dash "
      PopEmployedNatResW_M_&_years. = "Male 16+ years old employed in natural resources, construction, and maintenance occupations, Non-Hispanic White, &_years_dash "
      PopEmployedProdW_M_&_years. = "Male 16+ years old employed in production, transportation, and material moving occupations, Non-Hispanic White, &_years_dash "
    PopEmployedByOccH_M_&_years. = "Male 16+ years old employed in civilian occupations, Hispanic/Latino, &_years_dash "
      PopEmployedMngmtH_M_&_years. = "Male 16+ years old employed in management, business, science and arts occupations, Hispanic/Latino, &_years_dash "
      PopEmployedServH_M_&_years. = "Male 16+ years old employed in service occupations, Hispanic/Latino, &_years_dash "
      PopEmployedSalesH_M_&_years. = "Male 16+ years old employed in sales and office occupations, Hispanic/Latino, &_years_dash "
      PopEmployedNatResH_M_&_years. = "Male 16+ years old employed in natural resources, construction, and maintenance occupations, Hispanic/Latino, &_years_dash "
      PopEmployedProdH_M_&_years. = "Male 16+ years old employed in production, transportation, and material moving occupations, Hispanic/Latino, &_years_dash "
    PopEmployedByOccA_M_&_years. = "Male 16+ years old employed in civilian occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
      PopEmployedMngmtA_M_&_years. = "Male 16+ years old employed in management, business, science and arts occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
      PopEmployedServA_M_&_years. = "Male 16+ years old employed in service occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
      PopEmployedSalesA_M_&_years. = "Male 16+ years old employed in sales and office occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
      PopEmployedNatResA_M_&_years. = "Male 16+ years old employed in natural resources, construction, and maintenance occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
      PopEmployedProdA_M_&_years. = "Male 16+ years old employed in production, transportation, and material moving occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
    PopEmployedByOccIOM_M_&_years. = "Male 16+ years old employed in civilian occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
      PopEmployedMngmtIOM_M_&_years. = "Male 16+ years old employed in management, business, science and arts occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
      PopEmployedServIOM_M_&_years. = "Male 16+ years old employed in service occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
      PopEmployedSalesIOM_M_&_years. = "Male 16+ years old employed in sales and office occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
      PopEmployedNatResIOM_M_&_years. = "Male 16+ years old employed in natural resources, construction, and maintenance occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
      PopEmployedProdIOM_M_&_years. = "Male 16+ years old employed in production, transportation, and material moving occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
    PopEmployedByOccAIOM_M_&_years. = "Male 16+ years old employed in civilian occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
      PopEmployedMngmtAIOM_M_&_years. = "Male 16+ years old employed in management, business, science and arts occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
      PopEmployedServAIOM_M_&_years. = "Male 16+ years old employed in service occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
      PopEmployedSalesAIOM_M_&_years. = "Male 16+ years old employed in sales and office occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
      PopEmployedNatResAIOM_M_&_years. = "Male 16+ years old employed in natural resources, construction, and maintenance occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
      PopEmployedProdAIOM_M_&_years. = "Male 16+ years old employed in production, transportation, and material moving occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
      PopEmployedByOccB_F_&_years. = "Female 16+ years old employed in civilian occupations, Black/African American, &_years_dash "
      PopEmployedMngmtB_F_&_years. = "Female 16+ years old employed in management, business, science and arts occupations, Black/African American, &_years_dash "
      PopEmployedServB_F_&_years. = "Female 16+ years old employed in service occupations, Black/African American, &_years_dash "
      PopEmployedSalesB_F_&_years. = "Female 16+ years old employed in sales and office occupations, Black/African American, &_years_dash "
      PopEmployedNatResB_F_&_years. = "Female 16+ years old employed in natural resources, construction, and maintenance occupations, Black/African American, &_years_dash "
      PopEmployedProdB_F_&_years. = "Female 16+ years old employed in production, transportation, and material moving occupations, Black/African American, &_years_dash "
    PopEmployedByOccW_F_&_years. = "Female 16+ years old employed in civilian occupations, Non-Hispanic White, &_years_dash "
      PopEmployedMngmtW_F_&_years. = "Female 16+ years old employed in management, business, science and arts occupations, Non-Hispanic White, &_years_dash "
      PopEmployedServW_F_&_years. = "Female 16+ years old employed in service occupations, Non-Hispanic White, &_years_dash "
      PopEmployedSalesW_F_&_years. = "Female 16+ years old employed in sales and office occupations, Non-Hispanic White, &_years_dash "
      PopEmployedNatResW_F_&_years. = "Female 16+ years old employed in natural resources, construction, and maintenance occupations, Non-Hispanic White, &_years_dash "
      PopEmployedProdW_F_&_years. = "Female 16+ years old employed in production, transportation, and material moving occupations, Non-Hispanic White, &_years_dash "
    PopEmployedByOccH_F_&_years. = "Female 16+ years old employed in civilian occupations, Hispanic/Latino, &_years_dash "
      PopEmployedMngmtH_F_&_years. = "Female 16+ years old employed in management, business, science and arts occupations, Hispanic/Latino, &_years_dash "
      PopEmployedServH_F_&_years. = "Female 16+ years old employed in service occupations, Hispanic/Latino, &_years_dash "
      PopEmployedSalesH_F_&_years. = "Female 16+ years old employed in sales and office occupations, Hispanic/Latino, &_years_dash "
      PopEmployedNatResH_F_&_years. = "Female 16+ years old employed in natural resources, construction, and maintenance occupations, Hispanic/Latino, &_years_dash "
      PopEmployedProdH_F_&_years. = "Female 16+ years old employed in production, transportation, and material moving occupations, Hispanic/Latino, &_years_dash "
    PopEmployedByOccA_F_&_years. = "Female 16+ years old employed in civilian occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
      PopEmployedMngmtA_F_&_years. = "Female 16+ years old employed in management, business, science and arts occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
      PopEmployedServA_F_&_years. = "Female 16+ years old employed in service occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
      PopEmployedSalesA_F_&_years. = "Female 16+ years old employed in sales and office occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
      PopEmployedNatResA_F_&_years. = "Female 16+ years old employed in natural resources, construction, and maintenance occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
      PopEmployedProdA_F_&_years. = "Female 16+ years old employed in production, transportation, and material moving occupations, Asian, Native Hawaiian, or Other Pacific Islander, &_years_dash "
    PopEmployedByOccIOM_F_&_years. = "Female 16+ years old employed in civilian occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
      PopEmployedMngmtIOM_F_&_years. = "Female 16+ years old employed in management, business, science and arts occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
      PopEmployedServIOM_F_&_years. = "Female 16+ years old employed in service occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
      PopEmployedSalesIOM_F_&_years. = "Female 16+ years old employed in sales and office occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
      PopEmployedNatResIOM_F_&_years. = "Female 16+ years old employed in natural resources, construction, and maintenance occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
      PopEmployedProdIOM_F_&_years. = "Female 16+ years old employed in production, transportation, and material moving occupations, American Indian/Alaska Native, other race, two or more races, &_years_dash "
    PopEmployedByOccAIOM_F_&_years. = "Female 16+ years old employed in civilian occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
      PopEmployedMngmtAIOM_F_&_years. = "Female 16+ years old employed in management, business, science and arts occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
      PopEmployedServAIOM_F_&_years. = "Female 16+ years old employed in service occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
      PopEmployedSalesAIOM_F_&_years. = "Female 16+ years old employed in sales and office occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
      PopEmployedNatResAIOM_F_&_years. = "Female 16+ years old employed in natural resources, construction, and maintenance occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
      PopEmployedProdAIOM_F_&_years. = "Female 16+ years old employed in production, transportation, and material moving occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "

    mPopEmployedByOcc_M_&_years. = "Male 16+ years old employed in civilian occupations, MOE, &_years_dash "
      mPopEmployedMngmt_M_&_years. = "Male 16+ years old employed in management, business, science and arts occupations,&_years_dash "
      mPopEmployedServ_M_&_years. = "Male 16+ years old employed in service occupations,  &_years_dash "
      mPopEmployedSales_M_&_years. = "Male 16+ years old employed in sales and office occupations,  &_years_dash "
      mPopEmployedNatRes_M_&_years. = "Male 16+ years old employed in natural resources, construction, and maintenance occupations, MOE, &_years_dash "
      mPopEmployedProd_M_&_years. = "Male 16+ years old employed in production, transportation, and material moving occupations, MOE, &_years_dash "
     mPopEmployedByOcc_F_&_years. = "Female 16+ years old employed in civilian occupations, MOE, &_years_dash "
      mPopEmployedMngmt_F_&_years. = "Female 16+ years old employed in management, business, science and arts occupations,&_years_dash "
      mPopEmployedServ_F_&_years. = "Female 16+ years old employed in service occupations,  &_years_dash "
      mPopEmployedSales_F_&_years. = "Female 16+ years old employed in sales and office occupations,  &_years_dash "
      mPopEmployedNatRes_F_&_years. = "Female 16+ years old employed in natural resources, construction, and maintenance occupations, MOE, &_years_dash "
      mPopEmployedProd_F_&_years. = "Female 16+ years old employed in production, transportation, and material moving occupations, MOE, &_years_dash "

   mPopEmployedByOccB_M_&_years. = "Male 16+ years old employed in civilian occupations, Black/African American, MOE, &_years_dash "
      mPopEmployedMngmtB_M_&_years. = "Male 16+ years old employed in management, business, science and arts occupations, Black/African American, MOE, &_years_dash "
      mPopEmployedServB_M_&_years. = "Male 16+ years old employed in service occupations, Black/African American, MOE, &_years_dash "
      mPopEmployedSalesB_M_&_years. = "Male 16+ years old employed in sales and office occupations, Black/African American, MOE, &_years_dash "
      mPopEmployedNatResB_M_&_years. = "Male 16+ years old employed in natural resources, construction, and maintenance occupations, Black/African American, MOE, &_years_dash "
      mPopEmployedProdB_M_&_years. = "Male 16+ years old employed in production, transportation, and material moving occupations, Black/African American, MOE, &_years_dash "
    mPopEmployedByOccW_M_&_years. = "Male 16+ years old employed in civilian occupations, Non-Hispanic White, MOE, &_years_dash "
      mPopEmployedMngmtW_M_&_years. = "Male 16+ years old employed in management, business, science and arts occupations, Non-Hispanic White, MOE, &_years_dash "
      mPopEmployedServW_M_&_years. = "Male 16+ years old employed in service occupations, Non-Hispanic White, MOE, &_years_dash "
      mPopEmployedSalesW_M_&_years. = "Male 16+ years old employed in sales and office occupations, Non-Hispanic White, MOE, &_years_dash "
      mPopEmployedNatResW_M_&_years. = "Male 16+ years old employed in natural resources, construction, and maintenance occupations, Non-Hispanic White, MOE, &_years_dash "
      mPopEmployedProdW_M_&_years. = "Male 16+ years old employed in production, transportation, and material moving occupations, Non-Hispanic White, MOE, &_years_dash "
    mPopEmployedByOccH_M_&_years. = "Male 16+ years old employed in civilian occupations, Hispanic/Latino, MOE, &_years_dash "
      mPopEmployedMngmtH_M_&_years. = "Male 16+ years old employed in management, business, science and arts occupations, Hispanic/Latino, MOE, &_years_dash "
      mPopEmployedServH_M_&_years. = "Male 16+ years old employed in service occupations, Hispanic/Latino, MOE, &_years_dash "
      mPopEmployedSalesH_M_&_years. = "Male 16+ years old employed in sales and office occupations, Hispanic/Latino, MOE, &_years_dash "
      mPopEmployedNatResH_M_&_years. = "Male 16+ years old employed in natural resources, construction, and maintenance occupations, Hispanic/Latino, MOE, &_years_dash "
      mPopEmployedProdH_M_&_years. = "Male 16+ years old employed in production, transportation, and material moving occupations, Hispanic/Latino, MOE, &_years_dash "
      mPopEmployedByOccA_M_&_years. = "Male 16+ years old employed in civilian occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
      mPopEmployedMngmtA_M_&_years. = "Male 16+ years old employed in management, business, science and arts occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
      mPopEmployedServA_M_&_years. = "Male 16+ years old employed in service occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
      mPopEmployedSalesA_M_&_years. = "Male 16+ years old employed in sales and office occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
      mPopEmployedNatResA_M_&_years. = "Male 16+ years old employed in natural resources, construction, and maintenance occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
      mPopEmployedProdA_M_&_years. = "Male 16+ years old employed in production, transportation, and material moving occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
      mPopEmployedByOccIOM_M_&_years. = "Male 16+ years old employed in civilian occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
      mPopEmployedMngmtIOM_M_&_years. = "Male 16+ years old employed in management, business, science and arts occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
      mPopEmployedServIOM_M_&_years. = "Male 16+ years old employed in service occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
      mPopEmployedSalesIOM_M_&_years. = "Male 16+ years old employed in sales and office occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
      mPopEmployedNatResIOM_M_&_years. = "Male 16+ years old employed in natural resources, construction, and maintenance occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
      mPopEmployedProdIOM_M_&_years. = "Male 16+ years old employed in production, transportation, and material moving occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
      mPopEmployedByOccAIOM_M_&_years. = "Male 16+ years old employed in civilian occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
      mPopEmployedMngmtAIOM_M_&_years. = "Male 16+ years old employed in management, business, science and arts occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
      mPopEmployedServAIOM_M_&_years. = "Male 16+ years old employed in service occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
      mPopEmployedSalesAIOM_M_&_years. = "Male 16+ years old employed in sales and office occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
      mPopEmployedNatResAIOM_M_&_years. = "Male 16+ years old employed in natural resources, construction, and maintenance occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
      mPopEmployedProdAIOM_M_&_years. = "Male 16+ years old employed in production, transportation, and material moving occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
  mPopEmployedByOccB_F_&_years. = "Female 16+ years old employed in civilian occupations, Black/African American, MOE, &_years_dash "
      mPopEmployedMngmtB_F_&_years. = "Female 16+ years old employed in management, business, science and arts occupations, Black/African American, MOE, &_years_dash "
      mPopEmployedServB_F_&_years. = "Female 16+ years old employed in service occupations, Black/African American, MOE, &_years_dash "
      mPopEmployedSalesB_F_&_years. = "Female 16+ years old employed in sales and office occupations, Black/African American, MOE, &_years_dash "
      mPopEmployedNatResB_F_&_years. = "Female 16+ years old employed in natural resources, construction, and maintenance occupations, Black/African American, MOE, &_years_dash "
      mPopEmployedProdB_F_&_years. = "Female 16+ years old employed in production, transportation, and material moving occupations, Black/African American, MOE, &_years_dash "
    mPopEmployedByOccW_F_&_years. = "Female 16+ years old employed in civilian occupations, Non-Hispanic White, MOE, &_years_dash "
      mPopEmployedMngmtW_F_&_years. = "Female 16+ years old employed in management, business, science and arts occupations, Non-Hispanic White, MOE, &_years_dash "
      mPopEmployedServW_F_&_years. = "Female 16+ years old employed in service occupations, Non-Hispanic White, MOE, &_years_dash "
      mPopEmployedSalesW_F_&_years. = "Female 16+ years old employed in sales and office occupations, Non-Hispanic White, MOE, &_years_dash "
      mPopEmployedNatResW_F_&_years. = "Female 16+ years old employed in natural resources, construction, and maintenance occupations, Non-Hispanic White, MOE, &_years_dash "
      mPopEmployedProdW_F_&_years. = "Female 16+ years old employed in production, transportation, and material moving occupations, Non-Hispanic White, MOE, &_years_dash "
    mPopEmployedByOccH_F_&_years. = "Female 16+ years old employed in civilian occupations, Hispanic/Latino, MOE, &_years_dash "
      mPopEmployedMngmtH_F_&_years. = "Female 16+ years old employed in management, business, science and arts occupations, Hispanic/Latino, MOE, &_years_dash "
      mPopEmployedServH_F_&_years. = "Female 16+ years old employed in service occupations, Hispanic/Latino, MOE, &_years_dash "
      mPopEmployedSalesH_F_&_years. = "Female 16+ years old employed in sales and office occupations, Hispanic/Latino, MOE, &_years_dash "
      mPopEmployedNatResH_F_&_years. = "Female 16+ years old employed in natural resources, construction, and maintenance occupations, Hispanic/Latino, MOE, &_years_dash "
      mPopEmployedProdH_F_&_years. = "Female 16+ years old employed in production, transportation, and material moving occupations, Hispanic/Latino, MOE, &_years_dash "
      mPopEmployedByOccA_F_&_years. = "Female 16+ years old employed in civilian occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
      mPopEmployedMngmtA_F_&_years. = "Female 16+ years old employed in management, business, science and arts occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
      mPopEmployedServA_F_&_years. = "Female 16+ years old employed in service occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
      mPopEmployedSalesA_F_&_years. = "Female 16+ years old employed in sales and office occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
      mPopEmployedNatResA_F_&_years. = "Female 16+ years old employed in natural resources, construction, and maintenance occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
      mPopEmployedProdA_F_&_years. = "Female 16+ years old employed in production, transportation, and material moving occupations, Asian, Native Hawaiian, or Other Pacific Islander, MOE, &_years_dash "
      mPopEmployedByOccIOM_F_&_years. = "Female 16+ years old employed in civilian occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
      mPopEmployedMngmtIOM_F_&_years. = "Female 16+ years old employed in management, business, science and arts occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
      mPopEmployedServIOM_F_&_years. = "Female 16+ years old employed in service occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
      mPopEmployedSalesIOM_F_&_years. = "Female 16+ years old employed in sales and office occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
      mPopEmployedNatResIOM_F_&_years. = "Female 16+ years old employed in natural resources, construction, and maintenance occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
      mPopEmployedProdIOM_F_&_years. = "Female 16+ years old employed in production, transportation, and material moving occupations, American Indian/Alaska Native, other race, two or more races, MOE, &_years_dash "
      mPopEmployedByOccAIOM_F_&_years. = "Female 16+ years old employed in civilian occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
      mPopEmployedMngmtAIOM_F_&_years. = "Female 16+ years old employed in management, business, science and arts occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
      mPopEmployedServAIOM_F_&_years. = "Female 16+ years old employed in service occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
      mPopEmployedSalesAIOM_F_&_years. = "Female 16+ years old employed in sales and office occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
      mPopEmployedNatResAIOM_F_&_years. = "Female 16+ years old employed in natural resources, construction, and maintenance occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
      mPopEmployedProdAIOM_F_&_years. = "Female 16+ years old employed in production, transportation, and material moving occupations, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "

;

    ** Education **;

    ** Education - Block group-level variables**;

  Pop25andOverYears_&_years. = B15002e1;

  Pop25andOverWoutHS_&_years. = 
      sum( B15002e3, B15002e4, B15002e5, B15002e6, B15002e7, B15002e8, B15002e9, B15002e10, 
           B15002e20, B15002e21, B15002e22, B15002e23, B15002e24, B15002e25, B15002e26, B15002e27 );

    Pop25andOverWHS_&_years. = 
      sum( B15002e11, B15002e12, B15002e13, B15002e14, B15002e15, B15002e16, B15002e17, B15002e18, 
       B15002e28, B15002e29, B15002e30, B15002e31, B15002e32, B15002e33, B15002e34, B15002e35 );

  Pop25andOverWSC_&_years. = 
    sum(B15002e12, B15002e13, B15002e14, B15002e15, B15002e16, B15002e17, B15002e18, B15002e29, 
      B15002e30, B15002e31, B15002e32, B15002e33, B15002e34, B15002e35 );

  Pop25andOverWCollege_&_years. = 
      sum( B15002e15, B15002e16, B15002e17, B15002e18, B15002e32, B15002e33, B15002e34, B15002e35 );


  mPop25andOverYears_&_years. = B15002m1;

    mPop25andOverWoutHS_&_years. = 
      %moe_sum( var=B15002m3 B15002m4 B15002m5 B15002m6 B15002m7 B15002m8 B15002m9 B15002m10 
           B15002m20 B15002m21 B15002m22 B15002m23 B15002m24 B15002m25 B15002m26 B15002m27 );

    mPop25andOverWHS_&_years. = 
      %moe_sum( var=B15002m11 B15002m12 B15002m13 B15002m14 B15002m15 B15002m16 B15002m17 B15002m18
          B15002m28 B15002m29 B15002m30 B15002m31 B15002m32 B15002m33 B15002m34 B15002m35 );

  mPop25andOverWSC_&_years. = 
    %moe_sum( var=B15002m12 B15002m13 B15002m14 B15002m15 B15002m16 B15002m17 B15002m18 
            B15002m29 B15002m30 B15002m31 B15002m32 B15002m33 B15002m34 B15002m35);

    mPop25andOverWCollege_&_years. = 
      %moe_sum( var=B15002m15 B15002m16 B15002m17 B15002m18 B15002m32 B15002m33 B15002m34 B15002m35 );


 label
    Pop25andOverWoutHS_&_years. = "Persons 25 years old and over without high school diploma, &_years_dash "
    Pop25andOverWHS_&_years. = "Persons 25 years old and over with a high school diploma or GED, &_years_dash "
    Pop25andOverWSC_&_years. = "Persons 25 years old and over with some college, &_years_dash "
    Pop25andOverWCollege_&_years. = "Persons 25+ years old with a bachelors or graduate/prof degree, &_years_dash "
      Pop25andOverYears_&_years. = "Persons 25 years old and over, &_years_dash "
    mPop25andOverWoutHS_&_years. = "Persons 25 years old and over without high school diploma, MOE, &_years_dash "
      mPop25andOverWHS_&_years. = "Persons 25 years old and over with a high school diploma or GED, MOE, &_years_dash "
    mPop25andOverWSC_&_years. = "Persons 25 years old and over with some college, MOE, &_years_dash "
    mPop25andOverWCollege_&_years. = "Persons 25+ years old with a bachelors or graduate/prof degree, MOE, &_years_dash "
      mPop25andOverYears_&_years. = "Persons 25 years old and over, MOE, &_years_dash "
    ;


    ** Isolation **;
    
    NumHshldPhone_&_years. = sum( B25043e3, B25043e12 );
    
    NumHshldCar_&_years. = 
      sum( B25044e4, B25044e5, B25044e6, B25044e7, B25044e8, 
           B25044e11, B25044e12, B25044e13, B25044e14, B25044e15 );

    mNumHshldPhone_&_years. = %moe_sum( var=B25043m3 B25043m12 );
    
    mNumHshldCar_&_years. = 
      %moe_sum( var=B25044m4 B25044m5 B25044m6 B25044m7 B25044m8 
           B25044m11 B25044m12 B25044m13 B25044m14 B25044m15 );

    label
      NumHshldPhone_&_years. = "Occupied housing units with a telephone, &_years_dash "
      NumHshldCar_&_years. = "Occupied housing units with at least one vehicle available, &_years_dash "
      mNumHshldPhone_&_years. = "Occupied housing units with a telephone, MOE, &_years_dash "
      mNumHshldCar_&_years. = "Occupied housing units with at least one vehicle available, MOE, &_years_dash "
     ;
  

    ** Income - Block group-level variables **;

    AggFamilyIncome_&_years. = B19127e1;
    
  FamIncomeLT75k_&_years. = 
    sum(B19101e2, B19101e3, B19101e4, B19101e5, B19101e6, B19101e7, 
      B19101e8, B19101e9, B19101e10, B19101e11, B19101e12 );

  FamIncomeGT200k_&_years. = B19101e17;

  AggIncome_&_years. = B19313e1;
    AggIncomeB_&_years. = B19313Be1;
    AggIncomeW_&_years. = B19313He1;
    AggIncomeH_&_years. = B19313Ie1;
    AggIncomeA_&_years. = sum(B19313De1, B19313Ee1 );
    AggIncomeIOM_&_years. = sum(B19313Ce1, B19313Fe1, B19313Ge1 );
    AggIncomeAIOM_&_years. = sum(B19313Ce1, B19313De1, B19313Ee1, B19313Fe1, B19313Ge1 );

  AggHshldIncome_&_years. = B19025e1;
    AggHshldIncomeB_&_years. = B19025Be1;
    AggHshldIncomeW_&_years. = B19025He1;
    AggHshldIncomeH_&_years. = B19025Ie1;
    AggHshldIncomeA_&_years. = sum(B19025De1, B19025Ee1 );
    AggHshldIncomeIOM_&_years. = sum(B19025Ce1, B19025Fe1, B19025Ge1 );
    AggHshldIncomeAIOM_&_years. = sum(B19025Ce1, B19025De1, B19025Ee1, B19025Fe1, B19025Ge1 );

    mAggFamilyIncome_&_years. = B19127m1;

  mFamIncomeLT75k_&_years. = 
    %moe_sum( var=B19101m2 B19101m3 B19101m4 B19101m5 B19101m6 B19101m7 
    B19101m8 B19101m9 B19101m10 B19101m11 B19101m12);

  mFamIncomeGT200k_&_years. = B19101m17;

  mAggIncome_&_years. = B19313m1;
      mAggIncomeB_&_years. = B19313Bm1;
      mAggIncomeW_&_years. = B19313Hm1;
      mAggIncomeH_&_years. = B19313Im1;
      mAggIncomeA_&_years. = %moe_sum( var=B19313Dm1 B19313Em1);
      mAggIncomeIOM_&_years. = %moe_sum( var=B19313Cm1 B19313Fm1 B19313Gm1);
      mAggIncomeAIOM_&_years. = %moe_sum( var=B19313Cm1 B19313Dm1 B19313Em1 B19313Fm1 B19313Gm1);

  mAggHshldIncome_&_years. = B19025m1;
    mAggHshldIncomeB_&_years. = B19025Bm1;
    mAggHshldIncomeW_&_years. = B19025Hm1;
    mAggHshldIncomeH_&_years. = B19025Im1;
    mAggHshldIncomeA_&_years. = %moe_sum( var=B19025Dm1 B19025Em1 );
    mAggHshldIncomeIOM_&_years. = %moe_sum( var=B19025Cm1 B19025Fm1 B19025Gm1 );
    mAggHshldIncomeAIOM_&_years. = %moe_sum( var=B19025Cm1 B19025Dm1 B19025Em1 B19025Fm1 B19025Gm1 );

    label 
      AggFamilyIncome_&_years. = "Aggregate family income ($ &_last_year), &_years_dash "
    FamIncomeLT75k_&_years. = "Family income less than $75000, &_years_dash "
    FamIncomeGT200k_&_years. = "Family income more than $200,000, &_years_dash "
    AggIncome_&_years. = "Aggregate income, &_years_dash "
      AggIncomeB_&_years. = "Aggregate income, Black, &_years_dash "
      AggIncomeW_&_years. = "Aggregate income, Non-Hispanic White, &_years_dash "
      AggIncomeH_&_years. = "Aggregate income, Hispanic/Latino, &_years_dash "
      AggIncomeA_&_years. = "Aggregate income, Asian, Native Hawaiian, and other Pacific Islander, &_years_dash "
      AggIncomeIOM_&_years. = "Aggregate income, American Indian/Alaska Native, some other race, two or more races, &_years_dash "
      AggIncomeAIOM_&_years. = "Aggregate income, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
    AggHshldIncome_&_years. = "Aggregate household income, &_years_dash "
      AggHshldIncomeB_&_years. = "Aggregate household income, Black/African American, &_years_dash "
      AggHshldIncomeW_&_years. = "Aggregate household income, Non-Hispanic White, &_years_dash "
      AggHshldIncomeH_&_years. = "Aggregate household income, Hispanic/Latino, &_years_dash "
      AggHshldIncomeA_&_years. = "Aggregate household income, Asian, Native Hawaiian, and other Pacific Islander, &_years_dash "
      AggHshldIncomeIOM_&_years. = "Aggregate household income, American Indian/Alaska Native, some other race, two or more races, &_years_dash "
      AggHshldIncomeAIOM_&_years. = "Aggregate household income, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
    mAggFamilyIncome_&_years. = "Aggregate family income ($ &_last_year), MOE, &_years_dash "
    mFamIncomeLT75k_&_years. = "Family income less than $75000, MOE, &_years_dash "
    mFamIncomeGT200k_&_years. = "Family income more than $200,000, MOE, &_years_dash "
    mAggIncome_&_years. = "Aggregate income, MOE, &_years_dash "
      mAggIncomeB_&_years. = "Aggregate income, Black, MOE, &_years_dash "
      mAggIncomeW_&_years. = "Aggregate income, Non-Hispanic White, MOE, &_years_dash "
      mAggIncomeH_&_years. = "Aggregate income, Hispanic/Latino, MOE, &_years_dash "
      mAggIncomeA_&_years. = "Aggregate income, Asian, Native Hawaiian, and other Pacific Islander, MOE, &_years_dash "
      mAggIncomeIOM_&_years. = "Aggregate income, American Indian/Alaska Native, some other race, two or more races, MOE, &_years_dash "
      mAggIncomeAIOM_&_years. = "Aggregate income, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
    mAggHshldIncome_&_years. = "Aggregate household income, MOE, &_years_dash "
      mAggHshldIncomeB_&_years. = "Aggregate household income, Black/African American, MOE, &_years_dash "
      mAggHshldIncomeW_&_years. = "Aggregate household income, Non-Hispanic White, MOE, &_years_dash "
      mAggHshldIncomeH_&_years. = "Aggregate household income, Hispanic/Latino, MOE, &_years_dash "
      mAggHshldIncomeA_&_years. = "Aggregate household income, Asian, Native Hawaiian, and other Pacific Islander, MOE, &_years_dash "
      mAggHshldIncomeIOM_&_years. = "Aggregate household income, American Indian/Alaska Native, some other race, two or more races, MOE, &_years_dash "
      mAggHshldIncomeAIOM_&_years. = "Aggregate household income, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
      ;


 ***LH Moved 5-30-18 to geo_source_tr_vars***;



%mend ACS_summary_geo_source_bg_vars;


