TITLE2 "m20125dc0091000";
DATA work.SFm0091dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0091000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED FEMALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed female population 16 years and over with earnings */
B24123m246='Motion picture projectionists'
B24123m247='Ushers, lobby attendants, and ticket takers'
B24123m248='Miscellaneous entertainment attendants and related workers'
B24123m249='Embalmers and funeral attendants'
B24123m250='Morticians, undertakers, and funeral directors'
B24123m251='Barbers'
B24123m252='Hairdressers, hairstylists, and cosmetologists'
B24123m253='Miscellaneous personal appearance workers'
B24123m254='Baggage porters, bellhops, and concierges'
B24123m255='Tour and travel guides'
B24123m256='Childcare workers'
B24123m257='Personal care aides'
B24123m258='Recreation and fitness workers'
B24123m259='Residential advisors'
B24123m260='Personal care and service workers, all other'
B24123m261='First-line supervisors of retail sales workers'
B24123m262='First-line supervisors of non-retail sales workers'
B24123m263='Cashiers'
B24123m264='Counter and rental clerks'
B24123m265='Parts salespersons'
B24123m266='Retail salespersons'
B24123m267='Advertising sales agents'
B24123m268='Insurance sales agents'
B24123m269='Securities, commodities, and financial services sales agents'
B24123m270='Travel agents'
B24123m271='Sales representatives, services, all other'
B24123m272='Sales representatives, wholesale and manufacturing'
B24123m273='Models, demonstrators, and product promoters'
B24123m274='Real estate brokers and sales agents'
B24123m275='Sales engineers'
B24123m276='Telemarketers'
B24123m277='Door-to-door sales workers, news and street vendors, and related workers'
B24123m278='Sales and related workers, all other'
B24123m279='First-line supervisors of office and administrative support workers'
B24123m280='Switchboard operators, including answering service'
B24123m281='Telephone operators'
B24123m282='Communications equipment operators, all other'
B24123m283='Bill and account collectors'
B24123m284='Billing and posting clerks'
B24123m285='Bookkeeping, accounting, and auditing clerks'
B24123m286='Gaming cage workers'
B24123m287='Payroll and timekeeping clerks'
B24123m288='Procurement clerks'
B24123m289='Tellers'
B24123m290='Financial clerks, all other'
B24123m291='Brokerage clerks'
B24123m292='Correspondence clerks'
B24123m293='Court, municipal, and license clerks'
B24123m294='Credit authorizers, checkers, and clerks'
B24123m295='Customer service representatives'
B24123m296='Eligibility interviewers, government programs'
B24123m297='File clerks'
B24123m298='Hotel, motel, and resort desk clerks'
B24123m299='Interviewers, except eligibility and loan'
B24123m300='Library assistants, clerical'
B24123m301='Loan interviewers and clerks'
B24123m302='New accounts clerks'
B24123m303='Order clerks'
B24123m304='Human resources assistants, except payroll and timekeeping'
B24123m305='Receptionists and information clerks'
B24123m306='Reservation and transportation ticket agents and travel clerks'
B24123m307='Information and record clerks, all other'
B24123m308='Cargo and freight agents'
B24123m309='Couriers and messengers'
B24123m310='Dispatchers'
B24123m311='Meter readers, utilities'
B24123m312='Postal service clerks'
B24123m313='Postal service mail carriers'
B24123m314='Postal service mail sorters, processors, and processing machine operators'
B24123m315='Production, planning, and expediting clerks'
B24123m316='Shipping, receiving, and traffic clerks'
B24123m317='Stock clerks and order fillers'
B24123m318='Weighers, measurers, checkers, and samplers, recordkeeping'
B24123m319='Secretaries and administrative assistants'
B24123m320='Computer operators'
B24123m321='Data entry keyers'
B24123m322='Word processors and typists'
B24123m323='Desktop publishers'
B24123m324='Insurance claims and policy processing clerks'
B24123m325='Mail clerks and mail machine operators, except postal service'
B24123m326='Office clerks, general'
B24123m327='Office machine operators, except computer'
B24123m328='Proofreaders and copy markers'
B24123m329='Statistical assistants'
B24123m330='Office and administrative support workers, all other'
B24123m331='First-line supervisors of farming, fishing, and forestry workers'
B24123m332='Agricultural inspectors'
B24123m333='Animal breeders'
B24123m334='Graders and sorters, agricultural products'
B24123m335='Miscellaneous agricultural workers'
B24123m336='Fishing and hunting workers'
B24123m337='Forest and conservation workers'
B24123m338='Logging workers'
B24123m339='First-line supervisors of construction trades and extraction workers'
B24123m340='Boilermakers'
B24123m341='Brickmasons, blockmasons, and stonemasons'
B24123m342='Carpenters'
B24123m343='Carpet, floor, and tile installers and finishers'
B24123m344='Cement masons, concrete finishers, and terrazzo workers'
B24123m345='Construction laborers'
B24123m346='Paving, surfacing, and tamping equipment operators'
B24123m347='Operating engineers and other construction equipment operators, including pile-driver operators'
B24123m348='Drywall installers, ceiling tile installers, and tapers'
B24123m349='Electricians'
B24123m350='Glaziers'
B24123m351='Insulation workers'
B24123m352='Painters, construction and maintenance'
B24123m353='Paperhangers'
B24123m354='Pipelayers, plumbers, pipefitters, and steamfitters'
B24123m355='Plasterers and stucco masons'
B24123m356='Reinforcing iron and rebar workers'
B24123m357='Roofers'
B24123m358='Sheet metal workers'
B24123m359='Structural iron and steel workers'
B24123m360='Helpers, construction trades'
B24123m361='Construction and building inspectors'
B24123m362='Elevator installers and repairers'
B24123m363='Fence erectors'
B24123m364='Hazardous materials removal workers'
B24123m365='Highway maintenance workers'
B24123m366='Rail-track laying and maintenance equipment operators'
B24123m367='Septic tank servicers and sewer pipe cleaners'
B24123m368='Miscellaneous construction and related workers, including solar photovoltaic installers'
B24123m369='Derrick, rotary drill, and service unit operators, oil, gas, and mining'
B24123m370='Earth drillers, except oil and gas'
B24123m371='Explosives workers, ordnance handling experts, and blasters'
B24123m372='Mining machine operators'
B24123m373='Roof bolters, mining'
B24123m374='Roustabouts, oil and gas'
B24123m375='Helpers--extraction workers'
B24123m376='Other extraction workers'
B24123m377='First-line supervisors of mechanics, installers, and repairers'
B24123m378='Computer, automated teller, and office machine repairers'
B24123m379='Radio and telecommunications equipment installers and repairers'
B24123m380='Avionics technicians'
B24123m381='Electric motor, power tool, and related repairers'
B24123m382='Electrical and electronics installers and repairers, transportation equipment'
B24123m383='Electrical and electronics repairers, industrial and utility'
B24123m384='Electronic equipment installers and repairers, motor vehicles'
B24123m385='Electronic home entertainment equipment installers and repairers'
B24123m386='Security and fire alarm systems installers'
B24123m387='Aircraft mechanics and service technicians'
B24123m388='Automotive body and related repairers'
B24123m389='Automotive glass installers and repairers'
B24123m390='Automotive service technicians and mechanics'
B24123m391='Bus and truck mechanics and diesel engine specialists'
B24123m392='Heavy vehicle and mobile equipment service technicians and mechanics'
B24123m393='Small engine mechanics'
B24123m394='Miscellaneous vehicle and mobile equipment mechanics, installers, and repairers'
B24123m395='Control and valve installers and repairers'
B24123m396='Heating, air conditioning, and refrigeration mechanics and installers'
B24123m397='Home appliance repairers'
B24123m398='Industrial and refractory machinery mechanics'
B24123m399='Maintenance and repair workers, general'
B24123m400='Maintenance workers, machinery'
B24123m401='Millwrights'
B24123m402='Electrical power-line installers and repairers'
B24123m403='Telecommunications line installers and repairers'
B24123m404='Precision instrument and equipment repairers'
B24123m405='Coin, vending, and amusement machine servicers and repairers'
B24123m406='Commercial divers'
B24123m407='Locksmiths and safe repairers'
B24123m408='Manufactured building and mobile home installers'
B24123m409='Riggers'
B24123m410='Signal and track switch repairers'
B24123m411='Helpers--installation, maintenance, and repair workers'
B24123m412='Other installation, maintenance, and repair workers, including wind turbine service technicians'
B24123m413='First-line supervisors of production and operating workers'
B24123m414='Aircraft structure, surfaces, rigging, and systems assemblers'
B24123m415='Electrical, electronics, and electromechanical assemblers'
B24123m416='Engine and other machine assemblers'
B24123m417='Structural metal fabricators and fitters'
B24123m418='Miscellaneous assemblers and fabricators'
B24123m419='Bakers'
B24123m420='Butchers and other meat, poultry, and fish processing workers'
B24123m421='Food and tobacco roasting, baking, and drying machine operators and tenders'
B24123m422='Food batchmakers'
B24123m423='Food cooking machine operators and tenders'
B24123m424='Food processing workers, all other'
B24123m425='Computer control programmers and operators'
B24123m426='Extruding and drawing machine setters, operators, and tenders, metal and plastic'
B24123m427='Forging machine setters, operators, and tenders, metal and plastic'
B24123m428='Rolling machine setters, operators, and tenders, metal and plastic'
B24123m429='Cutting, punching, and press machine setters, operators, and tenders, metal and plastic'
B24123m430='Drilling and boring machine tool setters, operators, and tenders, metal and plastic'
B24123m431='Grinding, lapping, polishing, and buffing machine tool setters, operators, and tenders, metal and plastic'
B24123m432='Lathe and turning machine tool setters, operators, and tenders, metal and plastic'
B24123m433='Milling and planing machine setters, operators, and tenders, metal and plastic'
B24123m434='Machinists'
B24123m435='Metal furnace operators, tenders, pourers, and casters'
B24123m436='Model makers and patternmakers, metal and plastic'
B24123m437='Molders and molding machine setters, operators, and tenders, metal and plastic'
B24123m438='Multiple machine tool setters, operators, and tenders, metal and plastic'
B24123m439='Tool and die makers'
B24123m440='Welding, soldering, and brazing workers'
B24123m441='Heat treating equipment setters, operators, and tenders, metal and plastic'
B24123m442='Layout workers, metal and plastic'
B24123m443='Plating and coating machine setters, operators, and tenders, metal and plastic'
B24123m444='Tool grinders, filers, and sharpeners'
B24123m445='Metal workers and plastic workers, all other'
B24123m446='Prepress technicians and workers'
B24123m447='Printing workers, except prepress technicians and workers'
B24123m448='Laundry and dry-cleaning workers'
B24123m449='Pressers, textile, garment, and related materials'
B24123m450='Sewing machine operators'
B24123m451='Shoe and leather workers and repairers'
B24123m452='Shoe machine operators and tenders'
B24123m453='Tailors, dressmakers, and sewers'
B24123m454='Textile bleaching and dyeing machine operators and tenders'
B24123m455='Textile cutting machine setters, operators, and tenders'
B24123m456='Textile knitting and weaving machine setters, operators, and tenders'
B24123m457='Textile winding, twisting, and drawing out machine setters, operators, and tenders'
B24123m458='Fabric and apparel patternmakers'
B24123m459='Upholsterers'
B24123m460='Miscellaneous textile, apparel, and furnishings workers, including extruding and forming machine setters, operators, and tenders, synthetic and glass fibers'
B24123m461='Cabinetmakers and bench carpenters'
B24123m462='Furniture finishers'
B24123m463='Sawing machine setters, operators, and tenders, wood'
B24123m464='Woodworking machine setters, operators, and tenders, except sawing'
B24123m465='Miscellaneous woodworkers, including model makers and patternmakers'
B24123m466='Power plant operators, distributors, and dispatchers'
B24123m467='Stationary engineers and boiler operators'
B24123m468='Water and wastewater treatment plant and system operators'
B24123m469='Miscellaneous plant and system operators'
B24123m470='Chemical processing machine setters, operators, and tenders'
B24123m471='Crushing, grinding, polishing, mixing, and blending workers'
B24123m472='Cutting workers'
B24123m473='Extruding, forming, pressing, and compacting machine setters, operators, and tenders'
B24123m474='Furnace, kiln, oven, drier, and kettle operators and tenders'
B24123m475='Inspectors, testers, sorters, samplers, and weighers'
B24123m476='Jewelers and precious stone and metal workers'
B24123m477='Medical, dental, and ophthalmic laboratory technicians'
B24123m478='Packaging and filling machine operators and tenders'
B24123m479='Painting workers'
B24123m480='Photographic process workers and processing machine operators'
B24123m481='Semiconductor processors'
B24123m482='Adhesive bonding machine operators and tenders'
B24123m483='Cleaning, washing, and metal pickling equipment operators and tenders'
B24123m484='Cooling and freezing equipment operators and tenders'
B24123m485='Etchers and engravers'
B24123m486='Molders, shapers, and casters, except metal and plastic'
B24123m487='Paper goods machine setters, operators, and tenders'
B24123m488='Tire builders'
B24123m489='Helpers--production workers'
B24123m490='Production workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24123m246
B24123m247
B24123m248
B24123m249
B24123m250
B24123m251
B24123m252
B24123m253
B24123m254
B24123m255
B24123m256
B24123m257
B24123m258
B24123m259
B24123m260
B24123m261
B24123m262
B24123m263
B24123m264
B24123m265
B24123m266
B24123m267
B24123m268
B24123m269
B24123m270
B24123m271
B24123m272
B24123m273
B24123m274
B24123m275
B24123m276
B24123m277
B24123m278
B24123m279
B24123m280
B24123m281
B24123m282
B24123m283
B24123m284
B24123m285
B24123m286
B24123m287
B24123m288
B24123m289
B24123m290
B24123m291
B24123m292
B24123m293
B24123m294
B24123m295
B24123m296
B24123m297
B24123m298
B24123m299
B24123m300
B24123m301
B24123m302
B24123m303
B24123m304
B24123m305
B24123m306
B24123m307
B24123m308
B24123m309
B24123m310
B24123m311
B24123m312
B24123m313
B24123m314
B24123m315
B24123m316
B24123m317
B24123m318
B24123m319
B24123m320
B24123m321
B24123m322
B24123m323
B24123m324
B24123m325
B24123m326
B24123m327
B24123m328
B24123m329
B24123m330
B24123m331
B24123m332
B24123m333
B24123m334
B24123m335
B24123m336
B24123m337
B24123m338
B24123m339
B24123m340
B24123m341
B24123m342
B24123m343
B24123m344
B24123m345
B24123m346
B24123m347
B24123m348
B24123m349
B24123m350
B24123m351
B24123m352
B24123m353
B24123m354
B24123m355
B24123m356
B24123m357
B24123m358
B24123m359
B24123m360
B24123m361
B24123m362
B24123m363
B24123m364
B24123m365
B24123m366
B24123m367
B24123m368
B24123m369
B24123m370
B24123m371
B24123m372
B24123m373
B24123m374
B24123m375
B24123m376
B24123m377
B24123m378
B24123m379
B24123m380
B24123m381
B24123m382
B24123m383
B24123m384
B24123m385
B24123m386
B24123m387
B24123m388
B24123m389
B24123m390
B24123m391
B24123m392
B24123m393
B24123m394
B24123m395
B24123m396
B24123m397
B24123m398
B24123m399
B24123m400
B24123m401
B24123m402
B24123m403
B24123m404
B24123m405
B24123m406
B24123m407
B24123m408
B24123m409
B24123m410
B24123m411
B24123m412
B24123m413
B24123m414
B24123m415
B24123m416
B24123m417
B24123m418
B24123m419
B24123m420
B24123m421
B24123m422
B24123m423
B24123m424
B24123m425
B24123m426
B24123m427
B24123m428
B24123m429
B24123m430
B24123m431
B24123m432
B24123m433
B24123m434
B24123m435
B24123m436
B24123m437
B24123m438
B24123m439
B24123m440
B24123m441
B24123m442
B24123m443
B24123m444
B24123m445
B24123m446
B24123m447
B24123m448
B24123m449
B24123m450
B24123m451
B24123m452
B24123m453
B24123m454
B24123m455
B24123m456
B24123m457
B24123m458
B24123m459
B24123m460
B24123m461
B24123m462
B24123m463
B24123m464
B24123m465
B24123m466
B24123m467
B24123m468
B24123m469
B24123m470
B24123m471
B24123m472
B24123m473
B24123m474
B24123m475
B24123m476
B24123m477
B24123m478
B24123m479
B24123m480
B24123m481
B24123m482
B24123m483
B24123m484
B24123m485
B24123m486
B24123m487
B24123m488
B24123m489
B24123m490
;
RUN;
TITLE2;
