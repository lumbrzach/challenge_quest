class AchievementsController < ApplicationController
    before_action :authenticate!
    
    def index
        @achievements = Achievement.all
    end

    def show
        @achievement = Achievement.find(params[:id])
    end

    def new
        @achievement = Achievement.new
    end

    def create
        @achievement = Achievement.create(achievements_params)
        if @achievement.save
            redirect_to achievement_path(@achievement)
        else
            render :new
        end
    end

    def edit
        @achievement = Achievement.find(params[:id])
    end

    def update
        @achievement = Achievement.find(params[:id])
        @achievement.update(achievements_params)
        if @achievement.save
            redirect_to achievement_path(@achievement)
        else
            render :edit
        end
    end

    private

    def achievements_params
        params.require(:achievement).permit(:name, :description)
    end
end
