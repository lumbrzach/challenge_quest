class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    private 

    def user_params
        params.require(:user).permit(:name, :username, :password, :bio, :image)
    end
end
