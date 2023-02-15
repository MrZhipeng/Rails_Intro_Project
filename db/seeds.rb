# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "csv"
require "faker"

Player.delete_all
Pokemon.delete_all
Type.delete_all
PlayerPokemon.delete_all

200.times do
  Player.create(name: Faker::Name.unique.name)
end
puts "Created 200 players."

filename = Rails.root.join("db/Pokemon_Data.csv")
puts "Loading data from the csv file: #{filename}"

csv_data = File.read(filename)
pokemons = CSV.parse(csv_data, headers: true, encoding: "utf-8")

pokemons.each do |p|
  type = Type.find_or_create_by(name: p["First Type"])
  if type && type.valid?
    pokemon = type.pokemons.create(
      name:           p["Name"],
      stat_total:     p["Stat Total"],
      HP:             p["HP"],
      attack:         p["Attack"],
      defense:        p["Defense"],
      speed:          p["Speed"],
      first_ability:  p["First Ability"],
      second_ability: p["Second Ability"],
      hidden_ability: p["Hidden Ability"]
    )
    puts "Invalid pokemon #{p['name']}" unless pokemon&.valid?
  else
    puts "Invalid type #{p['First Type']} for pokemon #{p['name']}."
  end
end
puts "Created #{Type.count} types."
puts "Created #{Pokemon.count} pokemons."

2000.times do
  PlayerPokemon.create(
    player_id:  Faker::Number.between(from: 1, to: 200),
    pokemon_id: Faker::Number.between(from: 1, to: 1190)
  )
end
puts "Create 2000 rows in player_pokemons table."
