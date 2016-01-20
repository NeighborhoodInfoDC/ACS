TITLE2 "e20125dc0099000";
DATA work.SFe0099dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "L:\Libraries\ACS\Raw\SF_2008_12\dc_Tracts_Block_Groups_Only\e20125dc0099000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
/*DETAILED OCCUPATION FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED FEMALE POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed female population 16 years and over */
 
B24126e1='Total:'
B24126e2='Chief executives'
B24126e3='General and operations managers'
B24126e4='Legislators'
B24126e5='Advertising and promotions managers'
B24126e6='Marketing and sales managers'
B24126e7='Public relations and fundraising managers'
B24126e8='Administrative services managers'
B24126e9='Computer and information systems managers'
B24126e10='Financial managers'
B24126e11='Compensation and benefits managers'
B24126e12='Human resources managers'
B24126e13='Training and development managers'
B24126e14='Industrial production managers'
B24126e15='Purchasing managers'
B24126e16='Transportation, storage, and distribution managers'
B24126e17='Farmers, ranchers, and other agricultural managers'
B24126e18='Construction managers'
B24126e19='Education administrators'
B24126e20='Architectural and engineering managers'
B24126e21='Food service managers'
B24126e22='Funeral service managers'
B24126e23='Gaming managers'
B24126e24='Lodging managers'
B24126e25='Medical and health services managers'
B24126e26='Natural sciences managers'
B24126e27='Postmasters and mail superintendents'
B24126e28='Property, real estate, and community association managers'
B24126e29='Social and community service managers'
B24126e30='Emergency management directors'
B24126e31='Managers, all other'
B24126e32='Agents and business managers of artists, performers, and athletes'
B24126e33='Buyers and purchasing agents, farm products'
B24126e34='Wholesale and retail buyers, except farm products'
B24126e35='Purchasing agents, except wholesale, retail, and farm products'
B24126e36='Claims adjusters, appraisers, examiners, and investigators'
B24126e37='Compliance officers'
B24126e38='Cost estimators'
B24126e39='Human resources workers'
B24126e40='Compensation, benefits, and job analysis specialists'
B24126e41='Training and development specialists'
B24126e42='Logisticians'
B24126e43='Management analysts'
B24126e44='Meeting, convention, and event planners'
B24126e45='Fundraisers'
B24126e46='Market research analysts and marketing specialists'
B24126e47='Business operations specialists, all other'
B24126e48='Accountants and auditors'
B24126e49='Appraisers and assessors of real estate'
B24126e50='Budget analysts'
B24126e51='Credit analysts'
B24126e52='Financial analysts'
B24126e53='Personal financial advisors'
B24126e54='Insurance underwriters'
B24126e55='Financial examiners'
B24126e56='Credit counselors and loan officers'
B24126e57='Tax examiners and collectors, and revenue agents'
B24126e58='Tax preparers'
B24126e59='Financial specialists, all other'
B24126e60='Computer and information research scientists'
B24126e61='Computer systems analysts'
B24126e62='Information security analysts'
B24126e63='Computer programmers'
B24126e64='Software developers, applications and systems software'
B24126e65='Web developers'
B24126e66='Computer support specialists'
B24126e67='Database administrators'
B24126e68='Network and computer systems administrators'
B24126e69='Computer network architects'
B24126e70='Computer occupations, all other'
B24126e71='Actuaries'
B24126e72='Mathematicians'
B24126e73='Operations research analysts'
B24126e74='Statisticians'
B24126e75='Miscellaneous mathematical science occupations'
B24126e76='Architects, except naval'
B24126e77='Surveyors, cartographers, and photogrammetrists'
B24126e78='Aerospace engineers'
B24126e79='Agricultural engineers'
B24126e80='Biomedical engineers'
B24126e81='Chemical engineers'
B24126e82='Civil engineers'
B24126e83='Computer hardware engineers'
B24126e84='Electrical and electronics engineers'
B24126e85='Environmental engineers'
B24126e86='Industrial engineers, including health and safety'
B24126e87='Marine engineers and naval architects'
B24126e88='Materials engineers'
B24126e89='Mechanical engineers'
B24126e90='Mining and geological engineers, including mining safety engineers'
B24126e91='Nuclear engineers'
B24126e92='Petroleum engineers'
B24126e93='Engineers, all other'
B24126e94='Drafters'
B24126e95='Engineering technicians, except drafters'
B24126e96='Surveying and mapping technicians'
B24126e97='Agricultural and food scientists'
B24126e98='Biological scientists'
B24126e99='Conservation scientists and foresters'
B24126e100='Medical scientists'
B24126e101='Life scientists, all other'
B24126e102='Astronomers and physicists'
B24126e103='Atmospheric and space scientists'
B24126e104='Chemists and materials scientists'
B24126e105='Environmental scientists and geoscientists'
B24126e106='Physical scientists, all other'
B24126e107='Economists'
B24126e108='Survey researchers'
B24126e109='Psychologists'
B24126e110='Urban and regional planners'
B24126e111='Miscellaneous social scientists and related workers, including sociologists'
B24126e112='Agricultural and food science technicians'
B24126e113='Biological technicians'
B24126e114='Chemical technicians'
B24126e115='Geological and petroleum technicians'
B24126e116='Nuclear technicians'
B24126e117='Social science research assistants'
B24126e118='Miscellaneous life, physical, and social science technicians'
B24126e119='Counselors'
B24126e120='Social workers'
B24126e121='Probation officers and correctional treatment specialists'
B24126e122='Social and human service assistants'
B24126e123='Miscellaneous community and social service specialists, including health educators and community health workers'
B24126e124='Clergy'
B24126e125='Directors, religious activities and education'
B24126e126='Religious workers, all other'
B24126e127='Lawyers'
B24126e128='Judicial law clerks'
B24126e129='Judges, magistrates, and other judicial workers'
B24126e130='Paralegals and legal assistants'
B24126e131='Miscellaneous legal support workers'
B24126e132='Postsecondary teachers'
B24126e133='Preschool and kindergarten teachers'
B24126e134='Elementary and middle school teachers'
B24126e135='Secondary school teachers'
B24126e136='Special education teachers'
B24126e137='Other teachers and instructors'
B24126e138='Archivists, curators, and museum technicians'
B24126e139='Librarians'
B24126e140='Library technicians'
B24126e141='Teacher assistants'
B24126e142='Other education, training, and library workers, except teacher assistants'
B24126e143='Artists and related workers'
B24126e144='Designers'
B24126e145='Actors'
B24126e146='Producers and directors'
B24126e147='Athletes, coaches, umpires, and related workers'
B24126e148='Dancers and choreographers'
B24126e149='Musicians, singers, and related workers'
B24126e150='Entertainers and performers, sports and related workers, all other'
B24126e151='Announcers'
B24126e152='News analysts, reporters and correspondents'
B24126e153='Public relations specialists'
B24126e154='Editors'
B24126e155='Technical writers'
B24126e156='Writers and authors'
B24126e157='Miscellaneous media and communication workers'
B24126e158='Miscellaneous media and communications equipment workers, including broadcast and sound engineering technicians and radio operators'
B24126e159='Photographers'
B24126e160='Television, video, and motion picture camera operators and editors'
B24126e161='Chiropractors'
B24126e162='Dentists'
B24126e163='Dietitians and nutritionists'
B24126e164='Optometrists'
B24126e165='Pharmacists'
B24126e166='Physicians and surgeons'
B24126e167='Physician assistants'
B24126e168='Podiatrists'
B24126e169='Audiologists'
B24126e170='Occupational therapists'
B24126e171='Physical therapists'
B24126e172='Radiation therapists'
B24126e173='Recreational therapists'
B24126e174='Respiratory therapists'
B24126e175='Speech-language pathologists'
B24126e176='Miscellaneous therapists, including exercise physiologists'
B24126e177='Veterinarians'
B24126e178='Registered nurses'
B24126e179='Nurse anesthetists'
B24126e180='Nurse midwives'
B24126e181='Nurse practitioners'
B24126e182='Health diagnosing and treating practitioners, all other'
B24126e183='Clinical laboratory technologists and technicians'
B24126e184='Dental hygienists'
B24126e185='Diagnostic related technologists and technicians'
B24126e186='Emergency medical technicians and paramedics'
B24126e187='Health practitioner support technologists and technicians'
B24126e188='Licensed practical and licensed vocational nurses'
B24126e189='Medical records and health information technicians'
B24126e190='Opticians, dispensing'
B24126e191='Miscellaneous health technologists and technicians'
B24126e192='Other healthcare practitioners and technical occupations'
B24126e193='Nursing, psychiatric, and home health aides'
B24126e194='Occupational therapy assistants and aides'
B24126e195='Physical therapist assistants and aides'
B24126e196='Massage therapists'
B24126e197='Dental assistants'
B24126e198='Medical assistants'
B24126e199='Medical transcriptionists'
B24126e200='Pharmacy aides'
B24126e201='Veterinary assistants and laboratory animal caretakers'
B24126e202='Phlebotomists'
B24126e203='Healthcare support workers, all other, including medical equipment preparers'
B24126e204='First-line supervisors of correctional officers'
B24126e205='First-line supervisors of police and detectives'
B24126e206='First-line supervisors of fire fighting and prevention workers'
B24126e207='First-line supervisors of protective service workers, all other'
B24126e208='Firefighters'
B24126e209='Fire inspectors'
B24126e210='Bailiffs, correctional officers, and jailers'
B24126e211='Detectives and criminal investigators'
B24126e212='Fish and game wardens'
B24126e213='Parking enforcement workers'
B24126e214='Police and sheriff''s patrol officers'
B24126e215='Transit and railroad police'
B24126e216='Animal control workers'
B24126e217='Private detectives and investigators'
B24126e218='Security guards and gaming surveillance officers'
B24126e219='Crossing guards'
B24126e220='Transportation security screeners'
B24126e221='Lifeguards and other recreational, and all other protective service workers'
B24126e222='Chefs and head cooks'
B24126e223='First-line supervisors of food preparation and serving workers'
B24126e224='Cooks'
B24126e225='Food preparation workers'
B24126e226='Bartenders'
B24126e227='Combined food preparation and serving workers, including fast food'
B24126e228='Counter attendants, cafeteria, food concession, and coffee shop'
B24126e229='Waiters and waitresses'
B24126e230='Food servers, nonrestaurant'
B24126e231='Dining room and cafeteria attendants and bartender helpers'
B24126e232='Dishwashers'
B24126e233='Hosts and hostesses, restaurant, lounge, and coffee shop'
B24126e234='Food preparation and serving related workers, all other'
B24126e235='First-line supervisors of housekeeping and janitorial workers'
B24126e236='First-line supervisors of landscaping, lawn service, and groundskeeping workers'
B24126e237='Janitors and building cleaners'
B24126e238='Maids and housekeeping cleaners'
B24126e239='Pest control workers'
B24126e240='Grounds maintenance workers'
B24126e241='First-line supervisors of gaming workers'
B24126e242='First-line supervisors of personal service workers'
B24126e243='Animal trainers'
B24126e244='Nonfarm animal caretakers'
B24126e245='Gaming services workers'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B24126e1
B24126e2
B24126e3
B24126e4
B24126e5
B24126e6
B24126e7
B24126e8
B24126e9
B24126e10
B24126e11
B24126e12
B24126e13
B24126e14
B24126e15
B24126e16
B24126e17
B24126e18
B24126e19
B24126e20
B24126e21
B24126e22
B24126e23
B24126e24
B24126e25
B24126e26
B24126e27
B24126e28
B24126e29
B24126e30
B24126e31
B24126e32
B24126e33
B24126e34
B24126e35
B24126e36
B24126e37
B24126e38
B24126e39
B24126e40
B24126e41
B24126e42
B24126e43
B24126e44
B24126e45
B24126e46
B24126e47
B24126e48
B24126e49
B24126e50
B24126e51
B24126e52
B24126e53
B24126e54
B24126e55
B24126e56
B24126e57
B24126e58
B24126e59
B24126e60
B24126e61
B24126e62
B24126e63
B24126e64
B24126e65
B24126e66
B24126e67
B24126e68
B24126e69
B24126e70
B24126e71
B24126e72
B24126e73
B24126e74
B24126e75
B24126e76
B24126e77
B24126e78
B24126e79
B24126e80
B24126e81
B24126e82
B24126e83
B24126e84
B24126e85
B24126e86
B24126e87
B24126e88
B24126e89
B24126e90
B24126e91
B24126e92
B24126e93
B24126e94
B24126e95
B24126e96
B24126e97
B24126e98
B24126e99
B24126e100
B24126e101
B24126e102
B24126e103
B24126e104
B24126e105
B24126e106
B24126e107
B24126e108
B24126e109
B24126e110
B24126e111
B24126e112
B24126e113
B24126e114
B24126e115
B24126e116
B24126e117
B24126e118
B24126e119
B24126e120
B24126e121
B24126e122
B24126e123
B24126e124
B24126e125
B24126e126
B24126e127
B24126e128
B24126e129
B24126e130
B24126e131
B24126e132
B24126e133
B24126e134
B24126e135
B24126e136
B24126e137
B24126e138
B24126e139
B24126e140
B24126e141
B24126e142
B24126e143
B24126e144
B24126e145
B24126e146
B24126e147
B24126e148
B24126e149
B24126e150
B24126e151
B24126e152
B24126e153
B24126e154
B24126e155
B24126e156
B24126e157
B24126e158
B24126e159
B24126e160
B24126e161
B24126e162
B24126e163
B24126e164
B24126e165
B24126e166
B24126e167
B24126e168
B24126e169
B24126e170
B24126e171
B24126e172
B24126e173
B24126e174
B24126e175
B24126e176
B24126e177
B24126e178
B24126e179
B24126e180
B24126e181
B24126e182
B24126e183
B24126e184
B24126e185
B24126e186
B24126e187
B24126e188
B24126e189
B24126e190
B24126e191
B24126e192
B24126e193
B24126e194
B24126e195
B24126e196
B24126e197
B24126e198
B24126e199
B24126e200
B24126e201
B24126e202
B24126e203
B24126e204
B24126e205
B24126e206
B24126e207
B24126e208
B24126e209
B24126e210
B24126e211
B24126e212
B24126e213
B24126e214
B24126e215
B24126e216
B24126e217
B24126e218
B24126e219
B24126e220
B24126e221
B24126e222
B24126e223
B24126e224
B24126e225
B24126e226
B24126e227
B24126e228
B24126e229
B24126e230
B24126e231
B24126e232
B24126e233
B24126e234
B24126e235
B24126e236
B24126e237
B24126e238
B24126e239
B24126e240
B24126e241
B24126e242
B24126e243
B24126e244
B24126e245
;
RUN;
TITLE2;
