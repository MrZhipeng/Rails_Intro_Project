class TypesController < ApplicationController
  def index
    @types = Type.all
  end

  def show
    @type = Type.find(params[:id])
    @pokemons = @type.pokemons.order(:name).page(params[:page])
  end
end
