class AttemptsController < ApplicationController
  before_action :authenticate!

  def create
      @attempt = current_user.attempts.build(:challenge_id => params[:challenge_id])
      @attempt.status = "Accepted"
      if @attempt.save
        flash[:notice] = "Accepted Challenge!"
        redirect_to user_path(current_user)
      else
        flash[:notice] = "Unable to Accept Challenge"
        redirect_to user_path(current_user)
      end
  end

  def update
      @attempt = current_user.attempts.find(params[:id])
      @attempt.status = "Completed"
      if @attempt.save
        flash[:notice] = "Completed Challenge!"
        redirect_to user_path(current_user)
      else
        flash[:notice] = "Unable to Complete Challenge"
        redirect_to user_path(current_user)
      end
  end

end
