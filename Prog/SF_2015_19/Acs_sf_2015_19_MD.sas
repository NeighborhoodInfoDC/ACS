/**************************************************************************
 Program:  Acs_sf_2015_19_MD.sas
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


%Acs_sf(

  /** State abbreviation. Ex: DC **/
  state_ab = MD,

  /** Year range (xxxx_yy). Ex: 2005_09 **/
  years = 2015_19,

  table_list = 
  	B01002 B01003 
	B01001 B01001B B01001C B01001D B01001E B01001F B01001G B01001H B01001I
	B02001 B03001 B03002 B05002 
	B05003 B05003A B05003B B05003C B05003D B05003E B05003F B05003G B05003H B05003I 
	B06002 B06007 B06009 B07012 B09001
    B06004B B06004C B06004D B06004E B06004F B06004G B06004H B06004I
	B08007 B08012
	B11001 B11003 B11004 B11005 B11007 B11010 B11013 B11016 
	B15002 C15002B C15002C C15002D C15002E C15002F C15002G C15002H C15002I
	B15003 B16004 B16006
	B17001 B17001B B17001C B17001D B17001E B17001F B17001G B17001H B17001I
	B17025 B18101 B18102 B18103 B18104 B18105 B18106
    B19013 B19050 B19056 B19057 B19058 B19059
	B19001 B19001A B19001B B19001C B19001D B19001E B19001F B19001G B19001H B19001I 
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
    B25070 B25072 B25074 B25091 B25105 B25088 B25064 B25093 B25095
	B07003
	B07004A B07004B B07004C B07004D B07004E B07004F B07004G B07004H B07004I
	B25079 B25080 B25082
	B25077
	B25106
	B25031 B25042 B25068 B05006 B27001 B25095 B25074 B14001 B08119 B25032
	B25009 B28006 B28007 B28004 B28009A B28009B B28009C B28009D B28009E B28009F B28009G B28009H B28009I
    B28001 B28002 B28003 B28005 B28008 B28011
	B98001 B98002 B98003
	B17017 B20004 B25024 B25032 B25064 B25071 B25010 B25070 B25074 B25092
	B25095 B25118 B25038 B07201 B07010 B28004 B25123 B28007 C23002A C23002B C23002C C23002D C23002E C23002F
	C23002G C23002H C23002I B08105A B08105B B08105C B08105D B08105E B08105F B08105G B08105H B08105I B08303 B18101 B18101A
	B18101B B18101C B18101D B18101E B18101F B18101G B18101H B18101I,

	drop_list =
    B01002Ee: B11001Ee: B19013Ee: B25014Ee: 
    B01002Em: B11001Em: B19013Em: B25014Em: 
    B18101Ee: 
    B18101Em: 
	B98001m: B98002m: B98003m: ,
  
  /** Description of latest file revisions for metadata **/
    revisions = %str(New file. Added B98001 B98002 and B98003 which replaced B00001 and B00002, added B17017 B20004 B25024 B25032 B25064 B25071 B25010 B25070 B25074 B25092
	B25095 B25118 B25038 B07201 B07010 B28004 B25123 B28007 C23002A C23002B C23002C C23002D C23002E C23002F
	C23002G C23002H C23002I B08105A B08105B B08105C B08105D B08105E B08105F B08105G B08105H B08105I B08303 B18101 B18101A
	B18101B B18101C B18101D B18101E B18101F B18101G B18101H B18101I for Regional AI analysis)

)

