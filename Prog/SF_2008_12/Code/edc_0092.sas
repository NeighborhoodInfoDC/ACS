TITLE2 "e20125dc0092000";
DATA work.SFe0092dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0092000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED FEMALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed female population 16 years and over with earnings */
B24123e491='Supervisors of transportation and material moving workers'
B24123e492='Aircraft pilots and flight engineers'
B24123e493='Air traffic controllers and airfield operations specialists'
B24123e494='Flight attendants'
B24123e495='Ambulance drivers and attendants, except emergency medical technicians'
B24123e496='Bus drivers'
B24123e497='Driver/sales workers and truck drivers'
B24123e498='Taxi drivers and chauffeurs'
B24123e499='Motor vehicle operators, all other'
B24123e500='Locomotive engineers and operators'
B24123e501='Railroad brake, signal, and switch operators'
B24123e502='Railroad conductors and yardmasters'
B24123e503='Subway, streetcar, and other rail transportation workers'
B24123e504='Sailors and marine oilers'
B24123e505='Ship and boat captains and operators'
B24123e506='Ship engineers'
B24123e507='Bridge and lock tenders'
B24123e508='Parking lot attendants'
B24123e509='Automotive and watercraft service attendants'
B24123e510='Transportation inspectors'
B24123e511='Transportation attendants, except flight attendants'
B24123e512='Other transportation workers'
B24123e513='Conveyor operators and tenders'
B24123e514='Crane and tower operators'
B24123e515='Dredge, excavating, and loading machine operators'
B24123e516='Hoist and winch operators'
B24123e517='Industrial truck and tractor operators'
B24123e518='Cleaners of vehicles and equipment'
B24123e519='Laborers and freight, stock, and material movers, hand'
B24123e520='Machine feeders and offbearers'
B24123e521='Packers and packagers, hand'
B24123e522='Pumping station operators'
B24123e523='Refuse and recyclable material collectors'
B24123e524='Mine shuttle car operators'
B24123e525='Tank car, truck, and ship loaders'
B24123e526='Material moving workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24123e491
B24123e492
B24123e493
B24123e494
B24123e495
B24123e496
B24123e497
B24123e498
B24123e499
B24123e500
B24123e501
B24123e502
B24123e503
B24123e504
B24123e505
B24123e506
B24123e507
B24123e508
B24123e509
B24123e510
B24123e511
B24123e512
B24123e513
B24123e514
B24123e515
B24123e516
B24123e517
B24123e518
B24123e519
B24123e520
B24123e521
B24123e522
B24123e523
B24123e524
B24123e525
B24123e526
;
RUN;
TITLE2;
