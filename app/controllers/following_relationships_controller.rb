class FollowingRelationshipsController < ApplicationController
  def create
    user_to_follow = User.find(params[:user_id])
    current_user.follow(user_to_follow)

    redirect_to :back
  end

  def destroy
    user_to_unfollow = User.find(params[:user_id])
    current_user.unfollow(user_to_unfollow)

    redirect_to :back
  end
end
