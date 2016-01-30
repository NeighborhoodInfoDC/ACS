/**************************************************************************
 Program:  Read_seq_list.sas
 Library:  ACS
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  01/30/16
 Version:  SAS 9.2
 Environment:  Local Windows session (desktop)
 
 Description:  Read a list of sequence numbers for summary
 tabulations.

 Modifications:
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

