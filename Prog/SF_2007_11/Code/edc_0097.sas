TITLE2 "e20115dc0097000";
DATA work.SFe0097dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0097000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*DETAILED OCCUPATION FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED FEMALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed female population 16 years and over */
B24126e246='Motion picture projectionists'
B24126e247='Ushers, lobby attendants, and ticket takers'
B24126e248='Miscellaneous entertainment attendants and related workers'
B24126e249='Embalmers and funeral attendants'
B24126e250='Morticians, undertakers, and funeral directors'
B24126e251='Barbers'
B24126e252='Hairdressers, hairstylists, and cosmetologists'
B24126e253='Miscellaneous personal appearance workers'
B24126e254='Baggage porters, bellhops, and concierges'
B24126e255='Tour and travel guides'
B24126e256='Childcare workers'
B24126e257='Personal care aides'
B24126e258='Recreation and fitness workers'
B24126e259='Residential advisors'
B24126e260='Personal care and service workers, all other'
B24126e261='First-line supervisors of retail sales workers'
B24126e262='First-line supervisors of non-retail sales workers'
B24126e263='Cashiers'
B24126e264='Counter and rental clerks'
B24126e265='Parts salespersons'
B24126e266='Retail salespersons'
B24126e267='Advertising sales agents'
B24126e268='Insurance sales agents'
B24126e269='Securities, commodities, and financial services sales agents'
B24126e270='Travel agents'
B24126e271='Sales representatives, services, all other'
B24126e272='Sales representatives, wholesale and manufacturing'
B24126e273='Models, demonstrators, and product promoters'
B24126e274='Real estate brokers and sales agents'
B24126e275='Sales engineers'
B24126e276='Telemarketers'
B24126e277='Door-to-door sales workers, news and street vendors, and related workers'
B24126e278='Sales and related workers, all other'
B24126e279='First-line supervisors of office and administrative support workers'
B24126e280='Switchboard operators, including answering service'
B24126e281='Telephone operators'
B24126e282='Communications equipment operators, all other'
B24126e283='Bill and account collectors'
B24126e284='Billing and posting clerks'
B24126e285='Bookkeeping, accounting, and auditing clerks'
B24126e286='Gaming cage workers'
B24126e287='Payroll and timekeeping clerks'
B24126e288='Procurement clerks'
B24126e289='Tellers'
B24126e290='Financial clerks, all other'
B24126e291='Brokerage clerks'
B24126e292='Correspondence clerks'
B24126e293='Court, municipal, and license clerks'
B24126e294='Credit authorizers, checkers, and clerks'
B24126e295='Customer service representatives'
B24126e296='Eligibility interviewers, government programs'
B24126e297='File clerks'
B24126e298='Hotel, motel, and resort desk clerks'
B24126e299='Interviewers, except eligibility and loan'
B24126e300='Library assistants, clerical'
B24126e301='Loan interviewers and clerks'
B24126e302='New accounts clerks'
B24126e303='Order clerks'
B24126e304='Human resources assistants, except payroll and timekeeping'
B24126e305='Receptionists and information clerks'
B24126e306='Reservation and transportation ticket agents and travel clerks'
B24126e307='Information and record clerks, all other'
B24126e308='Cargo and freight agents'
B24126e309='Couriers and messengers'
B24126e310='Dispatchers'
B24126e311='Meter readers, utilities'
B24126e312='Postal service clerks'
B24126e313='Postal service mail carriers'
B24126e314='Postal service mail sorters, processors, and processing machine operators'
B24126e315='Production, planning, and expediting clerks'
B24126e316='Shipping, receiving, and traffic clerks'
B24126e317='Stock clerks and order fillers'
B24126e318='Weighers, measurers, checkers, and samplers, recordkeeping'
B24126e319='Secretaries and administrative assistants'
B24126e320='Computer operators'
B24126e321='Data entry keyers'
B24126e322='Word processors and typists'
B24126e323='Desktop publishers'
B24126e324='Insurance claims and policy processing clerks'
B24126e325='Mail clerks and mail machine operators, except postal service'
B24126e326='Office clerks, general'
B24126e327='Office machine operators, except computer'
B24126e328='Proofreaders and copy markers'
B24126e329='Statistical assistants'
B24126e330='Office and administrative support workers, all other'
B24126e331='First-line supervisors of farming, fishing, and forestry workers'
B24126e332='Agricultural inspectors'
B24126e333='Animal breeders'
B24126e334='Graders and sorters, agricultural products'
B24126e335='Miscellaneous agricultural workers'
B24126e336='Fishing and hunting workers'
B24126e337='Forest and conservation workers'
B24126e338='Logging workers'
B24126e339='First-line supervisors of construction trades and extraction workers'
B24126e340='Boilermakers'
B24126e341='Brickmasons, blockmasons, and stonemasons'
B24126e342='Carpenters'
B24126e343='Carpet, floor, and tile installers and finishers'
B24126e344='Cement masons, concrete finishers, and terrazzo workers'
B24126e345='Construction laborers'
B24126e346='Paving, surfacing, and tamping equipment operators'
B24126e347='Operating engineers and other construction equipment operators, including pile-driver operators'
B24126e348='Drywall installers, ceiling tile installers, and tapers'
B24126e349='Electricians'
B24126e350='Glaziers'
B24126e351='Insulation workers'
B24126e352='Painters, construction and maintenance'
B24126e353='Paperhangers'
B24126e354='Pipelayers, plumbers, pipefitters, and steamfitters'
B24126e355='Plasterers and stucco masons'
B24126e356='Reinforcing iron and rebar workers'
B24126e357='Roofers'
B24126e358='Sheet metal workers'
B24126e359='Structural iron and steel workers'
B24126e360='Helpers, construction trades'
B24126e361='Construction and building inspectors'
B24126e362='Elevator installers and repairers'
B24126e363='Fence erectors'
B24126e364='Hazardous materials removal workers'
B24126e365='Highway maintenance workers'
B24126e366='Rail-track laying and maintenance equipment operators'
B24126e367='Septic tank servicers and sewer pipe cleaners'
B24126e368='Miscellaneous construction and related workers, including solar photovoltaic installers'
B24126e369='Derrick, rotary drill, and service unit operators, oil, gas, and mining'
B24126e370='Earth drillers, except oil and gas'
B24126e371='Explosives workers, ordnance handling experts, and blasters'
B24126e372='Mining machine operators'
B24126e373='Roof bolters, mining'
B24126e374='Roustabouts, oil and gas'
B24126e375='Helpers--extraction workers'
B24126e376='Other extraction workers'
B24126e377='First-line supervisors of mechanics, installers, and repairers'
B24126e378='Computer, automated teller, and office machine repairers'
B24126e379='Radio and telecommunications equipment installers and repairers'
B24126e380='Avionics technicians'
B24126e381='Electric motor, power tool, and related repairers'
B24126e382='Electrical and electronics installers and repairers, transportation equipment'
B24126e383='Electrical and electronics repairers, industrial and utility'
B24126e384='Electronic equipment installers and repairers, motor vehicles'
B24126e385='Electronic home entertainment equipment installers and repairers'
B24126e386='Security and fire alarm systems installers'
B24126e387='Aircraft mechanics and service technicians'
B24126e388='Automotive body and related repairers'
B24126e389='Automotive glass installers and repairers'
B24126e390='Automotive service technicians and mechanics'
B24126e391='Bus and truck mechanics and diesel engine specialists'
B24126e392='Heavy vehicle and mobile equipment service technicians and mechanics'
B24126e393='Small engine mechanics'
B24126e394='Miscellaneous vehicle and mobile equipment mechanics, installers, and repairers'
B24126e395='Control and valve installers and repairers'
B24126e396='Heating, air conditioning, and refrigeration mechanics and installers'
B24126e397='Home appliance repairers'
B24126e398='Industrial and refractory machinery mechanics'
B24126e399='Maintenance and repair workers, general'
B24126e400='Maintenance workers, machinery'
B24126e401='Millwrights'
B24126e402='Electrical power-line installers and repairers'
B24126e403='Telecommunications line installers and repairers'
B24126e404='Precision instrument and equipment repairers'
B24126e405='Coin, vending, and amusement machine servicers and repairers'
B24126e406='Commercial divers'
B24126e407='Locksmiths and safe repairers'
B24126e408='Manufactured building and mobile home installers'
B24126e409='Riggers'
B24126e410='Signal and track switch repairers'
B24126e411='Helpers--installation, maintenance, and repair workers'
B24126e412='Other installation, maintenance, and repair workers, including wind turbine service technicians'
B24126e413='First-line supervisors of production and operating workers'
B24126e414='Aircraft structure, surfaces, rigging, and systems assemblers'
B24126e415='Electrical, electronics, and electromechanical assemblers'
B24126e416='Engine and other machine assemblers'
B24126e417='Structural metal fabricators and fitters'
B24126e418='Miscellaneous assemblers and fabricators'
B24126e419='Bakers'
B24126e420='Butchers and other meat, poultry, and fish processing workers'
B24126e421='Food and tobacco roasting, baking, and drying machine operators and tenders'
B24126e422='Food batchmakers'
B24126e423='Food cooking machine operators and tenders'
B24126e424='Food processing workers, all other'
B24126e425='Computer control programmers and operators'
B24126e426='Extruding and drawing machine setters, operators, and tenders, metal and plastic'
B24126e427='Forging machine setters, operators, and tenders, metal and plastic'
B24126e428='Rolling machine setters, operators, and tenders, metal and plastic'
B24126e429='Cutting, punching, and press machine setters, operators, and tenders, metal and plastic'
B24126e430='Drilling and boring machine tool setters, operators, and tenders, metal and plastic'
B24126e431='Grinding, lapping, polishing, and buffing machine tool setters, operators, and tenders, metal and plastic'
B24126e432='Lathe and turning machine tool setters, operators, and tenders, metal and plastic'
B24126e433='Milling and planing machine setters, operators, and tenders, metal and plastic'
B24126e434='Machinists'
B24126e435='Metal furnace operators, tenders, pourers, and casters'
B24126e436='Model makers and patternmakers, metal and plastic'
B24126e437='Molders and molding machine setters, operators, and tenders, metal and plastic'
B24126e438='Multiple machine tool setters, operators, and tenders, metal and plastic'
B24126e439='Tool and die makers'
B24126e440='Welding, soldering, and brazing workers'
B24126e441='Heat treating equipment setters, operators, and tenders, metal and plastic'
B24126e442='Layout workers, metal and plastic'
B24126e443='Plating and coating machine setters, operators, and tenders, metal and plastic'
B24126e444='Tool grinders, filers, and sharpeners'
B24126e445='Metal workers and plastic workers, all other'
B24126e446='Prepress technicians and workers'
B24126e447='Printing workers, except prepress technicians and workers'
B24126e448='Laundry and dry-cleaning workers'
B24126e449='Pressers, textile, garment, and related materials'
B24126e450='Sewing machine operators'
B24126e451='Shoe and leather workers and repairers'
B24126e452='Shoe machine operators and tenders'
B24126e453='Tailors, dressmakers, and sewers'
B24126e454='Textile bleaching and dyeing machine operators and tenders'
B24126e455='Textile cutting machine setters, operators, and tenders'
B24126e456='Textile knitting and weaving machine setters, operators, and tenders'
B24126e457='Textile winding, twisting, and drawing out machine setters, operators, and tenders'
B24126e458='Fabric and apparel patternmakers'
B24126e459='Upholsterers'
B24126e460='Miscellaneous textile, apparel, and furnishings workers, including extruding and forming machine setters, operators, and tenders, synthetic and glass fibers'
B24126e461='Cabinetmakers and bench carpenters'
B24126e462='Furniture finishers'
B24126e463='Sawing machine setters, operators, and tenders, wood'
B24126e464='Woodworking machine setters, operators, and tenders, except sawing'
B24126e465='Miscellaneous woodworkers, including model makers and patternmakers'
B24126e466='Power plant operators, distributors, and dispatchers'
B24126e467='Stationary engineers and boiler operators'
B24126e468='Water and wastewater treatment plant and system operators'
B24126e469='Miscellaneous plant and system operators'
B24126e470='Chemical processing machine setters, operators, and tenders'
B24126e471='Crushing, grinding, polishing, mixing, and blending workers'
B24126e472='Cutting workers'
B24126e473='Extruding, forming, pressing, and compacting machine setters, operators, and tenders'
B24126e474='Furnace, kiln, oven, drier, and kettle operators and tenders'
B24126e475='Inspectors, testers, sorters, samplers, and weighers'
B24126e476='Jewelers and precious stone and metal workers'
B24126e477='Medical, dental, and ophthalmic laboratory technicians'
B24126e478='Packaging and filling machine operators and tenders'
B24126e479='Painting workers'
B24126e480='Photographic process workers and processing machine operators'
B24126e481='Semiconductor processors'
B24126e482='Adhesive bonding machine operators and tenders'
B24126e483='Cleaning, washing, and metal pickling equipment operators and tenders'
B24126e484='Cooling and freezing equipment operators and tenders'
B24126e485='Etchers and engravers'
B24126e486='Molders, shapers, and casters, except metal and plastic'
B24126e487='Paper goods machine setters, operators, and tenders'
B24126e488='Tire builders'
B24126e489='Helpers--production workers'
B24126e490='Production workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24126e246
B24126e247
B24126e248
B24126e249
B24126e250
B24126e251
B24126e252
B24126e253
B24126e254
B24126e255
B24126e256
B24126e257
B24126e258
B24126e259
B24126e260
B24126e261
B24126e262
B24126e263
B24126e264
B24126e265
B24126e266
B24126e267
B24126e268
B24126e269
B24126e270
B24126e271
B24126e272
B24126e273
B24126e274
B24126e275
B24126e276
B24126e277
B24126e278
B24126e279
B24126e280
B24126e281
B24126e282
B24126e283
B24126e284
B24126e285
B24126e286
B24126e287
B24126e288
B24126e289
B24126e290
B24126e291
B24126e292
B24126e293
B24126e294
B24126e295
B24126e296
B24126e297
B24126e298
B24126e299
B24126e300
B24126e301
B24126e302
B24126e303
B24126e304
B24126e305
B24126e306
B24126e307
B24126e308
B24126e309
B24126e310
B24126e311
B24126e312
B24126e313
B24126e314
B24126e315
B24126e316
B24126e317
B24126e318
B24126e319
B24126e320
B24126e321
B24126e322
B24126e323
B24126e324
B24126e325
B24126e326
B24126e327
B24126e328
B24126e329
B24126e330
B24126e331
B24126e332
B24126e333
B24126e334
B24126e335
B24126e336
B24126e337
B24126e338
B24126e339
B24126e340
B24126e341
B24126e342
B24126e343
B24126e344
B24126e345
B24126e346
B24126e347
B24126e348
B24126e349
B24126e350
B24126e351
B24126e352
B24126e353
B24126e354
B24126e355
B24126e356
B24126e357
B24126e358
B24126e359
B24126e360
B24126e361
B24126e362
B24126e363
B24126e364
B24126e365
B24126e366
B24126e367
B24126e368
B24126e369
B24126e370
B24126e371
B24126e372
B24126e373
B24126e374
B24126e375
B24126e376
B24126e377
B24126e378
B24126e379
B24126e380
B24126e381
B24126e382
B24126e383
B24126e384
B24126e385
B24126e386
B24126e387
B24126e388
B24126e389
B24126e390
B24126e391
B24126e392
B24126e393
B24126e394
B24126e395
B24126e396
B24126e397
B24126e398
B24126e399
B24126e400
B24126e401
B24126e402
B24126e403
B24126e404
B24126e405
B24126e406
B24126e407
B24126e408
B24126e409
B24126e410
B24126e411
B24126e412
B24126e413
B24126e414
B24126e415
B24126e416
B24126e417
B24126e418
B24126e419
B24126e420
B24126e421
B24126e422
B24126e423
B24126e424
B24126e425
B24126e426
B24126e427
B24126e428
B24126e429
B24126e430
B24126e431
B24126e432
B24126e433
B24126e434
B24126e435
B24126e436
B24126e437
B24126e438
B24126e439
B24126e440
B24126e441
B24126e442
B24126e443
B24126e444
B24126e445
B24126e446
B24126e447
B24126e448
B24126e449
B24126e450
B24126e451
B24126e452
B24126e453
B24126e454
B24126e455
B24126e456
B24126e457
B24126e458
B24126e459
B24126e460
B24126e461
B24126e462
B24126e463
B24126e464
B24126e465
B24126e466
B24126e467
B24126e468
B24126e469
B24126e470
B24126e471
B24126e472
B24126e473
B24126e474
B24126e475
B24126e476
B24126e477
B24126e478
B24126e479
B24126e480
B24126e481
B24126e482
B24126e483
B24126e484
B24126e485
B24126e486
B24126e487
B24126e488
B24126e489
B24126e490
;
RUN;
TITLE2;
