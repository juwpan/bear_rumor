module UsersHelper
  def user_avatar(user)
    unless user.avatar.attached?
      case user.gender
        when "man" then image_tag("nouser.png", class: "img-avatar")
        when "woman" then image_tag("woman.png", class: "img-avatar")
      end
    else
      image_tag user.avatar.variant(:thumb), class: "img-avatar"
    end
  end
  
  def resources_name
    :user
  end

  def resources
    @resources ||= User.new
  end

  def resources_class
    User
  end

  def devise_mapping
    @devise_mapping ||= Devise.mapping[:user]
  end

  def flash_class(level)
    case level
      when :notice then "alert warning-alert"
      when :error then "alert danger-alert"
      when :alert then "alert danger-alert"
    end
  end
end
