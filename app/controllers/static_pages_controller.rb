class StaticPagesController < ApplicationController
  def home
  end

  def espace
    if !logged_in?
      flash[:danger] = "Veuillez vous connecter pour acceder à votre espace club !"
      redirect_to '/login'
    end
  end
end
