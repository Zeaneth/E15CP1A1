class SessionsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.find_by(email: params[:user][:email])
        if @user.present?
            session[:user_id] = @user.id
            redirect_to root_path
        else
            redirect_to users_sign_in_path
        end
    end

    def destroy
        reset_session
        redirect_to root_path
    end
end
