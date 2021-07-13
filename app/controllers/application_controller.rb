class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_admin!

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:signup, keys: [:first_name, :last_name, :title, :bio, :facebook_link, :twitter_link, :linkedin_link])
  end
end
