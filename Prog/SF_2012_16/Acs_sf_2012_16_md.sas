/**************************************************************************
 Program:  Acs_sf_2012_16_md.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   Wilton Oliver
 Created:  05/08/18
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Read selected tables for ACS summary files.
 
 Modifications:
 05/13/18 PT Added tables B05003 and B05003A-I.
 07/09/18 LH Added table B25032.
 08/30/18 RP Added table 25009
**************************************************************************/

%include "L:\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )


%Acs_sf(

  /** State abbreviation. Ex: DC **/
  state_ab = MD,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2012_16,
  
  /** Description of latest file revisions for metadata **/
  revisions = %str(Added table B25009.)

)

