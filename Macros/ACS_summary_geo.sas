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
                06/05/18-- Yipeng Su added additional variables pop by sex and age, insurance coverage, family type, earnings
                09/20/18 Yipeng Su added family type by presense of related children
                02/06/19 YS added median hh income
				02/17/19 LH removed unnessary %let=count_vars that varied by year for tracts
                03/27/19 YS add MOE for the additional rows from table B28002
				09/30/20 AH edited MOE conditional to make < 2014 <= 2014 and <2013 <= 2013
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

  %if %upcase( &source_geo ) = BG00 or %upcase( &source_geo ) = BG10 or %upcase( &source_geo ) = BG20 %then %do;
  
    %** Count and MOE variables for block group data **;

	%if &_last_year. <=2018 %then %do;  
    %let count_vars = 
	   Unwtd: TotPop: PopUnder: Pop25: Pop65: PopAlone:
       PopWithRace: PopBlack: PopNative: PopWhite: PopHisp: PopAsian: PopOther: PopMulti: PopEmployed: 
       NumHshldPhone_: NumHshldCar_:  
       Num: 

       PopUnder5Years_: PopUnder18Years_:
       Pop18_34Years_: Pop35_64Years_:
       Pop65andOverYears_:

       Pop25andOverYears_: Pop25andOverWoutHS_: Pop25andOverWHS_:
       Pop25andOverWSC_: Pop25andOverWCollege_:
       ;
	%end;

	%else %do;
	%let count_vars = 
	   TotPop: PopUnder: Pop25: Pop65: PopAlone:
       PopWithRace: PopBlack: PopNative: PopWhite: PopHisp: PopAsian: PopOther: PopMulti: PopEmployed: 
       NumHshldPhone_: NumHshldCar_:  
       Num: 

       PopUnder5Years_: PopUnder18Years_:
       Pop18_34Years_: Pop35_64Years_:
       Pop65andOverYears_:

       Pop25andOverYears_: Pop25andOverWoutHS_: Pop25andOverWHS_:
       Pop25andOverWSC_: Pop25andOverWCollege_:
       ;
	%end;
           
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
       
       mPopEmployedByOcc_M_&_years. mPopEmployedMngmt_M_&_years.
       mPopEmployedServ_M_&_years. mPopEmployedSales_M_&_years.
       mPopEmployedNatRes_M_&_years. mPopEmployedProd_M_&_years.
       
       mPopEmployedByOcc_F_&_years. mPopEmployedMngmt_F_&_years.
       mPopEmployedServ_F_&_years. mPopEmployedSales_F_&_years.
       mPopEmployedNatRes_F_&_years. mPopEmployedProd_F_&_years.

       mPopEmployedByOccB_&_years. mPopEmployedMngmtB_&_years.
       mPopEmployedServB_&_years. mPopEmployedSalesB_&_years.
       mPopEmployedNatResB_&_years. mPopEmployedProdB_&_years.
       
       mPopEmployedByOccB_M_&_years. mPopEmployedMngmtB_M_&_years.
       mPopEmployedServB_M_&_years. mPopEmployedSalesB_M_&_years.
       mPopEmployedNatResB_M_&_years. mPopEmployedProdB_M_&_years.
       
       mPopEmployedByOccB_F_&_years. mPopEmployedMngmtB_F_&_years.
       mPopEmployedServB_F_&_years. mPopEmployedSalesB_F_&_years.
       mPopEmployedNatResB_F_&_years. mPopEmployedProdB_F_&_years.

       mPopEmployedByOccW_&_years. mPopEmployedMngmtW_&_years.
       mPopEmployedServW_&_years. mPopEmployedSalesW_&_years.
       mPopEmployedNatResW_&_years. mPopEmployedProdW_&_years.
       
       mPopEmployedByOccW_M_&_years. mPopEmployedMngmtW_M_&_years.
       mPopEmployedServW_M_&_years. mPopEmployedSalesW_M_&_years.
       mPopEmployedNatResW_M_&_years. mPopEmployedProdW_M_&_years.
              
       mPopEmployedByOccW_F_&_years. mPopEmployedMngmtW_F_&_years.
       mPopEmployedServW_F_&_years. mPopEmployedSalesW_F_&_years.
       mPopEmployedNatResW_F_&_years. mPopEmployedProdW_F_&_years.

       mPopEmployedByOccH_&_years. mPopEmployedMngmtH_&_years.
       mPopEmployedServH_&_years. mPopEmployedSalesH_&_years.
       mPopEmployedNatResH_&_years. mPopEmployedProdH_&_years.
       
        mPopEmployedByOccH_M_&_years. mPopEmployedMngmtH_M_&_years.
              mPopEmployedServH_M_&_years. mPopEmployedSalesH_M_&_years.
              mPopEmployedNatResH_M_&_years. mPopEmployedProdH_M_&_years.
                     
              mPopEmployedByOccH_F_&_years. mPopEmployedMngmtH_F_&_years.
              mPopEmployedServH_F_&_years. mPopEmployedSalesH_F_&_years.
       mPopEmployedNatResH_F_&_years. mPopEmployedProdH_F_&_years.

       mPopEmployedByOccA_&_years. mPopEmployedMngmtA_&_years.
       mPopEmployedServA_&_years. mPopEmployedSalesA_&_years.
       mPopEmployedNatResA_&_years. mPopEmployedProdA_&_years.
       
        mPopEmployedByOccA_M_&_years. mPopEmployedMngmtA_M_&_years.
              mPopEmployedServA_M_&_years. mPopEmployedSalesA_M_&_years.
              mPopEmployedNatResA_M_&_years. mPopEmployedProdA_M_&_years.
                     
              mPopEmployedByOccA_F_&_years. mPopEmployedMngmtA_F_&_years.
              mPopEmployedServA_F_&_years. mPopEmployedSalesA_F_&_years.
       mPopEmployedNatResA_F_&_years. mPopEmployedProdA_F_&_years.

       mPopEmployedByOccIOM_&_years. mPopEmployedMngmtIOM_&_years.
       mPopEmployedServIOM_&_years. mPopEmployedSalesIOM_&_years.
       mPopEmployedNatResIOM_&_years. mPopEmployedProdIOM_&_years.
       
        mPopEmployedByOccIOM_M_&_years. mPopEmployedMngmtIOM_M_&_years.
              mPopEmployedServIOM_M_&_years. mPopEmployedSalesIOM_M_&_years.
              mPopEmployedNatResIOM_M_&_years. mPopEmployedProdIOM_M_&_years.
                     
              mPopEmployedByOccIOM_F_&_years. mPopEmployedMngmtIOM_F_&_years.
              mPopEmployedServIOM_F_&_years. mPopEmployedSalesIOM_F_&_years.
       mPopEmployedNatResIOM_F_&_years. mPopEmployedProdIOM_F_&_years.

       mPopEmployedByOccAIOM_&_years. mPopEmployedMngmtAIOM_&_years.
       mPopEmployedServAIOM_&_years. mPopEmployedSalesAIOM_&_years.
       mPopEmployedNatResAIOM_&_years. mPopEmployedProdAIOM_&_years.
       
        mPopEmployedByOccAIOM_M_&_years. mPopEmployedMngmtAIOM_M_&_years.
              mPopEmployedServAIOM_M_&_years. mPopEmployedSalesAIOM_M_&_years.
              mPopEmployedNatResAIOM_M_&_years. mPopEmployedProdAIOM_M_&_years.
                     
              mPopEmployedByOccAIOM_F_&_years. mPopEmployedMngmtAIOM_F_&_years.
              mPopEmployedServAIOM_F_&_years. mPopEmployedSalesAIOM_F_&_years.
       mPopEmployedNatResAIOM_F_&_years. mPopEmployedProdAIOM_F_&_years.

       mPopEmployedWorkers_&_years. mPopEmployedWorkInState_&_years. mPopEmployedWorkInCnty_&_years. mPopEmployedWorkOutCnty_&_years. mPopEmployedWorkOutState_&_years.

       mPop25andOverWoutHS_&_years. mPop25andOverWHS_&_years. 
       mPop25andOverWSC_&_years. mPop25andOverWCollege_&_years.
       mPop25andOverYears_&_years.

       mNumHshldPhone_&_years. mNumHshldCar_&_years. 

           ;
               
  %end;

  %else %do;
  
    %** Count and MOE variables for tract data **;

	%if &_last_year. <=2018 %then %do;  
    %let count_vars = 
	   Unwtd: TotPop: PopUnder: Pop5: Pop16: Pop18: Pop35: Pop25: Pop65: PopForeignBorn: PopAlone:
       PopWithRace: PopBlack: PopWhite: PopHisp: PopAsian: PopNative: PopNon: PopOther: PopMulti: 
       PopPoor: PopInCivLaborFor: PopCivilian: PopUnemployed: PopEmployed: PopWork:
       Persons: Children: ChildPoverty: Elderly: Num: Agg: Fam: Hshld: Med: PopMoved: GrossRent: IncmBy: AgeBy:
        
       RentCostBurdenDenom: OwnerCostBurdenDenom:

       InsCovUnder18Years: InsCov18_34Years: InsCov35_64Years: InsCov65andOverYears: 
	   NInsCovUnder18Years: NInsCov18_34Years: NInsCov35_64Years: NInsCov65andOverYears:

       EarningUnder10K: Earning10to15K: Earning15to25K: Earning25to35K: Earning35to50K:
	   Earning50to65K: Earning65to75K: EarningOver75K:

	   Nonfamlivingalone: Nonfamnotlivingalone:

	   NonFamilyHH:
       ;
	%end;

	%else %do;
    %let count_vars = 
	   TotPop: PopUnder: Pop5: Pop16: Pop18: Pop35: Pop25: Pop65: PopForeignBorn: PopAlone:
       PopWithRace: PopBlack: PopWhite: PopHisp: PopAsian: PopNative: PopNon: PopOther: PopMulti: 
       PopPoor: PopInCivLaborFor: PopCivil: PopUnemployed: PopEmployed: PopWork:
       Persons: Children: ChildPoverty: Elderly: Num: Agg: Fam: Hshld: Med: PopMoved: GrossRent: IncmBy: AgeBy:
        
       RentCostBurdenDenom: OwnerCostBurdenDenom:

       InsCovUnder18Years: InsCov18_34Years: InsCov35_64Years: InsCov65andOverYears: 
	   NInsCovUnder18Years: NInsCov18_34Years: NInsCov35_64Years: NInsCov65andOverYears:

       EarningUnder10K: Earning10to15K: Earning15to25K: Earning25to35K: Earning35to50K:
	   Earning50to65K: Earning65to75K: EarningOver75K:

	   Nonfamlivingalone: Nonfamnotlivingalone:

	   NonFamilyHH:
     
     /*for regional AI */
	   Disability: InPov: NotInPov: SingFam: Med: AvgHH: GRent:
	   IncInt: TotalCivHHPop: InLaborForce: NotInLaborForce: Numw: MedEarnings: Disability:
	   NoDisability: Commute: RentBur: NRentBur: CostBur: NCostBur:
	   OneSubstCond: TwoSubstCond: ThreeSubstCond: FourSubstCond: NoSubstCond:
	   PubTrans: Own: Rent: MOwner:

       ;
	%end;

    
	%**variables appear in all years;
	%let moeallyears=  

	   /** Basic emographics **/

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

	   mNumFamiliesOwnChildren_&_years. mNumFamiliesOwnChildFH_&_years. 
       mNumHshldPhone_&_years. mNumHshldCar_&_years. 

	   mFamilyHHTot_&_years. mFamilyHH2person_&_years. mFamilyHH3person_&_years.  mFamilyHH4person_&_years. 
       mFamilyHH5person_&_years. mFamilyHH6person_&_years. mFamilyHH7person_&_years. 

       mNonFamilyHHTot_&_years.  mNonFamilyHH2person_&_years. mNonFamilyHH3person_&_years. mNonFamilyHH4person_&_years.
       mNonFamilyHH5person_&_years. mNonFamilyHH6person_&_years. mNonFamilyHH7person_&_years. 

	   /* Foreign born */

       mPopNativeBorn_&_years. mPopForeignBorn_&_years. mPopNonEnglish_&_years.

       mPopForeignBornB_&_years. mPopForeignBornW_&_years.
       mPopForeignBornH_&_years. mPopForeignBornA_&_years.
       mPopForeignBornIOM_&_years. mPopForeignBornAIOM_&_years.

	   /* Race and ethnicity */

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

	   /* Poverty */

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

	   /* Employment */

       mPopCivilianEmployed_&_years. mPopCivilianEmployedB_&_years.
       mPopCivilianEmployedW_&_years. mPopCivilianEmployedH_&_years.
       mPopCivilianEmployedA_&_years. mPopCivilianEmployedIOM_&_years.
       mPopCivilianEmployedAIOM_&_years.

       mPopCivilEmployed_M_&_years. mPopCivilEmployedB_M_&_years.
       mPopCivilEmployedW_M_&_years. mPopCivilEmployedH_M_&_years.
       mPopCivilEmployedA_M_&_years. mPopCivilEmployedIOM_M_&_years.
       mPopCivilEmployedAIOM_M_&_years.
       
       mPopCivilEmployed_F_&_years. mPopCivilEmployedB_F_&_years.
       mPopCivilEmployedW_F_&_years. mPopCivilEmployedH_F_&_years.
       mPopCivilEmployedA_F_&_years. mPopCivilEmployedIOM_F_&_years.
       mPopCivilEmployedAIOM_F_&_years.
       
             
       mPopUnemployed_&_years. mPopUnemployedB_&_years.
       mPopUnemployedW_&_years. mPopUnemployedH_&_years.
       mPopUnemployedA_&_years. mPopUnemployedIOM_&_years.
       mPopUnemployedAIOM_&_years.
       
       mPopUnemployed_M_&_years. mPopUnemployedB_M_&_years.
       mPopUnemployedW_M_&_years. mPopUnemployedH_M_&_years.
       mPopUnemployedA_M_&_years. mPopUnemployedIOM_M_&_years.
       mPopUnemployedAIOM_M_&_years.

       mPopUnemployed_F_&_years. mPopUnemployedB_F_&_years.
       mPopUnemployedW_F_&_years. mPopUnemployedH_F_&_years.
       mPopUnemployedA_F_&_years. mPopUnemployedIOM_F_&_years.
       mPopUnemployedAIOM_F_&_years.
       
       mPopInCivLaborForce_&_years. mPopInCivLaborForceB_&_years.
       mPopInCivLaborForceW_&_years. mPopInCivLaborForceH_&_years.
       mPopInCivLaborForceA_&_years. mPopInCivLaborForceIOM_&_years.
       mPopInCivLaborForceAIOM_&_years.

       mPopInCivLaborForce_M_&_years. mPopInCivLaborForB_M_&_years.
       mPopInCivLaborForW_M_&_years. mPopInCivLaborForH_M_&_years.
       mPopInCivLaborForA_M_&_years. mPopInCivLaborForIOM_M_&_years.
       mPopInCivLaborForAIOM_M_&_years.
       
       mPopInCivLaborForce_F_&_years. mPopInCivLaborForB_F_&_years.
       mPopInCivLaborForW_F_&_years. mPopInCivLaborForH_F_&_years.
       mPopInCivLaborForA_F_&_years. mPopInCivLaborForIOM_F_&_years.
       mPopInCivLaborForAIOM_F_&_years.
       
       mPop16andOverEmployed_&_years
       mPop16andOverEmploy_&_years. mPop16andOverEmployB_&_years.
       mPop16andOverEmployW_&_years. mPop16andOverEmployH_&_years.
       mPop16andOverEmployA_&_years. mPop16andOverEmployIOM_&_years.
       mPop16andOverEmployAIOM_&_years.
       
       mPop16andOverEmp_M_&_years. mPop16andOverEmpB_M_&_years.
       mPop16andOverEmpW_M_&_years. mPop16andOverEmpH_M_&_years.
       mPop16andOverEmpA_M_&_years. mPop16andOverEmpIOM_M_&_years.
       mPop16andOverEmpAIOM_M_&_years.

       mPop16andOverEmp_F_&_years. mPop16andOverEmpB_F_&_years.
       mPop16andOverEmpW_F_&_years. mPop16andOverEmpH_F_&_years.
       mPop16andOverEmpA_F_&_years. mPop16andOverEmpIOM_F_&_years.
       mPop16andOverEmpAIOM_F_&_years.
       
       mPop16_64Employed_&_years. mPop16_64EmployedB_&_years.
       mPop16_64EmployedW_&_years. mPop16_64EmployedH_&_years.
       mPop16_64EmployedA_&_years. mPop16_64EmployedIOM_&_years.
       mPop16_64EmployedAIOM_&_years.

       mPop16_64Employed_M_&_years. mPop16_64EmployedB_M_&_years.
       mPop16_64EmployedW_M_&_years. mPop16_64EmployedH_M_&_years.
       mPop16_64EmployedA_M_&_years. mPop16_64EmployedIOM_M_&_years.
       mPop16_64EmployedAIOM_M_&_years.
       
       mPop16_64Employed_F_&_years. mPop16_64EmployedB_F_&_years.
       mPop16_64EmployedW_F_&_years. mPop16_64EmployedH_F_&_years.
       mPop16_64EmployedA_F_&_years. mPop16_64EmployedIOM_F_&_years.
       mPop16_64EmployedAIOM_F_&_years.
       
       mPop25_64Employed_&_years. 

	   mPopEmployedWorkers_&_years. mPopEmployedWorkInState_&_years. mPopEmployedWorkInCnty_&_years. mPopEmployedWorkOutCnty_&_years. mPopEmployedWorkOutState_&_years.

       mPopEmployedTravel_&_years. mPopEmployedTravel_LT5_&_years. mPopEmployedTravel_5_9_&_years. mPopEmployedTravel_10_14_&_years.
       mPopEmployedTravel_15_19_&_years. mPopEmployedTravel_20_24_&_years. mPopEmployedTravel_25_29_&_years. mPopEmployedTravel_30_34_&_years. 
       mPopEmployedTravel_35_39_&_years. mPopEmployedTravel_40_44_&_years. mPopEmployedTravel_45_59_&_years. mPopEmployedTravel_60_89_&_years. 
       mPopEmployedTravel_GT90_&_years.

	   mPopEmployedByInd_&_years. mPopEmployedAgric_&_years. mPopEmployedConstr_&_years. 
       mPopEmployedManuf_&_years. mPopEmployedWhlsale_&_years. mPopEmployedRetail_&_years. 
       mPopEmployedTransprt_&_years. mPopEmployedInfo_&_years. mPopEmployedFinance_&_years. 
       mPopEmployedProfServ_&_years. mPopEmployedEduction_&_years. mPopEmployedArts_&_years. 
       mPopEmployedOther_&_years. mPopEmployedPubAdmin_&_years.

       mPopEmployedByOcc_&_years. mPopEmployedMngmt_&_years.
       mPopEmployedServ_&_years. mPopEmployedSales_&_years.
       mPopEmployedNatRes_&_years. mPopEmployedProd_&_years.

          mPopEmployedByOcc_M_&_years. mPopEmployedMngmt_M_&_years.
          mPopEmployedServ_M_&_years. mPopEmployedSales_M_&_years.
          mPopEmployedNatRes_M_&_years. mPopEmployedProd_M_&_years.
          
          mPopEmployedByOcc_F_&_years. mPopEmployedMngmt_F_&_years.
          mPopEmployedServ_F_&_years. mPopEmployedSales_F_&_years.
          mPopEmployedNatRes_F_&_years. mPopEmployedProd_F_&_years.
   
          mPopEmployedByOccB_&_years. mPopEmployedMngmtB_&_years.
          mPopEmployedServB_&_years. mPopEmployedSalesB_&_years.
          mPopEmployedNatResB_&_years. mPopEmployedProdB_&_years.
          
          mPopEmployedByOccB_M_&_years. mPopEmployedMngmtB_M_&_years.
          mPopEmployedServB_M_&_years. mPopEmployedSalesB_M_&_years.
          mPopEmployedNatResB_M_&_years. mPopEmployedProdB_M_&_years.
          
          mPopEmployedByOccB_F_&_years. mPopEmployedMngmtB_F_&_years.
          mPopEmployedServB_F_&_years. mPopEmployedSalesB_F_&_years.
          mPopEmployedNatResB_F_&_years. mPopEmployedProdB_F_&_years.
   
          mPopEmployedByOccW_&_years. mPopEmployedMngmtW_&_years.
          mPopEmployedServW_&_years. mPopEmployedSalesW_&_years.
          mPopEmployedNatResW_&_years. mPopEmployedProdW_&_years.
          
          mPopEmployedByOccW_M_&_years. mPopEmployedMngmtW_M_&_years.
          mPopEmployedServW_M_&_years. mPopEmployedSalesW_M_&_years.
          mPopEmployedNatResW_M_&_years. mPopEmployedProdW_M_&_years.
                 
          mPopEmployedByOccW_F_&_years. mPopEmployedMngmtW_F_&_years.
          mPopEmployedServW_F_&_years. mPopEmployedSalesW_F_&_years.
          mPopEmployedNatResW_F_&_years. mPopEmployedProdW_F_&_years.
   
          mPopEmployedByOccH_&_years. mPopEmployedMngmtH_&_years.
          mPopEmployedServH_&_years. mPopEmployedSalesH_&_years.
          mPopEmployedNatResH_&_years. mPopEmployedProdH_&_years.
          
           mPopEmployedByOccH_M_&_years. mPopEmployedMngmtH_M_&_years.
                 mPopEmployedServH_M_&_years. mPopEmployedSalesH_M_&_years.
                 mPopEmployedNatResH_M_&_years. mPopEmployedProdH_M_&_years.
                        
                 mPopEmployedByOccH_F_&_years. mPopEmployedMngmtH_F_&_years.
                 mPopEmployedServH_F_&_years. mPopEmployedSalesH_F_&_years.
          mPopEmployedNatResH_F_&_years. mPopEmployedProdH_F_&_years.
   
          mPopEmployedByOccA_&_years. mPopEmployedMngmtA_&_years.
          mPopEmployedServA_&_years. mPopEmployedSalesA_&_years.
          mPopEmployedNatResA_&_years. mPopEmployedProdA_&_years.
          
           mPopEmployedByOccA_M_&_years. mPopEmployedMngmtA_M_&_years.
                 mPopEmployedServA_M_&_years. mPopEmployedSalesA_M_&_years.
                 mPopEmployedNatResA_M_&_years. mPopEmployedProdA_M_&_years.
                        
                 mPopEmployedByOccA_F_&_years. mPopEmployedMngmtA_F_&_years.
                 mPopEmployedServA_F_&_years. mPopEmployedSalesA_F_&_years.
          mPopEmployedNatResA_F_&_years. mPopEmployedProdA_F_&_years.
   
          mPopEmployedByOccIOM_&_years. mPopEmployedMngmtIOM_&_years.
          mPopEmployedServIOM_&_years. mPopEmployedSalesIOM_&_years.
          mPopEmployedNatResIOM_&_years. mPopEmployedProdIOM_&_years.
          
           mPopEmployedByOccIOM_M_&_years. mPopEmployedMngmtIOM_M_&_years.
                 mPopEmployedServIOM_M_&_years. mPopEmployedSalesIOM_M_&_years.
                 mPopEmployedNatResIOM_M_&_years. mPopEmployedProdIOM_M_&_years.
                        
                 mPopEmployedByOccIOM_F_&_years. mPopEmployedMngmtIOM_F_&_years.
                 mPopEmployedServIOM_F_&_years. mPopEmployedSalesIOM_F_&_years.
          mPopEmployedNatResIOM_F_&_years. mPopEmployedProdIOM_F_&_years.
   
          mPopEmployedByOccAIOM_&_years. mPopEmployedMngmtAIOM_&_years.
          mPopEmployedServAIOM_&_years. mPopEmployedSalesAIOM_&_years.
          mPopEmployedNatResAIOM_&_years. mPopEmployedProdAIOM_&_years.
          
           mPopEmployedByOccAIOM_M_&_years. mPopEmployedMngmtAIOM_M_&_years.
                 mPopEmployedServAIOM_M_&_years. mPopEmployedSalesAIOM_M_&_years.
                 mPopEmployedNatResAIOM_M_&_years. mPopEmployedProdAIOM_M_&_years.
                        
                 mPopEmployedByOccAIOM_F_&_years. mPopEmployedMngmtAIOM_F_&_years.
                 mPopEmployedServAIOM_F_&_years. mPopEmployedSalesAIOM_F_&_years.
       mPopEmployedNatResAIOM_F_&_years. mPopEmployedProdAIOM_F_&_years.

       mPopWorkFT_&_years. mPopWorkFTB_&_years.
       mPopWorkFTW_&_years. mPopWorkFTH_&_years.
       mPopWorkFTA_&_years. mPopWorkFTIOM_&_years.
       mPopWorkFTAIOM_&_years.
       
       mPopWorkFT_M_&_years. mPopWorkFTB_M_&_years.
       mPopWorkFTW_M_&_years. mPopWorkFTH_M_&_years.
       mPopWorkFTA_M_&_years. mPopWorkFTIOM_M_&_years.
       mPopWorkFTAIOM_M_&_years.

       mPopWorkFT_F_&_years. mPopWorkFTB_F_&_years.
       mPopWorkFTW_F_&_years. mPopWorkFTH_F_&_years.
       mPopWorkFTA_F_&_years. mPopWorkFTIOM_F_&_years.
       mPopWorkFTAIOM_F_&_years.
       
       mPopWorkEarn_&_years. mPopWorkEarnB_&_years.
       mPopWorkEarnW_&_years. mPopWorkEarnH_&_years.
       mPopWorkEarnA_&_years. mPopWorkEarnIOM_&_years.
       mPopWorkEarnAIOM_&_years.

       mPopWorkEarn_M_&_years. mPopWorkEarnB_M_&_years.
       mPopWorkEarnW_M_&_years. mPopWorkEarnH_M_&_years.
       mPopWorkEarnA_M_&_years. mPopWorkEarnIOM_M_&_years.
       mPopWorkEarnAIOM_M_&_years.
       
       mPopWorkEarn_F_&_years. mPopWorkEarnB_F_&_years.
       mPopWorkEarnW_F_&_years. mPopWorkEarnH_F_&_years.
       mPopWorkEarnA_F_&_years. mPopWorkEarnIOM_F_&_years.
       mPopWorkEarnAIOM_F_&_years.
       
       mPopWorkFTLT35K_&_years. mPopWorkFTLT35KB_&_years.
       mPopWorkFTLT35KW_&_years. mPopWorkFTLT35KH_&_years.
       mPopWorkFTLT35KA_&_years. mPopWorkFTLT35KIOM_&_years.
       mPopWorkFTLT35KAIOM_&_years.
       
       mPopWorkFTLT35K_M_&_years. mPopWorkFTLT35KB_M_&_years.
       mPopWorkFTLT35KW_M_&_years. mPopWorkFTLT35KH_M_&_years.
       mPopWorkFTLT35KA_M_&_years. mPopWorkFTLT35KIOM_M_&_years.
       mPopWorkFTLT35KAIOM_M_&_years.

       mPopWorkFTLT35K_F_&_years. mPopWorkFTLT35KB_F_&_years.
       mPopWorkFTLT35KW_F_&_years. mPopWorkFTLT35KH_F_&_years.
       mPopWorkFTLT35KA_F_&_years. mPopWorkFTLT35KIOM_F_&_years.
       mPopWorkFTLT35KAIOM_F_&_years.
       
       mPopWorkFTLT75K_&_years. mPopWorkFTLT75KB_&_years.
       mPopWorkFTLT75KW_&_years. mPopWorkFTLT75KH_&_years.
       mPopWorkFTLT75KA_&_years. mPopWorkFTLT75KIOM_&_years.
       mPopWorkFTLT75KAIOM_&_years.
       
       mPopWorkFTLT75K_M_&_years. mPopWorkFTLT75KB_M_&_years.
       mPopWorkFTLT75KW_M_&_years. mPopWorkFTLT75KH_M_&_years.
       mPopWorkFTLT75KA_M_&_years. mPopWorkFTLT75KIOM_M_&_years.
       mPopWorkFTLT75KAIOM_M_&_years.
       
       mPopWorkFTLT75K_F_&_years. mPopWorkFTLT75KB_F_&_years.
       mPopWorkFTLT75KW_F_&_years. mPopWorkFTLT75KH_F_&_years.
       mPopWorkFTLT75KA_F_&_years. mPopWorkFTLT75KIOM_F_&_years.
       mPopWorkFTLT75KAIOM_F_&_years.


	   /* Age */

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

       mPop16andOverYears_&_years. mPop16andOverYearsB_&_years.
       mPop16andOverYearsW_&_years. mPop16andOverYearsH_&_years.
       mPop16andOverYearsA_&_years. mPop16andOverYearsIOM_&_years.
       mPop16andOverYearsAIOM_&_years.
       
       mPop16andOverYears_M_&_years. mPop16andOverYearsB_M_&_years.
       mPop16andOverYearsW_M_&_years. mPop16andOverYearsH_M_&_years.
       mPop16andOverYearsA_M_&_years. mPop16andOverYearsIOM_M_&_years.
       mPop16andOverYearsAIOM_M_&_years.

       mPop16andOverYears_F_&_years. mPop16andOverYearsB_F_&_years.
       mPop16andOverYearsW_F_&_years. mPop16andOverYearsH_F_&_years.
       mPop16andOverYearsA_F_&_years. mPop16andOverYearsIOM_F_&_years.
       mPop16andOverYearsAIOM_F_&_years.
	
	mPop16_64years_&_years. mPop16_64yearsB_&_years.
       mPop16_64yearsW_&_years. mPop16_64yearsH_&_years.
       mPop16_64yearsA_&_years. mPop16_64yearsIOM_&_years.
       mPop16_64yearsAIOM_&_years.
       
       mPop16_64years_M_&_years. mPop16_64yearsB_M_&_years.
       mPop16_64yearsW_M_&_years. mPop16_64yearsH_M_&_years.
       mPop16_64yearsA_M_&_years. mPop16_64yearsIOM_M_&_years.
       mPop16_64yearsAIOM_M_&_years.

       mPop16_64years_F_&_years. mPop16_64yearsB_F_&_years.
       mPop16_64yearsW_F_&_years. mPop16_64yearsH_F_&_years.
       mPop16_64yearsA_F_&_years. mPop16_64yearsIOM_F_&_years.
       mPop16_64yearsAIOM_F_&_years.
       
       mPop25_64years_&_years. mPop25_64yearsB_&_years.
       mPop25_64yearsW_&_years. mPop25_64yearsH_&_years.
       mPop25_64yearsA_&_years. mPop25_64yearsIOM_&_years.
       mPop25_64yearsAIOM_&_years.

       /* Education */

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

	   /* Income */

       mAggIncome_&_years. mAggIncomeB_&_years.
       mAggIncomeW_&_years. mAggIncomeH_&_years.
       mAggIncomeA_&_years. mAggIncomeIOM_&_years.
       mAggIncomeAIOM_&_years.

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
       
	   mEarningUnder10K_&_years. mEarning10to15K_&_years.
	   mEarning15to25K_&_years. mEarning25to35K_&_years.
	   mEarning35to50K_&_years. mEarning50to65K_&_years.
	   mEarning65to75K_&_years. mEarningOver75K_&_years.

       mAggHshldIncome_&_years. mAggHshldIncomeB_&_years.
       mAggHshldIncomeW_&_years. mAggHshldIncomeH_&_years.
       mAggHshldIncomeA_&_years. mAggHshldIncomeIOM_&_years.
       mAggHshldIncomeAIOM_&_years.

	   mhshldincunder10000_&_years. mhshldinc10000to14999_&_years. mhshldinc15000to19999_&_years.
	   mhshldinc20000to24999_&_years. mhshldinc25000to29999_&_years. mhshldinc30000to34999_&_years.
	   mhshldinc35000to39999_&_years. mhshldinc40000to44999_&_years. mhshldinc45000to49999_&_years.
	   mhshldinc50000to59999_&_years. mhshldinc60000to74999_&_years. mhshldinc75000to99999_&_years. 
	   mhshldinc100000to124999_&_years. mhshldinc125000to149999_&_years. mhshldinc150000to199999_&_years.
	   mhshldinc200000andover_&_years. 


	   mHshldIncUnder15000_&_years. mHshldInc15000to34999_&_years. mHshldInc35000to49999_&_years. 
       mHshldInc50000to74999_&_years.  mHshldInc100000plus_&_years.


	   mMedHHIncm_&_years.

	   /* Housing units */

       mNumHsgUnits_&_years.

	   mNumOccupiedHsgUnits_&_years. mNumOccupiedHsgUnitsB_&_years.
       mNumOccupiedHsgUnitsW_&_years. mNumOccupiedHsgUnitsH_&_years.
       mNumOccupiedHsgUnitsA_&_years. mNumOccupiedHsgUnitsIOM_&_years.
       mNumOccupiedHsgUnitsAIOM_&_years.

       mNumOwnerOccupiedHUB_&_years.
       mNumOwnerOccupiedHUW_&_years. mNumOwnerOccupiedHUH_&_years.
       mNumOwnerOccupiedHUA_&_years. mNumOwnerOccupiedHUIOM_&_years.
       mNumOwnerOccupiedHUAIOM_&_years.

       mNumOwnerOccupiedHU_&_years. mNumRenterOccupiedHU_&_years. 
	   mNumVacantHsgUnits_&_years. mNumVacantHUForRent_&_years. 
	   mNumVacantHUForSale_&_years. mNumRenterHsgUnits_&_years. 

	    mNumOwnOHU1det_&_years. mNumOwnOHU1att_&_years.
	    mNumOwnOHU2u_&_years.   mNumOwnOHU3to4u_&_years. 
	    mNumOwnOHU5to9u_&_years. mNumOwnOHU10to19u_&_years.
	    mNumOwnOHU20to49u_&_years.	mNumOwnOHU50plusu_&_years.
	    mNumOwnOHUMob_&_years.     mNumOwnOHUBoat_&_years. 
	    mNumOwnOHU1u_&_years.     mNumOwnOHU2to4u_&_years.	mNumOwnOHU20plusu_&_years. 
	    
	    mNumRtOHU1det_&_years. mNumRtOHU1att_&_years.
	    mNumRtOHU2u_&_years.   mNumRtOHU3to4u_&_years. 
	    mNumRtOHU5to9u_&_years. mNumRtOHU10to19u_&_years.
	    mNumRtOHU20to49u_&_years.	mNumRtOHU50plusu_&_years.
	    mNumRtOHUMob_&_years.     mNumRtOHUBoat_&_years. 
	    mNumRtOHU1u_&_years.     mNumRtOHU2to4u_&_years.	mNumRtOHU20plusu_&_years. 

		mNumOwnOcc1person_&_years. mNumOwnOcc2person_&_years. mNumOwnOcc3person_&_years. mNumOwnOcc4person_&_years.
		mNumOwnOcc5person_&_years. mNumOwnOcc6person_&_years. mNumOwnOcc7plusperson_&_years.

		mNumRentOcc1person_&_years. mNumRentOcc2person_&_years. mNumRentOcc3person_&_years. mNumRentOcc4person_&_years.
		mNumRentOcc5person_&_years. mNumRentOcc6person_&_years. mNumRentOcc7plusperson_&_years.
	    
	   /* Rents and cost burdens */

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
       
       mNumRtOHU0Bnocash_&_years. mNumRtOHU0Bunder500_&_years. mNumRtOHU0B500to749_&_years. 
       mNumRtOHU0B750to999_&_years. mNumRtOHU0B1000plus_&_years.
       mNumRtOHU1Bnocash_&_years. mNumRtOHU1Bunder500_&_years. mNumRtOHU1B500to749_&_years. 
       mNumRtOHU1B750to999_&_years. mNumRtOHU1B1000plus_&_years.
       mNumRtOHU2Bnocash_&_years. mNumRtOHU2Bunder500_&_years. mNumRtOHU2B500to749_&_years.
       mNumRtOHU2B750to999_&_years.  mNumRtOHU2B1000plus_&_years. 
       mNumRtOHU3Bnocash_&_years. mNumRtOHU3Bunder500_&_years. mNumRtOHU3B500to749_&_years. 
       mNumRtOHU3B750to999_&_years. mNumRtOHU3B1000plus_&_years. 

	   mGrossRentLT100_&_years. mGrossRent100_149_&_years. mGrossRent150_199_&_years. 
	   mGrossRent200_249_&_years. mGrossRent250_299_&_years. mGrossRent300_349_&_years. 
	   mGrossRent350_349_&_years. mGrossRent400_449_&_years. mGrossRent450_499_&_years. 
	   mGrossRent500_549_&_years. mGrossRent550_599_&_years. mGrossRent600_649_&_years. 
	   mGrossRent650_699_&_years. mGrossRent700_749_&_years. mGrossRent750_799_&_years. 
	   mGrossRent800_899_&_years. mGrossRent900_999_&_years. mGrossRent1000_1249_&_years. 
	   mGrossRent1250_1499_&_years. mGrossRent1500_1999_&_years.
	   mGrossRentNoCash_&_years. 

	   /* Mobility */
              
       mPopMovedLastYear_&_years.  mPopMovedLastYearB_&_years.
       mPopMovedLastYearW_&_years.  mPopMovedLastYearH_&_years.
       mPopMovedLastYearA_&_years.  mPopMovedLastYearIOM_&_years.
       mPopMovedLastYearAIOM_&_years.

       mPopMovedDiffCnty_&_years.  mPopMovedDiffCntyB_&_years.
       mPopMovedDiffCntyW_&_years.  mPopMovedDiffCntyH_&_years.
       mPopMovedDiffCntyA_&_years.  mPopMovedDiffCntyIOM_&_years.
       mPopMovedDiffCntyAIOM_&_years.

	   /* Sex */

	   mPopUnder18YearsM_&_years. mPopUnder18YearsF_&_years.
	   mPop18_34YearsM_&_years. mPop18_34YearsF_&_years.
	   mPop35_64YearsM_&_years. mPop35_64YearsF_&_years. 
	   mPop65andOverYearsM_&_years. mPop65andOverYearsF_&_years. 

	   /* Insurance coverage */

       mInsCovUnder18Years_&_years. mInsCov18_34Years_&_years.
	   mInsCov35_64Years_&_years. mInsCov65andOverYears_&_years.

	   mNInsCovUnder18Years_&_years. mNInsCov18_34Years_&_years.
	   mNInsCov35_64Years_&_years. mNInsCov65andOverYears_&_years.

	   /* Marital status */

	   mFamMarriedCouple_&_years. mFamMaleholder_&_years.
	   mFamFemaleholder_&_years. mNonfamlivingalone_&_years.
	   mNonfamnotlivingalone_&_years.


       /*Family types*/
      mNumMarFamRKidsU6_&_years. 
      mNumMarFamRKidsU6U17_&_years.
	  mNumMarFamRKids6_17_&_years.
	  mNumMarFamNRKids_&_years. 
      mNumFamMHRKidsU6_&_years. 
      mNumFamMHRKidsU6U17_&_years. 
	  mNumFamMHRKids6_17_&_years. 
	  mNumFamMHNRKids_&_years. 
      mNumFamFHRKidsU6_&_years. 
      mNumFamFHRKidsU6U17_&_years. 
	  mNumFamFHRKids6_17_&_years. 
	  mNumFamFHNRKids_&_years. 

	  /*for Regional AI*/
	  mMedGrossRent_&_years.
	  mDisabilityStatusY_&_years.
	  mInPovUnder25_&_years.
 	  mNotInPovUnder25_&_years.

  	 mInPov25to44_&_years. 
     mNotInPov25to44_&_years. 

  	 mInPov45to64_&_years. 
 	 mNotInPov45to64_&_years.

  	 mInPovOver65_&_years.
  	 mNotInPovOver65_&_years. 

 	 mSingFamUnits_&_years. 

  	 mSingFamRentalUnits_&_years.
 	 mSingFamOwnerOccUnits_&_years. 
  	 mMedGRentPInc_&_years. 

 	 mAvgHHSize_&_years. 
 	 mAvgHHSizeRenter_&_years. 
 	 mAvgHHSizeOwner_&_years. 

 	 mGRentPercHIncL10_&_years.
 	 mGRentPercHInc10149_&_years. 
 	 mGRentPercHInc15199_&_years. 
 	 mGRentPercHInc20249_&_years.
 	 mGRentPercHInc25299_&_years. 
  	 mGRentPercHInc30349_&_years. 
 	 mGRentPercHInc35399_&_years. 
  	 mGRentPercHInc40499_&_years.
 	 mGRentPercHInc50M_&_years. 

	 mIncIntAccL10KwInt_&_years.
 	 mIncIntAccL10KwoInt_&_years.
 	 mIncIntAcc1019KwInt_&_years. 
 	 mIncIntAcc1019KwoInt_&_years. 
  	 mIncIntAcc2034KwInt_&_years. 
  	 mIncIntAcc2034KwoInt_&_years. 
  	 mIncIntAcc3549KwInt_&_years. 
 	 mIncIntAcc3549KwoInt_&_years. 
  	 mIncIntAcc5074KwInt_&_years. 
 	 mIncIntAcc5074KwoInt_&_years. 
 	 mIncIntAcc75MwInt_&_years.
 	 mIncIntAcc75Mw0Int_&_years. 

 	 mTotalCivHHPop_&_years.
 	 mInLaborForce_&_years. 
  	 mNotInLaborForce_&_years.

  
 	 mNumwAmbDiff_&_years.
   	 mNumwoAmbDiff_&_years. 

 	 mNumwCogDiff_&_years. 
 	 mNumwoCogDiff_&_years. 

 	 mNumwVisDiff_&_years. 
  	 mNumwoVisDiff_&_years. 
  
 	 mNumwHearDiff_&_years. 
 	 mNumwoHearDiff_&_years. 
  
 	 mNumwSelfCareDiff_&_years. 
 	 mNumwoSelfCareDiff_&_years. 
  
  	 mNumwIndepLivingDiff_&_years. 
 	 mNumwoIndepLivingDiff_&_years. 

  	 mMedEarningswDisab_&_years. 
 	 mMedEarningswoDisab_&_years. 

 	 mDisabilityW_&_years. 
 	 mDisabilityB_&_years. 
 	 mDisabilityA_&_years. 
 	 mDisabilityH_&_years. 
 	 mDisabilityAIOM_&_years. 

  	mNoDisabilityW_&_years. 
 	mNoDisabilityB_&_years. 
 	mNoDisabilityA_&_years.
 	mNoDisabilityH_&_years. 
  	mNoDisabilityAIOM_&_years. 
  
 	mDisabilityPov_&_years. 
  	mDisabilityNoPov_&_years. 
  	mNoDisabilityPov_&_years. 
  	mNoDisabilityNoPov_&_years.

  	mDisabilityHI_&_years. 
  	mDisabilityNoHI_&_years. 
  	mNoDisabilityHI_&_years. 
  	mNoDisabilityNoHI_&_years. 

  	mDisabilityUnemp_&_years. 
  	mDisabilityEmp_&_years. 
  	mNoDisabilityUnemp_&_years. 
  	mNoDisabilityEmp_&_years. 
  	mDisabilityNotInLF_&_years. 
  	mNoDisabilityNotInLF_&_years. 

  	mCommuteL5_&_years. 
  	mCommute5_9_&_years. 
  	mCommute10_14_&_years. 
  	mCommute15_19_&_years. 
  	mCommute20_24_&_years. 
  	mCommute25_29_&_years. 
  	mCommute30_34_&_years. 
  	mCommute35_39_&_years. 
  	mCommute40_44_&_years. 
  	mCommute45_59_&_years. 
  	mCommute60_89_&_years. 
  	mCommunity90M_&_years. 

  mRentBur_&_years. 
  mNRentBur_&_years. 

  mMOwnerCostsPctHHInc_&_years. 

  mCostBur_&_years.
  mNCostBur_&_years. 
  

  mOwnOccHHIncL5K_&_years. 
  mOwnOccHHInc5999K_&_years.
  mOwnOccHHInc101499K_&_years.
  mOwnOccHHInc151999K_&_years.
  mOwnOccHHInc202499K_&_years.
  mOwnOccHHInc253499K_&_years. 
  mOwnOccHHInc354999K_&_years. 
  mOwnOccHHInc507499K_&_years. 
  mOwnOccHHInc759999K_&_years.
  mOwnOccHHInc10014999K_&_years. 
  mOwnOccHHInc150M_&_years. 

  mRentOccHHIncL5K_&_years.
  mRentOccHHInc5999K_&_years.
  mRentOccHHInc101499K_&_years. 
  mRentOccHHInc151999K_&_years. 
  mRentOccHHInc202499K_&_years.
  mRentOccHHInc253499K_&_years. 
  mRentOccHHInc354999K_&_years.
  mRentOccHHInc507499K_&_years.
  mRentOccHHInc759999K_&_years. 
  mRentOccHHInc10014999K_&_years.
  mRentOccHHInc150M_&_years.

  mOwnOcc2017later_&_years.
  mOwnOcc201516_&_years. 
  mOwnOcc201014_&_years. 
  mOwnOcc200009_&_years. 
  mOwnOcc199099_&_years. 
  mOwnOcc1989earlier_&_years. 

  mRentOcc2017later_&_years. 
  mRentOcc201516_&_years.
  mRentOcc201014_&_years. 
  mRentOcc200009_&_years. 
  mRentOcc199099_&_years. 
  mRentOcc1989earlier_&_years. 

  mOwnOcc1SubstCond_&_years. 
  mOwnOcc2SubstCond_&_years. 
  mOwnOcc3SubstCond_&_years. 
  mOwnOcc4SubstCond_&_years. 
  mOwnOcc0SubstCond_&_years. 

  mRentOcc1SubstCond_&_years.
  mRentOcc2SubstCond_&_years.
  mRentOcc3SubstCond_&_years. 
  mRentOcc4SubstCond_&_years. 
  mRentOcc0SubstCond_&_years.

  mOneSubstCond_&_years. 
  mTwoSubstCond_&_years. 
  mThreeSubstCond_&_years. 
  mFourSubstCond_&_years. 
  mNoSubstCond_&_years. 

  mInLaborForceW_&_years.
  mInLaborForceB_&_years.
  mInLaborForceA_&_years. 
  mInLaborForceH_&_years. 
  mInLaborForceAIOM_&_years. 

  mPubTranstoWorkW_&_years.
  mPubTranstoWorkB_&_years. 
  mPubTranstoWorkA_&_years. 
  mPubTranstoWorkH_&_years.
  mPubTranstoWorkAIOM_&_years. 

  mPubTranstoWork_&_years. 

	   ;
	
	%**variables appear only 2013 and later; 
	%let  moe2013plus = 
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

	  	%**variables appear only 2017 and later; 
	%let moe2017plus = 
		mNumPopcomputer_&_years. mNumPopdialup_&_years. mNumPopbroadband_&_years.  mNumPopnointernet_&_years. mNumPopnocomputer_&_years.
		mNumPopdialuplths_&_years. mNumPopbroadbandlths_&_years. mNumPopnointernetlths_&_years.	mNumPopnocomputerlths_&_years.
		mNumPopdialupmths_&_years. mNumPopbroadbandmths_&_years. mNumPopnointernetmths_&_years.  mNumPopnocomputermths_&_years.
		mNumPopdialupBA_&_years. mNumPopbroadbandBA_&_years. mNumPopnointernetBA_&_years. mNumPopnocomputerBA_&_years.
		mNumPopdialupW_&_years. mNumPopbroadbandW_&_years. mNumPopnointernetW_&_years. mNumPopnocomputerW_&_years.
		mNumPopdialupB_&_years. mNumPopbroadbandB_&_years. mNumPopnointernetB_&_years. mNumPopnocomputerB_&_years. 
		mNumPopdialupH_&_years. mNumPopbroadbandH_&_years. mNumPopnointernetH_&_years. mNumPopnocomputerH_&_years.
		mNumPopdialupA_&_years. mNumPopbroadbandA_&_years. mNumPopnointernetA_&_years. mNumPopnocomputerA_&_years.
		mNumPopdialupIOM_&_years. mNumPopbroadbandIOM_&_years. mNumPopnointernetIOM_&_years. mNumPopnocomputerIOM_&_years.
		mNumDesktoporlaptop_&_years. mNumDesktoporlaptoponly_&_years. mNumSmartphone_&_years. mNumSmartphoneonly_&_years. 
		mNumTabletorother_&_years. mNumTabletorotheronly_&_years. mNumOthercomputer_&_years. mNumOthercomputeronly_&_years.
		mNumNocomputer_&_years. mNumdialup_&_years. mNumbroadbandall_&_years. mNumcellular_&_years. mNumcellularonly_&_years.
		mNumbroadband_&_years. mNumbroadbandonly_&_years. mNumsatellite_&_years. mNumsatelliteonly_&_years. mNumotheronly_&_years. 
		mNumaccesswosub_&_years. mNumnointernet_&_years. mNum1orMoreComp_&_years. mNumhhdefined_&_years. mNumwithinternet_&_years.
		;

		%if &_last_year. <= 2013 %then %do; 
	    	%let moe_vars =&moeallyears.; 
		%end; 

		%else %if &_last_year. <= 2014 %then %do; 
			%let moe_vars =&moeallyears. &moe2013plus.; 
	     %end; 

		%else %if &_last_year. <= 2016 %then %do;  	
			%let moe_vars =&moeallyears. &moe2013plus. &moe2015plus.;
		%end;

		%else %if &_last_year. >=2017 %then %do;  	
			%let moe_vars =&moeallyears. &moe2013plus. &moe2015plus. &moe2017plus.;
		%end;
               
  %end;

  
  %put _local_;
  
  %if ( &geo_name = GEO2000 and %upcase( &source_geo_var ) = GEO2000 ) or 
      ( &geo_name = GEO2010 and %upcase( &source_geo_var ) = GEO2010 ) or
	  ( &geo_name = GEO2020 and %upcase( &source_geo_var ) = GEO2020 ) or
    ( &geo_name = COUNTY and %upcase( &source_geo_var ) = REGCOUNTY ) or 
    ( &geo_name = UCOUNTY and %upcase( &source_geo_var ) = UCOUNTY ) %then %do;

	    ** Census tracts from census tract source (same year): just recopy selected vars **;

	    data &out_ds (label="ACS summary, &_years_dash, %upcase(&_state_ab), &source_geo_label source, &geo_label");

	      set &source_ds_work (keep=&geo_var &count_vars &moe_vars);

	    run;

	  %Finalize_data_set( 
	  data=&out_ds.,
	  out=&out_ds.,
	  outlib=ACS,
	  label="ACS summary, &_years_dash, %upcase(&_state_ab), &source_geo_label source, &geo_label",
	  sortby=&geo_name.,
	  restrictions=None,
	  printobs=0,
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
  outlib=ACS,
  label="ACS summary, &_years_dash, %upcase(&_state_ab), &source_geo_label source, &geo_label",
  sortby=&geo_name.,
  restrictions=None,
  printobs=0,
  revisions=&revisions.
  )
    
  %end;  


%mend ACS_summary_geo;


