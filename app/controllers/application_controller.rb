class ApplicationController < ActionController::API
	# protect_from_forgery with: :null_session
	include DeviseTokenAuth::Concerns::SetUserByToken
	# Use DevisetokenAuth::Concerns to enable authenticate_user! and
	before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :confirm_success_url
    devise_parameter_sanitizer.for(:sign_up) << :config_name
  end
end
