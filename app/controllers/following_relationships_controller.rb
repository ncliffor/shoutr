class FollowingRelationshipsController < ApplicationController
  def create
    user = User.find_by_username(params[:user_id])
    user_to_follow = User.find(user.id)
    current_user.follow(user_to_follow)

    redirect_to :back
  end

  def destroy
    user = User.find_by_username(params[:user_id])
    user_to_unfollow = User.find(user.id)
    current_user.unfollow(user_to_unfollow)

    redirect_to :back
  end
end
