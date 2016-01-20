TITLE2 "m20125md0096000";
DATA work.SFm0096md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0096000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED MALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed male population 16 years and over */
 
B24125m1='Total:'
B24125m2='Chief executives'
B24125m3='General and operations managers'
B24125m4='Legislators'
B24125m5='Advertising and promotions managers'
B24125m6='Marketing and sales managers'
B24125m7='Public relations and fundraising managers'
B24125m8='Administrative services managers'
B24125m9='Computer and information systems managers'
B24125m10='Financial managers'
B24125m11='Compensation and benefits managers'
B24125m12='Human resources managers'
B24125m13='Training and development managers'
B24125m14='Industrial production managers'
B24125m15='Purchasing managers'
B24125m16='Transportation, storage, and distribution managers'
B24125m17='Farmers, ranchers, and other agricultural managers'
B24125m18='Construction managers'
B24125m19='Education administrators'
B24125m20='Architectural and engineering managers'
B24125m21='Food service managers'
B24125m22='Funeral service managers'
B24125m23='Gaming managers'
B24125m24='Lodging managers'
B24125m25='Medical and health services managers'
B24125m26='Natural sciences managers'
B24125m27='Postmasters and mail superintendents'
B24125m28='Property, real estate, and community association managers'
B24125m29='Social and community service managers'
B24125m30='Emergency management directors'
B24125m31='Managers, all other'
B24125m32='Agents and business managers of artists, performers, and athletes'
B24125m33='Buyers and purchasing agents, farm products'
B24125m34='Wholesale and retail buyers, except farm products'
B24125m35='Purchasing agents, except wholesale, retail, and farm products'
B24125m36='Claims adjusters, appraisers, examiners, and investigators'
B24125m37='Compliance officers'
B24125m38='Cost estimators'
B24125m39='Human resources workers'
B24125m40='Compensation, benefits, and job analysis specialists'
B24125m41='Training and development specialists'
B24125m42='Logisticians'
B24125m43='Management analysts'
B24125m44='Meeting, convention, and event planners'
B24125m45='Fundraisers'
B24125m46='Market research analysts and marketing specialists'
B24125m47='Business operations specialists, all other'
B24125m48='Accountants and auditors'
B24125m49='Appraisers and assessors of real estate'
B24125m50='Budget analysts'
B24125m51='Credit analysts'
B24125m52='Financial analysts'
B24125m53='Personal financial advisors'
B24125m54='Insurance underwriters'
B24125m55='Financial examiners'
B24125m56='Credit counselors and loan officers'
B24125m57='Tax examiners and collectors, and revenue agents'
B24125m58='Tax preparers'
B24125m59='Financial specialists, all other'
B24125m60='Computer and information research scientists'
B24125m61='Computer systems analysts'
B24125m62='Information security analysts'
B24125m63='Computer programmers'
B24125m64='Software developers, applications and systems software'
B24125m65='Web developers'
B24125m66='Computer support specialists'
B24125m67='Database administrators'
B24125m68='Network and computer systems administrators'
B24125m69='Computer network architects'
B24125m70='Computer occupations, all other'
B24125m71='Actuaries'
B24125m72='Mathematicians'
B24125m73='Operations research analysts'
B24125m74='Statisticians'
B24125m75='Miscellaneous mathematical science occupations'
B24125m76='Architects, except naval'
B24125m77='Surveyors, cartographers, and photogrammetrists'
B24125m78='Aerospace engineers'
B24125m79='Agricultural engineers'
B24125m80='Biomedical engineers'
B24125m81='Chemical engineers'
B24125m82='Civil engineers'
B24125m83='Computer hardware engineers'
B24125m84='Electrical and electronics engineers'
B24125m85='Environmental engineers'
B24125m86='Industrial engineers, including health and safety'
B24125m87='Marine engineers and naval architects'
B24125m88='Materials engineers'
B24125m89='Mechanical engineers'
B24125m90='Mining and geological engineers, including mining safety engineers'
B24125m91='Nuclear engineers'
B24125m92='Petroleum engineers'
B24125m93='Engineers, all other'
B24125m94='Drafters'
B24125m95='Engineering technicians, except drafters'
B24125m96='Surveying and mapping technicians'
B24125m97='Agricultural and food scientists'
B24125m98='Biological scientists'
B24125m99='Conservation scientists and foresters'
B24125m100='Medical scientists'
B24125m101='Life scientists, all other'
B24125m102='Astronomers and physicists'
B24125m103='Atmospheric and space scientists'
B24125m104='Chemists and materials scientists'
B24125m105='Environmental scientists and geoscientists'
B24125m106='Physical scientists, all other'
B24125m107='Economists'
B24125m108='Survey researchers'
B24125m109='Psychologists'
B24125m110='Urban and regional planners'
B24125m111='Miscellaneous social scientists and related workers, including sociologists'
B24125m112='Agricultural and food science technicians'
B24125m113='Biological technicians'
B24125m114='Chemical technicians'
B24125m115='Geological and petroleum technicians'
B24125m116='Nuclear technicians'
B24125m117='Social science research assistants'
B24125m118='Miscellaneous life, physical, and social science technicians'
B24125m119='Counselors'
B24125m120='Social workers'
B24125m121='Probation officers and correctional treatment specialists'
B24125m122='Social and human service assistants'
B24125m123='Miscellaneous community and social service specialists, including health educators and community health workers'
B24125m124='Clergy'
B24125m125='Directors, religious activities and education'
B24125m126='Religious workers, all other'
B24125m127='Lawyers'
B24125m128='Judicial law clerks'
B24125m129='Judges, magistrates, and other judicial workers'
B24125m130='Paralegals and legal assistants'
B24125m131='Miscellaneous legal support workers'
B24125m132='Postsecondary teachers'
B24125m133='Preschool and kindergarten teachers'
B24125m134='Elementary and middle school teachers'
B24125m135='Secondary school teachers'
B24125m136='Special education teachers'
B24125m137='Other teachers and instructors'
B24125m138='Archivists, curators, and museum technicians'
B24125m139='Librarians'
B24125m140='Library technicians'
B24125m141='Teacher assistants'
B24125m142='Other education, training, and library workers, except teacher assistants'
B24125m143='Artists and related workers'
B24125m144='Designers'
B24125m145='Actors'
B24125m146='Producers and directors'
B24125m147='Athletes, coaches, umpires, and related workers'
B24125m148='Dancers and choreographers'
B24125m149='Musicians, singers, and related workers'
B24125m150='Entertainers and performers, sports and related workers, all other'
B24125m151='Announcers'
B24125m152='News analysts, reporters and correspondents'
B24125m153='Public relations specialists'
B24125m154='Editors'
B24125m155='Technical writers'
B24125m156='Writers and authors'
B24125m157='Miscellaneous media and communication workers'
B24125m158='Miscellaneous media and communications equipment workers, including broadcast and sound engineering technicians and radio operators'
B24125m159='Photographers'
B24125m160='Television, video, and motion picture camera operators and editors'
B24125m161='Chiropractors'
B24125m162='Dentists'
B24125m163='Dietitians and nutritionists'
B24125m164='Optometrists'
B24125m165='Pharmacists'
B24125m166='Physicians and surgeons'
B24125m167='Physician assistants'
B24125m168='Podiatrists'
B24125m169='Audiologists'
B24125m170='Occupational therapists'
B24125m171='Physical therapists'
B24125m172='Radiation therapists'
B24125m173='Recreational therapists'
B24125m174='Respiratory therapists'
B24125m175='Speech-language pathologists'
B24125m176='Miscellaneous therapists, including exercise physiologists'
B24125m177='Veterinarians'
B24125m178='Registered nurses'
B24125m179='Nurse anesthetists'
B24125m180='Nurse midwives'
B24125m181='Nurse practitioners'
B24125m182='Health diagnosing and treating practitioners, all other'
B24125m183='Clinical laboratory technologists and technicians'
B24125m184='Dental hygienists'
B24125m185='Diagnostic related technologists and technicians'
B24125m186='Emergency medical technicians and paramedics'
B24125m187='Health practitioner support technologists and technicians'
B24125m188='Licensed practical and licensed vocational nurses'
B24125m189='Medical records and health information technicians'
B24125m190='Opticians, dispensing'
B24125m191='Miscellaneous health technologists and technicians'
B24125m192='Other healthcare practitioners and technical occupations'
B24125m193='Nursing, psychiatric, and home health aides'
B24125m194='Occupational therapy assistants and aides'
B24125m195='Physical therapist assistants and aides'
B24125m196='Massage therapists'
B24125m197='Dental assistants'
B24125m198='Medical assistants'
B24125m199='Medical transcriptionists'
B24125m200='Pharmacy aides'
B24125m201='Veterinary assistants and laboratory animal caretakers'
B24125m202='Phlebotomists'
B24125m203='Healthcare support workers, all other, including medical equipment preparers'
B24125m204='First-line supervisors of correctional officers'
B24125m205='First-line supervisors of police and detectives'
B24125m206='First-line supervisors of fire fighting and prevention workers'
B24125m207='First-line supervisors of protective service workers, all other'
B24125m208='Firefighters'
B24125m209='Fire inspectors'
B24125m210='Bailiffs, correctional officers, and jailers'
B24125m211='Detectives and criminal investigators'
B24125m212='Fish and game wardens'
B24125m213='Parking enforcement workers'
B24125m214='Police and sheriff''s patrol officers'
B24125m215='Transit and railroad police'
B24125m216='Animal control workers'
B24125m217='Private detectives and investigators'
B24125m218='Security guards and gaming surveillance officers'
B24125m219='Crossing guards'
B24125m220='Transportation security screeners'
B24125m221='Lifeguards and other recreational, and all other protective service workers'
B24125m222='Chefs and head cooks'
B24125m223='First-line supervisors of food preparation and serving workers'
B24125m224='Cooks'
B24125m225='Food preparation workers'
B24125m226='Bartenders'
B24125m227='Combined food preparation and serving workers, including fast food'
B24125m228='Counter attendants, cafeteria, food concession, and coffee shop'
B24125m229='Waiters and waitresses'
B24125m230='Food servers, nonrestaurant'
B24125m231='Dining room and cafeteria attendants and bartender helpers'
B24125m232='Dishwashers'
B24125m233='Hosts and hostesses, restaurant, lounge, and coffee shop'
B24125m234='Food preparation and serving related workers, all other'
B24125m235='First-line supervisors of housekeeping and janitorial workers'
B24125m236='First-line supervisors of landscaping, lawn service, and groundskeeping workers'
B24125m237='Janitors and building cleaners'
B24125m238='Maids and housekeeping cleaners'
B24125m239='Pest control workers'
B24125m240='Grounds maintenance workers'
B24125m241='First-line supervisors of gaming workers'
B24125m242='First-line supervisors of personal service workers'
B24125m243='Animal trainers'
B24125m244='Nonfarm animal caretakers'
B24125m245='Gaming services workers'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B24125m1
B24125m2
B24125m3
B24125m4
B24125m5
B24125m6
B24125m7
B24125m8
B24125m9
B24125m10
B24125m11
B24125m12
B24125m13
B24125m14
B24125m15
B24125m16
B24125m17
B24125m18
B24125m19
B24125m20
B24125m21
B24125m22
B24125m23
B24125m24
B24125m25
B24125m26
B24125m27
B24125m28
B24125m29
B24125m30
B24125m31
B24125m32
B24125m33
B24125m34
B24125m35
B24125m36
B24125m37
B24125m38
B24125m39
B24125m40
B24125m41
B24125m42
B24125m43
B24125m44
B24125m45
B24125m46
B24125m47
B24125m48
B24125m49
B24125m50
B24125m51
B24125m52
B24125m53
B24125m54
B24125m55
B24125m56
B24125m57
B24125m58
B24125m59
B24125m60
B24125m61
B24125m62
B24125m63
B24125m64
B24125m65
B24125m66
B24125m67
B24125m68
B24125m69
B24125m70
B24125m71
B24125m72
B24125m73
B24125m74
B24125m75
B24125m76
B24125m77
B24125m78
B24125m79
B24125m80
B24125m81
B24125m82
B24125m83
B24125m84
B24125m85
B24125m86
B24125m87
B24125m88
B24125m89
B24125m90
B24125m91
B24125m92
B24125m93
B24125m94
B24125m95
B24125m96
B24125m97
B24125m98
B24125m99
B24125m100
B24125m101
B24125m102
B24125m103
B24125m104
B24125m105
B24125m106
B24125m107
B24125m108
B24125m109
B24125m110
B24125m111
B24125m112
B24125m113
B24125m114
B24125m115
B24125m116
B24125m117
B24125m118
B24125m119
B24125m120
B24125m121
B24125m122
B24125m123
B24125m124
B24125m125
B24125m126
B24125m127
B24125m128
B24125m129
B24125m130
B24125m131
B24125m132
B24125m133
B24125m134
B24125m135
B24125m136
B24125m137
B24125m138
B24125m139
B24125m140
B24125m141
B24125m142
B24125m143
B24125m144
B24125m145
B24125m146
B24125m147
B24125m148
B24125m149
B24125m150
B24125m151
B24125m152
B24125m153
B24125m154
B24125m155
B24125m156
B24125m157
B24125m158
B24125m159
B24125m160
B24125m161
B24125m162
B24125m163
B24125m164
B24125m165
B24125m166
B24125m167
B24125m168
B24125m169
B24125m170
B24125m171
B24125m172
B24125m173
B24125m174
B24125m175
B24125m176
B24125m177
B24125m178
B24125m179
B24125m180
B24125m181
B24125m182
B24125m183
B24125m184
B24125m185
B24125m186
B24125m187
B24125m188
B24125m189
B24125m190
B24125m191
B24125m192
B24125m193
B24125m194
B24125m195
B24125m196
B24125m197
B24125m198
B24125m199
B24125m200
B24125m201
B24125m202
B24125m203
B24125m204
B24125m205
B24125m206
B24125m207
B24125m208
B24125m209
B24125m210
B24125m211
B24125m212
B24125m213
B24125m214
B24125m215
B24125m216
B24125m217
B24125m218
B24125m219
B24125m220
B24125m221
B24125m222
B24125m223
B24125m224
B24125m225
B24125m226
B24125m227
B24125m228
B24125m229
B24125m230
B24125m231
B24125m232
B24125m233
B24125m234
B24125m235
B24125m236
B24125m237
B24125m238
B24125m239
B24125m240
B24125m241
B24125m242
B24125m243
B24125m244
B24125m245
;
RUN;
TITLE2;
