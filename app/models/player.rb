class Player < ApplicationRecord
  has_many :player_pokemons
  validates :name, presence: true, uniqueness: true
end
