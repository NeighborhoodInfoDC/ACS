TITLE2 "e20125dc0097000";
DATA work.SFe0097dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0097000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED MALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed male population 16 years and over */
B24125e246='Motion picture projectionists'
B24125e247='Ushers, lobby attendants, and ticket takers'
B24125e248='Miscellaneous entertainment attendants and related workers'
B24125e249='Embalmers and funeral attendants'
B24125e250='Morticians, undertakers, and funeral directors'
B24125e251='Barbers'
B24125e252='Hairdressers, hairstylists, and cosmetologists'
B24125e253='Miscellaneous personal appearance workers'
B24125e254='Baggage porters, bellhops, and concierges'
B24125e255='Tour and travel guides'
B24125e256='Childcare workers'
B24125e257='Personal care aides'
B24125e258='Recreation and fitness workers'
B24125e259='Residential advisors'
B24125e260='Personal care and service workers, all other'
B24125e261='First-line supervisors of retail sales workers'
B24125e262='First-line supervisors of non-retail sales workers'
B24125e263='Cashiers'
B24125e264='Counter and rental clerks'
B24125e265='Parts salespersons'
B24125e266='Retail salespersons'
B24125e267='Advertising sales agents'
B24125e268='Insurance sales agents'
B24125e269='Securities, commodities, and financial services sales agents'
B24125e270='Travel agents'
B24125e271='Sales representatives, services, all other'
B24125e272='Sales representatives, wholesale and manufacturing'
B24125e273='Models, demonstrators, and product promoters'
B24125e274='Real estate brokers and sales agents'
B24125e275='Sales engineers'
B24125e276='Telemarketers'
B24125e277='Door-to-door sales workers, news and street vendors, and related workers'
B24125e278='Sales and related workers, all other'
B24125e279='First-line supervisors of office and administrative support workers'
B24125e280='Switchboard operators, including answering service'
B24125e281='Telephone operators'
B24125e282='Communications equipment operators, all other'
B24125e283='Bill and account collectors'
B24125e284='Billing and posting clerks'
B24125e285='Bookkeeping, accounting, and auditing clerks'
B24125e286='Gaming cage workers'
B24125e287='Payroll and timekeeping clerks'
B24125e288='Procurement clerks'
B24125e289='Tellers'
B24125e290='Financial clerks, all other'
B24125e291='Brokerage clerks'
B24125e292='Correspondence clerks'
B24125e293='Court, municipal, and license clerks'
B24125e294='Credit authorizers, checkers, and clerks'
B24125e295='Customer service representatives'
B24125e296='Eligibility interviewers, government programs'
B24125e297='File clerks'
B24125e298='Hotel, motel, and resort desk clerks'
B24125e299='Interviewers, except eligibility and loan'
B24125e300='Library assistants, clerical'
B24125e301='Loan interviewers and clerks'
B24125e302='New accounts clerks'
B24125e303='Order clerks'
B24125e304='Human resources assistants, except payroll and timekeeping'
B24125e305='Receptionists and information clerks'
B24125e306='Reservation and transportation ticket agents and travel clerks'
B24125e307='Information and record clerks, all other'
B24125e308='Cargo and freight agents'
B24125e309='Couriers and messengers'
B24125e310='Dispatchers'
B24125e311='Meter readers, utilities'
B24125e312='Postal service clerks'
B24125e313='Postal service mail carriers'
B24125e314='Postal service mail sorters, processors, and processing machine operators'
B24125e315='Production, planning, and expediting clerks'
B24125e316='Shipping, receiving, and traffic clerks'
B24125e317='Stock clerks and order fillers'
B24125e318='Weighers, measurers, checkers, and samplers, recordkeeping'
B24125e319='Secretaries and administrative assistants'
B24125e320='Computer operators'
B24125e321='Data entry keyers'
B24125e322='Word processors and typists'
B24125e323='Desktop publishers'
B24125e324='Insurance claims and policy processing clerks'
B24125e325='Mail clerks and mail machine operators, except postal service'
B24125e326='Office clerks, general'
B24125e327='Office machine operators, except computer'
B24125e328='Proofreaders and copy markers'
B24125e329='Statistical assistants'
B24125e330='Office and administrative support workers, all other'
B24125e331='First-line supervisors of farming, fishing, and forestry workers'
B24125e332='Agricultural inspectors'
B24125e333='Animal breeders'
B24125e334='Graders and sorters, agricultural products'
B24125e335='Miscellaneous agricultural workers'
B24125e336='Fishing and hunting workers'
B24125e337='Forest and conservation workers'
B24125e338='Logging workers'
B24125e339='First-line supervisors of construction trades and extraction workers'
B24125e340='Boilermakers'
B24125e341='Brickmasons, blockmasons, and stonemasons'
B24125e342='Carpenters'
B24125e343='Carpet, floor, and tile installers and finishers'
B24125e344='Cement masons, concrete finishers, and terrazzo workers'
B24125e345='Construction laborers'
B24125e346='Paving, surfacing, and tamping equipment operators'
B24125e347='Operating engineers and other construction equipment operators, including pile-driver operators'
B24125e348='Drywall installers, ceiling tile installers, and tapers'
B24125e349='Electricians'
B24125e350='Glaziers'
B24125e351='Insulation workers'
B24125e352='Painters, construction and maintenance'
B24125e353='Paperhangers'
B24125e354='Pipelayers, plumbers, pipefitters, and steamfitters'
B24125e355='Plasterers and stucco masons'
B24125e356='Reinforcing iron and rebar workers'
B24125e357='Roofers'
B24125e358='Sheet metal workers'
B24125e359='Structural iron and steel workers'
B24125e360='Helpers, construction trades'
B24125e361='Construction and building inspectors'
B24125e362='Elevator installers and repairers'
B24125e363='Fence erectors'
B24125e364='Hazardous materials removal workers'
B24125e365='Highway maintenance workers'
B24125e366='Rail-track laying and maintenance equipment operators'
B24125e367='Septic tank servicers and sewer pipe cleaners'
B24125e368='Miscellaneous construction and related workers, including solar photovoltaic installers'
B24125e369='Derrick, rotary drill, and service unit operators, oil, gas, and mining'
B24125e370='Earth drillers, except oil and gas'
B24125e371='Explosives workers, ordnance handling experts, and blasters'
B24125e372='Mining machine operators'
B24125e373='Roof bolters, mining'
B24125e374='Roustabouts, oil and gas'
B24125e375='Helpers--extraction workers'
B24125e376='Other extraction workers'
B24125e377='First-line supervisors of mechanics, installers, and repairers'
B24125e378='Computer, automated teller, and office machine repairers'
B24125e379='Radio and telecommunications equipment installers and repairers'
B24125e380='Avionics technicians'
B24125e381='Electric motor, power tool, and related repairers'
B24125e382='Electrical and electronics installers and repairers, transportation equipment'
B24125e383='Electrical and electronics repairers, industrial and utility'
B24125e384='Electronic equipment installers and repairers, motor vehicles'
B24125e385='Electronic home entertainment equipment installers and repairers'
B24125e386='Security and fire alarm systems installers'
B24125e387='Aircraft mechanics and service technicians'
B24125e388='Automotive body and related repairers'
B24125e389='Automotive glass installers and repairers'
B24125e390='Automotive service technicians and mechanics'
B24125e391='Bus and truck mechanics and diesel engine specialists'
B24125e392='Heavy vehicle and mobile equipment service technicians and mechanics'
B24125e393='Small engine mechanics'
B24125e394='Miscellaneous vehicle and mobile equipment mechanics, installers, and repairers'
B24125e395='Control and valve installers and repairers'
B24125e396='Heating, air conditioning, and refrigeration mechanics and installers'
B24125e397='Home appliance repairers'
B24125e398='Industrial and refractory machinery mechanics'
B24125e399='Maintenance and repair workers, general'
B24125e400='Maintenance workers, machinery'
B24125e401='Millwrights'
B24125e402='Electrical power-line installers and repairers'
B24125e403='Telecommunications line installers and repairers'
B24125e404='Precision instrument and equipment repairers'
B24125e405='Coin, vending, and amusement machine servicers and repairers'
B24125e406='Commercial divers'
B24125e407='Locksmiths and safe repairers'
B24125e408='Manufactured building and mobile home installers'
B24125e409='Riggers'
B24125e410='Signal and track switch repairers'
B24125e411='Helpers--installation, maintenance, and repair workers'
B24125e412='Other installation, maintenance, and repair workers, including wind turbine service technicians'
B24125e413='First-line supervisors of production and operating workers'
B24125e414='Aircraft structure, surfaces, rigging, and systems assemblers'
B24125e415='Electrical, electronics, and electromechanical assemblers'
B24125e416='Engine and other machine assemblers'
B24125e417='Structural metal fabricators and fitters'
B24125e418='Miscellaneous assemblers and fabricators'
B24125e419='Bakers'
B24125e420='Butchers and other meat, poultry, and fish processing workers'
B24125e421='Food and tobacco roasting, baking, and drying machine operators and tenders'
B24125e422='Food batchmakers'
B24125e423='Food cooking machine operators and tenders'
B24125e424='Food processing workers, all other'
B24125e425='Computer control programmers and operators'
B24125e426='Extruding and drawing machine setters, operators, and tenders, metal and plastic'
B24125e427='Forging machine setters, operators, and tenders, metal and plastic'
B24125e428='Rolling machine setters, operators, and tenders, metal and plastic'
B24125e429='Cutting, punching, and press machine setters, operators, and tenders, metal and plastic'
B24125e430='Drilling and boring machine tool setters, operators, and tenders, metal and plastic'
B24125e431='Grinding, lapping, polishing, and buffing machine tool setters, operators, and tenders, metal and plastic'
B24125e432='Lathe and turning machine tool setters, operators, and tenders, metal and plastic'
B24125e433='Milling and planing machine setters, operators, and tenders, metal and plastic'
B24125e434='Machinists'
B24125e435='Metal furnace operators, tenders, pourers, and casters'
B24125e436='Model makers and patternmakers, metal and plastic'
B24125e437='Molders and molding machine setters, operators, and tenders, metal and plastic'
B24125e438='Multiple machine tool setters, operators, and tenders, metal and plastic'
B24125e439='Tool and die makers'
B24125e440='Welding, soldering, and brazing workers'
B24125e441='Heat treating equipment setters, operators, and tenders, metal and plastic'
B24125e442='Layout workers, metal and plastic'
B24125e443='Plating and coating machine setters, operators, and tenders, metal and plastic'
B24125e444='Tool grinders, filers, and sharpeners'
B24125e445='Metal workers and plastic workers, all other'
B24125e446='Prepress technicians and workers'
B24125e447='Printing workers, except prepress technicians and workers'
B24125e448='Laundry and dry-cleaning workers'
B24125e449='Pressers, textile, garment, and related materials'
B24125e450='Sewing machine operators'
B24125e451='Shoe and leather workers and repairers'
B24125e452='Shoe machine operators and tenders'
B24125e453='Tailors, dressmakers, and sewers'
B24125e454='Textile bleaching and dyeing machine operators and tenders'
B24125e455='Textile cutting machine setters, operators, and tenders'
B24125e456='Textile knitting and weaving machine setters, operators, and tenders'
B24125e457='Textile winding, twisting, and drawing out machine setters, operators, and tenders'
B24125e458='Fabric and apparel patternmakers'
B24125e459='Upholsterers'
B24125e460='Miscellaneous textile, apparel, and furnishings workers, including extruding and forming machine setters, operators, and tenders, synthetic and glass fibers'
B24125e461='Cabinetmakers and bench carpenters'
B24125e462='Furniture finishers'
B24125e463='Sawing machine setters, operators, and tenders, wood'
B24125e464='Woodworking machine setters, operators, and tenders, except sawing'
B24125e465='Miscellaneous woodworkers, including model makers and patternmakers'
B24125e466='Power plant operators, distributors, and dispatchers'
B24125e467='Stationary engineers and boiler operators'
B24125e468='Water and wastewater treatment plant and system operators'
B24125e469='Miscellaneous plant and system operators'
B24125e470='Chemical processing machine setters, operators, and tenders'
B24125e471='Crushing, grinding, polishing, mixing, and blending workers'
B24125e472='Cutting workers'
B24125e473='Extruding, forming, pressing, and compacting machine setters, operators, and tenders'
B24125e474='Furnace, kiln, oven, drier, and kettle operators and tenders'
B24125e475='Inspectors, testers, sorters, samplers, and weighers'
B24125e476='Jewelers and precious stone and metal workers'
B24125e477='Medical, dental, and ophthalmic laboratory technicians'
B24125e478='Packaging and filling machine operators and tenders'
B24125e479='Painting workers'
B24125e480='Photographic process workers and processing machine operators'
B24125e481='Semiconductor processors'
B24125e482='Adhesive bonding machine operators and tenders'
B24125e483='Cleaning, washing, and metal pickling equipment operators and tenders'
B24125e484='Cooling and freezing equipment operators and tenders'
B24125e485='Etchers and engravers'
B24125e486='Molders, shapers, and casters, except metal and plastic'
B24125e487='Paper goods machine setters, operators, and tenders'
B24125e488='Tire builders'
B24125e489='Helpers--production workers'
B24125e490='Production workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24125e246
B24125e247
B24125e248
B24125e249
B24125e250
B24125e251
B24125e252
B24125e253
B24125e254
B24125e255
B24125e256
B24125e257
B24125e258
B24125e259
B24125e260
B24125e261
B24125e262
B24125e263
B24125e264
B24125e265
B24125e266
B24125e267
B24125e268
B24125e269
B24125e270
B24125e271
B24125e272
B24125e273
B24125e274
B24125e275
B24125e276
B24125e277
B24125e278
B24125e279
B24125e280
B24125e281
B24125e282
B24125e283
B24125e284
B24125e285
B24125e286
B24125e287
B24125e288
B24125e289
B24125e290
B24125e291
B24125e292
B24125e293
B24125e294
B24125e295
B24125e296
B24125e297
B24125e298
B24125e299
B24125e300
B24125e301
B24125e302
B24125e303
B24125e304
B24125e305
B24125e306
B24125e307
B24125e308
B24125e309
B24125e310
B24125e311
B24125e312
B24125e313
B24125e314
B24125e315
B24125e316
B24125e317
B24125e318
B24125e319
B24125e320
B24125e321
B24125e322
B24125e323
B24125e324
B24125e325
B24125e326
B24125e327
B24125e328
B24125e329
B24125e330
B24125e331
B24125e332
B24125e333
B24125e334
B24125e335
B24125e336
B24125e337
B24125e338
B24125e339
B24125e340
B24125e341
B24125e342
B24125e343
B24125e344
B24125e345
B24125e346
B24125e347
B24125e348
B24125e349
B24125e350
B24125e351
B24125e352
B24125e353
B24125e354
B24125e355
B24125e356
B24125e357
B24125e358
B24125e359
B24125e360
B24125e361
B24125e362
B24125e363
B24125e364
B24125e365
B24125e366
B24125e367
B24125e368
B24125e369
B24125e370
B24125e371
B24125e372
B24125e373
B24125e374
B24125e375
B24125e376
B24125e377
B24125e378
B24125e379
B24125e380
B24125e381
B24125e382
B24125e383
B24125e384
B24125e385
B24125e386
B24125e387
B24125e388
B24125e389
B24125e390
B24125e391
B24125e392
B24125e393
B24125e394
B24125e395
B24125e396
B24125e397
B24125e398
B24125e399
B24125e400
B24125e401
B24125e402
B24125e403
B24125e404
B24125e405
B24125e406
B24125e407
B24125e408
B24125e409
B24125e410
B24125e411
B24125e412
B24125e413
B24125e414
B24125e415
B24125e416
B24125e417
B24125e418
B24125e419
B24125e420
B24125e421
B24125e422
B24125e423
B24125e424
B24125e425
B24125e426
B24125e427
B24125e428
B24125e429
B24125e430
B24125e431
B24125e432
B24125e433
B24125e434
B24125e435
B24125e436
B24125e437
B24125e438
B24125e439
B24125e440
B24125e441
B24125e442
B24125e443
B24125e444
B24125e445
B24125e446
B24125e447
B24125e448
B24125e449
B24125e450
B24125e451
B24125e452
B24125e453
B24125e454
B24125e455
B24125e456
B24125e457
B24125e458
B24125e459
B24125e460
B24125e461
B24125e462
B24125e463
B24125e464
B24125e465
B24125e466
B24125e467
B24125e468
B24125e469
B24125e470
B24125e471
B24125e472
B24125e473
B24125e474
B24125e475
B24125e476
B24125e477
B24125e478
B24125e479
B24125e480
B24125e481
B24125e482
B24125e483
B24125e484
B24125e485
B24125e486
B24125e487
B24125e488
B24125e489
B24125e490
;
RUN;
TITLE2;
