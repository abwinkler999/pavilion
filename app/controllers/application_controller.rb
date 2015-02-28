require 'csv'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :verify_owner

  	def verify_owner(girl)
		if girl.user != current_user
		redirect_to :root
		end
	end
end
