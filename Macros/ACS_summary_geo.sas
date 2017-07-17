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
		   NumHshldPhone_: NumHshldCar_: NumOccupied: NumOwner: NumRenter: NumVacant: Med:
		   AggIncome: AggHshldIncome: Num: Agg: 

		   NumFamilies_: NumHshlds_:

		   PopUnder5Years_: PopUnder18Years_:
		   Pop18_34Years_: Pop35_64Years_:
		   Pop65andOverYears_:

		   Pop25andOverYears_: Pop25andOverWoutHS_: Pop25andOverWHS_:
		   Pop25andOverWSC_: Pop25andOverWCollege_:

		   FamIncomeLT75k_: FamIncomeGT200k_:
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

           mPop25andOverWoutHS_&_years. mPop25andOverWHS_&_years. 
		   mPop25andOverWSC_&_years. mPop25andOverWCollege_&_years.
		   mPop25andOverYears_&_years.

		   mNumHshldPhone_&_years. mNumHshldCar_&_years. 

		   mAggFamilyIncome_&_years. 

		   mFamIncomeLT75k_&_years. mFamIncomeGT200k_&_years.

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

		   mNumOccupiedHsgUnits_&_years. mNumOccupiedHsgUnitsB_&_years.
		   mNumOccupiedHsgUnitsW_&_years. mNumOccupiedHsgUnitsH_&_years.
		   mNumOccupiedHsgUnitsA_&_years. mNumOccupiedHsgUnitsIOM_&_years.
		   mNumOccupiedHsgUnitsAIOM_&_years.

		   mNumOccupiedHsgUnits_&_years
           mNumOwnerOccupiedHU_&_years. mNumOwnerOccupiedHUB_&_years.
		   mNumOwnerOccupiedHUW_&_years. mNumOwnerOccupiedHUH_&_years.
		   mNumOwnerOccupiedHUA_&_years. mNumOwnerOccupiedHUIOM_&_years.
		   mNumOwnerOccupiedHUAIOM_&_years.

		   mNumOwnerOccupiedHU_&_years.
           mNumRenterOccupiedHU_&_years. mNumVacantHsgUnits_&_years.
           mNumVacantHUForRent_&_years. mNumVacantHUForSale_&_years. 
		   mNumRenterHsgUnits_&_years.                  
           ;
               
  %end;
  %else %do;
  
    %** Count and MOE variables for tract data **;
  
    %let count_vars = 
           Unwtd: TotPop: PopUnder: Pop5: Pop16: Pop18: Pop35: Pop25: Pop65: PopForeignBorn: PopAlone:
           PopWithRace: PopBlack: PopWhite: PopHisp: PopAsian: PopNative: PopNon: PopOther: PopMulti: 
           PopPoor: PopInCivLaborForce: PopCivilian: PopUnemployed: PopEmployed: PopWork:
           Persons: Children: ChildPoverty: Elderly: Num: Agg: Fam: Med:;
           
    %let moe_vars =
           mTotPop_&_years. 

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

		   mAggFamilyIncome_&_years. 

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
           ;
               
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
	revisions=
	)


  %end;
  %else %do;
  
    ** Transform data from source geography (&source_geo_var) to target geography (&geo_var) **;
    
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
      out_ds_name=&out_ds,
      out_ds_label=%str(ACS summary, &_years_dash, %upcase(&_state_ab), &source_geo_label source, &geo_label),
      calc_vars=,
      calc_vars_labels=,
      keep_nonmatch=N,
      show_warnings=10,
      print_diag=Y,
      full_diag=N
    )

	%Finalize_data_set( 
	data=&out_ds.,
	out=&out_ds.,
	outlib=&_out_lib.,
	label="ACS summary, &_years_dash, %upcase(&_state_ab), &source_geo_label source, &geo_label",
	sortby=&geo_name.,
	restrictions=None,
	revisions=
	)
    
  %end;  


  ** Add sortedby= to data set descriptor **;

  proc datasets library=&_out_lib memtype=(data) nolist;
    modify &out_ds (sortedby=&geo_var);
  quit;


  %File_info( data=&out_ds, printobs=0 )

  



%mend ACS_summary_geo;


