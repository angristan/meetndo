class FavoritesController < ApplicationController
  def create
    @meeting = Meeting.find(params[:favorite_meeting_id])
    current_user.add_to_favorites(@meeting)

    redirect_to @meeting
  end

  def destroy
    @meeting = Favorite.find(params[:id]).favorite_meeting
    current_user.remove_from_favorites(@meeting)

    redirect_to @meeting
  end
end
