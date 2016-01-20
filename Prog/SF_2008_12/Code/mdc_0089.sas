TITLE2 "m20125dc0089000";
DATA work.SFm0089dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0089000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED MALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed male population 16 years and over with earnings */
B24122m491='Supervisors of transportation and material moving workers'
B24122m492='Aircraft pilots and flight engineers'
B24122m493='Air traffic controllers and airfield operations specialists'
B24122m494='Flight attendants'
B24122m495='Ambulance drivers and attendants, except emergency medical technicians'
B24122m496='Bus drivers'
B24122m497='Driver/sales workers and truck drivers'
B24122m498='Taxi drivers and chauffeurs'
B24122m499='Motor vehicle operators, all other'
B24122m500='Locomotive engineers and operators'
B24122m501='Railroad brake, signal, and switch operators'
B24122m502='Railroad conductors and yardmasters'
B24122m503='Subway, streetcar, and other rail transportation workers'
B24122m504='Sailors and marine oilers'
B24122m505='Ship and boat captains and operators'
B24122m506='Ship engineers'
B24122m507='Bridge and lock tenders'
B24122m508='Parking lot attendants'
B24122m509='Automotive and watercraft service attendants'
B24122m510='Transportation inspectors'
B24122m511='Transportation attendants, except flight attendants'
B24122m512='Other transportation workers'
B24122m513='Conveyor operators and tenders'
B24122m514='Crane and tower operators'
B24122m515='Dredge, excavating, and loading machine operators'
B24122m516='Hoist and winch operators'
B24122m517='Industrial truck and tractor operators'
B24122m518='Cleaners of vehicles and equipment'
B24122m519='Laborers and freight, stock, and material movers, hand'
B24122m520='Machine feeders and offbearers'
B24122m521='Packers and packagers, hand'
B24122m522='Pumping station operators'
B24122m523='Refuse and recyclable material collectors'
B24122m524='Mine shuttle car operators'
B24122m525='Tank car, truck, and ship loaders'
B24122m526='Material moving workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24122m491
B24122m492
B24122m493
B24122m494
B24122m495
B24122m496
B24122m497
B24122m498
B24122m499
B24122m500
B24122m501
B24122m502
B24122m503
B24122m504
B24122m505
B24122m506
B24122m507
B24122m508
B24122m509
B24122m510
B24122m511
B24122m512
B24122m513
B24122m514
B24122m515
B24122m516
B24122m517
B24122m518
B24122m519
B24122m520
B24122m521
B24122m522
B24122m523
B24122m524
B24122m525
B24122m526
;
RUN;
TITLE2;
