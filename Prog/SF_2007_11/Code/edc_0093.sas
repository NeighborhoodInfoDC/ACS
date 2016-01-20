TITLE2 "e20115dc0093000";
DATA work.SFe0093dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0093000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*DETAILED OCCUPATION FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED MALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed male population 16 years and over */
 
B24125e1='Total:'
B24125e2='Chief executives'
B24125e3='General and operations managers'
B24125e4='Legislators'
B24125e5='Advertising and promotions managers'
B24125e6='Marketing and sales managers'
B24125e7='Public relations and fundraising managers'
B24125e8='Administrative services managers'
B24125e9='Computer and information systems managers'
B24125e10='Financial managers'
B24125e11='Compensation and benefits managers'
B24125e12='Human resources managers'
B24125e13='Training and development managers'
B24125e14='Industrial production managers'
B24125e15='Purchasing managers'
B24125e16='Transportation, storage, and distribution managers'
B24125e17='Farmers, ranchers, and other agricultural managers'
B24125e18='Construction managers'
B24125e19='Education administrators'
B24125e20='Architectural and engineering managers'
B24125e21='Food service managers'
B24125e22='Funeral service managers'
B24125e23='Gaming managers'
B24125e24='Lodging managers'
B24125e25='Medical and health services managers'
B24125e26='Natural sciences managers'
B24125e27='Postmasters and mail superintendents'
B24125e28='Property, real estate, and community association managers'
B24125e29='Social and community service managers'
B24125e30='Emergency management directors'
B24125e31='Managers, all other'
B24125e32='Agents and business managers of artists, performers, and athletes'
B24125e33='Buyers and purchasing agents, farm products'
B24125e34='Wholesale and retail buyers, except farm products'
B24125e35='Purchasing agents, except wholesale, retail, and farm products'
B24125e36='Claims adjusters, appraisers, examiners, and investigators'
B24125e37='Compliance officers'
B24125e38='Cost estimators'
B24125e39='Human resources workers'
B24125e40='Compensation, benefits, and job analysis specialists'
B24125e41='Training and development specialists'
B24125e42='Logisticians'
B24125e43='Management analysts'
B24125e44='Meeting, convention, and event planners'
B24125e45='Fundraisers'
B24125e46='Market research analysts and marketing specialists'
B24125e47='Business operations specialists, all other'
B24125e48='Accountants and auditors'
B24125e49='Appraisers and assessors of real estate'
B24125e50='Budget analysts'
B24125e51='Credit analysts'
B24125e52='Financial analysts'
B24125e53='Personal financial advisors'
B24125e54='Insurance underwriters'
B24125e55='Financial examiners'
B24125e56='Credit counselors and loan officers'
B24125e57='Tax examiners and collectors, and revenue agents'
B24125e58='Tax preparers'
B24125e59='Financial specialists, all other'
B24125e60='Computer and information research scientists'
B24125e61='Computer systems analysts'
B24125e62='Information security analysts'
B24125e63='Computer programmers'
B24125e64='Software developers, applications and systems software'
B24125e65='Web developers'
B24125e66='Computer support specialists'
B24125e67='Database administrators'
B24125e68='Network and computer systems administrators'
B24125e69='Computer network architects'
B24125e70='Computer occupations, all other'
B24125e71='Actuaries'
B24125e72='Mathematicians'
B24125e73='Operations research analysts'
B24125e74='Statisticians'
B24125e75='Miscellaneous mathematical science occupations'
B24125e76='Architects, except naval'
B24125e77='Surveyors, cartographers, and photogrammetrists'
B24125e78='Aerospace engineers'
B24125e79='Agricultural engineers'
B24125e80='Biomedical engineers'
B24125e81='Chemical engineers'
B24125e82='Civil engineers'
B24125e83='Computer hardware engineers'
B24125e84='Electrical and electronics engineers'
B24125e85='Environmental engineers'
B24125e86='Industrial engineers, including health and safety'
B24125e87='Marine engineers and naval architects'
B24125e88='Materials engineers'
B24125e89='Mechanical engineers'
B24125e90='Mining and geological engineers, including mining safety engineers'
B24125e91='Nuclear engineers'
B24125e92='Petroleum engineers'
B24125e93='Engineers, all other'
B24125e94='Drafters'
B24125e95='Engineering technicians, except drafters'
B24125e96='Surveying and mapping technicians'
B24125e97='Agricultural and food scientists'
B24125e98='Biological scientists'
B24125e99='Conservation scientists and foresters'
B24125e100='Medical scientists'
B24125e101='Life scientists, all other'
B24125e102='Astronomers and physicists'
B24125e103='Atmospheric and space scientists'
B24125e104='Chemists and materials scientists'
B24125e105='Environmental scientists and geoscientists'
B24125e106='Physical scientists, all other'
B24125e107='Economists'
B24125e108='Survey researchers'
B24125e109='Psychologists'
B24125e110='Urban and regional planners'
B24125e111='Miscellaneous social scientists and related workers, including sociologists'
B24125e112='Agricultural and food science technicians'
B24125e113='Biological technicians'
B24125e114='Chemical technicians'
B24125e115='Geological and petroleum technicians'
B24125e116='Nuclear technicians'
B24125e117='Social science research assistants'
B24125e118='Miscellaneous life, physical, and social science technicians'
B24125e119='Counselors'
B24125e120='Social workers'
B24125e121='Probation officers and correctional treatment specialists'
B24125e122='Social and human service assistants'
B24125e123='Miscellaneous community and social service specialists, including health educators and community health workers'
B24125e124='Clergy'
B24125e125='Directors, religious activities and education'
B24125e126='Religious workers, all other'
B24125e127='Lawyers'
B24125e128='Judicial law clerks'
B24125e129='Judges, magistrates, and other judicial workers'
B24125e130='Paralegals and legal assistants'
B24125e131='Miscellaneous legal support workers'
B24125e132='Postsecondary teachers'
B24125e133='Preschool and kindergarten teachers'
B24125e134='Elementary and middle school teachers'
B24125e135='Secondary school teachers'
B24125e136='Special education teachers'
B24125e137='Other teachers and instructors'
B24125e138='Archivists, curators, and museum technicians'
B24125e139='Librarians'
B24125e140='Library technicians'
B24125e141='Teacher assistants'
B24125e142='Other education, training, and library workers, except teacher assistants'
B24125e143='Artists and related workers'
B24125e144='Designers'
B24125e145='Actors'
B24125e146='Producers and directors'
B24125e147='Athletes, coaches, umpires, and related workers'
B24125e148='Dancers and choreographers'
B24125e149='Musicians, singers, and related workers'
B24125e150='Entertainers and performers, sports and related workers, all other'
B24125e151='Announcers'
B24125e152='News analysts, reporters and correspondents'
B24125e153='Public relations specialists'
B24125e154='Editors'
B24125e155='Technical writers'
B24125e156='Writers and authors'
B24125e157='Miscellaneous media and communication workers'
B24125e158='Miscellaneous media and communications equipment workers, including broadcast and sound engineering technicians and radio operators'
B24125e159='Photographers'
B24125e160='Television, video, and motion picture camera operators and editors'
B24125e161='Chiropractors'
B24125e162='Dentists'
B24125e163='Dietitians and nutritionists'
B24125e164='Optometrists'
B24125e165='Pharmacists'
B24125e166='Physicians and surgeons'
B24125e167='Physician assistants'
B24125e168='Podiatrists'
B24125e169='Audiologists'
B24125e170='Occupational therapists'
B24125e171='Physical therapists'
B24125e172='Radiation therapists'
B24125e173='Recreational therapists'
B24125e174='Respiratory therapists'
B24125e175='Speech-language pathologists'
B24125e176='Miscellaneous therapists, including exercise physiologists'
B24125e177='Veterinarians'
B24125e178='Registered nurses'
B24125e179='Nurse anesthetists'
B24125e180='Nurse midwives'
B24125e181='Nurse practitioners'
B24125e182='Health diagnosing and treating practitioners, all other'
B24125e183='Clinical laboratory technologists and technicians'
B24125e184='Dental hygienists'
B24125e185='Diagnostic related technologists and technicians'
B24125e186='Emergency medical technicians and paramedics'
B24125e187='Health practitioner support technologists and technicians'
B24125e188='Licensed practical and licensed vocational nurses'
B24125e189='Medical records and health information technicians'
B24125e190='Opticians, dispensing'
B24125e191='Miscellaneous health technologists and technicians'
B24125e192='Other healthcare practitioners and technical occupations'
B24125e193='Nursing, psychiatric, and home health aides'
B24125e194='Occupational therapy assistants and aides'
B24125e195='Physical therapist assistants and aides'
B24125e196='Massage therapists'
B24125e197='Dental assistants'
B24125e198='Medical assistants'
B24125e199='Medical transcriptionists'
B24125e200='Pharmacy aides'
B24125e201='Veterinary assistants and laboratory animal caretakers'
B24125e202='Phlebotomists'
B24125e203='Healthcare support workers, all other, including medical equipment preparers'
B24125e204='First-line supervisors of correctional officers'
B24125e205='First-line supervisors of police and detectives'
B24125e206='First-line supervisors of fire fighting and prevention workers'
B24125e207='First-line supervisors of protective service workers, all other'
B24125e208='Firefighters'
B24125e209='Fire inspectors'
B24125e210='Bailiffs, correctional officers, and jailers'
B24125e211='Detectives and criminal investigators'
B24125e212='Fish and game wardens'
B24125e213='Parking enforcement workers'
B24125e214='Police and sheriff''s patrol officers'
B24125e215='Transit and railroad police'
B24125e216='Animal control workers'
B24125e217='Private detectives and investigators'
B24125e218='Security guards and gaming surveillance officers'
B24125e219='Crossing guards'
B24125e220='Transportation security screeners'
B24125e221='Lifeguards and other recreational, and all other protective service workers'
B24125e222='Chefs and head cooks'
B24125e223='First-line supervisors of food preparation and serving workers'
B24125e224='Cooks'
B24125e225='Food preparation workers'
B24125e226='Bartenders'
B24125e227='Combined food preparation and serving workers, including fast food'
B24125e228='Counter attendants, cafeteria, food concession, and coffee shop'
B24125e229='Waiters and waitresses'
B24125e230='Food servers, nonrestaurant'
B24125e231='Dining room and cafeteria attendants and bartender helpers'
B24125e232='Dishwashers'
B24125e233='Hosts and hostesses, restaurant, lounge, and coffee shop'
B24125e234='Food preparation and serving related workers, all other'
B24125e235='First-line supervisors of housekeeping and janitorial workers'
B24125e236='First-line supervisors of landscaping, lawn service, and groundskeeping workers'
B24125e237='Janitors and building cleaners'
B24125e238='Maids and housekeeping cleaners'
B24125e239='Pest control workers'
B24125e240='Grounds maintenance workers'
B24125e241='First-line supervisors of gaming workers'
B24125e242='First-line supervisors of personal service workers'
B24125e243='Animal trainers'
B24125e244='Nonfarm animal caretakers'
B24125e245='Gaming services workers'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B24125e1
B24125e2
B24125e3
B24125e4
B24125e5
B24125e6
B24125e7
B24125e8
B24125e9
B24125e10
B24125e11
B24125e12
B24125e13
B24125e14
B24125e15
B24125e16
B24125e17
B24125e18
B24125e19
B24125e20
B24125e21
B24125e22
B24125e23
B24125e24
B24125e25
B24125e26
B24125e27
B24125e28
B24125e29
B24125e30
B24125e31
B24125e32
B24125e33
B24125e34
B24125e35
B24125e36
B24125e37
B24125e38
B24125e39
B24125e40
B24125e41
B24125e42
B24125e43
B24125e44
B24125e45
B24125e46
B24125e47
B24125e48
B24125e49
B24125e50
B24125e51
B24125e52
B24125e53
B24125e54
B24125e55
B24125e56
B24125e57
B24125e58
B24125e59
B24125e60
B24125e61
B24125e62
B24125e63
B24125e64
B24125e65
B24125e66
B24125e67
B24125e68
B24125e69
B24125e70
B24125e71
B24125e72
B24125e73
B24125e74
B24125e75
B24125e76
B24125e77
B24125e78
B24125e79
B24125e80
B24125e81
B24125e82
B24125e83
B24125e84
B24125e85
B24125e86
B24125e87
B24125e88
B24125e89
B24125e90
B24125e91
B24125e92
B24125e93
B24125e94
B24125e95
B24125e96
B24125e97
B24125e98
B24125e99
B24125e100
B24125e101
B24125e102
B24125e103
B24125e104
B24125e105
B24125e106
B24125e107
B24125e108
B24125e109
B24125e110
B24125e111
B24125e112
B24125e113
B24125e114
B24125e115
B24125e116
B24125e117
B24125e118
B24125e119
B24125e120
B24125e121
B24125e122
B24125e123
B24125e124
B24125e125
B24125e126
B24125e127
B24125e128
B24125e129
B24125e130
B24125e131
B24125e132
B24125e133
B24125e134
B24125e135
B24125e136
B24125e137
B24125e138
B24125e139
B24125e140
B24125e141
B24125e142
B24125e143
B24125e144
B24125e145
B24125e146
B24125e147
B24125e148
B24125e149
B24125e150
B24125e151
B24125e152
B24125e153
B24125e154
B24125e155
B24125e156
B24125e157
B24125e158
B24125e159
B24125e160
B24125e161
B24125e162
B24125e163
B24125e164
B24125e165
B24125e166
B24125e167
B24125e168
B24125e169
B24125e170
B24125e171
B24125e172
B24125e173
B24125e174
B24125e175
B24125e176
B24125e177
B24125e178
B24125e179
B24125e180
B24125e181
B24125e182
B24125e183
B24125e184
B24125e185
B24125e186
B24125e187
B24125e188
B24125e189
B24125e190
B24125e191
B24125e192
B24125e193
B24125e194
B24125e195
B24125e196
B24125e197
B24125e198
B24125e199
B24125e200
B24125e201
B24125e202
B24125e203
B24125e204
B24125e205
B24125e206
B24125e207
B24125e208
B24125e209
B24125e210
B24125e211
B24125e212
B24125e213
B24125e214
B24125e215
B24125e216
B24125e217
B24125e218
B24125e219
B24125e220
B24125e221
B24125e222
B24125e223
B24125e224
B24125e225
B24125e226
B24125e227
B24125e228
B24125e229
B24125e230
B24125e231
B24125e232
B24125e233
B24125e234
B24125e235
B24125e236
B24125e237
B24125e238
B24125e239
B24125e240
B24125e241
B24125e242
B24125e243
B24125e244
B24125e245
;
RUN;
TITLE2;
