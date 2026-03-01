ALTER TABLE office_location ALTER COLUMN id SET DEFAULT NEXT VALUE FOR idgenerator;
ALTER TABLE skill ALTER COLUMN id SET DEFAULT NEXT VALUE FOR idgenerator;
ALTER TABLE sample_person ALTER COLUMN id SET DEFAULT NEXT VALUE FOR idgenerator;

-- Office Locations
insert into office_location(version, name, city, country, latitude, longitude) values (1, 'Tokyo Office', 'Tokyo', 'Japan', 35.6762, 139.6503) ;
insert into office_location(version, name, city, country, latitude, longitude) values (1, 'London Office', 'London', 'UK', 51.5074, -0.1278) ;
insert into office_location(version, name, city, country, latitude, longitude) values (1, 'Paris Office', 'Paris', 'France', 48.8566, 2.3522) ;
insert into office_location(version, name, city, country, latitude, longitude) values (1, 'Madrid Office', 'Madrid', 'Spain', 40.4168, -3.7038) ;
insert into office_location(version, name, city, country, latitude, longitude) values (1, 'San Francisco Office', 'San Francisco', 'USA', 37.7749, -122.4194) ;
insert into office_location(version, name, city, country, latitude, longitude) values (1, 'Seattle Office', 'Seattle', 'USA', 47.6062, -122.3321) ;
insert into office_location(version, name, city, country, latitude, longitude) values (1, 'Montreal Office', 'Montreal', 'Canada', 45.5017, -73.5673) ;
insert into office_location(version, name, city, country, latitude, longitude) values (1, 'Johannesburg Office', 'Johannesburg', 'South Africa', -26.2041, 28.0473) ;
insert into office_location(version, name, city, country, latitude, longitude) values (1, 'Mumbai Office', 'Mumbai', 'India', 19.076, 72.8777) ;
insert into office_location(version, name, city, country, latitude, longitude) values (1, 'Beijing Office', 'Beijing', 'China', 39.9042, 116.4074) ;
insert into office_location(version, name, city, country, latitude, longitude) values (1, 'Sydney Office', 'Sydney', 'Australia', -33.8688, 151.2093) ;
insert into office_location(version, name, city, country, latitude, longitude) values (1, 'Berlin Office', 'Berlin', 'Germany', 52.52, 13.405) ;
insert into office_location(version, name, city, country, latitude, longitude) values (1, 'Turku Office', 'Turku', 'Finland', 60.4518, 22.2666) ;
insert into office_location(version, name, city, country, latitude, longitude) values (1, 'Zurich Office', 'Zurich', 'Switzerland', 47.3769, 8.5417) ;
insert into office_location(version, name, city, country, latitude, longitude) values (1, 'Athens Office', 'Athens', 'Greece', 37.9838, 23.7275) ;

-- Skills
insert into skill(version, name) values (1, 'Java') ;
insert into skill(version, name) values (1, 'Python') ;
insert into skill(version, name) values (1, 'TypeScript') ;
insert into skill(version, name) values (1, 'Spring') ;
insert into skill(version, name) values (1, 'Docker') ;
insert into skill(version, name) values (1, 'Kubernetes') ;
insert into skill(version, name) values (1, 'AWS') ;
insert into skill(version, name) values (1, 'REST') ;
insert into skill(version, name) values (1, 'Kafka') ;
insert into skill(version, name) values (1, 'Git') ;
insert into skill(version, name) values (1, 'Vaadin') ;

ALTER SEQUENCE idgenerator RESTART WITH 1000;

-- Sample Persons
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Eula','Lane','eula.lane@jigrormo.ye','(762) 526-5961','1956-02-16','Insurance Clerk','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Barry','Rodriquez','barry.rodriquez@zun.mm','(267) 955-5124','2015-02-16','Mortarman','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Eugenia','Selvi','eugenia.selvi@capfad.vn','(680) 368-2192','1975-02-01','Beer Coil Cleaner','External',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Alejandro','Miles','alejandro.miles@dec.bn','(281) 301-2039','2015-03-21','Scale Attendant','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Cora','Tesi','cora.tesi@bivo.yt','(600) 616-7955','1973-05-18','Clinical Audiologist','Supervisor',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marguerite','Ishii','marguerite.ishii@judbilo.gn','(882) 813-1374','1939-02-13','Parking Meter Collector','Supervisor',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Mildred','Jacobs','mildred.jacobs@joraf.wf','(642) 665-1763','1968-09-17','Business Unit Manager','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gene','Goodman','gene.goodman@kem.tl','(383) 458-2132','2011-07-29','Technical Communicator','External',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lettie','Bennett','lettie.bennett@odeter.bb','(769) 335-6771','1960-10-02','Correctional Officer Sergeant','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Mabel','Leach','mabel.leach@lisohuje.vi','(803) 586-8035','1947-09-09','Food Chemist','Supervisor',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jordan','Miccinesi','jordan.miccinesi@duod.gy','(531) 919-2280','1983-10-21','Signals Intelligence/Electronic Warfare Chief','Manager',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marie','Parkes','marie.parkes@nowufpus.ph','(814) 667-8937','1944-08-21','Language Pathologist','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rose','Gray','rose.gray@kagu.hr','(713) 311-8766','1959-08-21','Wildlife Officer','Worker',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Garrett','Stokes','garrett.stokes@fef.bg','(381) 421-2371','2010-06-01','Bindery Machine Operator','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Barbara','Matthieu','barbara.matthieu@derwogi.jm','(940) 463-7299','1931-05-28','Instructional Aide','External',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jean','Rhodes','jean.rhodes@wehovuce.gu','(777) 435-9570','1950-11-04','Clinical Psychiatrist','Worker',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jack','Romoli','jack.romoli@zamum.bw','(517) 393-9630','1976-08-30','Mortician Investigator','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Pearl','Holden','pearl.holden@dunebuh.cr','(711) 904-3669','1950-12-26','Rod Buster Helper','Manager',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Belle','Montero','belle.montero@repiwid.si','(935) 404-4792','1934-01-18','Classroom Aide','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Olive','Molina','olive.molina@razuppa.ga','(935) 267-8492','1935-07-31','Traditional Chinese Herbalist','Worker',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Minerva','Todd','minerva.todd@kulmenim.ad','(763) 948-4815','1952-01-01','Electronic Drafter','Supervisor',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Bobby','Pearson','bobby.pearson@ib.kg','(238) 240-2561','2016-05-25','Vault Teller','Worker',true, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Larry','Ciappi','larry.ciappi@ba.lk','(410) 257-1723','1997-06-10','Fire Sprinkler Installer','Supervisor',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ronnie','Salucci','ronnie.salucci@tohhij.lv','(566) 726-3346','1975-12-13','Brewery Pumper','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Walter','Grossi','walter.grossi@tuvo.sa','(416) 906-7221','1989-01-30','Kitchen Chef','External',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Frances','Koopmans','frances.koopmans@foga.tw','(611) 712-1562','1968-03-23','Medical Esthetician','Worker',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Frances','Fujimoto','frances.fujimoto@uswuzzub.jp','(919) 887-8542','1937-08-27','Auto Tire Worker','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Olivia','Vidal','olivia.vidal@hivwerip.vc','(982) 684-7650','1934-12-05','Semi-Truck Driver','Manager',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Edna','Henry','edna.henry@gugusu.rw','(811) 931-8202','1948-10-18','Command And Control','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lydia','Brun','lydia.brun@zedekak.md','(927) 400-3928','1930-12-01','Drywall Hanger','Worker',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jay','Blake','jay.blake@ral.mk','(365) 345-1498','2010-12-19','Real Property Evaluator','Manager',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Isabel','Serafini','isabel.serafini@turuhu.bh','(656) 968-9869','1974-12-27','Human Performance Professor','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rebecca','Carter','rebecca.carter@omjo.et','(739) 612-6585','1960-07-15','V/Stol Landing Signal Officer','External',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Maurice','Fabbrini','maurice.fabbrini@rig.bh','(485) 521-2687','1994-05-21','Air Control/Anti-Air Warfare Officer','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ollie','Turnbull','ollie.turnbull@sicewap.org','(835) 620-3330','1946-01-15','General Superintendent','Manager',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jerry','Hopkins','jerry.hopkins@fo.mh','(211) 851-5960','2016-02-09','Child Protective Services Social Worker','External',true, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Nora','Lyons','nora.lyons@gegijap.na','(811) 311-5257','1946-11-23','Lens Grinder and Polisher','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Anne','Weiß','anne.weiß@kuvesa.pe','(843) 836-3759','1942-06-11','Civil Engineering Professor','Worker',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Louise','Gauthier','louise.gauthier@lapahu.mt','(913) 235-1856','1931-09-21','Mobile Home Servicer','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lloyd','Fani','lloyd.fani@zev.ru','(467) 487-7239','1993-08-25','Floor Refinisher','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Maud','Dunn','maud.dunn@nabeaga.ni','(724) 340-3634','1956-11-16','Senior Sales Associate','Manager',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Henry','Gigli','henry.gigli@kaot.ps','(413) 229-8428','1990-01-19','Tile Designer','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Virgie','Werner','virgie.werner@tawuctuj.cf','(886) 292-9749','1943-02-28','Econometrics Professor','Supervisor',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gregory','Cozzi','gregory.cozzi@eh.ru','(418) 472-1239','1995-12-22','Basketball Player','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lucinda','Gil','lucinda.gil@fajjusuz.kr','(961) 233-3461','1935-12-13','Indirect Fire Infantryman','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gertrude','Verbeek','gertrude.verbeek@pave.cc','(605) 226-4037','1965-12-26','Licensed Esthetician','Worker',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Mattie','Graham','mattie.graham@ispaviw.gt','(719) 765-1705','1958-10-24','Antisubmarine Warfare Intelligence Officer','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Bryan','Shaw','bryan.shaw@ha.ee','(232) 228-5539','2020-06-19','Research Assistant','Manager',true, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Essie','Adams','essie.adams@iliat.cw','(768) 554-8377','1959-12-30','Cigar Roller','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gary','Osborne','gary.osborne@do.ga','(311) 731-7079','2010-10-18','Customer Support Representative','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Richard','Silva','richard.silva@wi.lc','(207) 554-6244','2016-05-29','Programmer','Manager',true, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Dustin','Pestelli','dustin.pestelli@iwage.la','(558) 913-2855','1979-10-03','Global Engineering Manager','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Henrietta','Hilton','henrietta.hilton@joopoju.pn','(832) 759-6654','1945-07-27','Telegraph and Teletype Operator','External',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Francisco','Giordano','francisco.giordano@gojawu.tn','(482) 736-8079','1990-01-03','Hairpiece Stylist','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Cynthia','Sardi','cynthia.sardi@afigoh.mm','(677) 345-2680','1975-06-24','Tobacco Buyer','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lula','Testi','lula.testi@benom.tj','(610) 374-7581','1973-04-20','Marine Steamfitter','Worker',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Bess','Lucas','bess.lucas@jevakbe.cd','(982) 583-8067','1930-09-29','Attending Anesthesiologist','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Linnie','Driessen','linnie.driessen@darhow.tr','(680) 266-3167','1969-06-29','Certified Indoor Environmentalist','External',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Eva','Tesi','eva.tesi@dupid.cf','(611) 955-4652','1973-05-11','Land Management Forester','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Augusta','Sakai','augusta.sakai@comouc.ee','(940) 714-8088','1938-02-16','Digital Proofing and Platemaker','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Mathilda','Schwarz','mathilda.schwarz@igunisi.ao','(868) 481-5125','1943-06-12','Public Health Veterinarian','Manager',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Joe','Riley','joe.riley@pe.vu','(225) 395-2772','2018-11-20','Statement Processor','External',true, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Leon','McGee','leon.mcgee@puk.se','(365) 837-6888','2012-09-05','Computer Applications Developer','Worker',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Florence','Viviani','florence.viviani@vegub.no','(606) 352-8734','1971-06-29','African History Professor','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lee','Miceli','lee.miceli@rucwi.pf','(555) 800-7339','1983-10-02','Gastroenterology Professor','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Celia','Sodi','celia.sodi@agijit.iq','(657) 357-3671','1974-07-25','Laboratory Animal Caretaker','External',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Aaron','Misuri','aaron.misuri@loolu.lu','(523) 789-5485','1983-06-26','Water Pump Installer','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Fanny','Parkinson','fanny.parkinson@tupwovali.cw','(766) 966-7387','1951-04-07','Orthopedic Cast Specialist','Supervisor',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Phoebe','Vitale','phoebe.vitale@hidge.fo','(672) 613-2954','1971-08-08','Budget Coordinator','Manager',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Edith','Brennan','edith.brennan@liowci.ir','(803) 549-9387','1950-01-17','Railroad Engineer','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jeremy','Marilli','jeremy.marilli@vesa.pf','(526) 435-1819','1985-07-22','Chief Projectionist','External',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kathryn','Huet','kathryn.huet@wupikdoh.by','(937) 855-5936','1929-01-08','Telecasting Engineer','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lelia','Matsuo','lelia.matsuo@dajsiphaj.az','(960) 335-6192','1937-01-19','Drama Therapist','Supervisor',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Virginia','Woods','virginia.woods@soofpe.ht','(735) 809-2611','1956-10-27','General Superintendent','Manager',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sally','Aoki','sally.aoki@aruzusjas.tc','(857) 797-7918','1938-12-29','Technical Communicator','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Isabelle','de Ridder','isabelle.deridder@ufeco.in','(659) 331-1543','1964-10-14','Leisure Studies Professor','Worker',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rosie','Murphy','rosie.murphy@uneehi.id','(759) 639-8597','1960-04-16','Air Conditioning Service Technician','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lou','Meyer','lou.meyer@hahinaba.gm','(942) 352-4854','1931-01-10','Business Unit Manager','External',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rodney','Love','rodney.love@zun.ph','(247) 867-8287','2014-05-06','Job Estimator','Worker',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kenneth','Bianchini','kenneth.bianchini@jo.ws','(302) 793-9936','2003-04-28','Correctional Officer Sergeant','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Essie','Dietrich','essie.dietrich@goltuefo.mn','(861) 740-6628','1940-12-28','Parking Meter Collector','Supervisor',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Leila','Simon','leila.simon@lupuwuzo.gw','(953) 866-9992','1932-09-24','Signals Intelligence/Electronic Warfare Chief','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Eva','Pierre','eva.pierre@reduzris.ee','(915) 491-8384','1929-10-06','Clinical Psychiatrist','Worker',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Landon','Moretti','landon.moretti@pubsav.sk','(584) 909-6235','1983-01-09','Wildlife Officer','Supervisor',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Mittie','Sardi','mittie.sardi@lullip.nf','(673) 849-4256','1975-06-19','Food Chemist','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Corey','McDaniel','corey.mcdaniel@aba.tc','(268) 208-9643','2014-08-23','Advanced Foreign Counterintelligence Specialist (Afcs)','Supervisor',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Hester','Stein','hester.stein@kettujwo.eu','(873) 489-6641','1941-06-15','Forest Fire Officer','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Danny','Lowe','danny.lowe@ju.sd','(243) 974-5539','2015-09-28','Catalogue Illustrator','External',true, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lillie','Winter','lillie.winter@vioburez.vi','(816) 699-1291','1947-08-23','Knife Grinder','Worker',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Brandon','Borchi','brandon.borchi@ig.al','(319) 401-1090','2002-06-14','Neuropsychiatrist','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Isaac','Bernardi','isaac.bernardi@omu.bj','(359) 691-6408','2003-11-25','Bottle Packer','Manager',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Clyde','Crawford','clyde.crawford@luw.dz','(273) 892-4646','2020-11-27','Special Education Kindergarten Teacher','External',true, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Paul','Sherman','paul.sherman@pi.cf','(304) 610-2881','2010-05-06','Commercial Art Instructor','Worker',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Craig','Russell','craig.russell@zu.nz','(237) 969-2900','2022-03-03','Ferryboat Captain','Supervisor',true, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'John','Sutton','john.sutton@ag.ee','(207) 424-6468','2015-05-15','School Social Worker','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Francisco','Formigli','francisco.formigli@fopav.tn','(481) 661-8179','1992-04-28','Joint Terminal Attack Controller','External',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gary','Baker','gary.baker@ji.cf','(212) 510-3444','2024-05-18','VP Sales','Worker',true, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Earl','Giovannoni','earl.giovannoni@lojet.ge','(433) 862-3076','1989-09-26','Auto Service Station Attendant','Manager',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Helen','Zanieri','helen.zanieri@ukve.tn','(619) 506-4452','1971-02-08','Healthcare Social Worker','External',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Agnes','Toccafondi','agnes.toccafondi@viipo.ae','(616) 688-6883','1973-02-27','Comedian','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Judith','Aoki','judith.aoki@enterprise.com','(481) 450-4657','1946-12-04','Ship Captain','Worker',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lawrence','Bachmann','lawrence.bachmann@gmail.com','(295) 423-4811','1993-10-01','Mediator','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kyle','Gruber','kyle.gruber@yandex.ru','(803) 484-1106','1949-12-14','Geneticist','Supervisor',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Pilar','Larsson','pilar.larsson@proton.me','(294) 589-2584','1974-06-20','SEO Specialist','External',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Meredith','Sasaki','meredith.sasaki@proton.me','(587) 280-5803','2009-10-28','Neurologist','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gabriel','Beck','gabriel.beck@corp.biz','(433) 991-5741','1939-04-28','Pilot','Manager',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Maureen','Westerberg','maureen.westerberg@digital.co','(573) 366-7065','1974-04-22','Social Media Manager','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Geoffrey','Unger','geoffrey.unger@office.io','(375) 746-5010','1949-08-13','Public Relations Officer','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rainer','Bergström','rainer.bergstrom@web.de','(986) 994-1916','1958-01-26','Geologist','Worker',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Florian','Grasso','florian.grasso@group.com','(780) 935-6155','1956-11-16','Optometrist','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Melissa','Eklund','melissa.eklund@aol.com','(342) 452-9830','1962-12-19','Massage Therapist','Supervisor',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jason','Magnusson','jason.magnusson@icloud.com','(341) 721-9085','1940-01-28','Firefighter','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Manfred','Sandberg','manfred.sandberg@msn.com','(810) 265-7304','1977-10-15','Truck Driver','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Arjun','Sandberg','arjun.sandberg@enterprise.com','(317) 898-9797','1963-11-11','Firefighter','Manager',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Maiko','Ortiz','maiko.ortiz@gmail.com','(939) 936-5315','1993-03-17','Paramedic','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Alice','Wolf','alice.wolf@inbox.com','(823) 403-3504','1976-03-18','Truck Driver','External',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Celeste','Porto','celeste.porto@gmail.com','(314) 571-6038','1959-01-08','Museum Curator','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Hector','Poletti','hector.poletti@digital.co','(270) 978-9727','1945-03-22','Fashion Designer','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marian','Ibarra','marian.ibarra@inbox.com','(821) 633-4470','1998-12-23','Logistics Coordinator','Supervisor',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jason','Hellström','jason.hellstrom@office.io','(582) 648-9479','1986-02-08','Training Specialist','External',true, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Carmen','Takeda','carmen.takeda@example.com','(435) 802-4608','1929-02-23','Electrician','Worker',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Damian','Kubo','damian.kubo@outlook.com','(726) 443-5562','2014-08-07','Delivery Driver','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Nicholas','Hayashi','nicholas.hayashi@tech.io','(684) 616-4119','1941-02-22','Real Estate Agent','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Julia','Paredes','julia.paredes@services.org','(946) 255-2612','1936-07-24','Biochemist','External',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jorge','Hernandez','jorge.hernandez@zoho.com','(394) 749-8350','1946-07-06','Creative Director','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gloria','Okamoto','gloria.okamoto@tech.io','(763) 300-1828','2012-09-27','Civil Engineer','Manager',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ruben','Fitzgerald','ruben.fitzgerald@msn.com','(697) 692-4502','1980-01-06','Surgeon','Supervisor',true, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Howard','Ibarra','howard.ibarra@group.com','(665) 492-7930','2018-12-26','Legal Secretary','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Randall','Falk','randall.falk@zoho.com','(503) 422-1958','2003-12-18','Electrician','Worker',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Estelle','Bengtsson','estelle.bengtsson@company.org','(688) 714-9701','1949-01-17','Teacher','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Freya','Tavares','freya.tavares@outlook.com','(891) 440-7615','1944-10-08','Translator','Supervisor',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Hans','Navarro','hans.navarro@corp.biz','(797) 778-9565','1969-05-07','Geologist','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jack','Dijkstra','jack.dijkstra@corp.biz','(860) 507-8491','1969-02-01','Risk Manager','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jana','Braun','jana.braun@example.com','(418) 718-5345','1945-06-03','Sales Engineer','Manager',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Maiko','Ohara','maiko.ohara@digital.co','(756) 920-5956','2007-11-17','Graphic Designer','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Amanda','Zimmermann','amanda.zimmermann@proton.me','(337) 470-2891','1942-12-18','Network Engineer','External',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Pedro','Leitner','pedro.leitner@zoho.com','(903) 849-5325','1993-08-09','Social Worker','Worker',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Leah','Iwamoto','leah.iwamoto@yahoo.com','(203) 541-3143','2010-05-06','Investment Banker','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lila','Soares','lila.soares@gmail.com','(314) 277-3442','1998-01-27','Pediatrician','Supervisor',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lisette','Novak','lisette.novak@mail.com','(242) 515-6974','1934-06-07','Territory Manager','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Edward','Smit','edward.smit@solutions.net','(616) 835-3532','1959-03-26','Project Manager','Worker',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Chen','Franke','chen.franke@enterprise.com','(540) 621-5065','1963-03-26','Paramedic','Manager',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Delphine','Paulsson','delphine.paulsson@icloud.com','(404) 671-6728','1968-04-08','Financial Analyst','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jason','Kruger','jason.kruger@aol.com','(271) 991-5573','1973-11-17','Chiropractor','External',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Willard','Kubo','willard.kubo@gmail.com','(318) 467-3925','2003-05-02','Paramedic','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Devon','Klimek','devon.klimek@msn.com','(820) 723-2894','1978-10-07','Brand Manager','Manager',true, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Luther','Aaronsen','luther.aaronsen@inbox.com','(751) 903-4228','1975-07-03','Physicist','Supervisor',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kelly','Kawamoto','kelly.kawamoto@inbox.com','(516) 882-7691','1970-07-23','Biomedical Engineer','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Nicole','Neumann','nicole.neumann@corp.biz','(588) 893-3851','2007-10-10','Podiatrist','Worker',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Akira','Keller','akira.keller@gmx.de','(415) 640-6279','1988-08-15','Inventory Analyst','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marta','Zaccaria','marta.zaccaria@outlook.com','(490) 727-6491','1940-04-22','Aerospace Engineer','Supervisor',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Oliver','Engel','oliver.engel@gmail.com','(247) 450-8784','2007-02-15','Respiratory Therapist','External',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Nina','Wickström','nina.wickstrom@live.com','(706) 609-4997','1947-11-23','Data Analyst','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jonas','Nilsson','jonas.nilsson@icloud.com','(380) 912-9486','1988-01-18','Territory Manager','Manager',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Katharina','Ota','katharina.ota@mail.com','(675) 883-9702','2000-10-11','Investment Banker','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sandra','Nishimura','sandra.nishimura@digital.co','(761) 656-3607','2024-08-15','Content Strategist','External',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Vera','Saarinen','vera.saarinen@mail.ru','(841) 444-5499','1985-02-23','Video Producer','Worker',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Damien','Koizumi','damien.koizumi@solutions.net','(753) 282-3267','1948-04-13','Network Engineer','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Filip','Nakano','filip.nakano@msn.com','(538) 755-8633','1982-01-07','Dietitian','Supervisor',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Carlos','Sundberg','carlos.sundberg@live.com','(688) 206-6763','1967-07-28','Dietitian','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rajesh','Popov','rajesh.popov@icloud.com','(479) 646-8956','1932-07-11','Podiatrist','Worker',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Morris','Delgado','morris.delgado@work.net','(746) 227-7455','2004-10-22','Financial Analyst','Manager',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Logan','Dominguez','logan.dominguez@services.org','(672) 386-1823','1962-07-11','Inventory Analyst','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Darlene','Medina','darlene.medina@aol.com','(970) 631-5133','1939-08-01','Delivery Driver','External',true, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Drew','Gupta','drew.gupta@office.io','(270) 999-1659','1932-04-07','Marketing Manager','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ruth','De Vries','ruth.devries@mail.ru','(885) 317-4571','1988-12-09','Pediatrician','Manager',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Julien','Ferrari','julien.ferrari@gmx.de','(310) 792-1420','1968-10-22','Radiologist','Supervisor',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Oliver','Brunetti','oliver.brunetti@company.org','(907) 842-4978','1942-12-25','Environmental Engineer','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kasper','Sommer','kasper.sommer@tech.io','(242) 555-9728','1983-11-12','Carpenter','Worker',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Deborah','Alberti','deborah.alberti@services.org','(630) 701-2729','1984-06-21','Risk Manager','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lucille','Franco','lucille.franco@enterprise.com','(734) 866-5425','2007-09-25','Landscape Architect','Supervisor',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Theodor','Kowalczyk','theodor.kowalczyk@services.org','(451) 288-5569','1986-04-25','Compliance Officer','External',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gladys','Larsson','gladys.larsson@gmail.com','(706) 532-3979','1991-04-12','Content Strategist','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Vanessa','Sjöberg','vanessa.sjoberg@gmail.com','(729) 395-2402','1959-12-14','Baker','Manager',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sachiko','Malmberg','sachiko.malmberg@mail.ru','(861) 928-9041','1986-01-03','Biomedical Engineer','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Samuel','Kelley','samuel.kelley@corp.biz','(795) 577-8753','1999-09-12','Athletic Trainer','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Connor','Lopez','connor.lopez@firm.co','(664) 477-6023','1961-04-04','Operations Manager','Worker',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Wilbur','Malmberg','wilbur.malmberg@fastmail.com','(396) 421-8933','1964-12-19','Heavy Equipment Operator','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jana','Garnier','jana.garnier@gmx.de','(432) 569-3939','1967-01-23','Bus Driver','Supervisor',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Edgar','Berglund','edgar.berglund@example.com','(499) 914-3068','2010-08-04','Civil Engineer','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Nancy','Petrov','nancy.petrov@yandex.ru','(548) 388-1841','1961-08-04','Plumber','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Geraldo','Suzuki','geraldo.suzuki@office.io','(902) 254-3485','1948-10-10','Professor','Manager',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Karin','Skovgaard','karin.skovgaard@global.net','(626) 820-4697','1995-07-15','Investment Banker','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lois','Kelley','lois.kelley@company.org','(835) 261-2625','1955-11-07','SEO Specialist','External',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Magnus','Hasegawa','magnus.hasegawa@fastmail.com','(765) 276-3564','1929-07-15','Interior Designer','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Robin','Jansen','robin.jansen@firm.co','(489) 919-8438','1938-11-08','SEO Specialist','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Olaf','Nilsson','olaf.nilsson@proton.me','(757) 430-3441','1963-03-03','Electrician','Supervisor',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Barnaby','Tavares','barnaby.tavares@enterprise.com','(782) 495-8195','1944-08-23','Environmental Engineer','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ulrich','Rinaldi','ulrich.rinaldi@example.com','(705) 648-2317','2005-01-14','Oceanographer','Worker',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Chester','Castro','chester.castro@icloud.com','(890) 789-1339','2015-05-19','Physical Therapist','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Maya','Paulsson','maya.paulsson@inbox.com','(867) 652-5557','1952-10-14','Baker','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Natalie','Lindqvist','natalie.lindqvist@msn.com','(541) 528-2713','1949-06-14','Butcher','External',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jean','Scholz','jean.scholz@yahoo.com','(665) 290-6153','1961-06-04','Podiatrist','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Aleksandra','Yoshimura','aleksandra.yoshimura@services.org','(755) 673-7770','1935-04-17','Neurologist','Manager',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ross','Wahlberg','ross.wahlberg@yandex.ru','(978) 252-4335','1963-09-05','Video Producer','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Pete','De Jong','pete.dejong@gmail.com','(845) 823-4920','2019-03-10','Paralegal','External',true, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Johnny','Cavalcanti','johnny.cavalcanti@icloud.com','(316) 672-2924','2011-03-16','Animator','Worker',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ursula','Nakano','ursula.nakano@digital.co','(694) 683-4993','1987-09-05','Anesthesiologist','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sheila','Dominguez','sheila.dominguez@services.org','(271) 482-7798','1972-09-09','Software Engineer','Supervisor',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Alice','Takahashi','alice.takahashi@company.org','(875) 701-3434','1986-09-16','Epidemiologist','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gerald','Ota','gerald.ota@group.com','(529) 393-4912','2002-07-08','Occupational Therapist','Worker',true, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Nicholas','Meier','nicholas.meier@live.com','(879) 867-3492','1992-01-05','Jeweler','Manager',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Constance','Chevalier','constance.chevalier@services.org','(650) 302-9617','1987-01-24','UX Designer','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lydia','Brunetti','lydia.brunetti@mail.ru','(471) 546-7512','2012-02-28','Physicist','External',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Wendell','Medina','wendell.medina@web.de','(841) 935-8994','1998-01-20','Carpenter','Worker',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Xander','Gutierrez','xander.gutierrez@enterprise.com','(292) 644-2612','2010-12-28','Pilot','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Amanda','Arvidsson','amanda.arvidsson@yahoo.com','(532) 257-5806','1974-06-14','DevOps Engineer','Supervisor',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Justin','Sommer','justin.sommer@corp.biz','(384) 374-3868','1939-10-28','Surgeon','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sachiko','Reyes','sachiko.reyes@group.com','(797) 346-4804','1988-11-09','Risk Manager','Worker',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Anton','Park','anton.park@solutions.net','(494) 893-9955','1949-02-15','Epidemiologist','Manager',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Amanda','Wolf','amanda.wolf@msn.com','(906) 456-8484','1967-04-13','Landscape Architect','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Grace','Strauss','grace.strauss@hotmail.com','(788) 502-5837','1931-11-13','Art Director','External',true, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Elliott','Ullman','elliott.ullman@enterprise.com','(708) 493-4770','2006-06-08','Consultant','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Laura','Wallin','laura.wallin@proton.me','(842) 861-1645','1968-08-02','Translator','Manager',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Koji','Castro','koji.castro@group.com','(502) 534-7807','1951-04-05','Delivery Driver','Supervisor',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Eugene','Salminen','eugene.salminen@inbox.com','(479) 368-5210','1990-05-24','Biochemist','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Myrtle','Brunetti','myrtle.brunetti@mail.com','(972) 431-7511','2000-06-03','Optometrist','Worker',true, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Willard','De Luca','willard.deluca@yandex.ru','(577) 888-5295','2003-07-27','Psychiatrist','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rolf','Pedersen','rolf.pedersen@gmail.com','(834) 774-6374','2007-04-21','Plumber','Supervisor',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Minnie','Lindström','minnie.lindstrom@gmx.de','(864) 618-2911','1946-01-02','Environmental Engineer','External',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jun','Chambers','jun.chambers@icloud.com','(750) 338-7367','1987-06-22','Delivery Driver','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lydia','Nakano','lydia.nakano@office.io','(301) 701-7686','1964-01-23','Pediatrician','Manager',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marianne','Hansen','marianne.hansen@services.org','(571) 301-7018','1998-11-12','Electrician','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Natsuki','De Jong','natsuki.dejong@services.org','(665) 293-4475','2011-11-20','Marketing Manager','External',true, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Dale','Hayashi','dale.hayashi@mail.com','(778) 410-2124','1999-04-19','HR Manager','Worker',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Roland','Kruger','roland.kruger@global.net','(351) 810-1046','1964-03-05','Delivery Driver','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Matteo','Correia','matteo.correia@corp.biz','(226) 334-1243','1974-04-19','Oceanographer','Supervisor',true, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Tamara','Bergman','tamara.bergman@mail.com','(959) 631-9619','1943-12-03','Fashion Designer','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Eric','Romero','eric.romero@company.org','(311) 662-9254','1957-10-02','Crane Operator','Worker',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Daisuke','Bogdanov','daisuke.bogdanov@mail.ru','(611) 636-2768','1991-12-15','Welder','Manager',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Catherine','Unger','catherine.unger@mail.com','(267) 329-5505','2008-11-19','Court Reporter','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Grace','Teixeira','grace.teixeira@inbox.com','(501) 664-9282','2006-07-04','Police Officer','External',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Pilar','Novak','pilar.novak@yandex.ru','(433) 623-6553','1987-07-14','Photographer','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Blake','Zielinski','blake.zielinski@aol.com','(583) 356-8770','1937-02-27','Professor','Manager',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ivy','Martinez','ivy.martinez@tech.io','(333) 769-1982','2004-09-18','Physicist','Supervisor',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Julia','Lorenz','julia.lorenz@services.org','(881) 968-7929','2021-01-10','Aerospace Engineer','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sharon','Grasso','sharon.grasso@mail.com','(872) 693-4674','1942-06-28','Legal Secretary','Worker',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Victor','Suga','victor.suga@icloud.com','(639) 774-1430','2006-11-27','Social Media Manager','Manager',true, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ursula','Kallström','ursula.kallstrom@global.net','(516) 547-6751','1929-03-28','UX Designer','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jean','Bouchard','jean.bouchard@mail.com','(958) 848-1502','1940-12-17','HR Manager','External',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Maureen','Lehmann','maureen.lehmann@fastmail.com','(578) 519-6314','2001-10-03','Social Worker','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Elliott','Ekström','elliott.ekstrom@outlook.com','(478) 653-7947','1991-10-15','Respiratory Therapist','Manager',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sidney','Dahlberg','sidney.dahlberg@hotmail.com','(640) 313-5640','2015-11-19','Urban Planner','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Beatrice','Beck','beatrice.beck@icloud.com','(604) 813-1897','1929-04-10','Inventory Analyst','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Simon','Kaczmarek','simon.kaczmarek@web.de','(322) 207-9149','2024-07-06','Auditor','Worker',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rita','Rinaldi','rita.rinaldi@example.com','(884) 562-2180','1979-12-02','Insurance Broker','Manager',true, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Greta','Klimek','greta.klimek@company.org','(639) 787-7626','2019-11-14','Animator','Supervisor',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Carmen','Kowalski','carmen.kowalski@fastmail.com','(832) 671-6928','1940-07-28','Paramedic','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jean','Sakamoto','jean.sakamoto@outlook.com','(605) 517-6562','1957-06-25','QA Engineer','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Juliana','Salminen','juliana.salminen@inbox.com','(398) 994-6724','1973-12-27','DevOps Engineer','Manager',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Linda','Horvat','linda.horvat@zoho.com','(377) 816-3504','2012-02-06','Butcher','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marshall','Sandberg','marshall.sandberg@group.com','(778) 858-6295','2009-06-05','Stockbroker','External',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marcus','Weber','marcus.weber@gmx.de','(481) 805-1920','1974-09-03','Aerospace Engineer','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Deirdre','Bjork','deirdre.bjork@hotmail.com','(493) 278-2479','2007-10-17','Anesthesiologist','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Diego','Ono','diego.ono@group.com','(785) 867-4084','1970-10-16','Jeweler','Supervisor',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Felix','Ono','felix.ono@proton.me','(551) 931-2381','1993-11-06','Physical Therapist','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Mabel','Ohara','mabel.ohara@inbox.com','(735) 824-3600','1975-06-10','Pathologist','Worker',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Darren','Lundström','darren.lundstrom@work.net','(253) 846-6482','1937-06-04','Legal Secretary','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Wendy','Hofmann','wendy.hofmann@enterprise.com','(872) 817-3463','1971-02-19','UX Designer','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Bernard','Yoshida','bernard.yoshida@firm.co','(878) 601-3112','2005-12-03','Aerospace Engineer','External',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Colin','Delgado','colin.delgado@corp.biz','(919) 956-9624','1940-11-22','Athletic Trainer','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Bruno','Magnusson','bruno.magnusson@gmx.de','(384) 419-6598','1991-04-08','Product Manager','Manager',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Adriana','Chevalier','adriana.chevalier@inbox.com','(989) 752-9626','1933-11-11','Auditor','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lukas','Ferrari','lukas.ferrari@fastmail.com','(909) 989-3712','2021-08-02','Occupational Therapist','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rudolf','Oliveira','rudolf.oliveira@work.net','(491) 970-8355','1958-09-08','Aerospace Engineer','Worker',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Nancy','Garnier','nancy.garnier@hotmail.com','(894) 784-8218','1988-05-25','Surgeon','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kristin','Fernandez','kristin.fernandez@digital.co','(404) 819-3267','1961-01-21','Landscape Architect','Supervisor',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jennifer','Ruiz','jennifer.ruiz@services.org','(327) 491-2374','1949-05-15','HVAC Technician','External',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lynn','Castro','lynn.castro@group.com','(427) 661-6727','1932-07-02','Optometrist','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rosa','Metz','rosa.metz@outlook.com','(583) 429-1461','1969-02-27','Microbiologist','Manager',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Laura','Barbieri','laura.barbieri@gmx.de','(683) 912-3273','2019-08-15','Data Analyst','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Camille','Horvat','camille.horvat@zoho.com','(353) 761-9647','1983-02-25','Video Producer','External',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Katharina','Bellini','katharina.bellini@icloud.com','(629) 854-8489','1937-02-27','Florist','Worker',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Boris','Weber','boris.weber@inbox.com','(788) 447-3352','1966-07-01','Dermatologist','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kenneth','Fujita','kenneth.fujita@corp.biz','(884) 287-9576','1975-02-17','Ship Captain','Supervisor',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sharon','Shimizu','sharon.shimizu@gmail.com','(599) 681-1713','2010-07-12','Regional Director','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Eleanor','Borrelli','eleanor.borrelli@hotmail.com','(446) 950-2698','2003-12-25','Microbiologist','Worker',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Dylan','Schmidt','dylan.schmidt@web.de','(858) 379-8612','2018-08-21','Scrum Master','Manager',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Fernanda','Ozawa','fernanda.ozawa@yahoo.com','(500) 406-1717','1954-01-11','Aerospace Engineer','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Nicholas','Hofmann','nicholas.hofmann@yahoo.com','(971) 862-4131','1965-06-28','Architect','External',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Constance','Ito','constance.ito@proton.me','(576) 647-7553','2024-08-13','Biochemist','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ronald','Dahlgren','ronald.dahlgren@mail.ru','(576) 731-5369','1939-12-14','Teacher','Manager',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Miguel','Schmidt','miguel.schmidt@gmx.de','(528) 305-2311','1970-11-10','Industrial Engineer','Supervisor',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lewis','Fitzgerald','lewis.fitzgerald@firm.co','(654) 559-8325','1934-12-28','Dermatologist','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lucille','Ivanov','lucille.ivanov@office.io','(258) 276-7655','1975-09-26','Systems Analyst','Worker',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Liam','Unger','liam.unger@corp.biz','(648) 235-3068','1937-04-25','Oncologist','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Dana','Ueno','dana.ueno@mail.com','(895) 660-7077','1976-08-25','Chef','Supervisor',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Wade','Mancini','wade.mancini@live.com','(521) 865-5566','1960-02-01','Business Analyst','External',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Helen','Soares','helen.soares@proton.me','(468) 993-5264','2019-08-07','Video Producer','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rex','Gimenez','rex.gimenez@proton.me','(338) 275-8406','1951-12-15','Librarian','Manager',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Carl','Pettersson','carl.pettersson@hotmail.com','(926) 266-9882','1966-05-28','Systems Analyst','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Matteo','Magnusson','matteo.magnusson@inbox.com','(429) 324-4292','1946-04-26','Butcher','External',true, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Faith','Paredes','faith.paredes@tech.io','(764) 332-2412','1937-05-13','Industrial Designer','Worker',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Judy','Sundberg','judy.sundberg@outlook.com','(328) 524-2215','1986-08-22','Elevator Installer','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Milan','Dietrich','milan.dietrich@msn.com','(714) 256-3034','1995-03-10','Mobile Developer','Supervisor',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Reinhard','Lindgren','reinhard.lindgren@inbox.com','(490) 280-5105','1954-11-18','Art Director','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Arthur','Vargas','arthur.vargas@example.com','(295) 714-3762','2004-10-05','QA Engineer','Worker',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Darlene','Soderberg','darlene.soderberg@yahoo.com','(229) 283-1744','2011-10-09','Procurement Officer','Manager',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kenneth','Vega','kenneth.vega@office.io','(231) 709-9938','1966-11-10','Landscape Architect','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Joan','Kawaguchi','joan.kawaguchi@yandex.ru','(274) 905-1981','1949-08-14','Landscape Architect','External',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Dean','Ullman','dean.ullman@mail.com','(520) 935-6231','2022-06-13','Auditor','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Steve','Soares','steve.soares@proton.me','(526) 447-8642','1944-05-15','Territory Manager','Manager',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Emilia','Kaczmarek','emilia.kaczmarek@live.com','(830) 628-5067','1949-06-19','Geologist','Supervisor',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Manfred','Richter','manfred.richter@inbox.com','(678) 710-6055','1992-01-03','Dental Hygienist','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sachiko','Grigore','sachiko.grigore@company.org','(561) 249-1828','1965-08-20','Interior Designer','Worker',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Anita','Conti','anita.conti@msn.com','(337) 470-6992','1980-06-02','Chiropractor','Manager',true, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Nina','Magnusson','nina.magnusson@example.com','(495) 275-7329','1993-08-25','Court Reporter','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Karin','Delgado','karin.delgado@proton.me','(603) 582-6555','2000-06-25','UX Designer','External',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sheldon','Morin','sheldon.morin@inbox.com','(241) 246-1637','1946-12-11','Fashion Designer','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lorenzo','Ullman','lorenzo.ullman@solutions.net','(727) 343-6373','2007-06-06','Dental Hygienist','Manager',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Amanda','Tanaka','amanda.tanaka@web.de','(719) 721-9721','1991-12-19','Chemical Engineer','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Brigitte','Marchetti','brigitte.marchetti@web.de','(889) 312-7824','2003-05-26','Financial Analyst','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Tamara','Yoshida','tamara.yoshida@tech.io','(994) 792-4728','2021-01-19','Industrial Designer','Worker',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Glen','Engel','glen.engel@digital.co','(897) 448-1517','2002-12-04','Consultant','Manager',true, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Bonnie','Navarro','bonnie.navarro@mail.com','(622) 907-4340','1981-09-25','Interior Designer','Supervisor',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Felix','Dubois','felix.dubois@inbox.com','(412) 774-6325','2013-08-17','Radiologist','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Mathias','Pacheco','mathias.pacheco@group.com','(745) 550-9950','1974-11-25','SEO Specialist','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Nicole','Henriksson','nicole.henriksson@aol.com','(771) 505-4684','1967-05-23','Procurement Officer','Manager',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ray','Koch','ray.koch@mail.ru','(557) 773-5480','1965-02-19','Ship Captain','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Irving','Lindberg','irving.lindberg@global.net','(349) 497-1689','1965-12-03','Epidemiologist','External',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sofia','Petrov','sofia.petrov@zoho.com','(406) 751-5442','2000-12-09','Product Manager','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sabine','Hayashi','sabine.hayashi@yahoo.com','(885) 743-4697','2010-04-02','Pilot','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Nellie','Chevalier','nellie.chevalier@corp.biz','(989) 340-1084','1999-03-14','Fashion Designer','Supervisor',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Omar','Jansen','omar.jansen@web.de','(492) 861-1969','1940-11-19','Benefits Administrator','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Deirdre','Forsberg','deirdre.forsberg@msn.com','(380) 237-7504','1992-03-24','Animator','Worker',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Anton','Kawaguchi','anton.kawaguchi@company.org','(817) 309-6489','1965-08-21','Ship Captain','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kurt','Rizzo','kurt.rizzo@yandex.ru','(479) 397-2845','1971-03-24','Risk Manager','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Nadia','Alekseev','nadia.alekseev@enterprise.com','(545) 502-4164','1951-10-28','Podiatrist','External',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Steve','Krause','steve.krause@outlook.com','(610) 885-2562','1952-03-16','Oceanographer','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Andrei','Huang','andrei.huang@live.com','(441) 657-5374','1971-05-19','Archivist','Manager',true, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Elsa','Dahlgren','elsa.dahlgren@icloud.com','(263) 883-2936','1988-05-06','Podiatrist','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Bertha','Malmberg','bertha.malmberg@proton.me','(854) 502-7021','2007-04-08','Tax Consultant','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Maurice','Ullman','maurice.ullman@hotmail.com','(625) 918-9998','1989-09-26','HR Manager','Worker',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Hans','Sakurai','hans.sakurai@yandex.ru','(740) 920-6927','1938-10-04','Electrician','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Scott','Girard','scott.girard@company.org','(749) 353-3695','1970-09-15','Police Officer','Supervisor',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ray','Castro','ray.castro@solutions.net','(722) 656-1911','1987-03-17','Respiratory Therapist','External',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ethan','Smit','ethan.smit@yandex.ru','(888) 515-1356','1979-05-27','Software Engineer','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Georgia','Beck','georgia.beck@msn.com','(552) 917-2044','1998-01-03','Interior Designer','Manager',true, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Joyce','Fredriksson','joyce.fredriksson@global.net','(338) 984-7887','1976-07-15','Radiologist','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Yolanda','Dobrovsky','yolanda.dobrovsky@office.io','(556) 321-3924','1997-07-17','Actuary','External',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Raul','Abrahamsson','raul.abrahamsson@global.net','(223) 505-8585','2015-12-18','Athletic Trainer','Worker',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rita','Henriksson','rita.henriksson@yandex.ru','(554) 358-5516','1953-12-25','Firefighter','Manager',true, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kyle','Vargas','kyle.vargas@global.net','(216) 446-4376','1937-02-20','Mechanical Engineer','Supervisor',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Elise','Hedlund','elise.hedlund@enterprise.com','(245) 611-8191','1958-09-07','Dentist','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Yasuko','Hamada','yasuko.hamada@digital.co','(949) 789-6224','2002-10-25','Oceanographer','Worker',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Liam','Zanetti','liam.zanetti@inbox.com','(426) 623-5923','1964-01-18','Technical Writer','Manager',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lila','Sjöberg','lila.sjoberg@mail.ru','(248) 552-7244','1996-06-23','Respiratory Therapist','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Amelia','Matsuoka','amelia.matsuoka@fastmail.com','(972) 750-8758','1959-04-10','UX Designer','External',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ethan','Soares','ethan.soares@msn.com','(626) 770-9683','1946-07-08','Brand Manager','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gustav','Ono','gustav.ono@services.org','(579) 294-9775','2021-04-02','Social Media Manager','Manager',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Derek','Braun','derek.braun@zoho.com','(979) 801-4555','1990-04-28','Microbiologist','Supervisor',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Bianca','Grasso','bianca.grasso@group.com','(394) 959-2922','2024-08-08','Warehouse Manager','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sabine','Schulz','sabine.schulz@web.de','(994) 489-7236','1988-09-21','Cardiologist','Worker',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Elsa','Romero','elsa.romero@solutions.net','(709) 677-2615','2021-08-25','Meteorologist','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Frances','Klimek','frances.klimek@msn.com','(246) 776-4625','2023-03-01','Content Strategist','Supervisor',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kirk','Kato','kirk.kato@mail.com','(400) 537-4768','1977-10-27','Sales Engineer','External',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Darlene','Horvat','darlene.horvat@global.net','(700) 940-9037','1987-03-24','Dermatologist','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ray','Fuentes','ray.fuentes@group.com','(755) 857-1962','1996-01-27','Chef','Manager',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Elise','Aguilar','elise.aguilar@msn.com','(340) 845-4791','1937-12-05','Graphic Designer','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Max','Matsumoto','max.matsumoto@yahoo.com','(832) 853-8916','2013-08-01','Data Analyst','External',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Justin','Alberti','justin.alberti@gmail.com','(742) 939-5501','1997-05-01','Jeweler','Worker',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Loretta','Franke','loretta.franke@proton.me','(298) 736-3439','1959-04-20','Heavy Equipment Operator','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Edward','Ichikawa','edward.ichikawa@tech.io','(606) 280-7112','1980-08-19','Sales Engineer','Supervisor',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Remi','Kawamoto','remi.kawamoto@corp.biz','(282) 869-1519','1940-07-13','Radiologist','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Esperanza','Wiklund','esperanza.wiklund@gmail.com','(919) 375-2354','1992-07-21','Physicist','Worker',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ivan','Salazar','ivan.salazar@group.com','(243) 435-4463','2017-10-16','Public Relations Officer','Manager',true, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Giselle','Bergström','giselle.bergstrom@group.com','(487) 756-1539','1951-06-01','Procurement Officer','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Janet','Bukowski','janet.bukowski@gmx.de','(366) 777-4939','2001-07-22','Delivery Driver','External',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lena','Nylander','lena.nylander@enterprise.com','(280) 712-6666','1935-02-14','Benefits Administrator','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Dean','Ueno','dean.ueno@global.net','(828) 809-7499','1970-01-21','Public Relations Officer','Manager',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marvin','Quintero','marvin.quintero@icloud.com','(564) 766-7150','1984-03-22','Interpreter','Supervisor',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Hector','Vega','hector.vega@gmx.de','(452) 930-2204','1939-05-05','Surgeon','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lukas','Miyamoto','lukas.miyamoto@web.de','(569) 309-2499','1929-05-15','Neurologist','Worker',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Javier','Dijkstra','javier.dijkstra@outlook.com','(391) 641-8353','2000-09-17','Speech Therapist','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Hiroshi','Lorenz','hiroshi.lorenz@example.com','(295) 811-6315','1978-01-10','Occupational Therapist','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Heather','Smit','heather.smit@solutions.net','(448) 785-9537','1950-11-13','QA Engineer','External',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Andrew','Inoue','andrew.inoue@mail.ru','(349) 264-3739','1984-05-14','Chemical Engineer','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gordon','Lundqvist','gordon.lundqvist@aol.com','(452) 938-9123','2005-10-07','Risk Manager','Manager',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Aurora','Aguilar','aurora.aguilar@live.com','(540) 835-7224','1971-08-11','Real Estate Agent','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lars','Kawamoto','lars.kawamoto@web.de','(817) 911-4290','1990-06-06','Optometrist','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Yuki','Ahlström','yuki.ahlstrom@office.io','(702) 789-4971','1970-07-09','Dental Hygienist','Worker',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Omar','Tanaka','omar.tanaka@example.com','(384) 898-1440','2022-08-23','Procurement Officer','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Yuki','Dahlgren','yuki.dahlgren@outlook.com','(618) 889-9180','1946-11-10','Account Executive','Supervisor',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lukas','Nielsen','lukas.nielsen@tech.io','(586) 275-8357','2005-08-19','Chiropractor','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kristin','Schiller','kristin.schiller@yahoo.com','(568) 918-9796','2005-11-03','Paramedic','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Edwin','Fitzgerald','edwin.fitzgerald@office.io','(827) 245-7547','1971-07-04','Graphic Designer','Manager',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ramona','Romano','ramona.romano@enterprise.com','(731) 771-4621','1986-06-13','Compliance Officer','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Russell','Espinoza','russell.espinoza@hotmail.com','(225) 694-2712','1966-07-03','Police Officer','External',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Leonie','Lindqvist','leonie.lindqvist@gmx.de','(551) 666-4389','1995-08-12','Fashion Designer','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Matthew','Koizumi','matthew.koizumi@outlook.com','(507) 245-2885','1931-06-21','Paramedic','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Maria','Hayashi','maria.hayashi@inbox.com','(378) 765-3623','1971-09-14','Compliance Officer','Supervisor',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jill','Watanabe','jill.watanabe@fastmail.com','(390) 855-8080','1979-01-24','Supply Chain Manager','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lois','Miyamoto','lois.miyamoto@gmail.com','(921) 419-4371','1964-12-26','Plumber','Worker',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Willard','Fujita','willard.fujita@hotmail.com','(533) 401-8496','1943-05-22','Baker','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Blake','Teixeira','blake.teixeira@live.com','(825) 601-2871','1973-06-28','Risk Manager','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Alfred','Vargas','alfred.vargas@company.org','(286) 888-3194','1969-02-08','Industrial Engineer','External',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Franklin','Ahlström','franklin.ahlstrom@mail.com','(723) 597-7852','2005-03-19','Anesthesiologist','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Randall','Westerberg','randall.westerberg@example.com','(910) 860-3838','2000-03-16','Video Producer','Manager',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Brent','Ono','brent.ono@work.net','(254) 567-1157','1991-03-07','Anesthesiologist','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Scott','Yang','scott.yang@mail.ru','(618) 901-9056','1982-12-27','Investment Banker','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Haruki','Sommer','haruki.sommer@gmail.com','(979) 425-5785','1933-05-08','Taxi Driver','Worker',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Melinda','Sommer','melinda.sommer@enterprise.com','(991) 984-9115','1999-09-04','Archivist','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Evan','Schaefer','evan.schaefer@digital.co','(974) 242-8231','1998-04-14','Flight Attendant','Supervisor',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sascha','Kawaguchi','sascha.kawaguchi@services.org','(233) 660-5305','1973-02-15','Lawyer','External',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ruben','Gorbachev','ruben.gorbachev@tech.io','(955) 802-6744','2019-10-21','Massage Therapist','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Leandro','Gomez','leandro.gomez@digital.co','(411) 260-6747','1997-05-20','Taxi Driver','Manager',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Yuri','Kaczmarek','yuri.kaczmarek@company.org','(473) 726-2560','1946-07-02','Art Director','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kerstin','Kallström','kerstin.kallstrom@services.org','(335) 455-3396','2020-06-27','Territory Manager','External',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ian','Porto','ian.porto@mail.com','(791) 847-5402','2009-07-13','Bank Teller','Worker',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ingrid','Morita','ingrid.morita@inbox.com','(967) 484-7046','1987-08-11','Translator','Manager',true, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ingrid','Ozawa','ingrid.ozawa@office.io','(880) 914-6869','1937-09-13','HR Manager','Supervisor',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Penelope','Ramos','penelope.ramos@aol.com','(530) 490-6533','1999-10-05','Judge','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Denise','Holmgren','denise.holmgren@global.net','(249) 247-2631','2009-08-01','Accountant','Worker',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Maiko','Okada','maiko.okada@yandex.ru','(200) 638-4314','2017-03-21','Environmental Engineer','Manager',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Valentina','Cavalcanti','valentina.cavalcanti@office.io','(569) 456-2350','1976-11-21','Mobile Developer','Supervisor',true, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Axel','Lindström','axel.lindstrom@global.net','(439) 639-2494','2019-02-01','Inventory Analyst','External',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Konrad','Tanaka','konrad.tanaka@icloud.com','(731) 896-8291','1930-01-23','Geneticist','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lawrence','Ahlström','lawrence.ahlstrom@mail.com','(689) 272-4751','1978-02-24','Flight Attendant','Manager',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Evelyn','Kawamoto','evelyn.kawamoto@mail.com','(591) 992-3181','2011-11-05','Carpenter','Supervisor',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Anita','Vacca','anita.vacca@office.io','(368) 650-6753','2021-04-21','Database Administrator','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Margarita','Groen','margarita.groen@outlook.com','(302) 343-3017','2004-12-13','Toxicologist','Worker',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Brent','Dupont','brent.dupont@icloud.com','(483) 860-2380','1960-09-20','Copywriter','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Chiara','Zaccaria','chiara.zaccaria@solutions.net','(508) 410-9482','2006-09-07','Dental Hygienist','Supervisor',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Erik','Hasegawa','erik.hasegawa@mail.ru','(595) 315-4949','1992-11-20','Welder','External',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Astrid','Lundqvist','astrid.lundqvist@group.com','(524) 335-7337','2001-07-12','Ship Captain','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Neal','Braun','neal.braun@gmail.com','(801) 269-1225','1962-04-02','Electrician','Manager',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Janet','Rodrigues','janet.rodrigues@gmx.de','(843) 929-9209','1982-07-23','Chiropractor','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Willard','Sato','willard.sato@work.net','(356) 484-2369','1968-02-17','Warehouse Manager','External',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Madeleine','Sasaki','madeleine.sasaki@web.de','(600) 800-2083','1968-12-14','Account Executive','Worker',true, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Heidi','Nyberg','heidi.nyberg@proton.me','(664) 826-1901','1968-11-24','Technical Writer','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Laura','Kallström','laura.kallstrom@gmail.com','(367) 708-6680','1995-09-26','Content Strategist','Supervisor',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kerstin','Inoue','kerstin.inoue@enterprise.com','(320) 989-1480','1971-07-09','Heavy Equipment Operator','External',true, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gordon','Reyes','gordon.reyes@yandex.ru','(723) 568-1908','1992-10-06','Pediatrician','Worker',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jennifer','Suga','jennifer.suga@corp.biz','(940) 318-4742','2023-09-01','Veterinarian','Manager',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Astrid','Hedlund','astrid.hedlund@yahoo.com','(683) 572-7274','1948-03-28','Pharmacist','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kyle','Gupta','kyle.gupta@web.de','(454) 626-6241','1963-02-19','Psychiatrist','External',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Emma','Franke','emma.franke@icloud.com','(728) 247-7568','1937-08-28','Copywriter','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Bertha','Krause','bertha.krause@outlook.com','(766) 667-1130','1976-04-10','Judge','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Samira','Palmieri','samira.palmieri@hotmail.com','(805) 705-4201','2022-09-25','Sales Engineer','Supervisor',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Judy','Aoki','judy.aoki@icloud.com','(754) 554-1157','1971-01-25','Radiologist','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Barnaby','Christensen','barnaby.christensen@zoho.com','(742) 443-7878','1991-01-05','Creative Director','Worker',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Robin','Saarinen','robin.saarinen@msn.com','(917) 581-8511','2024-02-19','Photographer','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Irma','Brunetti','irma.brunetti@company.org','(781) 263-8126','2013-03-08','Animator','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Brent','Molnar','brent.molnar@firm.co','(953) 534-6211','1986-05-08','Chef','External',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lars','Takagi','lars.takagi@proton.me','(359) 308-3693','1986-08-11','Speech Therapist','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Elizabeth','Gonzalez','elizabeth.gonzalez@yandex.ru','(515) 674-5341','1944-02-06','Environmental Engineer','Manager',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Diana','Grigore','diana.grigore@digital.co','(535) 351-2494','2020-04-12','Optometrist','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Amanda','Huang','amanda.huang@digital.co','(378) 231-7625','1986-09-24','Court Reporter','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Mildred','Choi','mildred.choi@tech.io','(343) 324-1195','1936-04-05','Supply Chain Manager','Worker',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Frank','Sjögren','frank.sjogren@office.io','(860) 286-5240','1938-01-03','Supply Chain Manager','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marian','Delgado','marian.delgado@outlook.com','(539) 325-1699','1988-01-06','Archivist','Supervisor',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Irving','Reyes','irving.reyes@gmail.com','(591) 899-7990','1951-06-07','Business Analyst','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marie','Eriksson','marie.eriksson@yahoo.com','(828) 834-5026','2011-05-16','Occupational Therapist','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Owen','Bogdanov','owen.bogdanov@outlook.com','(486) 592-3248','1982-04-21','Heavy Equipment Operator','Manager',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Camille','Meier','camille.meier@tech.io','(930) 567-8859','1998-08-12','Judge','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Herbert','Ishikawa','herbert.ishikawa@fastmail.com','(226) 526-4588','1932-05-02','Interior Designer','External',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Roland','Fassbinder','roland.fassbinder@proton.me','(453) 872-4951','1963-09-27','Dentist','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rainer','Sundberg','rainer.sundberg@services.org','(597) 563-3846','1951-04-19','Meteorologist','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ellen','Tamura','ellen.tamura@gmail.com','(920) 917-6761','2001-10-05','Judge','Supervisor',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rick','Schaefer','rick.schaefer@gmx.de','(379) 702-1621','1940-01-08','Recruiter','External',true, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Orville','Aaronsen','orville.aaronsen@web.de','(828) 406-3137','1972-12-06','Oceanographer','Worker',true, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lisette','Takahashi','lisette.takahashi@firm.co','(345) 992-2817','1996-06-03','Psychiatrist','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jack','Takahashi','jack.takahashi@proton.me','(544) 509-6285','1946-03-24','Insurance Broker','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Randall','Yamamoto','randall.yamamoto@web.de','(378) 924-6846','1957-11-19','Technical Writer','External',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Zelda','Delgado','zelda.delgado@fastmail.com','(946) 201-7415','2001-01-06','Meteorologist','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ralph','Wolf','ralph.wolf@company.org','(306) 708-3304','1971-12-03','Sales Representative','Manager',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Carl','Fitzgerald','carl.fitzgerald@office.io','(290) 925-6500','1986-01-09','Procurement Officer','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Frederick','Lombardi','frederick.lombardi@aol.com','(310) 937-1020','1935-07-15','Dietitian','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kate','Ramirez','kate.ramirez@solutions.net','(587) 559-9946','1977-02-27','Industrial Designer','Worker',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Reinhard','Ferrari','reinhard.ferrari@yandex.ru','(275) 234-5831','1931-06-09','Flight Attendant','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Martin','Matsuoka','martin.matsuoka@fastmail.com','(949) 276-9962','1940-06-20','Landscape Architect','Supervisor',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lori','Yang','lori.yang@fastmail.com','(821) 644-3573','1935-02-11','Warehouse Manager','External',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Judy','Wickström','judy.wickstrom@example.com','(939) 947-9849','1962-11-10','Chemical Engineer','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Elliott','Molnar','elliott.molnar@company.org','(762) 702-3516','1935-06-01','Massage Therapist','Manager',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Pam','Gimenez','pam.gimenez@proton.me','(226) 411-3798','2010-05-03','Fashion Designer','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Beatrice','Morales','beatrice.morales@mail.ru','(700) 876-5341','1940-11-18','Pathologist','External',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Grace','Marini','grace.marini@fastmail.com','(656) 245-5313','1985-08-09','Training Specialist','Worker',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Felix','Espinoza','felix.espinoza@global.net','(913) 883-2584','1939-11-12','Delivery Driver','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Renata','Shimizu','renata.shimizu@yahoo.com','(596) 735-7858','1997-11-28','Fashion Designer','Supervisor',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rosa','Persson','rosa.persson@gmx.de','(280) 604-1568','1993-10-17','Archivist','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Linus','De Groot','linus.degroot@global.net','(659) 377-3738','1956-04-05','Physical Therapist','Worker',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lucille','Girard','lucille.girard@digital.co','(842) 351-5225','1969-12-26','Carpenter','Manager',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jacob','Schulz','jacob.schulz@web.de','(482) 732-8506','1930-12-20','Crane Operator','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Julian','Nakano','julian.nakano@mail.com','(351) 780-2641','1942-10-25','Pilot','External',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Wilbur','Lindberg','wilbur.lindberg@solutions.net','(620) 470-7275','2012-08-19','Fashion Designer','Worker',true, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Vanessa','Morita','vanessa.morita@mail.com','(833) 823-7581','1933-07-11','Sales Representative','Manager',true, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Norman','Inoue','norman.inoue@solutions.net','(581) 220-6535','1967-05-09','Baker','Supervisor',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jakob','Gutierrez','jakob.gutierrez@mail.com','(507) 961-8259','1970-05-24','Respiratory Therapist','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Hiroshi','Fukuda','hiroshi.fukuda@yandex.ru','(416) 616-8937','1995-06-27','Dentist','Worker',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Malcolm','Borghi','malcolm.borghi@gmx.de','(926) 718-7609','1946-09-19','Research Scientist','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ophelia','Bjork','ophelia.bjork@icloud.com','(233) 667-1828','1975-12-07','Art Director','Supervisor',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Minnie','Rizzo','minnie.rizzo@live.com','(850) 326-1500','1959-06-16','Loan Officer','External',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Noah','Takahashi','noah.takahashi@example.com','(558) 552-3679','1962-12-27','Journalist','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Harvey','Bengtsson','harvey.bengtsson@fastmail.com','(785) 998-4511','1957-11-08','Warehouse Manager','Manager',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Judy','Romero','judy.romero@gmail.com','(999) 985-1145','1989-03-21','Technical Writer','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Anita','Gupta','anita.gupta@aol.com','(822) 512-5511','1983-07-28','Toxicologist','External',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rafael','Park','rafael.park@gmx.de','(893) 733-7506','2003-02-01','Auto Mechanic','Worker',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gail','Soares','gail.soares@office.io','(808) 823-5631','1967-11-04','Landscape Architect','Manager',true, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Vera','Wolf','vera.wolf@web.de','(483) 467-5895','1953-03-17','Account Executive','Supervisor',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jessica','Zanetti','jessica.zanetti@web.de','(897) 343-1417','2012-08-10','Content Strategist','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jill','Mikami','jill.mikami@enterprise.com','(236) 797-4111','1972-12-23','Recruiter','Worker',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Olive','Hellström','olive.hellstrom@hotmail.com','(719) 507-3785','2013-09-06','Biomedical Engineer','Manager',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kira','Hoshino','kira.hoshino@enterprise.com','(772) 981-3999','2016-06-21','Librarian','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Raul','Kimura','raul.kimura@msn.com','(539) 580-5269','2003-05-15','Lawyer','External',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gemma','Pedersen','gemma.pedersen@solutions.net','(399) 712-2963','2016-07-17','Chemical Engineer','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lucia','Dubois','lucia.dubois@zoho.com','(550) 619-8496','1947-06-28','Scrum Master','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Randy','Kurosawa','randy.kurosawa@office.io','(381) 520-1950','1929-08-09','Procurement Officer','Supervisor',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Markus','Suzuki','markus.suzuki@global.net','(362) 701-2442','1945-10-14','Massage Therapist','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Opal','Mendoza','opal.mendoza@gmail.com','(238) 746-4267','2022-06-01','Oceanographer','Worker',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Wallace','Gallo','wallace.gallo@gmail.com','(892) 204-5076','1957-12-12','Aerospace Engineer','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gregory','Rios','gregory.rios@company.org','(513) 371-2069','1934-05-10','Credit Analyst','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Tony','Larsson','tony.larsson@msn.com','(903) 337-6615','1991-06-25','Consultant','External',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jessica','Amato','jessica.amato@icloud.com','(429) 944-3149','1956-12-01','Tailor','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Evan','Yamashita','evan.yamashita@tech.io','(238) 584-5190','1997-10-02','Architect','Manager',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Carlos','Bellini','carlos.bellini@firm.co','(318) 626-8279','1977-02-18','Regional Director','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Luis','Gomez','luis.gomez@firm.co','(902) 845-1152','1967-07-22','Pilot','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Tomas','Vogt','tomas.vogt@work.net','(917) 340-7862','1942-09-24','Lawyer','Worker',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Johan','Reyes','johan.reyes@zoho.com','(823) 404-5308','1995-04-12','Speech Therapist','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Derek','Schneider','derek.schneider@mail.ru','(412) 904-8875','1971-04-01','Civil Engineer','Supervisor',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Joseph','Suga','joseph.suga@corp.biz','(705) 352-2475','1994-02-24','Pilot','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Robert','Ota','robert.ota@gmx.de','(470) 675-1820','1941-03-28','Physical Therapist','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Elsa','Hedberg','elsa.hedberg@web.de','(636) 956-2898','1941-01-01','Product Manager','Manager',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Martin','Kruger','martin.kruger@hotmail.com','(648) 836-5395','2022-02-12','Geneticist','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jean','Moreau','jean.moreau@yandex.ru','(478) 594-8835','1982-11-26','Mobile Developer','External',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Eunice','Fassbinder','eunice.fassbinder@proton.me','(626) 804-8908','2001-11-15','Scrum Master','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ellen','Valencia','ellen.valencia@gmail.com','(900) 944-3140','1990-08-04','Occupational Therapist','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Fernanda','Huang','fernanda.huang@office.io','(521) 212-9598','2024-10-24','Judge','Supervisor',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Darren','Russo','darren.russo@inbox.com','(904) 917-2560','1984-11-24','Territory Manager','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Harriet','Eriksson','harriet.eriksson@digital.co','(771) 827-1894','1930-11-06','Tailor','Worker',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ron','Fischer','ron.fischer@outlook.com','(969) 703-6253','1959-06-09','Architect','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gilbert','Morita','gilbert.morita@digital.co','(440) 280-8521','1985-10-15','Librarian','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marilyn','Knudsen','marilyn.knudsen@proton.me','(709) 963-1291','1942-07-14','Pharmacist','External',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Akira','Castro','akira.castro@tech.io','(818) 833-5990','1994-09-07','Credit Analyst','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ernest','Berglund','ernest.berglund@digital.co','(428) 665-6439','2000-10-20','Fashion Designer','Manager',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ernest','Ortega','ernest.ortega@proton.me','(299) 977-4633','1929-06-12','Animator','Supervisor',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Franklin','Kallström','franklin.kallstrom@proton.me','(246) 368-9067','1946-12-24','Speech Therapist','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Noel','Fukuda','noel.fukuda@proton.me','(602) 420-8488','1953-12-11','Paramedic','Worker',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Elena','Weiss','elena.weiss@digital.co','(888) 802-3018','1986-08-22','Tailor','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ross','Adachi','ross.adachi@inbox.com','(953) 249-8091','2003-08-17','Project Manager','Supervisor',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Mathias','Delgado','mathias.delgado@proton.me','(596) 873-6273','1993-07-14','Territory Manager','External',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Denise','Karlsson','denise.karlsson@yandex.ru','(336) 341-7762','2006-12-24','HVAC Technician','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Bonnie','Shimizu','bonnie.shimizu@office.io','(422) 405-4435','2008-12-10','Epidemiologist','Manager',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Konrad','Yamamoto','konrad.yamamoto@fastmail.com','(715) 755-6281','2019-02-25','Dermatologist','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kirk','Ekström','kirk.ekstrom@enterprise.com','(746) 492-7920','1930-09-04','Financial Analyst','External',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Enrique','Hellström','enrique.hellstrom@yahoo.com','(404) 473-3636','1965-11-09','DevOps Engineer','Worker',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Adriana','Goldberg','adriana.goldberg@global.net','(754) 233-6876','1986-02-20','Mediator','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Herman','Hartmann','herman.hartmann@inbox.com','(912) 494-1769','1977-07-14','Geologist','Supervisor',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Erik','Alberti','erik.alberti@enterprise.com','(457) 407-8259','1957-11-23','Pediatrician','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Noriko','Garnier','noriko.garnier@gmx.de','(659) 381-2220','1952-03-24','HVAC Technician','Worker',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Diana','Noda','diana.noda@aol.com','(769) 470-3131','1949-10-28','Brand Manager','Manager',true, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Molly','Falk','molly.falk@yahoo.com','(357) 530-1833','2009-10-27','Environmental Engineer','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Elizabeth','Braun','elizabeth.braun@tech.io','(924) 525-9608','1957-03-17','Carpenter','External',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Manfred','Nakano','manfred.nakano@example.com','(749) 613-2506','1973-04-07','Physicist','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Zara','Groen','zara.groen@global.net','(833) 743-8780','2000-11-01','Police Officer','Manager',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marie','Haugen','marie.haugen@solutions.net','(857) 828-4994','1934-11-11','Surgeon','Supervisor',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Juliana','Metz','juliana.metz@aol.com','(753) 941-5633','1932-09-27','Psychiatrist','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sheila','Olofsson','sheila.olofsson@mail.ru','(244) 503-4154','1970-09-03','Photographer','Worker',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'William','Santos','william.santos@gmail.com','(841) 267-4453','2014-11-25','Inventory Analyst','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Leo','Christensen','leo.christensen@zoho.com','(750) 919-8130','2011-02-24','Network Engineer','Supervisor',true, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Constance','Barbieri','constance.barbieri@outlook.com','(275) 255-3916','1961-09-03','Historian','External',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sonia','Murakami','sonia.murakami@live.com','(661) 845-7626','1984-06-01','Pathologist','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Wesley','Aguilar','wesley.aguilar@office.io','(937) 833-2036','2024-10-02','Welder','Manager',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sally','Colombo','sally.colombo@gmx.de','(902) 508-2417','1965-08-13','Optometrist','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Daisuke','Pereira','daisuke.pereira@fastmail.com','(746) 425-3234','2024-07-26','Ship Captain','External',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Liesel','Kawaguchi','liesel.kawaguchi@corp.biz','(946) 863-7113','1930-09-28','Legal Secretary','Worker',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Diego','Adachi','diego.adachi@company.org','(810) 603-9800','1999-02-10','Procurement Officer','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Desmond','Grasso','desmond.grasso@msn.com','(861) 724-3333','1949-03-08','Regional Director','Supervisor',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Mikael','Hellström','mikael.hellstrom@tech.io','(780) 255-9992','1988-11-18','Welder','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Francesca','Hidalgo','francesca.hidalgo@proton.me','(402) 943-8982','1971-06-05','Sales Representative','Worker',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gabriel','Garnier','gabriel.garnier@web.de','(697) 661-6379','2007-11-10','Interpreter','Manager',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Esther','Knudsen','esther.knudsen@msn.com','(372) 204-6131','1960-04-23','Insurance Broker','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Elsa','Dobrovsky','elsa.dobrovsky@corp.biz','(950) 539-8863','1988-08-12','Industrial Engineer','External',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jorge','Forsberg','jorge.forsberg@office.io','(821) 283-5597','1946-09-07','SEO Specialist','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gordon','Brunetti','gordon.brunetti@solutions.net','(219) 719-1511','2003-10-13','Inventory Analyst','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Stella','Schiller','stella.schiller@solutions.net','(752) 683-3435','1975-07-08','Animator','Supervisor',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ryan','Romano','ryan.romano@outlook.com','(606) 572-9227','1930-11-08','Mobile Developer','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lena','Olofsson','lena.olofsson@fastmail.com','(383) 779-3395','2023-12-16','Cardiologist','Worker',true, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Randy','Hagiwara','randy.hagiwara@outlook.com','(470) 578-4834','1934-11-07','Elevator Installer','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Emily','Mikami','emily.mikami@mail.ru','(665) 247-1653','2012-06-04','Crane Operator','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Valentina','Huber','valentina.huber@company.org','(757) 783-3848','1977-11-13','Oncologist','External',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Greta','Ruiz','greta.ruiz@aol.com','(585) 428-9460','1980-06-27','Epidemiologist','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Paula','Ueno','paula.ueno@gmail.com','(713) 342-8207','1950-04-03','HVAC Technician','Manager',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Penelope','Eriksson','penelope.eriksson@fastmail.com','(361) 570-2938','2013-04-14','Physicist','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Paula','Ekström','paula.ekstrom@mail.ru','(690) 415-3641','2011-07-01','Sales Engineer','External',true, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Manuel','Dobrovsky','manuel.dobrovsky@office.io','(724) 240-3406','1936-03-09','Scrum Master','Worker',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Joan','Torres','joan.torres@company.org','(852) 219-5644','1939-04-15','Interior Designer','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Martin','Gruber','martin.gruber@digital.co','(620) 815-3338','2003-03-20','Auto Mechanic','Supervisor',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Dennis','Ortiz','dennis.ortiz@work.net','(804) 270-4765','1977-07-05','Paramedic','External',true, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Todd','Rizzo','todd.rizzo@corp.biz','(629) 353-2577','1951-08-20','Pharmacist','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Warren','Rios','warren.rios@global.net','(320) 295-8901','2013-03-20','Delivery Driver','Manager',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lori','Saito','lori.saito@msn.com','(579) 244-9680','1983-04-26','Landscape Architect','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Grace','Lombardi','grace.lombardi@company.org','(959) 979-2600','1983-03-09','Industrial Designer','External',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Hassan','Johansson','hassan.johansson@work.net','(756) 618-5223','1953-01-23','Data Analyst','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kai','Saarinen','kai.saarinen@gmail.com','(584) 870-4365','2017-06-14','Neurologist','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lewis','Yamashita','lewis.yamashita@company.org','(459) 467-9783','1983-10-12','Art Director','Supervisor',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jacob','Goldberg','jacob.goldberg@msn.com','(765) 770-8904','1951-06-18','Legal Secretary','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Barnaby','Suzuki','barnaby.suzuki@hotmail.com','(992) 922-7522','2023-03-28','Lawyer','Worker',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marilyn','Lindström','marilyn.lindstrom@fastmail.com','(302) 419-9328','1980-06-26','Court Reporter','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Emma','Fernandez','emma.fernandez@live.com','(851) 205-2492','1947-08-20','Insurance Broker','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sylvia','Guerra','sylvia.guerra@hotmail.com','(281) 823-1618','2021-07-13','Crane Operator','External',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Estelle','Forsberg','estelle.forsberg@office.io','(706) 649-1175','1954-11-26','Elevator Installer','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Daniela','Torres','daniela.torres@inbox.com','(728) 915-4795','2007-03-22','Pharmacist','Manager',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Akira','Farias','akira.farias@outlook.com','(482) 998-7544','1974-11-13','Podiatrist','Supervisor',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Suzanne','Alekseev','suzanne.alekseev@enterprise.com','(920) 270-2477','1999-05-24','Mediator','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Dorothy','Lindgren','dorothy.lindgren@digital.co','(483) 431-4187','1987-07-19','Data Analyst','Worker',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Joel','Rodrigues','joel.rodrigues@proton.me','(772) 274-9243','1966-06-04','HVAC Technician','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'William','Sundberg','william.sundberg@aol.com','(910) 653-7178','2001-08-25','Sales Engineer','Supervisor',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Melissa','Sandberg','melissa.sandberg@yandex.ru','(800) 228-8896','1943-05-03','Surgeon','External',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rajesh','Hedberg','rajesh.hedberg@firm.co','(435) 523-7757','1974-09-18','Graphic Designer','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sylvia','Hernandez','sylvia.hernandez@gmx.de','(295) 608-6603','1938-09-06','Fashion Designer','Manager',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rafael','Suga','rafael.suga@aol.com','(387) 964-4115','1992-12-07','Sales Representative','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Tamara','Gomez','tamara.gomez@icloud.com','(407) 455-6833','1948-02-04','Teacher','External',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rick','Vargas','rick.vargas@gmail.com','(982) 754-1692','1990-06-20','Geologist','Worker',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Valerie','Quintero','valerie.quintero@fastmail.com','(982) 723-5591','1979-04-25','Historian','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Troy','Nielsen','troy.nielsen@mail.ru','(753) 233-9232','1973-07-28','Technical Writer','Supervisor',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kasper','Engström','kasper.engstrom@inbox.com','(671) 523-1137','1930-11-07','Surgeon','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Christine','Magnusson','christine.magnusson@work.net','(465) 391-9987','1962-04-09','Interior Designer','Worker',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Denise','Mancini','denise.mancini@fastmail.com','(710) 634-4449','1982-12-25','Psychiatrist','Manager',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jean','Jankowski','jean.jankowski@yandex.ru','(384) 785-3148','2002-11-08','Pilot','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rosa','Sjöberg','rosa.sjoberg@msn.com','(590) 400-3389','2023-03-16','Graphic Designer','External',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Roy','Dobrovsky','roy.dobrovsky@solutions.net','(845) 729-9748','2021-06-26','Urban Planner','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Elias','Morales','elias.morales@proton.me','(907) 367-1983','1956-05-16','Photographer','Manager',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Dallas','Huang','dallas.huang@hotmail.com','(568) 773-5222','1973-01-14','Accountant','Supervisor',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Oliver','Suzuki','oliver.suzuki@company.org','(865) 864-9821','1951-05-12','Astronomer','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Randy','Olofsson','randy.olofsson@solutions.net','(280) 590-5694','1988-11-05','Mobile Developer','Worker',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Darlene','Neumann','darlene.neumann@office.io','(827) 785-7631','1938-02-06','Geneticist','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Bruce','Yang','bruce.yang@gmx.de','(927) 473-7479','1963-08-25','Neurologist','Supervisor',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Thelma','Ono','thelma.ono@msn.com','(371) 388-1378','1945-12-08','Regional Director','External',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Hana','Gorbachev','hana.gorbachev@fastmail.com','(606) 305-2565','1937-08-18','Social Worker','Worker',true, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jacob','Sakamoto','jacob.sakamoto@global.net','(285) 306-5300','2008-03-03','Pathologist','Manager',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sascha','Johansson','sascha.johansson@yandex.ru','(841) 329-3150','1996-03-01','Mechanical Engineer','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Christine','Persson','christine.persson@yandex.ru','(753) 478-9987','1985-03-23','Delivery Driver','External',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Maxine','Weber','maxine.weber@enterprise.com','(851) 777-8126','1996-11-21','Bus Driver','Worker',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Donna','Pichler','donna.pichler@example.com','(432) 291-8239','1968-06-14','Content Strategist','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ariadne','Aaronsen','ariadne.aaronsen@inbox.com','(976) 339-6634','1965-08-18','Graphic Designer','Supervisor',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rhonda','Petersen','rhonda.petersen@gmx.de','(209) 984-8052','1966-10-08','Data Analyst','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Nathan','Nakagawa','nathan.nakagawa@solutions.net','(774) 647-7467','1960-03-23','Pathologist','Worker',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rajesh','Huber','rajesh.huber@outlook.com','(632) 840-4924','1995-10-26','Public Relations Officer','Manager',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Warren','Inoue','warren.inoue@msn.com','(392) 270-3988','1946-05-04','Credit Analyst','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ulrich','Lindström','ulrich.lindstrom@work.net','(703) 392-6253','1931-03-02','Bus Driver','External',true, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Javier','Janssen','javier.janssen@aol.com','(328) 932-8183','2022-01-08','Journalist','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rita','Groen','rita.groen@web.de','(630) 519-9165','1976-08-23','Mechanical Engineer','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Linda','Bertrand','linda.bertrand@aol.com','(994) 601-2169','1998-08-06','Operations Manager','Supervisor',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Selma','Meier','selma.meier@digital.co','(212) 324-5078','1978-08-08','Mechanical Engineer','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Irene','Saarinen','irene.saarinen@corp.biz','(413) 684-7375','2016-05-11','Systems Analyst','Worker',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Dmitri','Scholz','dmitri.scholz@inbox.com','(325) 459-8884','2010-05-07','Neurologist','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rafael','Costa','rafael.costa@icloud.com','(848) 644-6316','1930-03-26','Art Director','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jack','Hayashi','jack.hayashi@gmail.com','(243) 795-8786','2017-10-05','Psychiatrist','External',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Satoshi','Farias','satoshi.farias@mail.ru','(293) 902-6544','2009-01-02','Cardiologist','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Willard','Colombo','willard.colombo@mail.com','(699) 438-6189','2000-11-25','Epidemiologist','Manager',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Macy','Garcia','macy.garcia@gmail.com','(905) 586-6868','2021-03-09','Physical Therapist','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Mabel','Smit','mabel.smit@gmx.de','(755) 913-9029','1953-10-06','Ship Captain','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Myrtle','Ivanov','myrtle.ivanov@services.org','(813) 767-3627','1937-09-05','Bank Teller','Worker',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sylvia','Schaefer','sylvia.schaefer@hotmail.com','(664) 200-9289','1977-12-06','Nurse Practitioner','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ernest','Virtanen','ernest.virtanen@icloud.com','(528) 938-2037','2013-09-27','Pathologist','Supervisor',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rosemary','Schulz','rosemary.schulz@mail.com','(827) 489-6285','1981-11-11','Firefighter','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Francesca','Bauer','francesca.bauer@digital.co','(332) 382-1512','1954-02-16','Operations Manager','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Herbert','Yoshimura','herbert.yoshimura@mail.ru','(738) 838-5193','1935-06-08','Welder','Manager',true, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Patrick','Yoshida','patrick.yoshida@mail.ru','(281) 679-1994','1975-09-24','Respiratory Therapist','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ethan','Vasquez','ethan.vasquez@aol.com','(741) 241-2153','1967-02-07','Elevator Installer','External',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Robert','Sanchez','robert.sanchez@live.com','(394) 397-9621','2013-04-19','Project Manager','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kay','Colombo','kay.colombo@global.net','(853) 790-6864','2015-08-23','Massage Therapist','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marina','Fredriksson','marina.fredriksson@example.com','(611) 716-6529','2013-03-18','Investment Banker','Supervisor',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Brent','Scholz','brent.scholz@web.de','(580) 622-8054','2021-06-20','Account Executive','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Pierre','Matsuoka','pierre.matsuoka@global.net','(763) 962-5162','1975-08-15','Optometrist','Worker',true, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Daphne','Johansson','daphne.johansson@work.net','(216) 730-3213','1967-01-10','Recruiter','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Brent','Antonelli','brent.antonelli@global.net','(906) 482-9376','2000-10-19','Network Engineer','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Michael','Lund','michael.lund@mail.com','(341) 471-7014','2003-04-08','Brand Manager','External',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ida','Strauss','ida.strauss@live.com','(782) 422-2264','2021-06-26','Landscape Architect','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ivan','Tavares','ivan.tavares@office.io','(507) 238-7251','1939-01-25','Microbiologist','Manager',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Louise','Nakata','louise.nakata@group.com','(323) 988-4714','2024-11-28','Graphic Designer','Supervisor',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Grant','Berglund','grant.berglund@gmx.de','(736) 242-6231','1998-10-05','Astronomer','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ralph','Falcone','ralph.falcone@yahoo.com','(889) 949-7436','1986-10-19','Tailor','Worker',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lorraine','Kaczmarek','lorraine.kaczmarek@tech.io','(603) 351-3165','1972-02-16','Archivist','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jason','Huber','jason.huber@outlook.com','(608) 713-8118','2018-03-25','Tax Consultant','Supervisor',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Olaf','Popov','olaf.popov@live.com','(867) 785-4212','2000-10-24','Heavy Equipment Operator','External',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Geoffrey','Ichikawa','geoffrey.ichikawa@global.net','(640) 531-2467','1943-11-14','Athletic Trainer','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Nelson','Kojima','nelson.kojima@hotmail.com','(808) 871-1396','1968-03-12','Investment Banker','Manager',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marcia','Bauer','marcia.bauer@group.com','(439) 404-7124','1948-12-28','Professor','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Erik','Hayashi','erik.hayashi@work.net','(351) 494-1225','1972-12-26','Firefighter','External',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Neal','Antonelli','neal.antonelli@web.de','(414) 957-9814','1956-04-18','Crane Operator','Worker',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Peggy','Vogt','peggy.vogt@enterprise.com','(344) 911-1301','1977-10-22','Heavy Equipment Operator','Manager',true, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Martin','Blomqvist','martin.blomqvist@gmx.de','(405) 913-5444','1935-08-21','Graphic Designer','Supervisor',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Tomoko','Zimmermann','tomoko.zimmermann@services.org','(875) 568-2767','1931-05-28','Anesthesiologist','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Glen','Rodriguez','glen.rodriguez@firm.co','(301) 523-8940','2005-09-03','Business Analyst','Worker',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Melinda','Soares','melinda.soares@group.com','(929) 222-1651','1960-09-10','Microbiologist','Manager',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Magnus','Amato','magnus.amato@hotmail.com','(900) 560-6822','2009-05-08','Jeweler','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Felix','Wahlberg','felix.wahlberg@aol.com','(596) 230-5590','1957-03-11','Dental Hygienist','External',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Helena','Meier','helena.meier@inbox.com','(894) 827-4726','1982-04-19','Network Engineer','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Beth','Ueno','beth.ueno@web.de','(659) 755-3158','1955-11-05','Translator','Manager',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Otto','Dubois','otto.dubois@gmx.de','(905) 922-9582','1946-07-25','DevOps Engineer','Supervisor',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Maiko','Koch','maiko.koch@outlook.com','(770) 745-2939','1952-06-27','DevOps Engineer','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Candice','Nakamura','candice.nakamura@msn.com','(510) 653-5485','1948-04-04','Auditor','Worker',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Teresa','Ullman','teresa.ullman@company.org','(827) 436-4804','1958-11-01','Cardiologist','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Opal','Dobrovsky','opal.dobrovsky@inbox.com','(819) 680-7126','1952-07-16','Fashion Designer','Supervisor',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Niels','Gustafsson','niels.gustafsson@yahoo.com','(618) 982-1245','1963-07-08','Logistics Coordinator','External',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Florian','Franco','florian.franco@group.com','(649) 831-9027','2017-06-28','Risk Manager','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lila','Muller','lila.muller@global.net','(242) 822-7232','2021-06-13','Archivist','Manager',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Tracy','Wolff','tracy.wolff@solutions.net','(921) 239-9530','1942-08-15','Physical Therapist','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Santiago','Russo','santiago.russo@example.com','(605) 952-1643','2000-07-17','Architect','External',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Mae','Morales','mae.morales@solutions.net','(511) 992-5684','1988-03-14','Biomedical Engineer','Worker',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Erik','Malmberg','erik.malmberg@inbox.com','(345) 674-8400','1940-12-17','Firefighter','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kyoko','Molnar','kyoko.molnar@msn.com','(531) 661-1408','1951-08-19','Logistics Coordinator','Supervisor',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Holly','Hidalgo','holly.hidalgo@web.de','(908) 864-3686','2020-12-04','Journalist','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Martha','Weiss','martha.weiss@hotmail.com','(287) 736-7292','2022-09-20','Systems Analyst','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Glen','Bauer','glen.bauer@global.net','(374) 543-3459','1949-03-06','Social Worker','Manager',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Bella','Olofsson','bella.olofsson@gmx.de','(841) 385-2926','1945-04-01','Regional Director','Supervisor',true, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rosemary','Richter','rosemary.richter@example.com','(205) 822-9084','1959-04-19','Fashion Designer','External',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marcus','Calvo','marcus.calvo@work.net','(814) 206-5009','1999-05-20','Legal Secretary','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Patricia','Bengtsson','patricia.bengtsson@fastmail.com','(351) 256-6718','1933-03-28','Mechanical Engineer','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Alice','Kubo','alice.kubo@group.com','(289) 250-2784','1982-03-06','Copywriter','Supervisor',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Melanie','Ota','melanie.ota@enterprise.com','(792) 568-1587','1940-05-11','Pediatrician','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Frederick','Nishimura','frederick.nishimura@digital.co','(763) 266-5797','1989-03-04','Art Director','Worker',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kate','Sakamoto','kate.sakamoto@zoho.com','(912) 414-1953','1942-10-24','Truck Driver','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Perry','Nylander','perry.nylander@work.net','(923) 494-7996','2006-06-09','Heavy Equipment Operator','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Edward','Dietrich','edward.dietrich@work.net','(776) 708-9514','2022-11-16','Butcher','External',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Roland','Kaczmarek','roland.kaczmarek@zoho.com','(201) 321-1392','1988-11-26','Lawyer','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Patricia','Vasquez','patricia.vasquez@msn.com','(623) 246-6468','1973-09-26','Inventory Analyst','Manager',true, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Oscar','Malmberg','oscar.malmberg@gmx.de','(460) 269-6042','1967-09-18','Oceanographer','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Juliana','Sjögren','juliana.sjogren@web.de','(549) 605-1477','1951-04-11','Biochemist','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Owen','Pereira','owen.pereira@tech.io','(236) 861-3224','1990-03-21','Risk Manager','Worker',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Willard','Lagarde','willard.lagarde@yandex.ru','(623) 960-1917','1995-05-19','Geologist','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Camille','Gonzalez','camille.gonzalez@company.org','(901) 539-6793','1937-03-09','Research Scientist','Supervisor',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gary','Wahlberg','gary.wahlberg@example.com','(369) 784-7382','1952-10-04','Industrial Engineer','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Brent','Bachmann','brent.bachmann@aol.com','(623) 288-9143','1959-06-15','Environmental Engineer','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Annie','Forsberg','annie.forsberg@proton.me','(583) 238-4311','1940-08-17','Financial Analyst','Manager',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Russell','Falcone','russell.falcone@zoho.com','(548) 695-9579','1968-06-05','Pilot','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Stuart','Hedberg','stuart.hedberg@mail.com','(410) 941-1598','1987-07-23','Crane Operator','External',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Bertha','Bauer','bertha.bauer@corp.biz','(808) 289-6460','1988-01-04','Crane Operator','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Beth','Antonelli','beth.antonelli@company.org','(976) 519-4438','1970-04-07','Video Producer','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Candice','Okada','candice.okada@corp.biz','(320) 479-3446','1949-05-04','Civil Engineer','Supervisor',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Stephen','Choi','stephen.choi@zoho.com','(755) 558-6218','1963-03-23','Copywriter','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Masako','Brandt','masako.brandt@gmx.de','(827) 546-9856','1985-01-05','Research Scientist','Worker',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Emilia','Colombo','emilia.colombo@live.com','(255) 288-7987','1979-03-23','Loan Officer','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Beth','Kurosawa','beth.kurosawa@digital.co','(402) 930-9740','1939-08-19','Auditor','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Myrtle','Chambers','myrtle.chambers@yandex.ru','(517) 900-8625','1989-04-08','UX Designer','External',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sonia','Maki','sonia.maki@live.com','(387) 916-6412','1970-08-16','Research Scientist','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Julian','Lombardi','julian.lombardi@mail.ru','(672) 374-5624','1973-10-19','Actuary','Manager',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Joan','Colombo','joan.colombo@web.de','(769) 865-2162','1967-09-15','Chiropractor','Supervisor',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ruth','Virtanen','ruth.virtanen@icloud.com','(761) 362-8903','1978-02-11','Procurement Officer','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lori','Nyberg','lori.nyberg@company.org','(550) 757-4869','1951-11-22','Chef','Worker',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Randall','Dahlberg','randall.dahlberg@company.org','(810) 674-6330','2000-02-27','Investment Banker','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Joan','Bouchard','joan.bouchard@work.net','(311) 901-7208','1970-08-21','Electrician','Supervisor',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Leandro','Szabo','leandro.szabo@solutions.net','(973) 851-1003','1947-11-05','Bank Teller','External',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Howard','Vasquez','howard.vasquez@company.org','(657) 400-4369','2016-06-10','Museum Curator','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Aurora','Nyberg','aurora.nyberg@firm.co','(552) 291-1133','2007-09-13','Actuary','Manager',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Felix','Marini','felix.marini@solutions.net','(762) 254-1013','2019-09-27','Cardiologist','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Vladimir','Asano','vladimir.asano@icloud.com','(642) 919-7459','2009-06-23','Surgeon','External',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lucille','Schmidt','lucille.schmidt@zoho.com','(878) 377-8780','1946-04-18','Anesthesiologist','Worker',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Elsa','Nakata','elsa.nakata@mail.com','(495) 886-3056','1946-01-03','Nurse Practitioner','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Randall','Yoshimura','randall.yoshimura@msn.com','(339) 286-3248','2011-07-28','Credit Analyst','Supervisor',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Leslie','Volkov','leslie.volkov@fastmail.com','(665) 721-7948','1999-08-13','Dermatologist','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Leo','Ueno','leo.ueno@gmail.com','(791) 710-4878','2020-09-09','Occupational Therapist','Worker',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Evan','Baggio','evan.baggio@yahoo.com','(781) 694-7038','1943-10-16','Teacher','Manager',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Tyler','Jankowski','tyler.jankowski@yandex.ru','(729) 280-9574','2007-02-08','Interior Designer','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Greta','Bergström','greta.bergstrom@office.io','(752) 793-6119','2007-01-11','Bus Driver','External',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Nancy','Ortiz','nancy.ortiz@inbox.com','(680) 787-6431','1982-06-26','Biomedical Engineer','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Dario','Ahlström','dario.ahlstrom@group.com','(811) 967-5981','2022-10-09','Electrician','Manager',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marta','Suga','marta.suga@yahoo.com','(872) 498-1447','1965-08-03','Actuary','Supervisor',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Veronica','Hofmann','veronica.hofmann@mail.com','(830) 487-5509','1961-01-24','Firefighter','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lucia','Zaccaria','lucia.zaccaria@yandex.ru','(578) 379-5280','2018-04-16','Scrum Master','Worker',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Dana','Leitner','dana.leitner@outlook.com','(348) 809-3525','1992-07-25','Anesthesiologist','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Mae','Wiklund','mae.wiklund@fastmail.com','(415) 791-6653','1935-11-09','Police Officer','Supervisor',true, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Minnie','Moreau','minnie.moreau@mail.ru','(508) 687-9724','1958-07-22','Pathologist','External',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lillian','Salminen','lillian.salminen@services.org','(645) 212-5731','1986-07-22','Geologist','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Diego','Chambers','diego.chambers@group.com','(744) 852-6797','1984-10-21','Public Relations Officer','Manager',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Teresa','Chang','teresa.chang@aol.com','(870) 798-7408','1988-11-24','Account Executive','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Nina','Saarinen','nina.saarinen@web.de','(893) 906-3947','1969-09-01','Graphic Designer','External',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Astrid','Nakagawa','astrid.nakagawa@proton.me','(737) 306-8306','1973-04-24','Copywriter','Worker',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Daniela','Aoki','daniela.aoki@work.net','(294) 258-4552','2005-11-04','Lawyer','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Knut','Matsuoka','knut.matsuoka@corp.biz','(982) 863-4027','1943-12-06','Regional Director','Supervisor',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gloria','Wolf','gloria.wolf@yandex.ru','(483) 987-7995','2017-11-25','Oceanographer','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Geraldo','Iwamoto','geraldo.iwamoto@global.net','(263) 591-7366','1971-01-09','SEO Specialist','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gabriel','Quintero','gabriel.quintero@group.com','(405) 824-7432','1951-11-16','Paramedic','Manager',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lori','Groen','lori.groen@work.net','(858) 308-8234','2020-05-04','Mechanical Engineer','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Selma','Olofsson','selma.olofsson@gmail.com','(709) 352-1014','1933-11-13','Social Media Manager','External',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Colleen','Mizuno','colleen.mizuno@company.org','(203) 727-9039','1990-07-13','Carpenter','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Amara','Mendoza','amara.mendoza@firm.co','(998) 693-2985','2001-09-12','Microbiologist','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jean','Bertrand','jean.bertrand@office.io','(862) 292-6985','1997-06-03','Risk Manager','Supervisor',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Yasuko','Yamaguchi','yasuko.yamaguchi@zoho.com','(380) 767-1644','1978-11-07','Chemical Engineer','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jonas','Watanabe','jonas.watanabe@firm.co','(567) 698-2390','2009-08-24','Consultant','Worker',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Niels','Aoki','niels.aoki@enterprise.com','(807) 444-9015','1978-02-26','Delivery Driver','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Roy','Santos','roy.santos@digital.co','(660) 216-1606','1972-01-11','Physical Therapist','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Penelope','Yang','penelope.yang@corp.biz','(735) 669-9791','1948-12-19','Benefits Administrator','External',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'David','Dvorak','david.dvorak@mail.ru','(869) 219-8720','2008-01-08','Auditor','Worker',true, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Emilia','Kimura','emilia.kimura@digital.co','(299) 667-3796','2004-02-27','Paramedic','Manager',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rajesh','Bonetti','rajesh.bonetti@tech.io','(407) 636-6527','2023-11-13','Astronomer','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Laura','Kojima','laura.kojima@digital.co','(418) 982-1746','2004-03-11','Plumber','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Leonard','Nakano','leonard.nakano@fastmail.com','(913) 578-3703','1985-04-19','Physical Therapist','Worker',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'George','Farias','george.farias@gmail.com','(698) 282-1104','1929-03-03','Copywriter','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Olive','Dahlgren','olive.dahlgren@mail.com','(411) 346-5439','1995-08-14','Account Executive','Supervisor',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Deirdre','Teixeira','deirdre.teixeira@fastmail.com','(934) 711-2442','2009-05-12','Dietitian','External',true, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rosa','Garcia','rosa.garcia@proton.me','(742) 297-6929','1998-09-08','Compliance Officer','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Patrick','Iwamoto','patrick.iwamoto@yahoo.com','(398) 315-3444','2016-08-16','Project Manager','Manager',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Dominik','Berglund','dominik.berglund@office.io','(572) 491-4433','1984-05-11','Credit Analyst','Supervisor',true, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Emma','Sato','emma.sato@fastmail.com','(361) 229-8947','1994-02-03','Sales Representative','External',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Christine','Navarro','christine.navarro@zoho.com','(965) 893-6336','1958-02-11','Compensation Analyst','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Karen','Gimenez','karen.gimenez@live.com','(425) 275-8716','2003-08-02','Insurance Broker','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Maurice','Franke','maurice.franke@live.com','(582) 339-8499','2021-04-21','Cardiologist','Supervisor',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Otto','Lagarde','otto.lagarde@mail.com','(232) 908-1977','1964-03-04','Financial Planner','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Masako','Leitner','masako.leitner@icloud.com','(502) 818-3568','2010-10-06','Historian','Worker',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rita','Carlsson','rita.carlsson@msn.com','(734) 700-4546','2004-08-27','Compliance Officer','Manager',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Logan','Henriksson','logan.henriksson@icloud.com','(535) 644-4643','2004-03-19','Data Analyst','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Dorothea','Baroni','dorothea.baroni@mail.ru','(951) 987-9261','1933-07-17','Dental Hygienist','External',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jakob','Ortega','jakob.ortega@mail.ru','(446) 285-1203','2017-12-14','HR Manager','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Adriana','Hasegawa','adriana.hasegawa@office.io','(292) 216-8860','2014-05-06','Risk Manager','Manager',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Charlotte','Ortiz','charlotte.ortiz@yandex.ru','(990) 341-7641','1952-06-21','Compliance Officer','Supervisor',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Aleksandra','Wallin','aleksandra.wallin@outlook.com','(594) 907-6454','1996-01-10','Massage Therapist','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Patricia','Bergström','patricia.bergstrom@outlook.com','(835) 543-1898','1994-11-12','Social Worker','Worker',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Eugene','Park','eugene.park@work.net','(241) 574-7003','1951-11-18','Carpenter','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Pamela','Dubois','pamela.dubois@web.de','(444) 752-2860','2012-08-24','Translator','Supervisor',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Pauline','Gustafsson','pauline.gustafsson@web.de','(561) 473-9250','2016-07-09','Social Worker','External',true, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Devon','Ortega','devon.ortega@mail.ru','(713) 739-3010','1989-12-18','Bus Driver','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Mary','Virtanen','mary.virtanen@hotmail.com','(889) 909-2075','1953-08-03','Teacher','Manager',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Micah','Jansen','micah.jansen@outlook.com','(311) 368-5521','1943-12-05','Florist','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Pamela','Saarinen','pamela.saarinen@office.io','(223) 500-7824','2016-09-05','Fashion Designer','External',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marian','Yamada','marian.yamada@gmail.com','(498) 393-2031','1931-04-27','Crane Operator','Worker',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Justin','Svensson','justin.svensson@web.de','(871) 861-6346','1991-10-22','Truck Driver','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marianne','Ozawa','marianne.ozawa@gmx.de','(780) 335-6021','1950-05-08','Landscape Architect','Supervisor',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Xavier','Bellini','xavier.bellini@mail.com','(561) 491-8469','1950-10-06','Taxi Driver','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Maya','Dahlgren','maya.dahlgren@solutions.net','(882) 357-3641','1959-02-02','Meteorologist','Worker',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marcia','Huang','marcia.huang@hotmail.com','(388) 410-1568','2014-06-12','DevOps Engineer','Manager',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Yolanda','Ferrari','yolanda.ferrari@example.com','(508) 324-1408','1980-08-25','DevOps Engineer','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Carl','Falk','carl.falk@gmail.com','(956) 759-9313','1971-11-23','Biomedical Engineer','External',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Yasuko','Suga','yasuko.suga@corp.biz','(350) 778-8243','1972-12-04','Industrial Designer','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Leandro','Lundström','leandro.lundstrom@example.com','(319) 515-1406','1980-10-27','Recruiter','Manager',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ida','Krause','ida.krause@yahoo.com','(822) 856-4197','2003-09-08','Creative Director','Supervisor',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Hassan','Sato','hassan.sato@services.org','(656) 893-2431','1994-07-07','Baker','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Shirley','Bertrand','shirley.bertrand@group.com','(882) 569-7513','1947-12-28','Massage Therapist','Worker',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Frank','Alberti','frank.alberti@gmx.de','(553) 559-6047','1986-09-03','HR Manager','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marian','Nakano','marian.nakano@tech.io','(653) 495-3683','2022-07-24','Respiratory Therapist','Supervisor',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Heidi','Eklund','heidi.eklund@zoho.com','(510) 686-9606','1971-02-19','Radiologist','External',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Judy','Wolf','judy.wolf@group.com','(479) 624-3865','2000-08-23','Museum Curator','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Laura','Gimenez','laura.gimenez@fastmail.com','(590) 496-9037','1934-05-27','Interpreter','Manager',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Milton','Gupta','milton.gupta@gmail.com','(202) 357-5303','1967-11-27','Interior Designer','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Xander','Nakata','xander.nakata@fastmail.com','(703) 904-5009','1932-02-25','Art Director','External',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Francesca','Torres','francesca.torres@enterprise.com','(570) 795-8872','2001-07-28','Content Strategist','Worker',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Olive','Ahlström','olive.ahlstrom@digital.co','(322) 582-9397','2022-10-01','Content Strategist','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ethan','Ekberg','ethan.ekberg@web.de','(672) 909-3219','1974-03-02','Public Relations Officer','Supervisor',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Eileen','Bellini','eileen.bellini@gmx.de','(498) 742-2258','1994-04-25','Scrum Master','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marion','Schiller','marion.schiller@web.de','(523) 901-5932','1963-11-23','Neurologist','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Dylan','Eklund','dylan.eklund@gmail.com','(340) 730-5610','1976-08-14','Geneticist','Manager',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marco','Choi','marco.choi@zoho.com','(358) 715-4622','1953-09-20','Heavy Equipment Operator','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Juliana','Nakata','juliana.nakata@yandex.ru','(278) 319-3150','1931-08-12','Aerospace Engineer','External',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Leandro','Okamoto','leandro.okamoto@solutions.net','(811) 735-6604','1951-12-10','Research Scientist','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Karin','Guerra','karin.guerra@mail.com','(910) 345-4712','1968-03-07','Auditor','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Leslie','Malmberg','leslie.malmberg@global.net','(314) 279-1308','1990-07-02','Supply Chain Manager','Supervisor',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Stanley','Tanaka','stanley.tanaka@yahoo.com','(680) 321-5145','1934-02-10','Graphic Designer','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Keith','Ueda','keith.ueda@zoho.com','(801) 404-4027','2014-06-01','Journalist','Worker',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Veronica','Svensson','veronica.svensson@hotmail.com','(560) 364-9202','2022-10-08','Tailor','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'James','Svensson','james.svensson@global.net','(214) 741-4555','2020-04-10','QA Engineer','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'William','Adachi','william.adachi@enterprise.com','(301) 419-9260','2019-08-12','Business Analyst','External',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jonas','Fredriksson','jonas.fredriksson@digital.co','(563) 588-7948','1956-09-08','Speech Therapist','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Bonnie','De Luca','bonnie.deluca@yandex.ru','(312) 732-3226','1992-06-23','Video Producer','Manager',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Diana','Carbone','diana.carbone@web.de','(705) 318-7304','1965-08-20','Aerospace Engineer','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marian','Gustafsson','marian.gustafsson@example.com','(617) 497-8011','1953-02-27','Fashion Designer','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Evelyn','Franke','evelyn.franke@gmail.com','(890) 703-2723','1979-08-17','Professor','Worker',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Irving','Morin','irving.morin@firm.co','(804) 304-3764','1937-06-07','Biochemist','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jessica','De Jong','jessica.dejong@icloud.com','(634) 942-9177','1964-12-25','Translator','Supervisor',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jay','Lund','jay.lund@mail.ru','(882) 817-7626','1991-09-09','DevOps Engineer','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jonathan','De Jong','jonathan.dejong@aol.com','(701) 709-4781','2009-03-01','Pilot','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Frederick','Richter','frederick.richter@corp.biz','(227) 383-7269','2006-11-11','Network Engineer','Manager',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ivy','Bukowski','ivy.bukowski@corp.biz','(969) 732-9064','1988-04-10','Florist','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sven','Schaefer','sven.schaefer@web.de','(753) 759-1289','1933-07-04','Anesthesiologist','External',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'George','Okamoto','george.okamoto@yandex.ru','(236) 233-3897','2000-11-28','Environmental Engineer','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Maria','Quintero','maria.quintero@msn.com','(337) 519-7374','1991-02-19','Baker','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Yolanda','Strauss','yolanda.strauss@mail.ru','(687) 775-3560','1993-01-13','SEO Specialist','Supervisor',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gerald','Vasquez','gerald.vasquez@corp.biz','(561) 984-5660','1970-01-01','Veterinarian','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Evan','Lindqvist','evan.lindqvist@tech.io','(959) 797-1440','2009-06-13','Photographer','Worker',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Eleanor','Nakagawa','eleanor.nakagawa@hotmail.com','(257) 877-5001','1960-04-21','Aerospace Engineer','Manager',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Florian','Kelley','florian.kelley@proton.me','(545) 373-1322','1997-06-02','Risk Manager','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lawrence','Sorensen','lawrence.sorensen@inbox.com','(631) 473-1334','2018-08-19','Marketing Manager','External',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gerald','Strauss','gerald.strauss@live.com','(530) 786-2601','1991-02-23','Warehouse Manager','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sally','Pettersson','sally.pettersson@web.de','(370) 829-5907','1975-07-07','Florist','Manager',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gloria','Sasaki','gloria.sasaki@zoho.com','(494) 471-1778','1967-10-13','Training Specialist','Supervisor',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ida','Svensson','ida.svensson@proton.me','(806) 544-5478','1937-10-26','Truck Driver','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Pauline','Lindgren','pauline.lindgren@tech.io','(278) 867-5945','1993-05-14','Delivery Driver','Worker',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Katherine','Morin','katherine.morin@aol.com','(839) 727-8425','2014-09-06','Nurse Practitioner','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Stuart','Fujita','stuart.fujita@company.org','(711) 418-8656','1963-11-18','Insurance Broker','Supervisor',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Fabian','Saito','fabian.saito@zoho.com','(573) 673-3420','1959-03-24','Chemical Engineer','External',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Julia','Koizumi','julia.koizumi@services.org','(265) 849-4335','1981-05-27','Video Producer','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sofia','Sjögren','sofia.sjogren@work.net','(441) 615-4907','1943-03-07','Research Scientist','Manager',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Bernard','Palmieri','bernard.palmieri@mail.ru','(773) 646-7914','2011-01-07','Systems Analyst','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Claudia','Hoshino','claudia.hoshino@tech.io','(484) 874-3883','2011-01-24','Urban Planner','External',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ernesto','Carbone','ernesto.carbone@web.de','(816) 505-2041','1981-06-22','Journalist','Worker',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lena','Hansen','lena.hansen@proton.me','(784) 952-9196','1944-09-22','Translator','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Tracy','Hidalgo','tracy.hidalgo@mail.ru','(292) 443-3003','1969-06-27','Interpreter','Supervisor',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rosa','Nielsen','rosa.nielsen@zoho.com','(347) 309-3869','1956-05-15','Speech Therapist','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Esperanza','Quintero','esperanza.quintero@example.com','(583) 916-2850','1969-09-14','Fashion Designer','Worker',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Veronica','Ekberg','veronica.ekberg@hotmail.com','(686) 932-7025','1968-01-21','Mechanical Engineer','Manager',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sabine','Hofmann','sabine.hofmann@example.com','(593) 516-6945','2016-02-18','Sales Representative','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Herbert','Ahonen','herbert.ahonen@group.com','(602) 461-5929','1940-04-10','Procurement Officer','External',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Manuel','Ohara','manuel.ohara@office.io','(524) 985-7656','1933-05-28','Teacher','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rhonda','Pedersen','rhonda.pedersen@enterprise.com','(622) 540-7920','1941-03-23','Content Strategist','Manager',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Dylan','Neumann','dylan.neumann@work.net','(946) 760-6353','1987-12-01','Social Worker','Supervisor',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Mohamed','Watanabe','mohamed.watanabe@yandex.ru','(856) 339-1050','1980-04-21','Industrial Engineer','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Haruki','Correia','haruki.correia@fastmail.com','(455) 728-3131','2005-11-14','Meteorologist','Worker',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kristina','Huang','kristina.huang@fastmail.com','(903) 807-6367','1965-04-03','Respiratory Therapist','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ian','Mattsson','ian.mattsson@digital.co','(784) 429-1339','1931-09-21','Compensation Analyst','Supervisor',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Mildred','Gherardi','mildred.gherardi@aol.com','(918) 372-1815','1980-10-14','Content Strategist','External',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Evelyn','Florescu','evelyn.florescu@company.org','(320) 214-9615','1984-08-27','Butcher','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Paloma','Gallo','paloma.gallo@services.org','(472) 494-9096','1977-03-14','Warehouse Manager','Manager',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Walter','Hedberg','walter.hedberg@zoho.com','(628) 384-7693','1947-01-10','SEO Specialist','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marvin','Hernandez','marvin.hernandez@hotmail.com','(796) 900-8506','1939-01-16','Tax Consultant','External',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Janet','Sjögren','janet.sjogren@zoho.com','(930) 592-7935','2023-10-09','Welder','Worker',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Eunice','Bergman','eunice.bergman@web.de','(440) 682-6804','2006-11-26','Veterinarian','Manager',true, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sandra','Virtanen','sandra.virtanen@live.com','(509) 604-7076','1945-09-02','Translator','Supervisor',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marta','Rios','marta.rios@mail.ru','(547) 679-3161','1940-06-23','Truck Driver','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Stella','Dahl','stella.dahl@web.de','(245) 330-9179','1964-12-12','Real Estate Agent','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sylvia','Valencia','sylvia.valencia@digital.co','(979) 470-9470','1969-07-06','Geologist','Manager',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rhonda','Espinoza','rhonda.espinoza@example.com','(873) 851-8208','1935-04-05','Social Worker','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Dario','Paulsson','dario.paulsson@aol.com','(367) 922-8653','1984-02-16','Physical Therapist','External',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Pete','Ozawa','pete.ozawa@mail.ru','(315) 937-3425','1944-06-03','Warehouse Manager','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Miguel','Fjellström','miguel.fjellstrom@enterprise.com','(720) 479-4479','2003-01-17','Archivist','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gordon','Henriksson','gordon.henriksson@global.net','(710) 893-2545','1971-01-10','Accountant','Supervisor',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Johan','Kowalczyk','johan.kowalczyk@mail.com','(229) 283-8540','2019-11-16','Credit Analyst','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Thomas','Tavares','thomas.tavares@corp.biz','(205) 537-1718','2012-10-15','Astronomer','Worker',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Klaus','Grasso','klaus.grasso@services.org','(249) 859-5635','1970-01-24','Welder','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Grace','Cavalcanti','grace.cavalcanti@live.com','(461) 382-4933','1980-02-01','Procurement Officer','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jerome','Johansson','jerome.johansson@office.io','(970) 869-3525','1944-05-16','Real Estate Agent','External',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Bernard','Bergström','bernard.bergstrom@work.net','(334) 567-2574','1976-09-07','Baker','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Herbert','Persson','herbert.persson@aol.com','(776) 814-7931','1940-07-26','Pediatrician','Manager',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Louise','Watanabe','louise.watanabe@msn.com','(295) 241-9410','1972-08-22','Training Specialist','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lydia','Ramos','lydia.ramos@inbox.com','(844) 862-9596','1939-05-15','Insurance Broker','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Orville','Kawamoto','orville.kawamoto@mail.com','(330) 900-5921','1960-09-14','Biomedical Engineer','Worker',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Gordon','Beck','gordon.beck@inbox.com','(310) 722-7961','1981-02-15','Museum Curator','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Edwin','Holmberg','edwin.holmberg@company.org','(283) 987-9248','1931-02-24','Compliance Officer','Supervisor',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Milan','Molnar','milan.molnar@yahoo.com','(285) 626-5876','1969-10-24','Credit Analyst','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Martha','Volkov','martha.volkov@tech.io','(471) 549-4066','1956-03-03','Content Strategist','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Johan','Nyberg','johan.nyberg@example.com','(218) 205-7470','1943-01-06','Industrial Designer','Manager',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jill','Yoshimura','jill.yoshimura@enterprise.com','(816) 943-8974','1967-10-27','Neurologist','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Irving','Keane','irving.keane@outlook.com','(328) 338-1227','1953-02-27','Nurse Practitioner','External',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Natalia','Araújo','natalia.araujo@zoho.com','(692) 864-3378','2012-04-14','Taxi Driver','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Andrew','Palmieri','andrew.palmieri@mail.com','(685) 632-1357','1943-03-05','Investment Banker','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Neal','Andersson','neal.andersson@services.org','(660) 799-4975','1954-05-19','Dental Hygienist','Supervisor',true, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Anita','Choi','anita.choi@office.io','(930) 642-7810','1992-12-19','Paralegal','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'David','Popov','david.popov@live.com','(697) 725-8993','1958-12-02','Truck Driver','Worker',true, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Bridget','Shimizu','bridget.shimizu@outlook.com','(474) 863-7834','1989-02-16','Epidemiologist','Manager',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Luther','Andersson','luther.andersson@fastmail.com','(494) 943-4149','1989-06-15','Benefits Administrator','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Dawn','Ueda','dawn.ueda@services.org','(932) 872-8675','1945-05-24','Pathologist','External',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Elsa','Pedersen','elsa.pedersen@tech.io','(365) 836-4394','1965-12-24','Librarian','Worker',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Klaus','Fontana','klaus.fontana@zoho.com','(360) 820-9063','1941-07-16','Environmental Engineer','Manager',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Elias','Amato','elias.amato@hotmail.com','(467) 565-3598','1951-09-02','Plumber','Supervisor',false, 15) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Juliana','Vega','juliana.vega@icloud.com','(323) 775-4671','1991-05-11','Dermatologist','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Teresa','Espinoza','teresa.espinoza@services.org','(906) 727-2706','2019-01-15','Risk Manager','Worker',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Joseph','Colombo','joseph.colombo@tech.io','(825) 824-2669','2000-01-17','Flight Attendant','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kai','Gomez','kai.gomez@group.com','(570) 360-5786','2019-08-25','Tailor','Supervisor',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'James','Falcone','james.falcone@office.io','(572) 542-3257','1944-04-15','Respiratory Therapist','External',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Andrei','Hedlund','andrei.hedlund@digital.co','(685) 549-5698','1993-03-03','Social Media Manager','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Katherine','Lundqvist','katherine.lundqvist@office.io','(880) 451-3483','1996-07-26','Compensation Analyst','Manager',false, 9) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lois','Nakamura','lois.nakamura@group.com','(619) 669-9456','2016-06-01','Investment Banker','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ariadne','Ruiz','ariadne.ruiz@outlook.com','(286) 546-6157','1980-03-14','Electrician','External',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'David','Zanetti','david.zanetti@group.com','(856) 354-1947','2009-12-26','Crane Operator','Worker',false, 8) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kyle','Morin','kyle.morin@solutions.net','(897) 917-5986','2021-12-11','Epidemiologist','Manager',true, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Vincent','Salazar','vincent.salazar@work.net','(350) 917-7618','1986-11-07','Ship Captain','Supervisor',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marcus','Engström','marcus.engstrom@hotmail.com','(864) 614-4232','1967-02-02','Taxi Driver','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kerstin','Saarinen','kerstin.saarinen@example.com','(490) 418-2520','1994-09-10','Crane Operator','Worker',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Manfred','Antonelli','manfred.antonelli@gmail.com','(752) 806-5238','1959-05-24','Athletic Trainer','Manager',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Joseph','Blomqvist','joseph.blomqvist@digital.co','(581) 465-9314','1974-02-02','Accountant','Supervisor',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Andrea','Ortiz','andrea.ortiz@web.de','(441) 963-9737','2005-04-12','Chemical Engineer','External',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Lena','Mattsson','lena.mattsson@inbox.com','(955) 453-2724','1970-09-19','Operations Manager','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Emily','Ortiz','emily.ortiz@proton.me','(350) 928-7974','1981-02-03','Electrician','Manager',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Knut','Persson','knut.persson@zoho.com','(656) 279-7050','2015-09-13','Mediator','Supervisor',false, 13) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Irving','Ibarra','irving.ibarra@company.org','(710) 851-7937','1985-12-16','Respiratory Therapist','External',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Liesel','Rizzo','liesel.rizzo@mail.com','(696) 928-8499','1945-12-17','Truck Driver','Worker',false, 11) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Petra','Ota','petra.ota@mail.ru','(233) 964-3569','2000-06-04','Speech Therapist','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Flora','Strauss','flora.strauss@gmx.de','(241) 735-3511','1944-06-10','Psychiatrist','Supervisor',false, 1) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Rachel','Arvidsson','rachel.arvidsson@tech.io','(346) 345-7910','1935-05-10','HR Manager','External',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ray','Abrahamsson','ray.abrahamsson@proton.me','(760) 557-2106','1934-07-16','Archivist','Worker',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Matthew','Larsson','matthew.larsson@tech.io','(586) 686-3175','1946-09-21','Risk Manager','Manager',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marshall','Eriksson','marshall.eriksson@services.org','(945) 533-2463','2008-11-20','Speech Therapist','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Irving','Laurent','irving.laurent@example.com','(246) 886-8259','2023-05-21','Librarian','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Chen','Strauss','chen.strauss@office.io','(990) 924-6060','2000-11-04','Mediator','Worker',false, 10) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Zachary','Suzuki','zachary.suzuki@global.net','(254) 783-9548','1953-08-17','Nurse Practitioner','Manager',false, 12) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Warren','Fredriksson','warren.fredriksson@gmail.com','(481) 410-5018','2019-10-15','Professor','Supervisor',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Casey','Morin','casey.morin@company.org','(246) 703-1381','1972-07-06','Respiratory Therapist','External',true, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Vernon','Koch','vernon.koch@live.com','(463) 293-2878','1941-09-06','Video Producer','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Simon','Castillo','simon.castillo@mail.com','(514) 617-3772','1936-10-11','Scrum Master','Manager',true, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Ethan','Kawaguchi','ethan.kawaguchi@live.com','(301) 527-3334','1981-06-09','Radiologist','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Kasper','Bergman','kasper.bergman@zoho.com','(445) 970-4874','1992-09-25','Tailor','External',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Julien','Inoue','julien.inoue@yahoo.com','(525) 675-7669','1937-08-01','Speech Therapist','Worker',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Camille','Inoue','camille.inoue@example.com','(800) 891-2663','1960-09-21','Actuary','Manager',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Joel','Olofsson','joel.olofsson@outlook.com','(851) 712-4333','1947-06-18','QA Engineer','Supervisor',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'William','Nielsen','william.nielsen@group.com','(768) 662-1684','1929-08-27','Animator','External',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marion','Aaronsen','marion.aaronsen@yahoo.com','(693) 479-5110','2016-07-12','Inventory Analyst','Worker',false, 6) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Sherman','Janssen','sherman.janssen@yahoo.com','(365) 956-9750','2001-02-10','Librarian','Manager',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Keiko','Dupont','keiko.dupont@enterprise.com','(769) 486-8077','1955-10-17','Meteorologist','Supervisor',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Dennis','Westerberg','dennis.westerberg@aol.com','(970) 924-8417','1963-04-22','Oceanographer','External',false, 4) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Meredith','Torres','meredith.torres@web.de','(216) 908-3190','2011-01-20','Fashion Designer','Worker',true, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Anton','Norberg','anton.norberg@fastmail.com','(623) 769-9011','1979-09-03','Chef','Manager',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Marianne','Norberg','marianne.norberg@proton.me','(561) 585-6864','1978-03-27','Graphic Designer','Supervisor',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Frances','Garcia','frances.garcia@yandex.ru','(209) 426-1324','1964-11-23','Cardiologist','External',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Arthur','Guerra','arthur.guerra@icloud.com','(705) 571-1602','1964-08-23','Procurement Officer','Worker',true, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Jack','Correia','jack.correia@services.org','(484) 782-9197','1992-03-18','Operations Manager','Manager',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Maya','Borghi','maya.borghi@company.org','(331) 963-2065','1945-05-19','Compensation Analyst','Supervisor',false, 3) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Valentina','Garcia','valentina.garcia@services.org','(894) 223-9731','2007-05-22','Mediator','External',false, 14) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Alfredo','Nishimura','alfredo.nishimura@office.io','(889) 865-1849','1970-07-28','Speech Therapist','Worker',false, 5) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Suzanne','Park','suzanne.park@mail.ru','(570) 729-1712','2021-04-02','Creative Director','Manager',false, 7) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Wayne','Olsen','wayne.olsen@web.de','(205) 601-4188','1971-02-19','Financial Analyst','Supervisor',false, 2) ;
insert into sample_person(version, first_name, last_name, email, phone, date_of_birth, occupation, role, important, office_location_id) values (1,'Remi','Malmberg','remi.malmberg@msn.com','(276) 455-4225','1950-06-10','Plumber','External',false, 3) ;


-- Sample person skills join table
-- Skills: Java(16)~350, Python(17)~250, Spring(19)~240, TypeScript(18)~180, REST(23)~170, Docker(20)~150, AWS(22)~140, Git(25)~100, Kubernetes(21)~90, Kafka(24)~60, Vaadin(26)~40
INSERT INTO sample_person_skills (sample_person_id, skills_id) VALUES
                                                                   (1000, 16),
                                                                   (1000, 20),
                                                                   (1001, 18),
                                                                   (1002, 16),
                                                                   (1002, 23),
                                                                   (1003, 17),
                                                                   (1004, 19),
                                                                   (1005, 16),
                                                                   (1005, 20),
                                                                   (1006, 18),
                                                                   (1007, 16),
                                                                   (1007, 23),
                                                                   (1008, 17),
                                                                   (1008, 21),
                                                                   (1009, 16),
                                                                   (1009, 20),
                                                                   (1010, 25),
                                                                   (1011, 16),
                                                                   (1011, 19),
                                                                   (1011, 23),
                                                                   (1012, 17),
                                                                   (1013, 22),
                                                                   (1014, 16),
                                                                   (1014, 20),
                                                                   (1015, 25),
                                                                   (1016, 16),
                                                                   (1016, 19),
                                                                   (1016, 23),
                                                                   (1017, 17),
                                                                   (1018, 22),
                                                                   (1019, 16),
                                                                   (1019, 20),
                                                                   (1020, 18),
                                                                   (1021, 16),
                                                                   (1021, 19),
                                                                   (1021, 23),
                                                                   (1022, 17),
                                                                   (1023, 19),
                                                                   (1023, 22),
                                                                   (1024, 17),
                                                                   (1024, 21),
                                                                   (1024, 25),
                                                                   (1025, 16),
                                                                   (1025, 19),
                                                                   (1025, 23),
                                                                   (1026, 17),
                                                                   (1026, 24),
                                                                   (1027, 18),
                                                                   (1027, 22),
                                                                   (1028, 16),
                                                                   (1029, 21),
                                                                   (1029, 25),
                                                                   (1030, 16),
                                                                   (1030, 19),
                                                                   (1030, 23),
                                                                   (1031, 17),
                                                                   (1031, 24),
                                                                   (1032, 18),
                                                                   (1032, 22),
                                                                   (1033, 16),
                                                                   (1034, 21),
                                                                   (1034, 25),
                                                                   (1035, 16),
                                                                   (1035, 19),
                                                                   (1035, 23),
                                                                   (1036, 17),
                                                                   (1037, 18),
                                                                   (1037, 22),
                                                                   (1038, 17),
                                                                   (1039, 19),
                                                                   (1039, 26),
                                                                   (1040, 16),
                                                                   (1040, 20),
                                                                   (1041, 18),
                                                                   (1042, 16),
                                                                   (1042, 23),
                                                                   (1043, 17),
                                                                   (1044, 19),
                                                                   (1045, 20),
                                                                   (1046, 18),
                                                                   (1047, 16),
                                                                   (1047, 23),
                                                                   (1048, 17),
                                                                   (1048, 21),
                                                                   (1049, 19),
                                                                   (1050, 17),
                                                                   (1050, 20),
                                                                   (1050, 24),
                                                                   (1051, 18),
                                                                   (1051, 22),
                                                                   (1052, 16),
                                                                   (1053, 22),
                                                                   (1054, 16),
                                                                   (1054, 20),
                                                                   (1055, 18),
                                                                   (1056, 16),
                                                                   (1056, 19),
                                                                   (1056, 23),
                                                                   (1057, 17),
                                                                   (1058, 19),
                                                                   (1058, 22),
                                                                   (1059, 16),
                                                                   (1059, 20),
                                                                   (1060, 18),
                                                                   (1061, 16),
                                                                   (1061, 19),
                                                                   (1061, 23),
                                                                   (1062, 17),
                                                                   (1063, 19),
                                                                   (1063, 26),
                                                                   (1064, 16),
                                                                   (1064, 20),
                                                                   (1065, 18),
                                                                   (1066, 16),
                                                                   (1066, 19),
                                                                   (1066, 23),
                                                                   (1067, 18),
                                                                   (1068, 16),
                                                                   (1069, 21),
                                                                   (1069, 25),
                                                                   (1070, 16),
                                                                   (1070, 19),
                                                                   (1070, 23),
                                                                   (1071, 17),
                                                                   (1072, 18),
                                                                   (1072, 22),
                                                                   (1073, 16),
                                                                   (1074, 21),
                                                                   (1074, 25),
                                                                   (1075, 16),
                                                                   (1075, 19),
                                                                   (1075, 23),
                                                                   (1076, 17),
                                                                   (1077, 18),
                                                                   (1077, 22),
                                                                   (1078, 16),
                                                                   (1078, 20),
                                                                   (1079, 25),
                                                                   (1080, 16),
                                                                   (1080, 19),
                                                                   (1080, 23),
                                                                   (1081, 17),
                                                                   (1082, 16),
                                                                   (1082, 23),
                                                                   (1083, 17),
                                                                   (1083, 21),
                                                                   (1084, 19),
                                                                   (1085, 17),
                                                                   (1085, 20),
                                                                   (1085, 24),
                                                                   (1086, 18),
                                                                   (1086, 22),
                                                                   (1087, 16),
                                                                   (1088, 17),
                                                                   (1088, 21),
                                                                   (1089, 19),
                                                                   (1090, 17),
                                                                   (1090, 20),
                                                                   (1090, 24),
                                                                   (1091, 18),
                                                                   (1091, 22),
                                                                   (1092, 16),
                                                                   (1093, 17),
                                                                   (1093, 21),
                                                                   (1093, 25),
                                                                   (1094, 19),
                                                                   (1095, 17),
                                                                   (1095, 24),
                                                                   (1096, 18),
                                                                   (1096, 22),
                                                                   (1097, 17),
                                                                   (1098, 19),
                                                                   (1098, 22),
                                                                   (1099, 16),
                                                                   (1099, 20),
                                                                   (1100, 18),
                                                                   (1101, 16),
                                                                   (1101, 19),
                                                                   (1101, 23),
                                                                   (1102, 17),
                                                                   (1103, 19),
                                                                   (1103, 26),
                                                                   (1104, 16),
                                                                   (1104, 20),
                                                                   (1105, 18),
                                                                   (1106, 16),
                                                                   (1106, 19),
                                                                   (1106, 23),
                                                                   (1107, 17),
                                                                   (1108, 19),
                                                                   (1108, 26),
                                                                   (1109, 16),
                                                                   (1109, 20),
                                                                   (1110, 18),
                                                                   (1111, 17),
                                                                   (1112, 18),
                                                                   (1112, 22),
                                                                   (1113, 16),
                                                                   (1113, 20),
                                                                   (1114, 21),
                                                                   (1114, 25),
                                                                   (1115, 16),
                                                                   (1115, 19),
                                                                   (1115, 23),
                                                                   (1116, 17),
                                                                   (1117, 18),
                                                                   (1117, 22),
                                                                   (1118, 16),
                                                                   (1118, 20),
                                                                   (1119, 25),
                                                                   (1120, 16),
                                                                   (1120, 19),
                                                                   (1120, 23),
                                                                   (1121, 17),
                                                                   (1122, 18),
                                                                   (1122, 22),
                                                                   (1123, 16),
                                                                   (1123, 20),
                                                                   (1124, 25),
                                                                   (1125, 16),
                                                                   (1125, 19),
                                                                   (1125, 23),
                                                                   (1126, 18),
                                                                   (1126, 22),
                                                                   (1127, 16),
                                                                   (1128, 17),
                                                                   (1128, 21),
                                                                   (1128, 25),
                                                                   (1129, 19),
                                                                   (1130, 17),
                                                                   (1130, 24),
                                                                   (1131, 18),
                                                                   (1131, 22),
                                                                   (1132, 16),
                                                                   (1133, 17),
                                                                   (1133, 21),
                                                                   (1133, 25),
                                                                   (1134, 19),
                                                                   (1134, 23),
                                                                   (1135, 17),
                                                                   (1135, 24),
                                                                   (1136, 18),
                                                                   (1136, 22),
                                                                   (1137, 16),
                                                                   (1138, 21),
                                                                   (1138, 25),
                                                                   (1139, 16),
                                                                   (1139, 19),
                                                                   (1139, 23),
                                                                   (1140, 17),
                                                                   (1140, 24),
                                                                   (1141, 16),
                                                                   (1141, 19),
                                                                   (1141, 23),
                                                                   (1142, 17),
                                                                   (1143, 19),
                                                                   (1143, 26),
                                                                   (1144, 16),
                                                                   (1144, 20),
                                                                   (1145, 18),
                                                                   (1146, 16),
                                                                   (1146, 23),
                                                                   (1147, 17),
                                                                   (1148, 19),
                                                                   (1148, 26),
                                                                   (1149, 16),
                                                                   (1149, 20),
                                                                   (1150, 18),
                                                                   (1151, 16),
                                                                   (1151, 23),
                                                                   (1152, 17),
                                                                   (1153, 19),
                                                                   (1154, 20),
                                                                   (1155, 16),
                                                                   (1155, 19),
                                                                   (1155, 23),
                                                                   (1156, 17),
                                                                   (1157, 18),
                                                                   (1157, 22),
                                                                   (1158, 16),
                                                                   (1158, 20),
                                                                   (1159, 25),
                                                                   (1160, 16),
                                                                   (1160, 19),
                                                                   (1160, 23),
                                                                   (1161, 17),
                                                                   (1162, 22),
                                                                   (1163, 16),
                                                                   (1163, 20),
                                                                   (1164, 18),
                                                                   (1165, 16),
                                                                   (1165, 19),
                                                                   (1165, 23),
                                                                   (1166, 17),
                                                                   (1167, 19),
                                                                   (1167, 22),
                                                                   (1168, 16),
                                                                   (1168, 20),
                                                                   (1169, 18),
                                                                   (1170, 17),
                                                                   (1170, 24),
                                                                   (1171, 18),
                                                                   (1171, 22),
                                                                   (1172, 16),
                                                                   (1173, 17),
                                                                   (1173, 21),
                                                                   (1173, 25),
                                                                   (1174, 16),
                                                                   (1174, 19),
                                                                   (1174, 23),
                                                                   (1175, 17),
                                                                   (1175, 24),
                                                                   (1176, 18),
                                                                   (1176, 22),
                                                                   (1177, 16),
                                                                   (1178, 21),
                                                                   (1178, 25),
                                                                   (1179, 16),
                                                                   (1179, 19),
                                                                   (1179, 23),
                                                                   (1180, 17),
                                                                   (1181, 18),
                                                                   (1181, 22),
                                                                   (1182, 16),
                                                                   (1183, 21),
                                                                   (1183, 25),
                                                                   (1184, 16),
                                                                   (1184, 20),
                                                                   (1185, 18),
                                                                   (1186, 16),
                                                                   (1186, 23),
                                                                   (1187, 17),
                                                                   (1188, 19),
                                                                   (1189, 16),
                                                                   (1189, 20),
                                                                   (1190, 18),
                                                                   (1191, 16),
                                                                   (1191, 23),
                                                                   (1192, 17),
                                                                   (1192, 21),
                                                                   (1193, 19),
                                                                   (1194, 17),
                                                                   (1194, 20),
                                                                   (1194, 24),
                                                                   (1195, 18),
                                                                   (1195, 22),
                                                                   (1196, 16),
                                                                   (1197, 17),
                                                                   (1197, 21),
                                                                   (1198, 19),
                                                                   (1199, 25),
                                                                   (1200, 16),
                                                                   (1200, 19),
                                                                   (1200, 23),
                                                                   (1201, 17),
                                                                   (1202, 22),
                                                                   (1203, 16),
                                                                   (1203, 20),
                                                                   (1204, 18),
                                                                   (1205, 16),
                                                                   (1205, 19),
                                                                   (1205, 23),
                                                                   (1206, 17),
                                                                   (1207, 19),
                                                                   (1207, 22),
                                                                   (1208, 16),
                                                                   (1208, 20),
                                                                   (1209, 18),
                                                                   (1210, 16),
                                                                   (1210, 19),
                                                                   (1210, 23),
                                                                   (1211, 17),
                                                                   (1212, 19),
                                                                   (1212, 26),
                                                                   (1213, 16),
                                                                   (1213, 20),
                                                                   (1214, 16),
                                                                   (1214, 19),
                                                                   (1214, 23),
                                                                   (1215, 17),
                                                                   (1215, 24),
                                                                   (1216, 18),
                                                                   (1216, 22),
                                                                   (1217, 16),
                                                                   (1218, 21),
                                                                   (1218, 25),
                                                                   (1219, 16),
                                                                   (1219, 19),
                                                                   (1219, 23),
                                                                   (1220, 17),
                                                                   (1221, 18),
                                                                   (1221, 22),
                                                                   (1222, 16),
                                                                   (1222, 20),
                                                                   (1223, 21),
                                                                   (1223, 25),
                                                                   (1224, 16),
                                                                   (1224, 19),
                                                                   (1224, 23),
                                                                   (1225, 17),
                                                                   (1226, 18),
                                                                   (1226, 22),
                                                                   (1227, 16),
                                                                   (1227, 20),
                                                                   (1228, 19),
                                                                   (1229, 20),
                                                                   (1230, 18),
                                                                   (1231, 16),
                                                                   (1231, 23),
                                                                   (1232, 17),
                                                                   (1232, 21),
                                                                   (1233, 19),
                                                                   (1234, 17),
                                                                   (1234, 20),
                                                                   (1234, 24),
                                                                   (1235, 18),
                                                                   (1235, 22),
                                                                   (1236, 16),
                                                                   (1237, 17),
                                                                   (1237, 21),
                                                                   (1238, 19),
                                                                   (1239, 17),
                                                                   (1239, 24),
                                                                   (1240, 18),
                                                                   (1240, 22),
                                                                   (1241, 16),
                                                                   (1242, 17),
                                                                   (1242, 21),
                                                                   (1242, 25),
                                                                   (1243, 16),
                                                                   (1243, 20),
                                                                   (1244, 18),
                                                                   (1245, 16),
                                                                   (1245, 19),
                                                                   (1245, 23),
                                                                   (1246, 17),
                                                                   (1247, 19),
                                                                   (1247, 26),
                                                                   (1248, 16),
                                                                   (1248, 20),
                                                                   (1249, 18),
                                                                   (1250, 16),
                                                                   (1250, 19),
                                                                   (1250, 23),
                                                                   (1251, 17),
                                                                   (1252, 19),
                                                                   (1252, 26),
                                                                   (1253, 16),
                                                                   (1253, 20),
                                                                   (1254, 18),
                                                                   (1255, 16),
                                                                   (1255, 23),
                                                                   (1256, 17),
                                                                   (1257, 16),
                                                                   (1257, 26),
                                                                   (1258, 21),
                                                                   (1258, 25),
                                                                   (1259, 16),
                                                                   (1259, 19),
                                                                   (1259, 23),
                                                                   (1260, 17),
                                                                   (1261, 18),
                                                                   (1261, 22),
                                                                   (1262, 16),
                                                                   (1262, 20),
                                                                   (1263, 25),
                                                                   (1264, 16),
                                                                   (1264, 19),
                                                                   (1264, 23),
                                                                   (1265, 17),
                                                                   (1266, 18),
                                                                   (1266, 22),
                                                                   (1267, 16),
                                                                   (1267, 20),
                                                                   (1268, 25),
                                                                   (1269, 16),
                                                                   (1269, 19),
                                                                   (1269, 23),
                                                                   (1270, 17),
                                                                   (1271, 22),
                                                                   (1272, 17),
                                                                   (1272, 21),
                                                                   (1273, 19),
                                                                   (1274, 17),
                                                                   (1274, 20),
                                                                   (1274, 24),
                                                                   (1275, 18),
                                                                   (1275, 22),
                                                                   (1276, 16),
                                                                   (1277, 17),
                                                                   (1277, 21),
                                                                   (1277, 25),
                                                                   (1278, 19),
                                                                   (1279, 17),
                                                                   (1279, 24),
                                                                   (1280, 18),
                                                                   (1280, 22),
                                                                   (1281, 16),
                                                                   (1282, 17),
                                                                   (1282, 21),
                                                                   (1282, 25),
                                                                   (1283, 16),
                                                                   (1283, 19),
                                                                   (1283, 23),
                                                                   (1284, 17),
                                                                   (1284, 24),
                                                                   (1285, 18),
                                                                   (1285, 22),
                                                                   (1286, 16),
                                                                   (1287, 19),
                                                                   (1287, 26),
                                                                   (1288, 16),
                                                                   (1288, 20),
                                                                   (1289, 18),
                                                                   (1290, 16),
                                                                   (1290, 19),
                                                                   (1290, 23),
                                                                   (1291, 17),
                                                                   (1292, 19),
                                                                   (1292, 26),
                                                                   (1293, 16),
                                                                   (1293, 20),
                                                                   (1294, 18),
                                                                   (1295, 16),
                                                                   (1295, 23),
                                                                   (1296, 17),
                                                                   (1297, 19),
                                                                   (1298, 16),
                                                                   (1298, 20),
                                                                   (1299, 18),
                                                                   (1300, 16),
                                                                   (1300, 23),
                                                                   (1301, 18),
                                                                   (1301, 22),
                                                                   (1302, 16),
                                                                   (1302, 20),
                                                                   (1303, 25),
                                                                   (1304, 16),
                                                                   (1304, 19),
                                                                   (1304, 23),
                                                                   (1305, 17),
                                                                   (1306, 18),
                                                                   (1306, 22),
                                                                   (1307, 16),
                                                                   (1307, 20),
                                                                   (1308, 25),
                                                                   (1309, 16),
                                                                   (1309, 19),
                                                                   (1309, 23),
                                                                   (1310, 17),
                                                                   (1311, 22),
                                                                   (1312, 16),
                                                                   (1312, 20),
                                                                   (1313, 18),
                                                                   (1314, 16),
                                                                   (1314, 19),
                                                                   (1314, 23),
                                                                   (1315, 17),
                                                                   (1316, 16),
                                                                   (1317, 17),
                                                                   (1317, 21),
                                                                   (1317, 25),
                                                                   (1318, 19),
                                                                   (1318, 23),
                                                                   (1319, 17),
                                                                   (1319, 24),
                                                                   (1320, 18),
                                                                   (1320, 22),
                                                                   (1321, 16),
                                                                   (1322, 21),
                                                                   (1322, 25),
                                                                   (1323, 16),
                                                                   (1323, 19),
                                                                   (1323, 23),
                                                                   (1324, 17),
                                                                   (1324, 24),
                                                                   (1325, 18),
                                                                   (1325, 22),
                                                                   (1326, 16),
                                                                   (1327, 21),
                                                                   (1327, 25),
                                                                   (1328, 16),
                                                                   (1328, 19),
                                                                   (1328, 23),
                                                                   (1329, 17),
                                                                   (1330, 18),
                                                                   (1330, 22),
                                                                   (1331, 17),
                                                                   (1332, 19),
                                                                   (1332, 26),
                                                                   (1333, 16),
                                                                   (1333, 20),
                                                                   (1334, 18),
                                                                   (1335, 16),
                                                                   (1335, 23),
                                                                   (1336, 17),
                                                                   (1337, 19),
                                                                   (1338, 20),
                                                                   (1339, 18),
                                                                   (1340, 16),
                                                                   (1340, 23),
                                                                   (1341, 17),
                                                                   (1341, 21),
                                                                   (1342, 19),
                                                                   (1343, 17),
                                                                   (1343, 20),
                                                                   (1343, 24),
                                                                   (1344, 18),
                                                                   (1344, 22),
                                                                   (1345, 17),
                                                                   (1346, 22),
                                                                   (1347, 16),
                                                                   (1347, 20),
                                                                   (1348, 18),
                                                                   (1349, 16),
                                                                   (1349, 19),
                                                                   (1349, 23),
                                                                   (1350, 17),
                                                                   (1351, 19),
                                                                   (1351, 22),
                                                                   (1352, 16),
                                                                   (1352, 20),
                                                                   (1353, 18),
                                                                   (1354, 16),
                                                                   (1354, 19),
                                                                   (1354, 23),
                                                                   (1355, 17),
                                                                   (1356, 19),
                                                                   (1356, 26),
                                                                   (1357, 16),
                                                                   (1357, 20),
                                                                   (1358, 18),
                                                                   (1359, 16),
                                                                   (1359, 19),
                                                                   (1359, 23),
                                                                   (1360, 18),
                                                                   (1360, 22),
                                                                   (1361, 16),
                                                                   (1362, 21),
                                                                   (1362, 25),
                                                                   (1363, 16),
                                                                   (1363, 19),
                                                                   (1363, 23),
                                                                   (1364, 17),
                                                                   (1365, 18),
                                                                   (1365, 22),
                                                                   (1366, 16),
                                                                   (1367, 21),
                                                                   (1367, 25),
                                                                   (1368, 16),
                                                                   (1368, 19),
                                                                   (1368, 23),
                                                                   (1369, 17),
                                                                   (1370, 18),
                                                                   (1370, 22),
                                                                   (1371, 16),
                                                                   (1371, 20),
                                                                   (1372, 25),
                                                                   (1373, 16),
                                                                   (1373, 19),
                                                                   (1373, 23),
                                                                   (1374, 18),
                                                                   (1375, 16),
                                                                   (1375, 23),
                                                                   (1376, 17),
                                                                   (1376, 21),
                                                                   (1377, 19),
                                                                   (1378, 17),
                                                                   (1378, 20),
                                                                   (1378, 24),
                                                                   (1379, 18),
                                                                   (1379, 22),
                                                                   (1380, 16),
                                                                   (1381, 17),
                                                                   (1381, 21),
                                                                   (1382, 19),
                                                                   (1383, 17),
                                                                   (1383, 20),
                                                                   (1383, 24),
                                                                   (1384, 18),
                                                                   (1384, 22),
                                                                   (1385, 16),
                                                                   (1386, 17),
                                                                   (1386, 21),
                                                                   (1386, 25),
                                                                   (1387, 19),
                                                                   (1388, 17),
                                                                   (1388, 24),
                                                                   (1389, 16),
                                                                   (1389, 19),
                                                                   (1389, 23),
                                                                   (1390, 17),
                                                                   (1391, 19),
                                                                   (1391, 22),
                                                                   (1392, 16),
                                                                   (1392, 20),
                                                                   (1393, 18),
                                                                   (1394, 16),
                                                                   (1394, 19),
                                                                   (1394, 23),
                                                                   (1395, 17),
                                                                   (1396, 19),
                                                                   (1396, 26),
                                                                   (1397, 16),
                                                                   (1397, 20),
                                                                   (1398, 18),
                                                                   (1399, 16),
                                                                   (1399, 19),
                                                                   (1399, 23),
                                                                   (1400, 17),
                                                                   (1401, 19),
                                                                   (1401, 26),
                                                                   (1402, 16),
                                                                   (1402, 20),
                                                                   (1403, 18),
                                                                   (1404, 17),
                                                                   (1405, 18),
                                                                   (1405, 22),
                                                                   (1406, 16),
                                                                   (1406, 20),
                                                                   (1407, 21),
                                                                   (1407, 25),
                                                                   (1408, 16),
                                                                   (1408, 19),
                                                                   (1408, 23),
                                                                   (1409, 17),
                                                                   (1410, 18),
                                                                   (1410, 22),
                                                                   (1411, 16),
                                                                   (1411, 20),
                                                                   (1412, 25),
                                                                   (1413, 16),
                                                                   (1413, 19),
                                                                   (1413, 23),
                                                                   (1414, 17),
                                                                   (1415, 18),
                                                                   (1415, 22),
                                                                   (1416, 16),
                                                                   (1416, 20),
                                                                   (1417, 25),
                                                                   (1418, 17),
                                                                   (1418, 20),
                                                                   (1418, 24),
                                                                   (1419, 18),
                                                                   (1419, 22),
                                                                   (1420, 16),
                                                                   (1421, 17),
                                                                   (1421, 21),
                                                                   (1422, 19),
                                                                   (1423, 17),
                                                                   (1423, 24),
                                                                   (1424, 18),
                                                                   (1424, 22),
                                                                   (1425, 16),
                                                                   (1426, 17),
                                                                   (1426, 21),
                                                                   (1426, 25),
                                                                   (1427, 19),
                                                                   (1427, 23),
                                                                   (1428, 17),
                                                                   (1428, 24),
                                                                   (1429, 18),
                                                                   (1429, 22),
                                                                   (1430, 16),
                                                                   (1431, 21),
                                                                   (1431, 25),
                                                                   (1432, 16),
                                                                   (1432, 19),
                                                                   (1432, 23),
                                                                   (1433, 18),
                                                                   (1434, 16),
                                                                   (1434, 19),
                                                                   (1434, 23),
                                                                   (1435, 17),
                                                                   (1436, 19),
                                                                   (1436, 26),
                                                                   (1437, 16),
                                                                   (1437, 20),
                                                                   (1438, 18),
                                                                   (1439, 16),
                                                                   (1439, 23),
                                                                   (1440, 17),
                                                                   (1441, 19),
                                                                   (1441, 26),
                                                                   (1442, 16),
                                                                   (1442, 20),
                                                                   (1443, 18),
                                                                   (1444, 16),
                                                                   (1444, 23),
                                                                   (1445, 17),
                                                                   (1446, 19),
                                                                   (1447, 25),
                                                                   (1448, 16),
                                                                   (1448, 19),
                                                                   (1448, 23),
                                                                   (1449, 17),
                                                                   (1450, 18),
                                                                   (1450, 22),
                                                                   (1451, 16),
                                                                   (1451, 20),
                                                                   (1452, 25),
                                                                   (1453, 16),
                                                                   (1453, 19),
                                                                   (1453, 23),
                                                                   (1454, 17),
                                                                   (1455, 22),
                                                                   (1456, 16),
                                                                   (1456, 20),
                                                                   (1457, 25),
                                                                   (1458, 16),
                                                                   (1458, 19),
                                                                   (1458, 23),
                                                                   (1459, 17),
                                                                   (1460, 19),
                                                                   (1460, 22),
                                                                   (1461, 16),
                                                                   (1461, 20),
                                                                   (1462, 19),
                                                                   (1463, 17),
                                                                   (1463, 24),
                                                                   (1464, 18),
                                                                   (1464, 22),
                                                                   (1465, 16),
                                                                   (1466, 17),
                                                                   (1466, 21),
                                                                   (1466, 25),
                                                                   (1467, 16),
                                                                   (1467, 19),
                                                                   (1467, 23),
                                                                   (1468, 17),
                                                                   (1468, 24),
                                                                   (1469, 18),
                                                                   (1469, 22),
                                                                   (1470, 16),
                                                                   (1471, 21),
                                                                   (1471, 25),
                                                                   (1472, 16),
                                                                   (1472, 19),
                                                                   (1472, 23),
                                                                   (1473, 17),
                                                                   (1474, 18),
                                                                   (1474, 22),
                                                                   (1475, 16),
                                                                   (1476, 21),
                                                                   (1476, 25),
                                                                   (1477, 16),
                                                                   (1477, 20),
                                                                   (1478, 18),
                                                                   (1479, 16),
                                                                   (1479, 23),
                                                                   (1480, 17),
                                                                   (1481, 19),
                                                                   (1482, 16),
                                                                   (1482, 20),
                                                                   (1483, 18),
                                                                   (1484, 16),
                                                                   (1484, 23),
                                                                   (1485, 17),
                                                                   (1485, 21),
                                                                   (1486, 19),
                                                                   (1487, 17),
                                                                   (1487, 20),
                                                                   (1487, 24),
                                                                   (1488, 18),
                                                                   (1488, 22),
                                                                   (1489, 16),
                                                                   (1490, 17),
                                                                   (1490, 21),
                                                                   (1491, 16),
                                                                   (1491, 20),
                                                                   (1492, 25),
                                                                   (1493, 16),
                                                                   (1493, 19),
                                                                   (1493, 23),
                                                                   (1494, 17),
                                                                   (1495, 22),
                                                                   (1496, 16),
                                                                   (1496, 20),
                                                                   (1497, 18),
                                                                   (1498, 16),
                                                                   (1498, 19),
                                                                   (1498, 23),
                                                                   (1499, 17),
                                                                   (1500, 19),
                                                                   (1500, 22),
                                                                   (1501, 16),
                                                                   (1501, 20),
                                                                   (1502, 18),
                                                                   (1503, 16),
                                                                   (1503, 19),
                                                                   (1503, 23),
                                                                   (1504, 17),
                                                                   (1505, 19),
                                                                   (1505, 26),
                                                                   (1506, 21),
                                                                   (1506, 25),
                                                                   (1507, 16),
                                                                   (1507, 19),
                                                                   (1507, 23),
                                                                   (1508, 17),
                                                                   (1508, 24),
                                                                   (1509, 18),
                                                                   (1509, 22),
                                                                   (1510, 16),
                                                                   (1511, 21),
                                                                   (1511, 25),
                                                                   (1512, 16),
                                                                   (1512, 19),
                                                                   (1512, 23),
                                                                   (1513, 17),
                                                                   (1514, 18),
                                                                   (1514, 22),
                                                                   (1515, 16),
                                                                   (1515, 20),
                                                                   (1516, 21),
                                                                   (1516, 25),
                                                                   (1517, 16),
                                                                   (1517, 19),
                                                                   (1517, 23),
                                                                   (1518, 17),
                                                                   (1519, 18),
                                                                   (1519, 22),
                                                                   (1520, 17),
                                                                   (1520, 20),
                                                                   (1521, 19),
                                                                   (1522, 20),
                                                                   (1523, 18),
                                                                   (1524, 16),
                                                                   (1524, 23),
                                                                   (1525, 17),
                                                                   (1525, 21),
                                                                   (1526, 19),
                                                                   (1527, 17),
                                                                   (1527, 20),
                                                                   (1527, 24),
                                                                   (1528, 18),
                                                                   (1528, 22),
                                                                   (1529, 16),
                                                                   (1530, 17),
                                                                   (1530, 21),
                                                                   (1531, 19),
                                                                   (1532, 17),
                                                                   (1532, 20),
                                                                   (1532, 24),
                                                                   (1533, 18),
                                                                   (1533, 22),
                                                                   (1534, 16),
                                                                   (1535, 19),
                                                                   (1535, 22),
                                                                   (1536, 16),
                                                                   (1536, 20),
                                                                   (1537, 18),
                                                                   (1538, 16),
                                                                   (1538, 19),
                                                                   (1538, 23),
                                                                   (1539, 17),
                                                                   (1540, 19),
                                                                   (1540, 26),
                                                                   (1541, 16),
                                                                   (1541, 20),
                                                                   (1542, 18),
                                                                   (1543, 16),
                                                                   (1543, 19),
                                                                   (1543, 23),
                                                                   (1544, 17),
                                                                   (1545, 19),
                                                                   (1545, 26),
                                                                   (1546, 16),
                                                                   (1546, 20),
                                                                   (1547, 18),
                                                                   (1548, 16),
                                                                   (1548, 23),
                                                                   (1549, 17),
                                                                   (1550, 16),
                                                                   (1551, 21),
                                                                   (1551, 25),
                                                                   (1552, 16),
                                                                   (1552, 19),
                                                                   (1552, 23),
                                                                   (1553, 17),
                                                                   (1554, 18),
                                                                   (1554, 22),
                                                                   (1555, 16),
                                                                   (1555, 20),
                                                                   (1556, 25),
                                                                   (1557, 16),
                                                                   (1557, 19),
                                                                   (1557, 23),
                                                                   (1558, 17),
                                                                   (1559, 18),
                                                                   (1559, 22),
                                                                   (1560, 16),
                                                                   (1560, 20),
                                                                   (1561, 25),
                                                                   (1562, 16),
                                                                   (1562, 19),
                                                                   (1562, 23),
                                                                   (1563, 17),
                                                                   (1564, 16),
                                                                   (1565, 17),
                                                                   (1565, 21),
                                                                   (1566, 19),
                                                                   (1567, 17),
                                                                   (1567, 20),
                                                                   (1567, 24),
                                                                   (1568, 18),
                                                                   (1568, 22),
                                                                   (1569, 16),
                                                                   (1570, 17),
                                                                   (1570, 21),
                                                                   (1570, 25),
                                                                   (1571, 19),
                                                                   (1572, 17),
                                                                   (1572, 24),
                                                                   (1573, 18),
                                                                   (1573, 22),
                                                                   (1574, 16),
                                                                   (1575, 17),
                                                                   (1575, 21),
                                                                   (1575, 25),
                                                                   (1576, 16),
                                                                   (1576, 19),
                                                                   (1576, 23),
                                                                   (1577, 17),
                                                                   (1577, 24),
                                                                   (1578, 18),
                                                                   (1578, 22),
                                                                   (1579, 17),
                                                                   (1580, 19),
                                                                   (1580, 26),
                                                                   (1581, 16),
                                                                   (1581, 20),
                                                                   (1582, 18),
                                                                   (1583, 16),
                                                                   (1583, 19),
                                                                   (1583, 23),
                                                                   (1584, 17),
                                                                   (1585, 19),
                                                                   (1585, 26),
                                                                   (1586, 16),
                                                                   (1586, 20),
                                                                   (1587, 18),
                                                                   (1588, 16),
                                                                   (1588, 23),
                                                                   (1589, 17),
                                                                   (1590, 19),
                                                                   (1591, 16),
                                                                   (1591, 20),
                                                                   (1592, 18),
                                                                   (1593, 16),
                                                                   (1593, 23),
                                                                   (1594, 18),
                                                                   (1594, 22),
                                                                   (1595, 16),
                                                                   (1595, 20),
                                                                   (1596, 25),
                                                                   (1597, 16),
                                                                   (1597, 19),
                                                                   (1597, 23),
                                                                   (1598, 17),
                                                                   (1599, 18),
                                                                   (1599, 22),
                                                                   (1600, 16),
                                                                   (1600, 20),
                                                                   (1601, 25),
                                                                   (1602, 16),
                                                                   (1602, 19),
                                                                   (1602, 23),
                                                                   (1603, 17),
                                                                   (1604, 22),
                                                                   (1605, 16),
                                                                   (1605, 20),
                                                                   (1606, 18),
                                                                   (1607, 16),
                                                                   (1607, 19),
                                                                   (1607, 23),
                                                                   (1608, 18),
                                                                   (1608, 22),
                                                                   (1609, 16),
                                                                   (1610, 17),
                                                                   (1610, 21),
                                                                   (1610, 25),
                                                                   (1611, 19),
                                                                   (1611, 23),
                                                                   (1612, 17),
                                                                   (1612, 24),
                                                                   (1613, 18),
                                                                   (1613, 22),
                                                                   (1614, 16),
                                                                   (1615, 21),
                                                                   (1615, 25),
                                                                   (1616, 16),
                                                                   (1616, 19),
                                                                   (1616, 23),
                                                                   (1617, 17),
                                                                   (1617, 24),
                                                                   (1618, 18),
                                                                   (1618, 22),
                                                                   (1619, 16),
                                                                   (1620, 21),
                                                                   (1620, 25),
                                                                   (1621, 16),
                                                                   (1621, 19),
                                                                   (1621, 23),
                                                                   (1622, 17),
                                                                   (1623, 16),
                                                                   (1623, 23),
                                                                   (1624, 17),
                                                                   (1625, 19),
                                                                   (1625, 26),
                                                                   (1626, 16),
                                                                   (1626, 20),
                                                                   (1627, 18),
                                                                   (1628, 16),
                                                                   (1628, 23),
                                                                   (1629, 17),
                                                                   (1630, 19),
                                                                   (1631, 20),
                                                                   (1632, 18),
                                                                   (1633, 16),
                                                                   (1633, 23),
                                                                   (1634, 17),
                                                                   (1634, 21),
                                                                   (1635, 19),
                                                                   (1636, 17),
                                                                   (1636, 20),
                                                                   (1636, 24),
                                                                   (1637, 16),
                                                                   (1637, 19),
                                                                   (1637, 23),
                                                                   (1638, 17),
                                                                   (1639, 22),
                                                                   (1640, 16),
                                                                   (1640, 20),
                                                                   (1641, 25),
                                                                   (1642, 16),
                                                                   (1642, 19),
                                                                   (1642, 23),
                                                                   (1643, 17),
                                                                   (1644, 19),
                                                                   (1644, 22),
                                                                   (1645, 16),
                                                                   (1645, 20),
                                                                   (1646, 18),
                                                                   (1647, 16),
                                                                   (1647, 19),
                                                                   (1647, 23),
                                                                   (1648, 17),
                                                                   (1649, 19),
                                                                   (1649, 26),
                                                                   (1650, 16),
                                                                   (1650, 20),
                                                                   (1651, 18),
                                                                   (1652, 17),
                                                                   (1652, 24),
                                                                   (1653, 18),
                                                                   (1653, 22),
                                                                   (1654, 16),
                                                                   (1655, 21),
                                                                   (1655, 25),
                                                                   (1656, 16),
                                                                   (1656, 19),
                                                                   (1656, 23),
                                                                   (1657, 17),
                                                                   (1658, 18),
                                                                   (1658, 22),
                                                                   (1659, 16),
                                                                   (1660, 21),
                                                                   (1660, 25),
                                                                   (1661, 16),
                                                                   (1661, 19),
                                                                   (1661, 23),
                                                                   (1662, 17),
                                                                   (1663, 18),
                                                                   (1663, 22),
                                                                   (1664, 16),
                                                                   (1664, 20),
                                                                   (1665, 25),
                                                                   (1666, 16),
                                                                   (1666, 19),
                                                                   (1666, 23),
                                                                   (1667, 18),
                                                                   (1668, 16),
                                                                   (1668, 23),
                                                                   (1669, 17),
                                                                   (1669, 21),
                                                                   (1670, 19),
                                                                   (1671, 17),
                                                                   (1671, 20),
                                                                   (1671, 24),
                                                                   (1672, 18),
                                                                   (1672, 22),
                                                                   (1673, 16),
                                                                   (1674, 17),
                                                                   (1674, 21),
                                                                   (1675, 19),
                                                                   (1676, 17),
                                                                   (1676, 20),
                                                                   (1676, 24),
                                                                   (1677, 18),
                                                                   (1677, 22),
                                                                   (1678, 16),
                                                                   (1679, 17),
                                                                   (1679, 21),
                                                                   (1679, 25),
                                                                   (1680, 19),
                                                                   (1681, 18),
                                                                   (1682, 16),
                                                                   (1682, 19),
                                                                   (1682, 23),
                                                                   (1683, 17),
                                                                   (1684, 19),
                                                                   (1684, 22),
                                                                   (1685, 16),
                                                                   (1685, 20),
                                                                   (1686, 18),
                                                                   (1687, 16),
                                                                   (1687, 19),
                                                                   (1687, 23),
                                                                   (1688, 17),
                                                                   (1689, 19),
                                                                   (1689, 26),
                                                                   (1690, 16),
                                                                   (1690, 20),
                                                                   (1691, 18),
                                                                   (1692, 16),
                                                                   (1692, 19),
                                                                   (1692, 23),
                                                                   (1693, 17),
                                                                   (1694, 19),
                                                                   (1694, 26),
                                                                   (1695, 16),
                                                                   (1695, 20),
                                                                   (1696, 16),
                                                                   (1696, 19),
                                                                   (1696, 23),
                                                                   (1697, 17),
                                                                   (1698, 18),
                                                                   (1698, 22),
                                                                   (1699, 16),
                                                                   (1699, 20),
                                                                   (1700, 21),
                                                                   (1700, 25),
                                                                   (1701, 16),
                                                                   (1701, 19),
                                                                   (1701, 23),
                                                                   (1702, 17),
                                                                   (1703, 18),
                                                                   (1703, 22),
                                                                   (1704, 16),
                                                                   (1704, 20),
                                                                   (1705, 25),
                                                                   (1706, 16),
                                                                   (1706, 19),
                                                                   (1706, 23),
                                                                   (1707, 17),
                                                                   (1708, 18),
                                                                   (1708, 22),
                                                                   (1709, 16),
                                                                   (1709, 20),
                                                                   (1710, 19),
                                                                   (1710, 25),
                                                                   (1711, 17),
                                                                   (1711, 20),
                                                                   (1711, 24),
                                                                   (1712, 18),
                                                                   (1712, 22),
                                                                   (1713, 16),
                                                                   (1714, 17),
                                                                   (1714, 21),
                                                                   (1715, 19),
                                                                   (1716, 17),
                                                                   (1716, 20),
                                                                   (1716, 24),
                                                                   (1717, 18),
                                                                   (1717, 22),
                                                                   (1718, 16),
                                                                   (1719, 17),
                                                                   (1719, 21),
                                                                   (1719, 25),
                                                                   (1720, 19),
                                                                   (1720, 23),
                                                                   (1721, 17),
                                                                   (1721, 24),
                                                                   (1722, 18),
                                                                   (1722, 22),
                                                                   (1723, 16),
                                                                   (1724, 21),
                                                                   (1724, 25),
                                                                   (1725, 16),
                                                                   (1725, 20),
                                                                   (1726, 18),
                                                                   (1727, 16),
                                                                   (1727, 19),
                                                                   (1727, 23),
                                                                   (1728, 17),
                                                                   (1729, 19),
                                                                   (1729, 26),
                                                                   (1730, 16),
                                                                   (1730, 20),
                                                                   (1731, 18),
                                                                   (1732, 16),
                                                                   (1732, 23),
                                                                   (1733, 17),
                                                                   (1734, 19),
                                                                   (1734, 26),
                                                                   (1735, 16),
                                                                   (1735, 20),
                                                                   (1736, 18),
                                                                   (1737, 16),
                                                                   (1737, 23),
                                                                   (1738, 17),
                                                                   (1739, 19),
                                                                   (1740, 25),
                                                                   (1741, 16),
                                                                   (1741, 19),
                                                                   (1741, 23),
                                                                   (1742, 17),
                                                                   (1743, 18),
                                                                   (1743, 22),
                                                                   (1744, 16),
                                                                   (1744, 20),
                                                                   (1745, 25),
                                                                   (1746, 16),
                                                                   (1746, 19),
                                                                   (1746, 23),
                                                                   (1747, 17),
                                                                   (1748, 22),
                                                                   (1749, 16),
                                                                   (1749, 20),
                                                                   (1750, 25),
                                                                   (1751, 16),
                                                                   (1751, 19),
                                                                   (1751, 23),
                                                                   (1752, 17),
                                                                   (1753, 19),
                                                                   (1753, 22),
                                                                   (1754, 17),
                                                                   (1754, 21),
                                                                   (1754, 25),
                                                                   (1755, 19),
                                                                   (1756, 17),
                                                                   (1756, 24),
                                                                   (1757, 18),
                                                                   (1757, 22),
                                                                   (1758, 16),
                                                                   (1759, 17),
                                                                   (1759, 21),
                                                                   (1759, 25),
                                                                   (1760, 16),
                                                                   (1760, 19),
                                                                   (1760, 23),
                                                                   (1761, 17),
                                                                   (1761, 24),
                                                                   (1762, 18),
                                                                   (1762, 22),
                                                                   (1763, 16),
                                                                   (1764, 21),
                                                                   (1764, 25),
                                                                   (1765, 16),
                                                                   (1765, 19),
                                                                   (1765, 23),
                                                                   (1766, 17),
                                                                   (1767, 18),
                                                                   (1767, 22),
                                                                   (1768, 16),
                                                                   (1769, 19),
                                                                   (1769, 26),
                                                                   (1770, 16),
                                                                   (1770, 20),
                                                                   (1771, 18),
                                                                   (1772, 16),
                                                                   (1772, 23),
                                                                   (1773, 17),
                                                                   (1774, 19),
                                                                   (1775, 16),
                                                                   (1775, 20),
                                                                   (1776, 18),
                                                                   (1777, 16),
                                                                   (1777, 23),
                                                                   (1778, 17),
                                                                   (1778, 21),
                                                                   (1779, 19),
                                                                   (1780, 17),
                                                                   (1780, 20),
                                                                   (1781, 18),
                                                                   (1781, 22),
                                                                   (1782, 16),
                                                                   (1783, 17),
                                                                   (1783, 21),
                                                                   (1784, 16),
                                                                   (1784, 20),
                                                                   (1785, 25),
                                                                   (1786, 16),
                                                                   (1786, 19),
                                                                   (1786, 23),
                                                                   (1787, 17),
                                                                   (1788, 22),
                                                                   (1789, 16),
                                                                   (1789, 20),
                                                                   (1790, 18),
                                                                   (1791, 16),
                                                                   (1791, 19),
                                                                   (1791, 23),
                                                                   (1792, 17),
                                                                   (1793, 19),
                                                                   (1793, 22),
                                                                   (1794, 16),
                                                                   (1794, 20),
                                                                   (1795, 18),
                                                                   (1796, 16),
                                                                   (1796, 19),
                                                                   (1796, 23),
                                                                   (1797, 17),
                                                                   (1798, 16),
                                                                   (1799, 21),
                                                                   (1799, 25),
                                                                   (1800, 16),
                                                                   (1800, 19),
                                                                   (1800, 23),
                                                                   (1801, 17),
                                                                   (1801, 24),
                                                                   (1802, 18),
                                                                   (1802, 22),
                                                                   (1803, 16),
                                                                   (1804, 21),
                                                                   (1804, 25),
                                                                   (1805, 16),
                                                                   (1805, 19),
                                                                   (1805, 23),
                                                                   (1806, 17),
                                                                   (1807, 18),
                                                                   (1807, 22),
                                                                   (1808, 16),
                                                                   (1808, 20),
                                                                   (1809, 21),
                                                                   (1809, 25),
                                                                   (1810, 16),
                                                                   (1810, 19),
                                                                   (1810, 23),
                                                                   (1811, 17),
                                                                   (1812, 18),
                                                                   (1812, 22),
                                                                   (1813, 17),
                                                                   (1814, 19),
                                                                   (1815, 20),
                                                                   (1816, 18),
                                                                   (1817, 16),
                                                                   (1817, 23),
                                                                   (1818, 17),
                                                                   (1818, 21),
                                                                   (1819, 19),
                                                                   (1820, 17),
                                                                   (1820, 20),
                                                                   (1820, 24),
                                                                   (1821, 18),
                                                                   (1821, 22),
                                                                   (1822, 16),
                                                                   (1823, 17),
                                                                   (1823, 21),
                                                                   (1824, 19),
                                                                   (1825, 17),
                                                                   (1825, 20),
                                                                   (1825, 24),
                                                                   (1826, 18),
                                                                   (1826, 22),
                                                                   (1827, 17),
                                                                   (1828, 19),
                                                                   (1828, 22),
                                                                   (1829, 16),
                                                                   (1829, 20),
                                                                   (1830, 18),
                                                                   (1831, 16),
                                                                   (1831, 19),
                                                                   (1831, 23),
                                                                   (1832, 17),
                                                                   (1833, 19),
                                                                   (1833, 26),
                                                                   (1834, 16),
                                                                   (1834, 20),
                                                                   (1835, 18),
                                                                   (1836, 16),
                                                                   (1836, 19),
                                                                   (1836, 23),
                                                                   (1837, 17),
                                                                   (1838, 19),
                                                                   (1838, 26),
                                                                   (1839, 16),
                                                                   (1839, 20),
                                                                   (1840, 18),
                                                                   (1841, 16),
                                                                   (1841, 23),
                                                                   (1842, 18),
                                                                   (1842, 22),
                                                                   (1843, 16),
                                                                   (1844, 21),
                                                                   (1844, 25),
                                                                   (1845, 16),
                                                                   (1845, 19),
                                                                   (1845, 23),
                                                                   (1846, 17),
                                                                   (1847, 18),
                                                                   (1847, 22),
                                                                   (1848, 16),
                                                                   (1848, 20),
                                                                   (1849, 25),
                                                                   (1850, 16),
                                                                   (1850, 19),
                                                                   (1850, 23),
                                                                   (1851, 17),
                                                                   (1852, 18),
                                                                   (1852, 22),
                                                                   (1853, 16),
                                                                   (1853, 20),
                                                                   (1854, 25),
                                                                   (1855, 16),
                                                                   (1855, 19),
                                                                   (1855, 23),
                                                                   (1856, 17),
                                                                   (1857, 16),
                                                                   (1858, 17),
                                                                   (1858, 21),
                                                                   (1859, 19),
                                                                   (1860, 17),
                                                                   (1860, 20),
                                                                   (1860, 24),
                                                                   (1861, 18),
                                                                   (1861, 22),
                                                                   (1862, 16),
                                                                   (1863, 17),
                                                                   (1863, 21),
                                                                   (1863, 25),
                                                                   (1864, 19),
                                                                   (1865, 17),
                                                                   (1865, 24),
                                                                   (1866, 18),
                                                                   (1866, 22),
                                                                   (1867, 16),
                                                                   (1868, 17),
                                                                   (1868, 21),
                                                                   (1868, 25),
                                                                   (1869, 16),
                                                                   (1869, 19),
                                                                   (1869, 23),
                                                                   (1870, 17),
                                                                   (1870, 24),
                                                                   (1871, 16),
                                                                   (1871, 19),
                                                                   (1871, 23),
                                                                   (1872, 17),
                                                                   (1873, 19),
                                                                   (1873, 26),
                                                                   (1874, 16),
                                                                   (1874, 20),
                                                                   (1875, 18),
                                                                   (1876, 16),
                                                                   (1876, 19),
                                                                   (1876, 23),
                                                                   (1877, 17),
                                                                   (1878, 19),
                                                                   (1878, 26),
                                                                   (1879, 16),
                                                                   (1879, 20),
                                                                   (1880, 18),
                                                                   (1881, 16),
                                                                   (1881, 23),
                                                                   (1882, 17),
                                                                   (1883, 19),
                                                                   (1884, 16),
                                                                   (1884, 20),
                                                                   (1885, 18),
                                                                   (1886, 17),
                                                                   (1887, 18),
                                                                   (1887, 22),
                                                                   (1888, 16),
                                                                   (1888, 20),
                                                                   (1889, 25),
                                                                   (1890, 16),
                                                                   (1890, 19),
                                                                   (1890, 23),
                                                                   (1891, 17),
                                                                   (1892, 18),
                                                                   (1892, 22),
                                                                   (1893, 16),
                                                                   (1893, 20),
                                                                   (1894, 25),
                                                                   (1895, 16),
                                                                   (1895, 19),
                                                                   (1895, 23),
                                                                   (1896, 17),
                                                                   (1897, 22),
                                                                   (1898, 16),
                                                                   (1898, 20),
                                                                   (1899, 18),
                                                                   (1900, 17),
                                                                   (1900, 20),
                                                                   (1900, 23),
                                                                   (1901, 18),
                                                                   (1901, 22),
                                                                   (1902, 16),
                                                                   (1903, 17),
                                                                   (1903, 21),
                                                                   (1903, 25),
                                                                   (1904, 19),
                                                                   (1904, 23),
                                                                   (1905, 17),
                                                                   (1905, 24),
                                                                   (1906, 18),
                                                                   (1906, 22),
                                                                   (1907, 16),
                                                                   (1908, 21),
                                                                   (1908, 25),
                                                                   (1909, 16),
                                                                   (1909, 19),
                                                                   (1909, 23),
                                                                   (1910, 17),
                                                                   (1910, 24),
                                                                   (1911, 18),
                                                                   (1911, 22),
                                                                   (1912, 16),
                                                                   (1913, 21),
                                                                   (1913, 25),
                                                                   (1914, 16),
                                                                   (1914, 19),
                                                                   (1914, 23),
                                                                   (1915, 18),
                                                                   (1916, 16),
                                                                   (1916, 23),
                                                                   (1917, 17),
                                                                   (1918, 19),
                                                                   (1918, 26),
                                                                   (1919, 16),
                                                                   (1919, 20),
                                                                   (1920, 18),
                                                                   (1921, 16),
                                                                   (1921, 23),
                                                                   (1922, 17),
                                                                   (1923, 19),
                                                                   (1924, 20),
                                                                   (1925, 18),
                                                                   (1926, 16),
                                                                   (1926, 23),
                                                                   (1927, 17),
                                                                   (1927, 21),
                                                                   (1928, 19),
                                                                   (1929, 17),
                                                                   (1929, 20),
                                                                   (1929, 24),
                                                                   (1930, 16),
                                                                   (1930, 19),
                                                                   (1930, 23),
                                                                   (1931, 17),
                                                                   (1932, 22),
                                                                   (1933, 16),
                                                                   (1933, 20),
                                                                   (1934, 25),
                                                                   (1935, 16),
                                                                   (1935, 19),
                                                                   (1935, 23),
                                                                   (1936, 17),
                                                                   (1937, 19),
                                                                   (1937, 22),
                                                                   (1938, 16),
                                                                   (1938, 20),
                                                                   (1939, 18),
                                                                   (1940, 16),
                                                                   (1940, 19),
                                                                   (1940, 23),
                                                                   (1941, 17),
                                                                   (1942, 19),
                                                                   (1942, 22),
                                                                   (1942, 26),
                                                                   (1943, 16),
                                                                   (1943, 20),
                                                                   (1944, 16),
                                                                   (1944, 19),
                                                                   (1944, 23),
                                                                   (1945, 17),
                                                                   (1945, 24),
                                                                   (1946, 18),
                                                                   (1946, 22),
                                                                   (1947, 16),
                                                                   (1948, 21),
                                                                   (1948, 25),
                                                                   (1949, 16),
                                                                   (1949, 19),
                                                                   (1949, 23),
                                                                   (1950, 17),
                                                                   (1951, 18),
                                                                   (1951, 22),
                                                                   (1952, 16),
                                                                   (1953, 21),
                                                                   (1953, 25),
                                                                   (1954, 16),
                                                                   (1954, 19),
                                                                   (1954, 23),
                                                                   (1955, 17),
                                                                   (1956, 18),
                                                                   (1956, 22),
                                                                   (1957, 16),
                                                                   (1957, 20),
                                                                   (1958, 25),
                                                                   (1959, 16),
                                                                   (1959, 20),
                                                                   (1960, 18),
                                                                   (1961, 16),
                                                                   (1961, 23),
                                                                   (1962, 17),
                                                                   (1962, 21),
                                                                   (1963, 19),
                                                                   (1964, 17),
                                                                   (1964, 20),
                                                                   (1965, 18),
                                                                   (1965, 22),
                                                                   (1966, 16),
                                                                   (1967, 17),
                                                                   (1967, 21),
                                                                   (1968, 19),
                                                                   (1969, 17),
                                                                   (1969, 20),
                                                                   (1969, 24),
                                                                   (1970, 18),
                                                                   (1970, 22),
                                                                   (1971, 16),
                                                                   (1972, 17),
                                                                   (1972, 21),
                                                                   (1972, 25),
                                                                   (1973, 19),
                                                                   (1974, 18),
                                                                   (1975, 16),
                                                                   (1975, 19),
                                                                   (1975, 23),
                                                                   (1976, 17),
                                                                   (1977, 19),
                                                                   (1977, 22),
                                                                   (1978, 16),
                                                                   (1978, 20),
                                                                   (1979, 18),
                                                                   (1980, 16),
                                                                   (1980, 19),
                                                                   (1980, 23),
                                                                   (1981, 17),
                                                                   (1982, 19),
                                                                   (1982, 26),
                                                                   (1983, 16),
                                                                   (1983, 20),
                                                                   (1984, 18),
                                                                   (1985, 16),
                                                                   (1985, 19),
                                                                   (1985, 23),
                                                                   (1986, 17),
                                                                   (1987, 19),
                                                                   (1987, 26),
                                                                   (1988, 21),
                                                                   (1988, 25),
                                                                   (1989, 16),
                                                                   (1989, 19),
                                                                   (1989, 23),
                                                                   (1990, 17),
                                                                   (1991, 18),
                                                                   (1991, 22),
                                                                   (1992, 16),
                                                                   (1992, 20),
                                                                   (1993, 21),
                                                                   (1993, 25),
                                                                   (1994, 16),
                                                                   (1994, 19),
                                                                   (1994, 23),
                                                                   (1995, 17),
                                                                   (1996, 18),
                                                                   (1996, 22),
                                                                   (1997, 16),
                                                                   (1997, 20),
                                                                   (1998, 25),
                                                                   (1999, 16),
                                                                   (1999, 19),
                                                                   (1999, 23);

ALTER SEQUENCE idgenerator RESTART WITH 5000;
