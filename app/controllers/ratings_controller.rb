class RatingsController < ApplicationController
  before_action :set_song!, only: %i[create]

  def new
  end

  def create
    @rating = @song.ratings.build(params_rating)

    @rating.user = current_user

    if @rating.save
      redirect_to song_path(@song)
    else
      @ratings = Rating.all
      render 'songs/show'
    end
  end

  private

  def params_rating
    params.require(:rating).permit(:grade, :user)
  end

  def set_song!
    @song = Song.find(params[:song_id])
  end
end