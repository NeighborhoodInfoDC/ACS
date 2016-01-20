TITLE2 "m20115dc0089000";
DATA work.SFm0089dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0089000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*DETAILED OCCUPATION BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED FEMALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed female population 16 years and over with earnings */
B24123m491='Supervisors of transportation and material moving workers'
B24123m492='Aircraft pilots and flight engineers'
B24123m493='Air traffic controllers and airfield operations specialists'
B24123m494='Flight attendants'
B24123m495='Ambulance drivers and attendants, except emergency medical technicians'
B24123m496='Bus drivers'
B24123m497='Driver/sales workers and truck drivers'
B24123m498='Taxi drivers and chauffeurs'
B24123m499='Motor vehicle operators, all other'
B24123m500='Locomotive engineers and operators'
B24123m501='Railroad brake, signal, and switch operators'
B24123m502='Railroad conductors and yardmasters'
B24123m503='Subway, streetcar, and other rail transportation workers'
B24123m504='Sailors and marine oilers'
B24123m505='Ship and boat captains and operators'
B24123m506='Ship engineers'
B24123m507='Bridge and lock tenders'
B24123m508='Parking lot attendants'
B24123m509='Automotive and watercraft service attendants'
B24123m510='Transportation inspectors'
B24123m511='Transportation attendants, except flight attendants'
B24123m512='Other transportation workers'
B24123m513='Conveyor operators and tenders'
B24123m514='Crane and tower operators'
B24123m515='Dredge, excavating, and loading machine operators'
B24123m516='Hoist and winch operators'
B24123m517='Industrial truck and tractor operators'
B24123m518='Cleaners of vehicles and equipment'
B24123m519='Laborers and freight, stock, and material movers, hand'
B24123m520='Machine feeders and offbearers'
B24123m521='Packers and packagers, hand'
B24123m522='Pumping station operators'
B24123m523='Refuse and recyclable material collectors'
B24123m524='Mine shuttle car operators'
B24123m525='Tank car, truck, and ship loaders'
B24123m526='Material moving workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24123m491
B24123m492
B24123m493
B24123m494
B24123m495
B24123m496
B24123m497
B24123m498
B24123m499
B24123m500
B24123m501
B24123m502
B24123m503
B24123m504
B24123m505
B24123m506
B24123m507
B24123m508
B24123m509
B24123m510
B24123m511
B24123m512
B24123m513
B24123m514
B24123m515
B24123m516
B24123m517
B24123m518
B24123m519
B24123m520
B24123m521
B24123m522
B24123m523
B24123m524
B24123m525
B24123m526
;
RUN;
TITLE2;
