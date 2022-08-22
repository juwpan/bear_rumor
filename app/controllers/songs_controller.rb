class SongsController < ApplicationController
  before_action :params_song, only: %i[create]
  before_action :set_song, except: %i[index create update show destroy new]

  def new
  end

  def create
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
    params.require(:song).permit(:name, :author, :body)
  end

  def set_song
    @song = Song.find(params[:id])
  end
end
