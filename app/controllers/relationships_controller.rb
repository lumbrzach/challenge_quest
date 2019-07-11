class RelationshipsController < ApplicationController
    before_action :authenticate!
    
    def create
        x = current_user.relationships.find_by(friend_id: params[:friend_id])
        if x == nil
            @relationship = current_user.relationships.build(:friend_id => params[:friend_id])
            # byebug
            if @relationship.friend_id == @relationship.user_id
                flash[:info] = "You can't add yourself as your own friend, maybe look into some self-care?"
                redirect_to users_path
            else
                @relationship.save
                if @relationship.save
                    flash[:info] = "Added Friend."
                    redirect_to user_path(current_user)
                else
                    flash[:info] = "Unable to add Friend."
                    redirect_to users_path
                end
            end
        else
            flash[:info] = "You are already Friends!"
            redirect_to users_path
        end
      end

      def destroy
        @relationship= Relationship.find(params[:id])
        if current_user.id == @relationship.user_id
            @relationship.destroy
            flash[:info] = "Removed Friend."
            redirect_to user_path(current_user)
        else
            flash[:info] = "NOT YOUR FRIEND TO REMOVE ASSHOLE!"
            redirect_to user_path(current_user)
        end
      end
end
