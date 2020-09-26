# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Feedback.delete_all
User.delete_all 
Contractor.delete_all 
User.reset_pk_sequence 
Contractor.reset_pk_sequence
Feedback.reset_pk_sequence

bob = User.create!(username: 'bob2121')
eric = User.create!(username: 'ericK')
sylwia = User.create!(username: 'sylwiaV')
annie = User.create!(username: 'annieBigEZ')
isabel = User.create!(username: 'isabel')

bob_builder = Contractor.create!(business_name: 'bob builder LLC')
legos_builder = Contractor.create!(business_name: 'we build with legos LLC')
piggies_builder = Contractor.create!(business_name: 'three little piggies LLC')

Feedback.create!(content: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false), user: bob, contractor: bob_builder)
Feedback.create!(content: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false), user: eric, contractor: bob_builder)
Feedback.create!(content: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false), user: sylwia, contractor: legos_builder)
Feedback.create!(content: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false), user: annie, contractor: legos_builder)
Feedback.create!(content: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false), user: isabel, contractor: piggies_builder)

puts 'seeds loaded 💥💥💥'