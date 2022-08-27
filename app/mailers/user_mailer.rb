class UserMailer < ApplicationMailer
  def confirmation_instructions(user)
    @user = user
    @email = user.emai
    @url = root_path

    mail(to: user.email, subject: user.nickname)
  end

  # def email_changed(user)
  #   @resource = user
  #   @email = user.email

  #   mail(to: user.email, subject: user.nickname)
  # end

  # def password_change(user)
  #   @resource = user
  #   @email = user.email

  #   mail(to: user.email, subject: user.nickname)
  # end

  # def reset_password_instructions(user)
  #   @resource = user
  #   @email = user.email

  #   mail(to: user.email, subject: user.nickname)
  # end

  # def unlock_instructions(user)
  #   @resource = user
  #   @email = user.email

  #   mail(to: user.email, subject: user.nickname)
  # end
end
