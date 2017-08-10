# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Participant.create(name: 'John Doe', gender: 'male', birthday: '19930620')
Participant.create(name: 'Katarina Muhlfeld', gender: 'female', birthday: '19900815')
Participant.create(name: 'Stanko Apostolov', gender: 'male', birthday: '19950206')
Participant.create(name: 'Waleria Rudawski', gender: 'female', birthday: '19970324')
Participant.create(name: 'Mina Narang', gender: 'female', birthday: '19941109')

Participant.create(name: 'Qiu Sun', gender: 'female', birthday: '19930620')
Participant.create(name: 'Eskandar Lee', gender: 'male', birthday: '19900815')
Participant.create(name: 'Siavash Fenstermacher', gender: 'male', birthday: '19950206')
Participant.create(name: 'Parth Darzi', gender: 'male', birthday: '19970324')
Participant.create(name: 'Joanne Marion', gender: 'female', birthday: '19941109')

Participant.create(name: 'Mannix Rodagh', gender: 'male', birthday: '19930620')
Participant.create(name: 'Jia Lu', gender: 'male', birthday: '19900815')
Participant.create(name: 'Avra Michelakis', gender: 'female', birthday: '19950206')
Participant.create(name: 'Zsuzsanna Varga', gender: 'female', birthday: '19970324')
Participant.create(name: 'Nellie Pierce', gender: 'female', birthday: '19941109')

Participant.create(name: 'Judy Cooper', gender: 'female', birthday: '19851025')
Participant.create(name: 'Joseph Munford', gender: 'male', birthday: '19890909')
Participant.create(name: 'Eisei Nagai', gender: 'male', birthday: '19910812')
Participant.create(name: 'Marissa Erickson', gender: 'female', birthday: '19970104')
Participant.create(name: 'Troy Martin', gender: 'male', birthday: '19870304')

registry1 = Registry.create(name: 'Northwestern', location: 'Evanston')
registry2 = Registry.create(name: 'Loyola', location: 'Chicago')
registry3 = Registry.create(name: 'Depaul', location: 'Chicago')
registry4 = Registry.create(name: 'IIT', location: 'Chicago')
registry5 = Registry.create(name: 'UChicago', location: 'Chicago')
registry6 = Registry.create(name: 'Roosevelt', location: 'Chicago')
registry7 = Registry.create(name: 'Columbia', location: 'Chicago')
registry8 = Registry.create(name: 'UIC', location: 'Chicago')
registry9 = Registry.create(name: 'Northeastern', location: 'Chicago')
registry10 = Registry.create(name: 'North Park', location: 'Chicago')

coordinator1 = Coordinator.create(name: 'Konstantina Megalos', phone_number: '8478990134', email: 'kmegalos@ggmail.com')
coordinator2 = Coordinator.create(name: 'Valerie Rowe', phone_number: '808-885-2930', email: 'valeriegrowe@rhyta.com')
coordinator3 = Coordinator.create(name: 'Laura Herrera', phone_number: '815-286-8744', email: 'lauracherrera@jourrapide.com')
coordinator4 = Coordinator.create(name: 'Sean Gidley', phone_number: '201-280-4762', email: 'seanbgidley@teleworm.us')
coordinator5 = Coordinator.create(name: 'Julia Santos', phone_number: '646-308-8883', email: 'juliacostasantos@dayrep.com')
coordinator6 = Coordinator.create(name: 'Miloslav Vostry', phone_number: '858-720-8783', email: 'miloslavvostry@jourrapide.com')
coordinator7 = Coordinator.create(name: 'Zinzi van Haagen', phone_number: '310-752-4442', email: 'zinzivanhaagen@teleworm.us')
coordinator8 = Coordinator.create(name: 'Inca Solís Ojeda', phone_number: '937-382-9638', email: 'incasolisojeda@jourrapide.com')
coordinator9 = Coordinator.create(name: 'Lee Yin', phone_number: '309-228-8521', email: 'leeyin@armyspy.com')
coordinator10 = Coordinator.create(name: 'Klementyna Szczepanska', phone_number: '410-574-7193', email: 'klementynaszczepanska@armyspy.com')

registry1.coordinators << coordinator2 << coordinator5 << coordinator6
registry2.coordinators << coordinator3 << coordinator4
registry3.coordinators << coordinator1 << coordinator7
registry4.coordinators << coordinator6 << coordinator9
registry5.coordinators << coordinator8 << coordinator10
registry6.coordinators << coordinator7
registry7.coordinators << coordinator4
registry8.coordinators << coordinator6
registry9.coordinators << coordinator7
registry10.coordinators << coordinator10

Enrollment.create(date_of_enrollment: '20160801', contact: '8479924095', remarks: 'none', participant_id: 1, registry_id: 1, coordinator_id: 6)
Enrollment.create(date_of_enrollment: '20160710', contact: 'kmuhlfeld@attt.net', remarks: 'none', participant_id: 2, registry_id: 4, coordinator_id: 6)
Enrollment.create(date_of_enrollment: '20160710', contact: '3129904324', remarks: 'none', participant_id: 15, registry_id: 8, coordinator_id: 6)
Enrollment.create(date_of_enrollment: '20160710', contact: 'jl3002@attt.net', remarks: 'none', participant_id: 2, registry_id: 1, coordinator_id: 5)
