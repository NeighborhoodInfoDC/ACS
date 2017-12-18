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

 Modifications:
**************************************************************************/


%macro ACS_summary_geo_source_bg_vars(  );

    ** Unweighted sample counts **;
    
    UnwtdPop_&_years. = B00001e1;
    UnwtdHsgUnits_&_years. = B00002e1;

    label
      UnwtdPop_&_years. = "Unweighted sample population, &_years_dash "
      UnwtdHsgUnits_&_years. = "Unweighted sample housing units, &_years_dash ";

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


    ** Housing - Block group vars **;
    
  NumOccupiedHsgUnits_&_years. = B25003e1;
    NumOccupiedHsgUnitsB_&_years. = B25003Be1;
    NumOccupiedHsgUnitsW_&_years. = B25003He1;
    NumOccupiedHsgUnitsH_&_years. = B25003Ie1;
    NumOccupiedHsgUnitsA_&_years. = sum(B25003De1, B25003Ee1 );
    NumOccupiedHsgUnitsIOM_&_years. = sum(B25003Ce1, B25003Fe1, B25003Ge1 );
    NumOccupiedHsgUnitsAIOM_&_years. = sum(B25003Ce1, B25003De1, B25003Ee1, B25003Fe1, B25003Ge1 );

  NumOwnerOccupiedHU_&_years. = B25003e2;
    NumOwnerOccupiedHsgUnits_&_years. = B25003e2;
    NumOwnerOccupiedHUB_&_years. = B25003Be2;
    NumOwnerOccupiedHUW_&_years. = B25003He2;
    NumOwnerOccupiedHUH_&_years. = B25003Ie2;
    NumOwnerOccupiedHUA_&_years. = sum(B25003De2, B25003Ee2 );
    NumOwnerOccupiedHUIOM_&_years. = sum(B25003Ce2, B25003Fe2, B25003Ge2 );
    NumOwnerOccupiedHUAIOM_&_years. = sum(B25003Ce2, B25003De2, B25003Ee2, B25003Fe2, B25003Ge2 );

  NumRenterOccupiedHU_&_years. = B25003e3;
  	NumRenterOccupiedHsgUnit_&_years. = B25003e3;

  NumVacantHsgUnits_&_years. = B25004e1;
	  NumVacantHsgUnitsForRent_&_years. = B25004e2;
	  NumVacantHsgUnitsForSale_&_years. = B25004e4;
    
  NumRenterHsgUnits_&_years. = NumRenterOccupiedHU_&_years. + NumVacantHsgUnitsForRent_&_years.;

  GrossRentLT100_&_years. = B25063e3;
  GrossRent100_149_&_years. = B25063e4;
  GrossRent150_199_&_years. = B25063e5;
  GrossRent200_249_&_years. = B25063e6;
  GrossRent250_299_&_years. = B25063e7;
  GrossRent300_349_&_years. = B25063e8;
  GrossRent350_349_&_years. = B25063e9;
  GrossRent400_449_&_years. = B25063e10;
  GrossRent450_499_&_years. = B25063e11
  GrossRent500_549_&_years. = B25063e12;
  GrossRent550_599_&_years. = B25063e13;
  GrossRent600_649_&_years. = B25063e14;
  GrossRent650_699_&_years. = B25063e15;
  GrossRent700_749_&_years. = B25063e16;
  GrossRent750_799_&_years. = B25063e17;
  GrossRent800_899_&_years. = B25063e18;
  GrossRent900_999_&_years. = B25063e19;
  GrossRent1000_1249_&_years. = B25063e20;
  GrossRent1250_1499_&_years. = B25063e21;
  GrossRent1500_1999_&_years. = B25063e22;
  GrossRent2000_2499_&_years. = B25063e23;
  GrossRent2500_2999_&_years. = B25063e24;
  GrossRent3000_3499_&_years. = B25063e25;
  GrossRentGT3500&_years. = B25063e26;
  GrossRentNoCash_&_years. = B25063e27;

  IncmByRenterCst_LT10K_&_years. = sum(B25074e3, B25074e4, B25074e5, B25074e6, B25074e7, B25074e8, B25074e9);
  IncmByRenterCst_10_19K_&_years. = sum(B25074e12, B25074e13, B25074e14, B25074e15, B25074e16, B25074e17, B25074e18);
  IncmByRenterCst_20_34K_&_years. = sum(B25074e21, B25074e22, B25074e23, B25074e24, B25074e25, B25074e26, B25074e27);
  IncmByRenterCst_35_49K_&_years. = sum(B25074e30, B25074e31, B25074e32, B25074e33, B25074e34, B25074e35, B25074e36;
  IncmByRenterCst_50_74K_&_years. = sum(B25074e39, B25074e40, B25074e41, B25074e42, B25074e43, B25074e44, B25074e45);
  IncmByRenterCst_75_99K_&_years. = sum(B25074e48, B25074e49, B25074e50, B25074e51, B25074e52, B25074e53, B25074e54);
  IncmByRenterCst_GT100K_&_years. = sum(B25074e57, B25074e58, B25074e59, B25074e60, B25074e61, B25074e62, B25074e63);

  AgeByRenterCst_15_24_&_years. = sum(B25072e3, B25072e4, B25072e5, B25072e6, B25072e7);
  AgeByRenterCst_25_34_&_years. = sum(B25072e10, B25072e11, B25072e12,B25072e13, B25072e14);
  AgeByRenterCst_35_64_&_years. = sum(B25072e17, B25072e18, B25072e19, B25072e20, B25072e21);
  AgeByRenterCst_65Over_&_years. = sum(B25072e24, B25072e25, B25072e26, B25072e27, B25072e28);

  AgeByOwnerCst_15_24_&_years. = sum(B25093e3, B25093e4, B25093e5, B25093e6, B25093e7);
  AgeByOwnerCst_25_34_&_years. = sum(B25093e10, B25093e11, B25093e12,B25093e13, B25093e14);
  AgeByOwnerCst_35_64_&_years. = sum(B25093e17, B25093e18, B25093e19, B25093e20, B25093e21);
  AgeByOwnerCst_65Over_&_years. = sum(B25093e24, B25093e25, B25093e26, B25093e27, B25093e28);

  NumRenterCostBurden_&_years. = sum(B25070e7, B25070e8, B25070e9, B25070e10);
  NumRentSevereCostBurden_&_years. = B25070e10;
  NumOwnerCostBurden_&_years. = sum(B25091e8, B25091e9, B25091e10, B25091e11, B25091e19, B25091e20, B25091e21, B25091e22);
  NumOwnSevereCostBurden_&_years. = sum(B25091e11, B25091e22);

  RentCostBurdenDenom_&_years. = NumRenterOccupiedHU_&_years. - B25070e11;
  OwnerCostBurdenDenom_&_years. = NumOwnerOccupiedHU_&_years. - sum(B25091e12, B25091e23);

  NumRentCstBurden_15_24_&_years. = sum(B25072e6, B25072e7);
  NumRentCstBurden_25_34_&_years. = sum(B25072e13, B25072e14);
  NumRentCstBurden_35_64_&_years. = sum(B25072e20, B25072e21);
  NumRentCstBurden_65Over_&_years. = sum(B25072e27, B25072e28);

  NumOwnCstBurden_15_24_&_years. = sum(B25093e6, B25093e7);
  NumOwnCstBurden_25_34_&_years. = sum(B25093e13, B25093e14);
  NumOwnCstBurden_35_64_&_years. = sum(B25093e20, B25093e21);
  NumOwnCstBurden_65Over_&_years. = sum(B25093e27, B25093e28);

  NumRentCstBurden_LT10K_&_years. = sum(B25074e6, B25074e7, B25074e8, B25074e9);
  NumRentCstBurden_10_19K_&_years. = sum(B25074e15, B25074e16, B25074e17, B25074e18);
  NumRentCstBurden_20_34K_&_years. = sum(B25074e24, B25074e25, B25074e26, B25074e27);
  NumRentCstBurden_35_49K_&_years. = sum(B25074e33, B25074e34, B25074e35, B25074e36);
  NumRentCstBurden_50_74K_&_years. = sum(B25074e42, B25074e43, B25074e44, B25074e45);
  NumRentCstBurden_75_99K_&_years. = sum(B25074e51, B25074e52, B25074e53, B25074e54);
  NumRentCstBurden_GT100K_&_years. = sum(B25074e60, B25074e61, B25074e62, B25074e63);

  medianhomevalue_&_years. = B25077e1;
  mmedianhomevalue_&_years. = B25077m1;

  mNumOccupiedHsgUnits_&_years. = B25003m1;
  mNumOccupiedHsgUnitsB_&_years. = B25003Bm1;
  mNumOccupiedHsgUnitsW_&_years. = B25003Hm1;
  mNumOccupiedHsgUnitsH_&_years. = B25003Im1;
  mNumOccupiedHsgUnitsA_&_years. = %moe_sum( var=B25003Dm1 B25003Em1);
  mNumOccupiedHsgUnitsIOM_&_years. = %moe_sum( var=B25003Cm1 B25003Fm1 B25003Gm1);
  mNumOccupiedHsgUnitsAIOM_&_years. = %moe_sum( var=B25003Cm1 B25003Dm1 B25003Em1 B25003Fm1 B25003Gm1);

  mNumOwnerOccupiedHU_&_years. = B25003m2;
  mNumOwnerOccupiedHUB_&_years. = B25003Bm2;
  mNumOwnerOccupiedHUW_&_years. = B25003Hm2;
  mNumOwnerOccupiedHUH_&_years. = B25003Im2;
  mNumOwnerOccupiedHUA_&_years. = %moe_sum( var=B25003Dm2 B25003Em2);
  mNumOwnerOccupiedHUIOM_&_years. = %moe_sum( var=B25003Cm2 B25003Fm2 B25003Gm2);
  mNumOwnerOccupiedHUAIOM_&_years. = %moe_sum( var=B25003Cm2 B25003Dm2 B25003Em2 B25003Fm2 B25003Gm2);

  mNumRenterOccupiedHU_&_years. = B25003m3;

  mNumVacantHsgUnits_&_years. = B25004m1;
  mNumVacantHUForRent_&_years. = B25004m2;
  mNumVacantHUForSale_&_years. = B25004m4;
    
  mNumRenterHsgUnits_&_years. = %moe_sum( var=mNumRenterOccupiedHU_&_years. mNumVacantHUForRent_&_years. );

  mGrossRentLT100_&_years. = B25063m3;
  mGrossRent100_149_&_years. = B25063m4;
  mGrossRent150_199_&_years. = B25063m5;
  mGrossRent200_249_&_years. = B25063m6;
  mGrossRent250_299_&_years. = B25063m7;
  mGrossRent300_349_&_years. = B25063m8;
  mGrossRent350_349_&_years. = B25063m9;
  mGrossRent400_449_&_years. = B25063m10;
  mGrossRent450_499_&_years. = B25063m11
  mGrossRent500_549_&_years. = B25063m12;
  mGrossRent550_599_&_years. = B25063m13;
  mGrossRent600_649_&_years. = B25063m14;
  mGrossRent650_699_&_years. = B25063m15;
  mGrossRent700_749_&_years. = B25063m16;
  mGrossRent750_799_&_years. = B25063m17;
  mGrossRent800_899_&_years. = B25063m18;
  mGrossRent900_999_&_years. = B25063m19;
  mGrossRent1000_1249_&_years. = B25063m20;
  mGrossRent1250_1499_&_years. = B25063m21;
  mGrossRent1500_1999_&_years. = B25063m22;
  mGrossRent2000_2499_&_years. = B25063m23;
  mGrossRent2500_2999_&_years. = B25063m24;
  mGrossRent3000_3499_&_years. = B25063m25;
  mGrossRentGT3500&_years. = B25063m26;
  mGrossRentNoCash_&_years. = B25063m27;

  mIncmByRenterCst_LT10K_&_years. = %moe_sum( var=B25074m3 B25074m4 B25074m5 B25074m6 B25074m7 B25074m8 B25074m9);
  mIncmByRenterCst_10_19K_&_years. = %moe_sum( var=B25074m12 B25074m13 B25074m14 B25074m15 B25074m16 B25074m17 B25074m18);
  mIncmByRenterCst_20_34K_&_years. = %moe_sum( var=B25074m21 B25074m22 B25074m23 B25074m24 B25074m25 B25074m26 B25074m27);
  mIncmByRenterCst_35_49K_&_years. = %moe_sum( var=B25074m30 B25074m31 B25074m32 B25074m33 B25074m34 B25074m35 B25074m36);
  mIncmByRenterCst_50_74K_&_years. = %moe_sum( var=B25074m39 B25074m40 B25074m41 B25074m42 B25074m43 B25074m44 B25074m45);
  mIncmByRenterCst_75_99K_&_years. = %moe_sum( var=B25074m48 B25074m49 B25074m50 B25074m51 B25074m52 B25074m53 B25074m54);
  mIncmByRenterCst_GT100K_&_years. = %moe_sum( var=B25074m57 B25074m58 B25074m59 B25074m60 B25074m61 B25074m62 B25074m63);

  mAgeByRenterCst_15_24_&_years. = %moe_sum( var=B25074m3 B25074m4 B25074m5 B25074m6 B25074m7);
  mAgeByRenterCst_25_34_&_years. = %moe_sum( var=B25074m10 B25074m11 B25074m12,B25074m13 B25074m14);
  mAgeByRenterCst_35_64_&_years. = %moe_sum( var=B25074m17 B25074m18 B25074m19 B25074m20 B25074m21);
  mAgeByRenterCst_65Over_&_years. = %moe_sum( var=B25074m24 B25074m25 B25074m26 B25074m27 B25074m28);

  mAgeByOwnerCst_15_24_&_years. = %moe_sum( var=B25093m3 B25093m4 B25093m5 B25093m6 B25093m7);
  mAgeByOwnerCst_25_34_&_years. = %moe_sum( var=B25093m10 B25093m11 B25093m12,B25093m13 B25093m14);
  mAgeByOwnerCst_35_64_&_years. = %moe_sum( var=B25093m17 B25093m18 B25093m19 B25093m20 B25093m21);
  mAgeByOwnerCst_65Over_&_years. = %moe_sum( var=B25093m24 B25093m25 B25093m26 B25093m27 B25093m28);

  mNumRenterCostBurden_&_years. = %moe_sum( var=B25070m7 B25070m8 B25070m9 B25070m10);
  mNumRentSevereCostBurden_&_years. = B25070m10;
  mNumOwnerCostBurden_&_years. = %moe_sum( var=B25091m8 B25091m9 B25091m10 B25091m11 B25091m19 B25091m20 B25091m21 B25091m22);
  mNumOwnSevereCostBurden_&_years. = %moe_sum( var=B25091m11 B25091m22);

  mRentCostBurdenDenom_&_years. = %moe_sum( var=B25070m2 B25070m3 B25070m4 B25070m5 B25070m6 B25070m7 B25070m8 B25070m9 B25070m10);
  mOwnerCostBurdenDenom_&_years. =  %moe_sum( var=B25091m3 B25091m4 B25091m5 B25091m6 B25091m7 B25091m8 B25091m9 
      B25091m10 B25091m11 B25091m14 B25091m15 B25091m16 B25091m17 B25091m18 B25091m19 B25091m20 B25091m21 B25091m22);

  mNumRentCstBurden_15_24_&_years. = %moe_sum( var=B25072m6 B25072m7);
  mNumRentCstBurden_25_34_&_years. = %moe_sum( var=B25072m13 B25072m14);
  mNumRentCstBurden_35_64_&_years. = %moe_sum( var=B25072m20 B25072m21);
  mNumRentCstBurden_65Over_&_years. = %moe_sum( var=B25072m27 B25072m28);

  mNumOwnCstBurden_15_24_&_years. = %moe_sum( var=B25093m6 B25093m7);
  mNumOwnCstBurden_25_34_&_years. = %moe_sum( var=B25093m13 B25093m14);
  mNumOwnCstBurden_35_64_&_years. = %moe_sum( var=B25093m20 B25093m21);
  mNumOwnCstBurden_65Over_&_years. = %moe_sum( var=B25093m27 B25093m28);


  mNumRentCstBurden_LT10K_&_years. = %moe_sum( var=B25074m6 B25074m7 B25074m8 B25074m9);
  mNumRentCstBurden_10_19K_&_years. = %moe_sum( var=B25074m15 B25074m16 B25074m17 B25074m18);
  mNumRentCstBurden_20_34K_&_years. = %moe_sum( var=B25074m24 B25074m25 B25074m26 B25074m27);
  mNumRentCstBurden_35_49K_&_years. = %moe_sum( var=B25074m33 B25074m34 B25074m35 B25074m36);
  mNumRentCstBurden_50_74K_&_years. = %moe_sum( var=B25074m42 B25074m43 B25074m44 B25074m45);
  mNumRentCstBurden_75_99K_&_years. = %moe_sum( var=B25074m51 B25074m52 B25074m53 B25074m54);
  mNumRentCstBurden_GT100K_&_years. = %moe_sum( var=B25074m60 B25074m61 B25074m62 B25074m63);



    label
    NumOccupiedHsgUnits_&_years. = "Occupied housing units, &_years_dash "
        NumOwnerOccupiedHsgUnits_&_years. = "Owner-occupied housing units, &_years_dash "
      NumOccupiedHsgUnitsB_&_years. = "Occupied housing units, Black/African American, &_years_dash "
      NumOccupiedHsgUnitsW_&_years. = "Occupied housing units, Non-Hispanic White, &_years_dash "
      NumOccupiedHsgUnitsH_&_years. = "Occupied housing units, Hispanic/Latino, &_years_dash "
      NumOccupiedHsgUnitsA_&_years. = "Occupied housing units, Asian and Native Hawaiian and Other Pacific Islander, &_years_dash "
      NumOccupiedHsgUnitsIOM_&_years. = "Occupied housing units,  American Indian/Alaska Native, Some other race, Two or more races, &_years_dash "
      NumOccupiedHsgUnitsAIOM_&_years. = "Occupied housing units, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
      NumOwnerOccupiedHU_&_years. = "Owner-occupied housing units, &_years_dash "
        NumRenterOccupiedHsgUnit_&_years. = "Renter-occupied housing units, &_years_dash "
      NumOwnerOccupiedHUB_&_years. = "Owner-occupied housing units, Black/African American, &_years_dash "
      NumOwnerOccupiedHUW_&_years. = "Owner-occupied housing units, Non-Hispanic White, &_years_dash "
      NumOwnerOccupiedHUH_&_years. = "Owner-occupied housing units, Hispanic/Latino, &_years_dash "
      NumOwnerOccupiedHUA_&_years. = "Owner-occupied housing units, Asian and Native Hawaiian and Other Pacific Islander, &_years_dash "
      NumOwnerOccupiedHUIOM_&_years. = "Owner-occupied housing units, American Indian/Alaska Native, Some other race, Two or more races, &_years_dash "
      NumOwnerOccupiedHUAIOM_&_years. = "Owner-occupied housing units, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
      NumRenterOccupiedHU_&_years. = "Renter-occupied housing units, &_years_dash "
      NumVacantHsgUnits_&_years. = "Vacant housing units, &_years_dash "
      NumVacantHsgUnitsForRent_&_years. = "Vacant housing units for rent, &_years_dash "
      NumVacantHsgUnitsForSale_&_years. = "Vacant housing units for sale, &_years_dash "
      NumRenterHsgUnits_&_years. = "Total rental housing units, &_years_dash "
	GrossRentLT100_&_years. = "Renter-occupied housing units where gross rent is less than $100, &_years_dash "
	  GrossRent100_149_&_years. = "Renter-occupied housing units where gross rent is $100 to $149, &_years_dash "
	  GrossRent150_199_&_years. = "Renter-occupied housing units where gross rent is $150 to $199, &_years_dash "
	  GrossRent200_249_&_years. = "Renter-occupied housing units where gross rent is $200 to $249, &_years_dash "
	  GrossRent250_299_&_years. = "Renter-occupied housing units where gross rent is $250 to $299, &_years_dash "
	  GrossRent300_349_&_years. = "Renter-occupied housing units where gross rent is $300 to $349, &_years_dash "
	  GrossRent350_349_&_years. = "Renter-occupied housing units where gross rent is $350 to $399, &_years_dash "
	  GrossRent400_449_&_years. = "Renter-occupied housing units where gross rent is $400 to $449, &_years_dash "
	  GrossRent450_499_&_years. = "Renter-occupied housing units where gross rent is $450 to $499, &_years_dash "
	  GrossRent500_549_&_years. = "Renter-occupied housing units where gross rent is $500 to $549, &_years_dash "
	  GrossRent550_599_&_years. = "Renter-occupied housing units where gross rent is $550 to $599, &_years_dash "
	  GrossRent600_649_&_years. = "Renter-occupied housing units where gross rent is $600 to $649, &_years_dash "
	  GrossRent650_699_&_years. = "Renter-occupied housing units where gross rent is $650 to $699, &_years_dash "
	  GrossRent700_749_&_years. = "Renter-occupied housing units where gross rent is $700 to $749, &_years_dash "
	  GrossRent750_799_&_years. = "Renter-occupied housing units where gross rent is $750 to $799, &_years_dash "
      GrossRent800_899_&_years. = "Renter-occupied housing units where gross rent is $800 to $899, &_years_dash "
      GrossRent900_999_&_years. = "Renter-occupied housing units where gross rent is $900 to $999, &_years_dash "
      GrossRent1000_1249_&_years. = "Renter-occupied housing units where gross rent is $1000 to $1249, &_years_dash "
      GrossRent1250_1499_&_years. = "Renter-occupied housing units where gross rent is $1250 to $1499, &_years_dash "
      GrossRent1500_1999_&_years. = "Renter-occupied housing units where gross rent is $1500 to $1999, &_years_dash "
      GrossRent2000_2499_&_years. = "Renter-occupied housing units where gross rent is $2000 to $2499, &_years_dash "
      GrossRent2500_2999_&_years. = "Renter-occupied housing units where gross rent is $2500 to $2999, &_years_dash "
      GrossRent3000_3499_&_years. = "Renter-occupied housing units where gross rent is $3000 to $3499, &_years_dash "
      GrossRentGT3500_&_years. = "Renter-occupied housing units where gross rent is greater than $3500, &_years_dash "
	  GrossRentNoCash_&_years. = "Renter-occupied housing units where there is no cash rent, &_years_dash "
    IncmByRenterCst_LT10K_&_years. = "Renter-occupied housing units with household income less than $10,000, excluding units where renter cost burden is not computed, &_years_dash  "
	  IncmByRenterCst_10_19K_&_years. = "Renter-occupied housing units with household income less than $10,000, excluding units where renter cost burden is not computed, &_years_dash  "
	  IncmByRenterCst_20_34K_&_years. = "Renter-occupied housing units with household income $20,000 to $34,999, excluding units where renter cost burden is not computed, &_years_dash  "
	  IncmByRenterCst_35_49K_&_years. = "Renter-occupied housing units with household income $35,000 to $49,999, excluding units where renter cost burden is not computed, &_years_dash  "
	  IncmByRenterCst_50_74K_&_years. = "Renter-occupied housing units with household income $50,000 to $74,999, excluding units where renter cost burden is not computed, &_years_dash  "
	  IncmByRenterCst_75_99K_&_years. = "Renter-occupied housing units with household income $75,000 to $99,999, excluding units where renter cost burden is not computed, &_years_dash  "
	  IncmByRenterCst_GT100K_&_years. = "Renter-occupied housing units with household income $100,000 or more, excluding units where renter cost burden is not computed, &_years_dash  "
  	AgeByRenterCst_15_24_&_years. = "Renter-occupied housing units where householder is aged 15 to 25 years old, excluding units where renter cost burden is not computed, &_years_dash  "
  	  AgeByRenterCst_25_34_&_years. = "Renter-occupied housing units where householder is aged 25 to 34 years old, excluding units where renter cost burden is not computed, &_years_dash  "
  	  AgeByRenterCst_35_64_&_years. = "Renter-occupied housing units where householder is aged 35 to 64 years old, excluding units where renter cost burden is not computed, &_years_dash  "
  	  AgeByRenterCst_65Over_&_years. = "Renter-occupied housing units where householder is aged 65 years and older, excluding units where renter cost burden is not computed, &_years_dash  "
  	AgeByOwnerCst_15_24_&_years. = "Owner-occupied housing units where householder is aged 15 to 25 years old, excluding units where owner cost burden is not computed, &_years_dash  "
  	  AgeByOwnerCst_25_34_&_years. = "Owner-occupied housing units where householder is aged 25 to 34 years old, excluding units where owner cost burden is not computed, &_years_dash  "
  	  AgeByOwnerCst_35_64_&_years. = "Owner-occupied housing units where householder is aged 35 to 64 years old, excluding units where owner cost burden is not computed, &_years_dash  "
  	  AgeByOwnerCst_65Over_&_years. = "Owner-occupied housing units where householder is aged 65 years and older, excluding units where owner cost burden is not computed, &_years_dash  "
    NumRenterCostBurden_&_years. = "Renter-occupied housing units with housing cost burden (housing costs are or exceed 30% of household income), &_years_dash "
    NumRentSevereCostBurden_&_years. = "Renter-occupied housing units with severe housing cost burden (housing costs are or exceed 50% of household income), &_years_dash "
    NumOwnerCostBurden_&_years. = "Owner-occupied housing units with and without a mortgage with housing cost burden (owner costs are or exceed 30% of household income), &_years_dash "
    NumOwnSevereCostBurden_&_years. = "Owner-occupied housing units with severe housing cost burden (housing costs are or exceed 50% of household income), &_years_dash "
    RentCostBurdenDenom_&_years. = "Renter-occupied housing units, excluding units where renter cost burden is not computed, &_years_dash  "
    OwnerCostBurdenDenom_&_years. = "Owner-occupied housing units, excluding units where owner cost burden is not computed, &_years_dash  "
    NumRentCstBurden_15_24_&_years. = "Renter-occupied housing units with housing cost burden and householder aged 15 to 24 years old, &_years_dash  "
      NumRentCstBurden_25_34_&_years. = "Renter-occupied housing units with housing cost burden and householder aged 25 to 34 years old, &_years_dash  "
      NumRentCstBurden_35_64_&_years. = "Renter-occupied housing units with housing cost burden and householder aged 35 to 64 years old, &_years_dash  "
      NumRentCstBurden_65Over_&_years. = "Renter-occupied housing units with housing cost burden and householder aged 65 years old and older, &_years_dash  "
    NumOwnCstBurden_15_24_&_years. = "Owner-occupied housing units with housing cost burden and householder aged 15 to 24 years old, &_years_dash  "
      NumOwnCstBurden_25_34_&_years. = "Owner-occupied housing units with housing cost burden and householder aged 25 to 34 years old, &_years_dash  "
      NumOwnCstBurden_35_64_&_years. = "Owner-occupied housing units with housing cost burden and householder aged 35 to 64 years old, &_years_dash  "
      NumOwnCstBurden_65Over_&_years. = "Owner-occupied housing units with housing cost burden and householder aged 65 years old and older, &_years_dash  "
    NumRentCstBurden_LT10K_&_years. = "Renter-occupied housing units with housing cost burden and household income less than $10,000, &_years_dash  "
      NumRentCstBurden_10_19K_&_years. = "Renter-occupied housing units with housing cost burden and household income $10,000 to $19,999, &_years_dash  "
      NumRentCstBurden_20_34K_&_years. = "Renter-occupied housing units with housing cost burden and household income $20,000 to $34,999, &_years_dash  "
      NumRentCstBurden_35_49K_&_years. = "Renter-occupied housing units with housing cost burden and household income $35,000 to $49,999, &_years_dash  "
      NumRentCstBurden_50_74K_&_years. = "Renter-occupied housing units with housing cost burden and household income $50,000 to $74,999, &_years_dash  "
      NumRentCstBurden_75_99K_&_years. = "Renter-occupied housing units with housing cost burden and household income $75,000 to $99,999, &_years_dash  "
      NumRentCstBurden_GT100K_&_years. = "Renter-occupied housing units with housing cost burden and household income $100,000 or more, &_years_dash  "
    mNumOccupiedHsgUnits_&_years. = "Occupied housing units, MOE, &_years_dash "
        mNumOccupiedHsgUnitsB_&_years. = "Occupied housing units, Black/African American, &_years_dash "
      mNumOccupiedHsgUnitsW_&_years. = "Occupied housing units, Non-Hispanic White, &_years_dash "
      mNumOccupiedHsgUnitsH_&_years. = "Occupied housing units, Hispanic/Latino, &_years_dash "
      mNumOccupiedHsgUnitsA_&_years. = "Occupied housing units, Asian and Native Hawaiian and Other Pacific Islander, &_years_dash "
      mNumOccupiedHsgUnitsIOM_&_years. = "Occupied housing units,  American Indian/Alaska Native, Some other race, Two or more races, &_years_dash "
      mNumOccupiedHsgUnitsAIOM_&_years. = "Occupied housing units, All remaining groups other than Black, Non-Hispanic White, Hispanic, &_years_dash "
      mNumOwnerOccupiedHU_&_years. = "Owner-occupied housing units, MOE, &_years_dash "
      mNumOwnerOccupiedHUB_&_years. = "Owner-occupied housing units, Black/African American, MOE, &_years_dash "
      mNumOwnerOccupiedHUW_&_years. = "Owner-occupied housing units, Non-Hispanic White, MOE, &_years_dash "
      mNumOwnerOccupiedHUH_&_years. = "Owner-occupied housing units, Hispanic/Latino, MOE, &_years_dash "
      mNumOwnerOccupiedHUA_&_years. = "Owner-occupied housing units, Asian and Native Hawaiian and Other Pacific Islander, MOE, &_years_dash "
      mNumOwnerOccupiedHUIOM_&_years. = "Owner-occupied housing units, American Indian/Alaska Native, Some other race, Two or more races, MOE, &_years_dash "
      mNumOwnerOccupiedHUAIOM_&_years. = "Owner-occupied housing units, All remaining groups other than Black, Non-Hispanic White, Hispanic, MOE, &_years_dash "
      mNumRenterOccupiedHU_&_years. = "Renter-occupied housing units, MOE, &_years_dash "
      mNumVacantHsgUnits_&_years. = "Vacant housing units, MOE, &_years_dash "
      mNumVacantHUForRent_&_years. = "Vacant housing units for rent, MOE, &_years_dash "
      mNumVacantHUForSale_&_years. = "Vacant housing units for sale, MOE, &_years_dash "
      mNumRenterHsgUnits_&_years. = "Total rental housing units, MOE, &_years_dash "
	mGrossRentLT100_&_years. = "Renter-occupied housing units where gross rent is less than $100, &_years_dash "
	  mGrossRent100_149_&_years. = "Renter-occupied housing units where gross rent is $100 to $149, &_years_dash "
	  mGrossRent150_199_&_years. = "Renter-occupied housing units where gross rent is $150 to $199, &_years_dash "
	  mGrossRent200_249_&_years. = "Renter-occupied housing units where gross rent is $200 to $249, &_years_dash "
	  mGrossRent250_299_&_years. = "Renter-occupied housing units where gross rent is $250 to $299, &_years_dash "
	  mGrossRent300_349_&_years. = "Renter-occupied housing units where gross rent is $300 to $349, &_years_dash "
	  mGrossRent350_349_&_years. = "Renter-occupied housing units where gross rent is $350 to $399, &_years_dash "
	  mGrossRent400_449_&_years. = "Renter-occupied housing units where gross rent is $400 to $449, &_years_dash "
	  mGrossRent450_499_&_years. = "Renter-occupied housing units where gross rent is $450 to $499, &_years_dash "
	  mGrossRent500_549_&_years. = "Renter-occupied housing units where gross rent is $500 to $549, &_years_dash "
	  mGrossRent550_599_&_years. = "Renter-occupied housing units where gross rent is $550 to $599, &_years_dash "
	  mGrossRent600_649_&_years. = "Renter-occupied housing units where gross rent is $600 to $649, &_years_dash "
	  mGrossRent650_699_&_years. = "Renter-occupied housing units where gross rent is $650 to $699, &_years_dash "
	  mGrossRent700_749_&_years. = "Renter-occupied housing units where gross rent is $700 to $749, &_years_dash "
	  mGrossRent750_799_&_years. = "Renter-occupied housing units where gross rent is $750 to $799, &_years_dash "
      mGrossRent800_899_&_years. = "Renter-occupied housing units where gross rent is $800 to $899, &_years_dash "
      mGrossRent900_999_&_years. = "Renter-occupied housing units where gross rent is $900 to $999, &_years_dash "
      mGrossRent1000_1249_&_years. = "Renter-occupied housing units where gross rent is $1000 to $1249, &_years_dash "
      mGrossRent1250_1499_&_years. = "Renter-occupied housing units where gross rent is $1250 to $1499, &_years_dash "
      mGrossRent1500_1999_&_years. = "Renter-occupied housing units where gross rent is $1500 to $1999, &_years_dash "
      mGrossRent2000_2499_&_years. = "Renter-occupied housing units where gross rent is $2000 to $2499, &_years_dash "
      mGrossRent2500_2999_&_years. = "Renter-occupied housing units where gross rent is $2500 to $2999, &_years_dash "
      mGrossRent3000_3499_&_years. = "Renter-occupied housing units where gross rent is $3000 to $3499, &_years_dash "
      mGrossRentGT3500_&_years. = "Renter-occupied housing units where gross rent is greater than $3500, &_years_dash "
	  mGrossRentNoCash_&_years. = "Renter-occupied housing units where there is no cash rent, &_years_dash "
    mIncmByRenterCst_LT10K_&_years. = "Renter-occupied housing units with household income less than $10,000, excluding units where renter cost burden is not computed, MOE, &_years_dash "
	  mIncmByRenterCst_10_19K_&_years. = "Renter-occupied housing units with household income less than $10,000, excluding units where renter cost burden is not computed, MOE, &_years_dash "
	  mIncmByRenterCst_20_34K_&_years. = "Renter-occupied housing units with household income $20,000 to $34,999, excluding units where renter cost burden is not computed, MOE, &_years_dash "
	  mIncmByRenterCst_35_49K_&_years. = "Renter-occupied housing units with household income $35,000 to $49,999, excluding units where renter cost burden is not computed, MOE, &_years_dash "
	  mIncmByRenterCst_50_74K_&_years. = "Renter-occupied housing units with household income $50,000 to $74,999, excluding units where renter cost burden is not computed, MOE, &_years_dash "
	  mIncmByRenterCst_75_99K_&_years. = "Renter-occupied housing units with household income $75,000 to $99,999, excluding units where renter cost burden is not computed, MOE, &_years_dash "
	  mIncmByRenterCst_GT100K_&_years. = "Renter-occupied housing units with household income $100,000 or more, excluding units where renter cost burden is not computed, MOE, &_years_dash "
  	mAgeByRenterCst_15_24_&_years. = "Renter-occupied housing units where householder is aged 15 to 25 years old, excluding units where renter cost burden is not computed, MOE, &_years_dash "
  	  mAgeByRenterCst_25_34_&_years. = "Renter-occupied housing units where householder is aged 25 to 34 years old, excluding units where renter cost burden is not computed, MOE, &_years_dash "
  	  mAgeByRenterCst_35_64_&_years. = "Renter-occupied housing units where householder is aged 35 to 64 years old, excluding units where renter cost burden is not computed, MOE, &_years_dash "
  	  mAgeByRenterCst_65Over_&_years. = "Renter-occupied housing units where householder is aged 65 years and older, excluding units where renter cost burden is not computed, MOE, &_years_dash "
  	mAgeByOwnerCst_15_24_&_years. = "Owner-occupied housing units where householder is aged 15 to 25 years old, excluding units where owner cost burden is not computed, MOE, &_years_dash "
  	  mAgeByOwnerCst_25_34_&_years. = "Owner-occupied housing units where householder is aged 25 to 34 years old, excluding units where owner cost burden is not computed, MOE, &_years_dash "
  	  mAgeByOwnerCst_35_64_&_years. = "Owner-occupied housing units where householder is aged 35 to 64 years old, excluding units where owner cost burden is not computed, MOE, &_years_dash "
  	  mAgeByOwnerCst_65Over_&_years. = "Owner-occupied housing units where householder is aged 65 years and older, excluding units where owner cost burden is not computed, MOE, &_years_dash "
    mNumRenterCostBurden_&_years. = "Renter-occupied housing units with housing cost burden (housing costs are or exceed 30% of household income), MOE, &_years_dash "
    mNumRentSevereCostBurden_&_years. = "Renter-occupied housing units with severe housing cost burden (housing costs are or exceed 50% of household income), MOE, &_years_dash "
    mNumOwnerCostBurden_&_years. = "Owner-occupied housing units with and without a mortgage with housing cost burden (owner costs are or exceed 30% of household income), MOE, &_years_dash "
    mNumOwnSevereCostBurden_&_years. = "Owner-occupied housing units with severe housing cost burden (housing costs are or exceed 50% of household income), MOE, &_years_dash "
    mRentCostBurdenDenom_&_years. = "Renter-occupied housing units, excluding units where renter cost burden is not computed, MOE, &_years_dash  "
    mOwnerCostBurdenDenom_&_years. = "Owner-occupied housing units, excluding units where owner cost burden is not computed, MOE, &_years_dash  "
    mNumRentCstBurden_15_24_&_years. = "Renter-occupied housing units with housing cost burden and householder aged 15 to 24 years old, MOE, &_years_dash  "
      mNumRentCstBurden_25_34_&_years. = "Renter-occupied housing units with housing cost burden and householder aged 25 to 34 years old, MOE, &_years_dash  "
      mNumRentCstBurden_35_64_&_years. = "Renter-occupied housing units with housing cost burden and householder aged 35 to 64 years old, MOE, &_years_dash  "
      mNumRentCstBurden_65Over_&_years. = "Renter-occupied housing units with housing cost burden and householder aged 65 years old and older, MOE, &_years_dash  "
    mNumOwnCstBurden_15_24_&_years. = "Owner-occupied housing units with housing cost burden and householder aged 15 to 24 years old, MOE, &_years_dash  "
      mNumOwnCstBurden_25_34_&_years. = "Owner-occupied housing units with housing cost burden and householder aged 25 to 34 years old, MOE, &_years_dash  "
      mNumOwnCstBurden_35_64_&_years. = "Owner-occupied housing units with housing cost burden and householder aged 35 to 64 years old, MOE, &_years_dash  "
      mNumOwnCstBurden_65Over_&_years. = "Owner-occupied housing units with housing cost burden and householder aged 65 years old and older, MOE, &_years_dash  "
    mNumRentCstBurden_LT10K_&_years. = "Renter-occupied housing units with housing cost burden and household income less than $10,000, MOE, &_years_dash  "
      mNumRentCstBurden_10_19K_&_years. = "Renter-occupied housing units with housing cost burden and household income $10,000 to $19,999, MOE, &_years_dash  "
      mNumRentCstBurden_20_34K_&_years. = "Renter-occupied housing units with housing cost burden and household income $20,000 to $34,999, MOE, &_years_dash  "
      mNumRentCstBurden_35_49K_&_years. = "Renter-occupied housing units with housing cost burden and household income $35,000 to $49,999, MOE, &_years_dash  "
      mNumRentCstBurden_50_74K_&_years. = "Renter-occupied housing units with housing cost burden and household income $50,000 to $74,999, MOE, &_years_dash  "
      mNumRentCstBurden_75_99K_&_years. = "Renter-occupied housing units with housing cost burden and household income $75,000 to $99,999, MOE, &_years_dash  "
      mNumRentCstBurden_GT100K_&_years. = "Renter-occupied housing units with housing cost burden and household income $100,000 or more, MOE, &_years_dash  "
  medianhomevalue_&_years. = "Median value of owner-occupied housing units ($),&_years_dash"
  mmedianhomevalue_&_years.="Median value of owner-occupied housing units ($), MOE, &_years_dash"
      ;




%mend ACS_summary_geo_source_bg_vars;


