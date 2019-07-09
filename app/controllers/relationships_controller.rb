class RelationshipsController < ApplicationController
    def create
        @relationship = current_user.relationships.build(:friend_id => params[:friend_id])
        if @relationship.save
          flash[:notice] = "Added friend."
          redirect_to users_path
        else
          flash[:notice] = "Unable to add friend."
          redirect_to users_path
        end
      end
end
