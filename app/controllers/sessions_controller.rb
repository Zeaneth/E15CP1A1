class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:user][:email])
    if user.present?
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Ha iniciado sesión correctamente.'
    else
      redirect_to users_sign_in_path, alert: 'Ha ocurrido un error al verificar su usuario. Verifique sus datos e intente nuevamente.'
    end
  end
  
  def destroy
    reset_session # Same as session[:user] = nil
    redirect_to root_path
  end

end
