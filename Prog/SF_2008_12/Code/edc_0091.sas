TITLE2 "e20125dc0091000";
DATA work.SFe0091dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0091000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED FEMALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed female population 16 years and over with earnings */
B24123e246='Motion picture projectionists'
B24123e247='Ushers, lobby attendants, and ticket takers'
B24123e248='Miscellaneous entertainment attendants and related workers'
B24123e249='Embalmers and funeral attendants'
B24123e250='Morticians, undertakers, and funeral directors'
B24123e251='Barbers'
B24123e252='Hairdressers, hairstylists, and cosmetologists'
B24123e253='Miscellaneous personal appearance workers'
B24123e254='Baggage porters, bellhops, and concierges'
B24123e255='Tour and travel guides'
B24123e256='Childcare workers'
B24123e257='Personal care aides'
B24123e258='Recreation and fitness workers'
B24123e259='Residential advisors'
B24123e260='Personal care and service workers, all other'
B24123e261='First-line supervisors of retail sales workers'
B24123e262='First-line supervisors of non-retail sales workers'
B24123e263='Cashiers'
B24123e264='Counter and rental clerks'
B24123e265='Parts salespersons'
B24123e266='Retail salespersons'
B24123e267='Advertising sales agents'
B24123e268='Insurance sales agents'
B24123e269='Securities, commodities, and financial services sales agents'
B24123e270='Travel agents'
B24123e271='Sales representatives, services, all other'
B24123e272='Sales representatives, wholesale and manufacturing'
B24123e273='Models, demonstrators, and product promoters'
B24123e274='Real estate brokers and sales agents'
B24123e275='Sales engineers'
B24123e276='Telemarketers'
B24123e277='Door-to-door sales workers, news and street vendors, and related workers'
B24123e278='Sales and related workers, all other'
B24123e279='First-line supervisors of office and administrative support workers'
B24123e280='Switchboard operators, including answering service'
B24123e281='Telephone operators'
B24123e282='Communications equipment operators, all other'
B24123e283='Bill and account collectors'
B24123e284='Billing and posting clerks'
B24123e285='Bookkeeping, accounting, and auditing clerks'
B24123e286='Gaming cage workers'
B24123e287='Payroll and timekeeping clerks'
B24123e288='Procurement clerks'
B24123e289='Tellers'
B24123e290='Financial clerks, all other'
B24123e291='Brokerage clerks'
B24123e292='Correspondence clerks'
B24123e293='Court, municipal, and license clerks'
B24123e294='Credit authorizers, checkers, and clerks'
B24123e295='Customer service representatives'
B24123e296='Eligibility interviewers, government programs'
B24123e297='File clerks'
B24123e298='Hotel, motel, and resort desk clerks'
B24123e299='Interviewers, except eligibility and loan'
B24123e300='Library assistants, clerical'
B24123e301='Loan interviewers and clerks'
B24123e302='New accounts clerks'
B24123e303='Order clerks'
B24123e304='Human resources assistants, except payroll and timekeeping'
B24123e305='Receptionists and information clerks'
B24123e306='Reservation and transportation ticket agents and travel clerks'
B24123e307='Information and record clerks, all other'
B24123e308='Cargo and freight agents'
B24123e309='Couriers and messengers'
B24123e310='Dispatchers'
B24123e311='Meter readers, utilities'
B24123e312='Postal service clerks'
B24123e313='Postal service mail carriers'
B24123e314='Postal service mail sorters, processors, and processing machine operators'
B24123e315='Production, planning, and expediting clerks'
B24123e316='Shipping, receiving, and traffic clerks'
B24123e317='Stock clerks and order fillers'
B24123e318='Weighers, measurers, checkers, and samplers, recordkeeping'
B24123e319='Secretaries and administrative assistants'
B24123e320='Computer operators'
B24123e321='Data entry keyers'
B24123e322='Word processors and typists'
B24123e323='Desktop publishers'
B24123e324='Insurance claims and policy processing clerks'
B24123e325='Mail clerks and mail machine operators, except postal service'
B24123e326='Office clerks, general'
B24123e327='Office machine operators, except computer'
B24123e328='Proofreaders and copy markers'
B24123e329='Statistical assistants'
B24123e330='Office and administrative support workers, all other'
B24123e331='First-line supervisors of farming, fishing, and forestry workers'
B24123e332='Agricultural inspectors'
B24123e333='Animal breeders'
B24123e334='Graders and sorters, agricultural products'
B24123e335='Miscellaneous agricultural workers'
B24123e336='Fishing and hunting workers'
B24123e337='Forest and conservation workers'
B24123e338='Logging workers'
B24123e339='First-line supervisors of construction trades and extraction workers'
B24123e340='Boilermakers'
B24123e341='Brickmasons, blockmasons, and stonemasons'
B24123e342='Carpenters'
B24123e343='Carpet, floor, and tile installers and finishers'
B24123e344='Cement masons, concrete finishers, and terrazzo workers'
B24123e345='Construction laborers'
B24123e346='Paving, surfacing, and tamping equipment operators'
B24123e347='Operating engineers and other construction equipment operators, including pile-driver operators'
B24123e348='Drywall installers, ceiling tile installers, and tapers'
B24123e349='Electricians'
B24123e350='Glaziers'
B24123e351='Insulation workers'
B24123e352='Painters, construction and maintenance'
B24123e353='Paperhangers'
B24123e354='Pipelayers, plumbers, pipefitters, and steamfitters'
B24123e355='Plasterers and stucco masons'
B24123e356='Reinforcing iron and rebar workers'
B24123e357='Roofers'
B24123e358='Sheet metal workers'
B24123e359='Structural iron and steel workers'
B24123e360='Helpers, construction trades'
B24123e361='Construction and building inspectors'
B24123e362='Elevator installers and repairers'
B24123e363='Fence erectors'
B24123e364='Hazardous materials removal workers'
B24123e365='Highway maintenance workers'
B24123e366='Rail-track laying and maintenance equipment operators'
B24123e367='Septic tank servicers and sewer pipe cleaners'
B24123e368='Miscellaneous construction and related workers, including solar photovoltaic installers'
B24123e369='Derrick, rotary drill, and service unit operators, oil, gas, and mining'
B24123e370='Earth drillers, except oil and gas'
B24123e371='Explosives workers, ordnance handling experts, and blasters'
B24123e372='Mining machine operators'
B24123e373='Roof bolters, mining'
B24123e374='Roustabouts, oil and gas'
B24123e375='Helpers--extraction workers'
B24123e376='Other extraction workers'
B24123e377='First-line supervisors of mechanics, installers, and repairers'
B24123e378='Computer, automated teller, and office machine repairers'
B24123e379='Radio and telecommunications equipment installers and repairers'
B24123e380='Avionics technicians'
B24123e381='Electric motor, power tool, and related repairers'
B24123e382='Electrical and electronics installers and repairers, transportation equipment'
B24123e383='Electrical and electronics repairers, industrial and utility'
B24123e384='Electronic equipment installers and repairers, motor vehicles'
B24123e385='Electronic home entertainment equipment installers and repairers'
B24123e386='Security and fire alarm systems installers'
B24123e387='Aircraft mechanics and service technicians'
B24123e388='Automotive body and related repairers'
B24123e389='Automotive glass installers and repairers'
B24123e390='Automotive service technicians and mechanics'
B24123e391='Bus and truck mechanics and diesel engine specialists'
B24123e392='Heavy vehicle and mobile equipment service technicians and mechanics'
B24123e393='Small engine mechanics'
B24123e394='Miscellaneous vehicle and mobile equipment mechanics, installers, and repairers'
B24123e395='Control and valve installers and repairers'
B24123e396='Heating, air conditioning, and refrigeration mechanics and installers'
B24123e397='Home appliance repairers'
B24123e398='Industrial and refractory machinery mechanics'
B24123e399='Maintenance and repair workers, general'
B24123e400='Maintenance workers, machinery'
B24123e401='Millwrights'
B24123e402='Electrical power-line installers and repairers'
B24123e403='Telecommunications line installers and repairers'
B24123e404='Precision instrument and equipment repairers'
B24123e405='Coin, vending, and amusement machine servicers and repairers'
B24123e406='Commercial divers'
B24123e407='Locksmiths and safe repairers'
B24123e408='Manufactured building and mobile home installers'
B24123e409='Riggers'
B24123e410='Signal and track switch repairers'
B24123e411='Helpers--installation, maintenance, and repair workers'
B24123e412='Other installation, maintenance, and repair workers, including wind turbine service technicians'
B24123e413='First-line supervisors of production and operating workers'
B24123e414='Aircraft structure, surfaces, rigging, and systems assemblers'
B24123e415='Electrical, electronics, and electromechanical assemblers'
B24123e416='Engine and other machine assemblers'
B24123e417='Structural metal fabricators and fitters'
B24123e418='Miscellaneous assemblers and fabricators'
B24123e419='Bakers'
B24123e420='Butchers and other meat, poultry, and fish processing workers'
B24123e421='Food and tobacco roasting, baking, and drying machine operators and tenders'
B24123e422='Food batchmakers'
B24123e423='Food cooking machine operators and tenders'
B24123e424='Food processing workers, all other'
B24123e425='Computer control programmers and operators'
B24123e426='Extruding and drawing machine setters, operators, and tenders, metal and plastic'
B24123e427='Forging machine setters, operators, and tenders, metal and plastic'
B24123e428='Rolling machine setters, operators, and tenders, metal and plastic'
B24123e429='Cutting, punching, and press machine setters, operators, and tenders, metal and plastic'
B24123e430='Drilling and boring machine tool setters, operators, and tenders, metal and plastic'
B24123e431='Grinding, lapping, polishing, and buffing machine tool setters, operators, and tenders, metal and plastic'
B24123e432='Lathe and turning machine tool setters, operators, and tenders, metal and plastic'
B24123e433='Milling and planing machine setters, operators, and tenders, metal and plastic'
B24123e434='Machinists'
B24123e435='Metal furnace operators, tenders, pourers, and casters'
B24123e436='Model makers and patternmakers, metal and plastic'
B24123e437='Molders and molding machine setters, operators, and tenders, metal and plastic'
B24123e438='Multiple machine tool setters, operators, and tenders, metal and plastic'
B24123e439='Tool and die makers'
B24123e440='Welding, soldering, and brazing workers'
B24123e441='Heat treating equipment setters, operators, and tenders, metal and plastic'
B24123e442='Layout workers, metal and plastic'
B24123e443='Plating and coating machine setters, operators, and tenders, metal and plastic'
B24123e444='Tool grinders, filers, and sharpeners'
B24123e445='Metal workers and plastic workers, all other'
B24123e446='Prepress technicians and workers'
B24123e447='Printing workers, except prepress technicians and workers'
B24123e448='Laundry and dry-cleaning workers'
B24123e449='Pressers, textile, garment, and related materials'
B24123e450='Sewing machine operators'
B24123e451='Shoe and leather workers and repairers'
B24123e452='Shoe machine operators and tenders'
B24123e453='Tailors, dressmakers, and sewers'
B24123e454='Textile bleaching and dyeing machine operators and tenders'
B24123e455='Textile cutting machine setters, operators, and tenders'
B24123e456='Textile knitting and weaving machine setters, operators, and tenders'
B24123e457='Textile winding, twisting, and drawing out machine setters, operators, and tenders'
B24123e458='Fabric and apparel patternmakers'
B24123e459='Upholsterers'
B24123e460='Miscellaneous textile, apparel, and furnishings workers, including extruding and forming machine setters, operators, and tenders, synthetic and glass fibers'
B24123e461='Cabinetmakers and bench carpenters'
B24123e462='Furniture finishers'
B24123e463='Sawing machine setters, operators, and tenders, wood'
B24123e464='Woodworking machine setters, operators, and tenders, except sawing'
B24123e465='Miscellaneous woodworkers, including model makers and patternmakers'
B24123e466='Power plant operators, distributors, and dispatchers'
B24123e467='Stationary engineers and boiler operators'
B24123e468='Water and wastewater treatment plant and system operators'
B24123e469='Miscellaneous plant and system operators'
B24123e470='Chemical processing machine setters, operators, and tenders'
B24123e471='Crushing, grinding, polishing, mixing, and blending workers'
B24123e472='Cutting workers'
B24123e473='Extruding, forming, pressing, and compacting machine setters, operators, and tenders'
B24123e474='Furnace, kiln, oven, drier, and kettle operators and tenders'
B24123e475='Inspectors, testers, sorters, samplers, and weighers'
B24123e476='Jewelers and precious stone and metal workers'
B24123e477='Medical, dental, and ophthalmic laboratory technicians'
B24123e478='Packaging and filling machine operators and tenders'
B24123e479='Painting workers'
B24123e480='Photographic process workers and processing machine operators'
B24123e481='Semiconductor processors'
B24123e482='Adhesive bonding machine operators and tenders'
B24123e483='Cleaning, washing, and metal pickling equipment operators and tenders'
B24123e484='Cooling and freezing equipment operators and tenders'
B24123e485='Etchers and engravers'
B24123e486='Molders, shapers, and casters, except metal and plastic'
B24123e487='Paper goods machine setters, operators, and tenders'
B24123e488='Tire builders'
B24123e489='Helpers--production workers'
B24123e490='Production workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24123e246
B24123e247
B24123e248
B24123e249
B24123e250
B24123e251
B24123e252
B24123e253
B24123e254
B24123e255
B24123e256
B24123e257
B24123e258
B24123e259
B24123e260
B24123e261
B24123e262
B24123e263
B24123e264
B24123e265
B24123e266
B24123e267
B24123e268
B24123e269
B24123e270
B24123e271
B24123e272
B24123e273
B24123e274
B24123e275
B24123e276
B24123e277
B24123e278
B24123e279
B24123e280
B24123e281
B24123e282
B24123e283
B24123e284
B24123e285
B24123e286
B24123e287
B24123e288
B24123e289
B24123e290
B24123e291
B24123e292
B24123e293
B24123e294
B24123e295
B24123e296
B24123e297
B24123e298
B24123e299
B24123e300
B24123e301
B24123e302
B24123e303
B24123e304
B24123e305
B24123e306
B24123e307
B24123e308
B24123e309
B24123e310
B24123e311
B24123e312
B24123e313
B24123e314
B24123e315
B24123e316
B24123e317
B24123e318
B24123e319
B24123e320
B24123e321
B24123e322
B24123e323
B24123e324
B24123e325
B24123e326
B24123e327
B24123e328
B24123e329
B24123e330
B24123e331
B24123e332
B24123e333
B24123e334
B24123e335
B24123e336
B24123e337
B24123e338
B24123e339
B24123e340
B24123e341
B24123e342
B24123e343
B24123e344
B24123e345
B24123e346
B24123e347
B24123e348
B24123e349
B24123e350
B24123e351
B24123e352
B24123e353
B24123e354
B24123e355
B24123e356
B24123e357
B24123e358
B24123e359
B24123e360
B24123e361
B24123e362
B24123e363
B24123e364
B24123e365
B24123e366
B24123e367
B24123e368
B24123e369
B24123e370
B24123e371
B24123e372
B24123e373
B24123e374
B24123e375
B24123e376
B24123e377
B24123e378
B24123e379
B24123e380
B24123e381
B24123e382
B24123e383
B24123e384
B24123e385
B24123e386
B24123e387
B24123e388
B24123e389
B24123e390
B24123e391
B24123e392
B24123e393
B24123e394
B24123e395
B24123e396
B24123e397
B24123e398
B24123e399
B24123e400
B24123e401
B24123e402
B24123e403
B24123e404
B24123e405
B24123e406
B24123e407
B24123e408
B24123e409
B24123e410
B24123e411
B24123e412
B24123e413
B24123e414
B24123e415
B24123e416
B24123e417
B24123e418
B24123e419
B24123e420
B24123e421
B24123e422
B24123e423
B24123e424
B24123e425
B24123e426
B24123e427
B24123e428
B24123e429
B24123e430
B24123e431
B24123e432
B24123e433
B24123e434
B24123e435
B24123e436
B24123e437
B24123e438
B24123e439
B24123e440
B24123e441
B24123e442
B24123e443
B24123e444
B24123e445
B24123e446
B24123e447
B24123e448
B24123e449
B24123e450
B24123e451
B24123e452
B24123e453
B24123e454
B24123e455
B24123e456
B24123e457
B24123e458
B24123e459
B24123e460
B24123e461
B24123e462
B24123e463
B24123e464
B24123e465
B24123e466
B24123e467
B24123e468
B24123e469
B24123e470
B24123e471
B24123e472
B24123e473
B24123e474
B24123e475
B24123e476
B24123e477
B24123e478
B24123e479
B24123e480
B24123e481
B24123e482
B24123e483
B24123e484
B24123e485
B24123e486
B24123e487
B24123e488
B24123e489
B24123e490
;
RUN;
TITLE2;
