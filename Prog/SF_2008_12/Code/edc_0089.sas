TITLE2 "e20125dc0089000";
DATA work.SFe0089dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0089000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED MALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed male population 16 years and over with earnings */
B24122e491='Supervisors of transportation and material moving workers'
B24122e492='Aircraft pilots and flight engineers'
B24122e493='Air traffic controllers and airfield operations specialists'
B24122e494='Flight attendants'
B24122e495='Ambulance drivers and attendants, except emergency medical technicians'
B24122e496='Bus drivers'
B24122e497='Driver/sales workers and truck drivers'
B24122e498='Taxi drivers and chauffeurs'
B24122e499='Motor vehicle operators, all other'
B24122e500='Locomotive engineers and operators'
B24122e501='Railroad brake, signal, and switch operators'
B24122e502='Railroad conductors and yardmasters'
B24122e503='Subway, streetcar, and other rail transportation workers'
B24122e504='Sailors and marine oilers'
B24122e505='Ship and boat captains and operators'
B24122e506='Ship engineers'
B24122e507='Bridge and lock tenders'
B24122e508='Parking lot attendants'
B24122e509='Automotive and watercraft service attendants'
B24122e510='Transportation inspectors'
B24122e511='Transportation attendants, except flight attendants'
B24122e512='Other transportation workers'
B24122e513='Conveyor operators and tenders'
B24122e514='Crane and tower operators'
B24122e515='Dredge, excavating, and loading machine operators'
B24122e516='Hoist and winch operators'
B24122e517='Industrial truck and tractor operators'
B24122e518='Cleaners of vehicles and equipment'
B24122e519='Laborers and freight, stock, and material movers, hand'
B24122e520='Machine feeders and offbearers'
B24122e521='Packers and packagers, hand'
B24122e522='Pumping station operators'
B24122e523='Refuse and recyclable material collectors'
B24122e524='Mine shuttle car operators'
B24122e525='Tank car, truck, and ship loaders'
B24122e526='Material moving workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24122e491
B24122e492
B24122e493
B24122e494
B24122e495
B24122e496
B24122e497
B24122e498
B24122e499
B24122e500
B24122e501
B24122e502
B24122e503
B24122e504
B24122e505
B24122e506
B24122e507
B24122e508
B24122e509
B24122e510
B24122e511
B24122e512
B24122e513
B24122e514
B24122e515
B24122e516
B24122e517
B24122e518
B24122e519
B24122e520
B24122e521
B24122e522
B24122e523
B24122e524
B24122e525
B24122e526
;
RUN;
TITLE2;
