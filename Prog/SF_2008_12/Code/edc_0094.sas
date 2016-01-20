TITLE2 "e20125dc0094000";
DATA work.SFe0094dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0094000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over */
B24124e246='Motion picture projectionists'
B24124e247='Ushers, lobby attendants, and ticket takers'
B24124e248='Miscellaneous entertainment attendants and related workers'
B24124e249='Embalmers and funeral attendants'
B24124e250='Morticians, undertakers, and funeral directors'
B24124e251='Barbers'
B24124e252='Hairdressers, hairstylists, and cosmetologists'
B24124e253='Miscellaneous personal appearance workers'
B24124e254='Baggage porters, bellhops, and concierges'
B24124e255='Tour and travel guides'
B24124e256='Childcare workers'
B24124e257='Personal care aides'
B24124e258='Recreation and fitness workers'
B24124e259='Residential advisors'
B24124e260='Personal care and service workers, all other'
B24124e261='First-line supervisors of retail sales workers'
B24124e262='First-line supervisors of non-retail sales workers'
B24124e263='Cashiers'
B24124e264='Counter and rental clerks'
B24124e265='Parts salespersons'
B24124e266='Retail salespersons'
B24124e267='Advertising sales agents'
B24124e268='Insurance sales agents'
B24124e269='Securities, commodities, and financial services sales agents'
B24124e270='Travel agents'
B24124e271='Sales representatives, services, all other'
B24124e272='Sales representatives, wholesale and manufacturing'
B24124e273='Models, demonstrators, and product promoters'
B24124e274='Real estate brokers and sales agents'
B24124e275='Sales engineers'
B24124e276='Telemarketers'
B24124e277='Door-to-door sales workers, news and street vendors, and related workers'
B24124e278='Sales and related workers, all other'
B24124e279='First-line supervisors of office and administrative support workers'
B24124e280='Switchboard operators, including answering service'
B24124e281='Telephone operators'
B24124e282='Communications equipment operators, all other'
B24124e283='Bill and account collectors'
B24124e284='Billing and posting clerks'
B24124e285='Bookkeeping, accounting, and auditing clerks'
B24124e286='Gaming cage workers'
B24124e287='Payroll and timekeeping clerks'
B24124e288='Procurement clerks'
B24124e289='Tellers'
B24124e290='Financial clerks, all other'
B24124e291='Brokerage clerks'
B24124e292='Correspondence clerks'
B24124e293='Court, municipal, and license clerks'
B24124e294='Credit authorizers, checkers, and clerks'
B24124e295='Customer service representatives'
B24124e296='Eligibility interviewers, government programs'
B24124e297='File clerks'
B24124e298='Hotel, motel, and resort desk clerks'
B24124e299='Interviewers, except eligibility and loan'
B24124e300='Library assistants, clerical'
B24124e301='Loan interviewers and clerks'
B24124e302='New accounts clerks'
B24124e303='Order clerks'
B24124e304='Human resources assistants, except payroll and timekeeping'
B24124e305='Receptionists and information clerks'
B24124e306='Reservation and transportation ticket agents and travel clerks'
B24124e307='Information and record clerks, all other'
B24124e308='Cargo and freight agents'
B24124e309='Couriers and messengers'
B24124e310='Dispatchers'
B24124e311='Meter readers, utilities'
B24124e312='Postal service clerks'
B24124e313='Postal service mail carriers'
B24124e314='Postal service mail sorters, processors, and processing machine operators'
B24124e315='Production, planning, and expediting clerks'
B24124e316='Shipping, receiving, and traffic clerks'
B24124e317='Stock clerks and order fillers'
B24124e318='Weighers, measurers, checkers, and samplers, recordkeeping'
B24124e319='Secretaries and administrative assistants'
B24124e320='Computer operators'
B24124e321='Data entry keyers'
B24124e322='Word processors and typists'
B24124e323='Desktop publishers'
B24124e324='Insurance claims and policy processing clerks'
B24124e325='Mail clerks and mail machine operators, except postal service'
B24124e326='Office clerks, general'
B24124e327='Office machine operators, except computer'
B24124e328='Proofreaders and copy markers'
B24124e329='Statistical assistants'
B24124e330='Office and administrative support workers, all other'
B24124e331='First-line supervisors of farming, fishing, and forestry workers'
B24124e332='Agricultural inspectors'
B24124e333='Animal breeders'
B24124e334='Graders and sorters, agricultural products'
B24124e335='Miscellaneous agricultural workers'
B24124e336='Fishing and hunting workers'
B24124e337='Forest and conservation workers'
B24124e338='Logging workers'
B24124e339='First-line supervisors of construction trades and extraction workers'
B24124e340='Boilermakers'
B24124e341='Brickmasons, blockmasons, and stonemasons'
B24124e342='Carpenters'
B24124e343='Carpet, floor, and tile installers and finishers'
B24124e344='Cement masons, concrete finishers, and terrazzo workers'
B24124e345='Construction laborers'
B24124e346='Paving, surfacing, and tamping equipment operators'
B24124e347='Operating engineers and other construction equipment operators, including pile-driver operators'
B24124e348='Drywall installers, ceiling tile installers, and tapers'
B24124e349='Electricians'
B24124e350='Glaziers'
B24124e351='Insulation workers'
B24124e352='Painters, construction and maintenance'
B24124e353='Paperhangers'
B24124e354='Pipelayers, plumbers, pipefitters, and steamfitters'
B24124e355='Plasterers and stucco masons'
B24124e356='Reinforcing iron and rebar workers'
B24124e357='Roofers'
B24124e358='Sheet metal workers'
B24124e359='Structural iron and steel workers'
B24124e360='Helpers, construction trades'
B24124e361='Construction and building inspectors'
B24124e362='Elevator installers and repairers'
B24124e363='Fence erectors'
B24124e364='Hazardous materials removal workers'
B24124e365='Highway maintenance workers'
B24124e366='Rail-track laying and maintenance equipment operators'
B24124e367='Septic tank servicers and sewer pipe cleaners'
B24124e368='Miscellaneous construction and related workers, including solar photovoltaic installers'
B24124e369='Derrick, rotary drill, and service unit operators, oil, gas, and mining'
B24124e370='Earth drillers, except oil and gas'
B24124e371='Explosives workers, ordnance handling experts, and blasters'
B24124e372='Mining machine operators'
B24124e373='Roof bolters, mining'
B24124e374='Roustabouts, oil and gas'
B24124e375='Helpers--extraction workers'
B24124e376='Other extraction workers'
B24124e377='First-line supervisors of mechanics, installers, and repairers'
B24124e378='Computer, automated teller, and office machine repairers'
B24124e379='Radio and telecommunications equipment installers and repairers'
B24124e380='Avionics technicians'
B24124e381='Electric motor, power tool, and related repairers'
B24124e382='Electrical and electronics installers and repairers, transportation equipment'
B24124e383='Electrical and electronics repairers, industrial and utility'
B24124e384='Electronic equipment installers and repairers, motor vehicles'
B24124e385='Electronic home entertainment equipment installers and repairers'
B24124e386='Security and fire alarm systems installers'
B24124e387='Aircraft mechanics and service technicians'
B24124e388='Automotive body and related repairers'
B24124e389='Automotive glass installers and repairers'
B24124e390='Automotive service technicians and mechanics'
B24124e391='Bus and truck mechanics and diesel engine specialists'
B24124e392='Heavy vehicle and mobile equipment service technicians and mechanics'
B24124e393='Small engine mechanics'
B24124e394='Miscellaneous vehicle and mobile equipment mechanics, installers, and repairers'
B24124e395='Control and valve installers and repairers'
B24124e396='Heating, air conditioning, and refrigeration mechanics and installers'
B24124e397='Home appliance repairers'
B24124e398='Industrial and refractory machinery mechanics'
B24124e399='Maintenance and repair workers, general'
B24124e400='Maintenance workers, machinery'
B24124e401='Millwrights'
B24124e402='Electrical power-line installers and repairers'
B24124e403='Telecommunications line installers and repairers'
B24124e404='Precision instrument and equipment repairers'
B24124e405='Coin, vending, and amusement machine servicers and repairers'
B24124e406='Commercial divers'
B24124e407='Locksmiths and safe repairers'
B24124e408='Manufactured building and mobile home installers'
B24124e409='Riggers'
B24124e410='Signal and track switch repairers'
B24124e411='Helpers--installation, maintenance, and repair workers'
B24124e412='Other installation, maintenance, and repair workers, including wind turbine service technicians'
B24124e413='First-line supervisors of production and operating workers'
B24124e414='Aircraft structure, surfaces, rigging, and systems assemblers'
B24124e415='Electrical, electronics, and electromechanical assemblers'
B24124e416='Engine and other machine assemblers'
B24124e417='Structural metal fabricators and fitters'
B24124e418='Miscellaneous assemblers and fabricators'
B24124e419='Bakers'
B24124e420='Butchers and other meat, poultry, and fish processing workers'
B24124e421='Food and tobacco roasting, baking, and drying machine operators and tenders'
B24124e422='Food batchmakers'
B24124e423='Food cooking machine operators and tenders'
B24124e424='Food processing workers, all other'
B24124e425='Computer control programmers and operators'
B24124e426='Extruding and drawing machine setters, operators, and tenders, metal and plastic'
B24124e427='Forging machine setters, operators, and tenders, metal and plastic'
B24124e428='Rolling machine setters, operators, and tenders, metal and plastic'
B24124e429='Cutting, punching, and press machine setters, operators, and tenders, metal and plastic'
B24124e430='Drilling and boring machine tool setters, operators, and tenders, metal and plastic'
B24124e431='Grinding, lapping, polishing, and buffing machine tool setters, operators, and tenders, metal and plastic'
B24124e432='Lathe and turning machine tool setters, operators, and tenders, metal and plastic'
B24124e433='Milling and planing machine setters, operators, and tenders, metal and plastic'
B24124e434='Machinists'
B24124e435='Metal furnace operators, tenders, pourers, and casters'
B24124e436='Model makers and patternmakers, metal and plastic'
B24124e437='Molders and molding machine setters, operators, and tenders, metal and plastic'
B24124e438='Multiple machine tool setters, operators, and tenders, metal and plastic'
B24124e439='Tool and die makers'
B24124e440='Welding, soldering, and brazing workers'
B24124e441='Heat treating equipment setters, operators, and tenders, metal and plastic'
B24124e442='Layout workers, metal and plastic'
B24124e443='Plating and coating machine setters, operators, and tenders, metal and plastic'
B24124e444='Tool grinders, filers, and sharpeners'
B24124e445='Metal workers and plastic workers, all other'
B24124e446='Prepress technicians and workers'
B24124e447='Printing workers, except prepress technicians and workers'
B24124e448='Laundry and dry-cleaning workers'
B24124e449='Pressers, textile, garment, and related materials'
B24124e450='Sewing machine operators'
B24124e451='Shoe and leather workers and repairers'
B24124e452='Shoe machine operators and tenders'
B24124e453='Tailors, dressmakers, and sewers'
B24124e454='Textile bleaching and dyeing machine operators and tenders'
B24124e455='Textile cutting machine setters, operators, and tenders'
B24124e456='Textile knitting and weaving machine setters, operators, and tenders'
B24124e457='Textile winding, twisting, and drawing out machine setters, operators, and tenders'
B24124e458='Fabric and apparel patternmakers'
B24124e459='Upholsterers'
B24124e460='Miscellaneous textile, apparel, and furnishings workers, including extruding and forming machine setters, operators, and tenders, synthetic and glass fibers'
B24124e461='Cabinetmakers and bench carpenters'
B24124e462='Furniture finishers'
B24124e463='Sawing machine setters, operators, and tenders, wood'
B24124e464='Woodworking machine setters, operators, and tenders, except sawing'
B24124e465='Miscellaneous woodworkers, including model makers and patternmakers'
B24124e466='Power plant operators, distributors, and dispatchers'
B24124e467='Stationary engineers and boiler operators'
B24124e468='Water and wastewater treatment plant and system operators'
B24124e469='Miscellaneous plant and system operators'
B24124e470='Chemical processing machine setters, operators, and tenders'
B24124e471='Crushing, grinding, polishing, mixing, and blending workers'
B24124e472='Cutting workers'
B24124e473='Extruding, forming, pressing, and compacting machine setters, operators, and tenders'
B24124e474='Furnace, kiln, oven, drier, and kettle operators and tenders'
B24124e475='Inspectors, testers, sorters, samplers, and weighers'
B24124e476='Jewelers and precious stone and metal workers'
B24124e477='Medical, dental, and ophthalmic laboratory technicians'
B24124e478='Packaging and filling machine operators and tenders'
B24124e479='Painting workers'
B24124e480='Photographic process workers and processing machine operators'
B24124e481='Semiconductor processors'
B24124e482='Adhesive bonding machine operators and tenders'
B24124e483='Cleaning, washing, and metal pickling equipment operators and tenders'
B24124e484='Cooling and freezing equipment operators and tenders'
B24124e485='Etchers and engravers'
B24124e486='Molders, shapers, and casters, except metal and plastic'
B24124e487='Paper goods machine setters, operators, and tenders'
B24124e488='Tire builders'
B24124e489='Helpers--production workers'
B24124e490='Production workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24124e246
B24124e247
B24124e248
B24124e249
B24124e250
B24124e251
B24124e252
B24124e253
B24124e254
B24124e255
B24124e256
B24124e257
B24124e258
B24124e259
B24124e260
B24124e261
B24124e262
B24124e263
B24124e264
B24124e265
B24124e266
B24124e267
B24124e268
B24124e269
B24124e270
B24124e271
B24124e272
B24124e273
B24124e274
B24124e275
B24124e276
B24124e277
B24124e278
B24124e279
B24124e280
B24124e281
B24124e282
B24124e283
B24124e284
B24124e285
B24124e286
B24124e287
B24124e288
B24124e289
B24124e290
B24124e291
B24124e292
B24124e293
B24124e294
B24124e295
B24124e296
B24124e297
B24124e298
B24124e299
B24124e300
B24124e301
B24124e302
B24124e303
B24124e304
B24124e305
B24124e306
B24124e307
B24124e308
B24124e309
B24124e310
B24124e311
B24124e312
B24124e313
B24124e314
B24124e315
B24124e316
B24124e317
B24124e318
B24124e319
B24124e320
B24124e321
B24124e322
B24124e323
B24124e324
B24124e325
B24124e326
B24124e327
B24124e328
B24124e329
B24124e330
B24124e331
B24124e332
B24124e333
B24124e334
B24124e335
B24124e336
B24124e337
B24124e338
B24124e339
B24124e340
B24124e341
B24124e342
B24124e343
B24124e344
B24124e345
B24124e346
B24124e347
B24124e348
B24124e349
B24124e350
B24124e351
B24124e352
B24124e353
B24124e354
B24124e355
B24124e356
B24124e357
B24124e358
B24124e359
B24124e360
B24124e361
B24124e362
B24124e363
B24124e364
B24124e365
B24124e366
B24124e367
B24124e368
B24124e369
B24124e370
B24124e371
B24124e372
B24124e373
B24124e374
B24124e375
B24124e376
B24124e377
B24124e378
B24124e379
B24124e380
B24124e381
B24124e382
B24124e383
B24124e384
B24124e385
B24124e386
B24124e387
B24124e388
B24124e389
B24124e390
B24124e391
B24124e392
B24124e393
B24124e394
B24124e395
B24124e396
B24124e397
B24124e398
B24124e399
B24124e400
B24124e401
B24124e402
B24124e403
B24124e404
B24124e405
B24124e406
B24124e407
B24124e408
B24124e409
B24124e410
B24124e411
B24124e412
B24124e413
B24124e414
B24124e415
B24124e416
B24124e417
B24124e418
B24124e419
B24124e420
B24124e421
B24124e422
B24124e423
B24124e424
B24124e425
B24124e426
B24124e427
B24124e428
B24124e429
B24124e430
B24124e431
B24124e432
B24124e433
B24124e434
B24124e435
B24124e436
B24124e437
B24124e438
B24124e439
B24124e440
B24124e441
B24124e442
B24124e443
B24124e444
B24124e445
B24124e446
B24124e447
B24124e448
B24124e449
B24124e450
B24124e451
B24124e452
B24124e453
B24124e454
B24124e455
B24124e456
B24124e457
B24124e458
B24124e459
B24124e460
B24124e461
B24124e462
B24124e463
B24124e464
B24124e465
B24124e466
B24124e467
B24124e468
B24124e469
B24124e470
B24124e471
B24124e472
B24124e473
B24124e474
B24124e475
B24124e476
B24124e477
B24124e478
B24124e479
B24124e480
B24124e481
B24124e482
B24124e483
B24124e484
B24124e485
B24124e486
B24124e487
B24124e488
B24124e489
B24124e490
;
RUN;
TITLE2;
