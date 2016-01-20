TITLE2 "m20115dc0094000";
DATA work.SFm0094dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\m20115dc0094000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*DETAILED OCCUPATION FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED MALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed male population 16 years and over */
B24125m246='Motion picture projectionists'
B24125m247='Ushers, lobby attendants, and ticket takers'
B24125m248='Miscellaneous entertainment attendants and related workers'
B24125m249='Embalmers and funeral attendants'
B24125m250='Morticians, undertakers, and funeral directors'
B24125m251='Barbers'
B24125m252='Hairdressers, hairstylists, and cosmetologists'
B24125m253='Miscellaneous personal appearance workers'
B24125m254='Baggage porters, bellhops, and concierges'
B24125m255='Tour and travel guides'
B24125m256='Childcare workers'
B24125m257='Personal care aides'
B24125m258='Recreation and fitness workers'
B24125m259='Residential advisors'
B24125m260='Personal care and service workers, all other'
B24125m261='First-line supervisors of retail sales workers'
B24125m262='First-line supervisors of non-retail sales workers'
B24125m263='Cashiers'
B24125m264='Counter and rental clerks'
B24125m265='Parts salespersons'
B24125m266='Retail salespersons'
B24125m267='Advertising sales agents'
B24125m268='Insurance sales agents'
B24125m269='Securities, commodities, and financial services sales agents'
B24125m270='Travel agents'
B24125m271='Sales representatives, services, all other'
B24125m272='Sales representatives, wholesale and manufacturing'
B24125m273='Models, demonstrators, and product promoters'
B24125m274='Real estate brokers and sales agents'
B24125m275='Sales engineers'
B24125m276='Telemarketers'
B24125m277='Door-to-door sales workers, news and street vendors, and related workers'
B24125m278='Sales and related workers, all other'
B24125m279='First-line supervisors of office and administrative support workers'
B24125m280='Switchboard operators, including answering service'
B24125m281='Telephone operators'
B24125m282='Communications equipment operators, all other'
B24125m283='Bill and account collectors'
B24125m284='Billing and posting clerks'
B24125m285='Bookkeeping, accounting, and auditing clerks'
B24125m286='Gaming cage workers'
B24125m287='Payroll and timekeeping clerks'
B24125m288='Procurement clerks'
B24125m289='Tellers'
B24125m290='Financial clerks, all other'
B24125m291='Brokerage clerks'
B24125m292='Correspondence clerks'
B24125m293='Court, municipal, and license clerks'
B24125m294='Credit authorizers, checkers, and clerks'
B24125m295='Customer service representatives'
B24125m296='Eligibility interviewers, government programs'
B24125m297='File clerks'
B24125m298='Hotel, motel, and resort desk clerks'
B24125m299='Interviewers, except eligibility and loan'
B24125m300='Library assistants, clerical'
B24125m301='Loan interviewers and clerks'
B24125m302='New accounts clerks'
B24125m303='Order clerks'
B24125m304='Human resources assistants, except payroll and timekeeping'
B24125m305='Receptionists and information clerks'
B24125m306='Reservation and transportation ticket agents and travel clerks'
B24125m307='Information and record clerks, all other'
B24125m308='Cargo and freight agents'
B24125m309='Couriers and messengers'
B24125m310='Dispatchers'
B24125m311='Meter readers, utilities'
B24125m312='Postal service clerks'
B24125m313='Postal service mail carriers'
B24125m314='Postal service mail sorters, processors, and processing machine operators'
B24125m315='Production, planning, and expediting clerks'
B24125m316='Shipping, receiving, and traffic clerks'
B24125m317='Stock clerks and order fillers'
B24125m318='Weighers, measurers, checkers, and samplers, recordkeeping'
B24125m319='Secretaries and administrative assistants'
B24125m320='Computer operators'
B24125m321='Data entry keyers'
B24125m322='Word processors and typists'
B24125m323='Desktop publishers'
B24125m324='Insurance claims and policy processing clerks'
B24125m325='Mail clerks and mail machine operators, except postal service'
B24125m326='Office clerks, general'
B24125m327='Office machine operators, except computer'
B24125m328='Proofreaders and copy markers'
B24125m329='Statistical assistants'
B24125m330='Office and administrative support workers, all other'
B24125m331='First-line supervisors of farming, fishing, and forestry workers'
B24125m332='Agricultural inspectors'
B24125m333='Animal breeders'
B24125m334='Graders and sorters, agricultural products'
B24125m335='Miscellaneous agricultural workers'
B24125m336='Fishing and hunting workers'
B24125m337='Forest and conservation workers'
B24125m338='Logging workers'
B24125m339='First-line supervisors of construction trades and extraction workers'
B24125m340='Boilermakers'
B24125m341='Brickmasons, blockmasons, and stonemasons'
B24125m342='Carpenters'
B24125m343='Carpet, floor, and tile installers and finishers'
B24125m344='Cement masons, concrete finishers, and terrazzo workers'
B24125m345='Construction laborers'
B24125m346='Paving, surfacing, and tamping equipment operators'
B24125m347='Operating engineers and other construction equipment operators, including pile-driver operators'
B24125m348='Drywall installers, ceiling tile installers, and tapers'
B24125m349='Electricians'
B24125m350='Glaziers'
B24125m351='Insulation workers'
B24125m352='Painters, construction and maintenance'
B24125m353='Paperhangers'
B24125m354='Pipelayers, plumbers, pipefitters, and steamfitters'
B24125m355='Plasterers and stucco masons'
B24125m356='Reinforcing iron and rebar workers'
B24125m357='Roofers'
B24125m358='Sheet metal workers'
B24125m359='Structural iron and steel workers'
B24125m360='Helpers, construction trades'
B24125m361='Construction and building inspectors'
B24125m362='Elevator installers and repairers'
B24125m363='Fence erectors'
B24125m364='Hazardous materials removal workers'
B24125m365='Highway maintenance workers'
B24125m366='Rail-track laying and maintenance equipment operators'
B24125m367='Septic tank servicers and sewer pipe cleaners'
B24125m368='Miscellaneous construction and related workers, including solar photovoltaic installers'
B24125m369='Derrick, rotary drill, and service unit operators, oil, gas, and mining'
B24125m370='Earth drillers, except oil and gas'
B24125m371='Explosives workers, ordnance handling experts, and blasters'
B24125m372='Mining machine operators'
B24125m373='Roof bolters, mining'
B24125m374='Roustabouts, oil and gas'
B24125m375='Helpers--extraction workers'
B24125m376='Other extraction workers'
B24125m377='First-line supervisors of mechanics, installers, and repairers'
B24125m378='Computer, automated teller, and office machine repairers'
B24125m379='Radio and telecommunications equipment installers and repairers'
B24125m380='Avionics technicians'
B24125m381='Electric motor, power tool, and related repairers'
B24125m382='Electrical and electronics installers and repairers, transportation equipment'
B24125m383='Electrical and electronics repairers, industrial and utility'
B24125m384='Electronic equipment installers and repairers, motor vehicles'
B24125m385='Electronic home entertainment equipment installers and repairers'
B24125m386='Security and fire alarm systems installers'
B24125m387='Aircraft mechanics and service technicians'
B24125m388='Automotive body and related repairers'
B24125m389='Automotive glass installers and repairers'
B24125m390='Automotive service technicians and mechanics'
B24125m391='Bus and truck mechanics and diesel engine specialists'
B24125m392='Heavy vehicle and mobile equipment service technicians and mechanics'
B24125m393='Small engine mechanics'
B24125m394='Miscellaneous vehicle and mobile equipment mechanics, installers, and repairers'
B24125m395='Control and valve installers and repairers'
B24125m396='Heating, air conditioning, and refrigeration mechanics and installers'
B24125m397='Home appliance repairers'
B24125m398='Industrial and refractory machinery mechanics'
B24125m399='Maintenance and repair workers, general'
B24125m400='Maintenance workers, machinery'
B24125m401='Millwrights'
B24125m402='Electrical power-line installers and repairers'
B24125m403='Telecommunications line installers and repairers'
B24125m404='Precision instrument and equipment repairers'
B24125m405='Coin, vending, and amusement machine servicers and repairers'
B24125m406='Commercial divers'
B24125m407='Locksmiths and safe repairers'
B24125m408='Manufactured building and mobile home installers'
B24125m409='Riggers'
B24125m410='Signal and track switch repairers'
B24125m411='Helpers--installation, maintenance, and repair workers'
B24125m412='Other installation, maintenance, and repair workers, including wind turbine service technicians'
B24125m413='First-line supervisors of production and operating workers'
B24125m414='Aircraft structure, surfaces, rigging, and systems assemblers'
B24125m415='Electrical, electronics, and electromechanical assemblers'
B24125m416='Engine and other machine assemblers'
B24125m417='Structural metal fabricators and fitters'
B24125m418='Miscellaneous assemblers and fabricators'
B24125m419='Bakers'
B24125m420='Butchers and other meat, poultry, and fish processing workers'
B24125m421='Food and tobacco roasting, baking, and drying machine operators and tenders'
B24125m422='Food batchmakers'
B24125m423='Food cooking machine operators and tenders'
B24125m424='Food processing workers, all other'
B24125m425='Computer control programmers and operators'
B24125m426='Extruding and drawing machine setters, operators, and tenders, metal and plastic'
B24125m427='Forging machine setters, operators, and tenders, metal and plastic'
B24125m428='Rolling machine setters, operators, and tenders, metal and plastic'
B24125m429='Cutting, punching, and press machine setters, operators, and tenders, metal and plastic'
B24125m430='Drilling and boring machine tool setters, operators, and tenders, metal and plastic'
B24125m431='Grinding, lapping, polishing, and buffing machine tool setters, operators, and tenders, metal and plastic'
B24125m432='Lathe and turning machine tool setters, operators, and tenders, metal and plastic'
B24125m433='Milling and planing machine setters, operators, and tenders, metal and plastic'
B24125m434='Machinists'
B24125m435='Metal furnace operators, tenders, pourers, and casters'
B24125m436='Model makers and patternmakers, metal and plastic'
B24125m437='Molders and molding machine setters, operators, and tenders, metal and plastic'
B24125m438='Multiple machine tool setters, operators, and tenders, metal and plastic'
B24125m439='Tool and die makers'
B24125m440='Welding, soldering, and brazing workers'
B24125m441='Heat treating equipment setters, operators, and tenders, metal and plastic'
B24125m442='Layout workers, metal and plastic'
B24125m443='Plating and coating machine setters, operators, and tenders, metal and plastic'
B24125m444='Tool grinders, filers, and sharpeners'
B24125m445='Metal workers and plastic workers, all other'
B24125m446='Prepress technicians and workers'
B24125m447='Printing workers, except prepress technicians and workers'
B24125m448='Laundry and dry-cleaning workers'
B24125m449='Pressers, textile, garment, and related materials'
B24125m450='Sewing machine operators'
B24125m451='Shoe and leather workers and repairers'
B24125m452='Shoe machine operators and tenders'
B24125m453='Tailors, dressmakers, and sewers'
B24125m454='Textile bleaching and dyeing machine operators and tenders'
B24125m455='Textile cutting machine setters, operators, and tenders'
B24125m456='Textile knitting and weaving machine setters, operators, and tenders'
B24125m457='Textile winding, twisting, and drawing out machine setters, operators, and tenders'
B24125m458='Fabric and apparel patternmakers'
B24125m459='Upholsterers'
B24125m460='Miscellaneous textile, apparel, and furnishings workers, including extruding and forming machine setters, operators, and tenders, synthetic and glass fibers'
B24125m461='Cabinetmakers and bench carpenters'
B24125m462='Furniture finishers'
B24125m463='Sawing machine setters, operators, and tenders, wood'
B24125m464='Woodworking machine setters, operators, and tenders, except sawing'
B24125m465='Miscellaneous woodworkers, including model makers and patternmakers'
B24125m466='Power plant operators, distributors, and dispatchers'
B24125m467='Stationary engineers and boiler operators'
B24125m468='Water and wastewater treatment plant and system operators'
B24125m469='Miscellaneous plant and system operators'
B24125m470='Chemical processing machine setters, operators, and tenders'
B24125m471='Crushing, grinding, polishing, mixing, and blending workers'
B24125m472='Cutting workers'
B24125m473='Extruding, forming, pressing, and compacting machine setters, operators, and tenders'
B24125m474='Furnace, kiln, oven, drier, and kettle operators and tenders'
B24125m475='Inspectors, testers, sorters, samplers, and weighers'
B24125m476='Jewelers and precious stone and metal workers'
B24125m477='Medical, dental, and ophthalmic laboratory technicians'
B24125m478='Packaging and filling machine operators and tenders'
B24125m479='Painting workers'
B24125m480='Photographic process workers and processing machine operators'
B24125m481='Semiconductor processors'
B24125m482='Adhesive bonding machine operators and tenders'
B24125m483='Cleaning, washing, and metal pickling equipment operators and tenders'
B24125m484='Cooling and freezing equipment operators and tenders'
B24125m485='Etchers and engravers'
B24125m486='Molders, shapers, and casters, except metal and plastic'
B24125m487='Paper goods machine setters, operators, and tenders'
B24125m488='Tire builders'
B24125m489='Helpers--production workers'
B24125m490='Production workers, all other'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
B24125m246
B24125m247
B24125m248
B24125m249
B24125m250
B24125m251
B24125m252
B24125m253
B24125m254
B24125m255
B24125m256
B24125m257
B24125m258
B24125m259
B24125m260
B24125m261
B24125m262
B24125m263
B24125m264
B24125m265
B24125m266
B24125m267
B24125m268
B24125m269
B24125m270
B24125m271
B24125m272
B24125m273
B24125m274
B24125m275
B24125m276
B24125m277
B24125m278
B24125m279
B24125m280
B24125m281
B24125m282
B24125m283
B24125m284
B24125m285
B24125m286
B24125m287
B24125m288
B24125m289
B24125m290
B24125m291
B24125m292
B24125m293
B24125m294
B24125m295
B24125m296
B24125m297
B24125m298
B24125m299
B24125m300
B24125m301
B24125m302
B24125m303
B24125m304
B24125m305
B24125m306
B24125m307
B24125m308
B24125m309
B24125m310
B24125m311
B24125m312
B24125m313
B24125m314
B24125m315
B24125m316
B24125m317
B24125m318
B24125m319
B24125m320
B24125m321
B24125m322
B24125m323
B24125m324
B24125m325
B24125m326
B24125m327
B24125m328
B24125m329
B24125m330
B24125m331
B24125m332
B24125m333
B24125m334
B24125m335
B24125m336
B24125m337
B24125m338
B24125m339
B24125m340
B24125m341
B24125m342
B24125m343
B24125m344
B24125m345
B24125m346
B24125m347
B24125m348
B24125m349
B24125m350
B24125m351
B24125m352
B24125m353
B24125m354
B24125m355
B24125m356
B24125m357
B24125m358
B24125m359
B24125m360
B24125m361
B24125m362
B24125m363
B24125m364
B24125m365
B24125m366
B24125m367
B24125m368
B24125m369
B24125m370
B24125m371
B24125m372
B24125m373
B24125m374
B24125m375
B24125m376
B24125m377
B24125m378
B24125m379
B24125m380
B24125m381
B24125m382
B24125m383
B24125m384
B24125m385
B24125m386
B24125m387
B24125m388
B24125m389
B24125m390
B24125m391
B24125m392
B24125m393
B24125m394
B24125m395
B24125m396
B24125m397
B24125m398
B24125m399
B24125m400
B24125m401
B24125m402
B24125m403
B24125m404
B24125m405
B24125m406
B24125m407
B24125m408
B24125m409
B24125m410
B24125m411
B24125m412
B24125m413
B24125m414
B24125m415
B24125m416
B24125m417
B24125m418
B24125m419
B24125m420
B24125m421
B24125m422
B24125m423
B24125m424
B24125m425
B24125m426
B24125m427
B24125m428
B24125m429
B24125m430
B24125m431
B24125m432
B24125m433
B24125m434
B24125m435
B24125m436
B24125m437
B24125m438
B24125m439
B24125m440
B24125m441
B24125m442
B24125m443
B24125m444
B24125m445
B24125m446
B24125m447
B24125m448
B24125m449
B24125m450
B24125m451
B24125m452
B24125m453
B24125m454
B24125m455
B24125m456
B24125m457
B24125m458
B24125m459
B24125m460
B24125m461
B24125m462
B24125m463
B24125m464
B24125m465
B24125m466
B24125m467
B24125m468
B24125m469
B24125m470
B24125m471
B24125m472
B24125m473
B24125m474
B24125m475
B24125m476
B24125m477
B24125m478
B24125m479
B24125m480
B24125m481
B24125m482
B24125m483
B24125m484
B24125m485
B24125m486
B24125m487
B24125m488
B24125m489
B24125m490
;
RUN;
TITLE2;
