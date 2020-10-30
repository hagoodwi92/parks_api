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
      National.create!(national_park: "Badlands National Park", state: "South Dakota" )
      National.create!(national_park: "Big Bend National Park", state: "Texas" )
      National.create!(national_park: "Biscayne National Park", state: "Florida" )
      National.create!(national_park: "Channel Islands National Park", state: "California" )
      National.create!(national_park: "Death Valley National Park", state: "California" )
      National.create!(national_park: "Joshua Tree National Park", state: "California" )

  end
  def generate_state_parks
    State.create!(state_park: "Milo McIver State Park")
    State.create!(state_park: "Wallowa Lake State Park")
    State.create!(state_park: "LaPine State Park")
    State.create!(state_park: "Sunset Bay")
    State.create!(state_park: "Beverly Beach State Park")
    State.create!(state_park: "Shore Acres")
    State.create!(state_park: "Ecola State Park")
    State.create!(state_park: "The Cove Palisades State Park")
    State.create!(state_park: "Jessie M. Honeyman State Park")
    State.create!(state_park: "Cape Lookout")
    State.create!(state_park: "Oswald West")
    State.create!(state_park: "Smith Rock")
    State.create!(state_park: "Silver Falls")
    State.create!(state_park: "Fort Stevens")
end
end
Seed.begin