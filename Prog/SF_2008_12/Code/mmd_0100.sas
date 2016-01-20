TITLE2 "m20125md0100000";
DATA work.SFm0100md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0100000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED FEMALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed female population 16 years and over */
B24126m246='Motion picture projectionists'
B24126m247='Ushers, lobby attendants, and ticket takers'
B24126m248='Miscellaneous entertainment attendants and related workers'
B24126m249='Embalmers and funeral attendants'
B24126m250='Morticians, undertakers, and funeral directors'
B24126m251='Barbers'
B24126m252='Hairdressers, hairstylists, and cosmetologists'
B24126m253='Miscellaneous personal appearance workers'
B24126m254='Baggage porters, bellhops, and concierges'
B24126m255='Tour and travel guides'
B24126m256='Childcare workers'
B24126m257='Personal care aides'
B24126m258='Recreation and fitness workers'
B24126m259='Residential advisors'
B24126m260='Personal care and service workers, all other'
B24126m261='First-line supervisors of retail sales workers'
B24126m262='First-line supervisors of non-retail sales workers'
B24126m263='Cashiers'
B24126m264='Counter and rental clerks'
B24126m265='Parts salespersons'
B24126m266='Retail salespersons'
B24126m267='Advertising sales agents'
B24126m268='Insurance sales agents'
B24126m269='Securities, commodities, and financial services sales agents'
B24126m270='Travel agents'
B24126m271='Sales representatives, services, all other'
B24126m272='Sales representatives, wholesale and manufacturing'
B24126m273='Models, demonstrators, and product promoters'
B24126m274='Real estate brokers and sales agents'
B24126m275='Sales engineers'
B24126m276='Telemarketers'
B24126m277='Door-to-door sales workers, news and street vendors, and related workers'
B24126m278='Sales and related workers, all other'
B24126m279='First-line supervisors of office and administrative support workers'
B24126m280='Switchboard operators, including answering service'
B24126m281='Telephone operators'
B24126m282='Communications equipment operators, all other'
B24126m283='Bill and account collectors'
B24126m284='Billing and posting clerks'
B24126m285='Bookkeeping, accounting, and auditing clerks'
B24126m286='Gaming cage workers'
B24126m287='Payroll and timekeeping clerks'
B24126m288='Procurement clerks'
B24126m289='Tellers'
B24126m290='Financial clerks, all other'
B24126m291='Brokerage clerks'
B24126m292='Correspondence clerks'
B24126m293='Court, municipal, and license clerks'
B24126m294='Credit authorizers, checkers, and clerks'
B24126m295='Customer service representatives'
B24126m296='Eligibility interviewers, government programs'
B24126m297='File clerks'
B24126m298='Hotel, motel, and resort desk clerks'
B24126m299='Interviewers, except eligibility and loan'
B24126m300='Library assistants, clerical'
B24126m301='Loan interviewers and clerks'
B24126m302='New accounts clerks'
B24126m303='Order clerks'
B24126m304='Human resources assistants, except payroll and timekeeping'
B24126m305='Receptionists and information clerks'
B24126m306='Reservation and transportation ticket agents and travel clerks'
B24126m307='Information and record clerks, all other'
B24126m308='Cargo and freight agents'
B24126m309='Couriers and messengers'
B24126m310='Dispatchers'
B24126m311='Meter readers, utilities'
B24126m312='Postal service clerks'
B24126m313='Postal service mail carriers'
B24126m314='Postal service mail sorters, processors, and processing machine operators'
B24126m315='Production, planning, and expediting clerks'
B24126m316='Shipping, receiving, and traffic clerks'
B24126m317='Stock clerks and order fillers'
B24126m318='Weighers, measurers, checkers, and samplers, recordkeeping'
B24126m319='Secretaries and administrative assistants'
B24126m320='Computer operators'
B24126m321='Data entry keyers'
B24126m322='Word processors and typists'
B24126m323='Desktop publishers'
B24126m324='Insurance claims and policy processing clerks'
B24126m325='Mail clerks and mail machine operators, except postal service'
B24126m326='Office clerks, general'
B24126m327='Office machine operators, except computer'
B24126m328='Proofreaders and copy markers'
B24126m329='Statistical assistants'
B24126m330='Office and administrative support workers, all other'
B24126m331='First-line supervisors of farming, fishing, and forestry workers'
B24126m332='Agricultural inspectors'
B24126m333='Animal breeders'
B24126m334='Graders and sorters, agricultural products'
B24126m335='Miscellaneous agricultural workers'
B24126m336='Fishing and hunting workers'
B24126m337='Forest and conservation workers'
B24126m338='Logging workers'
B24126m339='First-line supervisors of construction trades and extraction workers'
B24126m340='Boilermakers'
B24126m341='Brickmasons, blockmasons, and stonemasons'
B24126m342='Carpenters'
B24126m343='Carpet, floor, and tile installers and finishers'
B24126m344='Cement masons, concrete finishers, and terrazzo workers'
B24126m345='Construction laborers'
B24126m346='Paving, surfacing, and tamping equipment operators'
B24126m347='Operating engineers and other construction equipment operators, including pile-driver operators'
B24126m348='Drywall installers, ceiling tile installers, and tapers'
B24126m349='Electricians'
B24126m350='Glaziers'
B24126m351='Insulation workers'
B24126m352='Painters, construction and maintenance'
B24126m353='Paperhangers'
B24126m354='Pipelayers, plumbers, pipefitters, and steamfitters'
B24126m355='Plasterers and stucco masons'
B24126m356='Reinforcing iron and rebar workers'
B24126m357='Roofers'
B24126m358='Sheet metal workers'
B24126m359='Structural iron and steel workers'
B24126m360='Helpers, construction trades'
B24126m361='Construction and building inspectors'
B24126m362='Elevator installers and repairers'
B24126m363='Fence erectors'
B24126m364='Hazardous materials removal workers'
B24126m365='Highway maintenance workers'
B24126m366='Rail-track laying and maintenance equipment operators'
B24126m367='Septic tank servicers and sewer pipe cleaners'
B24126m368='Miscellaneous construction and related workers, including solar photovoltaic installers'
B24126m369='Derrick, rotary drill, and service unit operators, oil, gas, and mining'
B24126m370='Earth drillers, except oil and gas'
B24126m371='Explosives workers, ordnance handling experts, and blasters'
B24126m372='Mining machine operators'
B24126m373='Roof bolters, mining'
B24126m374='Roustabouts, oil and gas'
B24126m375='Helpers--extraction workers'
B24126m376='Other extraction workers'
B24126m377='First-line supervisors of mechanics, installers, and repairers'
B24126m378='Computer, automated teller, and office machine repairers'
B24126m379='Radio and telecommunications equipment installers and repairers'
B24126m380='Avionics technicians'
B24126m381='Electric motor, power tool, and related repairers'
B24126m382='Electrical and electronics installers and repairers, transportation equipment'
B24126m383='Electrical and electronics repairers, industrial and utility'
B24126m384='Electronic equipment installers and repairers, motor vehicles'
B24126m385='Electronic home entertainment equipment installers and repairers'
B24126m386='Security and fire alarm systems installers'
B24126m387='Aircraft mechanics and service technicians'
B24126m388='Automotive body and related repairers'
B24126m389='Automotive glass installers and repairers'
B24126m390='Automotive service technicians and mechanics'
B24126m391='Bus and truck mechanics and diesel engine specialists'
B24126m392='Heavy vehicle and mobile equipment service technicians and mechanics'
B24126m393='Small engine mechanics'
B24126m394='Miscellaneous vehicle and mobile equipment mechanics, installers, and repairers'
B24126m395='Control and valve installers and repairers'
B24126m396='Heating, air conditioning, and refrigeration mechanics and installers'
B24126m397='Home appliance repairers'
B24126m398='Industrial and refractory machinery mechanics'
B24126m399='Maintenance and repair workers, general'
B24126m400='Maintenance workers, machinery'
B24126m401='Millwrights'
B24126m402='Electrical power-line installers and repairers'
B24126m403='Telecommunications line installers and repairers'
B24126m404='Precision instrument and equipment repairers'
B24126m405='Coin, vending, and amusement machine servicers and repairers'
B24126m406='Commercial divers'
B24126m407='Locksmiths and safe repairers'
B24126m408='Manufactured building and mobile home installers'
B24126m409='Riggers'
B24126m410='Signal and track switch repairers'
B24126m411='Helpers--installation, maintenance, and repair workers'
B24126m412='Other installation, maintenance, and repair workers, including wind turbine service technicians'
B24126m413='First-line supervisors of production and operating workers'
B24126m414='Aircraft structure, surfaces, rigging, and systems assemblers'
B24126m415='Electrical, electronics, and electromechanical assemblers'
B24126m416='Engine and other machine assemblers'
B24126m417='Structural metal fabricators and fitters'
B24126m418='Miscellaneous assemblers and fabricators'
B24126m419='Bakers'
B24126m420='Butchers and other meat, poultry, and fish processing workers'
B24126m421='Food and tobacco roasting, baking, and drying machine operators and tenders'
B24126m422='Food batchmakers'
B24126m423='Food cooking machine operators and tenders'
B24126m424='Food processing workers, all other'
B24126m425='Computer control programmers and operators'
B24126m426='Extruding and drawing machine setters, operators, and tenders, metal and plastic'
B24126m427='Forging machine setters, operators, and tenders, metal and plastic'
B24126m428='Rolling machine setters, operators, and tenders, metal and plastic'
B24126m429='Cutting, punching, and press machine setters, operators, and tenders, metal and plastic'
B24126m430='Drilling and boring machine tool setters, operators, and tenders, metal and plastic'
B24126m431='Grinding, lapping, polishing, and buffing machine tool setters, operators, and tenders, metal and plastic'
B24126m432='Lathe and turning machine tool setters, operators, and tenders, metal and plastic'
B24126m433='Milling and planing machine setters, operators, and tenders, metal and plastic'
B24126m434='Machinists'
B24126m435='Metal furnace operators, tenders, pourers, and casters'
B24126m436='Model makers and patternmakers, metal and plastic'
B24126m437='Molders and molding machine setters, operators, and tenders, metal and plastic'
B24126m438='Multiple machine tool setters, operators, and tenders, metal and plastic'
B24126m439='Tool and die makers'
B24126m440='Welding, soldering, and brazing workers'
B24126m441='Heat treating equipment setters, operators, and tenders, metal and plastic'
B24126m442='Layout workers, metal and plastic'
B24126m443='Plating and coating machine setters, operators, and tenders, metal and plastic'
B24126m444='Tool grinders, filers, and sharpeners'
B24126m445='Metal workers and plastic workers, all other'
B24126m446='Prepress technicians and workers'
B24126m447='Printing workers, except prepress technicians and workers'
B24126m448='Laundry and dry-cleaning workers'
B24126m449='Pressers, textile, garment, and related materials'
B24126m450='Sewing machine operators'
B24126m451='Shoe and leather workers and repairers'
B24126m452='Shoe machine operators and tenders'
B24126m453='Tailors, dressmakers, and sewers'
B24126m454='Textile bleaching and dyeing machine operators and tenders'
B24126m455='Textile cutting machine setters, operators, and tenders'
B24126m456='Textile knitting and weaving machine setters, operators, and tenders'
B24126m457='Textile winding, twisting, and drawing out machine setters, operators, and tenders'
B24126m458='Fabric and apparel patternmakers'
B24126m459='Upholsterers'
B24126m460='Miscellaneous textile, apparel, and furnishings workers, including extruding and forming machine setters, operators, and tenders, synthetic and glass fibers'
B24126m461='Cabinetmakers and bench carpenters'
B24126m462='Furniture finishers'
B24126m463='Sawing machine setters, operators, and tenders, wood'
B24126m464='Woodworking machine setters, operators, and tenders, except sawing'
B24126m465='Miscellaneous woodworkers, including model makers and patternmakers'
B24126m466='Power plant operators, distributors, and dispatchers'
B24126m467='Stationary engineers and boiler operators'
B24126m468='Water and wastewater treatment plant and system operators'
B24126m469='Miscellaneous plant and system operators'
B24126m470='Chemical processing machine setters, operators, and tenders'
B24126m471='Crushing, grinding, polishing, mixing, and blending workers'
B24126m472='Cutting workers'
B24126m473='Extruding, forming, pressing, and compacting machine setters, operators, and tenders'
B24126m474='Furnace, kiln, oven, drier, and kettle operators and tenders'
B24126m475='Inspectors, testers, sorters, samplers, and weighers'
B24126m476='Jewelers and precious stone and metal workers'
B24126m477='Medical, dental, and ophthalmic laboratory technicians'
B24126m478='Packaging and filling machine operators and tenders'
B24126m479='Painting workers'
B24126m480='Photographic process workers and processing machine operators'
B24126m481='Semiconductor processors'
B24126m482='Adhesive bonding machine operators and tenders'
B24126m483='Cleaning, washing, and metal pickling equipment operators and tenders'
B24126m484='Cooling and freezing equipment operators and tenders'
B24126m485='Etchers and engravers'
B24126m486='Molders, shapers, and casters, except metal and plastic'
B24126m487='Paper goods machine setters, operators, and tenders'
B24126m488='Tire builders'
B24126m489='Helpers--production workers'
B24126m490='Production workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24126m246
B24126m247
B24126m248
B24126m249
B24126m250
B24126m251
B24126m252
B24126m253
B24126m254
B24126m255
B24126m256
B24126m257
B24126m258
B24126m259
B24126m260
B24126m261
B24126m262
B24126m263
B24126m264
B24126m265
B24126m266
B24126m267
B24126m268
B24126m269
B24126m270
B24126m271
B24126m272
B24126m273
B24126m274
B24126m275
B24126m276
B24126m277
B24126m278
B24126m279
B24126m280
B24126m281
B24126m282
B24126m283
B24126m284
B24126m285
B24126m286
B24126m287
B24126m288
B24126m289
B24126m290
B24126m291
B24126m292
B24126m293
B24126m294
B24126m295
B24126m296
B24126m297
B24126m298
B24126m299
B24126m300
B24126m301
B24126m302
B24126m303
B24126m304
B24126m305
B24126m306
B24126m307
B24126m308
B24126m309
B24126m310
B24126m311
B24126m312
B24126m313
B24126m314
B24126m315
B24126m316
B24126m317
B24126m318
B24126m319
B24126m320
B24126m321
B24126m322
B24126m323
B24126m324
B24126m325
B24126m326
B24126m327
B24126m328
B24126m329
B24126m330
B24126m331
B24126m332
B24126m333
B24126m334
B24126m335
B24126m336
B24126m337
B24126m338
B24126m339
B24126m340
B24126m341
B24126m342
B24126m343
B24126m344
B24126m345
B24126m346
B24126m347
B24126m348
B24126m349
B24126m350
B24126m351
B24126m352
B24126m353
B24126m354
B24126m355
B24126m356
B24126m357
B24126m358
B24126m359
B24126m360
B24126m361
B24126m362
B24126m363
B24126m364
B24126m365
B24126m366
B24126m367
B24126m368
B24126m369
B24126m370
B24126m371
B24126m372
B24126m373
B24126m374
B24126m375
B24126m376
B24126m377
B24126m378
B24126m379
B24126m380
B24126m381
B24126m382
B24126m383
B24126m384
B24126m385
B24126m386
B24126m387
B24126m388
B24126m389
B24126m390
B24126m391
B24126m392
B24126m393
B24126m394
B24126m395
B24126m396
B24126m397
B24126m398
B24126m399
B24126m400
B24126m401
B24126m402
B24126m403
B24126m404
B24126m405
B24126m406
B24126m407
B24126m408
B24126m409
B24126m410
B24126m411
B24126m412
B24126m413
B24126m414
B24126m415
B24126m416
B24126m417
B24126m418
B24126m419
B24126m420
B24126m421
B24126m422
B24126m423
B24126m424
B24126m425
B24126m426
B24126m427
B24126m428
B24126m429
B24126m430
B24126m431
B24126m432
B24126m433
B24126m434
B24126m435
B24126m436
B24126m437
B24126m438
B24126m439
B24126m440
B24126m441
B24126m442
B24126m443
B24126m444
B24126m445
B24126m446
B24126m447
B24126m448
B24126m449
B24126m450
B24126m451
B24126m452
B24126m453
B24126m454
B24126m455
B24126m456
B24126m457
B24126m458
B24126m459
B24126m460
B24126m461
B24126m462
B24126m463
B24126m464
B24126m465
B24126m466
B24126m467
B24126m468
B24126m469
B24126m470
B24126m471
B24126m472
B24126m473
B24126m474
B24126m475
B24126m476
B24126m477
B24126m478
B24126m479
B24126m480
B24126m481
B24126m482
B24126m483
B24126m484
B24126m485
B24126m486
B24126m487
B24126m488
B24126m489
B24126m490
;
RUN;
TITLE2;
