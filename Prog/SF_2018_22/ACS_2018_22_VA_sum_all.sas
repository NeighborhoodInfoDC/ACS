/**************************************************************************
 Program:  ACS_2018_22_VA_sum_all.sas
 Library:  ACS
 Project:  Urban-Greater DC
 Author:   Rodrigo Garcia
 Created:  2/13/24
 Version:  SAS 9.4
 Environment:  Local Windows session (desktop)
 
 Description:  Create all standard summary files from ACS 5-year data.
 
 Modifications: 12/06/23 LH Added census geo year parameter to template. Updated include statement.
				02/27/24 LH Files Revised to remove special values.
**************************************************************************/

%include "\\sas1\DCdata\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )


%ACS_summary_all( 

  /** State abbreviation. Ex: DC **/
  state_ab = VA,

   /** Census geographies used **/
  census_geo_year=2020,
  
  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2018_22,
  
  /** Description of latest file revisions for metadata **/
  revisions = %str(Revised to remove special values.)

)

