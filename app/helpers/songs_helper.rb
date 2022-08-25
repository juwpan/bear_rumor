module SongsHelper
  def icon(icon_class)
    content_tag 'span', '', class: "bi bi-#{icon_class} btn btn-dark"
  end
end
