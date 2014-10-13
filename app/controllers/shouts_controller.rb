class ShoutsController < ApplicationController
  before_action :require_login

  def index
    @shouts = Shout.all
    @shout = Shout.new
  end

  def create
#  Shout.create(user_id: current_user.id, body: params[:shout][:body])
    current_user.shouts.create(shout_params)

    redirect_to shouts_path
  end

  private

  def shout_params
    params.require(:shout).permit(:body)
  end
end
