class Player < ApplicationRecord
  has_many :player_pokemons
  has_many :pokemons, through: :player_pokemons
  validates :name, presence: true, uniqueness: true
  paginates_per 20
end
