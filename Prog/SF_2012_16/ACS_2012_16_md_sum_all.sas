/**************************************************************************
 Program:  ACS_2012_16_md_sum_all.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   Carl Hedman
 Created:  12/20/17
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Create all standard summary files from ACS 5-year data.
 
 Modifications:
 
 06/21/18 RP Fixed conflict with the ACS master branch that had previously caused issues.
 07/09/18 LH Added indicators for structure type.
 08/30/18 RP Added tenure by household size. 
 09/24/2018 YS Added family type by head and existence of related children .
**************************************************************************/

%include "L:\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )


%ACS_summary_all( 

  /** State abbreviation. Ex: DC **/
  state_ab = MD,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2012_16,
  
   revisions=%str(Added family type by head and existence of related children . )

)

