/**************************************************************************
 Program:  ACS_summary_geo.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  02/04/16
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Macro to create ACS summary files for a specified
 geography.

 Modifications: 7/29/16 - Added additional variables, included racial breakdowns. 
**************************************************************************/

%macro ACS_summary_geo( geo, source_geo );

  %local geo_name geo_wt_file geo_var geo_suffix geo_label count_vars moe_vars
         out_ds;

  %let geo_name = %upcase( &geo );
  %let geo_wt_file = %sysfunc( putc( &geo_name, &source_geo_wt_file_fmt ) );;
  %let geo_var = %sysfunc( putc( &geo_name, $geoval. ) );
  %let geo_suffix = %sysfunc( putc( &geo_name, $geosuf. ) );
  %let geo_label = %sysfunc( putc( &geo_name, $geodlbl. ) );
  
  %let out_ds = ACS_&_years._&state_ab._sum&source_geo_suffix.&geo_suffix;

  %if %upcase( &source_geo ) = BG00 or %upcase( &source_geo ) = BG10 %then %do;
  
    %** Count and MOE variables for block group data **;

    %let count_vars = 
           Unwtd: TotPop: PopUnder: Pop25: Pop65: PopAlone:
           PopWithRace: PopBlack: PopNative: PopWhite: PopHisp: PopAsian: PopOther: PopMulti: PopEmployed: 
       NumHshldPhone_: NumHshldCar_:  
       Num: 

       NumFamilies_: NumHshlds_:

       PopUnder5Years_: PopUnder18Years_:
       Pop18_34Years_: Pop35_64Years_:
       Pop65andOverYears_:

       Pop25andOverYears_: Pop25andOverWoutHS_: Pop25andOverWHS_:
       Pop25andOverWSC_: Pop25andOverWCollege_:
               
       ;
           
    %let moe_vars =
           mTotPop_&_years. mPopUnder5Years_&_years. 
       mPopUnder18Years_&_years. mPop18_34Years_&_years.
       mPop35_64Years_&_years. mPop65andOverYears_&_years.
       mPop25andOverYears_&_years.

       mNumHshlds_&_years. mNumFamilies_&_years.

           mPopWithRace_&_years. mPopBlackNonHispBridge_&_years.
           mPopWhiteNonHispBridge_&_years. mPopAsianPINonHispBridge_&_years. 
       mPopHisp_&_years. mPopNativeAmNonHispBr_&_years.
           mPopOtherNonHispBridge_&_years. mPopMultiracialNonHisp_&_years.
           mPopOtherRaceNonHispBr_&_years. 

       mPopAloneB_&_years. mPopAloneW_&_years.
       mPopAloneH_&_years. mPopAloneA_&_years.
       mPopAloneI_&_years. mPopAloneO_&_years.
       mPopAloneM_&_years. mPopAloneIOM_&_years.
       mPopAloneAIOM_&_years.

       mPopEmployedByInd_&_years. mPopEmployedAgric_&_years. mPopEmployedConstr_&_years. 
       mPopEmployedManuf_&_years. mPopEmployedWhlsale_&_years. mPopEmployedRetail_&_years. 
       mPopEmployedTransprt_&_years. mPopEmployedInfo_&_years. mPopEmployedFinance_&_years. 
       mPopEmployedProfServ_&_years. mPopEmployedEduction_&_years. mPopEmployedArts_&_years. 
       mPopEmployedOther_&_years. mPopEmployedPubAdmin_&_years.

       mPopEmployedByOcc_&_years. mPopEmployedMngmt_&_years.
       mPopEmployedServ_&_years. mPopEmployedSales_&_years.
       mPopEmployedNatRes_&_years. mPopEmployedProd_&_years.

       mPopEmployedByOccB_&_years. mPopEmployedMngmtB_&_years.
       mPopEmployedServB_&_years. mPopEmployedSalesB_&_years.
       mPopEmployedNatResB_&_years. mPopEmployedProdB_&_years.

          mPopEmployedByOccW_&_years. mPopEmployedMngmtW_&_years.
       mPopEmployedServW_&_years. mPopEmployedSalesW_&_years.
       mPopEmployedNatResW_&_years. mPopEmployedProdW_&_years.

       mPopEmployedByOccH_&_years. mPopEmployedMngmtH_&_years.
       mPopEmployedServH_&_years. mPopEmployedSalesH_&_years.
       mPopEmployedNatResH_&_years. mPopEmployedProdH_&_years.

       mPopEmployedByOccA_&_years. mPopEmployedMngmtA_&_years.
       mPopEmployedServA_&_years. mPopEmployedSalesA_&_years.
       mPopEmployedNatResA_&_years. mPopEmployedProdA_&_years.

       mPopEmployedByOccIOM_&_years. mPopEmployedMngmtIOM_&_years.
       mPopEmployedServIOM_&_years. mPopEmployedSalesIOM_&_years.
       mPopEmployedNatResIOM_&_years. mPopEmployedProdIOM_&_years.

       mPopEmployedByOccAIOM_&_years. mPopEmployedMngmtAIOM_&_years.
       mPopEmployedServAIOM_&_years. mPopEmployedSalesAIOM_&_years.
       mPopEmployedNatResAIOM_&_years. mPopEmployedProdAIOM_&_years.

       mPopEmployedWorkers_&_years. mPopEmployedWorkInState_&_years. mPopEmployedWorkInCnty_&_years. mPopEmployedWorkOutCnty_&_years. mPopEmployedWorkOutState_&_years.

           mPop25andOverWoutHS_&_years. mPop25andOverWHS_&_years. 
       mPop25andOverWSC_&_years. mPop25andOverWCollege_&_years.
       mPop25andOverYears_&_years.

       mNumHshldPhone_&_years. mNumHshldCar_&_years. 

              ;
               
  %end;
  %else %do;
  
    %** Count and MOE variables for tract data **;
  
    %let count_vars = 
           Unwtd: TotPop: PopUnder: Pop5: Pop16: Pop18: Pop35: Pop25: Pop65: PopForeignBorn: PopAlone:
           PopWithRace: PopBlack: PopWhite: PopHisp: PopAsian: PopNative: PopNon: PopOther: PopMulti: 
           PopPoor: PopInCivLaborForce: PopCivilian: PopUnemployed: PopEmployed: PopWork:
           Persons: Children: ChildPoverty: Elderly: Num: Agg: Fam: Hshld: Med: PopMoved: GrossRent: IncmBy: AgeBy:
           
	   RentCostBurdenDenom: OwnerCostBurdenDenom:

       ;
	
	%**variables appear in all years;
	%let moeallyears=  mTotPop_&_years. 

       mNumHshlds_&_years. mNumHshldsB_&_years.
       mNumHshldsW_&_years. mNumHshldsH_&_years.
       mNumHshldsA_&_years. mNumHshldsIOM_&_years.
       mNumHshldsAIOM_&_years.

       mNumFamilies_&_years. mNumFamiliesB_&_years.
       mNumFamiliesW_&_years. mNumFamiliesH_&_years.
       mNumFamiliesA_&_years. mNumFamiliesIOM_&_years.
       mNumFamiliesAIOM_&_years.

       mPopUnder5Years_&_years. mPop5andOverYears_&_years. 

       mPopUnder18Years_&_years. mPopUnder18YearsB_&_years.
       mPopUnder18YearsW_&_years. mPopUnder18YearsH_&_years.
       mPopUnder18YearsA_&_years. mPopUnder18YearsIOM_&_years.
       mPopUnder18YearsAIOM_&_years.

       mPop18_34Years_&_years. mPop18_34YearsB_&_years.
       mPop18_34YearsW_&_years. mPop18_34YearsH_&_years.
       mPop18_34YearsA_&_years. mPop18_34YearsIOM_&_years.
       mPop18_34YearsAIOM_&_years.

       mPop35_64Years_&_years. mPop35_64YearsB_&_years.
       mPop35_64YearsW_&_years. mPop35_64YearsH_&_years.
       mPop35_64YearsA_&_years. mPop35_64YearsIOM_&_years.
       mPop35_64YearsAIOM_&_years. 

       mPop65andOverYears_&_years. mPop65andOverYearsB_&_years.
       mPop65andOverYearsW_&_years. mPop65andOverYearsH_&_years.
       mPop65andOverYearsA_&_years. mPop65andOverYearsIOM_&_years.
       mPop65andOverYearsAIOM_&_years.

       mPopNativeBorn_&_years. mPopForeignBorn_&_years. mPopNonEnglish_&_years.

       mPopForeignBornB_&_years. mPopForeignBornW_&_years.
       mPopForeignBornH_&_years. mPopForeignBornA_&_years.
       mPopForeignBornIOM_&_years. mPopForeignBornAIOM_&_years.

           mPopWithRace_&_years. mPopBlackNonHispBridge_&_years.
           mPopWhiteNonHispBridge_&_years. mPopAsianPINonHispBridge_&_years. 
       mPopHisp_&_years. mPopNativeAmNonHispBr_&_years.
           mPopOtherNonHispBridge_&_years. mPopMultiracialNonHisp_&_years.
           mPopOtherRaceNonHispBr_&_years. 

       mPopAloneB_&_years. mPopAloneW_&_years.
       mPopAloneH_&_years. mPopAloneA_&_years.
       mPopAloneI_&_years. mPopAloneO_&_years.
       mPopAloneM_&_years. mPopAloneIOM_&_years.
       mPopAloneAIOM_&_years.

       mPopPoorPersons_&_years. mPopPoorPersonsB_&_years.
       mPopPoorPersonsW_&_years. mPopPoorPersonsH_&_years.
       mPopPoorPersonsA_&_years. mPopPoorPersonsIOM_&_years.
       mPopPoorPersonsAIOM_&_years.

           mPersonsPovertyDefined_&_years. mPersonsPovertyDefinedB_&_years.
       mPersonsPovertyDefinedW_&_years. mPersonsPovertyDefinedH_&_years.
       mPersonsPovertyDefinedA_&_years. mPersonsPovertyDefIOM_&_years.
       mPersonsPovertyDefAIOM_&_years.

       mPopPoorChildren_&_years. mPopPoorChildrenB_&_years.
       mPopPoorChildrenW_&_years. mPopPoorChildrenH_&_years.
       mPopPoorChildrenA_&_years. mPopPoorChildrenIOM_&_years.
       mPopPoorChildrenAIOM_&_years.

           mChildrenPovertyDefined_&_years. mChildrenPovertyDefinedB_&_years.
       mChildrenPovertyDefinedW_&_years. mChildrenPovertyDefinedH_&_years.
       mChildrenPovertyDefinedA_&_years. mChildrenPovertyDefIOM_&_years.
       mChildrenPovertyDefAIOM_&_years.

       mPopPoorElderly_&_years. mElderlyPovertyDefined_&_years. 
       mPopPoorPersonsFB_&_years. mPersonsPovertyDefinedFB_&_years. 

       mPopCivilianEmployed_&_years. mPopCivilianEmployedB_&_years.
       mPopCivilianEmployedW_&_years. mPopCivilianEmployedH_&_years.
       mPopCivilianEmployedA_&_years. mPopCivilianEmployedIOM_&_years.
       mPopCivilianEmployedAIOM_&_years.

           mPopUnemployed_&_years. mPopUnemployedB_&_years.
       mPopUnemployedW_&_years. mPopUnemployedH_&_years.
       mPopUnemployedA_&_years. mPopUnemployedIOM_&_years.
       mPopUnemployedAIOM_&_years.

       mPopInCivLaborForce_&_years. mPopInCivLaborForceB_&_years.
       mPopInCivLaborForceW_&_years. mPopInCivLaborForceH_&_years.
       mPopInCivLaborForceA_&_years. mPopInCivLaborForceIOM_&_years.
       mPopInCivLaborForceAIOM_&_years.

       mPop16andOverEmployed_&_years
           mPop16andOverEmploy_&_years. mPop16andOverEmployB_&_years.
       mPop16andOverEmployW_&_years. mPop16andOverEmployH_&_years.
       mPop16andOverEmployA_&_years. mPop16andOverEmployIOM_&_years.
       mPop16andOverEmployAIOM_&_years.

       mPop16_64Employed_&_years. mPop16_64EmployedB_&_years.
       mPop16_64EmployedW_&_years. mPop16_64EmployedH_&_years.
       mPop16_64EmployedA_&_years. mPop16_64EmployedIOM_&_years.
       mPop16_64EmployedAIOM_&_years.

       mPop25_64Employed_&_years. 

       mPop16andOverYears_&_years. mPop16andOverYearsB_&_years.
       mPop16andOverYearsW_&_years. mPop16andOverYearsH_&_years.
       mPop16andOverYearsA_&_years. mPop16andOverYearsIOM_&_years.
       mPop16andOverYearsAIOM_&_years.

       mPop16_64years_&_years. mPop16_64yearsB_&_years.
       mPop16_64yearsW_&_years. mPop16_64yearsH_&_years.
       mPop16_64yearsA_&_years. mPop16_64yearsIOM_&_years.
       mPop16_64yearsAIOM_&_years.

       mPop25_64years_&_years. mPop25_64yearsB_&_years.
       mPop25_64yearsW_&_years. mPop25_64yearsH_&_years.
       mPop25_64yearsA_&_years. mPop25_64yearsIOM_&_years.
       mPop25_64yearsAIOM_&_years.

       mPopEmployedByInd_&_years. mPopEmployedAgric_&_years. mPopEmployedConstr_&_years. 
       mPopEmployedManuf_&_years. mPopEmployedWhlsale_&_years. mPopEmployedRetail_&_years. 
       mPopEmployedTransprt_&_years. mPopEmployedInfo_&_years. mPopEmployedFinance_&_years. 
       mPopEmployedProfServ_&_years. mPopEmployedEduction_&_years. mPopEmployedArts_&_years. 
       mPopEmployedOther_&_years. mPopEmployedPubAdmin_&_years.

       mPopEmployedByOcc_&_years. mPopEmployedMngmt_&_years.
       mPopEmployedServ_&_years. mPopEmployedSales_&_years.
       mPopEmployedNatRes_&_years. mPopEmployedProd_&_years.

       mPopEmployedByOccB_&_years. mPopEmployedMngmtB_&_years.
       mPopEmployedServB_&_years. mPopEmployedSalesB_&_years.
       mPopEmployedNatResB_&_years. mPopEmployedProdB_&_years.

          mPopEmployedByOccW_&_years. mPopEmployedMngmtW_&_years.
       mPopEmployedServW_&_years. mPopEmployedSalesW_&_years.
       mPopEmployedNatResW_&_years. mPopEmployedProdW_&_years.

       mPopEmployedByOccH_&_years. mPopEmployedMngmtH_&_years.
       mPopEmployedServH_&_years. mPopEmployedSalesH_&_years.
       mPopEmployedNatResH_&_years. mPopEmployedProdH_&_years.

       mPopEmployedByOccA_&_years. mPopEmployedMngmtA_&_years.
       mPopEmployedServA_&_years. mPopEmployedSalesA_&_years.
       mPopEmployedNatResA_&_years. mPopEmployedProdA_&_years.

       mPopEmployedByOccIOM_&_years. mPopEmployedMngmtIOM_&_years.
       mPopEmployedServIOM_&_years. mPopEmployedSalesIOM_&_years.
       mPopEmployedNatResIOM_&_years. mPopEmployedProdIOM_&_years.

       mPopEmployedByOccAIOM_&_years. mPopEmployedMngmtAIOM_&_years.
       mPopEmployedServAIOM_&_years. mPopEmployedSalesAIOM_&_years.
       mPopEmployedNatResAIOM_&_years. mPopEmployedProdAIOM_&_years.

       mPopEmployedWorkers_&_years. mPopEmployedWorkInState_&_years. mPopEmployedWorkInCnty_&_years. mPopEmployedWorkOutCnty_&_years. mPopEmployedWorkOutState_&_years.

       mPopEmployedTravel_&_years. mPopEmployedTravel_LT5_&_years. mPopEmployedTravel_5_9_&_years. mPopEmployedTravel_10_14_&_years.
       mPopEmployedTravel_15_19_&_years. mPopEmployedTravel_20_24_&_years. mPopEmployedTravel_25_29_&_years. mPopEmployedTravel_30_34_&_years. 
       mPopEmployedTravel_35_39_&_years. mPopEmployedTravel_40_44_&_years. mPopEmployedTravel_45_59_&_years. mPopEmployedTravel_60_89_&_years. 
       mPopEmployedTravel_GT90_&_years. 

       mPopWorkFT_&_years. mPopWorkFTB_&_years.
       mPopWorkFTW_&_years. mPopWorkFTH_&_years.
       mPopWorkFTA_&_years. mPopWorkFTIOM_&_years.
       mPopWorkFTAIOM_&_years.

       mPopWorkEarn_&_years. mPopWorkEarnB_&_years.
       mPopWorkEarnW_&_years. mPopWorkEarnH_&_years.
       mPopWorkEarnA_&_years. mPopWorkEarnIOM_&_years.
       mPopWorkEarnAIOM_&_years.

       mPopWorkFTLT35K_&_years. mPopWorkFTLT35KB_&_years.
       mPopWorkFTLT35KW_&_years. mPopWorkFTLT35KH_&_years.
       mPopWorkFTLT35KA_&_years. mPopWorkFTLT35KIOM_&_years.
       mPopWorkFTLT35KAIOM_&_years.

       mPopWorkFTLT75K_&_years. mPopWorkFTLT75KB_&_years.
       mPopWorkFTLT75KW_&_years. mPopWorkFTLT75KH_&_years.
       mPopWorkFTLT75KA_&_years. mPopWorkFTLT75KIOM_&_years.
       mPopWorkFTLT75KAIOM_&_years.

           mPop25andOverWoutHS_&_years. mPop25andOverWoutHSB_&_years.
       mPop25andOverWoutHSW_&_years. mPop25andOverWoutHSH_&_years.
       mPop25andOverWoutHSA_&_years. mPop25andOverWoutHSIOM_&_years.
       mPop25andOverWoutHSAIOM_&_years. mPop25andOverWoutHSFB_&_years.
       mPop25andOverWoutHSNB_&_years.

       mPop25andOverWHS_&_years. mPop25andOverWHSB_&_years.
       mPop25andOverWHSW_&_years. mPop25andOverWHSH_&_years.
       mPop25andOverWHSA_&_years. mPop25andOverWHSIOM_&_years.
       mPop25andOverWHSAIOM_&_years. mPop25andOverWHSFB_&_years.
       mPop25andOverWHSNB_&_years.

       mPop25andOverWSC_&_years. mPop25andOverWSCB_&_years. 
       mPop25andOverWSCW_&_years. mPop25andOverWSCH_&_years. 
       mPop25andOverWSCA_&_years. mPop25andOverWSCIOM_&_years. 
       mPop25andOverWSCAIOM_&_years. mPop25andOverWSCFB_&_years.
       mPop25andOverWSCNB_&_years.

       mPop25andOverWCollege_&_years.

           mPop25andOverYears_&_years. mPop25andOverYearsB_&_years.
       mPop25andOverYearsW_&_years. mPop25andOverYearsH_&_years.
       mPop25andOverYearsA_&_years. mPop25andOverYearsIOM_&_years.
       mPop25andOverYearsAIOM_&_years. mPop25andOverYearsFB_&_years.
       mPop25andOverYearsNB_&_years.

           mNumFamiliesOwnChildren_&_years. mNumFamiliesOwnChildFH_&_years. 
       mNumHshldPhone_&_years. mNumHshldCar_&_years. 

       
       mAggIncome_&_years. mAggIncomeB_&_years.
       mAggIncomeW_&_years. mAggIncomeH_&_years.
       mAggIncomeA_&_years. mAggIncomeIOM_&_years.
       mAggIncomeAIOM_&_years.
              
       mAggHshldIncome_&_years. mAggHshldIncomeB_&_years.
       mAggHshldIncomeW_&_years. mAggHshldIncomeH_&_years.
       mAggHshldIncomeA_&_years. mAggHshldIncomeIOM_&_years.
       mAggHshldIncomeAIOM_&_years.

       mAggFamilyIncome_&_years. 
       mFamIncomeLT75k_&_years. mFamIncomeGT200k_&_years.
       

       mFamIncomeLT75k_&_years. mFamIncomeLT75kB_&_years.
       mFamIncomeLT75kW_&_years. mFamIncomeLT75kH_&_years.
       mFamIncomeLT75kA_&_years. mFamIncomeLT75kIOM_&_years.
       mFamIncomeLT75kAIOM_&_years.

       mFamIncomeGT200k_&_years. mFamIncomeGT200kB_&_years.
       mFamIncomeGT200kW_&_years. mFamIncomeGT200kH_&_years.
       mFamIncomeGT200kA_&_years. mFamIncomeGT200kIOM_&_years.
       mFamIncomeGT200kAIOM_&_years.

       mMedFamIncm_&_years. mMedFamIncmB_&_years.
       mMedFamIncmW_&_years. mMedFamIncmH_&_years.
       mMedFamIncmA_&_years. mMedFamIncmIOM_&_years.
       mMedFamIncmAIOM_&_years.

       mAggIncome_&_years. mAggIncomeB_&_years.
       mAggIncomeW_&_years. mAggIncomeH_&_years.
       mAggIncomeA_&_years. mAggIncomeIOM_&_years.
       mAggIncomeAIOM_&_years.

       mAggHshldIncome_&_years. mAggHshldIncomeB_&_years.
       mAggHshldIncomeW_&_years. mAggHshldIncomeH_&_years.
       mAggHshldIncomeA_&_years. mAggHshldIncomeIOM_&_years.
       mAggHshldIncomeAIOM_&_years.
       
       mHshldIncUnder15000_&_years. mHshldInc15000to34999_&_years. mHshldInc35000to49999_&_years. 
       mHshldInc50000to74999_&_years. mHshldInc75000to99999_&_years. mHshldInc100000plus_&_years.
       mHshldInc100000to124999_&_years. mHshldInc125000to149999_&_years. mHshldInc150000to199999_&_years. 
       mHshldInc200000plus_&_years.

       mNumHsgUnits_&_years.
	   mNumOccupiedHsgUnits_&_years.
	   mNumOccupiedHsgUnits_&_years. mNumOccupiedHsgUnitsB_&_years.
       mNumOccupiedHsgUnitsW_&_years. mNumOccupiedHsgUnitsH_&_years.
       mNumOccupiedHsgUnitsA_&_years. mNumOccupiedHsgUnitsIOM_&_years.
       mNumOccupiedHsgUnitsAIOM_&_years.

       mNumOwnerOccupiedHU_&_years. mNumOwnerOccupiedHUB_&_years.
       mNumOwnerOccupiedHUW_&_years. mNumOwnerOccupiedHUH_&_years.
       mNumOwnerOccupiedHUA_&_years. mNumOwnerOccupiedHUIOM_&_years.
       mNumOwnerOccupiedHUAIOM_&_years.

       mNumOwnerOccupiedHU_&_years. mNumRenterOccupiedHU_&_years. 
	   mNumVacantHsgUnits_&_years. mNumVacantHUForRent_&_years. 
	   mNumVacantHUForSale_&_years. mNumRenterHsgUnits_&_years. 

	   mNumOccupiedHsgUnits_&_years. mNumOccupiedHsgUnitsB_&_years.
       mNumOccupiedHsgUnitsW_&_years. mNumOccupiedHsgUnitsH_&_years.
       mNumOccupiedHsgUnitsA_&_years. mNumOccupiedHsgUnitsIOM_&_years.
       mNumOccupiedHsgUnitsAIOM_&_years.

       mNumOwnerOccupiedHU_&_years. mNumOwnerOccupiedHUB_&_years.
       mNumOwnerOccupiedHUW_&_years. mNumOwnerOccupiedHUH_&_years.
       mNumOwnerOccupiedHUA_&_years. mNumOwnerOccupiedHUIOM_&_years.
       mNumOwnerOccupiedHUAIOM_&_years.

       mNumRenterOccupiedHU_&_years. mNumVacantHsgUnits_&_years.
       mNumVacantHUForRent_&_years. mNumVacantHUForSale_&_years. 
       mNumRenterHsgUnits_&_years. 

	   mGrossRentLT100_&_years. mGrossRent100_149_&_years. mGrossRent150_199_&_years. 
	   mGrossRent200_249_&_years. mGrossRent250_299_&_years. mGrossRent300_349_&_years. 
	   mGrossRent350_349_&_years. mGrossRent400_449_&_years. mGrossRent450_499_&_years. 
	   mGrossRent500_549_&_years. mGrossRent550_599_&_years. mGrossRent600_649_&_years. 
	   mGrossRent650_699_&_years. mGrossRent700_749_&_years. mGrossRent750_799_&_years. 
	   mGrossRent800_899_&_years. mGrossRent900_999_&_years. mGrossRent1000_1249_&_years. 
	   mGrossRent1250_1499_&_years. mGrossRent1500_1999_&_years. mGrossRentGT2000_&_years. 
	   mGrossRentNoCash_&_years. 

	   mIncmByRenterCst_LT10K_&_years. mIncmByRenterCst_10_19K_&_years. mIncmByRenterCst_20_34K_&_years. 
	   mIncmByRenterCst_35_49K_&_years. mIncmByRenterCst_50_74K_&_years. mIncmByRenterCst_75_99K_&_years. 
	   mIncmByRenterCst_GT100K_&_years. 

	   mAgeByRenterCst_15_24_&_years. mAgeByRenterCst_25_34_&_years. mAgeByRenterCst_35_64_&_years. mAgeByRenterCst_65Over_&_years. 

	   mAgeByOwnerCst_15_24_&_years. mAgeByOwnerCst_25_34_&_years. mAgeByOwnerCst_35_64_&_years. mAgeByOwnerCst_65Over_&_years. 

       mNumRenterCostBurden_&_years.
       mNumRentSevereCostBurden_&_years. 
       mNumOwnerCostBurden_&_years. 
       mNumOwnSevereCostBurden_&_years. 
       mRentCostBurdenDenom_&_years.
       mOwnerCostBurdenDenom_&_years.

       mNumRentCstBurden_15_24_&_years. mNumRentCstBurden_25_34_&_years. 
       mNumRentCstBurden_35_64_&_years. mNumRentCstBurden_65Over_&_years. 

       mNumOwnCstBurden_15_24_&_years. mNumOwnCstBurden_25_34_&_years. 
       mNumOwnCstBurden_35_64_&_years. mNumOwnCstBurden_65Over_&_years. 

       mNumRentCstBurden_LT10K_&_years. mNumRentCstBurden_10_19K_&_years. 
       mNumRentCstBurden_20_34K_&_years. mNumRentCstBurden_35_49K_&_years. 
       mNumRentCstBurden_50_74K_&_years. mNumRentCstBurden_75_99K_&_years. 
       mNumRentCstBurden_GT100K_&_years. 
       
       mNumHsgUnits0bd_&_years. mNumHsgUnits1bd_&_years.
       mNumhsgUnits2bd_&_years. mNumhsgUnits3bd_&_years.
       mNumHsgUnits3plusbd_&_years.
       mNumHsgUnits4bd_&_years. mNumHsgUnits5plusbd_&_years.
       
       mNumRentOccHU0bd_&_years. mNumRentOccHU1bd_&_years. 
       mNumRentOccHU2bd_&_years. mNumRentOccHU3bd_&_years.
       mNumRentOccHU4bd_&_years. mNumRentOccHU5plusbd_&_years.
       mNumRentOccHU3plusbd_&_years.
       
       mNumOwnOccHU0bd_&_years. mNumOwnOccHU1bd_&_years.
       mNumOwnOccHU2bd_&_years. mNumOwnOccHU3bd_&_years.
       mNumOwnOccHU4bd_&_years. mNumOwnOccHU5plusbd_&_years.
       mNumOwnOccHU3plusbd_&_years.
       
       mNumRtOHU0Bunder500_&_years. mNumRtOHU0B500to749_&_years. 
       mNumRtOHU0B750to999_&_years. mNumRtOHU0B1000plus_&_years.
       mNumRtOHU1Bunder500_&_years. mNumRtOHU1B500to749_&_years. 
       mNumRtOHU1B750to999_&_years. mNumRtOHU1B1000plus_&_years.
       mNumRtOHU2Bunder500_&_years. mNumRtOHU2B500to749_&_years.
       mNumRtOHU2B750to999_&_years.  mNumRtOHU2B1000plus_&_years. 
       mNumRtOHU3Bunder500_&_years. mNumRtOHU3B500to749_&_years. 
       mNumRtOHU3B750to999_&_years. mNumRtOHU3B1000plus_&_years. 
              
       mPopMovedLastYear_&_years.  mPopMovedLastYearB_&_years.
       mPopMovedLastYearW_&_years.  mPopMovedLastYearH_&_years.
       mPopMovedLastYearA_&_years.  mPopMovedLastYearIOM_&_years.
       mPopMovedLastYearAIOM_&_years.

       mPopMovedDiffCnty_&_years.  mPopMovedDiffCntyB_&_years.
       mPopMovedDiffCntyW_&_years.  mPopMovedDiffCntyH_&_years.
       mPopMovedDiffCntyA_&_years.  mPopMovedDiffCntyIOM_&_years.
       mPopMovedDiffCntyAIOM_&_years.
	   ;
	
	%**variables appear only 2013 and later; 
	%let moe2013plus = 
	  	   mIncmByOwnerCst_LT10K_&_years. mIncmByOwnerCst_10_19K_&_years. mIncmByOwnerCst_20_34K_&_years. 
		   mIncmByOwnerCst_35_49K_&_years. mIncmByOwnerCst_50_74K_&_years. mIncmByOwnerCst_75_99K_&_years. 
		   mIncmByOwnerCst_100_149_&_years. mIncmByOwnerCst_GT150K_&_years. 

			mNumOwnCstBurden_LT10K_&_years. mNumOwnCstBurden_10_19K_&_years. 
       		mNumOwnCstBurden_20_34K_&_years. mNumOwnCstBurden_35_49K_&_years. 
       		mNumOwnCstBurden_50_74K_&_years. mNumOwnCstBurden_75_99K_&_years. 
       		mNumOwnCstBurden_100_149_&_years. mNumOwnCstBurden_GT150K_&_years. 

			;

	%**variables appear only 2015 and later; 
	%let moe2015plus = 
			
			mMedRent0bd_&_years. mMedRent1bd_&_years.
	       mMedRent2bd_&_years. mMedRent3bd_&_years.
	       mMedRent4bd_&_years. mMedRent5plusbd_&_years.
		
		   mGrossRent2000_2499_&_years. mGrossRent2500_2999_&_years. mGrossRent3000_3499_&_years. mGrossRentGT3500_&_years. 

			mNumRtOHU0B1000to1499_&_years. mNumRtOHU0B1500plus_&_years.
			mNumRtOHU1B1000to1499_&_years. mNumRtOHU1B1500plus_&_years.
			mNumRtOHU2B1000to1499_&_years. mNumRtOHU2B1500plus_&_years.
			mNumRtOHU3B1000to1499_&_years. mNumRtOHU3B1500plus_&_years. 
			
		;

	%if &_last_year. < 2013 %then %do; 
    	%let moe_vars =&moeallyears.; 

	%end; 

	%else %if &_last_year. > 2012 %then %do; 
		%let moe_vars =&moeallyears. &moe2013plus.; 
 	
         %end; 

	%else %if &_last_year. > 2014 %then %do; 
		 	
		%let moe_vars =&moeallyears. &moe2013plus. &moe2015plus;

		%end;
               
  %end;

  
  %put _local_;
  
  %if ( &geo_name = GEO2000 and %upcase( &source_geo_var ) = GEO2000 ) or 
      ( &geo_name = GEO2010 and %upcase( &source_geo_var ) = GEO2010 ) or
    ( &geo_name = COUNTY and %upcase( &source_geo_var ) = REGCOUNTY )%then %do;

	    ** Census tracts from census tract source (same year): just recopy selected vars **;

	    data &out_ds (label="ACS summary, &_years_dash, %upcase(&_state_ab), &source_geo_label source, &geo_label");

	      set &source_ds_work (keep=&geo_var &count_vars &moe_vars);

	    run;

	  %Finalize_data_set( 
	  data=&out_ds.,
	  out=&out_ds.,
	  outlib=&_out_lib.,
	  label="ACS summary, &_years_dash, %upcase(&_state_ab), &source_geo_label source, &geo_label",
	  sortby=&geo_name.,
	  restrictions=None,
	  printobs=0,
	  freqvars=&geo_name.,
	  revisions=&revisions.
	  )


  %end;

  %else %do;

    ** Transform data from source geography (&source_geo_var) to target geography (&geo_var) **;
    
   	%if &geo = councildist %then %do;
   
		%if &_state_ab = md %then %do;

			data &source_ds_work.1 (where=(ucounty in("24009" "24017" "24021" "24031" "24033")));
				set &source_ds_work;

			ucounty=substr(&source_geo_var,1,5);
			run; 
		%end;	
		%if &_state_ab = va %then %do;

			data &source_ds_work.1 (where=(ucounty in("51013" "51043" "51047" "51059" "51061" "51107" "51153" "51157" "51177" "51179" "51187" "51510" "51600" "51610" "51630" "51683" "51685")));
				set &source_ds_work;

			ucounty=substr(&source_geo_var,1,5);
			run; 
		%end;
		%if &_state_ab = wv %then %do;

			data &source_ds_work.1 (where=(ucounty="54037"));
				set &source_ds_work;

			ucounty=substr(&source_geo_var,1,5);
			run; 
		%end;
		%if &_state_ab = dc %then %do;

			data &source_ds_work.1 (where=(ucounty ="11001"));
				set &source_ds_work;

			ucounty=substr(&source_geo_var,1,5);
			run; 
		%end;
   	

		    %Transform_geo_data(
		      dat_ds_name=&source_ds_work.1,
		      dat_org_geo=&source_geo_var,
		      dat_count_vars=&count_vars,
		      dat_count_moe_vars=&moe_vars,
		      dat_prop_vars=,
		      wgt_ds_name=General.&geo_wt_file,
		      wgt_org_geo=&source_geo_var,
		      wgt_new_geo=&geo_var,
		      wgt_id_vars=,
		      wgt_wgt_var=popwt,
		      out_ds_name=&out_ds._,
		      out_ds_label=%str(ACS summary, &_years_dash, %upcase(&_state_ab), &source_geo_label source, &geo_label),
		      calc_vars=,
		      calc_vars_labels=,
		      keep_nonmatch=N,
		      show_warnings=10,
		      print_diag=Y,
		      full_diag=N,
		      mprint=Y
		    )

	   %end;
   
  	 %else %do;
   
	    %Transform_geo_data(
		 dat_ds_name=&source_ds_work,
		 dat_org_geo=&source_geo_var,
		 dat_count_vars=&count_vars,
		 dat_count_moe_vars=&moe_vars,
		 dat_prop_vars=,
		 wgt_ds_name=General.&geo_wt_file,
		 wgt_org_geo=&source_geo_var,
		 wgt_new_geo=&geo_var,
		 wgt_id_vars=,
		 wgt_wgt_var=popwt,
		 out_ds_name=&out_ds._,
		 out_ds_label=%str(ACS summary, &_years_dash, %upcase(&_state_ab), &source_geo_label source, &geo_label),
		 calc_vars=,
		 calc_vars_labels=,
		 keep_nonmatch=N,
		 show_warnings=10,
		 print_diag=Y,
		 full_diag=N,
		 mprint=Y
	    )

	    %end;
   
   

  data &out_ds;
    set &out_ds._;
    if TotPop_&_years. >0;
  run;

  %Finalize_data_set( 
  data=&out_ds.,
  out=&out_ds.,
  outlib=&_out_lib.,
  label="ACS summary, &_years_dash, %upcase(&_state_ab), &source_geo_label source, &geo_label",
  sortby=&geo_name.,
  restrictions=None,
  printobs=0,
  freqvars=&geo_name.,
  revisions=&revisions.
  )
    
  %end;  


%mend ACS_summary_geo;


