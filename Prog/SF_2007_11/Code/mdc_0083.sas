TITLE2 "m20115dc0083000";
DATA work.SFm0083dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0083000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*DETAILED OCCUPATION BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over with earnings */
B24121m491='Supervisors of transportation and material moving workers'
B24121m492='Aircraft pilots and flight engineers'
B24121m493='Air traffic controllers and airfield operations specialists'
B24121m494='Flight attendants'
B24121m495='Ambulance drivers and attendants, except emergency medical technicians'
B24121m496='Bus drivers'
B24121m497='Driver/sales workers and truck drivers'
B24121m498='Taxi drivers and chauffeurs'
B24121m499='Motor vehicle operators, all other'
B24121m500='Locomotive engineers and operators'
B24121m501='Railroad brake, signal, and switch operators'
B24121m502='Railroad conductors and yardmasters'
B24121m503='Subway, streetcar, and other rail transportation workers'
B24121m504='Sailors and marine oilers'
B24121m505='Ship and boat captains and operators'
B24121m506='Ship engineers'
B24121m507='Bridge and lock tenders'
B24121m508='Parking lot attendants'
B24121m509='Automotive and watercraft service attendants'
B24121m510='Transportation inspectors'
B24121m511='Transportation attendants, except flight attendants'
B24121m512='Other transportation workers'
B24121m513='Conveyor operators and tenders'
B24121m514='Crane and tower operators'
B24121m515='Dredge, excavating, and loading machine operators'
B24121m516='Hoist and winch operators'
B24121m517='Industrial truck and tractor operators'
B24121m518='Cleaners of vehicles and equipment'
B24121m519='Laborers and freight, stock, and material movers, hand'
B24121m520='Machine feeders and offbearers'
B24121m521='Packers and packagers, hand'
B24121m522='Pumping station operators'
B24121m523='Refuse and recyclable material collectors'
B24121m524='Mine shuttle car operators'
B24121m525='Tank car, truck, and ship loaders'
B24121m526='Material moving workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24121m491
B24121m492
B24121m493
B24121m494
B24121m495
B24121m496
B24121m497
B24121m498
B24121m499
B24121m500
B24121m501
B24121m502
B24121m503
B24121m504
B24121m505
B24121m506
B24121m507
B24121m508
B24121m509
B24121m510
B24121m511
B24121m512
B24121m513
B24121m514
B24121m515
B24121m516
B24121m517
B24121m518
B24121m519
B24121m520
B24121m521
B24121m522
B24121m523
B24121m524
B24121m525
B24121m526
;
RUN;
TITLE2;
