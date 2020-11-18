class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  add_flash_types :error, :success
  
  protected

  # Devise allowing strong parameters
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name contact_number profile_picture])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name contact_number profile_picture])
  end
end
