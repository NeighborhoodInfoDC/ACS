TITLE2 "m20125md0088000";
DATA work.SFm0088md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0088000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED MALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed male population 16 years and over with earnings */
B24122m246='Motion picture projectionists'
B24122m247='Ushers, lobby attendants, and ticket takers'
B24122m248='Miscellaneous entertainment attendants and related workers'
B24122m249='Embalmers and funeral attendants'
B24122m250='Morticians, undertakers, and funeral directors'
B24122m251='Barbers'
B24122m252='Hairdressers, hairstylists, and cosmetologists'
B24122m253='Miscellaneous personal appearance workers'
B24122m254='Baggage porters, bellhops, and concierges'
B24122m255='Tour and travel guides'
B24122m256='Childcare workers'
B24122m257='Personal care aides'
B24122m258='Recreation and fitness workers'
B24122m259='Residential advisors'
B24122m260='Personal care and service workers, all other'
B24122m261='First-line supervisors of retail sales workers'
B24122m262='First-line supervisors of non-retail sales workers'
B24122m263='Cashiers'
B24122m264='Counter and rental clerks'
B24122m265='Parts salespersons'
B24122m266='Retail salespersons'
B24122m267='Advertising sales agents'
B24122m268='Insurance sales agents'
B24122m269='Securities, commodities, and financial services sales agents'
B24122m270='Travel agents'
B24122m271='Sales representatives, services, all other'
B24122m272='Sales representatives, wholesale and manufacturing'
B24122m273='Models, demonstrators, and product promoters'
B24122m274='Real estate brokers and sales agents'
B24122m275='Sales engineers'
B24122m276='Telemarketers'
B24122m277='Door-to-door sales workers, news and street vendors, and related workers'
B24122m278='Sales and related workers, all other'
B24122m279='First-line supervisors of office and administrative support workers'
B24122m280='Switchboard operators, including answering service'
B24122m281='Telephone operators'
B24122m282='Communications equipment operators, all other'
B24122m283='Bill and account collectors'
B24122m284='Billing and posting clerks'
B24122m285='Bookkeeping, accounting, and auditing clerks'
B24122m286='Gaming cage workers'
B24122m287='Payroll and timekeeping clerks'
B24122m288='Procurement clerks'
B24122m289='Tellers'
B24122m290='Financial clerks, all other'
B24122m291='Brokerage clerks'
B24122m292='Correspondence clerks'
B24122m293='Court, municipal, and license clerks'
B24122m294='Credit authorizers, checkers, and clerks'
B24122m295='Customer service representatives'
B24122m296='Eligibility interviewers, government programs'
B24122m297='File clerks'
B24122m298='Hotel, motel, and resort desk clerks'
B24122m299='Interviewers, except eligibility and loan'
B24122m300='Library assistants, clerical'
B24122m301='Loan interviewers and clerks'
B24122m302='New accounts clerks'
B24122m303='Order clerks'
B24122m304='Human resources assistants, except payroll and timekeeping'
B24122m305='Receptionists and information clerks'
B24122m306='Reservation and transportation ticket agents and travel clerks'
B24122m307='Information and record clerks, all other'
B24122m308='Cargo and freight agents'
B24122m309='Couriers and messengers'
B24122m310='Dispatchers'
B24122m311='Meter readers, utilities'
B24122m312='Postal service clerks'
B24122m313='Postal service mail carriers'
B24122m314='Postal service mail sorters, processors, and processing machine operators'
B24122m315='Production, planning, and expediting clerks'
B24122m316='Shipping, receiving, and traffic clerks'
B24122m317='Stock clerks and order fillers'
B24122m318='Weighers, measurers, checkers, and samplers, recordkeeping'
B24122m319='Secretaries and administrative assistants'
B24122m320='Computer operators'
B24122m321='Data entry keyers'
B24122m322='Word processors and typists'
B24122m323='Desktop publishers'
B24122m324='Insurance claims and policy processing clerks'
B24122m325='Mail clerks and mail machine operators, except postal service'
B24122m326='Office clerks, general'
B24122m327='Office machine operators, except computer'
B24122m328='Proofreaders and copy markers'
B24122m329='Statistical assistants'
B24122m330='Office and administrative support workers, all other'
B24122m331='First-line supervisors of farming, fishing, and forestry workers'
B24122m332='Agricultural inspectors'
B24122m333='Animal breeders'
B24122m334='Graders and sorters, agricultural products'
B24122m335='Miscellaneous agricultural workers'
B24122m336='Fishing and hunting workers'
B24122m337='Forest and conservation workers'
B24122m338='Logging workers'
B24122m339='First-line supervisors of construction trades and extraction workers'
B24122m340='Boilermakers'
B24122m341='Brickmasons, blockmasons, and stonemasons'
B24122m342='Carpenters'
B24122m343='Carpet, floor, and tile installers and finishers'
B24122m344='Cement masons, concrete finishers, and terrazzo workers'
B24122m345='Construction laborers'
B24122m346='Paving, surfacing, and tamping equipment operators'
B24122m347='Operating engineers and other construction equipment operators, including pile-driver operators'
B24122m348='Drywall installers, ceiling tile installers, and tapers'
B24122m349='Electricians'
B24122m350='Glaziers'
B24122m351='Insulation workers'
B24122m352='Painters, construction and maintenance'
B24122m353='Paperhangers'
B24122m354='Pipelayers, plumbers, pipefitters, and steamfitters'
B24122m355='Plasterers and stucco masons'
B24122m356='Reinforcing iron and rebar workers'
B24122m357='Roofers'
B24122m358='Sheet metal workers'
B24122m359='Structural iron and steel workers'
B24122m360='Helpers, construction trades'
B24122m361='Construction and building inspectors'
B24122m362='Elevator installers and repairers'
B24122m363='Fence erectors'
B24122m364='Hazardous materials removal workers'
B24122m365='Highway maintenance workers'
B24122m366='Rail-track laying and maintenance equipment operators'
B24122m367='Septic tank servicers and sewer pipe cleaners'
B24122m368='Miscellaneous construction and related workers, including solar photovoltaic installers'
B24122m369='Derrick, rotary drill, and service unit operators, oil, gas, and mining'
B24122m370='Earth drillers, except oil and gas'
B24122m371='Explosives workers, ordnance handling experts, and blasters'
B24122m372='Mining machine operators'
B24122m373='Roof bolters, mining'
B24122m374='Roustabouts, oil and gas'
B24122m375='Helpers--extraction workers'
B24122m376='Other extraction workers'
B24122m377='First-line supervisors of mechanics, installers, and repairers'
B24122m378='Computer, automated teller, and office machine repairers'
B24122m379='Radio and telecommunications equipment installers and repairers'
B24122m380='Avionics technicians'
B24122m381='Electric motor, power tool, and related repairers'
B24122m382='Electrical and electronics installers and repairers, transportation equipment'
B24122m383='Electrical and electronics repairers, industrial and utility'
B24122m384='Electronic equipment installers and repairers, motor vehicles'
B24122m385='Electronic home entertainment equipment installers and repairers'
B24122m386='Security and fire alarm systems installers'
B24122m387='Aircraft mechanics and service technicians'
B24122m388='Automotive body and related repairers'
B24122m389='Automotive glass installers and repairers'
B24122m390='Automotive service technicians and mechanics'
B24122m391='Bus and truck mechanics and diesel engine specialists'
B24122m392='Heavy vehicle and mobile equipment service technicians and mechanics'
B24122m393='Small engine mechanics'
B24122m394='Miscellaneous vehicle and mobile equipment mechanics, installers, and repairers'
B24122m395='Control and valve installers and repairers'
B24122m396='Heating, air conditioning, and refrigeration mechanics and installers'
B24122m397='Home appliance repairers'
B24122m398='Industrial and refractory machinery mechanics'
B24122m399='Maintenance and repair workers, general'
B24122m400='Maintenance workers, machinery'
B24122m401='Millwrights'
B24122m402='Electrical power-line installers and repairers'
B24122m403='Telecommunications line installers and repairers'
B24122m404='Precision instrument and equipment repairers'
B24122m405='Coin, vending, and amusement machine servicers and repairers'
B24122m406='Commercial divers'
B24122m407='Locksmiths and safe repairers'
B24122m408='Manufactured building and mobile home installers'
B24122m409='Riggers'
B24122m410='Signal and track switch repairers'
B24122m411='Helpers--installation, maintenance, and repair workers'
B24122m412='Other installation, maintenance, and repair workers, including wind turbine service technicians'
B24122m413='First-line supervisors of production and operating workers'
B24122m414='Aircraft structure, surfaces, rigging, and systems assemblers'
B24122m415='Electrical, electronics, and electromechanical assemblers'
B24122m416='Engine and other machine assemblers'
B24122m417='Structural metal fabricators and fitters'
B24122m418='Miscellaneous assemblers and fabricators'
B24122m419='Bakers'
B24122m420='Butchers and other meat, poultry, and fish processing workers'
B24122m421='Food and tobacco roasting, baking, and drying machine operators and tenders'
B24122m422='Food batchmakers'
B24122m423='Food cooking machine operators and tenders'
B24122m424='Food processing workers, all other'
B24122m425='Computer control programmers and operators'
B24122m426='Extruding and drawing machine setters, operators, and tenders, metal and plastic'
B24122m427='Forging machine setters, operators, and tenders, metal and plastic'
B24122m428='Rolling machine setters, operators, and tenders, metal and plastic'
B24122m429='Cutting, punching, and press machine setters, operators, and tenders, metal and plastic'
B24122m430='Drilling and boring machine tool setters, operators, and tenders, metal and plastic'
B24122m431='Grinding, lapping, polishing, and buffing machine tool setters, operators, and tenders, metal and plastic'
B24122m432='Lathe and turning machine tool setters, operators, and tenders, metal and plastic'
B24122m433='Milling and planing machine setters, operators, and tenders, metal and plastic'
B24122m434='Machinists'
B24122m435='Metal furnace operators, tenders, pourers, and casters'
B24122m436='Model makers and patternmakers, metal and plastic'
B24122m437='Molders and molding machine setters, operators, and tenders, metal and plastic'
B24122m438='Multiple machine tool setters, operators, and tenders, metal and plastic'
B24122m439='Tool and die makers'
B24122m440='Welding, soldering, and brazing workers'
B24122m441='Heat treating equipment setters, operators, and tenders, metal and plastic'
B24122m442='Layout workers, metal and plastic'
B24122m443='Plating and coating machine setters, operators, and tenders, metal and plastic'
B24122m444='Tool grinders, filers, and sharpeners'
B24122m445='Metal workers and plastic workers, all other'
B24122m446='Prepress technicians and workers'
B24122m447='Printing workers, except prepress technicians and workers'
B24122m448='Laundry and dry-cleaning workers'
B24122m449='Pressers, textile, garment, and related materials'
B24122m450='Sewing machine operators'
B24122m451='Shoe and leather workers and repairers'
B24122m452='Shoe machine operators and tenders'
B24122m453='Tailors, dressmakers, and sewers'
B24122m454='Textile bleaching and dyeing machine operators and tenders'
B24122m455='Textile cutting machine setters, operators, and tenders'
B24122m456='Textile knitting and weaving machine setters, operators, and tenders'
B24122m457='Textile winding, twisting, and drawing out machine setters, operators, and tenders'
B24122m458='Fabric and apparel patternmakers'
B24122m459='Upholsterers'
B24122m460='Miscellaneous textile, apparel, and furnishings workers, including extruding and forming machine setters, operators, and tenders, synthetic and glass fibers'
B24122m461='Cabinetmakers and bench carpenters'
B24122m462='Furniture finishers'
B24122m463='Sawing machine setters, operators, and tenders, wood'
B24122m464='Woodworking machine setters, operators, and tenders, except sawing'
B24122m465='Miscellaneous woodworkers, including model makers and patternmakers'
B24122m466='Power plant operators, distributors, and dispatchers'
B24122m467='Stationary engineers and boiler operators'
B24122m468='Water and wastewater treatment plant and system operators'
B24122m469='Miscellaneous plant and system operators'
B24122m470='Chemical processing machine setters, operators, and tenders'
B24122m471='Crushing, grinding, polishing, mixing, and blending workers'
B24122m472='Cutting workers'
B24122m473='Extruding, forming, pressing, and compacting machine setters, operators, and tenders'
B24122m474='Furnace, kiln, oven, drier, and kettle operators and tenders'
B24122m475='Inspectors, testers, sorters, samplers, and weighers'
B24122m476='Jewelers and precious stone and metal workers'
B24122m477='Medical, dental, and ophthalmic laboratory technicians'
B24122m478='Packaging and filling machine operators and tenders'
B24122m479='Painting workers'
B24122m480='Photographic process workers and processing machine operators'
B24122m481='Semiconductor processors'
B24122m482='Adhesive bonding machine operators and tenders'
B24122m483='Cleaning, washing, and metal pickling equipment operators and tenders'
B24122m484='Cooling and freezing equipment operators and tenders'
B24122m485='Etchers and engravers'
B24122m486='Molders, shapers, and casters, except metal and plastic'
B24122m487='Paper goods machine setters, operators, and tenders'
B24122m488='Tire builders'
B24122m489='Helpers--production workers'
B24122m490='Production workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24122m246
B24122m247
B24122m248
B24122m249
B24122m250
B24122m251
B24122m252
B24122m253
B24122m254
B24122m255
B24122m256
B24122m257
B24122m258
B24122m259
B24122m260
B24122m261
B24122m262
B24122m263
B24122m264
B24122m265
B24122m266
B24122m267
B24122m268
B24122m269
B24122m270
B24122m271
B24122m272
B24122m273
B24122m274
B24122m275
B24122m276
B24122m277
B24122m278
B24122m279
B24122m280
B24122m281
B24122m282
B24122m283
B24122m284
B24122m285
B24122m286
B24122m287
B24122m288
B24122m289
B24122m290
B24122m291
B24122m292
B24122m293
B24122m294
B24122m295
B24122m296
B24122m297
B24122m298
B24122m299
B24122m300
B24122m301
B24122m302
B24122m303
B24122m304
B24122m305
B24122m306
B24122m307
B24122m308
B24122m309
B24122m310
B24122m311
B24122m312
B24122m313
B24122m314
B24122m315
B24122m316
B24122m317
B24122m318
B24122m319
B24122m320
B24122m321
B24122m322
B24122m323
B24122m324
B24122m325
B24122m326
B24122m327
B24122m328
B24122m329
B24122m330
B24122m331
B24122m332
B24122m333
B24122m334
B24122m335
B24122m336
B24122m337
B24122m338
B24122m339
B24122m340
B24122m341
B24122m342
B24122m343
B24122m344
B24122m345
B24122m346
B24122m347
B24122m348
B24122m349
B24122m350
B24122m351
B24122m352
B24122m353
B24122m354
B24122m355
B24122m356
B24122m357
B24122m358
B24122m359
B24122m360
B24122m361
B24122m362
B24122m363
B24122m364
B24122m365
B24122m366
B24122m367
B24122m368
B24122m369
B24122m370
B24122m371
B24122m372
B24122m373
B24122m374
B24122m375
B24122m376
B24122m377
B24122m378
B24122m379
B24122m380
B24122m381
B24122m382
B24122m383
B24122m384
B24122m385
B24122m386
B24122m387
B24122m388
B24122m389
B24122m390
B24122m391
B24122m392
B24122m393
B24122m394
B24122m395
B24122m396
B24122m397
B24122m398
B24122m399
B24122m400
B24122m401
B24122m402
B24122m403
B24122m404
B24122m405
B24122m406
B24122m407
B24122m408
B24122m409
B24122m410
B24122m411
B24122m412
B24122m413
B24122m414
B24122m415
B24122m416
B24122m417
B24122m418
B24122m419
B24122m420
B24122m421
B24122m422
B24122m423
B24122m424
B24122m425
B24122m426
B24122m427
B24122m428
B24122m429
B24122m430
B24122m431
B24122m432
B24122m433
B24122m434
B24122m435
B24122m436
B24122m437
B24122m438
B24122m439
B24122m440
B24122m441
B24122m442
B24122m443
B24122m444
B24122m445
B24122m446
B24122m447
B24122m448
B24122m449
B24122m450
B24122m451
B24122m452
B24122m453
B24122m454
B24122m455
B24122m456
B24122m457
B24122m458
B24122m459
B24122m460
B24122m461
B24122m462
B24122m463
B24122m464
B24122m465
B24122m466
B24122m467
B24122m468
B24122m469
B24122m470
B24122m471
B24122m472
B24122m473
B24122m474
B24122m475
B24122m476
B24122m477
B24122m478
B24122m479
B24122m480
B24122m481
B24122m482
B24122m483
B24122m484
B24122m485
B24122m486
B24122m487
B24122m488
B24122m489
B24122m490
;
RUN;
TITLE2;
