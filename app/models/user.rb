class User < ActiveRecord::Base
	attr_accessor :confirm_success_url, :config_name
	
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
end

# removed :confirmable to disable email confirmation
# removed :omniauthable to disable third-party oauth registration