class Pokemon < ApplicationRecord
  belongs_to :type
  has_many :player_pokemons
  has_many :players, through: :player_pokemons
  paginates_per 20
end
