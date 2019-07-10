class AttemptsController < ApplicationController
    def create
        @attempt = current_user.attempts.build(:challenge_id => params[:challenge_id])
        @attempt.status = "Accepted"
        if @attempt.save
          flash[:notice] = "Accepted Challenge!"
          redirect_to users_path
        else
          flash[:notice] = "Unable to Accept Challenge"
          redirect_to users_path
        end
    end

end
