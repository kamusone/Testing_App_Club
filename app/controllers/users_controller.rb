class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find(params[:id])
    if @user.save
      log_in @user
      remember @user
      flash[:success] = "Welcome moussaillon ! ⛵️ 😇 !"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
# empeche les utilsateur de voir de modifier ton profil
  if  logged_in? && (current_user.id == params[:id].to_i)
    @user = User.find(params[:id])
  else
    flash[:danger] = "⚠️ Vous ne pouvez pas acceder à cette page"

    redirect_to '/'
  end

end

def show
  @user = User.find(params[:id])
end

def update
  user = User.find(params[:id])
  user.update(first_name: params[:user][:first_name])
  user.update(last_name: params[:user][:last_name])
  flash[:success] = "Mise à jour effectuée ! 😇 !"
  redirect_to user_path
end

def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password,
                                 :password_confirmation)
  end
end
