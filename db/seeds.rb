# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_national_parks
    seed.generate_state_parks
  end

  def generate_national_parks
      National.create!(national_park: "Acadia" , state: "Maine" )
      National.create!(national_park: "American Samoa", state: "Samoa")
      National.create!(national_park: "Arches", state: "Utah" )
  end
  def generate_state_parks
    State.create!(state_park: "Acadia")
    State.create!(state_park: "American Samoa")
    State.create!(state_park: "Arches")
end
end

Seed.begin