class FollowingRelationshipsController < ApplicationController
  def create
    user_to_follow = User.find(params[:user_id])
    current_user.follow(user_to_follow)

    # following_relationship = FollowingRelationship.new(
    #   follower_id: current_user.id,
    #   followed_user_id: params[:user_id]
    # )

    # following_relationship.save

    redirect_to shouts_path
  end
end
