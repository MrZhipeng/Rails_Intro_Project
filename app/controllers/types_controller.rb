class TypesController < ApplicationController
  def index
    @Types = Type.all
  end

  def show
    @Type = Type.find(params[:id])
  end
end
