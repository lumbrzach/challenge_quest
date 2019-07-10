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

      def destroy
        @relationship= current_user.relationships.find(params[:id])
        @relationship.destroy
        flash[:notice] = "Removed friendship."
        redirect_to current_user
      end
end
