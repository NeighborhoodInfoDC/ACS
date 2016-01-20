TITLE2 "e20115dc0087000";
DATA work.SFe0087dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0087000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*DETAILED OCCUPATION BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED FEMALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed female population 16 years and over with earnings */
 
B24123e1='Total:'
B24123e2='Chief executives'
B24123e3='General and operations managers'
B24123e4='Legislators'
B24123e5='Advertising and promotions managers'
B24123e6='Marketing and sales managers'
B24123e7='Public relations and fundraising managers'
B24123e8='Administrative services managers'
B24123e9='Computer and information systems managers'
B24123e10='Financial managers'
B24123e11='Compensation and benefits managers'
B24123e12='Human resources managers'
B24123e13='Training and development managers'
B24123e14='Industrial production managers'
B24123e15='Purchasing managers'
B24123e16='Transportation, storage, and distribution managers'
B24123e17='Farmers, ranchers, and other agricultural managers'
B24123e18='Construction managers'
B24123e19='Education administrators'
B24123e20='Architectural and engineering managers'
B24123e21='Food service managers'
B24123e22='Funeral service managers'
B24123e23='Gaming managers'
B24123e24='Lodging managers'
B24123e25='Medical and health services managers'
B24123e26='Natural sciences managers'
B24123e27='Postmasters and mail superintendents'
B24123e28='Property, real estate, and community association managers'
B24123e29='Social and community service managers'
B24123e30='Emergency management directors'
B24123e31='Managers, all other'
B24123e32='Agents and business managers of artists, performers, and athletes'
B24123e33='Buyers and purchasing agents, farm products'
B24123e34='Wholesale and retail buyers, except farm products'
B24123e35='Purchasing agents, except wholesale, retail, and farm products'
B24123e36='Claims adjusters, appraisers, examiners, and investigators'
B24123e37='Compliance officers'
B24123e38='Cost estimators'
B24123e39='Human resources workers'
B24123e40='Compensation, benefits, and job analysis specialists'
B24123e41='Training and development specialists'
B24123e42='Logisticians'
B24123e43='Management analysts'
B24123e44='Meeting, convention, and event planners'
B24123e45='Fundraisers'
B24123e46='Market research analysts and marketing specialists'
B24123e47='Business operations specialists, all other'
B24123e48='Accountants and auditors'
B24123e49='Appraisers and assessors of real estate'
B24123e50='Budget analysts'
B24123e51='Credit analysts'
B24123e52='Financial analysts'
B24123e53='Personal financial advisors'
B24123e54='Insurance underwriters'
B24123e55='Financial examiners'
B24123e56='Credit counselors and loan officers'
B24123e57='Tax examiners and collectors, and revenue agents'
B24123e58='Tax preparers'
B24123e59='Financial specialists, all other'
B24123e60='Computer and information research scientists'
B24123e61='Computer systems analysts'
B24123e62='Information security analysts'
B24123e63='Computer programmers'
B24123e64='Software developers, applications and systems software'
B24123e65='Web developers'
B24123e66='Computer support specialists'
B24123e67='Database administrators'
B24123e68='Network and computer systems administrators'
B24123e69='Computer network architects'
B24123e70='Computer occupations, all other'
B24123e71='Actuaries'
B24123e72='Mathematicians'
B24123e73='Operations research analysts'
B24123e74='Statisticians'
B24123e75='Miscellaneous mathematical science occupations'
B24123e76='Architects, except naval'
B24123e77='Surveyors, cartographers, and photogrammetrists'
B24123e78='Aerospace engineers'
B24123e79='Agricultural engineers'
B24123e80='Biomedical engineers'
B24123e81='Chemical engineers'
B24123e82='Civil engineers'
B24123e83='Computer hardware engineers'
B24123e84='Electrical and electronics engineers'
B24123e85='Environmental engineers'
B24123e86='Industrial engineers, including health and safety'
B24123e87='Marine engineers and naval architects'
B24123e88='Materials engineers'
B24123e89='Mechanical engineers'
B24123e90='Mining and geological engineers, including mining safety engineers'
B24123e91='Nuclear engineers'
B24123e92='Petroleum engineers'
B24123e93='Engineers, all other'
B24123e94='Drafters'
B24123e95='Engineering technicians, except drafters'
B24123e96='Surveying and mapping technicians'
B24123e97='Agricultural and food scientists'
B24123e98='Biological scientists'
B24123e99='Conservation scientists and foresters'
B24123e100='Medical scientists'
B24123e101='Life scientists, all other'
B24123e102='Astronomers and physicists'
B24123e103='Atmospheric and space scientists'
B24123e104='Chemists and materials scientists'
B24123e105='Environmental scientists and geoscientists'
B24123e106='Physical scientists, all other'
B24123e107='Economists'
B24123e108='Survey researchers'
B24123e109='Psychologists'
B24123e110='Urban and regional planners'
B24123e111='Miscellaneous social scientists and related workers, including sociologists'
B24123e112='Agricultural and food science technicians'
B24123e113='Biological technicians'
B24123e114='Chemical technicians'
B24123e115='Geological and petroleum technicians'
B24123e116='Nuclear technicians'
B24123e117='Social science research assistants'
B24123e118='Miscellaneous life, physical, and social science technicians'
B24123e119='Counselors'
B24123e120='Social workers'
B24123e121='Probation officers and correctional treatment specialists'
B24123e122='Social and human service assistants'
B24123e123='Miscellaneous community and social service specialists, including health educators and community health workers'
B24123e124='Clergy'
B24123e125='Directors, religious activities and education'
B24123e126='Religious workers, all other'
B24123e127='Lawyers'
B24123e128='Judicial law clerks'
B24123e129='Judges, magistrates, and other judicial workers'
B24123e130='Paralegals and legal assistants'
B24123e131='Miscellaneous legal support workers'
B24123e132='Postsecondary teachers'
B24123e133='Preschool and kindergarten teachers'
B24123e134='Elementary and middle school teachers'
B24123e135='Secondary school teachers'
B24123e136='Special education teachers'
B24123e137='Other teachers and instructors'
B24123e138='Archivists, curators, and museum technicians'
B24123e139='Librarians'
B24123e140='Library technicians'
B24123e141='Teacher assistants'
B24123e142='Other education, training, and library workers, except teacher assistants'
B24123e143='Artists and related workers'
B24123e144='Designers'
B24123e145='Actors'
B24123e146='Producers and directors'
B24123e147='Athletes, coaches, umpires, and related workers'
B24123e148='Dancers and choreographers'
B24123e149='Musicians, singers, and related workers'
B24123e150='Entertainers and performers, sports and related workers, all other'
B24123e151='Announcers'
B24123e152='News analysts, reporters and correspondents'
B24123e153='Public relations specialists'
B24123e154='Editors'
B24123e155='Technical writers'
B24123e156='Writers and authors'
B24123e157='Miscellaneous media and communication workers'
B24123e158='Miscellaneous media and communications equipment workers, including broadcast and sound engineering technicians and radio operators'
B24123e159='Photographers'
B24123e160='Television, video, and motion picture camera operators and editors'
B24123e161='Chiropractors'
B24123e162='Dentists'
B24123e163='Dietitians and nutritionists'
B24123e164='Optometrists'
B24123e165='Pharmacists'
B24123e166='Physicians and surgeons'
B24123e167='Physician assistants'
B24123e168='Podiatrists'
B24123e169='Audiologists'
B24123e170='Occupational therapists'
B24123e171='Physical therapists'
B24123e172='Radiation therapists'
B24123e173='Recreational therapists'
B24123e174='Respiratory therapists'
B24123e175='Speech-language pathologists'
B24123e176='Miscellaneous therapists, including exercise physiologists'
B24123e177='Veterinarians'
B24123e178='Registered nurses'
B24123e179='Nurse anesthetists'
B24123e180='Nurse midwives'
B24123e181='Nurse practitioners'
B24123e182='Health diagnosing and treating practitioners, all other'
B24123e183='Clinical laboratory technologists and technicians'
B24123e184='Dental hygienists'
B24123e185='Diagnostic related technologists and technicians'
B24123e186='Emergency medical technicians and paramedics'
B24123e187='Health practitioner support technologists and technicians'
B24123e188='Licensed practical and licensed vocational nurses'
B24123e189='Medical records and health information technicians'
B24123e190='Opticians, dispensing'
B24123e191='Miscellaneous health technologists and technicians'
B24123e192='Other healthcare practitioners and technical occupations'
B24123e193='Nursing, psychiatric, and home health aides'
B24123e194='Occupational therapy assistants and aides'
B24123e195='Physical therapist assistants and aides'
B24123e196='Massage therapists'
B24123e197='Dental assistants'
B24123e198='Medical assistants'
B24123e199='Medical transcriptionists'
B24123e200='Pharmacy aides'
B24123e201='Veterinary assistants and laboratory animal caretakers'
B24123e202='Phlebotomists'
B24123e203='Healthcare support workers, all other, including medical equipment preparers'
B24123e204='First-line supervisors of correctional officers'
B24123e205='First-line supervisors of police and detectives'
B24123e206='First-line supervisors of fire fighting and prevention workers'
B24123e207='First-line supervisors of protective service workers, all other'
B24123e208='Firefighters'
B24123e209='Fire inspectors'
B24123e210='Bailiffs, correctional officers, and jailers'
B24123e211='Detectives and criminal investigators'
B24123e212='Fish and game wardens'
B24123e213='Parking enforcement workers'
B24123e214='Police and sheriff''s patrol officers'
B24123e215='Transit and railroad police'
B24123e216='Animal control workers'
B24123e217='Private detectives and investigators'
B24123e218='Security guards and gaming surveillance officers'
B24123e219='Crossing guards'
B24123e220='Transportation security screeners'
B24123e221='Lifeguards and other recreational, and all other protective service workers'
B24123e222='Chefs and head cooks'
B24123e223='First-line supervisors of food preparation and serving workers'
B24123e224='Cooks'
B24123e225='Food preparation workers'
B24123e226='Bartenders'
B24123e227='Combined food preparation and serving workers, including fast food'
B24123e228='Counter attendants, cafeteria, food concession, and coffee shop'
B24123e229='Waiters and waitresses'
B24123e230='Food servers, nonrestaurant'
B24123e231='Dining room and cafeteria attendants and bartender helpers'
B24123e232='Dishwashers'
B24123e233='Hosts and hostesses, restaurant, lounge, and coffee shop'
B24123e234='Food preparation and serving related workers, all other'
B24123e235='First-line supervisors of housekeeping and janitorial workers'
B24123e236='First-line supervisors of landscaping, lawn service, and groundskeeping workers'
B24123e237='Janitors and building cleaners'
B24123e238='Maids and housekeeping cleaners'
B24123e239='Pest control workers'
B24123e240='Grounds maintenance workers'
B24123e241='First-line supervisors of gaming workers'
B24123e242='First-line supervisors of personal service workers'
B24123e243='Animal trainers'
B24123e244='Nonfarm animal caretakers'
B24123e245='Gaming services workers'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B24123e1
B24123e2
B24123e3
B24123e4
B24123e5
B24123e6
B24123e7
B24123e8
B24123e9
B24123e10
B24123e11
B24123e12
B24123e13
B24123e14
B24123e15
B24123e16
B24123e17
B24123e18
B24123e19
B24123e20
B24123e21
B24123e22
B24123e23
B24123e24
B24123e25
B24123e26
B24123e27
B24123e28
B24123e29
B24123e30
B24123e31
B24123e32
B24123e33
B24123e34
B24123e35
B24123e36
B24123e37
B24123e38
B24123e39
B24123e40
B24123e41
B24123e42
B24123e43
B24123e44
B24123e45
B24123e46
B24123e47
B24123e48
B24123e49
B24123e50
B24123e51
B24123e52
B24123e53
B24123e54
B24123e55
B24123e56
B24123e57
B24123e58
B24123e59
B24123e60
B24123e61
B24123e62
B24123e63
B24123e64
B24123e65
B24123e66
B24123e67
B24123e68
B24123e69
B24123e70
B24123e71
B24123e72
B24123e73
B24123e74
B24123e75
B24123e76
B24123e77
B24123e78
B24123e79
B24123e80
B24123e81
B24123e82
B24123e83
B24123e84
B24123e85
B24123e86
B24123e87
B24123e88
B24123e89
B24123e90
B24123e91
B24123e92
B24123e93
B24123e94
B24123e95
B24123e96
B24123e97
B24123e98
B24123e99
B24123e100
B24123e101
B24123e102
B24123e103
B24123e104
B24123e105
B24123e106
B24123e107
B24123e108
B24123e109
B24123e110
B24123e111
B24123e112
B24123e113
B24123e114
B24123e115
B24123e116
B24123e117
B24123e118
B24123e119
B24123e120
B24123e121
B24123e122
B24123e123
B24123e124
B24123e125
B24123e126
B24123e127
B24123e128
B24123e129
B24123e130
B24123e131
B24123e132
B24123e133
B24123e134
B24123e135
B24123e136
B24123e137
B24123e138
B24123e139
B24123e140
B24123e141
B24123e142
B24123e143
B24123e144
B24123e145
B24123e146
B24123e147
B24123e148
B24123e149
B24123e150
B24123e151
B24123e152
B24123e153
B24123e154
B24123e155
B24123e156
B24123e157
B24123e158
B24123e159
B24123e160
B24123e161
B24123e162
B24123e163
B24123e164
B24123e165
B24123e166
B24123e167
B24123e168
B24123e169
B24123e170
B24123e171
B24123e172
B24123e173
B24123e174
B24123e175
B24123e176
B24123e177
B24123e178
B24123e179
B24123e180
B24123e181
B24123e182
B24123e183
B24123e184
B24123e185
B24123e186
B24123e187
B24123e188
B24123e189
B24123e190
B24123e191
B24123e192
B24123e193
B24123e194
B24123e195
B24123e196
B24123e197
B24123e198
B24123e199
B24123e200
B24123e201
B24123e202
B24123e203
B24123e204
B24123e205
B24123e206
B24123e207
B24123e208
B24123e209
B24123e210
B24123e211
B24123e212
B24123e213
B24123e214
B24123e215
B24123e216
B24123e217
B24123e218
B24123e219
B24123e220
B24123e221
B24123e222
B24123e223
B24123e224
B24123e225
B24123e226
B24123e227
B24123e228
B24123e229
B24123e230
B24123e231
B24123e232
B24123e233
B24123e234
B24123e235
B24123e236
B24123e237
B24123e238
B24123e239
B24123e240
B24123e241
B24123e242
B24123e243
B24123e244
B24123e245
;
RUN;
TITLE2;
