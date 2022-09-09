module SongsHelper
  def choice_status(song)
    if song.teach == "знаю"
      icon("check-circle-fill")
    elsif song.teach == "буду учить"
      icon("x-circle-fill")
    elsif song.teach == "в архив"
      icon("archive-fill")
    end
  end
end
