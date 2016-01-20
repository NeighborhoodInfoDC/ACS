TITLE2 "e20125md0098000";
DATA work.SFe0098md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0098000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED MALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed male population 16 years and over */
B24125e491='Supervisors of transportation and material moving workers'
B24125e492='Aircraft pilots and flight engineers'
B24125e493='Air traffic controllers and airfield operations specialists'
B24125e494='Flight attendants'
B24125e495='Ambulance drivers and attendants, except emergency medical technicians'
B24125e496='Bus drivers'
B24125e497='Driver/sales workers and truck drivers'
B24125e498='Taxi drivers and chauffeurs'
B24125e499='Motor vehicle operators, all other'
B24125e500='Locomotive engineers and operators'
B24125e501='Railroad brake, signal, and switch operators'
B24125e502='Railroad conductors and yardmasters'
B24125e503='Subway, streetcar, and other rail transportation workers'
B24125e504='Sailors and marine oilers'
B24125e505='Ship and boat captains and operators'
B24125e506='Ship engineers'
B24125e507='Bridge and lock tenders'
B24125e508='Parking lot attendants'
B24125e509='Automotive and watercraft service attendants'
B24125e510='Transportation inspectors'
B24125e511='Transportation attendants, except flight attendants'
B24125e512='Other transportation workers'
B24125e513='Conveyor operators and tenders'
B24125e514='Crane and tower operators'
B24125e515='Dredge, excavating, and loading machine operators'
B24125e516='Hoist and winch operators'
B24125e517='Industrial truck and tractor operators'
B24125e518='Cleaners of vehicles and equipment'
B24125e519='Laborers and freight, stock, and material movers, hand'
B24125e520='Machine feeders and offbearers'
B24125e521='Packers and packagers, hand'
B24125e522='Pumping station operators'
B24125e523='Refuse and recyclable material collectors'
B24125e524='Mine shuttle car operators'
B24125e525='Tank car, truck, and ship loaders'
B24125e526='Material moving workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24125e491
B24125e492
B24125e493
B24125e494
B24125e495
B24125e496
B24125e497
B24125e498
B24125e499
B24125e500
B24125e501
B24125e502
B24125e503
B24125e504
B24125e505
B24125e506
B24125e507
B24125e508
B24125e509
B24125e510
B24125e511
B24125e512
B24125e513
B24125e514
B24125e515
B24125e516
B24125e517
B24125e518
B24125e519
B24125e520
B24125e521
B24125e522
B24125e523
B24125e524
B24125e525
B24125e526
;
RUN;
TITLE2;
