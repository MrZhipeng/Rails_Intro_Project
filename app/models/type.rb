class Type < ApplicationRecord
  has_many :pokemons
  validates :name, presence: true, uniqueness: true
  paginates_per 20
end
