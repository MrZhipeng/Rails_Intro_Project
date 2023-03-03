class ApplicationController < ActionController::Base
  def index
    @types = Type.all
  end
end
