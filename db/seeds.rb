# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Patient.create(first_name: 'Long', lastname: 'Nguyen', username: 'longkt90', phone_number: '123456789')
Patient.create(first_name: 'Quynh', lastname: 'Pham', username: 'quine0903', phone_number: '21321321')


Pill.create(name: 'Paracetamol', dosage: 3, get_feedback_after: 360, empty_bottle_weight: 100, pill_weight: 10, total_left: 20, patient_id: Patient.first.id)
Pill.create(name: 'penicillin', dosage: 2, get_feedback_after: 720, empty_bottle_weight: 100, pill_weight: 10, total_left: 20, patient_id: Patient.first.id)


Reminder.create(pill_id: Pill.first.id, remind_time: 8.hours)
Reminder.create(pill_id: Pill.first.id, remind_time: 18.hours)
Reminder.create(pill_id: Pill.last.id, remind_time: 8.hours)
Reminder.create(pill_id: Pill.last.id, remind_time: 14.hours)
Reminder.create(pill_id: Pill.last.id, remind_time: 22.hours)