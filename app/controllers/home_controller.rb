class HomeController < ApplicationController

  def index
    @usuarios = Usuario.all
  end

  def authenticate_usuario!
  end

end
