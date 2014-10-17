class FavoritesController < ApplicationController
  def create
    shout = Shout.find(params[:shout_id])
    current_user.favorite(shout)
    redirect_to shouts_path
  end

  def destroy
    shout = Shout.find(params[:shout_id])
    current_user.unfavorite(shout)
    redirect_to shouts_path
  end
end
