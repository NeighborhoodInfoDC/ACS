TITLE2 "e20125dc0085000";
DATA work.SFe0085dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0085000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over with earnings */
B24121e246='Motion picture projectionists'
B24121e247='Ushers, lobby attendants, and ticket takers'
B24121e248='Miscellaneous entertainment attendants and related workers'
B24121e249='Embalmers and funeral attendants'
B24121e250='Morticians, undertakers, and funeral directors'
B24121e251='Barbers'
B24121e252='Hairdressers, hairstylists, and cosmetologists'
B24121e253='Miscellaneous personal appearance workers'
B24121e254='Baggage porters, bellhops, and concierges'
B24121e255='Tour and travel guides'
B24121e256='Childcare workers'
B24121e257='Personal care aides'
B24121e258='Recreation and fitness workers'
B24121e259='Residential advisors'
B24121e260='Personal care and service workers, all other'
B24121e261='First-line supervisors of retail sales workers'
B24121e262='First-line supervisors of non-retail sales workers'
B24121e263='Cashiers'
B24121e264='Counter and rental clerks'
B24121e265='Parts salespersons'
B24121e266='Retail salespersons'
B24121e267='Advertising sales agents'
B24121e268='Insurance sales agents'
B24121e269='Securities, commodities, and financial services sales agents'
B24121e270='Travel agents'
B24121e271='Sales representatives, services, all other'
B24121e272='Sales representatives, wholesale and manufacturing'
B24121e273='Models, demonstrators, and product promoters'
B24121e274='Real estate brokers and sales agents'
B24121e275='Sales engineers'
B24121e276='Telemarketers'
B24121e277='Door-to-door sales workers, news and street vendors, and related workers'
B24121e278='Sales and related workers, all other'
B24121e279='First-line supervisors of office and administrative support workers'
B24121e280='Switchboard operators, including answering service'
B24121e281='Telephone operators'
B24121e282='Communications equipment operators, all other'
B24121e283='Bill and account collectors'
B24121e284='Billing and posting clerks'
B24121e285='Bookkeeping, accounting, and auditing clerks'
B24121e286='Gaming cage workers'
B24121e287='Payroll and timekeeping clerks'
B24121e288='Procurement clerks'
B24121e289='Tellers'
B24121e290='Financial clerks, all other'
B24121e291='Brokerage clerks'
B24121e292='Correspondence clerks'
B24121e293='Court, municipal, and license clerks'
B24121e294='Credit authorizers, checkers, and clerks'
B24121e295='Customer service representatives'
B24121e296='Eligibility interviewers, government programs'
B24121e297='File clerks'
B24121e298='Hotel, motel, and resort desk clerks'
B24121e299='Interviewers, except eligibility and loan'
B24121e300='Library assistants, clerical'
B24121e301='Loan interviewers and clerks'
B24121e302='New accounts clerks'
B24121e303='Order clerks'
B24121e304='Human resources assistants, except payroll and timekeeping'
B24121e305='Receptionists and information clerks'
B24121e306='Reservation and transportation ticket agents and travel clerks'
B24121e307='Information and record clerks, all other'
B24121e308='Cargo and freight agents'
B24121e309='Couriers and messengers'
B24121e310='Dispatchers'
B24121e311='Meter readers, utilities'
B24121e312='Postal service clerks'
B24121e313='Postal service mail carriers'
B24121e314='Postal service mail sorters, processors, and processing machine operators'
B24121e315='Production, planning, and expediting clerks'
B24121e316='Shipping, receiving, and traffic clerks'
B24121e317='Stock clerks and order fillers'
B24121e318='Weighers, measurers, checkers, and samplers, recordkeeping'
B24121e319='Secretaries and administrative assistants'
B24121e320='Computer operators'
B24121e321='Data entry keyers'
B24121e322='Word processors and typists'
B24121e323='Desktop publishers'
B24121e324='Insurance claims and policy processing clerks'
B24121e325='Mail clerks and mail machine operators, except postal service'
B24121e326='Office clerks, general'
B24121e327='Office machine operators, except computer'
B24121e328='Proofreaders and copy markers'
B24121e329='Statistical assistants'
B24121e330='Office and administrative support workers, all other'
B24121e331='First-line supervisors of farming, fishing, and forestry workers'
B24121e332='Agricultural inspectors'
B24121e333='Animal breeders'
B24121e334='Graders and sorters, agricultural products'
B24121e335='Miscellaneous agricultural workers'
B24121e336='Fishing and hunting workers'
B24121e337='Forest and conservation workers'
B24121e338='Logging workers'
B24121e339='First-line supervisors of construction trades and extraction workers'
B24121e340='Boilermakers'
B24121e341='Brickmasons, blockmasons, and stonemasons'
B24121e342='Carpenters'
B24121e343='Carpet, floor, and tile installers and finishers'
B24121e344='Cement masons, concrete finishers, and terrazzo workers'
B24121e345='Construction laborers'
B24121e346='Paving, surfacing, and tamping equipment operators'
B24121e347='Operating engineers and other construction equipment operators, including pile-driver operators'
B24121e348='Drywall installers, ceiling tile installers, and tapers'
B24121e349='Electricians'
B24121e350='Glaziers'
B24121e351='Insulation workers'
B24121e352='Painters, construction and maintenance'
B24121e353='Paperhangers'
B24121e354='Pipelayers, plumbers, pipefitters, and steamfitters'
B24121e355='Plasterers and stucco masons'
B24121e356='Reinforcing iron and rebar workers'
B24121e357='Roofers'
B24121e358='Sheet metal workers'
B24121e359='Structural iron and steel workers'
B24121e360='Helpers, construction trades'
B24121e361='Construction and building inspectors'
B24121e362='Elevator installers and repairers'
B24121e363='Fence erectors'
B24121e364='Hazardous materials removal workers'
B24121e365='Highway maintenance workers'
B24121e366='Rail-track laying and maintenance equipment operators'
B24121e367='Septic tank servicers and sewer pipe cleaners'
B24121e368='Miscellaneous construction and related workers, including solar photovoltaic installers'
B24121e369='Derrick, rotary drill, and service unit operators, oil, gas, and mining'
B24121e370='Earth drillers, except oil and gas'
B24121e371='Explosives workers, ordnance handling experts, and blasters'
B24121e372='Mining machine operators'
B24121e373='Roof bolters, mining'
B24121e374='Roustabouts, oil and gas'
B24121e375='Helpers--extraction workers'
B24121e376='Other extraction workers'
B24121e377='First-line supervisors of mechanics, installers, and repairers'
B24121e378='Computer, automated teller, and office machine repairers'
B24121e379='Radio and telecommunications equipment installers and repairers'
B24121e380='Avionics technicians'
B24121e381='Electric motor, power tool, and related repairers'
B24121e382='Electrical and electronics installers and repairers, transportation equipment'
B24121e383='Electrical and electronics repairers, industrial and utility'
B24121e384='Electronic equipment installers and repairers, motor vehicles'
B24121e385='Electronic home entertainment equipment installers and repairers'
B24121e386='Security and fire alarm systems installers'
B24121e387='Aircraft mechanics and service technicians'
B24121e388='Automotive body and related repairers'
B24121e389='Automotive glass installers and repairers'
B24121e390='Automotive service technicians and mechanics'
B24121e391='Bus and truck mechanics and diesel engine specialists'
B24121e392='Heavy vehicle and mobile equipment service technicians and mechanics'
B24121e393='Small engine mechanics'
B24121e394='Miscellaneous vehicle and mobile equipment mechanics, installers, and repairers'
B24121e395='Control and valve installers and repairers'
B24121e396='Heating, air conditioning, and refrigeration mechanics and installers'
B24121e397='Home appliance repairers'
B24121e398='Industrial and refractory machinery mechanics'
B24121e399='Maintenance and repair workers, general'
B24121e400='Maintenance workers, machinery'
B24121e401='Millwrights'
B24121e402='Electrical power-line installers and repairers'
B24121e403='Telecommunications line installers and repairers'
B24121e404='Precision instrument and equipment repairers'
B24121e405='Coin, vending, and amusement machine servicers and repairers'
B24121e406='Commercial divers'
B24121e407='Locksmiths and safe repairers'
B24121e408='Manufactured building and mobile home installers'
B24121e409='Riggers'
B24121e410='Signal and track switch repairers'
B24121e411='Helpers--installation, maintenance, and repair workers'
B24121e412='Other installation, maintenance, and repair workers, including wind turbine service technicians'
B24121e413='First-line supervisors of production and operating workers'
B24121e414='Aircraft structure, surfaces, rigging, and systems assemblers'
B24121e415='Electrical, electronics, and electromechanical assemblers'
B24121e416='Engine and other machine assemblers'
B24121e417='Structural metal fabricators and fitters'
B24121e418='Miscellaneous assemblers and fabricators'
B24121e419='Bakers'
B24121e420='Butchers and other meat, poultry, and fish processing workers'
B24121e421='Food and tobacco roasting, baking, and drying machine operators and tenders'
B24121e422='Food batchmakers'
B24121e423='Food cooking machine operators and tenders'
B24121e424='Food processing workers, all other'
B24121e425='Computer control programmers and operators'
B24121e426='Extruding and drawing machine setters, operators, and tenders, metal and plastic'
B24121e427='Forging machine setters, operators, and tenders, metal and plastic'
B24121e428='Rolling machine setters, operators, and tenders, metal and plastic'
B24121e429='Cutting, punching, and press machine setters, operators, and tenders, metal and plastic'
B24121e430='Drilling and boring machine tool setters, operators, and tenders, metal and plastic'
B24121e431='Grinding, lapping, polishing, and buffing machine tool setters, operators, and tenders, metal and plastic'
B24121e432='Lathe and turning machine tool setters, operators, and tenders, metal and plastic'
B24121e433='Milling and planing machine setters, operators, and tenders, metal and plastic'
B24121e434='Machinists'
B24121e435='Metal furnace operators, tenders, pourers, and casters'
B24121e436='Model makers and patternmakers, metal and plastic'
B24121e437='Molders and molding machine setters, operators, and tenders, metal and plastic'
B24121e438='Multiple machine tool setters, operators, and tenders, metal and plastic'
B24121e439='Tool and die makers'
B24121e440='Welding, soldering, and brazing workers'
B24121e441='Heat treating equipment setters, operators, and tenders, metal and plastic'
B24121e442='Layout workers, metal and plastic'
B24121e443='Plating and coating machine setters, operators, and tenders, metal and plastic'
B24121e444='Tool grinders, filers, and sharpeners'
B24121e445='Metal workers and plastic workers, all other'
B24121e446='Prepress technicians and workers'
B24121e447='Printing workers, except prepress technicians and workers'
B24121e448='Laundry and dry-cleaning workers'
B24121e449='Pressers, textile, garment, and related materials'
B24121e450='Sewing machine operators'
B24121e451='Shoe and leather workers and repairers'
B24121e452='Shoe machine operators and tenders'
B24121e453='Tailors, dressmakers, and sewers'
B24121e454='Textile bleaching and dyeing machine operators and tenders'
B24121e455='Textile cutting machine setters, operators, and tenders'
B24121e456='Textile knitting and weaving machine setters, operators, and tenders'
B24121e457='Textile winding, twisting, and drawing out machine setters, operators, and tenders'
B24121e458='Fabric and apparel patternmakers'
B24121e459='Upholsterers'
B24121e460='Miscellaneous textile, apparel, and furnishings workers, including extruding and forming machine setters, operators, and tenders, synthetic and glass fibers'
B24121e461='Cabinetmakers and bench carpenters'
B24121e462='Furniture finishers'
B24121e463='Sawing machine setters, operators, and tenders, wood'
B24121e464='Woodworking machine setters, operators, and tenders, except sawing'
B24121e465='Miscellaneous woodworkers, including model makers and patternmakers'
B24121e466='Power plant operators, distributors, and dispatchers'
B24121e467='Stationary engineers and boiler operators'
B24121e468='Water and wastewater treatment plant and system operators'
B24121e469='Miscellaneous plant and system operators'
B24121e470='Chemical processing machine setters, operators, and tenders'
B24121e471='Crushing, grinding, polishing, mixing, and blending workers'
B24121e472='Cutting workers'
B24121e473='Extruding, forming, pressing, and compacting machine setters, operators, and tenders'
B24121e474='Furnace, kiln, oven, drier, and kettle operators and tenders'
B24121e475='Inspectors, testers, sorters, samplers, and weighers'
B24121e476='Jewelers and precious stone and metal workers'
B24121e477='Medical, dental, and ophthalmic laboratory technicians'
B24121e478='Packaging and filling machine operators and tenders'
B24121e479='Painting workers'
B24121e480='Photographic process workers and processing machine operators'
B24121e481='Semiconductor processors'
B24121e482='Adhesive bonding machine operators and tenders'
B24121e483='Cleaning, washing, and metal pickling equipment operators and tenders'
B24121e484='Cooling and freezing equipment operators and tenders'
B24121e485='Etchers and engravers'
B24121e486='Molders, shapers, and casters, except metal and plastic'
B24121e487='Paper goods machine setters, operators, and tenders'
B24121e488='Tire builders'
B24121e489='Helpers--production workers'
B24121e490='Production workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24121e246
B24121e247
B24121e248
B24121e249
B24121e250
B24121e251
B24121e252
B24121e253
B24121e254
B24121e255
B24121e256
B24121e257
B24121e258
B24121e259
B24121e260
B24121e261
B24121e262
B24121e263
B24121e264
B24121e265
B24121e266
B24121e267
B24121e268
B24121e269
B24121e270
B24121e271
B24121e272
B24121e273
B24121e274
B24121e275
B24121e276
B24121e277
B24121e278
B24121e279
B24121e280
B24121e281
B24121e282
B24121e283
B24121e284
B24121e285
B24121e286
B24121e287
B24121e288
B24121e289
B24121e290
B24121e291
B24121e292
B24121e293
B24121e294
B24121e295
B24121e296
B24121e297
B24121e298
B24121e299
B24121e300
B24121e301
B24121e302
B24121e303
B24121e304
B24121e305
B24121e306
B24121e307
B24121e308
B24121e309
B24121e310
B24121e311
B24121e312
B24121e313
B24121e314
B24121e315
B24121e316
B24121e317
B24121e318
B24121e319
B24121e320
B24121e321
B24121e322
B24121e323
B24121e324
B24121e325
B24121e326
B24121e327
B24121e328
B24121e329
B24121e330
B24121e331
B24121e332
B24121e333
B24121e334
B24121e335
B24121e336
B24121e337
B24121e338
B24121e339
B24121e340
B24121e341
B24121e342
B24121e343
B24121e344
B24121e345
B24121e346
B24121e347
B24121e348
B24121e349
B24121e350
B24121e351
B24121e352
B24121e353
B24121e354
B24121e355
B24121e356
B24121e357
B24121e358
B24121e359
B24121e360
B24121e361
B24121e362
B24121e363
B24121e364
B24121e365
B24121e366
B24121e367
B24121e368
B24121e369
B24121e370
B24121e371
B24121e372
B24121e373
B24121e374
B24121e375
B24121e376
B24121e377
B24121e378
B24121e379
B24121e380
B24121e381
B24121e382
B24121e383
B24121e384
B24121e385
B24121e386
B24121e387
B24121e388
B24121e389
B24121e390
B24121e391
B24121e392
B24121e393
B24121e394
B24121e395
B24121e396
B24121e397
B24121e398
B24121e399
B24121e400
B24121e401
B24121e402
B24121e403
B24121e404
B24121e405
B24121e406
B24121e407
B24121e408
B24121e409
B24121e410
B24121e411
B24121e412
B24121e413
B24121e414
B24121e415
B24121e416
B24121e417
B24121e418
B24121e419
B24121e420
B24121e421
B24121e422
B24121e423
B24121e424
B24121e425
B24121e426
B24121e427
B24121e428
B24121e429
B24121e430
B24121e431
B24121e432
B24121e433
B24121e434
B24121e435
B24121e436
B24121e437
B24121e438
B24121e439
B24121e440
B24121e441
B24121e442
B24121e443
B24121e444
B24121e445
B24121e446
B24121e447
B24121e448
B24121e449
B24121e450
B24121e451
B24121e452
B24121e453
B24121e454
B24121e455
B24121e456
B24121e457
B24121e458
B24121e459
B24121e460
B24121e461
B24121e462
B24121e463
B24121e464
B24121e465
B24121e466
B24121e467
B24121e468
B24121e469
B24121e470
B24121e471
B24121e472
B24121e473
B24121e474
B24121e475
B24121e476
B24121e477
B24121e478
B24121e479
B24121e480
B24121e481
B24121e482
B24121e483
B24121e484
B24121e485
B24121e486
B24121e487
B24121e488
B24121e489
B24121e490
;
RUN;
TITLE2;
