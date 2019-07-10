class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id
          flash[:info] = "Login Successful!"
          redirect_to user_path(@user)
        else
          @error = "No such username or wrong password."
          render :new
        end
      end

      def destroy 
        session[:user_id] = nil
        redirect_to '/' 
      end
end