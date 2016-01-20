TITLE2 "m20125dc0094000";
DATA work.SFm0094dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0094000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over */
B24124m246='Motion picture projectionists'
B24124m247='Ushers, lobby attendants, and ticket takers'
B24124m248='Miscellaneous entertainment attendants and related workers'
B24124m249='Embalmers and funeral attendants'
B24124m250='Morticians, undertakers, and funeral directors'
B24124m251='Barbers'
B24124m252='Hairdressers, hairstylists, and cosmetologists'
B24124m253='Miscellaneous personal appearance workers'
B24124m254='Baggage porters, bellhops, and concierges'
B24124m255='Tour and travel guides'
B24124m256='Childcare workers'
B24124m257='Personal care aides'
B24124m258='Recreation and fitness workers'
B24124m259='Residential advisors'
B24124m260='Personal care and service workers, all other'
B24124m261='First-line supervisors of retail sales workers'
B24124m262='First-line supervisors of non-retail sales workers'
B24124m263='Cashiers'
B24124m264='Counter and rental clerks'
B24124m265='Parts salespersons'
B24124m266='Retail salespersons'
B24124m267='Advertising sales agents'
B24124m268='Insurance sales agents'
B24124m269='Securities, commodities, and financial services sales agents'
B24124m270='Travel agents'
B24124m271='Sales representatives, services, all other'
B24124m272='Sales representatives, wholesale and manufacturing'
B24124m273='Models, demonstrators, and product promoters'
B24124m274='Real estate brokers and sales agents'
B24124m275='Sales engineers'
B24124m276='Telemarketers'
B24124m277='Door-to-door sales workers, news and street vendors, and related workers'
B24124m278='Sales and related workers, all other'
B24124m279='First-line supervisors of office and administrative support workers'
B24124m280='Switchboard operators, including answering service'
B24124m281='Telephone operators'
B24124m282='Communications equipment operators, all other'
B24124m283='Bill and account collectors'
B24124m284='Billing and posting clerks'
B24124m285='Bookkeeping, accounting, and auditing clerks'
B24124m286='Gaming cage workers'
B24124m287='Payroll and timekeeping clerks'
B24124m288='Procurement clerks'
B24124m289='Tellers'
B24124m290='Financial clerks, all other'
B24124m291='Brokerage clerks'
B24124m292='Correspondence clerks'
B24124m293='Court, municipal, and license clerks'
B24124m294='Credit authorizers, checkers, and clerks'
B24124m295='Customer service representatives'
B24124m296='Eligibility interviewers, government programs'
B24124m297='File clerks'
B24124m298='Hotel, motel, and resort desk clerks'
B24124m299='Interviewers, except eligibility and loan'
B24124m300='Library assistants, clerical'
B24124m301='Loan interviewers and clerks'
B24124m302='New accounts clerks'
B24124m303='Order clerks'
B24124m304='Human resources assistants, except payroll and timekeeping'
B24124m305='Receptionists and information clerks'
B24124m306='Reservation and transportation ticket agents and travel clerks'
B24124m307='Information and record clerks, all other'
B24124m308='Cargo and freight agents'
B24124m309='Couriers and messengers'
B24124m310='Dispatchers'
B24124m311='Meter readers, utilities'
B24124m312='Postal service clerks'
B24124m313='Postal service mail carriers'
B24124m314='Postal service mail sorters, processors, and processing machine operators'
B24124m315='Production, planning, and expediting clerks'
B24124m316='Shipping, receiving, and traffic clerks'
B24124m317='Stock clerks and order fillers'
B24124m318='Weighers, measurers, checkers, and samplers, recordkeeping'
B24124m319='Secretaries and administrative assistants'
B24124m320='Computer operators'
B24124m321='Data entry keyers'
B24124m322='Word processors and typists'
B24124m323='Desktop publishers'
B24124m324='Insurance claims and policy processing clerks'
B24124m325='Mail clerks and mail machine operators, except postal service'
B24124m326='Office clerks, general'
B24124m327='Office machine operators, except computer'
B24124m328='Proofreaders and copy markers'
B24124m329='Statistical assistants'
B24124m330='Office and administrative support workers, all other'
B24124m331='First-line supervisors of farming, fishing, and forestry workers'
B24124m332='Agricultural inspectors'
B24124m333='Animal breeders'
B24124m334='Graders and sorters, agricultural products'
B24124m335='Miscellaneous agricultural workers'
B24124m336='Fishing and hunting workers'
B24124m337='Forest and conservation workers'
B24124m338='Logging workers'
B24124m339='First-line supervisors of construction trades and extraction workers'
B24124m340='Boilermakers'
B24124m341='Brickmasons, blockmasons, and stonemasons'
B24124m342='Carpenters'
B24124m343='Carpet, floor, and tile installers and finishers'
B24124m344='Cement masons, concrete finishers, and terrazzo workers'
B24124m345='Construction laborers'
B24124m346='Paving, surfacing, and tamping equipment operators'
B24124m347='Operating engineers and other construction equipment operators, including pile-driver operators'
B24124m348='Drywall installers, ceiling tile installers, and tapers'
B24124m349='Electricians'
B24124m350='Glaziers'
B24124m351='Insulation workers'
B24124m352='Painters, construction and maintenance'
B24124m353='Paperhangers'
B24124m354='Pipelayers, plumbers, pipefitters, and steamfitters'
B24124m355='Plasterers and stucco masons'
B24124m356='Reinforcing iron and rebar workers'
B24124m357='Roofers'
B24124m358='Sheet metal workers'
B24124m359='Structural iron and steel workers'
B24124m360='Helpers, construction trades'
B24124m361='Construction and building inspectors'
B24124m362='Elevator installers and repairers'
B24124m363='Fence erectors'
B24124m364='Hazardous materials removal workers'
B24124m365='Highway maintenance workers'
B24124m366='Rail-track laying and maintenance equipment operators'
B24124m367='Septic tank servicers and sewer pipe cleaners'
B24124m368='Miscellaneous construction and related workers, including solar photovoltaic installers'
B24124m369='Derrick, rotary drill, and service unit operators, oil, gas, and mining'
B24124m370='Earth drillers, except oil and gas'
B24124m371='Explosives workers, ordnance handling experts, and blasters'
B24124m372='Mining machine operators'
B24124m373='Roof bolters, mining'
B24124m374='Roustabouts, oil and gas'
B24124m375='Helpers--extraction workers'
B24124m376='Other extraction workers'
B24124m377='First-line supervisors of mechanics, installers, and repairers'
B24124m378='Computer, automated teller, and office machine repairers'
B24124m379='Radio and telecommunications equipment installers and repairers'
B24124m380='Avionics technicians'
B24124m381='Electric motor, power tool, and related repairers'
B24124m382='Electrical and electronics installers and repairers, transportation equipment'
B24124m383='Electrical and electronics repairers, industrial and utility'
B24124m384='Electronic equipment installers and repairers, motor vehicles'
B24124m385='Electronic home entertainment equipment installers and repairers'
B24124m386='Security and fire alarm systems installers'
B24124m387='Aircraft mechanics and service technicians'
B24124m388='Automotive body and related repairers'
B24124m389='Automotive glass installers and repairers'
B24124m390='Automotive service technicians and mechanics'
B24124m391='Bus and truck mechanics and diesel engine specialists'
B24124m392='Heavy vehicle and mobile equipment service technicians and mechanics'
B24124m393='Small engine mechanics'
B24124m394='Miscellaneous vehicle and mobile equipment mechanics, installers, and repairers'
B24124m395='Control and valve installers and repairers'
B24124m396='Heating, air conditioning, and refrigeration mechanics and installers'
B24124m397='Home appliance repairers'
B24124m398='Industrial and refractory machinery mechanics'
B24124m399='Maintenance and repair workers, general'
B24124m400='Maintenance workers, machinery'
B24124m401='Millwrights'
B24124m402='Electrical power-line installers and repairers'
B24124m403='Telecommunications line installers and repairers'
B24124m404='Precision instrument and equipment repairers'
B24124m405='Coin, vending, and amusement machine servicers and repairers'
B24124m406='Commercial divers'
B24124m407='Locksmiths and safe repairers'
B24124m408='Manufactured building and mobile home installers'
B24124m409='Riggers'
B24124m410='Signal and track switch repairers'
B24124m411='Helpers--installation, maintenance, and repair workers'
B24124m412='Other installation, maintenance, and repair workers, including wind turbine service technicians'
B24124m413='First-line supervisors of production and operating workers'
B24124m414='Aircraft structure, surfaces, rigging, and systems assemblers'
B24124m415='Electrical, electronics, and electromechanical assemblers'
B24124m416='Engine and other machine assemblers'
B24124m417='Structural metal fabricators and fitters'
B24124m418='Miscellaneous assemblers and fabricators'
B24124m419='Bakers'
B24124m420='Butchers and other meat, poultry, and fish processing workers'
B24124m421='Food and tobacco roasting, baking, and drying machine operators and tenders'
B24124m422='Food batchmakers'
B24124m423='Food cooking machine operators and tenders'
B24124m424='Food processing workers, all other'
B24124m425='Computer control programmers and operators'
B24124m426='Extruding and drawing machine setters, operators, and tenders, metal and plastic'
B24124m427='Forging machine setters, operators, and tenders, metal and plastic'
B24124m428='Rolling machine setters, operators, and tenders, metal and plastic'
B24124m429='Cutting, punching, and press machine setters, operators, and tenders, metal and plastic'
B24124m430='Drilling and boring machine tool setters, operators, and tenders, metal and plastic'
B24124m431='Grinding, lapping, polishing, and buffing machine tool setters, operators, and tenders, metal and plastic'
B24124m432='Lathe and turning machine tool setters, operators, and tenders, metal and plastic'
B24124m433='Milling and planing machine setters, operators, and tenders, metal and plastic'
B24124m434='Machinists'
B24124m435='Metal furnace operators, tenders, pourers, and casters'
B24124m436='Model makers and patternmakers, metal and plastic'
B24124m437='Molders and molding machine setters, operators, and tenders, metal and plastic'
B24124m438='Multiple machine tool setters, operators, and tenders, metal and plastic'
B24124m439='Tool and die makers'
B24124m440='Welding, soldering, and brazing workers'
B24124m441='Heat treating equipment setters, operators, and tenders, metal and plastic'
B24124m442='Layout workers, metal and plastic'
B24124m443='Plating and coating machine setters, operators, and tenders, metal and plastic'
B24124m444='Tool grinders, filers, and sharpeners'
B24124m445='Metal workers and plastic workers, all other'
B24124m446='Prepress technicians and workers'
B24124m447='Printing workers, except prepress technicians and workers'
B24124m448='Laundry and dry-cleaning workers'
B24124m449='Pressers, textile, garment, and related materials'
B24124m450='Sewing machine operators'
B24124m451='Shoe and leather workers and repairers'
B24124m452='Shoe machine operators and tenders'
B24124m453='Tailors, dressmakers, and sewers'
B24124m454='Textile bleaching and dyeing machine operators and tenders'
B24124m455='Textile cutting machine setters, operators, and tenders'
B24124m456='Textile knitting and weaving machine setters, operators, and tenders'
B24124m457='Textile winding, twisting, and drawing out machine setters, operators, and tenders'
B24124m458='Fabric and apparel patternmakers'
B24124m459='Upholsterers'
B24124m460='Miscellaneous textile, apparel, and furnishings workers, including extruding and forming machine setters, operators, and tenders, synthetic and glass fibers'
B24124m461='Cabinetmakers and bench carpenters'
B24124m462='Furniture finishers'
B24124m463='Sawing machine setters, operators, and tenders, wood'
B24124m464='Woodworking machine setters, operators, and tenders, except sawing'
B24124m465='Miscellaneous woodworkers, including model makers and patternmakers'
B24124m466='Power plant operators, distributors, and dispatchers'
B24124m467='Stationary engineers and boiler operators'
B24124m468='Water and wastewater treatment plant and system operators'
B24124m469='Miscellaneous plant and system operators'
B24124m470='Chemical processing machine setters, operators, and tenders'
B24124m471='Crushing, grinding, polishing, mixing, and blending workers'
B24124m472='Cutting workers'
B24124m473='Extruding, forming, pressing, and compacting machine setters, operators, and tenders'
B24124m474='Furnace, kiln, oven, drier, and kettle operators and tenders'
B24124m475='Inspectors, testers, sorters, samplers, and weighers'
B24124m476='Jewelers and precious stone and metal workers'
B24124m477='Medical, dental, and ophthalmic laboratory technicians'
B24124m478='Packaging and filling machine operators and tenders'
B24124m479='Painting workers'
B24124m480='Photographic process workers and processing machine operators'
B24124m481='Semiconductor processors'
B24124m482='Adhesive bonding machine operators and tenders'
B24124m483='Cleaning, washing, and metal pickling equipment operators and tenders'
B24124m484='Cooling and freezing equipment operators and tenders'
B24124m485='Etchers and engravers'
B24124m486='Molders, shapers, and casters, except metal and plastic'
B24124m487='Paper goods machine setters, operators, and tenders'
B24124m488='Tire builders'
B24124m489='Helpers--production workers'
B24124m490='Production workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24124m246
B24124m247
B24124m248
B24124m249
B24124m250
B24124m251
B24124m252
B24124m253
B24124m254
B24124m255
B24124m256
B24124m257
B24124m258
B24124m259
B24124m260
B24124m261
B24124m262
B24124m263
B24124m264
B24124m265
B24124m266
B24124m267
B24124m268
B24124m269
B24124m270
B24124m271
B24124m272
B24124m273
B24124m274
B24124m275
B24124m276
B24124m277
B24124m278
B24124m279
B24124m280
B24124m281
B24124m282
B24124m283
B24124m284
B24124m285
B24124m286
B24124m287
B24124m288
B24124m289
B24124m290
B24124m291
B24124m292
B24124m293
B24124m294
B24124m295
B24124m296
B24124m297
B24124m298
B24124m299
B24124m300
B24124m301
B24124m302
B24124m303
B24124m304
B24124m305
B24124m306
B24124m307
B24124m308
B24124m309
B24124m310
B24124m311
B24124m312
B24124m313
B24124m314
B24124m315
B24124m316
B24124m317
B24124m318
B24124m319
B24124m320
B24124m321
B24124m322
B24124m323
B24124m324
B24124m325
B24124m326
B24124m327
B24124m328
B24124m329
B24124m330
B24124m331
B24124m332
B24124m333
B24124m334
B24124m335
B24124m336
B24124m337
B24124m338
B24124m339
B24124m340
B24124m341
B24124m342
B24124m343
B24124m344
B24124m345
B24124m346
B24124m347
B24124m348
B24124m349
B24124m350
B24124m351
B24124m352
B24124m353
B24124m354
B24124m355
B24124m356
B24124m357
B24124m358
B24124m359
B24124m360
B24124m361
B24124m362
B24124m363
B24124m364
B24124m365
B24124m366
B24124m367
B24124m368
B24124m369
B24124m370
B24124m371
B24124m372
B24124m373
B24124m374
B24124m375
B24124m376
B24124m377
B24124m378
B24124m379
B24124m380
B24124m381
B24124m382
B24124m383
B24124m384
B24124m385
B24124m386
B24124m387
B24124m388
B24124m389
B24124m390
B24124m391
B24124m392
B24124m393
B24124m394
B24124m395
B24124m396
B24124m397
B24124m398
B24124m399
B24124m400
B24124m401
B24124m402
B24124m403
B24124m404
B24124m405
B24124m406
B24124m407
B24124m408
B24124m409
B24124m410
B24124m411
B24124m412
B24124m413
B24124m414
B24124m415
B24124m416
B24124m417
B24124m418
B24124m419
B24124m420
B24124m421
B24124m422
B24124m423
B24124m424
B24124m425
B24124m426
B24124m427
B24124m428
B24124m429
B24124m430
B24124m431
B24124m432
B24124m433
B24124m434
B24124m435
B24124m436
B24124m437
B24124m438
B24124m439
B24124m440
B24124m441
B24124m442
B24124m443
B24124m444
B24124m445
B24124m446
B24124m447
B24124m448
B24124m449
B24124m450
B24124m451
B24124m452
B24124m453
B24124m454
B24124m455
B24124m456
B24124m457
B24124m458
B24124m459
B24124m460
B24124m461
B24124m462
B24124m463
B24124m464
B24124m465
B24124m466
B24124m467
B24124m468
B24124m469
B24124m470
B24124m471
B24124m472
B24124m473
B24124m474
B24124m475
B24124m476
B24124m477
B24124m478
B24124m479
B24124m480
B24124m481
B24124m482
B24124m483
B24124m484
B24124m485
B24124m486
B24124m487
B24124m488
B24124m489
B24124m490
;
RUN;
TITLE2;
