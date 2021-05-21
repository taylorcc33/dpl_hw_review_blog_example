# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

Trainer.destroy_all
Pokemon.destroy_all

5.times do
  @id_num += 1
  t = Trainer.create(name: Faker::Name.name, location: Faker::Games::Pokemon.location)

  7.times do
    Pokemon.create(name: Faker::Games::Pokemon.name, trainer_id: t.id)
  end
end

puts "Trainers created, pokemon collected!"