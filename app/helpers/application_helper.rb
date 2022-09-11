module ApplicationHelper
  def icon(icon_class)
    content_tag 'span', '', class: "bi bi-#{icon_class} p-2"
  end
end
