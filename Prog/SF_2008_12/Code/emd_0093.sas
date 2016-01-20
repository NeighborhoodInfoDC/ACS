TITLE2 "e20125md0093000";
DATA work.SFe0093md;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\md_Tracts_Block_Groups_Only\e20125md0093000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over */
 
B24124e1='Total:'
B24124e2='Chief executives'
B24124e3='General and operations managers'
B24124e4='Legislators'
B24124e5='Advertising and promotions managers'
B24124e6='Marketing and sales managers'
B24124e7='Public relations and fundraising managers'
B24124e8='Administrative services managers'
B24124e9='Computer and information systems managers'
B24124e10='Financial managers'
B24124e11='Compensation and benefits managers'
B24124e12='Human resources managers'
B24124e13='Training and development managers'
B24124e14='Industrial production managers'
B24124e15='Purchasing managers'
B24124e16='Transportation, storage, and distribution managers'
B24124e17='Farmers, ranchers, and other agricultural managers'
B24124e18='Construction managers'
B24124e19='Education administrators'
B24124e20='Architectural and engineering managers'
B24124e21='Food service managers'
B24124e22='Funeral service managers'
B24124e23='Gaming managers'
B24124e24='Lodging managers'
B24124e25='Medical and health services managers'
B24124e26='Natural sciences managers'
B24124e27='Postmasters and mail superintendents'
B24124e28='Property, real estate, and community association managers'
B24124e29='Social and community service managers'
B24124e30='Emergency management directors'
B24124e31='Managers, all other'
B24124e32='Agents and business managers of artists, performers, and athletes'
B24124e33='Buyers and purchasing agents, farm products'
B24124e34='Wholesale and retail buyers, except farm products'
B24124e35='Purchasing agents, except wholesale, retail, and farm products'
B24124e36='Claims adjusters, appraisers, examiners, and investigators'
B24124e37='Compliance officers'
B24124e38='Cost estimators'
B24124e39='Human resources workers'
B24124e40='Compensation, benefits, and job analysis specialists'
B24124e41='Training and development specialists'
B24124e42='Logisticians'
B24124e43='Management analysts'
B24124e44='Meeting, convention, and event planners'
B24124e45='Fundraisers'
B24124e46='Market research analysts and marketing specialists'
B24124e47='Business operations specialists, all other'
B24124e48='Accountants and auditors'
B24124e49='Appraisers and assessors of real estate'
B24124e50='Budget analysts'
B24124e51='Credit analysts'
B24124e52='Financial analysts'
B24124e53='Personal financial advisors'
B24124e54='Insurance underwriters'
B24124e55='Financial examiners'
B24124e56='Credit counselors and loan officers'
B24124e57='Tax examiners and collectors, and revenue agents'
B24124e58='Tax preparers'
B24124e59='Financial specialists, all other'
B24124e60='Computer and information research scientists'
B24124e61='Computer systems analysts'
B24124e62='Information security analysts'
B24124e63='Computer programmers'
B24124e64='Software developers, applications and systems software'
B24124e65='Web developers'
B24124e66='Computer support specialists'
B24124e67='Database administrators'
B24124e68='Network and computer systems administrators'
B24124e69='Computer network architects'
B24124e70='Computer occupations, all other'
B24124e71='Actuaries'
B24124e72='Mathematicians'
B24124e73='Operations research analysts'
B24124e74='Statisticians'
B24124e75='Miscellaneous mathematical science occupations'
B24124e76='Architects, except naval'
B24124e77='Surveyors, cartographers, and photogrammetrists'
B24124e78='Aerospace engineers'
B24124e79='Agricultural engineers'
B24124e80='Biomedical engineers'
B24124e81='Chemical engineers'
B24124e82='Civil engineers'
B24124e83='Computer hardware engineers'
B24124e84='Electrical and electronics engineers'
B24124e85='Environmental engineers'
B24124e86='Industrial engineers, including health and safety'
B24124e87='Marine engineers and naval architects'
B24124e88='Materials engineers'
B24124e89='Mechanical engineers'
B24124e90='Mining and geological engineers, including mining safety engineers'
B24124e91='Nuclear engineers'
B24124e92='Petroleum engineers'
B24124e93='Engineers, all other'
B24124e94='Drafters'
B24124e95='Engineering technicians, except drafters'
B24124e96='Surveying and mapping technicians'
B24124e97='Agricultural and food scientists'
B24124e98='Biological scientists'
B24124e99='Conservation scientists and foresters'
B24124e100='Medical scientists'
B24124e101='Life scientists, all other'
B24124e102='Astronomers and physicists'
B24124e103='Atmospheric and space scientists'
B24124e104='Chemists and materials scientists'
B24124e105='Environmental scientists and geoscientists'
B24124e106='Physical scientists, all other'
B24124e107='Economists'
B24124e108='Survey researchers'
B24124e109='Psychologists'
B24124e110='Urban and regional planners'
B24124e111='Miscellaneous social scientists and related workers, including sociologists'
B24124e112='Agricultural and food science technicians'
B24124e113='Biological technicians'
B24124e114='Chemical technicians'
B24124e115='Geological and petroleum technicians'
B24124e116='Nuclear technicians'
B24124e117='Social science research assistants'
B24124e118='Miscellaneous life, physical, and social science technicians'
B24124e119='Counselors'
B24124e120='Social workers'
B24124e121='Probation officers and correctional treatment specialists'
B24124e122='Social and human service assistants'
B24124e123='Miscellaneous community and social service specialists, including health educators and community health workers'
B24124e124='Clergy'
B24124e125='Directors, religious activities and education'
B24124e126='Religious workers, all other'
B24124e127='Lawyers'
B24124e128='Judicial law clerks'
B24124e129='Judges, magistrates, and other judicial workers'
B24124e130='Paralegals and legal assistants'
B24124e131='Miscellaneous legal support workers'
B24124e132='Postsecondary teachers'
B24124e133='Preschool and kindergarten teachers'
B24124e134='Elementary and middle school teachers'
B24124e135='Secondary school teachers'
B24124e136='Special education teachers'
B24124e137='Other teachers and instructors'
B24124e138='Archivists, curators, and museum technicians'
B24124e139='Librarians'
B24124e140='Library technicians'
B24124e141='Teacher assistants'
B24124e142='Other education, training, and library workers, except teacher assistants'
B24124e143='Artists and related workers'
B24124e144='Designers'
B24124e145='Actors'
B24124e146='Producers and directors'
B24124e147='Athletes, coaches, umpires, and related workers'
B24124e148='Dancers and choreographers'
B24124e149='Musicians, singers, and related workers'
B24124e150='Entertainers and performers, sports and related workers, all other'
B24124e151='Announcers'
B24124e152='News analysts, reporters and correspondents'
B24124e153='Public relations specialists'
B24124e154='Editors'
B24124e155='Technical writers'
B24124e156='Writers and authors'
B24124e157='Miscellaneous media and communication workers'
B24124e158='Miscellaneous media and communications equipment workers, including broadcast and sound engineering technicians and radio operators'
B24124e159='Photographers'
B24124e160='Television, video, and motion picture camera operators and editors'
B24124e161='Chiropractors'
B24124e162='Dentists'
B24124e163='Dietitians and nutritionists'
B24124e164='Optometrists'
B24124e165='Pharmacists'
B24124e166='Physicians and surgeons'
B24124e167='Physician assistants'
B24124e168='Podiatrists'
B24124e169='Audiologists'
B24124e170='Occupational therapists'
B24124e171='Physical therapists'
B24124e172='Radiation therapists'
B24124e173='Recreational therapists'
B24124e174='Respiratory therapists'
B24124e175='Speech-language pathologists'
B24124e176='Miscellaneous therapists, including exercise physiologists'
B24124e177='Veterinarians'
B24124e178='Registered nurses'
B24124e179='Nurse anesthetists'
B24124e180='Nurse midwives'
B24124e181='Nurse practitioners'
B24124e182='Health diagnosing and treating practitioners, all other'
B24124e183='Clinical laboratory technologists and technicians'
B24124e184='Dental hygienists'
B24124e185='Diagnostic related technologists and technicians'
B24124e186='Emergency medical technicians and paramedics'
B24124e187='Health practitioner support technologists and technicians'
B24124e188='Licensed practical and licensed vocational nurses'
B24124e189='Medical records and health information technicians'
B24124e190='Opticians, dispensing'
B24124e191='Miscellaneous health technologists and technicians'
B24124e192='Other healthcare practitioners and technical occupations'
B24124e193='Nursing, psychiatric, and home health aides'
B24124e194='Occupational therapy assistants and aides'
B24124e195='Physical therapist assistants and aides'
B24124e196='Massage therapists'
B24124e197='Dental assistants'
B24124e198='Medical assistants'
B24124e199='Medical transcriptionists'
B24124e200='Pharmacy aides'
B24124e201='Veterinary assistants and laboratory animal caretakers'
B24124e202='Phlebotomists'
B24124e203='Healthcare support workers, all other, including medical equipment preparers'
B24124e204='First-line supervisors of correctional officers'
B24124e205='First-line supervisors of police and detectives'
B24124e206='First-line supervisors of fire fighting and prevention workers'
B24124e207='First-line supervisors of protective service workers, all other'
B24124e208='Firefighters'
B24124e209='Fire inspectors'
B24124e210='Bailiffs, correctional officers, and jailers'
B24124e211='Detectives and criminal investigators'
B24124e212='Fish and game wardens'
B24124e213='Parking enforcement workers'
B24124e214='Police and sheriff''s patrol officers'
B24124e215='Transit and railroad police'
B24124e216='Animal control workers'
B24124e217='Private detectives and investigators'
B24124e218='Security guards and gaming surveillance officers'
B24124e219='Crossing guards'
B24124e220='Transportation security screeners'
B24124e221='Lifeguards and other recreational, and all other protective service workers'
B24124e222='Chefs and head cooks'
B24124e223='First-line supervisors of food preparation and serving workers'
B24124e224='Cooks'
B24124e225='Food preparation workers'
B24124e226='Bartenders'
B24124e227='Combined food preparation and serving workers, including fast food'
B24124e228='Counter attendants, cafeteria, food concession, and coffee shop'
B24124e229='Waiters and waitresses'
B24124e230='Food servers, nonrestaurant'
B24124e231='Dining room and cafeteria attendants and bartender helpers'
B24124e232='Dishwashers'
B24124e233='Hosts and hostesses, restaurant, lounge, and coffee shop'
B24124e234='Food preparation and serving related workers, all other'
B24124e235='First-line supervisors of housekeeping and janitorial workers'
B24124e236='First-line supervisors of landscaping, lawn service, and groundskeeping workers'
B24124e237='Janitors and building cleaners'
B24124e238='Maids and housekeeping cleaners'
B24124e239='Pest control workers'
B24124e240='Grounds maintenance workers'
B24124e241='First-line supervisors of gaming workers'
B24124e242='First-line supervisors of personal service workers'
B24124e243='Animal trainers'
B24124e244='Nonfarm animal caretakers'
B24124e245='Gaming services workers'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B24124e1
B24124e2
B24124e3
B24124e4
B24124e5
B24124e6
B24124e7
B24124e8
B24124e9
B24124e10
B24124e11
B24124e12
B24124e13
B24124e14
B24124e15
B24124e16
B24124e17
B24124e18
B24124e19
B24124e20
B24124e21
B24124e22
B24124e23
B24124e24
B24124e25
B24124e26
B24124e27
B24124e28
B24124e29
B24124e30
B24124e31
B24124e32
B24124e33
B24124e34
B24124e35
B24124e36
B24124e37
B24124e38
B24124e39
B24124e40
B24124e41
B24124e42
B24124e43
B24124e44
B24124e45
B24124e46
B24124e47
B24124e48
B24124e49
B24124e50
B24124e51
B24124e52
B24124e53
B24124e54
B24124e55
B24124e56
B24124e57
B24124e58
B24124e59
B24124e60
B24124e61
B24124e62
B24124e63
B24124e64
B24124e65
B24124e66
B24124e67
B24124e68
B24124e69
B24124e70
B24124e71
B24124e72
B24124e73
B24124e74
B24124e75
B24124e76
B24124e77
B24124e78
B24124e79
B24124e80
B24124e81
B24124e82
B24124e83
B24124e84
B24124e85
B24124e86
B24124e87
B24124e88
B24124e89
B24124e90
B24124e91
B24124e92
B24124e93
B24124e94
B24124e95
B24124e96
B24124e97
B24124e98
B24124e99
B24124e100
B24124e101
B24124e102
B24124e103
B24124e104
B24124e105
B24124e106
B24124e107
B24124e108
B24124e109
B24124e110
B24124e111
B24124e112
B24124e113
B24124e114
B24124e115
B24124e116
B24124e117
B24124e118
B24124e119
B24124e120
B24124e121
B24124e122
B24124e123
B24124e124
B24124e125
B24124e126
B24124e127
B24124e128
B24124e129
B24124e130
B24124e131
B24124e132
B24124e133
B24124e134
B24124e135
B24124e136
B24124e137
B24124e138
B24124e139
B24124e140
B24124e141
B24124e142
B24124e143
B24124e144
B24124e145
B24124e146
B24124e147
B24124e148
B24124e149
B24124e150
B24124e151
B24124e152
B24124e153
B24124e154
B24124e155
B24124e156
B24124e157
B24124e158
B24124e159
B24124e160
B24124e161
B24124e162
B24124e163
B24124e164
B24124e165
B24124e166
B24124e167
B24124e168
B24124e169
B24124e170
B24124e171
B24124e172
B24124e173
B24124e174
B24124e175
B24124e176
B24124e177
B24124e178
B24124e179
B24124e180
B24124e181
B24124e182
B24124e183
B24124e184
B24124e185
B24124e186
B24124e187
B24124e188
B24124e189
B24124e190
B24124e191
B24124e192
B24124e193
B24124e194
B24124e195
B24124e196
B24124e197
B24124e198
B24124e199
B24124e200
B24124e201
B24124e202
B24124e203
B24124e204
B24124e205
B24124e206
B24124e207
B24124e208
B24124e209
B24124e210
B24124e211
B24124e212
B24124e213
B24124e214
B24124e215
B24124e216
B24124e217
B24124e218
B24124e219
B24124e220
B24124e221
B24124e222
B24124e223
B24124e224
B24124e225
B24124e226
B24124e227
B24124e228
B24124e229
B24124e230
B24124e231
B24124e232
B24124e233
B24124e234
B24124e235
B24124e236
B24124e237
B24124e238
B24124e239
B24124e240
B24124e241
B24124e242
B24124e243
B24124e244
B24124e245
;
RUN;
TITLE2;
