TITLE2 "e20125md0088000";
DATA work.SFe0088md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0088000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED MALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed male population 16 years and over with earnings */
B24122e246='Motion picture projectionists'
B24122e247='Ushers, lobby attendants, and ticket takers'
B24122e248='Miscellaneous entertainment attendants and related workers'
B24122e249='Embalmers and funeral attendants'
B24122e250='Morticians, undertakers, and funeral directors'
B24122e251='Barbers'
B24122e252='Hairdressers, hairstylists, and cosmetologists'
B24122e253='Miscellaneous personal appearance workers'
B24122e254='Baggage porters, bellhops, and concierges'
B24122e255='Tour and travel guides'
B24122e256='Childcare workers'
B24122e257='Personal care aides'
B24122e258='Recreation and fitness workers'
B24122e259='Residential advisors'
B24122e260='Personal care and service workers, all other'
B24122e261='First-line supervisors of retail sales workers'
B24122e262='First-line supervisors of non-retail sales workers'
B24122e263='Cashiers'
B24122e264='Counter and rental clerks'
B24122e265='Parts salespersons'
B24122e266='Retail salespersons'
B24122e267='Advertising sales agents'
B24122e268='Insurance sales agents'
B24122e269='Securities, commodities, and financial services sales agents'
B24122e270='Travel agents'
B24122e271='Sales representatives, services, all other'
B24122e272='Sales representatives, wholesale and manufacturing'
B24122e273='Models, demonstrators, and product promoters'
B24122e274='Real estate brokers and sales agents'
B24122e275='Sales engineers'
B24122e276='Telemarketers'
B24122e277='Door-to-door sales workers, news and street vendors, and related workers'
B24122e278='Sales and related workers, all other'
B24122e279='First-line supervisors of office and administrative support workers'
B24122e280='Switchboard operators, including answering service'
B24122e281='Telephone operators'
B24122e282='Communications equipment operators, all other'
B24122e283='Bill and account collectors'
B24122e284='Billing and posting clerks'
B24122e285='Bookkeeping, accounting, and auditing clerks'
B24122e286='Gaming cage workers'
B24122e287='Payroll and timekeeping clerks'
B24122e288='Procurement clerks'
B24122e289='Tellers'
B24122e290='Financial clerks, all other'
B24122e291='Brokerage clerks'
B24122e292='Correspondence clerks'
B24122e293='Court, municipal, and license clerks'
B24122e294='Credit authorizers, checkers, and clerks'
B24122e295='Customer service representatives'
B24122e296='Eligibility interviewers, government programs'
B24122e297='File clerks'
B24122e298='Hotel, motel, and resort desk clerks'
B24122e299='Interviewers, except eligibility and loan'
B24122e300='Library assistants, clerical'
B24122e301='Loan interviewers and clerks'
B24122e302='New accounts clerks'
B24122e303='Order clerks'
B24122e304='Human resources assistants, except payroll and timekeeping'
B24122e305='Receptionists and information clerks'
B24122e306='Reservation and transportation ticket agents and travel clerks'
B24122e307='Information and record clerks, all other'
B24122e308='Cargo and freight agents'
B24122e309='Couriers and messengers'
B24122e310='Dispatchers'
B24122e311='Meter readers, utilities'
B24122e312='Postal service clerks'
B24122e313='Postal service mail carriers'
B24122e314='Postal service mail sorters, processors, and processing machine operators'
B24122e315='Production, planning, and expediting clerks'
B24122e316='Shipping, receiving, and traffic clerks'
B24122e317='Stock clerks and order fillers'
B24122e318='Weighers, measurers, checkers, and samplers, recordkeeping'
B24122e319='Secretaries and administrative assistants'
B24122e320='Computer operators'
B24122e321='Data entry keyers'
B24122e322='Word processors and typists'
B24122e323='Desktop publishers'
B24122e324='Insurance claims and policy processing clerks'
B24122e325='Mail clerks and mail machine operators, except postal service'
B24122e326='Office clerks, general'
B24122e327='Office machine operators, except computer'
B24122e328='Proofreaders and copy markers'
B24122e329='Statistical assistants'
B24122e330='Office and administrative support workers, all other'
B24122e331='First-line supervisors of farming, fishing, and forestry workers'
B24122e332='Agricultural inspectors'
B24122e333='Animal breeders'
B24122e334='Graders and sorters, agricultural products'
B24122e335='Miscellaneous agricultural workers'
B24122e336='Fishing and hunting workers'
B24122e337='Forest and conservation workers'
B24122e338='Logging workers'
B24122e339='First-line supervisors of construction trades and extraction workers'
B24122e340='Boilermakers'
B24122e341='Brickmasons, blockmasons, and stonemasons'
B24122e342='Carpenters'
B24122e343='Carpet, floor, and tile installers and finishers'
B24122e344='Cement masons, concrete finishers, and terrazzo workers'
B24122e345='Construction laborers'
B24122e346='Paving, surfacing, and tamping equipment operators'
B24122e347='Operating engineers and other construction equipment operators, including pile-driver operators'
B24122e348='Drywall installers, ceiling tile installers, and tapers'
B24122e349='Electricians'
B24122e350='Glaziers'
B24122e351='Insulation workers'
B24122e352='Painters, construction and maintenance'
B24122e353='Paperhangers'
B24122e354='Pipelayers, plumbers, pipefitters, and steamfitters'
B24122e355='Plasterers and stucco masons'
B24122e356='Reinforcing iron and rebar workers'
B24122e357='Roofers'
B24122e358='Sheet metal workers'
B24122e359='Structural iron and steel workers'
B24122e360='Helpers, construction trades'
B24122e361='Construction and building inspectors'
B24122e362='Elevator installers and repairers'
B24122e363='Fence erectors'
B24122e364='Hazardous materials removal workers'
B24122e365='Highway maintenance workers'
B24122e366='Rail-track laying and maintenance equipment operators'
B24122e367='Septic tank servicers and sewer pipe cleaners'
B24122e368='Miscellaneous construction and related workers, including solar photovoltaic installers'
B24122e369='Derrick, rotary drill, and service unit operators, oil, gas, and mining'
B24122e370='Earth drillers, except oil and gas'
B24122e371='Explosives workers, ordnance handling experts, and blasters'
B24122e372='Mining machine operators'
B24122e373='Roof bolters, mining'
B24122e374='Roustabouts, oil and gas'
B24122e375='Helpers--extraction workers'
B24122e376='Other extraction workers'
B24122e377='First-line supervisors of mechanics, installers, and repairers'
B24122e378='Computer, automated teller, and office machine repairers'
B24122e379='Radio and telecommunications equipment installers and repairers'
B24122e380='Avionics technicians'
B24122e381='Electric motor, power tool, and related repairers'
B24122e382='Electrical and electronics installers and repairers, transportation equipment'
B24122e383='Electrical and electronics repairers, industrial and utility'
B24122e384='Electronic equipment installers and repairers, motor vehicles'
B24122e385='Electronic home entertainment equipment installers and repairers'
B24122e386='Security and fire alarm systems installers'
B24122e387='Aircraft mechanics and service technicians'
B24122e388='Automotive body and related repairers'
B24122e389='Automotive glass installers and repairers'
B24122e390='Automotive service technicians and mechanics'
B24122e391='Bus and truck mechanics and diesel engine specialists'
B24122e392='Heavy vehicle and mobile equipment service technicians and mechanics'
B24122e393='Small engine mechanics'
B24122e394='Miscellaneous vehicle and mobile equipment mechanics, installers, and repairers'
B24122e395='Control and valve installers and repairers'
B24122e396='Heating, air conditioning, and refrigeration mechanics and installers'
B24122e397='Home appliance repairers'
B24122e398='Industrial and refractory machinery mechanics'
B24122e399='Maintenance and repair workers, general'
B24122e400='Maintenance workers, machinery'
B24122e401='Millwrights'
B24122e402='Electrical power-line installers and repairers'
B24122e403='Telecommunications line installers and repairers'
B24122e404='Precision instrument and equipment repairers'
B24122e405='Coin, vending, and amusement machine servicers and repairers'
B24122e406='Commercial divers'
B24122e407='Locksmiths and safe repairers'
B24122e408='Manufactured building and mobile home installers'
B24122e409='Riggers'
B24122e410='Signal and track switch repairers'
B24122e411='Helpers--installation, maintenance, and repair workers'
B24122e412='Other installation, maintenance, and repair workers, including wind turbine service technicians'
B24122e413='First-line supervisors of production and operating workers'
B24122e414='Aircraft structure, surfaces, rigging, and systems assemblers'
B24122e415='Electrical, electronics, and electromechanical assemblers'
B24122e416='Engine and other machine assemblers'
B24122e417='Structural metal fabricators and fitters'
B24122e418='Miscellaneous assemblers and fabricators'
B24122e419='Bakers'
B24122e420='Butchers and other meat, poultry, and fish processing workers'
B24122e421='Food and tobacco roasting, baking, and drying machine operators and tenders'
B24122e422='Food batchmakers'
B24122e423='Food cooking machine operators and tenders'
B24122e424='Food processing workers, all other'
B24122e425='Computer control programmers and operators'
B24122e426='Extruding and drawing machine setters, operators, and tenders, metal and plastic'
B24122e427='Forging machine setters, operators, and tenders, metal and plastic'
B24122e428='Rolling machine setters, operators, and tenders, metal and plastic'
B24122e429='Cutting, punching, and press machine setters, operators, and tenders, metal and plastic'
B24122e430='Drilling and boring machine tool setters, operators, and tenders, metal and plastic'
B24122e431='Grinding, lapping, polishing, and buffing machine tool setters, operators, and tenders, metal and plastic'
B24122e432='Lathe and turning machine tool setters, operators, and tenders, metal and plastic'
B24122e433='Milling and planing machine setters, operators, and tenders, metal and plastic'
B24122e434='Machinists'
B24122e435='Metal furnace operators, tenders, pourers, and casters'
B24122e436='Model makers and patternmakers, metal and plastic'
B24122e437='Molders and molding machine setters, operators, and tenders, metal and plastic'
B24122e438='Multiple machine tool setters, operators, and tenders, metal and plastic'
B24122e439='Tool and die makers'
B24122e440='Welding, soldering, and brazing workers'
B24122e441='Heat treating equipment setters, operators, and tenders, metal and plastic'
B24122e442='Layout workers, metal and plastic'
B24122e443='Plating and coating machine setters, operators, and tenders, metal and plastic'
B24122e444='Tool grinders, filers, and sharpeners'
B24122e445='Metal workers and plastic workers, all other'
B24122e446='Prepress technicians and workers'
B24122e447='Printing workers, except prepress technicians and workers'
B24122e448='Laundry and dry-cleaning workers'
B24122e449='Pressers, textile, garment, and related materials'
B24122e450='Sewing machine operators'
B24122e451='Shoe and leather workers and repairers'
B24122e452='Shoe machine operators and tenders'
B24122e453='Tailors, dressmakers, and sewers'
B24122e454='Textile bleaching and dyeing machine operators and tenders'
B24122e455='Textile cutting machine setters, operators, and tenders'
B24122e456='Textile knitting and weaving machine setters, operators, and tenders'
B24122e457='Textile winding, twisting, and drawing out machine setters, operators, and tenders'
B24122e458='Fabric and apparel patternmakers'
B24122e459='Upholsterers'
B24122e460='Miscellaneous textile, apparel, and furnishings workers, including extruding and forming machine setters, operators, and tenders, synthetic and glass fibers'
B24122e461='Cabinetmakers and bench carpenters'
B24122e462='Furniture finishers'
B24122e463='Sawing machine setters, operators, and tenders, wood'
B24122e464='Woodworking machine setters, operators, and tenders, except sawing'
B24122e465='Miscellaneous woodworkers, including model makers and patternmakers'
B24122e466='Power plant operators, distributors, and dispatchers'
B24122e467='Stationary engineers and boiler operators'
B24122e468='Water and wastewater treatment plant and system operators'
B24122e469='Miscellaneous plant and system operators'
B24122e470='Chemical processing machine setters, operators, and tenders'
B24122e471='Crushing, grinding, polishing, mixing, and blending workers'
B24122e472='Cutting workers'
B24122e473='Extruding, forming, pressing, and compacting machine setters, operators, and tenders'
B24122e474='Furnace, kiln, oven, drier, and kettle operators and tenders'
B24122e475='Inspectors, testers, sorters, samplers, and weighers'
B24122e476='Jewelers and precious stone and metal workers'
B24122e477='Medical, dental, and ophthalmic laboratory technicians'
B24122e478='Packaging and filling machine operators and tenders'
B24122e479='Painting workers'
B24122e480='Photographic process workers and processing machine operators'
B24122e481='Semiconductor processors'
B24122e482='Adhesive bonding machine operators and tenders'
B24122e483='Cleaning, washing, and metal pickling equipment operators and tenders'
B24122e484='Cooling and freezing equipment operators and tenders'
B24122e485='Etchers and engravers'
B24122e486='Molders, shapers, and casters, except metal and plastic'
B24122e487='Paper goods machine setters, operators, and tenders'
B24122e488='Tire builders'
B24122e489='Helpers--production workers'
B24122e490='Production workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24122e246
B24122e247
B24122e248
B24122e249
B24122e250
B24122e251
B24122e252
B24122e253
B24122e254
B24122e255
B24122e256
B24122e257
B24122e258
B24122e259
B24122e260
B24122e261
B24122e262
B24122e263
B24122e264
B24122e265
B24122e266
B24122e267
B24122e268
B24122e269
B24122e270
B24122e271
B24122e272
B24122e273
B24122e274
B24122e275
B24122e276
B24122e277
B24122e278
B24122e279
B24122e280
B24122e281
B24122e282
B24122e283
B24122e284
B24122e285
B24122e286
B24122e287
B24122e288
B24122e289
B24122e290
B24122e291
B24122e292
B24122e293
B24122e294
B24122e295
B24122e296
B24122e297
B24122e298
B24122e299
B24122e300
B24122e301
B24122e302
B24122e303
B24122e304
B24122e305
B24122e306
B24122e307
B24122e308
B24122e309
B24122e310
B24122e311
B24122e312
B24122e313
B24122e314
B24122e315
B24122e316
B24122e317
B24122e318
B24122e319
B24122e320
B24122e321
B24122e322
B24122e323
B24122e324
B24122e325
B24122e326
B24122e327
B24122e328
B24122e329
B24122e330
B24122e331
B24122e332
B24122e333
B24122e334
B24122e335
B24122e336
B24122e337
B24122e338
B24122e339
B24122e340
B24122e341
B24122e342
B24122e343
B24122e344
B24122e345
B24122e346
B24122e347
B24122e348
B24122e349
B24122e350
B24122e351
B24122e352
B24122e353
B24122e354
B24122e355
B24122e356
B24122e357
B24122e358
B24122e359
B24122e360
B24122e361
B24122e362
B24122e363
B24122e364
B24122e365
B24122e366
B24122e367
B24122e368
B24122e369
B24122e370
B24122e371
B24122e372
B24122e373
B24122e374
B24122e375
B24122e376
B24122e377
B24122e378
B24122e379
B24122e380
B24122e381
B24122e382
B24122e383
B24122e384
B24122e385
B24122e386
B24122e387
B24122e388
B24122e389
B24122e390
B24122e391
B24122e392
B24122e393
B24122e394
B24122e395
B24122e396
B24122e397
B24122e398
B24122e399
B24122e400
B24122e401
B24122e402
B24122e403
B24122e404
B24122e405
B24122e406
B24122e407
B24122e408
B24122e409
B24122e410
B24122e411
B24122e412
B24122e413
B24122e414
B24122e415
B24122e416
B24122e417
B24122e418
B24122e419
B24122e420
B24122e421
B24122e422
B24122e423
B24122e424
B24122e425
B24122e426
B24122e427
B24122e428
B24122e429
B24122e430
B24122e431
B24122e432
B24122e433
B24122e434
B24122e435
B24122e436
B24122e437
B24122e438
B24122e439
B24122e440
B24122e441
B24122e442
B24122e443
B24122e444
B24122e445
B24122e446
B24122e447
B24122e448
B24122e449
B24122e450
B24122e451
B24122e452
B24122e453
B24122e454
B24122e455
B24122e456
B24122e457
B24122e458
B24122e459
B24122e460
B24122e461
B24122e462
B24122e463
B24122e464
B24122e465
B24122e466
B24122e467
B24122e468
B24122e469
B24122e470
B24122e471
B24122e472
B24122e473
B24122e474
B24122e475
B24122e476
B24122e477
B24122e478
B24122e479
B24122e480
B24122e481
B24122e482
B24122e483
B24122e484
B24122e485
B24122e486
B24122e487
B24122e488
B24122e489
B24122e490
;
RUN;
TITLE2;
