class RelationshipsController < ApplicationController
    def create
        @relationship = current_user.relationships.build(:friend_id => params[:friend_id])
        if @relationship.uniq && @relationship.save
          flash[:notice] = "Added Friend."
          redirect_to users_path
        else
          flash[:notice] = "Unable to Add Friend."
          redirect_to users_path
        end
      end

      def destroy
        @relationship= current_user.relationships.find(params[:id])
        @relationship.destroy
        flash[:notice] = "Removed Friend."
        redirect_to current_user
      end
end
