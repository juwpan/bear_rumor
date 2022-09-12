class SongsController < ApplicationController
  before_action :params_song, only: %i[create update]
  before_action :set_song, only: %i[show update edit destroy]

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

  def destroy
    @song.destroy

    redirect_to root_path, notice: "Песня удалена"
  end

  def update
    if @song.update(params_song)
      redirect_to user_song_all_path, notice: "Песня обновлена"
    else
      render :edit, alert: "Обновление не удалось"
    end
  end

  def show
  end

  def index
    @songs = Song.all
    @authors = Author.all
    @alphabets = Alphabet.all
  end

  def song_all
    @songs = Song.all
  end


  def user_song_all
    @songs = Song.all
  end

  private

  def params_song
    params.require(:song).permit(:title, :body, :name_author, :teach, :user_id)
  end

  def set_song
    @song = Song.find(params[:id])
  end
end
