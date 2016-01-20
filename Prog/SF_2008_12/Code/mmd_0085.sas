TITLE2 "m20125md0085000";
DATA work.SFm0085md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0085000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over with earnings */
B24121m246='Motion picture projectionists'
B24121m247='Ushers, lobby attendants, and ticket takers'
B24121m248='Miscellaneous entertainment attendants and related workers'
B24121m249='Embalmers and funeral attendants'
B24121m250='Morticians, undertakers, and funeral directors'
B24121m251='Barbers'
B24121m252='Hairdressers, hairstylists, and cosmetologists'
B24121m253='Miscellaneous personal appearance workers'
B24121m254='Baggage porters, bellhops, and concierges'
B24121m255='Tour and travel guides'
B24121m256='Childcare workers'
B24121m257='Personal care aides'
B24121m258='Recreation and fitness workers'
B24121m259='Residential advisors'
B24121m260='Personal care and service workers, all other'
B24121m261='First-line supervisors of retail sales workers'
B24121m262='First-line supervisors of non-retail sales workers'
B24121m263='Cashiers'
B24121m264='Counter and rental clerks'
B24121m265='Parts salespersons'
B24121m266='Retail salespersons'
B24121m267='Advertising sales agents'
B24121m268='Insurance sales agents'
B24121m269='Securities, commodities, and financial services sales agents'
B24121m270='Travel agents'
B24121m271='Sales representatives, services, all other'
B24121m272='Sales representatives, wholesale and manufacturing'
B24121m273='Models, demonstrators, and product promoters'
B24121m274='Real estate brokers and sales agents'
B24121m275='Sales engineers'
B24121m276='Telemarketers'
B24121m277='Door-to-door sales workers, news and street vendors, and related workers'
B24121m278='Sales and related workers, all other'
B24121m279='First-line supervisors of office and administrative support workers'
B24121m280='Switchboard operators, including answering service'
B24121m281='Telephone operators'
B24121m282='Communications equipment operators, all other'
B24121m283='Bill and account collectors'
B24121m284='Billing and posting clerks'
B24121m285='Bookkeeping, accounting, and auditing clerks'
B24121m286='Gaming cage workers'
B24121m287='Payroll and timekeeping clerks'
B24121m288='Procurement clerks'
B24121m289='Tellers'
B24121m290='Financial clerks, all other'
B24121m291='Brokerage clerks'
B24121m292='Correspondence clerks'
B24121m293='Court, municipal, and license clerks'
B24121m294='Credit authorizers, checkers, and clerks'
B24121m295='Customer service representatives'
B24121m296='Eligibility interviewers, government programs'
B24121m297='File clerks'
B24121m298='Hotel, motel, and resort desk clerks'
B24121m299='Interviewers, except eligibility and loan'
B24121m300='Library assistants, clerical'
B24121m301='Loan interviewers and clerks'
B24121m302='New accounts clerks'
B24121m303='Order clerks'
B24121m304='Human resources assistants, except payroll and timekeeping'
B24121m305='Receptionists and information clerks'
B24121m306='Reservation and transportation ticket agents and travel clerks'
B24121m307='Information and record clerks, all other'
B24121m308='Cargo and freight agents'
B24121m309='Couriers and messengers'
B24121m310='Dispatchers'
B24121m311='Meter readers, utilities'
B24121m312='Postal service clerks'
B24121m313='Postal service mail carriers'
B24121m314='Postal service mail sorters, processors, and processing machine operators'
B24121m315='Production, planning, and expediting clerks'
B24121m316='Shipping, receiving, and traffic clerks'
B24121m317='Stock clerks and order fillers'
B24121m318='Weighers, measurers, checkers, and samplers, recordkeeping'
B24121m319='Secretaries and administrative assistants'
B24121m320='Computer operators'
B24121m321='Data entry keyers'
B24121m322='Word processors and typists'
B24121m323='Desktop publishers'
B24121m324='Insurance claims and policy processing clerks'
B24121m325='Mail clerks and mail machine operators, except postal service'
B24121m326='Office clerks, general'
B24121m327='Office machine operators, except computer'
B24121m328='Proofreaders and copy markers'
B24121m329='Statistical assistants'
B24121m330='Office and administrative support workers, all other'
B24121m331='First-line supervisors of farming, fishing, and forestry workers'
B24121m332='Agricultural inspectors'
B24121m333='Animal breeders'
B24121m334='Graders and sorters, agricultural products'
B24121m335='Miscellaneous agricultural workers'
B24121m336='Fishing and hunting workers'
B24121m337='Forest and conservation workers'
B24121m338='Logging workers'
B24121m339='First-line supervisors of construction trades and extraction workers'
B24121m340='Boilermakers'
B24121m341='Brickmasons, blockmasons, and stonemasons'
B24121m342='Carpenters'
B24121m343='Carpet, floor, and tile installers and finishers'
B24121m344='Cement masons, concrete finishers, and terrazzo workers'
B24121m345='Construction laborers'
B24121m346='Paving, surfacing, and tamping equipment operators'
B24121m347='Operating engineers and other construction equipment operators, including pile-driver operators'
B24121m348='Drywall installers, ceiling tile installers, and tapers'
B24121m349='Electricians'
B24121m350='Glaziers'
B24121m351='Insulation workers'
B24121m352='Painters, construction and maintenance'
B24121m353='Paperhangers'
B24121m354='Pipelayers, plumbers, pipefitters, and steamfitters'
B24121m355='Plasterers and stucco masons'
B24121m356='Reinforcing iron and rebar workers'
B24121m357='Roofers'
B24121m358='Sheet metal workers'
B24121m359='Structural iron and steel workers'
B24121m360='Helpers, construction trades'
B24121m361='Construction and building inspectors'
B24121m362='Elevator installers and repairers'
B24121m363='Fence erectors'
B24121m364='Hazardous materials removal workers'
B24121m365='Highway maintenance workers'
B24121m366='Rail-track laying and maintenance equipment operators'
B24121m367='Septic tank servicers and sewer pipe cleaners'
B24121m368='Miscellaneous construction and related workers, including solar photovoltaic installers'
B24121m369='Derrick, rotary drill, and service unit operators, oil, gas, and mining'
B24121m370='Earth drillers, except oil and gas'
B24121m371='Explosives workers, ordnance handling experts, and blasters'
B24121m372='Mining machine operators'
B24121m373='Roof bolters, mining'
B24121m374='Roustabouts, oil and gas'
B24121m375='Helpers--extraction workers'
B24121m376='Other extraction workers'
B24121m377='First-line supervisors of mechanics, installers, and repairers'
B24121m378='Computer, automated teller, and office machine repairers'
B24121m379='Radio and telecommunications equipment installers and repairers'
B24121m380='Avionics technicians'
B24121m381='Electric motor, power tool, and related repairers'
B24121m382='Electrical and electronics installers and repairers, transportation equipment'
B24121m383='Electrical and electronics repairers, industrial and utility'
B24121m384='Electronic equipment installers and repairers, motor vehicles'
B24121m385='Electronic home entertainment equipment installers and repairers'
B24121m386='Security and fire alarm systems installers'
B24121m387='Aircraft mechanics and service technicians'
B24121m388='Automotive body and related repairers'
B24121m389='Automotive glass installers and repairers'
B24121m390='Automotive service technicians and mechanics'
B24121m391='Bus and truck mechanics and diesel engine specialists'
B24121m392='Heavy vehicle and mobile equipment service technicians and mechanics'
B24121m393='Small engine mechanics'
B24121m394='Miscellaneous vehicle and mobile equipment mechanics, installers, and repairers'
B24121m395='Control and valve installers and repairers'
B24121m396='Heating, air conditioning, and refrigeration mechanics and installers'
B24121m397='Home appliance repairers'
B24121m398='Industrial and refractory machinery mechanics'
B24121m399='Maintenance and repair workers, general'
B24121m400='Maintenance workers, machinery'
B24121m401='Millwrights'
B24121m402='Electrical power-line installers and repairers'
B24121m403='Telecommunications line installers and repairers'
B24121m404='Precision instrument and equipment repairers'
B24121m405='Coin, vending, and amusement machine servicers and repairers'
B24121m406='Commercial divers'
B24121m407='Locksmiths and safe repairers'
B24121m408='Manufactured building and mobile home installers'
B24121m409='Riggers'
B24121m410='Signal and track switch repairers'
B24121m411='Helpers--installation, maintenance, and repair workers'
B24121m412='Other installation, maintenance, and repair workers, including wind turbine service technicians'
B24121m413='First-line supervisors of production and operating workers'
B24121m414='Aircraft structure, surfaces, rigging, and systems assemblers'
B24121m415='Electrical, electronics, and electromechanical assemblers'
B24121m416='Engine and other machine assemblers'
B24121m417='Structural metal fabricators and fitters'
B24121m418='Miscellaneous assemblers and fabricators'
B24121m419='Bakers'
B24121m420='Butchers and other meat, poultry, and fish processing workers'
B24121m421='Food and tobacco roasting, baking, and drying machine operators and tenders'
B24121m422='Food batchmakers'
B24121m423='Food cooking machine operators and tenders'
B24121m424='Food processing workers, all other'
B24121m425='Computer control programmers and operators'
B24121m426='Extruding and drawing machine setters, operators, and tenders, metal and plastic'
B24121m427='Forging machine setters, operators, and tenders, metal and plastic'
B24121m428='Rolling machine setters, operators, and tenders, metal and plastic'
B24121m429='Cutting, punching, and press machine setters, operators, and tenders, metal and plastic'
B24121m430='Drilling and boring machine tool setters, operators, and tenders, metal and plastic'
B24121m431='Grinding, lapping, polishing, and buffing machine tool setters, operators, and tenders, metal and plastic'
B24121m432='Lathe and turning machine tool setters, operators, and tenders, metal and plastic'
B24121m433='Milling and planing machine setters, operators, and tenders, metal and plastic'
B24121m434='Machinists'
B24121m435='Metal furnace operators, tenders, pourers, and casters'
B24121m436='Model makers and patternmakers, metal and plastic'
B24121m437='Molders and molding machine setters, operators, and tenders, metal and plastic'
B24121m438='Multiple machine tool setters, operators, and tenders, metal and plastic'
B24121m439='Tool and die makers'
B24121m440='Welding, soldering, and brazing workers'
B24121m441='Heat treating equipment setters, operators, and tenders, metal and plastic'
B24121m442='Layout workers, metal and plastic'
B24121m443='Plating and coating machine setters, operators, and tenders, metal and plastic'
B24121m444='Tool grinders, filers, and sharpeners'
B24121m445='Metal workers and plastic workers, all other'
B24121m446='Prepress technicians and workers'
B24121m447='Printing workers, except prepress technicians and workers'
B24121m448='Laundry and dry-cleaning workers'
B24121m449='Pressers, textile, garment, and related materials'
B24121m450='Sewing machine operators'
B24121m451='Shoe and leather workers and repairers'
B24121m452='Shoe machine operators and tenders'
B24121m453='Tailors, dressmakers, and sewers'
B24121m454='Textile bleaching and dyeing machine operators and tenders'
B24121m455='Textile cutting machine setters, operators, and tenders'
B24121m456='Textile knitting and weaving machine setters, operators, and tenders'
B24121m457='Textile winding, twisting, and drawing out machine setters, operators, and tenders'
B24121m458='Fabric and apparel patternmakers'
B24121m459='Upholsterers'
B24121m460='Miscellaneous textile, apparel, and furnishings workers, including extruding and forming machine setters, operators, and tenders, synthetic and glass fibers'
B24121m461='Cabinetmakers and bench carpenters'
B24121m462='Furniture finishers'
B24121m463='Sawing machine setters, operators, and tenders, wood'
B24121m464='Woodworking machine setters, operators, and tenders, except sawing'
B24121m465='Miscellaneous woodworkers, including model makers and patternmakers'
B24121m466='Power plant operators, distributors, and dispatchers'
B24121m467='Stationary engineers and boiler operators'
B24121m468='Water and wastewater treatment plant and system operators'
B24121m469='Miscellaneous plant and system operators'
B24121m470='Chemical processing machine setters, operators, and tenders'
B24121m471='Crushing, grinding, polishing, mixing, and blending workers'
B24121m472='Cutting workers'
B24121m473='Extruding, forming, pressing, and compacting machine setters, operators, and tenders'
B24121m474='Furnace, kiln, oven, drier, and kettle operators and tenders'
B24121m475='Inspectors, testers, sorters, samplers, and weighers'
B24121m476='Jewelers and precious stone and metal workers'
B24121m477='Medical, dental, and ophthalmic laboratory technicians'
B24121m478='Packaging and filling machine operators and tenders'
B24121m479='Painting workers'
B24121m480='Photographic process workers and processing machine operators'
B24121m481='Semiconductor processors'
B24121m482='Adhesive bonding machine operators and tenders'
B24121m483='Cleaning, washing, and metal pickling equipment operators and tenders'
B24121m484='Cooling and freezing equipment operators and tenders'
B24121m485='Etchers and engravers'
B24121m486='Molders, shapers, and casters, except metal and plastic'
B24121m487='Paper goods machine setters, operators, and tenders'
B24121m488='Tire builders'
B24121m489='Helpers--production workers'
B24121m490='Production workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24121m246
B24121m247
B24121m248
B24121m249
B24121m250
B24121m251
B24121m252
B24121m253
B24121m254
B24121m255
B24121m256
B24121m257
B24121m258
B24121m259
B24121m260
B24121m261
B24121m262
B24121m263
B24121m264
B24121m265
B24121m266
B24121m267
B24121m268
B24121m269
B24121m270
B24121m271
B24121m272
B24121m273
B24121m274
B24121m275
B24121m276
B24121m277
B24121m278
B24121m279
B24121m280
B24121m281
B24121m282
B24121m283
B24121m284
B24121m285
B24121m286
B24121m287
B24121m288
B24121m289
B24121m290
B24121m291
B24121m292
B24121m293
B24121m294
B24121m295
B24121m296
B24121m297
B24121m298
B24121m299
B24121m300
B24121m301
B24121m302
B24121m303
B24121m304
B24121m305
B24121m306
B24121m307
B24121m308
B24121m309
B24121m310
B24121m311
B24121m312
B24121m313
B24121m314
B24121m315
B24121m316
B24121m317
B24121m318
B24121m319
B24121m320
B24121m321
B24121m322
B24121m323
B24121m324
B24121m325
B24121m326
B24121m327
B24121m328
B24121m329
B24121m330
B24121m331
B24121m332
B24121m333
B24121m334
B24121m335
B24121m336
B24121m337
B24121m338
B24121m339
B24121m340
B24121m341
B24121m342
B24121m343
B24121m344
B24121m345
B24121m346
B24121m347
B24121m348
B24121m349
B24121m350
B24121m351
B24121m352
B24121m353
B24121m354
B24121m355
B24121m356
B24121m357
B24121m358
B24121m359
B24121m360
B24121m361
B24121m362
B24121m363
B24121m364
B24121m365
B24121m366
B24121m367
B24121m368
B24121m369
B24121m370
B24121m371
B24121m372
B24121m373
B24121m374
B24121m375
B24121m376
B24121m377
B24121m378
B24121m379
B24121m380
B24121m381
B24121m382
B24121m383
B24121m384
B24121m385
B24121m386
B24121m387
B24121m388
B24121m389
B24121m390
B24121m391
B24121m392
B24121m393
B24121m394
B24121m395
B24121m396
B24121m397
B24121m398
B24121m399
B24121m400
B24121m401
B24121m402
B24121m403
B24121m404
B24121m405
B24121m406
B24121m407
B24121m408
B24121m409
B24121m410
B24121m411
B24121m412
B24121m413
B24121m414
B24121m415
B24121m416
B24121m417
B24121m418
B24121m419
B24121m420
B24121m421
B24121m422
B24121m423
B24121m424
B24121m425
B24121m426
B24121m427
B24121m428
B24121m429
B24121m430
B24121m431
B24121m432
B24121m433
B24121m434
B24121m435
B24121m436
B24121m437
B24121m438
B24121m439
B24121m440
B24121m441
B24121m442
B24121m443
B24121m444
B24121m445
B24121m446
B24121m447
B24121m448
B24121m449
B24121m450
B24121m451
B24121m452
B24121m453
B24121m454
B24121m455
B24121m456
B24121m457
B24121m458
B24121m459
B24121m460
B24121m461
B24121m462
B24121m463
B24121m464
B24121m465
B24121m466
B24121m467
B24121m468
B24121m469
B24121m470
B24121m471
B24121m472
B24121m473
B24121m474
B24121m475
B24121m476
B24121m477
B24121m478
B24121m479
B24121m480
B24121m481
B24121m482
B24121m483
B24121m484
B24121m485
B24121m486
B24121m487
B24121m488
B24121m489
B24121m490
;
RUN;
TITLE2;
