class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = sign_up(user_params)

    if @user.valid?
      sign_in(@user)
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @users = User.where.not(id: current_user.id)
    @users_i_follow = current_user.followed_users
    @users_i_do_not_follow = User.where.not(id: current_user.followed_user_ids)
    @following_relationship = FollowingRelationship.new
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end

