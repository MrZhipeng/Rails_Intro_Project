class HomeController < ApplicationController
  def index
    @pokemons = Pokemon.order("stat_total DESC")
                       .limit(10)
  end
end
