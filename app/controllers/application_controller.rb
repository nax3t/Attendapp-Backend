class ApplicationController < ActionController::API
	include DeviseTokenAuth::Concerns::SetUserByToken
	# Use DevisetokenAuth::Concerns to enable authenticate_user! and
	# user_signed_in? helpers
end
