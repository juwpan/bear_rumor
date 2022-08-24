class SongsController < ApplicationController
  before_action :params_song, only: %i[create]
  # before_action :set_song_for_current_user, only: %i[show edit update]
  before_action :current_user_id, only: %i[new]
  before_action :set_song, only: %i[show]

  def new
    @song = Song.new(user: @user)
  end
  
  def create
    @song = Song.new(params_song)
    
    @song.user_id = current_user.id

    if @song.save
      redirect_to root_path, notice: "Сохранено"
    else
      render new, flash[:alert] = "Error save"
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def index
    @songs = Song.all
  end

  def destroy
  end

  private

  def params_song
    params.require(:song).permit(:title, :author, :body, :user_id)
  end

  def current_user_id
    @user = current_user
  end

  # def set_song_for_current_user
  #   @song = current_user.songs.find(params[:id])
  # end

  def set_song
    @song = Song.find(params[:id])
  end
end
