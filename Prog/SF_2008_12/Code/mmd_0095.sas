TITLE2 "m20125md0095000";
DATA work.SFm0095md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0095000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over */
B24124m491='Supervisors of transportation and material moving workers'
B24124m492='Aircraft pilots and flight engineers'
B24124m493='Air traffic controllers and airfield operations specialists'
B24124m494='Flight attendants'
B24124m495='Ambulance drivers and attendants, except emergency medical technicians'
B24124m496='Bus drivers'
B24124m497='Driver/sales workers and truck drivers'
B24124m498='Taxi drivers and chauffeurs'
B24124m499='Motor vehicle operators, all other'
B24124m500='Locomotive engineers and operators'
B24124m501='Railroad brake, signal, and switch operators'
B24124m502='Railroad conductors and yardmasters'
B24124m503='Subway, streetcar, and other rail transportation workers'
B24124m504='Sailors and marine oilers'
B24124m505='Ship and boat captains and operators'
B24124m506='Ship engineers'
B24124m507='Bridge and lock tenders'
B24124m508='Parking lot attendants'
B24124m509='Automotive and watercraft service attendants'
B24124m510='Transportation inspectors'
B24124m511='Transportation attendants, except flight attendants'
B24124m512='Other transportation workers'
B24124m513='Conveyor operators and tenders'
B24124m514='Crane and tower operators'
B24124m515='Dredge, excavating, and loading machine operators'
B24124m516='Hoist and winch operators'
B24124m517='Industrial truck and tractor operators'
B24124m518='Cleaners of vehicles and equipment'
B24124m519='Laborers and freight, stock, and material movers, hand'
B24124m520='Machine feeders and offbearers'
B24124m521='Packers and packagers, hand'
B24124m522='Pumping station operators'
B24124m523='Refuse and recyclable material collectors'
B24124m524='Mine shuttle car operators'
B24124m525='Tank car, truck, and ship loaders'
B24124m526='Material moving workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24124m491
B24124m492
B24124m493
B24124m494
B24124m495
B24124m496
B24124m497
B24124m498
B24124m499
B24124m500
B24124m501
B24124m502
B24124m503
B24124m504
B24124m505
B24124m506
B24124m507
B24124m508
B24124m509
B24124m510
B24124m511
B24124m512
B24124m513
B24124m514
B24124m515
B24124m516
B24124m517
B24124m518
B24124m519
B24124m520
B24124m521
B24124m522
B24124m523
B24124m524
B24124m525
B24124m526
;
RUN;
TITLE2;
