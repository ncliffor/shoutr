class ShoutsController < ApplicationController
  before_action :require_login

  def index
    @timeline = current_user.timeline
    @text_subject = TextSubject.new
    @image_subject = ImageSubject.new
    @users_i_follow = current_user.followed_users
    @users_i_do_not_follow = User.where.not(id: current_user.followed_user_ids)
  end
end
