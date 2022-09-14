module RatingsHelper
  def icon_fa(icon_class)
    content_tag 'span', '', class: "fa fa-#{icon_class} p-2"
  end

  def rating_include_user(song, current_user)
    song.ratings.each  do |id| 
      return true if id.user == current_user
    end
  end

  def rating(song)
    sum = 0
    song.ratings.each do |s|
      sum += s.grade
    end

    sum / song.ratings.count unless sum == 0
  end
end