class UsersController < ApplicationController
    def index
    end

    def show
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
        params.require(:users).permit(:name, :username, :password, :bio, :image)
    end
end
