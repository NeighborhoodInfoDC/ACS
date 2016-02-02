/**************************************************************************
 Program:  Read_seq.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  01/30/16
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Execute code to read data for a sequence number of
summary tabulations.

 Modifications:
**************************************************************************/

/** Macro Read_seq - Start Definition **/

%macro Read_seq( seqno );

  %include "&rootdir.e&_state_ab._&seqno..sas";
  %include "&rootdir.m&_state_ab._&seqno..sas";

  %let table_file_e_list = &table_file_e_list SFe&seqno.&_state_ab.;
  %let table_file_m_list = &table_file_m_list SFm&seqno.&_state_ab.;
 
%mend Read_seq;

/** End Macro Definition **/


