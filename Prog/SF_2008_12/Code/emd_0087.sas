TITLE2 "e20125md0087000";
DATA work.SFe0087md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0087000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2012 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED MALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed male population 16 years and over with earnings */
 
B24122e1='Total:'
B24122e2='Chief executives'
B24122e3='General and operations managers'
B24122e4='Legislators'
B24122e5='Advertising and promotions managers'
B24122e6='Marketing and sales managers'
B24122e7='Public relations and fundraising managers'
B24122e8='Administrative services managers'
B24122e9='Computer and information systems managers'
B24122e10='Financial managers'
B24122e11='Compensation and benefits managers'
B24122e12='Human resources managers'
B24122e13='Training and development managers'
B24122e14='Industrial production managers'
B24122e15='Purchasing managers'
B24122e16='Transportation, storage, and distribution managers'
B24122e17='Farmers, ranchers, and other agricultural managers'
B24122e18='Construction managers'
B24122e19='Education administrators'
B24122e20='Architectural and engineering managers'
B24122e21='Food service managers'
B24122e22='Funeral service managers'
B24122e23='Gaming managers'
B24122e24='Lodging managers'
B24122e25='Medical and health services managers'
B24122e26='Natural sciences managers'
B24122e27='Postmasters and mail superintendents'
B24122e28='Property, real estate, and community association managers'
B24122e29='Social and community service managers'
B24122e30='Emergency management directors'
B24122e31='Managers, all other'
B24122e32='Agents and business managers of artists, performers, and athletes'
B24122e33='Buyers and purchasing agents, farm products'
B24122e34='Wholesale and retail buyers, except farm products'
B24122e35='Purchasing agents, except wholesale, retail, and farm products'
B24122e36='Claims adjusters, appraisers, examiners, and investigators'
B24122e37='Compliance officers'
B24122e38='Cost estimators'
B24122e39='Human resources workers'
B24122e40='Compensation, benefits, and job analysis specialists'
B24122e41='Training and development specialists'
B24122e42='Logisticians'
B24122e43='Management analysts'
B24122e44='Meeting, convention, and event planners'
B24122e45='Fundraisers'
B24122e46='Market research analysts and marketing specialists'
B24122e47='Business operations specialists, all other'
B24122e48='Accountants and auditors'
B24122e49='Appraisers and assessors of real estate'
B24122e50='Budget analysts'
B24122e51='Credit analysts'
B24122e52='Financial analysts'
B24122e53='Personal financial advisors'
B24122e54='Insurance underwriters'
B24122e55='Financial examiners'
B24122e56='Credit counselors and loan officers'
B24122e57='Tax examiners and collectors, and revenue agents'
B24122e58='Tax preparers'
B24122e59='Financial specialists, all other'
B24122e60='Computer and information research scientists'
B24122e61='Computer systems analysts'
B24122e62='Information security analysts'
B24122e63='Computer programmers'
B24122e64='Software developers, applications and systems software'
B24122e65='Web developers'
B24122e66='Computer support specialists'
B24122e67='Database administrators'
B24122e68='Network and computer systems administrators'
B24122e69='Computer network architects'
B24122e70='Computer occupations, all other'
B24122e71='Actuaries'
B24122e72='Mathematicians'
B24122e73='Operations research analysts'
B24122e74='Statisticians'
B24122e75='Miscellaneous mathematical science occupations'
B24122e76='Architects, except naval'
B24122e77='Surveyors, cartographers, and photogrammetrists'
B24122e78='Aerospace engineers'
B24122e79='Agricultural engineers'
B24122e80='Biomedical engineers'
B24122e81='Chemical engineers'
B24122e82='Civil engineers'
B24122e83='Computer hardware engineers'
B24122e84='Electrical and electronics engineers'
B24122e85='Environmental engineers'
B24122e86='Industrial engineers, including health and safety'
B24122e87='Marine engineers and naval architects'
B24122e88='Materials engineers'
B24122e89='Mechanical engineers'
B24122e90='Mining and geological engineers, including mining safety engineers'
B24122e91='Nuclear engineers'
B24122e92='Petroleum engineers'
B24122e93='Engineers, all other'
B24122e94='Drafters'
B24122e95='Engineering technicians, except drafters'
B24122e96='Surveying and mapping technicians'
B24122e97='Agricultural and food scientists'
B24122e98='Biological scientists'
B24122e99='Conservation scientists and foresters'
B24122e100='Medical scientists'
B24122e101='Life scientists, all other'
B24122e102='Astronomers and physicists'
B24122e103='Atmospheric and space scientists'
B24122e104='Chemists and materials scientists'
B24122e105='Environmental scientists and geoscientists'
B24122e106='Physical scientists, all other'
B24122e107='Economists'
B24122e108='Survey researchers'
B24122e109='Psychologists'
B24122e110='Urban and regional planners'
B24122e111='Miscellaneous social scientists and related workers, including sociologists'
B24122e112='Agricultural and food science technicians'
B24122e113='Biological technicians'
B24122e114='Chemical technicians'
B24122e115='Geological and petroleum technicians'
B24122e116='Nuclear technicians'
B24122e117='Social science research assistants'
B24122e118='Miscellaneous life, physical, and social science technicians'
B24122e119='Counselors'
B24122e120='Social workers'
B24122e121='Probation officers and correctional treatment specialists'
B24122e122='Social and human service assistants'
B24122e123='Miscellaneous community and social service specialists, including health educators and community health workers'
B24122e124='Clergy'
B24122e125='Directors, religious activities and education'
B24122e126='Religious workers, all other'
B24122e127='Lawyers'
B24122e128='Judicial law clerks'
B24122e129='Judges, magistrates, and other judicial workers'
B24122e130='Paralegals and legal assistants'
B24122e131='Miscellaneous legal support workers'
B24122e132='Postsecondary teachers'
B24122e133='Preschool and kindergarten teachers'
B24122e134='Elementary and middle school teachers'
B24122e135='Secondary school teachers'
B24122e136='Special education teachers'
B24122e137='Other teachers and instructors'
B24122e138='Archivists, curators, and museum technicians'
B24122e139='Librarians'
B24122e140='Library technicians'
B24122e141='Teacher assistants'
B24122e142='Other education, training, and library workers, except teacher assistants'
B24122e143='Artists and related workers'
B24122e144='Designers'
B24122e145='Actors'
B24122e146='Producers and directors'
B24122e147='Athletes, coaches, umpires, and related workers'
B24122e148='Dancers and choreographers'
B24122e149='Musicians, singers, and related workers'
B24122e150='Entertainers and performers, sports and related workers, all other'
B24122e151='Announcers'
B24122e152='News analysts, reporters and correspondents'
B24122e153='Public relations specialists'
B24122e154='Editors'
B24122e155='Technical writers'
B24122e156='Writers and authors'
B24122e157='Miscellaneous media and communication workers'
B24122e158='Miscellaneous media and communications equipment workers, including broadcast and sound engineering technicians and radio operators'
B24122e159='Photographers'
B24122e160='Television, video, and motion picture camera operators and editors'
B24122e161='Chiropractors'
B24122e162='Dentists'
B24122e163='Dietitians and nutritionists'
B24122e164='Optometrists'
B24122e165='Pharmacists'
B24122e166='Physicians and surgeons'
B24122e167='Physician assistants'
B24122e168='Podiatrists'
B24122e169='Audiologists'
B24122e170='Occupational therapists'
B24122e171='Physical therapists'
B24122e172='Radiation therapists'
B24122e173='Recreational therapists'
B24122e174='Respiratory therapists'
B24122e175='Speech-language pathologists'
B24122e176='Miscellaneous therapists, including exercise physiologists'
B24122e177='Veterinarians'
B24122e178='Registered nurses'
B24122e179='Nurse anesthetists'
B24122e180='Nurse midwives'
B24122e181='Nurse practitioners'
B24122e182='Health diagnosing and treating practitioners, all other'
B24122e183='Clinical laboratory technologists and technicians'
B24122e184='Dental hygienists'
B24122e185='Diagnostic related technologists and technicians'
B24122e186='Emergency medical technicians and paramedics'
B24122e187='Health practitioner support technologists and technicians'
B24122e188='Licensed practical and licensed vocational nurses'
B24122e189='Medical records and health information technicians'
B24122e190='Opticians, dispensing'
B24122e191='Miscellaneous health technologists and technicians'
B24122e192='Other healthcare practitioners and technical occupations'
B24122e193='Nursing, psychiatric, and home health aides'
B24122e194='Occupational therapy assistants and aides'
B24122e195='Physical therapist assistants and aides'
B24122e196='Massage therapists'
B24122e197='Dental assistants'
B24122e198='Medical assistants'
B24122e199='Medical transcriptionists'
B24122e200='Pharmacy aides'
B24122e201='Veterinary assistants and laboratory animal caretakers'
B24122e202='Phlebotomists'
B24122e203='Healthcare support workers, all other, including medical equipment preparers'
B24122e204='First-line supervisors of correctional officers'
B24122e205='First-line supervisors of police and detectives'
B24122e206='First-line supervisors of fire fighting and prevention workers'
B24122e207='First-line supervisors of protective service workers, all other'
B24122e208='Firefighters'
B24122e209='Fire inspectors'
B24122e210='Bailiffs, correctional officers, and jailers'
B24122e211='Detectives and criminal investigators'
B24122e212='Fish and game wardens'
B24122e213='Parking enforcement workers'
B24122e214='Police and sheriff''s patrol officers'
B24122e215='Transit and railroad police'
B24122e216='Animal control workers'
B24122e217='Private detectives and investigators'
B24122e218='Security guards and gaming surveillance officers'
B24122e219='Crossing guards'
B24122e220='Transportation security screeners'
B24122e221='Lifeguards and other recreational, and all other protective service workers'
B24122e222='Chefs and head cooks'
B24122e223='First-line supervisors of food preparation and serving workers'
B24122e224='Cooks'
B24122e225='Food preparation workers'
B24122e226='Bartenders'
B24122e227='Combined food preparation and serving workers, including fast food'
B24122e228='Counter attendants, cafeteria, food concession, and coffee shop'
B24122e229='Waiters and waitresses'
B24122e230='Food servers, nonrestaurant'
B24122e231='Dining room and cafeteria attendants and bartender helpers'
B24122e232='Dishwashers'
B24122e233='Hosts and hostesses, restaurant, lounge, and coffee shop'
B24122e234='Food preparation and serving related workers, all other'
B24122e235='First-line supervisors of housekeeping and janitorial workers'
B24122e236='First-line supervisors of landscaping, lawn service, and groundskeeping workers'
B24122e237='Janitors and building cleaners'
B24122e238='Maids and housekeeping cleaners'
B24122e239='Pest control workers'
B24122e240='Grounds maintenance workers'
B24122e241='First-line supervisors of gaming workers'
B24122e242='First-line supervisors of personal service workers'
B24122e243='Animal trainers'
B24122e244='Nonfarm animal caretakers'
B24122e245='Gaming services workers'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B24122e1
B24122e2
B24122e3
B24122e4
B24122e5
B24122e6
B24122e7
B24122e8
B24122e9
B24122e10
B24122e11
B24122e12
B24122e13
B24122e14
B24122e15
B24122e16
B24122e17
B24122e18
B24122e19
B24122e20
B24122e21
B24122e22
B24122e23
B24122e24
B24122e25
B24122e26
B24122e27
B24122e28
B24122e29
B24122e30
B24122e31
B24122e32
B24122e33
B24122e34
B24122e35
B24122e36
B24122e37
B24122e38
B24122e39
B24122e40
B24122e41
B24122e42
B24122e43
B24122e44
B24122e45
B24122e46
B24122e47
B24122e48
B24122e49
B24122e50
B24122e51
B24122e52
B24122e53
B24122e54
B24122e55
B24122e56
B24122e57
B24122e58
B24122e59
B24122e60
B24122e61
B24122e62
B24122e63
B24122e64
B24122e65
B24122e66
B24122e67
B24122e68
B24122e69
B24122e70
B24122e71
B24122e72
B24122e73
B24122e74
B24122e75
B24122e76
B24122e77
B24122e78
B24122e79
B24122e80
B24122e81
B24122e82
B24122e83
B24122e84
B24122e85
B24122e86
B24122e87
B24122e88
B24122e89
B24122e90
B24122e91
B24122e92
B24122e93
B24122e94
B24122e95
B24122e96
B24122e97
B24122e98
B24122e99
B24122e100
B24122e101
B24122e102
B24122e103
B24122e104
B24122e105
B24122e106
B24122e107
B24122e108
B24122e109
B24122e110
B24122e111
B24122e112
B24122e113
B24122e114
B24122e115
B24122e116
B24122e117
B24122e118
B24122e119
B24122e120
B24122e121
B24122e122
B24122e123
B24122e124
B24122e125
B24122e126
B24122e127
B24122e128
B24122e129
B24122e130
B24122e131
B24122e132
B24122e133
B24122e134
B24122e135
B24122e136
B24122e137
B24122e138
B24122e139
B24122e140
B24122e141
B24122e142
B24122e143
B24122e144
B24122e145
B24122e146
B24122e147
B24122e148
B24122e149
B24122e150
B24122e151
B24122e152
B24122e153
B24122e154
B24122e155
B24122e156
B24122e157
B24122e158
B24122e159
B24122e160
B24122e161
B24122e162
B24122e163
B24122e164
B24122e165
B24122e166
B24122e167
B24122e168
B24122e169
B24122e170
B24122e171
B24122e172
B24122e173
B24122e174
B24122e175
B24122e176
B24122e177
B24122e178
B24122e179
B24122e180
B24122e181
B24122e182
B24122e183
B24122e184
B24122e185
B24122e186
B24122e187
B24122e188
B24122e189
B24122e190
B24122e191
B24122e192
B24122e193
B24122e194
B24122e195
B24122e196
B24122e197
B24122e198
B24122e199
B24122e200
B24122e201
B24122e202
B24122e203
B24122e204
B24122e205
B24122e206
B24122e207
B24122e208
B24122e209
B24122e210
B24122e211
B24122e212
B24122e213
B24122e214
B24122e215
B24122e216
B24122e217
B24122e218
B24122e219
B24122e220
B24122e221
B24122e222
B24122e223
B24122e224
B24122e225
B24122e226
B24122e227
B24122e228
B24122e229
B24122e230
B24122e231
B24122e232
B24122e233
B24122e234
B24122e235
B24122e236
B24122e237
B24122e238
B24122e239
B24122e240
B24122e241
B24122e242
B24122e243
B24122e244
B24122e245
;
RUN;
TITLE2;
