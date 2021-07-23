/**************************************************************************
 Program:  Acs_sf_2015_19_VA.sas
 Library:  ACS
 Project:  Urban-Greater DC
 Author:   Ananya Hariharan
 Created:  December 15, 2020
 Version:  SAS 9.4
 Environment:  Local Windows session (desktop)
 
 Description:  Read selected tables for ACS summary files.
 
 Modifications: 4/7/21: ALH added tables for regional AI analysis
**************************************************************************/

%include "\\sas1\DCdata\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )

/*proc contents data = acs.acs_sf_2015_19_md_regcnt; run; */

%Acs_sf(

  /** State abbreviation. Ex: DC **/
  state_ab = VA,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2015_19,
  
  /** Description of latest file revisions for metadata **/
    revisions = %str(Added B17017 B20004 B25024 B25032 B25064 B25071 B25010 B25070 B25074 B25092
	B25095 B25118 B25038 B07201 B07010 B28004 B25123 B28007 C23002A C23002B C23002C C23002D C23002E C23002F
	C23002G C23002H C23002I B08105A B08105B B08105C B08105D B08105E B08105F B08105G B08105H B08105I B08303 B18101 B18101A
	B18101B B18101C B18101D B18101E B18101F B18101G B18101H B18101I for Regional AI analysis)

);
