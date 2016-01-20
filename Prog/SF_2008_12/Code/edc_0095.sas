TITLE2 "e20125dc0095000";
DATA work.SFe0095dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0095000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over */
B24124e491='Supervisors of transportation and material moving workers'
B24124e492='Aircraft pilots and flight engineers'
B24124e493='Air traffic controllers and airfield operations specialists'
B24124e494='Flight attendants'
B24124e495='Ambulance drivers and attendants, except emergency medical technicians'
B24124e496='Bus drivers'
B24124e497='Driver/sales workers and truck drivers'
B24124e498='Taxi drivers and chauffeurs'
B24124e499='Motor vehicle operators, all other'
B24124e500='Locomotive engineers and operators'
B24124e501='Railroad brake, signal, and switch operators'
B24124e502='Railroad conductors and yardmasters'
B24124e503='Subway, streetcar, and other rail transportation workers'
B24124e504='Sailors and marine oilers'
B24124e505='Ship and boat captains and operators'
B24124e506='Ship engineers'
B24124e507='Bridge and lock tenders'
B24124e508='Parking lot attendants'
B24124e509='Automotive and watercraft service attendants'
B24124e510='Transportation inspectors'
B24124e511='Transportation attendants, except flight attendants'
B24124e512='Other transportation workers'
B24124e513='Conveyor operators and tenders'
B24124e514='Crane and tower operators'
B24124e515='Dredge, excavating, and loading machine operators'
B24124e516='Hoist and winch operators'
B24124e517='Industrial truck and tractor operators'
B24124e518='Cleaners of vehicles and equipment'
B24124e519='Laborers and freight, stock, and material movers, hand'
B24124e520='Machine feeders and offbearers'
B24124e521='Packers and packagers, hand'
B24124e522='Pumping station operators'
B24124e523='Refuse and recyclable material collectors'
B24124e524='Mine shuttle car operators'
B24124e525='Tank car, truck, and ship loaders'
B24124e526='Material moving workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24124e491
B24124e492
B24124e493
B24124e494
B24124e495
B24124e496
B24124e497
B24124e498
B24124e499
B24124e500
B24124e501
B24124e502
B24124e503
B24124e504
B24124e505
B24124e506
B24124e507
B24124e508
B24124e509
B24124e510
B24124e511
B24124e512
B24124e513
B24124e514
B24124e515
B24124e516
B24124e517
B24124e518
B24124e519
B24124e520
B24124e521
B24124e522
B24124e523
B24124e524
B24124e525
B24124e526
;
RUN;
TITLE2;
