/**************************************************************************
 Program:  Acs_sf_2010_14_dc.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   Carl Hedman
 Created:  5/26/16
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Read selected tables for ACS summary files.
 
 Modifications: SD added tables for Equity 8/15/2016
			    SD added tables for State of Latinos 9/23/2016
**************************************************************************/

%include "L:\SAS\Inc\StdLocal.sas";

** Define libraries **;
%DCData_lib( ACS )


%Acs_sf(

  revisions = %str(Add tables for State of Latinos project.),

  /** State abbreviation. Ex: DC **/
  state_ab = DC,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2010_14,

  /** Update table_list=, drop_list=, and drop_bg_list= parameters to add new tabulations to data set **/
  
  /** List of tables to include in data sets **/
  table_list = 
  	B00001 B00002 B01002 B01003 
	B01001 B01001B B01001C B01001D B01001E B01001F B01001G B01001H B01001I
	B02001 B03001 B03002 B05002 B05003I B06002 B06007 B06009 B07012 B09001
    B06004B B06004C B06004D B06004E B06004F B06004G B06004H B06004I
	B11001 B11003 B11004 B11005 B11007 B11010 B11013 B11016 
	B15002 C15002B C15002C C15002D C15002E C15002F C15002G C15002H C15002I
	B15003 B16004 B16006
	B17001 B17001B B17001C B17001D B17001E B17001F B17001G B17001H B17001I
	B17025 B18101 B18102 B18103 B18104 B18105 B18106
    B19013 B19050 B19056 B19057 B19058 B19059
	B19001 B19001B B19001C B19001D B19001E B19001F B19001G B19001H B19001I 
	B19025 B19025B B19025C B19025D B19025E B19025F B19025G B19025H B19025I  
	B19101 B19101B B19101C B19101D B19101E B19101F B19101G B19101H B19101I
	B19113 B19113B B19113C B19113D B19113E B19113F B19113G B19113H B19113I
	B19127 B19131
	B19313 B19313B B19313C B19313D B19313E B19313F B19313G B19313H B19313I
	B20005 B20005B B20005C B20005D B20005E B20005F B20005G B20005H B20005I
	B23001 B23025
	C23002B C23002C C23002D C23002E C23002F C23002G C23002H C23002I 
	B23003 
	C24010 C24010B C24010C C24010D C24010E C24010F C24010G C24010H C24010I
	C24030 B25004 B25007 B25010 B25014 B25024 B25041
	B25003 B25003B B25003C B25003D B25003E B25003F B25003G B25003H B25003I
	B25043 B25044 B25049 B25052 B25061 B25062 B25063 B25065 B25070    
    B25070 B25091 B25105 B25088 B25064 
  ,
  
  /** List of table estimate (e:) and margin of error (m:) cells that should be excluded from all data sets **/
  drop_list =
    B00001m: B00002m:
    B01002Ee: B06004EPRe: B11001Ee: B19013Ee: B25014Ee:
    B01002Em: B06004EPRm: B11001Em: B19013Em: B25014Em:
    B18101Ee: 
    B18101Em: 
  ,
  
  /** List of table estimate (e:) and margin of error (m:) cells that should be excluded from BLOCK GROUP data sets only **/
  drop_bg_list = 
  	B01001Be: B01001Ce: B01001De: B01001Ee: B01001Fe: B01001Ge: B01001He: B01001Ie:
	B01001Bm: B01001Cm: B01001Dm: B01001Em: B01001Fm: B01001Gm: B01001Hm: B01001Im:
    B03001e: B05002e: B05003Ie: B06002e: B06007e: B06009e: B07012e: B09001e: B11010e: B11013e: B16006e:
    B03001m: B05002m: B05003Im: B06002m: B06007m: B06009m: B07012m: B09001m: B11010m: B11013m: B16006m:
	B06004Be: B06004Ce: B06004De: B06004Ee: B06004Fe: B06004Ge: B06004He: B06004Ie: 
	B06004Bm: B06004Cm: B06004Dm: B06004Em: B06004Fm: B06004Gm: B06004Hm: B06004Im:
	C15002Be: C15002Ce: C15002De: C15002Ee: C15002Fe: C15002Ge: C15002He: C15002Ie:
	C15002Bm: C15002Cm: C15002Dm: C15002Em: C15002Fm: C15002Gm: C15002Hm: C15002Im:
	B17001e: B17001Be: B17001Ce: B17001De: B17001Ee: B17001Fe: B17001Ge: B17001He: B17001Ie:
	B17001m: B17001Bm: B17001Cm: B17001Dm: B17001Em: B17001Fm: B17001Gm: B17001Hm: B17001Im:
    B17025e: B18101e: B18102e: B18103e: B18104e: B18105e: B18106e: B19058e:
    B17025m: B18101m: B18102m: B18103m: B18104m: B18105m: B18106m: B19058m:
	B19001Be: B19001Ce: B19001De: B19001Ee: B19001Fe: B19001Ge: B19001He: B19001Ie:
	B19001Bm: B19001Cm: B19001Dm: B19001Em: B19001Fm: B19001Gm: B19001Hm: B19001Im:
	B19101Be: B19101Ce: B19101De: B19101Ee: B19101Fe: B19101Ge: B19101He: B19101Ie:
	B19101Bm: B19101Cm: B19101Dm: B19101Em: B19101Fm: B19101Gm: B19101Hm: B19101Im:
    B19131e: B23001e: B25052e: B25105e:
    B19131m: B23001m: B25052m: B25105m:
	B20005e: B20005Be: B20005Ce: B20005De: B20005Ee: B20005Fe: B20005Ge: B20005He: B20005Ie:
	B20005m: B20005Bm: B20005Cm: B20005Dm: B20005Em: B20005Fm: B20005Gm: B20005Hm: B20005Im:
	C23002Be: C23002Ce: C23002De: C23002Ee: C23002Fe: C23002Ge: C23002He: C23002Ie:
	C23002Bm: C23002Cm: C23002Dm: C23002Em: C23002Fm: C23002Gm: C23002Hm: C23002Im:

)
