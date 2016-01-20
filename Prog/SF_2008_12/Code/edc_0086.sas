TITLE2 "e20125dc0086000";
DATA work.SFe0086dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0086000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over with earnings */
B24121e491='Supervisors of transportation and material moving workers'
B24121e492='Aircraft pilots and flight engineers'
B24121e493='Air traffic controllers and airfield operations specialists'
B24121e494='Flight attendants'
B24121e495='Ambulance drivers and attendants, except emergency medical technicians'
B24121e496='Bus drivers'
B24121e497='Driver/sales workers and truck drivers'
B24121e498='Taxi drivers and chauffeurs'
B24121e499='Motor vehicle operators, all other'
B24121e500='Locomotive engineers and operators'
B24121e501='Railroad brake, signal, and switch operators'
B24121e502='Railroad conductors and yardmasters'
B24121e503='Subway, streetcar, and other rail transportation workers'
B24121e504='Sailors and marine oilers'
B24121e505='Ship and boat captains and operators'
B24121e506='Ship engineers'
B24121e507='Bridge and lock tenders'
B24121e508='Parking lot attendants'
B24121e509='Automotive and watercraft service attendants'
B24121e510='Transportation inspectors'
B24121e511='Transportation attendants, except flight attendants'
B24121e512='Other transportation workers'
B24121e513='Conveyor operators and tenders'
B24121e514='Crane and tower operators'
B24121e515='Dredge, excavating, and loading machine operators'
B24121e516='Hoist and winch operators'
B24121e517='Industrial truck and tractor operators'
B24121e518='Cleaners of vehicles and equipment'
B24121e519='Laborers and freight, stock, and material movers, hand'
B24121e520='Machine feeders and offbearers'
B24121e521='Packers and packagers, hand'
B24121e522='Pumping station operators'
B24121e523='Refuse and recyclable material collectors'
B24121e524='Mine shuttle car operators'
B24121e525='Tank car, truck, and ship loaders'
B24121e526='Material moving workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24121e491
B24121e492
B24121e493
B24121e494
B24121e495
B24121e496
B24121e497
B24121e498
B24121e499
B24121e500
B24121e501
B24121e502
B24121e503
B24121e504
B24121e505
B24121e506
B24121e507
B24121e508
B24121e509
B24121e510
B24121e511
B24121e512
B24121e513
B24121e514
B24121e515
B24121e516
B24121e517
B24121e518
B24121e519
B24121e520
B24121e521
B24121e522
B24121e523
B24121e524
B24121e525
B24121e526
;
RUN;
TITLE2;
