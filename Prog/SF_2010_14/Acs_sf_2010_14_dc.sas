/**************************************************************************
 Program:  Acs_sf_2010_14_dc.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   Carl Hedman
 Created:  5/26/16
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Read selected tables for ACS summary files.
 
 Modifications: SD added tables for Equity 8/15/2016.
			    SD added tables for State of Latinos 9/23/2016.
				AH changed include statement 
			    RP Update revisions statement 10/2/20
**************************************************************************/

%include "\\sas1\DCDATA\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )


%Acs_sf(

  revisions = %str(Re-submit to add the _regcnt geography),

  /** State abbreviation. Ex: DC **/
  state_ab = DC,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2010_14

)
