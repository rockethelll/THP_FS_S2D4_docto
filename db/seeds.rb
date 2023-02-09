# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

c1 = City.create(name: 'Caen')
c2 = City.create(name: 'Mondeville')
c3 = City.create(name: 'Lisieux')
c4 = City.create(name: 'Bauyeux')

d1 = Doctor.create(first_name: 'Michel', last_name: 'DURAND', zip_code: '14000', city: c1)
d2 = Doctor.create(first_name: 'Karim', last_name: 'FALSA', zip_code: '14100', city: c2)
d3 = Doctor.create(first_name: 'Antoine', last_name: 'FAUCHE', zip_code: '14000', city: c4)
d4 = Doctor.create(first_name: 'David', last_name: 'ROUGEAU', zip_code: '14300', city: c3)

p1 = Patient.create(first_name: 'Steeve', last_name: 'SEGRA', city: c1)
p2 = Patient.create(first_name: 'Yohann', last_name: 'FLAVOR', city: c2)
p3 = Patient.create(first_name: 'Florent', last_name: 'LE PAGE', city: c1)
p4 = Patient.create(first_name: 'Sébastien', last_name: 'CARTIER', city: c3)

a1 = Appointment.create(date: Time.zone.now.to_datetime, doctor: d1, patient: p1)
a2 = Appointment.create(date: Time.zone.now.to_datetime, doctor: d2, patient: p2)
a3 = Appointment.create(date: Time.zone.now.to_datetime, doctor: d4, patient: p4)
a4 = Appointment.create(date: Time.zone.now.to_datetime, doctor: d3, patient: p3)

s1 = Specialty.create(name: 'Dentist')
s2 = Specialty.create(name: 'Généraliste')
s3 = Specialty.create(name: 'ORL')
s4 = Specialty.create(name: 'Nuero-chirurgien')

j1 = JoinTableDoctorSpecialty.create(specialty: s1, doctor: d1)
j2 = JoinTableDoctorSpecialty.create(specialty: s2, doctor: d2)
j3 = JoinTableDoctorSpecialty.create(specialty: s3, doctor: d3)
j4 = JoinTableDoctorSpecialty.create(specialty: s4, doctor: d4)