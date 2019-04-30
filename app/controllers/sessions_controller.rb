class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user.present?
      session[:user_id] = @user.id
      redirect_to root_path, notice: "You've signed in successfully."
    else
      redirect_to users_sign_in_path, alert: "There's been an error, please try again."
    end
  end

  def destroy
    reset_session
    redirect_to root_path, notice: "Your session has been successfully ended"
  end
end
