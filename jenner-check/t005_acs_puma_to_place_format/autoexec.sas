options obs=100;

/* --------------------------------------------------------------------
   Bundle setup for Puma_to_city_formats.

   The library program reads a geocorr PUMA-to-place crosswalk through
   a filevar-driven list of raw CSVs under D:\DCData\...\Raw and builds
   the $pum0fpl correspondence format with the DCData %Data_to_format
   macro (which generates a PROC FORMAT CNTLIN= step).

   For a self-contained run the crosswalk rows are read from inline
   DATALINES (same columns the program reads) and %Data_to_format is
   replaced with the equivalent PROC FORMAT CNTLIN= step it produces.
   The city-selection logic, key construction and place-code list are
   the program's own, unchanged.
   -------------------------------------------------------------------- */
