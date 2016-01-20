TITLE2 "m20115dc0095000";
DATA work.SFm0095dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0095000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*DETAILED OCCUPATION FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED MALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed male population 16 years and over */
B24125m491='Supervisors of transportation and material moving workers'
B24125m492='Aircraft pilots and flight engineers'
B24125m493='Air traffic controllers and airfield operations specialists'
B24125m494='Flight attendants'
B24125m495='Ambulance drivers and attendants, except emergency medical technicians'
B24125m496='Bus drivers'
B24125m497='Driver/sales workers and truck drivers'
B24125m498='Taxi drivers and chauffeurs'
B24125m499='Motor vehicle operators, all other'
B24125m500='Locomotive engineers and operators'
B24125m501='Railroad brake, signal, and switch operators'
B24125m502='Railroad conductors and yardmasters'
B24125m503='Subway, streetcar, and other rail transportation workers'
B24125m504='Sailors and marine oilers'
B24125m505='Ship and boat captains and operators'
B24125m506='Ship engineers'
B24125m507='Bridge and lock tenders'
B24125m508='Parking lot attendants'
B24125m509='Automotive and watercraft service attendants'
B24125m510='Transportation inspectors'
B24125m511='Transportation attendants, except flight attendants'
B24125m512='Other transportation workers'
B24125m513='Conveyor operators and tenders'
B24125m514='Crane and tower operators'
B24125m515='Dredge, excavating, and loading machine operators'
B24125m516='Hoist and winch operators'
B24125m517='Industrial truck and tractor operators'
B24125m518='Cleaners of vehicles and equipment'
B24125m519='Laborers and freight, stock, and material movers, hand'
B24125m520='Machine feeders and offbearers'
B24125m521='Packers and packagers, hand'
B24125m522='Pumping station operators'
B24125m523='Refuse and recyclable material collectors'
B24125m524='Mine shuttle car operators'
B24125m525='Tank car, truck, and ship loaders'
B24125m526='Material moving workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24125m491
B24125m492
B24125m493
B24125m494
B24125m495
B24125m496
B24125m497
B24125m498
B24125m499
B24125m500
B24125m501
B24125m502
B24125m503
B24125m504
B24125m505
B24125m506
B24125m507
B24125m508
B24125m509
B24125m510
B24125m511
B24125m512
B24125m513
B24125m514
B24125m515
B24125m516
B24125m517
B24125m518
B24125m519
B24125m520
B24125m521
B24125m522
B24125m523
B24125m524
B24125m525
B24125m526
;
RUN;
TITLE2;
