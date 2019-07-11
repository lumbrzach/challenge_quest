class UsersController < ApplicationController
    before_action :authenticate!, except:[:new, :create]
    
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.save
            redirect_to '/'
        else
            render :new
        end
    end

    def edit
        @user = User.find(current_user.id)
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        if @user.save
            redirect_to user_path(@user)
        else
            render :edit
        end
    end

    def destroy
        @user = User.find(current_user.id)
        @user.destroy
        flash[:info] = "Your profile has been deleted"
        redirect_to '/'
    end

    private 

    def user_params
        params.require(:user).permit(:name, :username, :password, :bio, :image)
    end
end
