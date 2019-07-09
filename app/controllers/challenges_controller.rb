class ChallengesController < ApplicationController
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

    def challenge_params
        params.require(:challenges).permit(:name, :description, :category)
    end
end
