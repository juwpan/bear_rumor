class SongsController < ApplicationController
  before_action :params_song, only: %i[create update]
  before_action :set_song, only: %i[show]

  def new
    @song = Song.new
  end
  
  def create
    @song = current_user.songs.build(params_song)

    if @song.save
      redirect_to root_path, notice: "Сохранено"
    else
      render :new, alert: "Сохранить не удалось"
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
    @authors = Author.all
    @alphabets = Alphabet.all
  end

  def destroy
  end

  def song_all
    @songs = Song.all
  end

  private

  def params_song
    params.require(:song).permit(:title, :body, :name_author, :user_id)
  end

  def set_song
    @song = Song.find(params[:id])
  end
end
