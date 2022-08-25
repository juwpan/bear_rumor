class ApplicationController < ActionController::Base
  # helper_method :current_user
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :nickname, :birth_date, :gender])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :nickname, :avatar, :birth_date, :gender])
  end

  # private

  # def current_user
  #   @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  # end
end
