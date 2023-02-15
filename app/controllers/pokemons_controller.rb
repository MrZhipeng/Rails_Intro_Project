class PokemonsController < ApplicationController
  def index
    @Pokemons = Pokemon.all
  end

  def show
    @Pokemon = Pokemon.find(params[:id])
  end
end
