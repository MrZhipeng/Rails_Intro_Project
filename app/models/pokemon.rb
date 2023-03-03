class Pokemon < ApplicationRecord
  belongs_to :type
  has_many :player_pokemons
  has_many :pokemons, through: :player_pokemons
end
