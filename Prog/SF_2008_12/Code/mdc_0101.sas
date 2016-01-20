TITLE2 "m20125dc0101000";
DATA work.SFm0101dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0101000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED FEMALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed female population 16 years and over */
B24126m491='Supervisors of transportation and material moving workers'
B24126m492='Aircraft pilots and flight engineers'
B24126m493='Air traffic controllers and airfield operations specialists'
B24126m494='Flight attendants'
B24126m495='Ambulance drivers and attendants, except emergency medical technicians'
B24126m496='Bus drivers'
B24126m497='Driver/sales workers and truck drivers'
B24126m498='Taxi drivers and chauffeurs'
B24126m499='Motor vehicle operators, all other'
B24126m500='Locomotive engineers and operators'
B24126m501='Railroad brake, signal, and switch operators'
B24126m502='Railroad conductors and yardmasters'
B24126m503='Subway, streetcar, and other rail transportation workers'
B24126m504='Sailors and marine oilers'
B24126m505='Ship and boat captains and operators'
B24126m506='Ship engineers'
B24126m507='Bridge and lock tenders'
B24126m508='Parking lot attendants'
B24126m509='Automotive and watercraft service attendants'
B24126m510='Transportation inspectors'
B24126m511='Transportation attendants, except flight attendants'
B24126m512='Other transportation workers'
B24126m513='Conveyor operators and tenders'
B24126m514='Crane and tower operators'
B24126m515='Dredge, excavating, and loading machine operators'
B24126m516='Hoist and winch operators'
B24126m517='Industrial truck and tractor operators'
B24126m518='Cleaners of vehicles and equipment'
B24126m519='Laborers and freight, stock, and material movers, hand'
B24126m520='Machine feeders and offbearers'
B24126m521='Packers and packagers, hand'
B24126m522='Pumping station operators'
B24126m523='Refuse and recyclable material collectors'
B24126m524='Mine shuttle car operators'
B24126m525='Tank car, truck, and ship loaders'
B24126m526='Material moving workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24126m491
B24126m492
B24126m493
B24126m494
B24126m495
B24126m496
B24126m497
B24126m498
B24126m499
B24126m500
B24126m501
B24126m502
B24126m503
B24126m504
B24126m505
B24126m506
B24126m507
B24126m508
B24126m509
B24126m510
B24126m511
B24126m512
B24126m513
B24126m514
B24126m515
B24126m516
B24126m517
B24126m518
B24126m519
B24126m520
B24126m521
B24126m522
B24126m523
B24126m524
B24126m525
B24126m526
;
RUN;
TITLE2;
