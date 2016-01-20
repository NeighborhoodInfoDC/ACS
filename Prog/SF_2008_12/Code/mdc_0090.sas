TITLE2 "m20125dc0090000";
DATA work.SFm0090dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\m20125dc0090000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED FEMALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed female population 16 years and over with earnings */
 
B24123m1='Total:'
B24123m2='Chief executives'
B24123m3='General and operations managers'
B24123m4='Legislators'
B24123m5='Advertising and promotions managers'
B24123m6='Marketing and sales managers'
B24123m7='Public relations and fundraising managers'
B24123m8='Administrative services managers'
B24123m9='Computer and information systems managers'
B24123m10='Financial managers'
B24123m11='Compensation and benefits managers'
B24123m12='Human resources managers'
B24123m13='Training and development managers'
B24123m14='Industrial production managers'
B24123m15='Purchasing managers'
B24123m16='Transportation, storage, and distribution managers'
B24123m17='Farmers, ranchers, and other agricultural managers'
B24123m18='Construction managers'
B24123m19='Education administrators'
B24123m20='Architectural and engineering managers'
B24123m21='Food service managers'
B24123m22='Funeral service managers'
B24123m23='Gaming managers'
B24123m24='Lodging managers'
B24123m25='Medical and health services managers'
B24123m26='Natural sciences managers'
B24123m27='Postmasters and mail superintendents'
B24123m28='Property, real estate, and community association managers'
B24123m29='Social and community service managers'
B24123m30='Emergency management directors'
B24123m31='Managers, all other'
B24123m32='Agents and business managers of artists, performers, and athletes'
B24123m33='Buyers and purchasing agents, farm products'
B24123m34='Wholesale and retail buyers, except farm products'
B24123m35='Purchasing agents, except wholesale, retail, and farm products'
B24123m36='Claims adjusters, appraisers, examiners, and investigators'
B24123m37='Compliance officers'
B24123m38='Cost estimators'
B24123m39='Human resources workers'
B24123m40='Compensation, benefits, and job analysis specialists'
B24123m41='Training and development specialists'
B24123m42='Logisticians'
B24123m43='Management analysts'
B24123m44='Meeting, convention, and event planners'
B24123m45='Fundraisers'
B24123m46='Market research analysts and marketing specialists'
B24123m47='Business operations specialists, all other'
B24123m48='Accountants and auditors'
B24123m49='Appraisers and assessors of real estate'
B24123m50='Budget analysts'
B24123m51='Credit analysts'
B24123m52='Financial analysts'
B24123m53='Personal financial advisors'
B24123m54='Insurance underwriters'
B24123m55='Financial examiners'
B24123m56='Credit counselors and loan officers'
B24123m57='Tax examiners and collectors, and revenue agents'
B24123m58='Tax preparers'
B24123m59='Financial specialists, all other'
B24123m60='Computer and information research scientists'
B24123m61='Computer systems analysts'
B24123m62='Information security analysts'
B24123m63='Computer programmers'
B24123m64='Software developers, applications and systems software'
B24123m65='Web developers'
B24123m66='Computer support specialists'
B24123m67='Database administrators'
B24123m68='Network and computer systems administrators'
B24123m69='Computer network architects'
B24123m70='Computer occupations, all other'
B24123m71='Actuaries'
B24123m72='Mathematicians'
B24123m73='Operations research analysts'
B24123m74='Statisticians'
B24123m75='Miscellaneous mathematical science occupations'
B24123m76='Architects, except naval'
B24123m77='Surveyors, cartographers, and photogrammetrists'
B24123m78='Aerospace engineers'
B24123m79='Agricultural engineers'
B24123m80='Biomedical engineers'
B24123m81='Chemical engineers'
B24123m82='Civil engineers'
B24123m83='Computer hardware engineers'
B24123m84='Electrical and electronics engineers'
B24123m85='Environmental engineers'
B24123m86='Industrial engineers, including health and safety'
B24123m87='Marine engineers and naval architects'
B24123m88='Materials engineers'
B24123m89='Mechanical engineers'
B24123m90='Mining and geological engineers, including mining safety engineers'
B24123m91='Nuclear engineers'
B24123m92='Petroleum engineers'
B24123m93='Engineers, all other'
B24123m94='Drafters'
B24123m95='Engineering technicians, except drafters'
B24123m96='Surveying and mapping technicians'
B24123m97='Agricultural and food scientists'
B24123m98='Biological scientists'
B24123m99='Conservation scientists and foresters'
B24123m100='Medical scientists'
B24123m101='Life scientists, all other'
B24123m102='Astronomers and physicists'
B24123m103='Atmospheric and space scientists'
B24123m104='Chemists and materials scientists'
B24123m105='Environmental scientists and geoscientists'
B24123m106='Physical scientists, all other'
B24123m107='Economists'
B24123m108='Survey researchers'
B24123m109='Psychologists'
B24123m110='Urban and regional planners'
B24123m111='Miscellaneous social scientists and related workers, including sociologists'
B24123m112='Agricultural and food science technicians'
B24123m113='Biological technicians'
B24123m114='Chemical technicians'
B24123m115='Geological and petroleum technicians'
B24123m116='Nuclear technicians'
B24123m117='Social science research assistants'
B24123m118='Miscellaneous life, physical, and social science technicians'
B24123m119='Counselors'
B24123m120='Social workers'
B24123m121='Probation officers and correctional treatment specialists'
B24123m122='Social and human service assistants'
B24123m123='Miscellaneous community and social service specialists, including health educators and community health workers'
B24123m124='Clergy'
B24123m125='Directors, religious activities and education'
B24123m126='Religious workers, all other'
B24123m127='Lawyers'
B24123m128='Judicial law clerks'
B24123m129='Judges, magistrates, and other judicial workers'
B24123m130='Paralegals and legal assistants'
B24123m131='Miscellaneous legal support workers'
B24123m132='Postsecondary teachers'
B24123m133='Preschool and kindergarten teachers'
B24123m134='Elementary and middle school teachers'
B24123m135='Secondary school teachers'
B24123m136='Special education teachers'
B24123m137='Other teachers and instructors'
B24123m138='Archivists, curators, and museum technicians'
B24123m139='Librarians'
B24123m140='Library technicians'
B24123m141='Teacher assistants'
B24123m142='Other education, training, and library workers, except teacher assistants'
B24123m143='Artists and related workers'
B24123m144='Designers'
B24123m145='Actors'
B24123m146='Producers and directors'
B24123m147='Athletes, coaches, umpires, and related workers'
B24123m148='Dancers and choreographers'
B24123m149='Musicians, singers, and related workers'
B24123m150='Entertainers and performers, sports and related workers, all other'
B24123m151='Announcers'
B24123m152='News analysts, reporters and correspondents'
B24123m153='Public relations specialists'
B24123m154='Editors'
B24123m155='Technical writers'
B24123m156='Writers and authors'
B24123m157='Miscellaneous media and communication workers'
B24123m158='Miscellaneous media and communications equipment workers, including broadcast and sound engineering technicians and radio operators'
B24123m159='Photographers'
B24123m160='Television, video, and motion picture camera operators and editors'
B24123m161='Chiropractors'
B24123m162='Dentists'
B24123m163='Dietitians and nutritionists'
B24123m164='Optometrists'
B24123m165='Pharmacists'
B24123m166='Physicians and surgeons'
B24123m167='Physician assistants'
B24123m168='Podiatrists'
B24123m169='Audiologists'
B24123m170='Occupational therapists'
B24123m171='Physical therapists'
B24123m172='Radiation therapists'
B24123m173='Recreational therapists'
B24123m174='Respiratory therapists'
B24123m175='Speech-language pathologists'
B24123m176='Miscellaneous therapists, including exercise physiologists'
B24123m177='Veterinarians'
B24123m178='Registered nurses'
B24123m179='Nurse anesthetists'
B24123m180='Nurse midwives'
B24123m181='Nurse practitioners'
B24123m182='Health diagnosing and treating practitioners, all other'
B24123m183='Clinical laboratory technologists and technicians'
B24123m184='Dental hygienists'
B24123m185='Diagnostic related technologists and technicians'
B24123m186='Emergency medical technicians and paramedics'
B24123m187='Health practitioner support technologists and technicians'
B24123m188='Licensed practical and licensed vocational nurses'
B24123m189='Medical records and health information technicians'
B24123m190='Opticians, dispensing'
B24123m191='Miscellaneous health technologists and technicians'
B24123m192='Other healthcare practitioners and technical occupations'
B24123m193='Nursing, psychiatric, and home health aides'
B24123m194='Occupational therapy assistants and aides'
B24123m195='Physical therapist assistants and aides'
B24123m196='Massage therapists'
B24123m197='Dental assistants'
B24123m198='Medical assistants'
B24123m199='Medical transcriptionists'
B24123m200='Pharmacy aides'
B24123m201='Veterinary assistants and laboratory animal caretakers'
B24123m202='Phlebotomists'
B24123m203='Healthcare support workers, all other, including medical equipment preparers'
B24123m204='First-line supervisors of correctional officers'
B24123m205='First-line supervisors of police and detectives'
B24123m206='First-line supervisors of fire fighting and prevention workers'
B24123m207='First-line supervisors of protective service workers, all other'
B24123m208='Firefighters'
B24123m209='Fire inspectors'
B24123m210='Bailiffs, correctional officers, and jailers'
B24123m211='Detectives and criminal investigators'
B24123m212='Fish and game wardens'
B24123m213='Parking enforcement workers'
B24123m214='Police and sheriff''s patrol officers'
B24123m215='Transit and railroad police'
B24123m216='Animal control workers'
B24123m217='Private detectives and investigators'
B24123m218='Security guards and gaming surveillance officers'
B24123m219='Crossing guards'
B24123m220='Transportation security screeners'
B24123m221='Lifeguards and other recreational, and all other protective service workers'
B24123m222='Chefs and head cooks'
B24123m223='First-line supervisors of food preparation and serving workers'
B24123m224='Cooks'
B24123m225='Food preparation workers'
B24123m226='Bartenders'
B24123m227='Combined food preparation and serving workers, including fast food'
B24123m228='Counter attendants, cafeteria, food concession, and coffee shop'
B24123m229='Waiters and waitresses'
B24123m230='Food servers, nonrestaurant'
B24123m231='Dining room and cafeteria attendants and bartender helpers'
B24123m232='Dishwashers'
B24123m233='Hosts and hostesses, restaurant, lounge, and coffee shop'
B24123m234='Food preparation and serving related workers, all other'
B24123m235='First-line supervisors of housekeeping and janitorial workers'
B24123m236='First-line supervisors of landscaping, lawn service, and groundskeeping workers'
B24123m237='Janitors and building cleaners'
B24123m238='Maids and housekeeping cleaners'
B24123m239='Pest control workers'
B24123m240='Grounds maintenance workers'
B24123m241='First-line supervisors of gaming workers'
B24123m242='First-line supervisors of personal service workers'
B24123m243='Animal trainers'
B24123m244='Nonfarm animal caretakers'
B24123m245='Gaming services workers'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B24123m1
B24123m2
B24123m3
B24123m4
B24123m5
B24123m6
B24123m7
B24123m8
B24123m9
B24123m10
B24123m11
B24123m12
B24123m13
B24123m14
B24123m15
B24123m16
B24123m17
B24123m18
B24123m19
B24123m20
B24123m21
B24123m22
B24123m23
B24123m24
B24123m25
B24123m26
B24123m27
B24123m28
B24123m29
B24123m30
B24123m31
B24123m32
B24123m33
B24123m34
B24123m35
B24123m36
B24123m37
B24123m38
B24123m39
B24123m40
B24123m41
B24123m42
B24123m43
B24123m44
B24123m45
B24123m46
B24123m47
B24123m48
B24123m49
B24123m50
B24123m51
B24123m52
B24123m53
B24123m54
B24123m55
B24123m56
B24123m57
B24123m58
B24123m59
B24123m60
B24123m61
B24123m62
B24123m63
B24123m64
B24123m65
B24123m66
B24123m67
B24123m68
B24123m69
B24123m70
B24123m71
B24123m72
B24123m73
B24123m74
B24123m75
B24123m76
B24123m77
B24123m78
B24123m79
B24123m80
B24123m81
B24123m82
B24123m83
B24123m84
B24123m85
B24123m86
B24123m87
B24123m88
B24123m89
B24123m90
B24123m91
B24123m92
B24123m93
B24123m94
B24123m95
B24123m96
B24123m97
B24123m98
B24123m99
B24123m100
B24123m101
B24123m102
B24123m103
B24123m104
B24123m105
B24123m106
B24123m107
B24123m108
B24123m109
B24123m110
B24123m111
B24123m112
B24123m113
B24123m114
B24123m115
B24123m116
B24123m117
B24123m118
B24123m119
B24123m120
B24123m121
B24123m122
B24123m123
B24123m124
B24123m125
B24123m126
B24123m127
B24123m128
B24123m129
B24123m130
B24123m131
B24123m132
B24123m133
B24123m134
B24123m135
B24123m136
B24123m137
B24123m138
B24123m139
B24123m140
B24123m141
B24123m142
B24123m143
B24123m144
B24123m145
B24123m146
B24123m147
B24123m148
B24123m149
B24123m150
B24123m151
B24123m152
B24123m153
B24123m154
B24123m155
B24123m156
B24123m157
B24123m158
B24123m159
B24123m160
B24123m161
B24123m162
B24123m163
B24123m164
B24123m165
B24123m166
B24123m167
B24123m168
B24123m169
B24123m170
B24123m171
B24123m172
B24123m173
B24123m174
B24123m175
B24123m176
B24123m177
B24123m178
B24123m179
B24123m180
B24123m181
B24123m182
B24123m183
B24123m184
B24123m185
B24123m186
B24123m187
B24123m188
B24123m189
B24123m190
B24123m191
B24123m192
B24123m193
B24123m194
B24123m195
B24123m196
B24123m197
B24123m198
B24123m199
B24123m200
B24123m201
B24123m202
B24123m203
B24123m204
B24123m205
B24123m206
B24123m207
B24123m208
B24123m209
B24123m210
B24123m211
B24123m212
B24123m213
B24123m214
B24123m215
B24123m216
B24123m217
B24123m218
B24123m219
B24123m220
B24123m221
B24123m222
B24123m223
B24123m224
B24123m225
B24123m226
B24123m227
B24123m228
B24123m229
B24123m230
B24123m231
B24123m232
B24123m233
B24123m234
B24123m235
B24123m236
B24123m237
B24123m238
B24123m239
B24123m240
B24123m241
B24123m242
B24123m243
B24123m244
B24123m245
;
RUN;
TITLE2;
