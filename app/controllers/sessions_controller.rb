class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id
          flash[:info] = "Login Successful!"
          redirect_to challenges_path
        else
          @error = "No such username or wrong password."
          render :new
        end
      end

    def destroy
    end
end