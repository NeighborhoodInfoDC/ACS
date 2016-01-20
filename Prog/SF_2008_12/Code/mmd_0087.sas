TITLE2 "m20125md0087000";
DATA work.SFm0087md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0087000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED MALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed male population 16 years and over with earnings */
 
B24122m1='Total:'
B24122m2='Chief executives'
B24122m3='General and operations managers'
B24122m4='Legislators'
B24122m5='Advertising and promotions managers'
B24122m6='Marketing and sales managers'
B24122m7='Public relations and fundraising managers'
B24122m8='Administrative services managers'
B24122m9='Computer and information systems managers'
B24122m10='Financial managers'
B24122m11='Compensation and benefits managers'
B24122m12='Human resources managers'
B24122m13='Training and development managers'
B24122m14='Industrial production managers'
B24122m15='Purchasing managers'
B24122m16='Transportation, storage, and distribution managers'
B24122m17='Farmers, ranchers, and other agricultural managers'
B24122m18='Construction managers'
B24122m19='Education administrators'
B24122m20='Architectural and engineering managers'
B24122m21='Food service managers'
B24122m22='Funeral service managers'
B24122m23='Gaming managers'
B24122m24='Lodging managers'
B24122m25='Medical and health services managers'
B24122m26='Natural sciences managers'
B24122m27='Postmasters and mail superintendents'
B24122m28='Property, real estate, and community association managers'
B24122m29='Social and community service managers'
B24122m30='Emergency management directors'
B24122m31='Managers, all other'
B24122m32='Agents and business managers of artists, performers, and athletes'
B24122m33='Buyers and purchasing agents, farm products'
B24122m34='Wholesale and retail buyers, except farm products'
B24122m35='Purchasing agents, except wholesale, retail, and farm products'
B24122m36='Claims adjusters, appraisers, examiners, and investigators'
B24122m37='Compliance officers'
B24122m38='Cost estimators'
B24122m39='Human resources workers'
B24122m40='Compensation, benefits, and job analysis specialists'
B24122m41='Training and development specialists'
B24122m42='Logisticians'
B24122m43='Management analysts'
B24122m44='Meeting, convention, and event planners'
B24122m45='Fundraisers'
B24122m46='Market research analysts and marketing specialists'
B24122m47='Business operations specialists, all other'
B24122m48='Accountants and auditors'
B24122m49='Appraisers and assessors of real estate'
B24122m50='Budget analysts'
B24122m51='Credit analysts'
B24122m52='Financial analysts'
B24122m53='Personal financial advisors'
B24122m54='Insurance underwriters'
B24122m55='Financial examiners'
B24122m56='Credit counselors and loan officers'
B24122m57='Tax examiners and collectors, and revenue agents'
B24122m58='Tax preparers'
B24122m59='Financial specialists, all other'
B24122m60='Computer and information research scientists'
B24122m61='Computer systems analysts'
B24122m62='Information security analysts'
B24122m63='Computer programmers'
B24122m64='Software developers, applications and systems software'
B24122m65='Web developers'
B24122m66='Computer support specialists'
B24122m67='Database administrators'
B24122m68='Network and computer systems administrators'
B24122m69='Computer network architects'
B24122m70='Computer occupations, all other'
B24122m71='Actuaries'
B24122m72='Mathematicians'
B24122m73='Operations research analysts'
B24122m74='Statisticians'
B24122m75='Miscellaneous mathematical science occupations'
B24122m76='Architects, except naval'
B24122m77='Surveyors, cartographers, and photogrammetrists'
B24122m78='Aerospace engineers'
B24122m79='Agricultural engineers'
B24122m80='Biomedical engineers'
B24122m81='Chemical engineers'
B24122m82='Civil engineers'
B24122m83='Computer hardware engineers'
B24122m84='Electrical and electronics engineers'
B24122m85='Environmental engineers'
B24122m86='Industrial engineers, including health and safety'
B24122m87='Marine engineers and naval architects'
B24122m88='Materials engineers'
B24122m89='Mechanical engineers'
B24122m90='Mining and geological engineers, including mining safety engineers'
B24122m91='Nuclear engineers'
B24122m92='Petroleum engineers'
B24122m93='Engineers, all other'
B24122m94='Drafters'
B24122m95='Engineering technicians, except drafters'
B24122m96='Surveying and mapping technicians'
B24122m97='Agricultural and food scientists'
B24122m98='Biological scientists'
B24122m99='Conservation scientists and foresters'
B24122m100='Medical scientists'
B24122m101='Life scientists, all other'
B24122m102='Astronomers and physicists'
B24122m103='Atmospheric and space scientists'
B24122m104='Chemists and materials scientists'
B24122m105='Environmental scientists and geoscientists'
B24122m106='Physical scientists, all other'
B24122m107='Economists'
B24122m108='Survey researchers'
B24122m109='Psychologists'
B24122m110='Urban and regional planners'
B24122m111='Miscellaneous social scientists and related workers, including sociologists'
B24122m112='Agricultural and food science technicians'
B24122m113='Biological technicians'
B24122m114='Chemical technicians'
B24122m115='Geological and petroleum technicians'
B24122m116='Nuclear technicians'
B24122m117='Social science research assistants'
B24122m118='Miscellaneous life, physical, and social science technicians'
B24122m119='Counselors'
B24122m120='Social workers'
B24122m121='Probation officers and correctional treatment specialists'
B24122m122='Social and human service assistants'
B24122m123='Miscellaneous community and social service specialists, including health educators and community health workers'
B24122m124='Clergy'
B24122m125='Directors, religious activities and education'
B24122m126='Religious workers, all other'
B24122m127='Lawyers'
B24122m128='Judicial law clerks'
B24122m129='Judges, magistrates, and other judicial workers'
B24122m130='Paralegals and legal assistants'
B24122m131='Miscellaneous legal support workers'
B24122m132='Postsecondary teachers'
B24122m133='Preschool and kindergarten teachers'
B24122m134='Elementary and middle school teachers'
B24122m135='Secondary school teachers'
B24122m136='Special education teachers'
B24122m137='Other teachers and instructors'
B24122m138='Archivists, curators, and museum technicians'
B24122m139='Librarians'
B24122m140='Library technicians'
B24122m141='Teacher assistants'
B24122m142='Other education, training, and library workers, except teacher assistants'
B24122m143='Artists and related workers'
B24122m144='Designers'
B24122m145='Actors'
B24122m146='Producers and directors'
B24122m147='Athletes, coaches, umpires, and related workers'
B24122m148='Dancers and choreographers'
B24122m149='Musicians, singers, and related workers'
B24122m150='Entertainers and performers, sports and related workers, all other'
B24122m151='Announcers'
B24122m152='News analysts, reporters and correspondents'
B24122m153='Public relations specialists'
B24122m154='Editors'
B24122m155='Technical writers'
B24122m156='Writers and authors'
B24122m157='Miscellaneous media and communication workers'
B24122m158='Miscellaneous media and communications equipment workers, including broadcast and sound engineering technicians and radio operators'
B24122m159='Photographers'
B24122m160='Television, video, and motion picture camera operators and editors'
B24122m161='Chiropractors'
B24122m162='Dentists'
B24122m163='Dietitians and nutritionists'
B24122m164='Optometrists'
B24122m165='Pharmacists'
B24122m166='Physicians and surgeons'
B24122m167='Physician assistants'
B24122m168='Podiatrists'
B24122m169='Audiologists'
B24122m170='Occupational therapists'
B24122m171='Physical therapists'
B24122m172='Radiation therapists'
B24122m173='Recreational therapists'
B24122m174='Respiratory therapists'
B24122m175='Speech-language pathologists'
B24122m176='Miscellaneous therapists, including exercise physiologists'
B24122m177='Veterinarians'
B24122m178='Registered nurses'
B24122m179='Nurse anesthetists'
B24122m180='Nurse midwives'
B24122m181='Nurse practitioners'
B24122m182='Health diagnosing and treating practitioners, all other'
B24122m183='Clinical laboratory technologists and technicians'
B24122m184='Dental hygienists'
B24122m185='Diagnostic related technologists and technicians'
B24122m186='Emergency medical technicians and paramedics'
B24122m187='Health practitioner support technologists and technicians'
B24122m188='Licensed practical and licensed vocational nurses'
B24122m189='Medical records and health information technicians'
B24122m190='Opticians, dispensing'
B24122m191='Miscellaneous health technologists and technicians'
B24122m192='Other healthcare practitioners and technical occupations'
B24122m193='Nursing, psychiatric, and home health aides'
B24122m194='Occupational therapy assistants and aides'
B24122m195='Physical therapist assistants and aides'
B24122m196='Massage therapists'
B24122m197='Dental assistants'
B24122m198='Medical assistants'
B24122m199='Medical transcriptionists'
B24122m200='Pharmacy aides'
B24122m201='Veterinary assistants and laboratory animal caretakers'
B24122m202='Phlebotomists'
B24122m203='Healthcare support workers, all other, including medical equipment preparers'
B24122m204='First-line supervisors of correctional officers'
B24122m205='First-line supervisors of police and detectives'
B24122m206='First-line supervisors of fire fighting and prevention workers'
B24122m207='First-line supervisors of protective service workers, all other'
B24122m208='Firefighters'
B24122m209='Fire inspectors'
B24122m210='Bailiffs, correctional officers, and jailers'
B24122m211='Detectives and criminal investigators'
B24122m212='Fish and game wardens'
B24122m213='Parking enforcement workers'
B24122m214='Police and sheriff''s patrol officers'
B24122m215='Transit and railroad police'
B24122m216='Animal control workers'
B24122m217='Private detectives and investigators'
B24122m218='Security guards and gaming surveillance officers'
B24122m219='Crossing guards'
B24122m220='Transportation security screeners'
B24122m221='Lifeguards and other recreational, and all other protective service workers'
B24122m222='Chefs and head cooks'
B24122m223='First-line supervisors of food preparation and serving workers'
B24122m224='Cooks'
B24122m225='Food preparation workers'
B24122m226='Bartenders'
B24122m227='Combined food preparation and serving workers, including fast food'
B24122m228='Counter attendants, cafeteria, food concession, and coffee shop'
B24122m229='Waiters and waitresses'
B24122m230='Food servers, nonrestaurant'
B24122m231='Dining room and cafeteria attendants and bartender helpers'
B24122m232='Dishwashers'
B24122m233='Hosts and hostesses, restaurant, lounge, and coffee shop'
B24122m234='Food preparation and serving related workers, all other'
B24122m235='First-line supervisors of housekeeping and janitorial workers'
B24122m236='First-line supervisors of landscaping, lawn service, and groundskeeping workers'
B24122m237='Janitors and building cleaners'
B24122m238='Maids and housekeeping cleaners'
B24122m239='Pest control workers'
B24122m240='Grounds maintenance workers'
B24122m241='First-line supervisors of gaming workers'
B24122m242='First-line supervisors of personal service workers'
B24122m243='Animal trainers'
B24122m244='Nonfarm animal caretakers'
B24122m245='Gaming services workers'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B24122m1
B24122m2
B24122m3
B24122m4
B24122m5
B24122m6
B24122m7
B24122m8
B24122m9
B24122m10
B24122m11
B24122m12
B24122m13
B24122m14
B24122m15
B24122m16
B24122m17
B24122m18
B24122m19
B24122m20
B24122m21
B24122m22
B24122m23
B24122m24
B24122m25
B24122m26
B24122m27
B24122m28
B24122m29
B24122m30
B24122m31
B24122m32
B24122m33
B24122m34
B24122m35
B24122m36
B24122m37
B24122m38
B24122m39
B24122m40
B24122m41
B24122m42
B24122m43
B24122m44
B24122m45
B24122m46
B24122m47
B24122m48
B24122m49
B24122m50
B24122m51
B24122m52
B24122m53
B24122m54
B24122m55
B24122m56
B24122m57
B24122m58
B24122m59
B24122m60
B24122m61
B24122m62
B24122m63
B24122m64
B24122m65
B24122m66
B24122m67
B24122m68
B24122m69
B24122m70
B24122m71
B24122m72
B24122m73
B24122m74
B24122m75
B24122m76
B24122m77
B24122m78
B24122m79
B24122m80
B24122m81
B24122m82
B24122m83
B24122m84
B24122m85
B24122m86
B24122m87
B24122m88
B24122m89
B24122m90
B24122m91
B24122m92
B24122m93
B24122m94
B24122m95
B24122m96
B24122m97
B24122m98
B24122m99
B24122m100
B24122m101
B24122m102
B24122m103
B24122m104
B24122m105
B24122m106
B24122m107
B24122m108
B24122m109
B24122m110
B24122m111
B24122m112
B24122m113
B24122m114
B24122m115
B24122m116
B24122m117
B24122m118
B24122m119
B24122m120
B24122m121
B24122m122
B24122m123
B24122m124
B24122m125
B24122m126
B24122m127
B24122m128
B24122m129
B24122m130
B24122m131
B24122m132
B24122m133
B24122m134
B24122m135
B24122m136
B24122m137
B24122m138
B24122m139
B24122m140
B24122m141
B24122m142
B24122m143
B24122m144
B24122m145
B24122m146
B24122m147
B24122m148
B24122m149
B24122m150
B24122m151
B24122m152
B24122m153
B24122m154
B24122m155
B24122m156
B24122m157
B24122m158
B24122m159
B24122m160
B24122m161
B24122m162
B24122m163
B24122m164
B24122m165
B24122m166
B24122m167
B24122m168
B24122m169
B24122m170
B24122m171
B24122m172
B24122m173
B24122m174
B24122m175
B24122m176
B24122m177
B24122m178
B24122m179
B24122m180
B24122m181
B24122m182
B24122m183
B24122m184
B24122m185
B24122m186
B24122m187
B24122m188
B24122m189
B24122m190
B24122m191
B24122m192
B24122m193
B24122m194
B24122m195
B24122m196
B24122m197
B24122m198
B24122m199
B24122m200
B24122m201
B24122m202
B24122m203
B24122m204
B24122m205
B24122m206
B24122m207
B24122m208
B24122m209
B24122m210
B24122m211
B24122m212
B24122m213
B24122m214
B24122m215
B24122m216
B24122m217
B24122m218
B24122m219
B24122m220
B24122m221
B24122m222
B24122m223
B24122m224
B24122m225
B24122m226
B24122m227
B24122m228
B24122m229
B24122m230
B24122m231
B24122m232
B24122m233
B24122m234
B24122m235
B24122m236
B24122m237
B24122m238
B24122m239
B24122m240
B24122m241
B24122m242
B24122m243
B24122m244
B24122m245
;
RUN;
TITLE2;
