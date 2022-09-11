module ApplicationHelper
  def icon(icon_class)
    content_tag 'span', '', class: "bi bi-#{icon_class} p-2"
  end

  def omni_auth(user)
    link_to image_tag("google.png", class: "omni-img me-5"), user_google_oauth2_omniauth_authorize_path
    # link_to image_tag("github.png", class: "omni-img"), user_google_oauth2_omniauth_authorize_path
    # link_to image_tag("mail.png", class: "omni-img"), user_google_oauth2_omniauth_authorize_path
  end
end
