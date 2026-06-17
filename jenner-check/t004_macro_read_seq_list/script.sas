/**************************************************************************
 Bundle:   t004_macro_read_seq_list
 Source:   Macros/Read_seq_list.sas (NeighborhoodInfoDC/ACS)
 Author:   P. Tatian (macro), bundled for Jenner compatibility check

 The Read_seq_list macro definition below is the library's own code,
 verbatim. It scans a space-delimited list of ACS summary-file sequence
 numbers and calls Read_seq once per sequence, accumulating the e- and
 m-table name lists. The caller and PROC PRINT exercise that loop.
**************************************************************************/

/** Macro Read_seq_list - Start Definition **/

%macro Read_seq_list( seq_list );

  %local i v;

  %let table_file_e_list = ;
  %let table_file_m_list = ;

  %let i = 1;
  %let v = %scan( &seq_list, &i, %str( ) );

  %do %until ( &v = );

    %Read_seq( &v )

    %let i = %eval( &i + 1 );
    %let v = %scan( &seq_list, &i, %str( ) );

  %end;

%mend Read_seq_list;

/** End Macro Definition **/

%Read_seq_list( 0001 0002 0003 0119 )

%put NOTE: table_file_e_list =&table_file_e_list;
%put NOTE: table_file_m_list =&table_file_m_list;

data seq_lists;
  length list_type $ 12 table_files $ 200;
  list_type = 'estimates';   table_files = "&table_file_e_list";   output;
  list_type = 'margins';     table_files = "&table_file_m_list";   output;
run;

proc print data=seq_lists noobs;
  var list_type table_files;
  title 'ACS summary-file table names by sequence list';
run;
