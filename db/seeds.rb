# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# City.delete_all
# Dog.delete_all
# Dogsitter.delete_all
# Stroll.delete_all

4.times do |index|
  City.create(name: Faker::Address.city)
end

30.times do |index|
  Dog.create(
    name: Faker::Name.first_name,
    species: ['Labrador','Bouledog','Husky','Beagle','Caniche','Pitbull','Shiba','Golden Retriever','Berger Allemand','Teckel'].sample,
    city_id: City.find(rand(City.first.id..City.last.id)).id
  )
end

10.times do |index|
  Dogsitter.create(
    name: Faker::Name.first_name,
    city_id: City.find(rand(City.first.id..City.last.id)).id
  )
end

15.times do |index|
  Stroll.create(
    date: Faker::Date.in_date_period,
    dog_id: Dog.find(rand(Dog.first.id..Dog.last.id)).id,
    dogsitter_id: Dogsitter.find(rand(Dogsitter.first.id..Dogsitter.last.id)).id,
    city_id: City.find(rand(City.first.id..City.last.id)).id
  )
end
