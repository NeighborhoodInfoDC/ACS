TITLE2 "m20125md0093000";
DATA work.SFm0093md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\m20125md0093000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over */
 
B24124m1='Total:'
B24124m2='Chief executives'
B24124m3='General and operations managers'
B24124m4='Legislators'
B24124m5='Advertising and promotions managers'
B24124m6='Marketing and sales managers'
B24124m7='Public relations and fundraising managers'
B24124m8='Administrative services managers'
B24124m9='Computer and information systems managers'
B24124m10='Financial managers'
B24124m11='Compensation and benefits managers'
B24124m12='Human resources managers'
B24124m13='Training and development managers'
B24124m14='Industrial production managers'
B24124m15='Purchasing managers'
B24124m16='Transportation, storage, and distribution managers'
B24124m17='Farmers, ranchers, and other agricultural managers'
B24124m18='Construction managers'
B24124m19='Education administrators'
B24124m20='Architectural and engineering managers'
B24124m21='Food service managers'
B24124m22='Funeral service managers'
B24124m23='Gaming managers'
B24124m24='Lodging managers'
B24124m25='Medical and health services managers'
B24124m26='Natural sciences managers'
B24124m27='Postmasters and mail superintendents'
B24124m28='Property, real estate, and community association managers'
B24124m29='Social and community service managers'
B24124m30='Emergency management directors'
B24124m31='Managers, all other'
B24124m32='Agents and business managers of artists, performers, and athletes'
B24124m33='Buyers and purchasing agents, farm products'
B24124m34='Wholesale and retail buyers, except farm products'
B24124m35='Purchasing agents, except wholesale, retail, and farm products'
B24124m36='Claims adjusters, appraisers, examiners, and investigators'
B24124m37='Compliance officers'
B24124m38='Cost estimators'
B24124m39='Human resources workers'
B24124m40='Compensation, benefits, and job analysis specialists'
B24124m41='Training and development specialists'
B24124m42='Logisticians'
B24124m43='Management analysts'
B24124m44='Meeting, convention, and event planners'
B24124m45='Fundraisers'
B24124m46='Market research analysts and marketing specialists'
B24124m47='Business operations specialists, all other'
B24124m48='Accountants and auditors'
B24124m49='Appraisers and assessors of real estate'
B24124m50='Budget analysts'
B24124m51='Credit analysts'
B24124m52='Financial analysts'
B24124m53='Personal financial advisors'
B24124m54='Insurance underwriters'
B24124m55='Financial examiners'
B24124m56='Credit counselors and loan officers'
B24124m57='Tax examiners and collectors, and revenue agents'
B24124m58='Tax preparers'
B24124m59='Financial specialists, all other'
B24124m60='Computer and information research scientists'
B24124m61='Computer systems analysts'
B24124m62='Information security analysts'
B24124m63='Computer programmers'
B24124m64='Software developers, applications and systems software'
B24124m65='Web developers'
B24124m66='Computer support specialists'
B24124m67='Database administrators'
B24124m68='Network and computer systems administrators'
B24124m69='Computer network architects'
B24124m70='Computer occupations, all other'
B24124m71='Actuaries'
B24124m72='Mathematicians'
B24124m73='Operations research analysts'
B24124m74='Statisticians'
B24124m75='Miscellaneous mathematical science occupations'
B24124m76='Architects, except naval'
B24124m77='Surveyors, cartographers, and photogrammetrists'
B24124m78='Aerospace engineers'
B24124m79='Agricultural engineers'
B24124m80='Biomedical engineers'
B24124m81='Chemical engineers'
B24124m82='Civil engineers'
B24124m83='Computer hardware engineers'
B24124m84='Electrical and electronics engineers'
B24124m85='Environmental engineers'
B24124m86='Industrial engineers, including health and safety'
B24124m87='Marine engineers and naval architects'
B24124m88='Materials engineers'
B24124m89='Mechanical engineers'
B24124m90='Mining and geological engineers, including mining safety engineers'
B24124m91='Nuclear engineers'
B24124m92='Petroleum engineers'
B24124m93='Engineers, all other'
B24124m94='Drafters'
B24124m95='Engineering technicians, except drafters'
B24124m96='Surveying and mapping technicians'
B24124m97='Agricultural and food scientists'
B24124m98='Biological scientists'
B24124m99='Conservation scientists and foresters'
B24124m100='Medical scientists'
B24124m101='Life scientists, all other'
B24124m102='Astronomers and physicists'
B24124m103='Atmospheric and space scientists'
B24124m104='Chemists and materials scientists'
B24124m105='Environmental scientists and geoscientists'
B24124m106='Physical scientists, all other'
B24124m107='Economists'
B24124m108='Survey researchers'
B24124m109='Psychologists'
B24124m110='Urban and regional planners'
B24124m111='Miscellaneous social scientists and related workers, including sociologists'
B24124m112='Agricultural and food science technicians'
B24124m113='Biological technicians'
B24124m114='Chemical technicians'
B24124m115='Geological and petroleum technicians'
B24124m116='Nuclear technicians'
B24124m117='Social science research assistants'
B24124m118='Miscellaneous life, physical, and social science technicians'
B24124m119='Counselors'
B24124m120='Social workers'
B24124m121='Probation officers and correctional treatment specialists'
B24124m122='Social and human service assistants'
B24124m123='Miscellaneous community and social service specialists, including health educators and community health workers'
B24124m124='Clergy'
B24124m125='Directors, religious activities and education'
B24124m126='Religious workers, all other'
B24124m127='Lawyers'
B24124m128='Judicial law clerks'
B24124m129='Judges, magistrates, and other judicial workers'
B24124m130='Paralegals and legal assistants'
B24124m131='Miscellaneous legal support workers'
B24124m132='Postsecondary teachers'
B24124m133='Preschool and kindergarten teachers'
B24124m134='Elementary and middle school teachers'
B24124m135='Secondary school teachers'
B24124m136='Special education teachers'
B24124m137='Other teachers and instructors'
B24124m138='Archivists, curators, and museum technicians'
B24124m139='Librarians'
B24124m140='Library technicians'
B24124m141='Teacher assistants'
B24124m142='Other education, training, and library workers, except teacher assistants'
B24124m143='Artists and related workers'
B24124m144='Designers'
B24124m145='Actors'
B24124m146='Producers and directors'
B24124m147='Athletes, coaches, umpires, and related workers'
B24124m148='Dancers and choreographers'
B24124m149='Musicians, singers, and related workers'
B24124m150='Entertainers and performers, sports and related workers, all other'
B24124m151='Announcers'
B24124m152='News analysts, reporters and correspondents'
B24124m153='Public relations specialists'
B24124m154='Editors'
B24124m155='Technical writers'
B24124m156='Writers and authors'
B24124m157='Miscellaneous media and communication workers'
B24124m158='Miscellaneous media and communications equipment workers, including broadcast and sound engineering technicians and radio operators'
B24124m159='Photographers'
B24124m160='Television, video, and motion picture camera operators and editors'
B24124m161='Chiropractors'
B24124m162='Dentists'
B24124m163='Dietitians and nutritionists'
B24124m164='Optometrists'
B24124m165='Pharmacists'
B24124m166='Physicians and surgeons'
B24124m167='Physician assistants'
B24124m168='Podiatrists'
B24124m169='Audiologists'
B24124m170='Occupational therapists'
B24124m171='Physical therapists'
B24124m172='Radiation therapists'
B24124m173='Recreational therapists'
B24124m174='Respiratory therapists'
B24124m175='Speech-language pathologists'
B24124m176='Miscellaneous therapists, including exercise physiologists'
B24124m177='Veterinarians'
B24124m178='Registered nurses'
B24124m179='Nurse anesthetists'
B24124m180='Nurse midwives'
B24124m181='Nurse practitioners'
B24124m182='Health diagnosing and treating practitioners, all other'
B24124m183='Clinical laboratory technologists and technicians'
B24124m184='Dental hygienists'
B24124m185='Diagnostic related technologists and technicians'
B24124m186='Emergency medical technicians and paramedics'
B24124m187='Health practitioner support technologists and technicians'
B24124m188='Licensed practical and licensed vocational nurses'
B24124m189='Medical records and health information technicians'
B24124m190='Opticians, dispensing'
B24124m191='Miscellaneous health technologists and technicians'
B24124m192='Other healthcare practitioners and technical occupations'
B24124m193='Nursing, psychiatric, and home health aides'
B24124m194='Occupational therapy assistants and aides'
B24124m195='Physical therapist assistants and aides'
B24124m196='Massage therapists'
B24124m197='Dental assistants'
B24124m198='Medical assistants'
B24124m199='Medical transcriptionists'
B24124m200='Pharmacy aides'
B24124m201='Veterinary assistants and laboratory animal caretakers'
B24124m202='Phlebotomists'
B24124m203='Healthcare support workers, all other, including medical equipment preparers'
B24124m204='First-line supervisors of correctional officers'
B24124m205='First-line supervisors of police and detectives'
B24124m206='First-line supervisors of fire fighting and prevention workers'
B24124m207='First-line supervisors of protective service workers, all other'
B24124m208='Firefighters'
B24124m209='Fire inspectors'
B24124m210='Bailiffs, correctional officers, and jailers'
B24124m211='Detectives and criminal investigators'
B24124m212='Fish and game wardens'
B24124m213='Parking enforcement workers'
B24124m214='Police and sheriff''s patrol officers'
B24124m215='Transit and railroad police'
B24124m216='Animal control workers'
B24124m217='Private detectives and investigators'
B24124m218='Security guards and gaming surveillance officers'
B24124m219='Crossing guards'
B24124m220='Transportation security screeners'
B24124m221='Lifeguards and other recreational, and all other protective service workers'
B24124m222='Chefs and head cooks'
B24124m223='First-line supervisors of food preparation and serving workers'
B24124m224='Cooks'
B24124m225='Food preparation workers'
B24124m226='Bartenders'
B24124m227='Combined food preparation and serving workers, including fast food'
B24124m228='Counter attendants, cafeteria, food concession, and coffee shop'
B24124m229='Waiters and waitresses'
B24124m230='Food servers, nonrestaurant'
B24124m231='Dining room and cafeteria attendants and bartender helpers'
B24124m232='Dishwashers'
B24124m233='Hosts and hostesses, restaurant, lounge, and coffee shop'
B24124m234='Food preparation and serving related workers, all other'
B24124m235='First-line supervisors of housekeeping and janitorial workers'
B24124m236='First-line supervisors of landscaping, lawn service, and groundskeeping workers'
B24124m237='Janitors and building cleaners'
B24124m238='Maids and housekeeping cleaners'
B24124m239='Pest control workers'
B24124m240='Grounds maintenance workers'
B24124m241='First-line supervisors of gaming workers'
B24124m242='First-line supervisors of personal service workers'
B24124m243='Animal trainers'
B24124m244='Nonfarm animal caretakers'
B24124m245='Gaming services workers'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B24124m1
B24124m2
B24124m3
B24124m4
B24124m5
B24124m6
B24124m7
B24124m8
B24124m9
B24124m10
B24124m11
B24124m12
B24124m13
B24124m14
B24124m15
B24124m16
B24124m17
B24124m18
B24124m19
B24124m20
B24124m21
B24124m22
B24124m23
B24124m24
B24124m25
B24124m26
B24124m27
B24124m28
B24124m29
B24124m30
B24124m31
B24124m32
B24124m33
B24124m34
B24124m35
B24124m36
B24124m37
B24124m38
B24124m39
B24124m40
B24124m41
B24124m42
B24124m43
B24124m44
B24124m45
B24124m46
B24124m47
B24124m48
B24124m49
B24124m50
B24124m51
B24124m52
B24124m53
B24124m54
B24124m55
B24124m56
B24124m57
B24124m58
B24124m59
B24124m60
B24124m61
B24124m62
B24124m63
B24124m64
B24124m65
B24124m66
B24124m67
B24124m68
B24124m69
B24124m70
B24124m71
B24124m72
B24124m73
B24124m74
B24124m75
B24124m76
B24124m77
B24124m78
B24124m79
B24124m80
B24124m81
B24124m82
B24124m83
B24124m84
B24124m85
B24124m86
B24124m87
B24124m88
B24124m89
B24124m90
B24124m91
B24124m92
B24124m93
B24124m94
B24124m95
B24124m96
B24124m97
B24124m98
B24124m99
B24124m100
B24124m101
B24124m102
B24124m103
B24124m104
B24124m105
B24124m106
B24124m107
B24124m108
B24124m109
B24124m110
B24124m111
B24124m112
B24124m113
B24124m114
B24124m115
B24124m116
B24124m117
B24124m118
B24124m119
B24124m120
B24124m121
B24124m122
B24124m123
B24124m124
B24124m125
B24124m126
B24124m127
B24124m128
B24124m129
B24124m130
B24124m131
B24124m132
B24124m133
B24124m134
B24124m135
B24124m136
B24124m137
B24124m138
B24124m139
B24124m140
B24124m141
B24124m142
B24124m143
B24124m144
B24124m145
B24124m146
B24124m147
B24124m148
B24124m149
B24124m150
B24124m151
B24124m152
B24124m153
B24124m154
B24124m155
B24124m156
B24124m157
B24124m158
B24124m159
B24124m160
B24124m161
B24124m162
B24124m163
B24124m164
B24124m165
B24124m166
B24124m167
B24124m168
B24124m169
B24124m170
B24124m171
B24124m172
B24124m173
B24124m174
B24124m175
B24124m176
B24124m177
B24124m178
B24124m179
B24124m180
B24124m181
B24124m182
B24124m183
B24124m184
B24124m185
B24124m186
B24124m187
B24124m188
B24124m189
B24124m190
B24124m191
B24124m192
B24124m193
B24124m194
B24124m195
B24124m196
B24124m197
B24124m198
B24124m199
B24124m200
B24124m201
B24124m202
B24124m203
B24124m204
B24124m205
B24124m206
B24124m207
B24124m208
B24124m209
B24124m210
B24124m211
B24124m212
B24124m213
B24124m214
B24124m215
B24124m216
B24124m217
B24124m218
B24124m219
B24124m220
B24124m221
B24124m222
B24124m223
B24124m224
B24124m225
B24124m226
B24124m227
B24124m228
B24124m229
B24124m230
B24124m231
B24124m232
B24124m233
B24124m234
B24124m235
B24124m236
B24124m237
B24124m238
B24124m239
B24124m240
B24124m241
B24124m242
B24124m243
B24124m244
B24124m245
;
RUN;
TITLE2;
