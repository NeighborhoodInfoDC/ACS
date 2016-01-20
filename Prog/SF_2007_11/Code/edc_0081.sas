TITLE2 "e20115dc0081000";
DATA work.SFe0081dc;
 
	LENGTH FILEID   $6
		   FILETYPE $6
		   STUSAB   $2
		   CHARITER $3
		   SEQUENCE $4
		   LOGRECNO $7;
 
INFILE "D:\DCData\Libraries\ACS\Raw\SF_2007_11\dc_Tracts_Block_Groups_Only\e20115dc0081000.txt" DSD TRUNCOVER DELIMITER =',' LRECL=3000;
 
LABEL FILEID  ='File Identification'
      FILETYPE='File Type'  
 	   STUSAB  ='State/U.S.-Abbreviation (USPS)'
 	   CHARITER='Character Iteration'
 	   SEQUENCE='Sequence Number'
 	   LOGRECNO='Logical Record Number'
 
 
/*DETAILED OCCUPATION BY MEDIAN EARNINGS IN THE PAST 12 MONTHS (IN 2011 INFLATION-ADJUSTED DOLLARS) FOR THE FULL-TIME, YEAR-ROUND CIVILIAN EMPLOYED POPULATION 16 YEARS AND OVER */
/*Universe:  Full-time, year-round civilian employed population 16 years and over with earnings */
 
B24121e1='Total:'
B24121e2='Chief executives'
B24121e3='General and operations managers'
B24121e4='Legislators'
B24121e5='Advertising and promotions managers'
B24121e6='Marketing and sales managers'
B24121e7='Public relations and fundraising managers'
B24121e8='Administrative services managers'
B24121e9='Computer and information systems managers'
B24121e10='Financial managers'
B24121e11='Compensation and benefits managers'
B24121e12='Human resources managers'
B24121e13='Training and development managers'
B24121e14='Industrial production managers'
B24121e15='Purchasing managers'
B24121e16='Transportation, storage, and distribution managers'
B24121e17='Farmers, ranchers, and other agricultural managers'
B24121e18='Construction managers'
B24121e19='Education administrators'
B24121e20='Architectural and engineering managers'
B24121e21='Food service managers'
B24121e22='Funeral service managers'
B24121e23='Gaming managers'
B24121e24='Lodging managers'
B24121e25='Medical and health services managers'
B24121e26='Natural sciences managers'
B24121e27='Postmasters and mail superintendents'
B24121e28='Property, real estate, and community association managers'
B24121e29='Social and community service managers'
B24121e30='Emergency management directors'
B24121e31='Managers, all other'
B24121e32='Agents and business managers of artists, performers, and athletes'
B24121e33='Buyers and purchasing agents, farm products'
B24121e34='Wholesale and retail buyers, except farm products'
B24121e35='Purchasing agents, except wholesale, retail, and farm products'
B24121e36='Claims adjusters, appraisers, examiners, and investigators'
B24121e37='Compliance officers'
B24121e38='Cost estimators'
B24121e39='Human resources workers'
B24121e40='Compensation, benefits, and job analysis specialists'
B24121e41='Training and development specialists'
B24121e42='Logisticians'
B24121e43='Management analysts'
B24121e44='Meeting, convention, and event planners'
B24121e45='Fundraisers'
B24121e46='Market research analysts and marketing specialists'
B24121e47='Business operations specialists, all other'
B24121e48='Accountants and auditors'
B24121e49='Appraisers and assessors of real estate'
B24121e50='Budget analysts'
B24121e51='Credit analysts'
B24121e52='Financial analysts'
B24121e53='Personal financial advisors'
B24121e54='Insurance underwriters'
B24121e55='Financial examiners'
B24121e56='Credit counselors and loan officers'
B24121e57='Tax examiners and collectors, and revenue agents'
B24121e58='Tax preparers'
B24121e59='Financial specialists, all other'
B24121e60='Computer and information research scientists'
B24121e61='Computer systems analysts'
B24121e62='Information security analysts'
B24121e63='Computer programmers'
B24121e64='Software developers, applications and systems software'
B24121e65='Web developers'
B24121e66='Computer support specialists'
B24121e67='Database administrators'
B24121e68='Network and computer systems administrators'
B24121e69='Computer network architects'
B24121e70='Computer occupations, all other'
B24121e71='Actuaries'
B24121e72='Mathematicians'
B24121e73='Operations research analysts'
B24121e74='Statisticians'
B24121e75='Miscellaneous mathematical science occupations'
B24121e76='Architects, except naval'
B24121e77='Surveyors, cartographers, and photogrammetrists'
B24121e78='Aerospace engineers'
B24121e79='Agricultural engineers'
B24121e80='Biomedical engineers'
B24121e81='Chemical engineers'
B24121e82='Civil engineers'
B24121e83='Computer hardware engineers'
B24121e84='Electrical and electronics engineers'
B24121e85='Environmental engineers'
B24121e86='Industrial engineers, including health and safety'
B24121e87='Marine engineers and naval architects'
B24121e88='Materials engineers'
B24121e89='Mechanical engineers'
B24121e90='Mining and geological engineers, including mining safety engineers'
B24121e91='Nuclear engineers'
B24121e92='Petroleum engineers'
B24121e93='Engineers, all other'
B24121e94='Drafters'
B24121e95='Engineering technicians, except drafters'
B24121e96='Surveying and mapping technicians'
B24121e97='Agricultural and food scientists'
B24121e98='Biological scientists'
B24121e99='Conservation scientists and foresters'
B24121e100='Medical scientists'
B24121e101='Life scientists, all other'
B24121e102='Astronomers and physicists'
B24121e103='Atmospheric and space scientists'
B24121e104='Chemists and materials scientists'
B24121e105='Environmental scientists and geoscientists'
B24121e106='Physical scientists, all other'
B24121e107='Economists'
B24121e108='Survey researchers'
B24121e109='Psychologists'
B24121e110='Urban and regional planners'
B24121e111='Miscellaneous social scientists and related workers, including sociologists'
B24121e112='Agricultural and food science technicians'
B24121e113='Biological technicians'
B24121e114='Chemical technicians'
B24121e115='Geological and petroleum technicians'
B24121e116='Nuclear technicians'
B24121e117='Social science research assistants'
B24121e118='Miscellaneous life, physical, and social science technicians'
B24121e119='Counselors'
B24121e120='Social workers'
B24121e121='Probation officers and correctional treatment specialists'
B24121e122='Social and human service assistants'
B24121e123='Miscellaneous community and social service specialists, including health educators and community health workers'
B24121e124='Clergy'
B24121e125='Directors, religious activities and education'
B24121e126='Religious workers, all other'
B24121e127='Lawyers'
B24121e128='Judicial law clerks'
B24121e129='Judges, magistrates, and other judicial workers'
B24121e130='Paralegals and legal assistants'
B24121e131='Miscellaneous legal support workers'
B24121e132='Postsecondary teachers'
B24121e133='Preschool and kindergarten teachers'
B24121e134='Elementary and middle school teachers'
B24121e135='Secondary school teachers'
B24121e136='Special education teachers'
B24121e137='Other teachers and instructors'
B24121e138='Archivists, curators, and museum technicians'
B24121e139='Librarians'
B24121e140='Library technicians'
B24121e141='Teacher assistants'
B24121e142='Other education, training, and library workers, except teacher assistants'
B24121e143='Artists and related workers'
B24121e144='Designers'
B24121e145='Actors'
B24121e146='Producers and directors'
B24121e147='Athletes, coaches, umpires, and related workers'
B24121e148='Dancers and choreographers'
B24121e149='Musicians, singers, and related workers'
B24121e150='Entertainers and performers, sports and related workers, all other'
B24121e151='Announcers'
B24121e152='News analysts, reporters and correspondents'
B24121e153='Public relations specialists'
B24121e154='Editors'
B24121e155='Technical writers'
B24121e156='Writers and authors'
B24121e157='Miscellaneous media and communication workers'
B24121e158='Miscellaneous media and communications equipment workers, including broadcast and sound engineering technicians and radio operators'
B24121e159='Photographers'
B24121e160='Television, video, and motion picture camera operators and editors'
B24121e161='Chiropractors'
B24121e162='Dentists'
B24121e163='Dietitians and nutritionists'
B24121e164='Optometrists'
B24121e165='Pharmacists'
B24121e166='Physicians and surgeons'
B24121e167='Physician assistants'
B24121e168='Podiatrists'
B24121e169='Audiologists'
B24121e170='Occupational therapists'
B24121e171='Physical therapists'
B24121e172='Radiation therapists'
B24121e173='Recreational therapists'
B24121e174='Respiratory therapists'
B24121e175='Speech-language pathologists'
B24121e176='Miscellaneous therapists, including exercise physiologists'
B24121e177='Veterinarians'
B24121e178='Registered nurses'
B24121e179='Nurse anesthetists'
B24121e180='Nurse midwives'
B24121e181='Nurse practitioners'
B24121e182='Health diagnosing and treating practitioners, all other'
B24121e183='Clinical laboratory technologists and technicians'
B24121e184='Dental hygienists'
B24121e185='Diagnostic related technologists and technicians'
B24121e186='Emergency medical technicians and paramedics'
B24121e187='Health practitioner support technologists and technicians'
B24121e188='Licensed practical and licensed vocational nurses'
B24121e189='Medical records and health information technicians'
B24121e190='Opticians, dispensing'
B24121e191='Miscellaneous health technologists and technicians'
B24121e192='Other healthcare practitioners and technical occupations'
B24121e193='Nursing, psychiatric, and home health aides'
B24121e194='Occupational therapy assistants and aides'
B24121e195='Physical therapist assistants and aides'
B24121e196='Massage therapists'
B24121e197='Dental assistants'
B24121e198='Medical assistants'
B24121e199='Medical transcriptionists'
B24121e200='Pharmacy aides'
B24121e201='Veterinary assistants and laboratory animal caretakers'
B24121e202='Phlebotomists'
B24121e203='Healthcare support workers, all other, including medical equipment preparers'
B24121e204='First-line supervisors of correctional officers'
B24121e205='First-line supervisors of police and detectives'
B24121e206='First-line supervisors of fire fighting and prevention workers'
B24121e207='First-line supervisors of protective service workers, all other'
B24121e208='Firefighters'
B24121e209='Fire inspectors'
B24121e210='Bailiffs, correctional officers, and jailers'
B24121e211='Detectives and criminal investigators'
B24121e212='Fish and game wardens'
B24121e213='Parking enforcement workers'
B24121e214='Police and sheriff''s patrol officers'
B24121e215='Transit and railroad police'
B24121e216='Animal control workers'
B24121e217='Private detectives and investigators'
B24121e218='Security guards and gaming surveillance officers'
B24121e219='Crossing guards'
B24121e220='Transportation security screeners'
B24121e221='Lifeguards and other recreational, and all other protective service workers'
B24121e222='Chefs and head cooks'
B24121e223='First-line supervisors of food preparation and serving workers'
B24121e224='Cooks'
B24121e225='Food preparation workers'
B24121e226='Bartenders'
B24121e227='Combined food preparation and serving workers, including fast food'
B24121e228='Counter attendants, cafeteria, food concession, and coffee shop'
B24121e229='Waiters and waitresses'
B24121e230='Food servers, nonrestaurant'
B24121e231='Dining room and cafeteria attendants and bartender helpers'
B24121e232='Dishwashers'
B24121e233='Hosts and hostesses, restaurant, lounge, and coffee shop'
B24121e234='Food preparation and serving related workers, all other'
B24121e235='First-line supervisors of housekeeping and janitorial workers'
B24121e236='First-line supervisors of landscaping, lawn service, and groundskeeping workers'
B24121e237='Janitors and building cleaners'
B24121e238='Maids and housekeeping cleaners'
B24121e239='Pest control workers'
B24121e240='Grounds maintenance workers'
B24121e241='First-line supervisors of gaming workers'
B24121e242='First-line supervisors of personal service workers'
B24121e243='Animal trainers'
B24121e244='Nonfarm animal caretakers'
B24121e245='Gaming services workers'
;
 
 
INPUT
 
FILEID   $ 
FILETYPE $ 
STUSAB   $ 
CHARITER $ 
SEQUENCE $ 
LOGRECNO $ 
 
B24121e1
B24121e2
B24121e3
B24121e4
B24121e5
B24121e6
B24121e7
B24121e8
B24121e9
B24121e10
B24121e11
B24121e12
B24121e13
B24121e14
B24121e15
B24121e16
B24121e17
B24121e18
B24121e19
B24121e20
B24121e21
B24121e22
B24121e23
B24121e24
B24121e25
B24121e26
B24121e27
B24121e28
B24121e29
B24121e30
B24121e31
B24121e32
B24121e33
B24121e34
B24121e35
B24121e36
B24121e37
B24121e38
B24121e39
B24121e40
B24121e41
B24121e42
B24121e43
B24121e44
B24121e45
B24121e46
B24121e47
B24121e48
B24121e49
B24121e50
B24121e51
B24121e52
B24121e53
B24121e54
B24121e55
B24121e56
B24121e57
B24121e58
B24121e59
B24121e60
B24121e61
B24121e62
B24121e63
B24121e64
B24121e65
B24121e66
B24121e67
B24121e68
B24121e69
B24121e70
B24121e71
B24121e72
B24121e73
B24121e74
B24121e75
B24121e76
B24121e77
B24121e78
B24121e79
B24121e80
B24121e81
B24121e82
B24121e83
B24121e84
B24121e85
B24121e86
B24121e87
B24121e88
B24121e89
B24121e90
B24121e91
B24121e92
B24121e93
B24121e94
B24121e95
B24121e96
B24121e97
B24121e98
B24121e99
B24121e100
B24121e101
B24121e102
B24121e103
B24121e104
B24121e105
B24121e106
B24121e107
B24121e108
B24121e109
B24121e110
B24121e111
B24121e112
B24121e113
B24121e114
B24121e115
B24121e116
B24121e117
B24121e118
B24121e119
B24121e120
B24121e121
B24121e122
B24121e123
B24121e124
B24121e125
B24121e126
B24121e127
B24121e128
B24121e129
B24121e130
B24121e131
B24121e132
B24121e133
B24121e134
B24121e135
B24121e136
B24121e137
B24121e138
B24121e139
B24121e140
B24121e141
B24121e142
B24121e143
B24121e144
B24121e145
B24121e146
B24121e147
B24121e148
B24121e149
B24121e150
B24121e151
B24121e152
B24121e153
B24121e154
B24121e155
B24121e156
B24121e157
B24121e158
B24121e159
B24121e160
B24121e161
B24121e162
B24121e163
B24121e164
B24121e165
B24121e166
B24121e167
B24121e168
B24121e169
B24121e170
B24121e171
B24121e172
B24121e173
B24121e174
B24121e175
B24121e176
B24121e177
B24121e178
B24121e179
B24121e180
B24121e181
B24121e182
B24121e183
B24121e184
B24121e185
B24121e186
B24121e187
B24121e188
B24121e189
B24121e190
B24121e191
B24121e192
B24121e193
B24121e194
B24121e195
B24121e196
B24121e197
B24121e198
B24121e199
B24121e200
B24121e201
B24121e202
B24121e203
B24121e204
B24121e205
B24121e206
B24121e207
B24121e208
B24121e209
B24121e210
B24121e211
B24121e212
B24121e213
B24121e214
B24121e215
B24121e216
B24121e217
B24121e218
B24121e219
B24121e220
B24121e221
B24121e222
B24121e223
B24121e224
B24121e225
B24121e226
B24121e227
B24121e228
B24121e229
B24121e230
B24121e231
B24121e232
B24121e233
B24121e234
B24121e235
B24121e236
B24121e237
B24121e238
B24121e239
B24121e240
B24121e241
B24121e242
B24121e243
B24121e244
B24121e245
;
RUN;
TITLE2;
