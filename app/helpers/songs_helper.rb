module SongsHelper
  def choice_status(song)
    if song.teach == "знаю"
      icon("check-circle-fill text-success")
    elsif song.teach == "буду учить"
      icon("check-circle text-dark")
    elsif song.teach == "в архив"
      icon("archive-fill")
    end
  end
end
