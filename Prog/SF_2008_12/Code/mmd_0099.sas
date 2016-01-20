TITLE2 "m20125md0099000";
DATA work.SFm0099md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0099000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED FEMALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed female population 16 years and over */
 
B24126m1='Total:'
B24126m2='Chief executives'
B24126m3='General and operations managers'
B24126m4='Legislators'
B24126m5='Advertising and promotions managers'
B24126m6='Marketing and sales managers'
B24126m7='Public relations and fundraising managers'
B24126m8='Administrative services managers'
B24126m9='Computer and information systems managers'
B24126m10='Financial managers'
B24126m11='Compensation and benefits managers'
B24126m12='Human resources managers'
B24126m13='Training and development managers'
B24126m14='Industrial production managers'
B24126m15='Purchasing managers'
B24126m16='Transportation, storage, and distribution managers'
B24126m17='Farmers, ranchers, and other agricultural managers'
B24126m18='Construction managers'
B24126m19='Education administrators'
B24126m20='Architectural and engineering managers'
B24126m21='Food service managers'
B24126m22='Funeral service managers'
B24126m23='Gaming managers'
B24126m24='Lodging managers'
B24126m25='Medical and health services managers'
B24126m26='Natural sciences managers'
B24126m27='Postmasters and mail superintendents'
B24126m28='Property, real estate, and community association managers'
B24126m29='Social and community service managers'
B24126m30='Emergency management directors'
B24126m31='Managers, all other'
B24126m32='Agents and business managers of artists, performers, and athletes'
B24126m33='Buyers and purchasing agents, farm products'
B24126m34='Wholesale and retail buyers, except farm products'
B24126m35='Purchasing agents, except wholesale, retail, and farm products'
B24126m36='Claims adjusters, appraisers, examiners, and investigators'
B24126m37='Compliance officers'
B24126m38='Cost estimators'
B24126m39='Human resources workers'
B24126m40='Compensation, benefits, and job analysis specialists'
B24126m41='Training and development specialists'
B24126m42='Logisticians'
B24126m43='Management analysts'
B24126m44='Meeting, convention, and event planners'
B24126m45='Fundraisers'
B24126m46='Market research analysts and marketing specialists'
B24126m47='Business operations specialists, all other'
B24126m48='Accountants and auditors'
B24126m49='Appraisers and assessors of real estate'
B24126m50='Budget analysts'
B24126m51='Credit analysts'
B24126m52='Financial analysts'
B24126m53='Personal financial advisors'
B24126m54='Insurance underwriters'
B24126m55='Financial examiners'
B24126m56='Credit counselors and loan officers'
B24126m57='Tax examiners and collectors, and revenue agents'
B24126m58='Tax preparers'
B24126m59='Financial specialists, all other'
B24126m60='Computer and information research scientists'
B24126m61='Computer systems analysts'
B24126m62='Information security analysts'
B24126m63='Computer programmers'
B24126m64='Software developers, applications and systems software'
B24126m65='Web developers'
B24126m66='Computer support specialists'
B24126m67='Database administrators'
B24126m68='Network and computer systems administrators'
B24126m69='Computer network architects'
B24126m70='Computer occupations, all other'
B24126m71='Actuaries'
B24126m72='Mathematicians'
B24126m73='Operations research analysts'
B24126m74='Statisticians'
B24126m75='Miscellaneous mathematical science occupations'
B24126m76='Architects, except naval'
B24126m77='Surveyors, cartographers, and photogrammetrists'
B24126m78='Aerospace engineers'
B24126m79='Agricultural engineers'
B24126m80='Biomedical engineers'
B24126m81='Chemical engineers'
B24126m82='Civil engineers'
B24126m83='Computer hardware engineers'
B24126m84='Electrical and electronics engineers'
B24126m85='Environmental engineers'
B24126m86='Industrial engineers, including health and safety'
B24126m87='Marine engineers and naval architects'
B24126m88='Materials engineers'
B24126m89='Mechanical engineers'
B24126m90='Mining and geological engineers, including mining safety engineers'
B24126m91='Nuclear engineers'
B24126m92='Petroleum engineers'
B24126m93='Engineers, all other'
B24126m94='Drafters'
B24126m95='Engineering technicians, except drafters'
B24126m96='Surveying and mapping technicians'
B24126m97='Agricultural and food scientists'
B24126m98='Biological scientists'
B24126m99='Conservation scientists and foresters'
B24126m100='Medical scientists'
B24126m101='Life scientists, all other'
B24126m102='Astronomers and physicists'
B24126m103='Atmospheric and space scientists'
B24126m104='Chemists and materials scientists'
B24126m105='Environmental scientists and geoscientists'
B24126m106='Physical scientists, all other'
B24126m107='Economists'
B24126m108='Survey researchers'
B24126m109='Psychologists'
B24126m110='Urban and regional planners'
B24126m111='Miscellaneous social scientists and related workers, including sociologists'
B24126m112='Agricultural and food science technicians'
B24126m113='Biological technicians'
B24126m114='Chemical technicians'
B24126m115='Geological and petroleum technicians'
B24126m116='Nuclear technicians'
B24126m117='Social science research assistants'
B24126m118='Miscellaneous life, physical, and social science technicians'
B24126m119='Counselors'
B24126m120='Social workers'
B24126m121='Probation officers and correctional treatment specialists'
B24126m122='Social and human service assistants'
B24126m123='Miscellaneous community and social service specialists, including health educators and community health workers'
B24126m124='Clergy'
B24126m125='Directors, religious activities and education'
B24126m126='Religious workers, all other'
B24126m127='Lawyers'
B24126m128='Judicial law clerks'
B24126m129='Judges, magistrates, and other judicial workers'
B24126m130='Paralegals and legal assistants'
B24126m131='Miscellaneous legal support workers'
B24126m132='Postsecondary teachers'
B24126m133='Preschool and kindergarten teachers'
B24126m134='Elementary and middle school teachers'
B24126m135='Secondary school teachers'
B24126m136='Special education teachers'
B24126m137='Other teachers and instructors'
B24126m138='Archivists, curators, and museum technicians'
B24126m139='Librarians'
B24126m140='Library technicians'
B24126m141='Teacher assistants'
B24126m142='Other education, training, and library workers, except teacher assistants'
B24126m143='Artists and related workers'
B24126m144='Designers'
B24126m145='Actors'
B24126m146='Producers and directors'
B24126m147='Athletes, coaches, umpires, and related workers'
B24126m148='Dancers and choreographers'
B24126m149='Musicians, singers, and related workers'
B24126m150='Entertainers and performers, sports and related workers, all other'
B24126m151='Announcers'
B24126m152='News analysts, reporters and correspondents'
B24126m153='Public relations specialists'
B24126m154='Editors'
B24126m155='Technical writers'
B24126m156='Writers and authors'
B24126m157='Miscellaneous media and communication workers'
B24126m158='Miscellaneous media and communications equipment workers, including broadcast and sound engineering technicians and radio operators'
B24126m159='Photographers'
B24126m160='Television, video, and motion picture camera operators and editors'
B24126m161='Chiropractors'
B24126m162='Dentists'
B24126m163='Dietitians and nutritionists'
B24126m164='Optometrists'
B24126m165='Pharmacists'
B24126m166='Physicians and surgeons'
B24126m167='Physician assistants'
B24126m168='Podiatrists'
B24126m169='Audiologists'
B24126m170='Occupational therapists'
B24126m171='Physical therapists'
B24126m172='Radiation therapists'
B24126m173='Recreational therapists'
B24126m174='Respiratory therapists'
B24126m175='Speech-language pathologists'
B24126m176='Miscellaneous therapists, including exercise physiologists'
B24126m177='Veterinarians'
B24126m178='Registered nurses'
B24126m179='Nurse anesthetists'
B24126m180='Nurse midwives'
B24126m181='Nurse practitioners'
B24126m182='Health diagnosing and treating practitioners, all other'
B24126m183='Clinical laboratory technologists and technicians'
B24126m184='Dental hygienists'
B24126m185='Diagnostic related technologists and technicians'
B24126m186='Emergency medical technicians and paramedics'
B24126m187='Health practitioner support technologists and technicians'
B24126m188='Licensed practical and licensed vocational nurses'
B24126m189='Medical records and health information technicians'
B24126m190='Opticians, dispensing'
B24126m191='Miscellaneous health technologists and technicians'
B24126m192='Other healthcare practitioners and technical occupations'
B24126m193='Nursing, psychiatric, and home health aides'
B24126m194='Occupational therapy assistants and aides'
B24126m195='Physical therapist assistants and aides'
B24126m196='Massage therapists'
B24126m197='Dental assistants'
B24126m198='Medical assistants'
B24126m199='Medical transcriptionists'
B24126m200='Pharmacy aides'
B24126m201='Veterinary assistants and laboratory animal caretakers'
B24126m202='Phlebotomists'
B24126m203='Healthcare support workers, all other, including medical equipment preparers'
B24126m204='First-line supervisors of correctional officers'
B24126m205='First-line supervisors of police and detectives'
B24126m206='First-line supervisors of fire fighting and prevention workers'
B24126m207='First-line supervisors of protective service workers, all other'
B24126m208='Firefighters'
B24126m209='Fire inspectors'
B24126m210='Bailiffs, correctional officers, and jailers'
B24126m211='Detectives and criminal investigators'
B24126m212='Fish and game wardens'
B24126m213='Parking enforcement workers'
B24126m214='Police and sheriff''s patrol officers'
B24126m215='Transit and railroad police'
B24126m216='Animal control workers'
B24126m217='Private detectives and investigators'
B24126m218='Security guards and gaming surveillance officers'
B24126m219='Crossing guards'
B24126m220='Transportation security screeners'
B24126m221='Lifeguards and other recreational, and all other protective service workers'
B24126m222='Chefs and head cooks'
B24126m223='First-line supervisors of food preparation and serving workers'
B24126m224='Cooks'
B24126m225='Food preparation workers'
B24126m226='Bartenders'
B24126m227='Combined food preparation and serving workers, including fast food'
B24126m228='Counter attendants, cafeteria, food concession, and coffee shop'
B24126m229='Waiters and waitresses'
B24126m230='Food servers, nonrestaurant'
B24126m231='Dining room and cafeteria attendants and bartender helpers'
B24126m232='Dishwashers'
B24126m233='Hosts and hostesses, restaurant, lounge, and coffee shop'
B24126m234='Food preparation and serving related workers, all other'
B24126m235='First-line supervisors of housekeeping and janitorial workers'
B24126m236='First-line supervisors of landscaping, lawn service, and groundskeeping workers'
B24126m237='Janitors and building cleaners'
B24126m238='Maids and housekeeping cleaners'
B24126m239='Pest control workers'
B24126m240='Grounds maintenance workers'
B24126m241='First-line supervisors of gaming workers'
B24126m242='First-line supervisors of personal service workers'
B24126m243='Animal trainers'
B24126m244='Nonfarm animal caretakers'
B24126m245='Gaming services workers'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B24126m1
B24126m2
B24126m3
B24126m4
B24126m5
B24126m6
B24126m7
B24126m8
B24126m9
B24126m10
B24126m11
B24126m12
B24126m13
B24126m14
B24126m15
B24126m16
B24126m17
B24126m18
B24126m19
B24126m20
B24126m21
B24126m22
B24126m23
B24126m24
B24126m25
B24126m26
B24126m27
B24126m28
B24126m29
B24126m30
B24126m31
B24126m32
B24126m33
B24126m34
B24126m35
B24126m36
B24126m37
B24126m38
B24126m39
B24126m40
B24126m41
B24126m42
B24126m43
B24126m44
B24126m45
B24126m46
B24126m47
B24126m48
B24126m49
B24126m50
B24126m51
B24126m52
B24126m53
B24126m54
B24126m55
B24126m56
B24126m57
B24126m58
B24126m59
B24126m60
B24126m61
B24126m62
B24126m63
B24126m64
B24126m65
B24126m66
B24126m67
B24126m68
B24126m69
B24126m70
B24126m71
B24126m72
B24126m73
B24126m74
B24126m75
B24126m76
B24126m77
B24126m78
B24126m79
B24126m80
B24126m81
B24126m82
B24126m83
B24126m84
B24126m85
B24126m86
B24126m87
B24126m88
B24126m89
B24126m90
B24126m91
B24126m92
B24126m93
B24126m94
B24126m95
B24126m96
B24126m97
B24126m98
B24126m99
B24126m100
B24126m101
B24126m102
B24126m103
B24126m104
B24126m105
B24126m106
B24126m107
B24126m108
B24126m109
B24126m110
B24126m111
B24126m112
B24126m113
B24126m114
B24126m115
B24126m116
B24126m117
B24126m118
B24126m119
B24126m120
B24126m121
B24126m122
B24126m123
B24126m124
B24126m125
B24126m126
B24126m127
B24126m128
B24126m129
B24126m130
B24126m131
B24126m132
B24126m133
B24126m134
B24126m135
B24126m136
B24126m137
B24126m138
B24126m139
B24126m140
B24126m141
B24126m142
B24126m143
B24126m144
B24126m145
B24126m146
B24126m147
B24126m148
B24126m149
B24126m150
B24126m151
B24126m152
B24126m153
B24126m154
B24126m155
B24126m156
B24126m157
B24126m158
B24126m159
B24126m160
B24126m161
B24126m162
B24126m163
B24126m164
B24126m165
B24126m166
B24126m167
B24126m168
B24126m169
B24126m170
B24126m171
B24126m172
B24126m173
B24126m174
B24126m175
B24126m176
B24126m177
B24126m178
B24126m179
B24126m180
B24126m181
B24126m182
B24126m183
B24126m184
B24126m185
B24126m186
B24126m187
B24126m188
B24126m189
B24126m190
B24126m191
B24126m192
B24126m193
B24126m194
B24126m195
B24126m196
B24126m197
B24126m198
B24126m199
B24126m200
B24126m201
B24126m202
B24126m203
B24126m204
B24126m205
B24126m206
B24126m207
B24126m208
B24126m209
B24126m210
B24126m211
B24126m212
B24126m213
B24126m214
B24126m215
B24126m216
B24126m217
B24126m218
B24126m219
B24126m220
B24126m221
B24126m222
B24126m223
B24126m224
B24126m225
B24126m226
B24126m227
B24126m228
B24126m229
B24126m230
B24126m231
B24126m232
B24126m233
B24126m234
B24126m235
B24126m236
B24126m237
B24126m238
B24126m239
B24126m240
B24126m241
B24126m242
B24126m243
B24126m244
B24126m245
;
RUN;
TITLE2;
