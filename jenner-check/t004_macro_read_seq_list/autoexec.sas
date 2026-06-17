options obs=100;

/* --------------------------------------------------------------------
   Bundle setup for the ACS Read_seq_list macro.

   Read_seq_list (Macros/Read_seq_list.sas) drives Read_seq once per
   sequence number in a space-delimited list. In the library, Read_seq
   (Macros/Read_seq.sas) %includes the per-sequence e/m read programs
   from &rootdir for the current &_state_ab and appends the resulting
   table names to two accumulating macro variables.

   For a self-contained run we set &_state_ab and provide a Read_seq
   that performs the same list accumulation Read_seq.sas performs,
   without the external %include of the per-sequence read programs
   (those pull in raw Census summary-file extracts not shipped here).
   Read_seq_list.sas itself runs verbatim below.
   -------------------------------------------------------------------- */

%let _state_ab = dc;

%macro Read_seq( seqno );
  %let table_file_e_list = &table_file_e_list SFe&seqno.&_state_ab.;
  %let table_file_m_list = &table_file_m_list SFm&seqno.&_state_ab.;
%mend Read_seq;
