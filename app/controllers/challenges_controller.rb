class ChallengesController < ApplicationController
    before_action :authenticate!

    def index
        @challenges = Challenge.all
    end

    def show
        @challenge = Challenge.find(params[:id])
    end

    def new
        @challenge = Challenge.new
    end

    def create
        @challenge = current_user.challenges.build(challenge_params)
        if @challenge.save
            redirect_to challenge_path(@challenge)
        else
            render :new
        end
    end

    def edit
        @challenge = Challenge.find(params[:id])
        if @challenge.users.include?(current_user)
            render :edit
        else
            flash[:info] = "You cannot edit another user's challenge!"
        end
        redirect_to challenge_path(@challenge)
            
    end

    def update
        @challenge = Challenge.find(params[:id])
        @challenge.update(challenge_params)
        if @challenge.save
            redirect_to challenge_path(@challenge)
        else
            render :edit
        end
    end

    private 

    def challenge_params
        params.require(:challenge).permit(:name, :description, :category)
    end
end
