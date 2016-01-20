TITLE2 "m20125dc0084000";
DATA work.SFm0084dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0084000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over with earnings */
 
B24121m1='Total:'
B24121m2='Chief executives'
B24121m3='General and operations managers'
B24121m4='Legislators'
B24121m5='Advertising and promotions managers'
B24121m6='Marketing and sales managers'
B24121m7='Public relations and fundraising managers'
B24121m8='Administrative services managers'
B24121m9='Computer and information systems managers'
B24121m10='Financial managers'
B24121m11='Compensation and benefits managers'
B24121m12='Human resources managers'
B24121m13='Training and development managers'
B24121m14='Industrial production managers'
B24121m15='Purchasing managers'
B24121m16='Transportation, storage, and distribution managers'
B24121m17='Farmers, ranchers, and other agricultural managers'
B24121m18='Construction managers'
B24121m19='Education administrators'
B24121m20='Architectural and engineering managers'
B24121m21='Food service managers'
B24121m22='Funeral service managers'
B24121m23='Gaming managers'
B24121m24='Lodging managers'
B24121m25='Medical and health services managers'
B24121m26='Natural sciences managers'
B24121m27='Postmasters and mail superintendents'
B24121m28='Property, real estate, and community association managers'
B24121m29='Social and community service managers'
B24121m30='Emergency management directors'
B24121m31='Managers, all other'
B24121m32='Agents and business managers of artists, performers, and athletes'
B24121m33='Buyers and purchasing agents, farm products'
B24121m34='Wholesale and retail buyers, except farm products'
B24121m35='Purchasing agents, except wholesale, retail, and farm products'
B24121m36='Claims adjusters, appraisers, examiners, and investigators'
B24121m37='Compliance officers'
B24121m38='Cost estimators'
B24121m39='Human resources workers'
B24121m40='Compensation, benefits, and job analysis specialists'
B24121m41='Training and development specialists'
B24121m42='Logisticians'
B24121m43='Management analysts'
B24121m44='Meeting, convention, and event planners'
B24121m45='Fundraisers'
B24121m46='Market research analysts and marketing specialists'
B24121m47='Business operations specialists, all other'
B24121m48='Accountants and auditors'
B24121m49='Appraisers and assessors of real estate'
B24121m50='Budget analysts'
B24121m51='Credit analysts'
B24121m52='Financial analysts'
B24121m53='Personal financial advisors'
B24121m54='Insurance underwriters'
B24121m55='Financial examiners'
B24121m56='Credit counselors and loan officers'
B24121m57='Tax examiners and collectors, and revenue agents'
B24121m58='Tax preparers'
B24121m59='Financial specialists, all other'
B24121m60='Computer and information research scientists'
B24121m61='Computer systems analysts'
B24121m62='Information security analysts'
B24121m63='Computer programmers'
B24121m64='Software developers, applications and systems software'
B24121m65='Web developers'
B24121m66='Computer support specialists'
B24121m67='Database administrators'
B24121m68='Network and computer systems administrators'
B24121m69='Computer network architects'
B24121m70='Computer occupations, all other'
B24121m71='Actuaries'
B24121m72='Mathematicians'
B24121m73='Operations research analysts'
B24121m74='Statisticians'
B24121m75='Miscellaneous mathematical science occupations'
B24121m76='Architects, except naval'
B24121m77='Surveyors, cartographers, and photogrammetrists'
B24121m78='Aerospace engineers'
B24121m79='Agricultural engineers'
B24121m80='Biomedical engineers'
B24121m81='Chemical engineers'
B24121m82='Civil engineers'
B24121m83='Computer hardware engineers'
B24121m84='Electrical and electronics engineers'
B24121m85='Environmental engineers'
B24121m86='Industrial engineers, including health and safety'
B24121m87='Marine engineers and naval architects'
B24121m88='Materials engineers'
B24121m89='Mechanical engineers'
B24121m90='Mining and geological engineers, including mining safety engineers'
B24121m91='Nuclear engineers'
B24121m92='Petroleum engineers'
B24121m93='Engineers, all other'
B24121m94='Drafters'
B24121m95='Engineering technicians, except drafters'
B24121m96='Surveying and mapping technicians'
B24121m97='Agricultural and food scientists'
B24121m98='Biological scientists'
B24121m99='Conservation scientists and foresters'
B24121m100='Medical scientists'
B24121m101='Life scientists, all other'
B24121m102='Astronomers and physicists'
B24121m103='Atmospheric and space scientists'
B24121m104='Chemists and materials scientists'
B24121m105='Environmental scientists and geoscientists'
B24121m106='Physical scientists, all other'
B24121m107='Economists'
B24121m108='Survey researchers'
B24121m109='Psychologists'
B24121m110='Urban and regional planners'
B24121m111='Miscellaneous social scientists and related workers, including sociologists'
B24121m112='Agricultural and food science technicians'
B24121m113='Biological technicians'
B24121m114='Chemical technicians'
B24121m115='Geological and petroleum technicians'
B24121m116='Nuclear technicians'
B24121m117='Social science research assistants'
B24121m118='Miscellaneous life, physical, and social science technicians'
B24121m119='Counselors'
B24121m120='Social workers'
B24121m121='Probation officers and correctional treatment specialists'
B24121m122='Social and human service assistants'
B24121m123='Miscellaneous community and social service specialists, including health educators and community health workers'
B24121m124='Clergy'
B24121m125='Directors, religious activities and education'
B24121m126='Religious workers, all other'
B24121m127='Lawyers'
B24121m128='Judicial law clerks'
B24121m129='Judges, magistrates, and other judicial workers'
B24121m130='Paralegals and legal assistants'
B24121m131='Miscellaneous legal support workers'
B24121m132='Postsecondary teachers'
B24121m133='Preschool and kindergarten teachers'
B24121m134='Elementary and middle school teachers'
B24121m135='Secondary school teachers'
B24121m136='Special education teachers'
B24121m137='Other teachers and instructors'
B24121m138='Archivists, curators, and museum technicians'
B24121m139='Librarians'
B24121m140='Library technicians'
B24121m141='Teacher assistants'
B24121m142='Other education, training, and library workers, except teacher assistants'
B24121m143='Artists and related workers'
B24121m144='Designers'
B24121m145='Actors'
B24121m146='Producers and directors'
B24121m147='Athletes, coaches, umpires, and related workers'
B24121m148='Dancers and choreographers'
B24121m149='Musicians, singers, and related workers'
B24121m150='Entertainers and performers, sports and related workers, all other'
B24121m151='Announcers'
B24121m152='News analysts, reporters and correspondents'
B24121m153='Public relations specialists'
B24121m154='Editors'
B24121m155='Technical writers'
B24121m156='Writers and authors'
B24121m157='Miscellaneous media and communication workers'
B24121m158='Miscellaneous media and communications equipment workers, including broadcast and sound engineering technicians and radio operators'
B24121m159='Photographers'
B24121m160='Television, video, and motion picture camera operators and editors'
B24121m161='Chiropractors'
B24121m162='Dentists'
B24121m163='Dietitians and nutritionists'
B24121m164='Optometrists'
B24121m165='Pharmacists'
B24121m166='Physicians and surgeons'
B24121m167='Physician assistants'
B24121m168='Podiatrists'
B24121m169='Audiologists'
B24121m170='Occupational therapists'
B24121m171='Physical therapists'
B24121m172='Radiation therapists'
B24121m173='Recreational therapists'
B24121m174='Respiratory therapists'
B24121m175='Speech-language pathologists'
B24121m176='Miscellaneous therapists, including exercise physiologists'
B24121m177='Veterinarians'
B24121m178='Registered nurses'
B24121m179='Nurse anesthetists'
B24121m180='Nurse midwives'
B24121m181='Nurse practitioners'
B24121m182='Health diagnosing and treating practitioners, all other'
B24121m183='Clinical laboratory technologists and technicians'
B24121m184='Dental hygienists'
B24121m185='Diagnostic related technologists and technicians'
B24121m186='Emergency medical technicians and paramedics'
B24121m187='Health practitioner support technologists and technicians'
B24121m188='Licensed practical and licensed vocational nurses'
B24121m189='Medical records and health information technicians'
B24121m190='Opticians, dispensing'
B24121m191='Miscellaneous health technologists and technicians'
B24121m192='Other healthcare practitioners and technical occupations'
B24121m193='Nursing, psychiatric, and home health aides'
B24121m194='Occupational therapy assistants and aides'
B24121m195='Physical therapist assistants and aides'
B24121m196='Massage therapists'
B24121m197='Dental assistants'
B24121m198='Medical assistants'
B24121m199='Medical transcriptionists'
B24121m200='Pharmacy aides'
B24121m201='Veterinary assistants and laboratory animal caretakers'
B24121m202='Phlebotomists'
B24121m203='Healthcare support workers, all other, including medical equipment preparers'
B24121m204='First-line supervisors of correctional officers'
B24121m205='First-line supervisors of police and detectives'
B24121m206='First-line supervisors of fire fighting and prevention workers'
B24121m207='First-line supervisors of protective service workers, all other'
B24121m208='Firefighters'
B24121m209='Fire inspectors'
B24121m210='Bailiffs, correctional officers, and jailers'
B24121m211='Detectives and criminal investigators'
B24121m212='Fish and game wardens'
B24121m213='Parking enforcement workers'
B24121m214='Police and sheriff''s patrol officers'
B24121m215='Transit and railroad police'
B24121m216='Animal control workers'
B24121m217='Private detectives and investigators'
B24121m218='Security guards and gaming surveillance officers'
B24121m219='Crossing guards'
B24121m220='Transportation security screeners'
B24121m221='Lifeguards and other recreational, and all other protective service workers'
B24121m222='Chefs and head cooks'
B24121m223='First-line supervisors of food preparation and serving workers'
B24121m224='Cooks'
B24121m225='Food preparation workers'
B24121m226='Bartenders'
B24121m227='Combined food preparation and serving workers, including fast food'
B24121m228='Counter attendants, cafeteria, food concession, and coffee shop'
B24121m229='Waiters and waitresses'
B24121m230='Food servers, nonrestaurant'
B24121m231='Dining room and cafeteria attendants and bartender helpers'
B24121m232='Dishwashers'
B24121m233='Hosts and hostesses, restaurant, lounge, and coffee shop'
B24121m234='Food preparation and serving related workers, all other'
B24121m235='First-line supervisors of housekeeping and janitorial workers'
B24121m236='First-line supervisors of landscaping, lawn service, and groundskeeping workers'
B24121m237='Janitors and building cleaners'
B24121m238='Maids and housekeeping cleaners'
B24121m239='Pest control workers'
B24121m240='Grounds maintenance workers'
B24121m241='First-line supervisors of gaming workers'
B24121m242='First-line supervisors of personal service workers'
B24121m243='Animal trainers'
B24121m244='Nonfarm animal caretakers'
B24121m245='Gaming services workers'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B24121m1
B24121m2
B24121m3
B24121m4
B24121m5
B24121m6
B24121m7
B24121m8
B24121m9
B24121m10
B24121m11
B24121m12
B24121m13
B24121m14
B24121m15
B24121m16
B24121m17
B24121m18
B24121m19
B24121m20
B24121m21
B24121m22
B24121m23
B24121m24
B24121m25
B24121m26
B24121m27
B24121m28
B24121m29
B24121m30
B24121m31
B24121m32
B24121m33
B24121m34
B24121m35
B24121m36
B24121m37
B24121m38
B24121m39
B24121m40
B24121m41
B24121m42
B24121m43
B24121m44
B24121m45
B24121m46
B24121m47
B24121m48
B24121m49
B24121m50
B24121m51
B24121m52
B24121m53
B24121m54
B24121m55
B24121m56
B24121m57
B24121m58
B24121m59
B24121m60
B24121m61
B24121m62
B24121m63
B24121m64
B24121m65
B24121m66
B24121m67
B24121m68
B24121m69
B24121m70
B24121m71
B24121m72
B24121m73
B24121m74
B24121m75
B24121m76
B24121m77
B24121m78
B24121m79
B24121m80
B24121m81
B24121m82
B24121m83
B24121m84
B24121m85
B24121m86
B24121m87
B24121m88
B24121m89
B24121m90
B24121m91
B24121m92
B24121m93
B24121m94
B24121m95
B24121m96
B24121m97
B24121m98
B24121m99
B24121m100
B24121m101
B24121m102
B24121m103
B24121m104
B24121m105
B24121m106
B24121m107
B24121m108
B24121m109
B24121m110
B24121m111
B24121m112
B24121m113
B24121m114
B24121m115
B24121m116
B24121m117
B24121m118
B24121m119
B24121m120
B24121m121
B24121m122
B24121m123
B24121m124
B24121m125
B24121m126
B24121m127
B24121m128
B24121m129
B24121m130
B24121m131
B24121m132
B24121m133
B24121m134
B24121m135
B24121m136
B24121m137
B24121m138
B24121m139
B24121m140
B24121m141
B24121m142
B24121m143
B24121m144
B24121m145
B24121m146
B24121m147
B24121m148
B24121m149
B24121m150
B24121m151
B24121m152
B24121m153
B24121m154
B24121m155
B24121m156
B24121m157
B24121m158
B24121m159
B24121m160
B24121m161
B24121m162
B24121m163
B24121m164
B24121m165
B24121m166
B24121m167
B24121m168
B24121m169
B24121m170
B24121m171
B24121m172
B24121m173
B24121m174
B24121m175
B24121m176
B24121m177
B24121m178
B24121m179
B24121m180
B24121m181
B24121m182
B24121m183
B24121m184
B24121m185
B24121m186
B24121m187
B24121m188
B24121m189
B24121m190
B24121m191
B24121m192
B24121m193
B24121m194
B24121m195
B24121m196
B24121m197
B24121m198
B24121m199
B24121m200
B24121m201
B24121m202
B24121m203
B24121m204
B24121m205
B24121m206
B24121m207
B24121m208
B24121m209
B24121m210
B24121m211
B24121m212
B24121m213
B24121m214
B24121m215
B24121m216
B24121m217
B24121m218
B24121m219
B24121m220
B24121m221
B24121m222
B24121m223
B24121m224
B24121m225
B24121m226
B24121m227
B24121m228
B24121m229
B24121m230
B24121m231
B24121m232
B24121m233
B24121m234
B24121m235
B24121m236
B24121m237
B24121m238
B24121m239
B24121m240
B24121m241
B24121m242
B24121m243
B24121m244
B24121m245
;
RUN;
TITLE2;
