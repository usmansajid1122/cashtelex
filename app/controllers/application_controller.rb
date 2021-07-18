class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_admin!

  protected

  # allow extra parameter while signup and updation
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :title, :bio, :facebook_link, :twitter_link, :linkedin_link])
  end

  private

  def after_sign_in_path_for(resource)
    # when signin redirect to dashboard instead of root page.
    stored_location_for(resource) || admins_dashboards_path
  end

  def after_sign_out_path_for(resource)
    # when signout/logut redirect to login page instead of root page.
    stored_location_for(resource) || new_admin_session_path
  end
end
