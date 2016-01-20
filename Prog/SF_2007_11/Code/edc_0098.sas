TITLE2 "e20115dc0098000";
DATA work.SFe0098dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0098000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*DETAILED OCCUPATION FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED FEMALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed female population 16 years and over */
B24126e491='Supervisors of transportation and material moving workers'
B24126e492='Aircraft pilots and flight engineers'
B24126e493='Air traffic controllers and airfield operations specialists'
B24126e494='Flight attendants'
B24126e495='Ambulance drivers and attendants, except emergency medical technicians'
B24126e496='Bus drivers'
B24126e497='Driver/sales workers and truck drivers'
B24126e498='Taxi drivers and chauffeurs'
B24126e499='Motor vehicle operators, all other'
B24126e500='Locomotive engineers and operators'
B24126e501='Railroad brake, signal, and switch operators'
B24126e502='Railroad conductors and yardmasters'
B24126e503='Subway, streetcar, and other rail transportation workers'
B24126e504='Sailors and marine oilers'
B24126e505='Ship and boat captains and operators'
B24126e506='Ship engineers'
B24126e507='Bridge and lock tenders'
B24126e508='Parking lot attendants'
B24126e509='Automotive and watercraft service attendants'
B24126e510='Transportation inspectors'
B24126e511='Transportation attendants, except flight attendants'
B24126e512='Other transportation workers'
B24126e513='Conveyor operators and tenders'
B24126e514='Crane and tower operators'
B24126e515='Dredge, excavating, and loading machine operators'
B24126e516='Hoist and winch operators'
B24126e517='Industrial truck and tractor operators'
B24126e518='Cleaners of vehicles and equipment'
B24126e519='Laborers and freight, stock, and material movers, hand'
B24126e520='Machine feeders and offbearers'
B24126e521='Packers and packagers, hand'
B24126e522='Pumping station operators'
B24126e523='Refuse and recyclable material collectors'
B24126e524='Mine shuttle car operators'
B24126e525='Tank car, truck, and ship loaders'
B24126e526='Material moving workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24126e491
B24126e492
B24126e493
B24126e494
B24126e495
B24126e496
B24126e497
B24126e498
B24126e499
B24126e500
B24126e501
B24126e502
B24126e503
B24126e504
B24126e505
B24126e506
B24126e507
B24126e508
B24126e509
B24126e510
B24126e511
B24126e512
B24126e513
B24126e514
B24126e515
B24126e516
B24126e517
B24126e518
B24126e519
B24126e520
B24126e521
B24126e522
B24126e523
B24126e524
B24126e525
B24126e526
;
RUN;
TITLE2;
