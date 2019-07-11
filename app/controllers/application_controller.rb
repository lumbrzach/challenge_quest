class ApplicationController < ActionController::Base
   helper_method :current_user

  def current_user
      user_id = session[:user_id]
      user_id && User.find(user_id)
    end
  
  def authenticate!
    unless current_user
      flash[:info] = "You have to be logged in to do that!"
      redirect_to challenges_path
    end
  end
end
